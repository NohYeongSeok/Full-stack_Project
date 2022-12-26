package biz.board;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class BoardDAO {
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
    
    // 전체 게시판 불러오기
    public ArrayList<BoardVO> getBoard(){
    	dbConn();
    	ArrayList<BoardVO> bbean = new ArrayList<BoardVO>();
    	try {
			String sql = "SELECT * FROM nc_board ORDER BY seq DESC";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				BoardVO bean = new BoardVO();
				bean.setSeq(rs.getInt(1));
				bean.setTag(rs.getString(2));
				bean.setId(rs.getString(3));
				bean.setTitle(rs.getString(4));
				bean.setContent(rs.getString(5));
				bean.setRegdate(rs.getDate(6));
				bean.setCnt(rs.getInt(7));
				
				bbean.add(bean);
			}
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
    	return bbean;
    }
    
    // 공지사항 불러오기
    public ArrayList<BoardVO> getNoticeBoard(){
    	dbConn();
    	ArrayList<BoardVO> bbean = new ArrayList<BoardVO>();
    	try {
    		String sql = "SELECT * FROM nc_board WHERE TAG = '공지사항' ORDER BY seq DESC";
    		pstmt = conn.prepareStatement(sql);
    		rs = pstmt.executeQuery();
    		
    		while(rs.next()) {
    			BoardVO bean = new BoardVO();
    			bean.setSeq(rs.getInt(1));
    			bean.setTag(rs.getString(2));
    			bean.setId(rs.getString(3));
    			bean.setTitle(rs.getString(4));
    			bean.setContent(rs.getString(5));
    			bean.setRegdate(rs.getDate(6));
    			bean.setCnt(rs.getInt(7));
    			
    			bbean.add(bean);
    		}
    		conn.close();
    	} catch (Exception e) {
    		e.printStackTrace();
    	}
    	return bbean;
    }
    
    // 자유게시판 불러오기
    public ArrayList<BoardVO> getFreeBoard(){
    	dbConn();
    	ArrayList<BoardVO> bbean = new ArrayList<BoardVO>();
    	try {
    		String sql = "SELECT * FROM nc_board WHERE TAG = '자유게시판' ORDER BY seq DESC";
    		pstmt = conn.prepareStatement(sql);
    		rs = pstmt.executeQuery();
    		
    		while(rs.next()) {
    			BoardVO bean = new BoardVO();
    			bean.setSeq(rs.getInt(1));
    			bean.setTag(rs.getString(2));
    			bean.setId(rs.getString(3));
    			bean.setTitle(rs.getString(4));
    			bean.setContent(rs.getString(5));
    			bean.setRegdate(rs.getDate(6));
    			bean.setCnt(rs.getInt(7));
    			
    			bbean.add(bean);
    		}
    		conn.close();
    	} catch (Exception e) {
    		e.printStackTrace();
    	}
    	return bbean;
    }
    
    // 질문게시판 불러오기
    public ArrayList<BoardVO> getQuestionBoard(){
    	dbConn();
    	ArrayList<BoardVO> bbean = new ArrayList<BoardVO>();
    	try {
    		String sql = "SELECT * FROM nc_board WHERE TAG = '질문게시판' ORDER BY seq DESC";
    		pstmt = conn.prepareStatement(sql);
    		rs = pstmt.executeQuery();
    		
    		while(rs.next()) {
    			BoardVO bean = new BoardVO();
    			bean.setSeq(rs.getInt(1));
    			bean.setTag(rs.getString(2));
    			bean.setId(rs.getString(3));
    			bean.setTitle(rs.getString(4));
    			bean.setContent(rs.getString(5));
    			bean.setRegdate(rs.getDate(6));
    			bean.setCnt(rs.getInt(7));
    			
    			bbean.add(bean);
    		}
    		conn.close();
    	} catch (Exception e) {
    		e.printStackTrace();
    	}
    	return bbean;
    }
    
    // 신고게시판 불러오기
    public ArrayList<BoardVO> getReportBoard(){
    	dbConn();
    	ArrayList<BoardVO> bbean = new ArrayList<BoardVO>();
    	try {
    		String sql = "SELECT * FROM nc_board WHERE TAG = '신고게시판' ORDER BY seq DESC";
    		pstmt = conn.prepareStatement(sql);
    		rs = pstmt.executeQuery();
    		
    		while(rs.next()) {
    			BoardVO bean = new BoardVO();
    			bean.setSeq(rs.getInt(1));
    			bean.setTag(rs.getString(2));
    			bean.setId(rs.getString(3));
    			bean.setTitle(rs.getString(4));
    			bean.setContent(rs.getString(5));
    			bean.setRegdate(rs.getDate(6));
    			bean.setCnt(rs.getInt(7));
    			
    			bbean.add(bean);
    		}
    		conn.close();
    	} catch (Exception e) {
    		e.printStackTrace();
    	}
    	return bbean;
    }
	
	// 게시글 하나 불러오기
    public BoardVO getOneBoard(int num) {
    	dbConn();
    	BoardVO bbean = new BoardVO();
    	try {
			String sql = "UPDATE nc_board SET cnt = cnt+1 WHERE seq = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			pstmt.executeUpdate();
			
			sql = "SELECT * FROM nc_board WHERE seq = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				bbean.setSeq(rs.getInt(1));
				bbean.setTag(rs.getString(2));
				bbean.setId(rs.getString(3));
				bbean.setTitle(rs.getString(4));
				bbean.setContent(rs.getString(5));
				bbean.setRegdate(rs.getDate(6));
				bbean.setCnt(rs.getInt(7));
			}
			conn.close();			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
    	
    	return bbean;
    }
    
    // 글 쓰기 메서드
    public int addBoard(BoardVO bbean) {
    	dbConn();
    	int cnt = 0;
    	try {
			String sql = "INSERT INTO nc_board(seq, tag, id, title, content) VALUES ((SELECT NVL(MAX(seq), 0)+1 FROM nc_board), ?, ?, ?, ?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, bbean.getTag());
			pstmt.setString(2, bbean.getId());
			pstmt.setString(3, bbean.getTitle());
			pstmt.setString(4, bbean.getContent());
			cnt = pstmt.executeUpdate();
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
    	return cnt;
    }
    
    // 수정할 게시글 불러오기
    public BoardVO getUpdateBoard(int num) {
    	dbConn();
    	BoardVO bbean = new BoardVO();
    	try {
			String sql = "SELECT * FROM nc_board WHERE seq = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				bbean.setSeq(rs.getInt(1));
				bbean.setTag(rs.getString(2));
				bbean.setId(rs.getString(3));
				bbean.setTitle(rs.getString(4));
				bbean.setContent(rs.getString(5));
				bbean.setRegdate(rs.getDate(6));
				bbean.setCnt(rs.getInt(7));
			}
			conn.close();			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
    	
    	return bbean;
    }
    
    // 게시글 수정
    public int updateBoard(BoardVO bbean) {
    	dbConn();
    	int cnt = 0;
    	try {
			String sql = "UPDATE nc_board SET tag = ?, title = ?, content = ? WHERE seq = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, bbean.getTag());
			pstmt.setString(2, bbean.getTitle());
			pstmt.setString(3, bbean.getContent());
			pstmt.setInt(4, bbean.getSeq());
			cnt = pstmt.executeUpdate();
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
    	return cnt;
    }
    
    // 글삭제
    public void deleteBoard(int num) {
    	dbConn();
    	try {
			String sql = "DELETE FROM nc_board WHERE seq = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			pstmt.executeUpdate();
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
    }
    
    
}
