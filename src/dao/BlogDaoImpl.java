package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import model.Blog;
import utility.ConnectionManager;


public class BlogDaoImpl  implements BlogDaoInterface{
	
	private static final String INSERT_BLOG_SQL = "INSERT INTO BLOG(BLOGID,BLOGTITLE,BLOGDESCRIPTION,POSTEDON) VALUES(SEQ_BLOG.NEXTVAL,?,?,?)";
	private static final String SELECT_ALL_BLOGS = "SELECT * FROM BLOG";
	private static final String DELETE_BLOG_BY_ID = "DELETE FROM BLOG WHERE BLOGID=?";
	
	@Override
	public void insertBlog(Blog blog) throws SQLException {
		System.out.println("INSERT BLOG SQL");
		try {
			Connection con = ConnectionManager.getConnection();
			PreparedStatement ps = con.prepareStatement(INSERT_BLOG_SQL);
			ps.setInt(1, blog.getBlogId());
			ps.setString(2, blog.getBlogTitle());
			ps.setString(3, blog.getBlogDescription());
			ps.setDate(4, java.sql.Date.valueOf(blog.getPostedOn()));
			System.out.println(ps);
			ps.executeUpdate();
		}
		catch(SQLException e) {
			System.out.println(e);
		}
		
	}

	@Override
	public Blog selectBlog(int blogId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Blog> selectAllBlogs() {
		Blog blog = null;
		List<Blog> blogList = new ArrayList<>();
		
		try {
			Connection con = ConnectionManager.getConnection();
			PreparedStatement ps = con.prepareStatement(SELECT_ALL_BLOGS);
			System.out.println(ps);
			ResultSet rs = ps.executeQuery();
			
			while(rs.next())
			{
				int id = rs.getInt("BLOGID");
				String title = rs.getString("BLOGTITLE");
				String description = rs.getString("BLOGDESCRIPTION");
				LocalDate postedOn = rs.getDate("POSTEDON").toLocalDate();
				
				 blog = new Blog();
				
				blog.setBlogId(id);
				blog.setBlogTitle(title);
				blog.setBlogDescription(description);
				blog.setPostedOn(postedOn);
			}
		}
		
		catch(SQLException e) {
			System.out.println(e);
		}
		return blogList;
	}

	@Override
	public boolean deleteBlog(int id) throws SQLException {
		 System.out.println(id);
		 boolean rowDeleted;
		 
		try ( Connection con = ConnectionManager.getConnection();
			PreparedStatement ps = con.prepareStatement(DELETE_BLOG_BY_ID)){
			ps.setInt(1, id);
			rowDeleted= ps.executeUpdate()> 0;
		}		
		return rowDeleted;
	}

	@Override
	public boolean updateBlog(Blog blog) throws SQLException, Exception {
		// TODO Auto-generated method stub
		return false;
	}
	

}
