<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
   String content = request.getParameter("content");
   String main = request.getParameter("main");
   // 처음 로딩시 content값이 없으므로 null 처리
   
   if(content == null){
      content = "./include/Userinfo.jsp";
   }           
    if(main == null){
      main = "./include/Indexmain.jsp";
   }
%>
</head>
<body>
    <div id="wrap">
        <header class="w1080">
            <div class="cf">
                <img src="https://ssl.pstatic.net/static/cafe/icon_naver_190423.png" width="52" height="10" alt="NAVER">
<%
   if(name == null){ // name 세션값이 없으면, 로그인 표시
%>
                <ul>
                    <li><a href="#">카페홈</a></li>
                    <li><a href="#">이웃</a></li>
                    <li><a href="#">가입카페</a> <i class="fa fa-sort-desc" aria-hidden="true"></i></li>
                    <li><a href="#">새글</a></li>
                    <li><a href="#">내소식</a></li>
                    <li><a href="#">채팅</a></li>
                    <li class="header_f1">로그인<i class="fa fa-sort-desc" aria-hidden="true"></i></li>
                    <div class="header_login_view">
                       <div class="header_login_view1">
                           <p><img src="./images/header/header_top_profile.gif" alt=""></p>
                           <div>
                              <div>
                                 <h2>양민우님</h2>
                                 <button>로그아웃</button>
                              </div>
                              <p>
                                 yhk8288@naver.com
                              </p>
                              <div>
                                 <p>네이버ID</p>
                                 <p class="header_hash">보안설정</p>
                                 <p>내인증서</p>
                              </div>
                              <div>
                                 8,872원
                              </div>
                           </div>
                       </div>
                       <div class="header_login_view2">
                          <p>내 블로그</p>
                          <p>가입한카페</p>
                          <p>N Pay</p>
                       </div>
                    </div>
                    <li><img src="./images/header/header_menu.png" alt=""></img></li>
                </ul>
<%
   }else{ // 세션값이 있으면, 로그아웃 표시
%>
                <ul>
                    <li><a href="#">카페홈</a></li>
                    <li><a href="#">이웃</a></li>
                    <li><a href="#">가입카페</a> <i class="fa fa-sort-desc" aria-hidden="true"></i></li>
                    <li><a href="#">새글</a></li>
                    <li><a href="#">내소식</a></li>
                    <li><a href="#">채팅</a></li>
                    <li><a href="#">아이디</a> <i class="fa fa-sort-desc" aria-hidden="true"></i></li>
                </ul>
<%
   }
%>
            </div>
            <div class="header_banner">
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
                    <button class="btn btn-primary" onclick="location.href='index.jsp?content=/include/Userinfo.jsp'">
                       카페정보
                    </button>
                    <button class="btn btn-primary" onclick="location.href='index.jsp?content=/include/Userinfo2.jsp'">
                       회원정보
                    </button>
                </div>
                <hr>
