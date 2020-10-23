package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import model.User;
import utility.ConnectionManager;

public class UserDao  implements UserDaoInterface{

	@Override
	public int signup(User user) {
		String INSERT_USER_SQL = "INSERT INTO USERS(EMAIL,PASSWORD) VALUES(?,?)";
		int result = 0;
		try {
			Connection con = ConnectionManager.getConnection();
			PreparedStatement ps = con.prepareStatement("INSERT_USER_SQL");
			ps.setString(1, user.getEmail());
			ps.setString(2, user.getPassword());
			System.out.println(ps);
			result = ps.executeUpdate();
		}
		
		catch(Exception e){
			e.printStackTrace();
		}
		return result;
	}

	@Override
	public boolean loginUser(User user) {
		
		boolean status= false;
		try {
			Connection con = ConnectionManager.getConnection();
			PreparedStatement ps = con.prepareStatement("SELECT * FROM USERS WHERE EMAIL = ? AND PASSWORD = ?");
			ps.setString(1, user.getEmail());
			ps.setString(2, user.getPassword());
			System.out.println(ps);
			ResultSet rs = ps.executeQuery();
			status = rs.next();
		}
		
		catch(SQLException e){
			e.printStackTrace();
		}
		return status;
	}
	
	
	
}
