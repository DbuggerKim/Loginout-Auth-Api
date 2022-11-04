package user;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDAO {
	
	private String userID;
	private String userPassword;
	private String userPhone;
	
	private Connection con;
	private ResultSet rs;
	
	public UserDAO() {
		
		try {
			String driver="oracle.jdbc.driver.OracleDriver";
			String url="jdbc:oracle:thin:@localhost:1521:xe";
			String user="scott";
			String pwd="tiger";
			Class.forName(driver);
			System.out.println("드라이브 불러오기");
			con = DriverManager.getConnection(url, user, pwd);
			System.out.println("연결 성공");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
		// 로그인
		/*
		 * -2: 아이디없음
		 * -1: 서버오류
		 * 0: 비밀번호 틀림
		 * 1: 성공
		 */
	
		public int login(String userID, String userPassword) {
			try {
				PreparedStatement pst = con.prepareStatement("SELECT userPassword FROM member WHERE userID = ?");
				pst.setString(1, userID);
				rs = pst.executeQuery();
				if (rs.next()) {
					return rs.getString(1).equals(userPassword) ? 1 : 0;
				} else {
					return -2;
				}
			} catch (Exception e) {
				e.printStackTrace();
				return -1;
			}
		}
		
		//ID 중복여부 확인
		public boolean ID_Check(String userID) {
			try {
				PreparedStatement pst = con.prepareStatement("SELECT * FROM member WHERE userID = ?");
				pst.setString(1, userID);
				rs = pst.executeQuery();
				if (rs.next()) {
					return false;
				} else {
					return true;
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
			return false;
		}
		
		//PHONE 중복여부 확인
		public boolean PHONE_Check(String userPhone) {
			try {
				PreparedStatement pst = con.prepareStatement("SELECT * FROM member WHERE userPhone = ?");
				pst.setString(1, userPhone);
				rs = pst.executeQuery();
				if (rs.next()) {
					return false;
				} else {
					return true;
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
			return false;
		}
		
		
		// 회원가입
		/*
		 * -1: 서버오류
		 * 0: 이미 존재하는 아이디
		 * 1: 성공
		 * 2 :이미 존재하는 폰번호
		 */
		public int join(UserDAO userDAO) {
			if(!ID_Check(userDAO.getUserID())) return 0;
			if(!PHONE_Check(userDAO.getUserPhone())) return 2;
			try {
				PreparedStatement pst = con.prepareStatement("INSERT INTO member VALUES (?,?,?)");
				pst.setString(1, userDAO.getUserID());
				pst.setString(2, userDAO.getUserPassword());
				pst.setString(3, userDAO.getUserPhone());
				pst.executeUpdate();
				con.close();
				return 1;
			} catch (Exception e) {
				e.printStackTrace();
				return -1;
			}
		}
		
		public void delete(String userID) {
			try {
				System.out.println("시작");
				PreparedStatement pst = con.prepareStatement("DELETE FROM member WHERE userid = ?");
				System.out.println("중간");
				pst.setString(1, userID);
				System.out.println("끝");
				pst.executeUpdate();
				System.out.println("진짜 끝");
				con.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		// 유저 데이터 가져오기
		public UserDAO getUser(String userID) {
			try {
				PreparedStatement pst = con.prepareStatement("SELECT * FROM member WHERE userID = ?");
				pst.setString(1, userID);
				rs = pst.executeQuery();
				if (rs.next()) {
					UserDAO userDAO = new UserDAO();
					userDAO.setUserID(rs.getString(1));
					userDAO.setUserPassword(rs.getString(2));
					userDAO.setUserPhone(rs.getString(3));
					return userDAO;
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
			return null;
		}
		
		public String getUserID() {
			return userID;
		}
		public void setUserID(String userID) {
			this.userID = userID;
		}
		public String getUserPassword() {
			return userPassword;
		}
		public void setUserPassword(String userPassword) {
			this.userPassword = userPassword;
		}
		public String getUserPhone() {
			return userPhone;
		}
		public void setUserPhone(String userPhone) {
			this.userPhone = userPhone;
		}
	}
