<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>전체글보기</title>
    <link rel="stylesheet" href="css/reset.css">
    <link rel="stylesheet" href="css/header.css">
    <link rel="stylesheet" href="css/main.css">
    <link rel="stylesheet" href="css/footer.css">
    <link rel="stylesheet" href="css/boardlist.css">
    <link rel="stylesheet" href="./font/AppleSDGothicNeoB.ttf">
    <script src="http://code.jquery.com/jquery-1.12.4.min.js"></script>
    <script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <!-- js 플러그인 파일 -->
    <script src="js/jquery-1.12.4.min.js"></script>
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/jquery-3.4.1.min.js"></script>
    <script src="js/prefixfree.min.js"></script> 
    
    <!-- 페이지 JS -->
    <script src="js/header.js"></script>
<%
	// 해당 콘텐츠만 보이기 위한 설정
	String name = (String) session.getAttribute("name");
%>
</head>
<body>
    <div id="wrap">
        <header class="w1080">
            <div class="cf">
                <a href="GetBoardCtrl.do"><img src="https://ssl.pstatic.net/static/cafe/icon_naver_190423.png" width="52" height="10" alt="NAVER"></a>
<%
	if(name != null){
%>
                <ul>
                    <li><a href="#">카페홈</a></li>
                    <li><a href="#">이웃</a></li>
                    <li><a href="#">가입카페</a></li>
                    <li><a href="#">새글</a></li>
                    <li><a href="#">내소식</a></li>
                    <li class="header_f1">${id}</li>
                    <li class="logout_Btn"><a href="LogoutCtrl.do">로그아웃</a></li>
                    <li><img src="./images/header/header_menu.png" alt="#"></img></li>
                </ul>
<%
	}else{
		response.sendRedirect("index_login.jsp");
	}
%>
            </div>
            <div class="header_banner" onclick="location.href='GetBoardCtrl.do'" style="cursor:pointer">
                <p class="header_cafe_name"><strong>CRUD Portfolio</strong></p>
                <p class="header_cafe_url">https://cafe.naver.com/orangelxlcw></p>
            </div>
            <div class="header_search_box cf">
                <input type="text" class="header_search" name="header_search" title="카페글 검색어 입력">
                <button type="button" class="header_search_btn">검색</button>
            </div>
        </header>
        <main class="w1080">
            <nav>
                <hr>
                <div class="nav_profile">
                    <p><i class="fa fa-star-o" aria-hidden="true"></i></p>
                    <button class="btn btn-primary">
                       카페정보
                    </button>
                    <button class="btn btn-primary">
                       회원정보
                    </button>
                </div>
                <hr>
