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
    <title>boardarticle</title>
    <link rel="stylesheet" href="css/reset.css">
    <link rel="stylesheet" href="css/header.css">
    <link rel="stylesheet" href="css/main.css">
    <link rel="stylesheet" href="css/footer.css">
    <link rel="stylesheet" href="./font/AppleSDGothicNeoB.ttf">
    <link rel="stylesheet" href="css/boardarticle.css" />
    <script src="http://code.jquery.com/jquery-1.12.4.min.js"></script>
    <script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <!-- js 플러그인 파일 -->
    <script src="js/jquery-1.12.4.min.js"></script>
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/jquery-3.4.1.min.js"></script>
    <script src="js/prefixfree.min.js"></script>  <!-- prefix(접두어)를 안써도 되는 플러그인 -->
    
    <!-- 페이지 JS -->
    <script src="js/header.js"></script>
<%
	// 해당 콘텐츠만 보이기 위한 설정
	String name = (String) session.getAttribute("name");
	String id = (String)session.getAttribute("id");
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
<!--                     <button class="btn btn-primary" onclick="location.href='cafe_main.jsp?content=/include/Userinfo.jsp'">
                       카페정보
                    </button>
                    <button class="btn btn-primary" onclick="location.href='cafe_main.jsp?content=/include/Userinfo2.jsp'">
                       회원정보
                    </button> -->
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
                <div id="boardarticle_wrap">
        <div class="boardarticle_arrow cf">
            <div class="boardarticle_left"></div>
            <div class="boardarticle_right">
                <a href="#"><span><i class="fa fa-angle-down " aria-hidden="true"></i>다음글</span></a>
                <a href="GetBoardCtrl.do"><span>목록</span></a>
            </div>
        </div>
        <div class="boardarticle_content">
            <div class="article_header">
                <div class="article_header_1">
                    <div class="article_title">
                        <a href="#">${bbean.tag }<i class="fa fa-angle-right " aria-hidden="true"></i></a>
                    </div>
                    <div class="article_text">
                        <h3>${bbean.title }</h3>
                    </div>
                </div>
                <div class="writerinfo cf">
                    <a href="#"><img src="https://ssl.pstatic.net/static/cafe/cafe_pc/default/cafe_profile_77.png?type=c77_77" alt="프로필 사진" width="36" height="36"></a>
                    <div class="profile_area ">
                        <div class="profile_info">
                            <button class="profile_nickname">${bbean.id }</button>
                            <a href="#">1:1채팅</a>
                        </div>
                        <div class="article_info">
                            <span class="article_info_date">${bbean.regdate }</span>
                            <span class="article_info_cnt">${bbean.cnt }</span>
                        </div>
                    </div>
                </div>
                <div class="articletool">
                    <a href="#"><i class="fa fa-commenting-o" aria-hidden="true"></i>댓글 0</a>
                    <a href="#">URL 복사</a>
                    <a href="#" class="dotdot"><i class="fa fa-ellipsis-v fa-lg" aria-hidden="true"></i></a> <br>
                    <div class="articletool_more">
                        <a href="#">인쇄하기</a>
                    </div>
                </div>
            </div>
            <div class="article_container">
                <div class="view_content">
                    <p>
                        ${bbean.content }
                    </p>
                </div>
                <div class="article_writer">
                    <div class="article_writer_profile">
                        <a href="#"><img src="https://ssl.pstatic.net/static/cafe/cafe_pc/default/cafe_profile_77.png?type=c77_77" alt="프로필 사진" width="36" height="36"></a>
                        <span><a href="#"><strong>${bbean.id }</strong>님의 게시글 더보기<i class="fa fa-angle-right " aria-hidden="true"></i></a>
                        </span>
                    </div>
                </div>
                <div class="replaybox cf">
                    <div class="box_left">
                        <a href="#"><i class="fa fa-heart-o" aria-hidden="true"></i>좋아요 0</a>
                        <a href="#"><i class="fa fa-commenting-o" aria-hidden="true"></i>댓글 0</a>
                    </div>
                    <div class="box_right">
                        <a href="#"><i class="fa fa-share-square-o" aria-hidden="true"></i> 공유</a>
                        <a href="#" class="before_line">신고</a>
                    </div>
                </div>
                <div class="commentbox cf">
                    <div class="commentbox_option">
                        <h3>댓글</h3>
                    </div>
                    <div class="slider_switch cf">
                        <label class="switch">
                            <input type="checkbox">
                            <span class="slider round"></span>
                          </label>
                        <p class="ppp">댓글알림</p>
                    </div>
                </div>
                <div class="commentwriter">
                    <div class="comment_inbox">
                        <p>${bbean.id }</p>
                        <textarea  placeholder="댓글을 남겨보세요." rows="1" class="comment_inbox_text" style="overflow: hidden; overflow-wrap: break-word; height: 17px; resize:none;"></textarea>
                    </div>
                    <div class="comment_attach cf">
                        <div class="comment_left">
                            <a href="#"><i class="fa fa-camera fa-lg" aria-hidden="true" ></i></a>
                            <a href="#"><i class="fa fa-smile-o fa-lg" aria-hidden="true"></i></a>
                        </div>
                        <div class="comment_submit ">
                            <input type="submit" value="등록" >
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="articlebottom_btn cf">
		<c:if test="${id == bbean.id }">
            <div class="btn_left_area">
                <a href="GetUpdateBoard.do?num=${bbean.seq }"><span><i class="fa fa-pencil" aria-hidden="true"></i>수정</span></a>
                <a href="deleteBoard.jsp?num=${bbean.seq }"><span>삭제</span></a>
            </div>
		</c:if>
            <div class="btn_right_area">
                <a href="GetBoardCtrl.do"><span>목록</span></a>
                <a href="#"><span><i class="fa fa-sort-asc" aria-hidden="true"></i> TOP</span></a>
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