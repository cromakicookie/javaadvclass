package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.NamingException;

import dto.*;
import util.ConnectionPool;

public class HotelDAO {

	public ArrayList<HotelDTO> getHotelList() throws NamingException, SQLException {

		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			String sql = "SELECT id, name, content, address, zipcode, cover, price, discount, "
					+ "concat(dog, cat, bird, etc) animalType, phoneNumber, state, userId, status"
					+ " FROM Hotel ";

			conn = ConnectionPool.get();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();

			ArrayList<HotelDTO> hotels = new ArrayList<HotelDTO>();

			while (rs.next()) {
				hotels.add(new HotelDTO(rs.getString("id"), 
											rs.getString("name"), 
											rs.getString("content"), 
											rs.getString("address"),
											rs.getString("zipcode"),
											rs.getString("cover"),
											rs.getString("price"),
											rs.getString("discount"),
											rs.getString("animalType"),
											rs.getString("phoneNumber"),
											rs.getString("state"),
											rs.getString("userId"),
											rs.getString("status")));	 	
			}
			return hotels;

		} finally {
			if (rs != null)
				rs.close();
			if (pstmt != null)
				pstmt.close();
			if (conn != null)
				conn.close();
		}
	}

	public HotelDTO getHoteldetail(String id) throws NamingException, SQLException {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			String sql = "SELECT id, name, content, address, zipcode, cover, price,"
					+ "concat(dog, cat, bird, etc) animalType, phoneNumber, state, userId"
					+ " FROM Hotel "
					+ "where id=? and status=1";

			conn = ConnectionPool.get();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			rs.next();

			HotelDTO hotel = new HotelDTO(rs.getString("id"), 
												rs.getString("name"), 
												rs.getString("content"), 
												rs.getString("address"),
												rs.getString("zipcode"),
												rs.getString("cover"),
												rs.getString("price"),
												rs.getString("discount"),
												rs.getString("animalType"),
												rs.getString("phoneNumber"),
												rs.getString("state"),
												rs.getString("userId"),
												rs.getString("status"));		

			return hotel;

		} finally {
			if (rs != null)
				rs.close();
			if (pstmt != null)
				pstmt.close();
			if (conn != null)
				conn.close();
		}
	}

	// 호텔 등록
	public int insertHotel(String name, String content, String address, String zipcode, 
			String cover, String price, String discount, String animalType, 
			String phoneNumber, String state, String userId
			) throws NamingException, SQLException {

		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int id = 0;
		try {
			String sql = "INSERT INTO Hotel (name, content, address, zipcode, cover, price, discount," + 
					"dog,cat,bird,etc, phoneNumber, state, userId ) " + 
					"VALUES (?,?,?,?,?,?,?,substring(?,1,1),substring(?,2,2),substring(?,3,3),substring(?,4,4),?,?,?)";
			conn = ConnectionPool.get();
			pstmt = conn.prepareStatement(sql, PreparedStatement.RETURN_GENERATED_KEYS);
			pstmt.setString(1, name);
			pstmt.setString(2, content);
			pstmt.setString(3, address);
			pstmt.setString(4, zipcode);
			pstmt.setString(5, cover);
			pstmt.setInt(6, Integer.parseInt(price));
			pstmt.setInt(7, Integer.parseInt(discount));
			pstmt.setString(8, animalType);
			pstmt.setString(9, animalType);
			pstmt.setString(10, animalType);
			pstmt.setString(11, animalType);
			pstmt.setString(12, phoneNumber);
			pstmt.setString(13, state);
			pstmt.setString(14, userId);

			pstmt.executeUpdate(); // db에 insert하기

			rs = pstmt.getGeneratedKeys(); // insert를 하고 나서 밖에서는 db 기본키 값 auto increasement로 뭐가 들어갔는지 안보여서 함수로 확인
			if (rs.next()) {
				id = rs.getInt(1); // id 기본키 값을 반환
			}
			return id;

		} finally {

			if (pstmt != null)
				pstmt.close();
			if (conn != null)
				conn.close();
		}
	}
	
	public int updateHotel(String id, String name,String content, String address, String zipcode, 
			String cover, String price, String discount, String animalType, 
			String phoneNumber, String state, String userId
			) throws NamingException, SQLException {
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			String sql = "UPDATE Hotel SET " 
					+ "name=?, content=?, address=?, zipcode=?,cover=?, price=?, discount=?, "
					+ "dog=substring(?,1,1) , cat=substring(?,2,2) , bird=substring(?,3,3) ,etc=substring(?,4,4), "
					+ "phoneNumber=?, state=?, userId=? "
					+ "WHERE id=? AND status=1 ";
			conn = ConnectionPool.get();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, name);
			pstmt.setString(2, content);
			pstmt.setString(3, address);
			pstmt.setString(4, zipcode);
			pstmt.setString(5, cover);
			pstmt.setInt(5, Integer.parseInt(price));
			pstmt.setInt(6, Integer.parseInt(discount));
			pstmt.setString(7, animalType);
			pstmt.setString(8, animalType);
			pstmt.setString(9, animalType);
			pstmt.setString(10, animalType);
			pstmt.setString(11, phoneNumber);
			pstmt.setString(12, state);
			pstmt.setString(13, userId);
			pstmt.setString(14, id);
			
			int result = pstmt.executeUpdate();
			return result;

		} finally {
			if (pstmt != null)
				pstmt.close();
			if (conn != null)
				conn.close();
		}
	}
	
	public int deleteProduct(String id) throws NamingException, SQLException {
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			String sql = "UPDATE Hotel SET status=0 " + "WHERE id=?";
			conn = ConnectionPool.get();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);

			int result = pstmt.executeUpdate();
			return result;

		} finally {
			if (pstmt != null)
				pstmt.close();
			if (conn != null)
				conn.close();
		}
	}
	//----------------------------------------------------HotelReview
	//여기서 select *은 where절이 필요함  상품리뷰전체 리스트
	public ArrayList<ReviewDTO> getHotelReviewList(String hotelId) throws NamingException, SQLException {

		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			String sql = "select id, score,content, name, userId, hotelId, creatAt, countLike, commentId, comment, commentUserId, commentUserName  " + 
					"from " + 
					"	(select C.id id, score, content, name, userId, hotelId, creatAt, countLike " + 
					"	from  " + 
					"		(select A.id id, score, content, name, userId, hotelId, A.creatAt creatAt " + 
					"		from HotelReview A JOIN User B on A.userId=B.id " + 
					"		where A.status=1 and hotelId=?) C  " + 
					"	join  " + 
					"		(select reviewId, count(*) countLike " + 
					"		from HotelReviewLike " + 
					"        where status=1 " + 
					"		group by reviewId) D on C.id=D.reviewId) E  " + 
					"join " + 
					"	(select F.id commentId, F.comment comment, F.userId commentUserId,  G.name commentUserName, hotelReviewId, F.status status " + 
					"    from HotelReviewComment F join User G on F.userId=G.id  " + 
					"    where F.status=1) H on E.id=H.hotelReviewId";

			conn = ConnectionPool.get();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, hotelId);
			rs = pstmt.executeQuery();

			ArrayList<ReviewDTO> hotelReviews = new ArrayList<ReviewDTO>();

			while (rs.next()) {
				hotelReviews.add(new ReviewDTO(rs.getString("id"), 
											rs.getString("score"),
											rs.getString("content"),
											rs.getString("name"),
											rs.getString("userId"),
											rs.getString("hotelId"),
											rs.getString("creatAt"),
											rs.getString("countLike"),
											rs.getString("commentId"),
											rs.getString("comment"),
											rs.getString("commentUserId"),
											rs.getString("commentUserName")
											));
			}
			return hotelReviews;

		} finally {
			if (rs != null)
				rs.close();
			if (pstmt != null)
				pstmt.close();
			if (conn != null)
				conn.close();
		}
	}
	
	
	
	public int insertHotelReview(String score, String content, String userId, String hotelId 
				) throws NamingException, SQLException {

		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int id = 0;
		try {
			String sql = "INSERT INTO HotelReview (score, content,userId, hotelId) "
					+ "VALUES (?,?,?,?) ";
			conn = ConnectionPool.get();
			pstmt = conn.prepareStatement(sql, PreparedStatement.RETURN_GENERATED_KEYS);
			pstmt.setInt(1, Integer.parseInt(score));
			pstmt.setString(2, content);
			pstmt.setInt(3, Integer.parseInt(userId));
			pstmt.setInt(4, Integer.parseInt(hotelId));

			pstmt.executeUpdate(); // db에 insert하기

			rs = pstmt.getGeneratedKeys(); // insert를 하고 나서 밖에서는 db 기본키 값 auto increasement로 뭐가 들어갔는지 안보여서 함수로 확인
			if (rs.next()) {
				id = rs.getInt(1); // id 기본키 값을 반환
			}
			return id;
		} finally {

			if (pstmt != null)
				pstmt.close();
			if (conn != null)
				conn.close();
		}
	}
	
	public int updateHoteltReview(String score, String content, String userId, String hotelId, 
			String id ) throws NamingException, SQLException {
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			String sql = "UPDATE HotelReview SET " 
					+ "score=?, content=?, userId=?, hotelId=? "
					+ "WHERE id=? AND status=1 ";
			conn = ConnectionPool.get();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, Integer.parseInt(score));
			pstmt.setString(2, content);
			pstmt.setInt(3, Integer.parseInt(userId));
			pstmt.setInt(4, Integer.parseInt(hotelId));
			pstmt.setInt(5,Integer.parseInt(id));
			
			int result = pstmt.executeUpdate();
			return result;

		} finally {
			if (pstmt != null)
				pstmt.close();
			if (conn != null)
				conn.close();
		}
	}
	
	public int deleteHotelReview(String id) throws NamingException, SQLException {
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			String sql = "UPDATE HotelReview SET status=0 " + "WHERE id=?";
			conn = ConnectionPool.get();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);

			int result = pstmt.executeUpdate();
			return result;

		} finally {
			if (pstmt != null)
				pstmt.close();
			if (conn != null)
				conn.close();
		}
	}
	
	
	//----------------------------------------------------HotelReviewLike

	public int insertHotelReviewLike(String reviewId, String userId
				) throws NamingException, SQLException {
	
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int id = 0;
		try {
			String sql = "INSERT INTO HotelReviewLike (reviewId, userId) "
					+ "VALUES (?,?) ";
			conn = ConnectionPool.get();
			pstmt = conn.prepareStatement(sql, PreparedStatement.RETURN_GENERATED_KEYS);
			pstmt.setInt(1, Integer.parseInt(reviewId));
			pstmt.setInt(2, Integer.parseInt(userId));
	
			pstmt.executeUpdate(); // db에 insert하기
	
			rs = pstmt.getGeneratedKeys(); // insert를 하고 나서 밖에서는 db 기본키 값 auto increasement로 뭐가 들어갔는지 안보여서 함수로 확인
			if (rs.next()) {
				id = rs.getInt(1); // id 기본키 값을 반환
			}
			return id;
	
		} finally {
	
			if (pstmt != null)
				pstmt.close();
			if (conn != null)
				conn.close();
		}
	}
	
	public int deleteHotelReviewLike(String id) throws NamingException, SQLException {
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			String sql = "UPDATE HotelReviewLike SET status=0 " + "WHERE id=?";
			conn = ConnectionPool.get();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);

			int result = pstmt.executeUpdate();
			return result;
		} finally {
			if (pstmt != null)
				pstmt.close();
			if (conn != null)
				conn.close();
		}
	}
	
	//----------------------------------------------------HotelReviewComment
	
	public int insertHotelReviewComment(String comment, String userId, String hotelReviewId 
			) throws NamingException, SQLException {

	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	int id = 0;
	try {
		String sql = "INSERT INTO HotelReviewComment (score, content,userId, hotelId) "
				+ "VALUES (?,?,?,?) ";
		conn = ConnectionPool.get();
		pstmt = conn.prepareStatement(sql, PreparedStatement.RETURN_GENERATED_KEYS);
		pstmt.setString(1, comment);
		pstmt.setInt(2, Integer.parseInt(userId));
		pstmt.setInt(3, Integer.parseInt(hotelReviewId));

		pstmt.executeUpdate(); // db에 insert하기

		rs = pstmt.getGeneratedKeys(); // insert를 하고 나서 밖에서는 db 기본키 값 auto increasement로 뭐가 들어갔는지 안보여서 함수로 확인
		if (rs.next()) {
			id = rs.getInt(1); // id 기본키 값을 반환
		}
		return id;
	} finally {

		if (pstmt != null)
			pstmt.close();
		if (conn != null)
			conn.close();
	}
}

