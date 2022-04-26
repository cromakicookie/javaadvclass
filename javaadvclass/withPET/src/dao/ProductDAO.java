package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.NamingException;

import dto.*;
import util.ConnectionPool;

public class ProductDAO {

	public ArrayList<ProductDTO> getProductList() throws NamingException, SQLException {

		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			String sql = "SELECT * FROM Product ";

			conn = ConnectionPool.get();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();

			ArrayList<ProductDTO> products = new ArrayList<ProductDTO>();

			while (rs.next()) {
				products.add(new ProductDTO(rs.getString("id"), 
											rs.getString("name"), 
											rs.getString("price"),
											rs.getString("image")));
			}
			return products;

		} finally {
			if (rs != null)
				rs.close();
			if (pstmt != null)
				pstmt.close();
			if (conn != null)
				conn.close();
		}
	}

	public ProductDTO getProductDetail(String id) throws NamingException, SQLException {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			String sql = "SELECT * FROM Product WHERE id = ? AND status=1 ";

			conn = ConnectionPool.get();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			rs.next();

			ProductDTO product = new ProductDTO(rs.getString("id"), 
												rs.getString("name"), 
												rs.getString("price"),
												rs.getString("image"));

			return product;

		} finally {
			if (rs != null)
				rs.close();
			if (pstmt != null)
				pstmt.close();
			if (conn != null)
				conn.close();
		}
	}

	// 상품 추가
	public int insertProduct(String name, String price, String image
			) throws NamingException, SQLException {

		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int id = 0;
		try {
			String sql = "INSERT INTO Product (name, price, image) "
					+ "VALUES (?,?,?) ";
			conn = ConnectionPool.get();
			pstmt = conn.prepareStatement(sql, PreparedStatement.RETURN_GENERATED_KEYS);
			pstmt.setString(1, name);
			pstmt.setInt(2, Integer.parseInt(price));
			pstmt.setString(3, image);

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
	
	public int updateProduct(String name, String price, String image, String id
			) throws NamingException, SQLException {
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			String sql = "UPDATE Product SET " 
					+ "name=?, price=?, image=? "
					+ "WHERE id=? AND status=1 ";
			conn = ConnectionPool.get();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, name);
			pstmt.setInt(2, Integer.parseInt(price));
			pstmt.setString(3, image);
			pstmt.setInt(4,Integer.parseInt(id));
			
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
			String sql = "UPDATE Product SET status=0 " + "WHERE id=?";
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
	//----------------------------------------------------ProductReview
	//여기서 select *은 where절이 필요함  상품리뷰전체 리스트
	public ArrayList<ReviewDTO> getProductReviewList(String productId) throws NamingException, SQLException {

		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			String sql = "select C.id id, score, content, name, userId, productId, creatAt, countLike" + 
					"from " + 
					"	(select A.id id, score, content, name, userId, productId, A.creatAt creatAt" + 
					"	from ProductReview A JOIN User B on A.userId=B.id" + 
					"	where A.status=1 and productId=? ) C " + 
					"join " + 
					"	(select reviewId, count(*) countLike" + 
					"	from ProductReviewLike" + 
					"	group by reviewId) D on C.id=D.reviewId";

			conn = ConnectionPool.get();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, productId);
			rs = pstmt.executeQuery();

			ArrayList<ReviewDTO> productReviews = new ArrayList<ReviewDTO>();

			while (rs.next()) {
				productReviews.add(new ReviewDTO(rs.getString("id"), 
											rs.getString("score"),
											rs.getString("content"),
											rs.getString("name"),
											rs.getString("userId"),
											rs.getString("productId"),
											rs.getString("creatAt"),
											rs.getString("countLike")
											));
			}
			return productReviews;

		} finally {
			if (rs != null)
				rs.close();
			if (pstmt != null)
				pstmt.close();
			if (conn != null)
				conn.close();
		}
	}
	
	
	
	public int insertProductReview(String score, String content, String userId, String productId 
				) throws NamingException, SQLException {

		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int id = 0;
		try {
			String sql = "INSERT INTO ProductReview (score, content,userId, productId) "
					+ "VALUES (?,?,?,?) ";
			conn = ConnectionPool.get();
			pstmt = conn.prepareStatement(sql, PreparedStatement.RETURN_GENERATED_KEYS);
			pstmt.setInt(1, Integer.parseInt(score));
			pstmt.setString(2, content);
			pstmt.setInt(3, Integer.parseInt(userId));
			pstmt.setInt(4, Integer.parseInt(productId));

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
	
	public int updateProductReview(String score, String content, String userId, String productId, 
			String id ) throws NamingException, SQLException {
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			String sql = "UPDATE ProductReview SET " 
					+ "score=?, content=?, userId=?, productId=? "
					+ "WHERE id=? AND status=1 ";
			conn = ConnectionPool.get();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, Integer.parseInt(score));
			pstmt.setString(2, content);
			pstmt.setInt(3, Integer.parseInt(userId));
			pstmt.setInt(4, Integer.parseInt(productId));
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
	
	public int deleteProductReview(String id) throws NamingException, SQLException {
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			String sql = "UPDATE ProductReview SET status=0 " + "WHERE id=?";
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
	
	
	//----------------------------------------------------ProductReviewLike

	public int insertProductReviewLike(String reviewId, String userId
				) throws NamingException, SQLException {
	
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int id = 0;
		try {
			String sql = "INSERT INTO ProductReviewLike (reviewId, userId) "
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
	
	public int deleteProductReviewLike(String id) throws NamingException, SQLException {
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			String sql = "UPDATE ProductReviewLike SET status=0 " + "WHERE id=?";
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