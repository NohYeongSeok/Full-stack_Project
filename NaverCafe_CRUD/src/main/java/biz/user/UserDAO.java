package biz.user;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class UserDAO {
	Connection conn;
	PreparedStatement pstmt;
	ResultSet rs;
	
    // 커넥션 풀 사용 메서드
    public void dbConn() {
       try {
          Context initctx = new InitialContext();
          System.out.println("1.Context 생성 성공!!");
          Context envctx = (Context)initctx.lookup("java:comp/env");
          System.out.println("2.Context 환경생성 성공!!");
          DataSource ds = (DataSource)envctx.lookup("jdbc/pool");
          System.out.println("3.DataSource 찾기 성공!!");
          conn = ds.getConnection();
          System.out.println("4. DB접속 성공!!");
       } catch (Exception e) {
          e.printStackTrace();
       }
    }
	
    // 회원정보 리턴 메서드
    public UserVO getUser(String id, String pw) {
    	dbConn();
    	UserVO ubean = new UserVO();;
    	try {
			String sql = "SELECT * FROM nc_user WHERE id = ? AND pw = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, pw);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				ubean.setId(rs.getString(1));
				ubean.setPw(rs.getString(2));
				ubean.setName(rs.getString(3));
				ubean.setBirth(rs.getString(4));
				ubean.setGender(rs.getString(5));
				ubean.setEmail(rs.getString(6));
				ubean.setTel(rs.getString(7));
			}
			conn.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
    	return ubean;
    }
	
    
    // 회원가입 메서드
    public int addUser(UserVO ubean) {
    	dbConn();
    	int cnt = 0;
    	try {
			String sql = "INSERT INTO nc_user VALUES (?, ?, ?, ?, ?, ?, ?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, ubean.getId());
			pstmt.setString(2, ubean.getPw());
			pstmt.setString(3, ubean.getName());
			pstmt.setString(4, ubean.getBirth());
			pstmt.setString(5, ubean.getGender());
			pstmt.setString(6, ubean.getEmail());
			pstmt.setString(7, ubean.getTel());
			cnt = pstmt.executeUpdate();
			
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
    	return cnt;
    }
	
    
    // 글 삭제 위한 회원정보 리턴 메서드
    public UserVO getUserOnlyId(String id) {
    	dbConn();
    	UserVO ubean = new UserVO();;
    	try {
			String sql = "SELECT * FROM nc_user WHERE id = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				ubean.setId(rs.getString(1));
				ubean.setPw(rs.getString(2));
				ubean.setName(rs.getString(3));
				ubean.setBirth(rs.getString(4));
				ubean.setGender(rs.getString(5));
				ubean.setEmail(rs.getString(6));
				ubean.setTel(rs.getString(7));
			}
			conn.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
    	return ubean;
    }
	
	
    
    
    
}