public int updateHoteltReviewComment(String score, String content, String userId, String hotelId, 
		String id ) throws NamingException, SQLException {
	Connection conn = null;
	PreparedStatement pstmt = null;
	try {
		String sql = "UPDATE HotelReviewComment SET " 
				+ "score=?, content=?, userId=?, hotelId=? "
				+ "WHERE id=? AND status=1 ";
		conn = ConnectionPool.get();
		pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, Integer.parseInt(score));
		pstmt.setString(2, content);
		pstmt.setInt(3, Integer.parseInt(userId));
		pstmt.setInt(4, Integer.parseInt(hotelId));
		pstmt.setInt(5,Integer.parseInt(id));
		
		int result = pstmt.executeUpdate();
		return result;

	} finally {
		if (pstmt != null)
			pstmt.close();
		if (conn != null)
			conn.close();
	}
}

public int deleteHotelReviewComment(String id) throws NamingException, SQLException {
	Connection conn = null;
	PreparedStatement pstmt = null;
	try {
		String sql = "UPDATE HotelReviewComment SET status=0 " + "WHERE id=?";
		conn = ConnectionPool.get();
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);

		int result = pstmt.executeUpdate();
		return result;

	} finally {
		if (pstmt != null)
			pstmt.close();
		if (conn != null)
			conn.close();
	}
}
	

}
