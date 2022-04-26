package jdbc;
import java.sql.*;

import javax.naming.NamingException;

import util.ConnectionPool;


public class UserDAO {
	public boolean insert(String userid, String userpw, String username) 
	throws NamingException, SQLException {
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		String sql = "INSERT INTO user (userid, userpw, username) VALUES(?,?,?)";
		
		conn = ConnectionPool.get();
		pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userid);
			pstmt.setString(2, userpw);
			pstmt.setString(3, username);
			
		int count = pstmt.executeUpdate();
		
		return (count==1) ? true : false;
	}
	public boolean exists(String userid) 
	throws NamingException, SQLException {
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "SELECT userid FROM user WHERE userid = ?";
		
		conn = ConnectionPool.get();
		pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userid);
		
		rs = pstmt.executeQuery();
		
		return rs.next() ? true : false ;
	}
	public boolean delete(String userid) throws NamingException, SQLException {
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		String sql = "INSERT INTO user (userid, userpw, username) VALUES(?,?,?)";
		
		conn = ConnectionPool.get();
		pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userid);
			
		int count = pstmt.executeUpdate();
		
		return (count==1) ? true : false;
	}
	public int login(String userid, String userpw) 	
			throws NamingException, SQLException {
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "delete userid FROM user WHERE userid = ?";
		
		conn = ConnectionPool.get();
		pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userid);
		
		rs = pstmt.executeQuery();
		
		if(!rs.next()) {
			return 1 ;
		}
		
		if(!userpw.equals(rs.getString("userpw"))) {
			return 2;
		}
		
		return 0;
	}
	public boolean logout() {
		return true;
	}
	
	
}