<!-- sadfadsf -->                
                <jsp:include page="<%=content %>"/>
                  
                <hr>
                <button onclick="" class="nav_join" type="button">카페 가입하기</button>
                <button onclick="" class="nav_chat" type="button">카페 채팅</button>
                <div class="nav_list">
                    <ul>
                        <li><i class="fa fa-file-text-o" aria-hidden="true"></i>전체글보기</li>
                        <li><span>4</spa></li>
                    </ul>
                    <hr>
                    <ul>
                        <li><a href="#"><i class="fa fa-file-text-o" aria-hidden="true"></i><strong>공지사항</strong></a></li>
                        <li><a href="#"><i class="fa fa-file-text-o" aria-hidden="true"></i>자유게시판</a></li>
                        <li><a href="#"><i class="fa fa-file-text-o" aria-hidden="true"></i>질문게시판</a></li>
                        <li><a href="#"><i class="fa fa-file-text-o" aria-hidden="true"></i>신고게시판</a></li>
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
                <a href="#"><span>목록</span></a>
            </div>
        </div>
        <div class="boardarticle_content">
            <div class="article_header">
                <div class="article_header_1">
                    <div class="article_title">
                        <a href="#">신고게시판<i class="fa fa-angle-right " aria-hidden="true"></i></a>
                    </div>
                    <div class="article_text">
                        <h3>신고합니다.</h3>
                    </div>
                </div>
                <div class="writerinfo cf">
                    <a href="#"><img src="https://ssl.pstatic.net/static/cafe/cafe_pc/default/cafe_profile_77.png?type=c77_77" alt="프로필 사진" width="36" height="36"></a>
                    <div class="profile_area ">
                        <div class="profile_info">
                            <button class="profile_nickname">id</button>
                            <a href="#">1:1채팅</a>
                        </div>
                        <div class="article_info">
                            <span class="article_info_date">date</span>
                            <span class="article_info_cnt">cnt</span>
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
                        content
                    </p>
                </div>
                <div class="article_writer">
                    <div class="article_writer_profile">
                        <a href="#"><img src="https://ssl.pstatic.net/static/cafe/cafe_pc/default/cafe_profile_77.png?type=c77_77" alt="프로필 사진" width="36" height="36"></a>
                        <span><a href="#"><strong>id</strong>님의 게시글 더보기<i class="fa fa-angle-right " aria-hidden="true"></i></a>
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
                        <p>id</p>
                        <textarea  placeholder="댓글을 남겨보세요." rows="1" class="comment_inbox_text" style="overflow: hidden; overflow-wrap: break-word; height: 17px;"></textarea>
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
            <div class="btn_left_area">
                <a href="#"><span><i class="fa fa-pencil" aria-hidden="true"></i>글쓰기</span></a>
                <a href="#"><span>답글</span></a>
            </div>
            <div class="btn_right_area">
                <a href="#"><span>목록</span></a>
                <a href="#"><span><i class="fa fa-sort-asc" aria-hidden="true"></i> TOP</span></a>
            </div>
        </div>
        <div>
            <div class="article_post_wrap">
                <div class="post_content">
                    <div class="post_content_list">
                        <strong>파워링크 광고입니다.</strong>
                        <a href="#">광고안내 <i class="fa fa-angle-right " aria-hidden="true"></i></a>
                    </div>
                    <div>
                        <ul class="post_ad cf">
                            <li class="post_ad_list cf">
                                <img class="post_ad_img" alt="#" src="https://searchad-phinf.pstatic.net/MjAxODAyMTNfMTc1/MDAxNTE4NDk5NjQ0ODE5.m6syigk_Aqr2Sjezfcu_nvtGgtWyJKAsiDQ_tRnUYbIg.0cyJuGsrTR75iTjLXR4FfNaxXdU4udy4nmKvIdC_xWkg.JPEG/1314613-962df460-a528-4a28-9d7f-70dba0fb53f8.jpg" width="60" height="60">
                                <div class="post_title_area">
                                    <a href="#">
                                        <strong><b>SBS아카데미컴퓨터학원강남점</b></strong>
                                    </a>
                                    <a href="#" class="post_site">https://gangnam.sbsart.com</a> <br>
                                    <p>포트폴리오, 최대 40%할인, 국비전액무료, 대면&비대면 <br></p> 
                                    <p>자율, 강남역 1분</p>
                                </div>
                            </li>
                            <li class="post_ad_list cf">
                                <img class="post_ad_img" alt="#" src="https://searchad-phinf.pstatic.net/MjAyMjA3MjVfMTMw/MDAxNjU4NzEzODQ1NDI0.72XYHi61EpzpTyMVLDYlVkEu3vUMJfFdn1FoEOA-nrog.XWzVylHk7nTFyhOm9ZG3d5NgQrD1k9mcWioBlOKIfOMg.JPEG/200445-729aedb8-c032-4d6e-bbe7-39f93556799b.jpg" width="60" height="60">
                                <div class="post_title_area">
                                    <a href="#">
                                        <strong><b>디자인 취업준비 끌디자인학원</b>
                                        </strong>
                                    </a>
                                    <a href="#" class="post_site">http://www.ccle.co.kr</a> <br>
                                    <p>포트폴리오 실무과정 취업컨설팅 상담신청<br></p> 
                                    <p>끌디자인은 취업포트폴리오 전문 학원입니다. 시각, 광고편집,웹UI,일대일 맞춤지도</p>
                                </div>
                            </li>
                            <li class="post_ad_list cf">
                                <img class="post_ad_img" alt="#" src="https://searchad-phinf.pstatic.net/MjAyMjA3MDZfMTYw/MDAxNjU3MDkzMzY2Nzg4.Vv0tMLkaw4VR8zaN2ZESRe7oWRH5GrJj8fz1kNNxY3gg.oMe3dvVWYUu_6lh3uAY4FQnHnR6Ryj1uqq9dLvVz43wg.PNG/706870-1f6a0f21-9204-4118-aa6c-7c10a485dacf.png" width="60" height="60">
                                <div class="post_title_area cf">
                                    <a href="#">
                                        <strong><b>클래스101 그래픽디자인</b>
                                        </strong>
                                    </a>
                                    <a href="#" class="post_site">https://www.class101.net/</a>
                                    <img class="naver_login_img" alt="네이버 아이디로 로그인" height="13" src="https://ssl.pstatic.net/static/blog/ico_nidlogin2.png" width="39"> 
                                    <p>실무디자인 디자인툴활용 굿즈만들기 건축디자인<br></p> 
                                    <p>작품에 다채로움을 더해 독창적인 나만의 그래픽! 지금 바로 수강하기. 포트폴리오</p>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <h1>전체글</h1>
        <div class="boardlist_list">
            <table>
                <tr>
                    <td class="boardlist_td">
                        <div class="boardlist_dot">
                            <a href="#">신고합니다</a>
                        </div>
                    </td>
                    <td class="boardlist_id"><a href="#">id</a></td>
                    <td class="boardlist_date">date</td>
                    <td class="boardlist_cnt">cnt</td>
                </tr>
                <tr>
                    <td class="boardlist_td">
                        <div class="boardlist_dot">
                            <a href="#">질문있어요</a>
                        </div>
                    </td>
                    <td class="boardlist_id"><a href="#">id</a></td>
                    <td class="boardlist_date">date</td>
                    <td class="boardlist_cnt">cnt</td>
                </tr>
                <tr>
                    <td class="boardlist_td">
                        <div class="boardlist_dot">
                            <a href="#">자유게시판</a>
                            <a href="#" style="color:red">[댓글]</a>
                        </div>
                    </td>
                    <td class="boardlist_id"><a href="#">id</a></td>
                    <td class="boardlist_date">date</td>
                    <td class="boardlist_cnt">cnt</td>
                </tr>
                <tr>
                    <td class="boardlist_td">
                        <div class="boardlist_dot">
                            <a href="#">   
                                CRUD Portfolio 카페를 시작합니다.</a>
                        </div>
                    </td>
                    <td class="boardlist_id"><a href="#">id</a></td>
                    <td class="boardlist_date">date</td>
                    <td class="boardlist_cnt">cnt</td>
                </tr>
            </table>
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