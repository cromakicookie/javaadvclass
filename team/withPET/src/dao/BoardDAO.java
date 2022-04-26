package dao;
import java.sql.*;
import java.util.ArrayList;

import javax.naming.NamingException;
import dao.*;
import dto.*;
import util.*;

public class BoardDAO {
	public ArrayList<BoardDTO> getList() 
			throws NamingException, SQLException{
		Connection conn=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		try {
			String sql="SELECT * FROM board";
			
			conn=ConnectionPool.get();
			pstmt=conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			
			ArrayList<BoardDTO> boards=new ArrayList<BoardDTO>();
			
	         while(rs.next()) {
	             boards.add(new BoardDTO(rs.getString("id"),
	            		 				rs.getString("title"),
	                                  rs.getString("content"),
	                                  rs.getString("userId")
	                   ));
	          }

			return boards;
		}finally {
			if(rs !=null) rs.close();
			if(pstmt !=null) pstmt.close();
			if(conn !=null) conn.close();
		}
	}
	public BoardDTO getDetail(String btitle) throws NamingException, SQLException {
		Connection conn=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		
		try {
			String sql="SELECT * FROM board WHERE btitle = ?";
			
			conn=ConnectionPool.get();
			pstmt=conn.prepareStatement(sql);
				pstmt.setString(1, btitle);
			rs=pstmt.executeQuery();
			
			rs.next();
			String bid=rs.getString(1);
			String title=rs.getString(2);
			String bcon=rs.getString(3);
			String buser=rs.getString(4);
			String bday=rs.getString(5);
			
			
			BoardDTO product= new BoardDTO(bid, title, bcon, buser,bday);
			return product;
				
	}finally {
		if(rs !=null) rs.close();
		if(pstmt !=null) pstmt.close();
		if(conn !=null) conn.close();
		}
	
	}

}