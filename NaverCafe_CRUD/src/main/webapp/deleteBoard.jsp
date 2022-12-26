<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	request.setCharacterEncoding("utf-8");
%>
<%
	// 해당 콘텐츠만 보이기 위한 설정
	String name = (String) session.getAttribute("name");
    String id = (String) session.getAttribute("id");
    int num = Integer.parseInt(request.getParameter("num"));
%>       
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="author" content="nyoungseok">
    <meta name="description" content="Portfolio, NaverCafe Template, CRUD">
    <title>카페 글삭제, CRUD Portfolio</title>
    <link rel="shortcut icon" href="./image/favicon.ico"> 
    <link rel="apple-touch-icon=precomposed" href="./image/favicon.ico">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="./css/reset.css">
    <link rel="stylesheet" href="./css/notosans_kr_CDN.css">
    <!-- 페이지 CSS -->
    <link rel="stylesheet" href="./css/NC_Board_Delete.css"> 
    <!-- JS 플러그인 파일 -->
    <script src="./js/jquery-1.12.4.min.js"></script>
    <script src="./js/jquery-3.3.1.min.js"></script>
    <script src="./js/prefixfree.min.js"></script>
    <!-- 페이지 JS -->
    <script src="./js/NC_Board_Delete_Form.js"></script> 
</head>
<body>
    <div id="BD_wrap">
        <!-- Header -->
        <header class="BD_header w460_bd">
            <h1 class="BD_logo">
                <a href="#">
                    <img src="./image/cafe.jpg" alt="네이버 카페 로고">
                </a>
            </h1>
        </header>
        <!-- /Header -->
        <!-- Main -->
        <main role="main" class="w460_bd">
            <article class="BD_content">
                <div class="BD_content_header">
                    <h2>게시글을 삭제하시겠습니까?</h2>
                    <p>한번 삭제한 자료는 복구할 수 없습니다.</p>
                </div>
                <form action="DeleteBoardCtrl.do" method="post" class="BD_form">
                <input type="hidden" name="num" value="<%=num %>">
                    <div class="BD_form_pw">
                        <input type="password" name="pw" placeholder="비밀번호 입력">
                        <span class="BD_form_pw_icon"></span>
                    </div>
                    <p>비밀번호가 동일하면 글이 삭제됩니다.</p>
                    <input type="submit" value="삭제하기" class="BD_Dbtn">
                </form>
            </article>
        </main>
        <!-- /Main -->
        <article class="BD_reset w460_bd">
            <a href="GetBoardCtrl.do">카페 홈 &nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;</a>
            <a href="javascript:window.history.back();">게시글 돌아가기</a>
        </article>
        <!-- Footer -->
        <footer>
            <p><a href="#">이용약관</a>  |  <a href="#">개인정보처리방침</a>  |  <a href="#">책임의 한계와 법적고지</a>  |  <a href="#">회원정보 고객센터</a></p>
            <p><img src="https://upload.wikimedia.org/wikipedia/commons/thumb/2/23/Naver_Logotype.svg/2560px-Naver_Logotype.svg.png"> Copyright &copy; <span>NAVER Corp.</span>All Rights Reserved</span></p>
        </footer>
        <!-- /Footer -->
    </div>
</body>
<script>

</script>
</html>