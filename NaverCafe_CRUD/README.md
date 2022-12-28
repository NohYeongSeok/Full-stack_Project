<div align=center>
  <h1>[NaverCafe_CRUD]</h1>
</div>
<div align=center>
  기본 CRUD 연습을 위한 네이버 카페 클론코딩 사이트 프로젝트 입니다.
</div>
<br><br><br>
<hr>

<h2>1. 프로젝트 개요</h2>
<p>&nbsp;&nbsp;&nbsp;JSP, Servlet , OracleDB(sql)을 이용. 커넥션 풀을 활용한 기본 CRUD(Create Read Update Delete)가 작동하는 홈페이지 구현</p>
<br><br>
<h2>2. 프로젝트 기능</h2>
<p>&nbsp;&nbsp;&nbsp;1) 회원가입, 로그인, 로그아웃</p>
<p>&nbsp;&nbsp;&nbsp;2) 게시판 종류별로 조회</p>
<p>&nbsp;&nbsp;&nbsp;3) 게시글 작성, 확인, 수정, 삭제 (수정, 삭제는 작성자만 가능)</p>
<br><br>
<h2>3. 프로젝트 시연</h2>
<div align=center>
    <h3>3-1. 회원가입</h3>
    <p>index_login.jsp > addUser.jsp > AddUserCtrl.java > index_login.jsp</p>
    <hr>
    <h3>3-2. 로그인 실패, 로그인 성공, 로그아웃</h3>
    <p>로그인 - index_login.jsp > LoginCtrl.java > GetBoardCtrl.java > cafe_main.jsp</p>
    <p>로그아웃 - cafe_main.jsp > logoutCtrl.java > index_login.jsp</p>
    <hr>
    <h3>3-3. 게시판 종류별 조회</h3>
    <p>cafe_main.jsp > Get[Notice, Free, Question, Report]BoardCtrl.java > board_[Notice, Free, Question, Report].jsp</p>
    <hr>
    <h3>3-4. 게시글 작성, 확인</h3>
    <p>cafe_main.jsp > addBaord.jsp > AddBoardCtrl.java</p>
    <hr>
    <h3>3-5. 게시글 수정</h3>
    <p>게시글 확인 - cafe_main.jsp > GetOneBoardCtrl.java > getOneBoard.jsp</p>
    <p>게시글 수정 - getOneBoard.jsp > GetUpdateBoard.java > getUpdateBoard.jsp > UpdateBoardCtrl.java > cafe_main.jsp</p>
    <hr>
    <h3>3-6. 게시글 삭제 실패, 삭제 성공</h3>
    <p>getOneBoard.jsp > deleteBoard.jsp > DeleteBoardCtrl.java</p>
    <hr>
</div>

<a href="https://kr.freepik.com/free-psd/computer-screen-mock-up_1153556.htm#query=%EB%AA%A8%EB%8B%88%ED%84%B0&position=24&from_view=search&track=sph">작가 CosmoStudio</a> 출처 Freepik
