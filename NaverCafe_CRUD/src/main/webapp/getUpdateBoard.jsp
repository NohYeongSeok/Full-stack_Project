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
%>   
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="author" content="nyoungseok">
    <meta name="description" content="Portfolio, NaverCafe Template, CRUD">
    <title>카페 글쓰기, CRUD Portfolio</title>
    <link rel="shortcut icon" href="./image/favicon.ico">
    <link rel="apple-touch-icon=precomposed" href="./image/favicon.ico">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="./css/reset.css">
    <link rel="stylesheet" href="./css/notosans_kr_CDN.css">
    <!-- 페이지 CSS -->
    <link rel="stylesheet" href="./css/NC_Board_Update.css">
    <link rel="stylesheet" href="css/header.css">
    <!-- JS 플러그인 파일 -->
    <script src="./js/jquery-1.12.4.min.js"></script>
    <script src="./js/jquery-3.3.1.min.js"></script>
    <script src="./js/prefixfree.min.js"></script>
    <!-- 페이지 JS -->
    <script src="./js/NC_Board_Update_Form.js"></script>
    <script src="js/header.js"></script>
</head>
<body>
	<header class="w1080 update_header">
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

	</header>
    <div id="boardUpdate_wrap">
        <!-- Header -->
        <div class="BU_header w1080_bu">
            <ul class="BU_header_list">
                <li><a href="GetBoardCtrl.do">전체글보기</a></li>
                <li><a href="#">이미지모아보기</a></li>
                <li><a href="#">카페태그보기</a></li>
            </ul>
            <div class="BU_header_title cf">
                <h2>카페 글쓰기</h2>
                <div class="BU_header_title_submitBox">
                    <div class="submitBox_temporary">
                        <button>임시등록 <span>|</span> 0</button>
                    </div>
                    <div class="submitBox_submit">
                        <button type="submit" form="BU_form">수정</button>
                    </div>
                </div>
            </div>
        </div>
        <!-- /Header -->
        <!-- Main -->
        <div class="BU_main_realWrap w1080_bu cf">
            <div class="BU_main_wrap">
                <main role="main">
                    <form action="UpdateBoardCtrl.do" method="post" class="BU_form" id="BU_form">
                    <input type="hidden" name="num" value="${bbean.seq }">
                        <ul class="BU_main_tag">
                            <li>
                                <input type="radio" name="tag" id="tag0" value="공지사항">&nbsp;&nbsp;
                                <label for="tag0">공지사항</label>
                            </li>
                            <li>
                                <input type="radio" name="tag" id="tag1" value="자유게시판" checked>&nbsp;&nbsp;
                                <label for="tag1">자유게시판</label>
                            </li>
                            <li>
                                <input type="radio" name="tag" id="tag2" value="질문게시판">&nbsp;&nbsp;
                                <label for="tag2">질문게시판</label>
                            </li>
                            <li>
                                <input type="radio" name="tag" id="tag3" value="신고게시판">&nbsp;&nbsp;
                                <label for="tag3">신고게시판</label>
                            </li>
                        </ul>
                        <div class="BU_main_title">
                            <input type="text" name="title" placeholder="제목을 입력해 주세요." value="${bbean.title }">
                        </div>
                        <div class="BU_main_icons">
                            <ul>
                                <li>                                
                                    <div class="BU_content_icon BU_picture"></div>
                                    <span>사진</span>
                                </li>
                                <li>                                
                                    <div class="BU_content_icon BU_SNS_picture"></div>
                                    <span>SNS 사진</span>
                                </li>
                                <li>                                
                                    <div class="BU_content_icon BU_video"></div>
                                    <span>동영상</span>
                                </li>
                                <li>                                
                                    <div class="BU_content_icon BU_Sticker"></div>
                                    <span>스티커</span>
                                </li>
                                <li>                                
                                    <div class="BU_content_icon BU_quote"></div>
                                    <span>인용구</span>
                                </li>
                                <li>                                
                                    <div class="BU_content_icon BU_line"></div>
                                    <span>구분선</span>
                                </li>
                                <li>                                
                                    <div class="BU_content_icon BU_file"></div>
                                    <span>파일</span>
                                </li>
                                <li>                                
                                    <div class="BU_content_icon BU_link"></div>
                                    <span>링크</span>
                                </li>
                                <li>                                
                                    <div class="BU_content_icon BU_site"></div>
                                    <span>장소</span>
                                </li>
                                <li>                                
                                    <div class="BU_content_icon BU_word"></div>
                                    <span>글감</span>
                                </li>
                                <li>                                
                                    <div class="BU_content_icon BU_vote"></div>
                                    <span>투표</span>
                                </li>
                                <li>                                
                                    <div class="BU_content_icon BU_schedule"></div>
                                    <span>일정</span>
                                </li>
                                <li>                                
                                    <div class="BU_content_icon BU_table"></div>
                                    <span>표</span>
                                </li>
                                <li>                                
                                    <div class="BU_content_icon BU_code"></div>
                                    <span>소스코드</span>
                                </li>
                                <li>                                
                                    <div class="BU_content_icon BU_formula"></div>
                                    <span>수식</span>
                                </li>
                            </ul>
                        </div>
                        <div class="BU_main_content_toolbar">
                            <ul class="BU_main_content_toolbar_fst">
                                <li>본문</li>
                                <li>기본서체</li>
                                <li>15</li>
                            </ul>
                            <ul class="BU_main_content_toolbar_snd">
                                <li>
                                    <div class="BU_toolbar_icon BU_toolbar_bold"></div>
                                <li>
                                    <div class="BU_toolbar_icon BU_toolbar_italic"></div>
                                </li>
                                <li>
                                    <div class="BU_toolbar_icon BU_toolbar_underline"></div>
                                </li>
                                <li>
                                    <div class="BU_toolbar_icon BU_toolbar_cancelLine"></div>
                                </li>
                            </ul>
                            <ul class="BU_main_content_toolbar_thd">
                                <li>
                                    <div class="BU_toolbar_icon BU_toolbar_justify"></div>
                                </li>
                                <li>
                                    <div class="BU_toolbar_icon BU_toolbar_lineHeight"></div>
                                </li>
                            </ul>
                            <ul class="BU_main_content_toolbar_fth">
                                <li>
                                    <div class="BU_toolbar_icon BU_toolbar_specialLetter"></div>
                                </li>
                                <li>
                                    <div class="BU_toolbar_icon BU_toolbar_link"></div>
                                </li>
                            </ul>
                        </div>
                        <article class="BU_main_content">
                            <textarea name="content" id="content" placeholder="내용을 입력하세요.">${bbean.content }</textarea>
                        </article>
                    </form>
                </main>
            </div>
            <article class="BU_aside_wrap">
                <div class="BU_aside_fstBox">
                    <input type="checkbox" id="BU_aside_noticeCheck">&nbsp;&nbsp;
                    <label for="BU_aside_noticeCheck">공지로 등록</label>
                </div>
                <div class="BU_aside_sndBox">
                    <h5>공개 설정</h5>
                    <p>멤버공개</p>
                    <p>검색 · 네이버 서비스 공개</p>
                </div>
                <div class="BU_aside_thdBox">
                    <ul>
                        <li>
                            <input type="checkbox" id="BU_aside_reply" checked>&nbsp;&nbsp;
                            <label for="BU_aside_reply">댓글 허용</label>
                        </li>
                        <li>
                            <input type="checkbox" id="BU_aside_share" checked>&nbsp;&nbsp;
                            <label for="BU_aside_share">블로그 · 카페 공유 허용</label>
                            <button type="button" class="BU_questionMark"></button>
                        </li>
                        <li>
                            <input type="checkbox" id="BU_aside_shareOut" checked>&nbsp;&nbsp;
                            <label for="BU_aside_shareOut">외부 공유 허용</label>
                            <button type="button" class="BU_questionMark"></button>
                        </li>
                        <li>
                            <input type="checkbox" id="BU_aside_copy">&nbsp;&nbsp;
                            <label for="BU_aside_copy">복사 · 저장 허용</label>
                            <button type="button" class="BU_questionMark"></button>
                        </li>
                        <li>
                            <input type="checkbox" id="BU_aside_auto">&nbsp;&nbsp;
                            <label for="BU_aside_auto">자동출처 사용</label>
                            <button type="button" class="BU_questionMark"></button>
                        </li>
                        <li>
                            <input type="checkbox" id="BU_aside_CCL">&nbsp;&nbsp;
                            <label for="BU_aside_CCL">CCL 사용</label>
                            <button type="button" class="BU_questionMark"></button>
                        </li>
                    </ul>                    
                </div>
            </article>
        </div>
        <!-- /Main -->
    </div>
</body>
</html>