<div class="nav_info1">
                    <ul>
                        <p><img src="./images/header/header_profile.png" alt=""></p>
                        <div>
               
                            <div>
                                <li style="font-size: 10px;">매니저</li>
                                <li style="font-size: 13px;"><strong>Admin</strong></li>
                            </div>                        
                            <li style="font-size: 12px;">since 2022.12.05</li>
                            <li style="font-size: 12px;">카페소개</li>
                        </div>
                    </ul>
                </div>
                <hr>
                <div class="nav_info2">
                    <ul>
                        <li>씨앗1단계</li>
                        <div>
                            <li><i class="fa fa-user" aria-hidden="true"></i>  1 <i class="fa fa-lock" aria-hidden="true"></i></li>
                            <li>초대하기</li>
                        </div>
                    </ul>
                </div>
                <div class="nav_info3">
                    <ul>
                        <div>
                            <li>즐겨찾는멤버</li>
                            <li>0명</li>
                        </div>
                        <div>
                            <li>게시판 구독수</li>
                            <li>0명</li>
                        </div>
                        <div>
                            <li>우리카페명 수</li>
                            <li>0명</li>
                        </div>
                    </ul>
                </div>
                <hr>
                <div class="nav_info4">
                    <ul>
                        <li>주제</li>
                        <li>컴퓨터/통신 > 웹디자인/웹기획</li>
                    </ul>
                </div>
                <hr>
                <button class="nav_join" type="button" onclick="location.href='addBoard.jsp'">카페 글쓰기</button>
                <button onclick="" class="nav_chat" type="button">카페 채팅</button>
                <div class="nav_list">
                    <ul>
                        <li><a href="GetBoardCtrl.do"><i class="fa fa-file-text-o" aria-hidden="true"></i>전체글보기</a></li>
                    </ul>
                    <hr>
                    <ul>
                        <li><a href="GetNoticeBoardCtrl.do"><i class="fa fa-file-text-o" aria-hidden="true"></i><strong>공지사항</strong></a></li>
                        <li><a href="GetFreeBoardCtrl.do"><i class="fa fa-file-text-o" aria-hidden="true"></i>자유게시판</a></li>
                        <li><a href="GetQuestionBoardCtrl.do"><i class="fa fa-file-text-o" aria-hidden="true"></i>질문게시판</a></li>
                        <li><a href="GetReportBoardCtrl.do"><i class="fa fa-file-text-o" aria-hidden="true"></i>신고게시판</a></li>
                    </ul>
                </div>
                <hr>
                <div class="nav_last_chat">
                    <ul><strong>최근 댓글 * 답글</strong>
                       	<li><i class="fa fa-circle" aria-hidden="true"></i>자유게시판</li>
                    </ul>
                </div>
                <div class="nav_ad">
                    <a href="#"><img src="./images/header/header_ad.png" alt="bot"></a>
                </div>
            </nav>
            <section class="index_right">
                <div id="boardlist_wrap">
        <div class="boardlist_cb">
            <div class="boardlist_box">
                <div class="boardlist_tit">
                    <h3><a href="#">공지사항</a></h3> <br>
                </div>
            </div>
            <div class="boardlist_list_area ">
                <div class="boardlist_style ">
                    <div class="boardlist_checkbox cf">
                        <ul>
                            <li class="boardlist_text"><input type="checkbox"></li>
                            <li class="boardlist_text"><a href="#">공지숨기기</a></li>
                            <li><a href="#"><i class="fa fa-list-ul" aria-hidden="true"></i></a></li>
                            <li><a href="#"><i class="fa fa-play-circle-o" aria-hidden="true"></a></i></li>
                            <li><a href="#"><i class="fa fa-th-large" aria-hidden="true"></a></i></li>
                            <li><a href="#"><i class="fa fa-file-text" aria-hidden="true"></i></a></li>
                            <li>
                                <select name="" id="board_list_ae">
                                    <option value="2"><a href="#">15개씩</a></option>
                                    <option value="3">5개씩</option>
                                    <option value="4">10개씩</option>
                                    <option value="5">15개씩</option>
                                    <option value="6">20개씩</option>
                                    <option value="7">30개씩</option>
                                    <option value="8">40개씩</option>
                                    <option value="9">50개씩</option>
                                </select>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="boardlist_list">
                <table>
                    <thead>
                        <tr>
                            <th><b>제목</b></th>
                            <th><b>작성자</b></th>
                            <th><b>작성일</b></th>
                            <th><b>조회</b></th>
                        </tr>
                    </thead>
                    <c:forEach var="bean" items="${bbean }">
	                    <tr>
	                        <td class="boardlist_td">
	                            <div class="boardlist_dot">
	                                <span><a href="#">${bean.tag }</a></span>
	                                <a href="GetOneBoardCtrl.do?num=${bean.seq }">${bean.title }</a>
	                            </div>
	                        </td>
	                        <td class="boardlist_id"><a href="#">${bean.id }</a></td>
	                        <td class="boardlist_date">${bean.regdate }</td>
	                        <td class="boardlist_cnt">${bean.cnt }</td>
	                    </tr>
                    </c:forEach>
                </table>
            </div>
            <div class="boardlist_prev_next">
                <a href="#" class="on">1</a>
            </div>
            <div class="boardlist">
                <div class="boardlist_select">
                    <select name="" id="board_title">
                            <option value="2">전체기간</option>
                            <option value="3">1일</option>
                            <option value="4">1주</option>
                            <option value="5">1개월</option>
                            <option value="6">6개월</option>
                            <option value="7">1년</option>
                    </select>
                </div>
                <div class="boardlist_select">
                    <select name="" id="board_title">
                            <option value="2">게시물 + 댓글</option>
                            <option value="3">제목만</option>
                            <option value="4">글작성자</option>
                            <option value="5">댓글내용</option>
                            <option value="6">댓글작성자</option>
                    </select>
                </div>
                <div class="boardlist_input">
                    <input type="text" placeholder="검색어를 입력해주세요.">
                </div>
                <div class="boardlist_btn">
                    <button><a href="#">검색</a></button>
                </div>
            </div>
        </div>
    </div>
            </section>
        </main>
        <footer class="w1080">
            <hr>
            <div class="footer">
                <p>CRUD Portfolio   <span class="silver">|</span></p>
                <p>http://cafe.naver.com/orangelxlcw</p>
                <p>NAVER 카페</p>
            </div>
        </footer>
    </div>
</body>
</html>