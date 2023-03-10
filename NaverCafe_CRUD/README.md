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
<h2>2. 프로젝트 개발 환경</h2>
<p>
  &nbsp;&nbsp;&nbsp;java 1.8 (Jdk. 1.8)<br>
  &nbsp;&nbsp;&nbsp;Oracle 11g<br>
  &nbsp;&nbsp;&nbsp;apache-tomcat-8.5.78<br>
  &nbsp;&nbsp;&nbsp;eclipse 2021-06
</p>
<br><br>

<h2>3. 프로젝트 기능</h2>
<p>&nbsp;&nbsp;&nbsp;1) 회원가입, 로그인, 로그아웃</p>
<p>&nbsp;&nbsp;&nbsp;2) 게시판 종류별로 조회</p>
<p>&nbsp;&nbsp;&nbsp;3) 게시글 작성, 확인, 수정, 삭제 (수정, 삭제는 작성자만 가능)</p>
<br><br>
<h2>4. 프로젝트 시연</h2>
<div align=center>
    <h3>4-1. 회원가입</h3>
    <p>index_login.jsp > addUser.jsp > AddUserCtrl.java > index_login.jsp</p>
    <img src="https://user-images.githubusercontent.com/111558171/209742663-31756989-1a7c-475a-9c57-ab3cebab2ace.gif" alt="회원가입" width="700">
    <hr>
    <h3>4-2. 로그인 실패, 로그인 성공, 로그아웃</h3>
    <p>로그인 - index_login.jsp > LoginCtrl.java > GetBoardCtrl.java > cafe_main.jsp</p>
    <p>로그아웃 - cafe_main.jsp > logoutCtrl.java > index_login.jsp</p>
    <img src="https://user-images.githubusercontent.com/111558171/209742823-d01877ec-d45f-4e6c-ac1d-3c07969ea1b0.gif" alt="로그인 실패, 성공, 로그아웃" width="700">
    <hr>
    <h3>4-3. 게시판 종류별 조회</h3>
    <p>cafe_main.jsp > Get[Notice, Free, Question, Report]BoardCtrl.java > board_[Notice, Free, Question, Report].jsp</p>
    <img src="https://user-images.githubusercontent.com/111558171/209742887-2ac3288f-98f3-4928-9024-d69f12f190e9.gif" alt="게시판 종류별 조회" width="700">
    <hr>
    <h3>4-4. 게시글 작성, 확인</h3>
    <p>게시글 작성 - cafe_main.jsp > addBaord.jsp > AddBoardCtrl.java</p>
    <p>게시글 확인 - cafe_main.jsp > GetOneBoardCtrl.java > getOneBoard.jsp</p>
    <img src="https://user-images.githubusercontent.com/111558171/209743006-75060d9f-1719-40e7-b448-0ceddbc6e592.gif" alt="게시글 작성, 확인" width="700">
    <hr>
    <h3>4-5. 게시글 수정</h3>
    <p>getOneBoard.jsp > GetUpdateBoard.java > getUpdateBoard.jsp > UpdateBoardCtrl.java > cafe_main.jsp</p>
    <img src="https://user-images.githubusercontent.com/111558171/209743022-d33fda8a-427d-4822-a0e8-83c32d0b800a.gif" alt="게시글 수정" width="700">
    <hr>
    <h3>4-6. 게시글 삭제 실패, 삭제 성공</h3>
    <p>getOneBoard.jsp > deleteBoard.jsp > DeleteBoardCtrl.java</p>
    <img src="https://user-images.githubusercontent.com/111558171/209743030-000a0c7f-5c30-4a0a-9a6e-e791c509de63.gif" alt=" 게시글 삭제 실패, 삭제 성공" width="700">
    <hr>
</div>

