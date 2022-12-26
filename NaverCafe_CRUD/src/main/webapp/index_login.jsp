<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" href="css/reset2.css">
    <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/font-applesdgothicneo@1.0/all.min.css">
    <script src="https://kit.fontawesome.com/c83a8b107a.js" crossorigin="anonymous"></script>
    <script src="http://code.jquery.com/jquery-1.12.4.min.js"></script>
    <script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
    <link rel="stylesheet" href="css/signin_page.css">
</head>
<body>
    <header>
        <h1>
            <a href="#">
                <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/2/23/Naver_Logotype.svg/2560px-Naver_Logotype.svg.png" alt="">
            </a>
        </h1>
    </header>
    <main role="main">
        <form action="LoginCtrl.do" method="post">
            <div class="flex_box1">
                <div class="idlogin_box">ID로그인</div>
                <div class="idlogin_box2">일회용 번호</div>
                <div class="idlogin_box3">QR코드</div>
            </div>
            <section class="signin_page_sec1">
                <div>
                    <div class="w402px inputliner">
                        <div class="inputflex btmmover">
                            <i class="fa fa-user-o" aria-hidden="true"></i>
                            <input type="text" name="id" placeholder="아이디" id="id">
                        </div>
                        <div class="inputflex topmover">
                            <i class="fa-solid fa-lock"></i>
                            <input type="password" name="pw" placeholder="비밀번호" id="pw">
                        </div>
                    </div>
                    <div class="cf w402px">
                        <div class="circlechk">
                            <label for="chk">
                                <input type="checkbox" id="chk">
                                <i class="circle"></i>
                                <span class="text">로그인상태 유지</span>
                            </label>
                        </div>
                        <div class="silderchk">
                            <p class="text">Ip보안</p>
                            <label class="switch">
                                <input type="checkbox" name="" id="">
                                <span class="slider2 round"></span>
                            </label>
                        </div>
                    </div>
                    <div class="w402px">
                        <input type="submit" value="로그인">
                    </div>
                </div>
            </section>
        </form>
        <section>
            <div class="search_acnt">
                <p><a href="#">비밀번호 찾기</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;</p>
                <p><a href="#">아이디 찾기</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;</p>
                <p><a href="addUser.jsp">회원 가입</a></p>
            </div>
        </section>
        <section class="slider_class">
            <div class="slider">
                <p class="banner_img">
                    <img src="https://ssl.pstatic.net/melona/libs/1378/1378592/e1e6befe0a67a71c0449_20221121172455538.jpg" alt="">
                </p>
                <p>
                    <img src="https://ssl.pstatic.net/melona/libs/1378/1378592/40e47c4adbfca3eb1023_20221201180841544.jpg" alt="">
                </p>
                <p>
                    <img src="https://ssl.pstatic.net/melona/libs/1378/1378592/101d04ff86ab8081f73b_20221121171902112.jpg" alt="">
                </p>
                <p>
                    <img src="https://ssl.pstatic.net/melona/libs/1378/1378592/0613c6319c05fae317d5_20220928112203844_1.jpg" alt="">
                </p>
                <p>
                    <img src="https://ssl.pstatic.net/tveta/libs/1378/1378592/759c010dfa99cbb47a7e_20220405144404082.jpg" alt="">
                </p>
                <p>
                    <img src="https://ssl.pstatic.net/melona/libs/1378/1378592/9baf2c4b14aec68ea800_20220902161708847.jpg" alt="">
                </p>
                <p>
                    <img src="https://ssl.pstatic.net/melona/libs/1378/1378592/797a5348e12dc663fc07_20221129160940065.jpg" alt="">
                </p>
            </div>
        </section>
    </main>
    <footer>
        <p><a href="#">이용약관</a>  |  <a href="#">개인정보처리방침</a>  |  <a href="#">책임의 한계와 법적고지</a>  |  <a href="#">회원정보 고객센터</a></p>
        <p><img src="https://upload.wikimedia.org/wikipedia/commons/thumb/2/23/Naver_Logotype.svg/2560px-Naver_Logotype.svg.png"> Copyright &copy; <span>NAVER Corp.</span>All Rights Reserved</span></p>
    </footer>
    <script>
        $(document).ready(function(){
          $('.slider').bxSlider({
            mode: 'horizontal',// 가로 방향 수평 슬라이드
            speed: 0,
            pager: false,      
            moveSlides: 1,     
            slideWidth: 460,   
            slideheight: 145, 
            minSlides: 1,      
            maxSlides: 1,      
            slideMargin: 5,    
            auto: false,        
            autoHover: false,   
            controls: false,    
            randomStart:true
          }
            
          );
          
        });

        $("#id").focus(function(){
            $(this).parent().css("border-color","#03c75a")
        });
        $("#id").blur(function(){
            $(this).parent().css("border-color","#c6c6c6")
        });
        $("#pw").focus(function(){
            $(this).parent().css("border-color","#03c75a")
        });
        $("#pw").blur(function(){
            $(this).parent().css("border-color","#c6c6c6")
        });
      </script>
</body>
</html>