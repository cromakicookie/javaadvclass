package dao;

import java.sql.*;

import java.util.ArrayList;

import javax.naming.NamingException;

import dto.PetSitterDTO;
import util.ConnectionPool;

public class PetSitterDAO {

	public boolean insertPetsitter(String id, String image, String content, String certificated, String address, String animalType,
			String phoneNumber, String userId, String status) throws NamingException, SQLException {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			String sql = "INSERT INTO petsitter (id, image, content, certificated, address, animalType, phoneNumber, userId, status) "
					+ "VALUES (?,?,?,?,?,?,?,?,?)";
			conn = ConnectionPool.get();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, image);
			pstmt.setString(3, content);
			pstmt.setString(4, certificated);
			pstmt.setString(5, address);
			pstmt.setString(6, animalType);
			pstmt.setString(7, phoneNumber);
			pstmt.setString(8, userId);
			pstmt.setString(9, "1");

			int result = pstmt.executeUpdate();

			return (result == 1) ? true : false;
		} finally {
			if (pstmt != null)
				pstmt.close();
			if (conn != null)
				conn.close();
		}
	}

	public ArrayList<PetSitterDTO> getList() throws NamingException, SQLException {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			String sql = "SELECT * FROM petsitter";
			conn = ConnectionPool.get();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();

			ArrayList<PetSitterDTO> petsitters = new ArrayList<PetSitterDTO>();

			while (rs.next()) {
				petsitters.add(new PetSitterDTO(rs.getString("id"), rs.getString("image"), rs.getString("content"),
						rs.getString("certificated"), rs.getString("address"), rs.getString("animalType"),
						rs.getString("phoneNumber"), rs.getString("userId"), rs.getString("status")));
			}
			return petsitters;
		} finally {
			if (rs != null)
				rs.close();
			if (pstmt != null)
				pstmt.close();
			if (conn != null)
				conn.close();
		}
	}
	
	public PetSitterDTO getDetail(String id) throws NamingException, SQLException{
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			String sql = "SELECT * FROM petsitter WHERE id = ? AND status = '1'";
			
			conn = ConnectionPool.get();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			rs.next();
			id = rs.getString(1);
			String image = rs.getString(2);
			String content = rs.getString(3);
			String certificated = rs.getString(4);
			String address = rs.getString(5);
			String animalType = rs.getString(6);
			String phoneNumber = rs.getString(7);
			String userId = rs.getString(8);
			String status = rs.getString(9);
			
			PetSitterDTO petsitter = new PetSitterDTO(id, image, content, certificated, address, animalType, phoneNumber, userId, status);
			
			return petsitter;
		} finally {
			if(rs != null) rs.close();
			if(pstmt != null) pstmt.close();
			if(conn != null) conn.close();
		}
		
	}
}