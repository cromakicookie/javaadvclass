package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import javax.naming.NamingException;
import dto.UserDTO;
import util.ConnectionPool;
// select all => 테이블 전체 데이터  관리자가 볼때 테이블 형식으로 for 리스트업
//
public class UserDAO {

	public ArrayList<UserDTO> getList() throws NamingException, SQLException {

		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			String sql = "SELECT * FROM user where status=1";

			conn = ConnectionPool.get();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();

			ArrayList<UserDTO> users = new ArrayList<UserDTO>();

			while (rs.next()) {
				users.add(new UserDTO(rs.getString("id"), 
						rs.getString("account"), 
						rs.getString("password"),
						rs.getString("name"), 
						rs.getString("email"), 
						rs.getString("birthday"),
						rs.getString("phoneNumber"), 
						rs.getString("grade")));
			}
			return users;

		} finally {
			if (rs != null)
				rs.close();
			if (pstmt != null)
				pstmt.close();
			if (conn != null)
				conn.close();
		}
	}

	public UserDTO getDetail(String id) throws NamingException, SQLException {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			String sql = "SELECT * FROM user WHERE id = ? AND status=1 ";

			conn = ConnectionPool.get();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();

			rs.next();

			UserDTO board = new UserDTO(rs.getString("id"), 
					rs.getString("account"), 
					rs.getString("password"),
					rs.getString("name"), 
					rs.getString("email"), 
					rs.getString("birthday"), 
					rs.getString("phoneNumber"),
					rs.getString("grade"));

			return board;

		} finally {
			if (rs != null)
				rs.close();
			if (pstmt != null)
				pstmt.close();
			if (conn != null)
				conn.close();
		}

	}
	//회원가입
	public int insertUser(String account, String password, String name, String email, String birthday, String phoneNumber
			) throws NamingException, SQLException {

		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int id = 0;
		try {
			String sql = "INSERT INTO User ( birthday, email, name, phonenumber, account, password) "
					+ "VALUES (?,?,?,?,?,?) ";
			conn = ConnectionPool.get();
			pstmt = conn.prepareStatement(sql, PreparedStatement.RETURN_GENERATED_KEYS);
			pstmt.setString(1, birthday);
			pstmt.setString(2, email);
			pstmt.setString(3, name);
			pstmt.setString(4, phoneNumber);
			pstmt.setString(5, account);
			pstmt.setString(6, password);

			pstmt.executeUpdate(); //db에 insert하기

			rs = pstmt.getGeneratedKeys(); //insert를 하고 나서 밖에서는 db 기본키 값 auto increasement로 뭐가 들어갔는지 안보여서 함수로 확인
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

	// 개인정보변경 메소드
	// 개인정보 -> 칸들 채워져 있음 이름, 전화번호, 비번, 주소 jsp select* where id 입력 > updateUser()
	public int updateUser(String account, String password, String name, String email, String birthday, String phoneNumber,
			String grade) throws NamingException, SQLException {
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			String sql = "UPDATE User SET " + "grade=?, birthday=?, email=?, name=?, phonenumber=?, password=? "
					+ "WHERE account=? AND status=1 ";
			conn = ConnectionPool.get();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, Integer.parseInt(grade));
			pstmt.setString(2, birthday);
			pstmt.setString(3, email);
			pstmt.setString(4, name);
			pstmt.setString(5, phoneNumber);
			pstmt.setString(6, password);
			pstmt.setString(7, account);

			int result = pstmt.executeUpdate();
			return result;

		} finally {

			if (pstmt != null)
				pstmt.close();
			if (conn != null)
				conn.close();
		}
	}

	// 비밀번호 변경 메소드
	public int pwUpdateUser(String account, String password) throws NamingException, SQLException {
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			String sql = "UPDATE User SET password=? " + "WHERE account=? AND status=1 ";
			conn = ConnectionPool.get();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, password);
			pstmt.setString(2, account);
			int result = pstmt.executeUpdate();
			return result;
		} finally {

			if (pstmt != null)
				pstmt.close();
			if (conn != null)
				conn.close();
		}
	}

	// 계정 삭제 메소드(실제로는 유저 휴먼 상태로 변경 후 검색상 탈퇴한 회원 입니다 표시)
	public int deleteUser(String account) throws NamingException, SQLException {
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			String sql = "UPDATE User SET status=0 " + "WHERE account=?";
			conn = ConnectionPool.get();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, account);

			int result = pstmt.executeUpdate();
			return result;

		} finally {
			if (pstmt != null)
				pstmt.close();
			if (conn != null)
				conn.close();
		}
	}

	public int login(String account, String password) throws NamingException, SQLException {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try { 
			String sql = "SELECT id, password FROM user WHERE account=? AND status=1";
			conn = ConnectionPool.get();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, account);
			rs = pstmt.executeQuery();  // executeUpdate()는 바로 실행이 되나 select 쿼리는 다르다

			if (!rs.next()) //select query는 rs.next()를 해야 실행이 됨. 값이 없으면 rs.next() => false로 들어옴
				return 1; // 회원이 아닌 경우  아이디 x jsp 회원가입 창 회원가입 해주세요 
			if (!password.equals(rs.getString("password")))
				return 2; // 패스워트 틀린경우 비밀번호가 틀립니다.
			return rs.getInt("id");

		} finally {
			if (rs != null)
				rs.close();
			if (pstmt != null)
				pstmt.close();
			if (conn != null)
				conn.close();
		}
	}

	// 계정 인증 화면을 띄우기 위해 아이디, 이메일 , 생년월일이 동일한지 확인하는 sql 쿼리
	// 비밀번호찾기 => 아이디, 이메일, 생년월일
	public int userCode(String account, String email, String birthday) throws NamingException, SQLException {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			String sql = "SELECT email, birthday FROM user WHERE account=? AND status=1";
			conn = ConnectionPool.get();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, account);
			rs = pstmt.executeQuery();

			if (!rs.next())
				return 1; // 회원이 아닌 경우 "회원이 아닙니다"
			if (!email.equals(rs.getString("email")))
				return 2; // 이메일이 틀린경우 "등록된 이메일 정보와 다릅니다"
			else if (! birthday.equals(rs.getString("birthday")))
				return 3; // 생일이 맞지 않은 경우 "등록된 생년월일과 다릅니다."
			return 0;

		} finally {
			if (rs != null)
				rs.close();
			if (pstmt != null)
				pstmt.close();
			if (conn != null)
				conn.close();
		}
	}
}
