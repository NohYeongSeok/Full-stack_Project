<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="css/reset2.css">
    <link rel="stylesheet" href="css/signup_page.css">
    <link href="https://webfontworld.github.io/kopus/KoPubWorldDotum.css" rel="stylesheet">
    <script src="http://code.jquery.com/jquery-1.12.4.min.js"></script>
    <script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
</head>
<body>
    <header>
        <div>
            <h1>
                <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/2/23/Naver_Logotype.svg/2560px-Naver_Logotype.svg.png" alt="이미지">
            </h1>
        </div>
    </header>
    <main role="main">
        <form action="AddUserCtrl.do" method="post">
            <section class="idclass_sec">  
                <h2>아이디</h2>
                <div class="idclass">
                    <input type="text" name="id" id="id"/>
                    <span>@naver.com</span>
                </div>
            </section>
            <p id="chkNotice1"></p>
            <section class="pwclass_sec">  
                <h2>비밀번호</h2>
                <div class="pwclass">
                    <input type="password" name="pw" id="pw"/>
                </div>
            </section>
            <p id="chkNotice2"></p>
            <section class="pwclass_sec2">  
                <h2>비밀번호 재확인</h2>
                <div class="pwclass2">
                    <input type="password" name="pwchk" id="pwchk"/>
                </div>
            </section>
            <p id="chkNotice3"></p>
            <section class="nameclass_sec">  
                <h2>이름</h2>
                <div class="nameclass">
                    <input type="text" name="name" id="name"/>
                </div>
            </section>
            <p id="chkNotice4"></p>
            <section class="birthclass_sec">  
                <h2>생년월일</h2>
                <div class="birthclassflex">
                    <div class="birthclass">
                        <input type="text" name="birth1" placeholder="년(4자)">
                    </div>
                    <div class="birthclass">
                        <select name="birth2">
                            <option value="none">월</option>
                            <option value="01">1</option>
                            <option value="02">2</option>
                            <option value="03">3</option>
                            <option value="04">4</option>
                            <option value="05">5</option>
                            <option value="06">6</option>
                            <option value="07">7</option>
                            <option value="08">8</option>
                            <option value="09">9</option>
                            <option value="10">10</option>
                            <option value="11">11</option>
                            <option value="12">12</option>
                        </select>
                    </div>
                    <div class="birthclass">
                        <input type="text" name="birth3" placeholder="일">
                    </div>
                </div>
            </section>
            <section class="getderclass_sec">  
                <h2>성별</h2>
                <div class="genderclass">
                    <select name="gender">
                        <option value="성별">성별</option>
                        <option value="남자">남자</option>
                        <option value="여자">여자</option>
                        <option value="선택안함">선택안함</option>
                    </select>
                </div>
            </section>
            <section class="emailclass_sec">  
                <h2>이메일<span>(선택)</span></h2>
                <div class="emailclass">
                    <input type="email" name="email"/>
                </div>
            </section>
            <section class="telclass_sec">  
                <h2>휴대전화</h2>
                <div class="telclass">
                    <select name="tel2">
                        <option value="대한민국 +82">대한민국 +82</option>
                    </select>
                    <div class="tel_flex">
                        <input type="text" name="tel" placeholder="전화번호 입력">
                        <input type="button" value="인증번호 받기">
                    </div>
                    <input type="text" name="tel_chk" placeholder="인증번호 입력하세요.">
                </div>
            </section>
            <section>
                <div class="submitsec">
                    <input type="submit" value="가입하기">
                </div>
            </section>
        </form>
    </main>
    <footer>
        <p><a href="#">이용약관</a>  |  <a href="#"><span>개인정보처리방침</span></a>  |  <a href="#">책임의 한계와 법적고지</a>  |  <a href="#">회원정보 고객센터</a></p>
        <p><img src="https://upload.wikimedia.org/wikipedia/commons/thumb/2/23/Naver_Logotype.svg/2560px-Naver_Logotype.svg.png"> Copyright &copy; <span>NAVER Corp.</span>All Rights Reserved</span></p>
    </footer>
    <script>

    function doAction() {
    let id = document.getElementById('id');
    if (id.value.length == 0) {
        $("#chkNotice1").show();
        $('#chkNotice1').html('필수 정보입니다.');
        $('#chkNotice1').css('color', 'red');
        return false;
    }else{
        $('#chkNotice1').hide();
        return true;
        }   
    };

    function idtag() {
    let id = document.getElementById('id');
    if (id.value.length >= 5) {
        $("#chkNotice1").show();
        $('#chkNotice1').html('멋진 아이디네요!');
        $('#chkNotice1').css('color', '#03c75a');
        return false;
    }else{
        $('#chkNotice1').hide();
        return true;
        }   
    };

    function doAction2() {
    let pw = document.getElementById('pw');
    if (pw.value.length == 0) {
        $("#chkNotice2").show();
        $('#chkNotice2').html('필수 정보입니다.');
        $('#chkNotice2').css('color', 'red');
        return false;
    }else{
        $('#chkNotice2').hide();
        return true;
        }   
    };

    function doAction3() {
    let pwchk = document.getElementById('pwchk');
    if (pwchk.value.length == 0) {
        $("#chkNotice3").show();
        $('#chkNotice3').html('필수 정보입니다.');
        $('#chkNotice3').css('color', 'red');
        return false;
    }else{
        $('#chkNotice3').hide();
        return true;
        }   
    };


    function doAction4() {
    let name = document.getElementById('name');
    if (name.value.length == 0) {
        $("#chkNotice4").show();
        $('#chkNotice4').html('필수 정보입니다.');
        $('#chkNotice4').css('color', 'red');
        return false;
    }else{
        $('#chkNotice4').hide();
        return true;
        }   
    };


    $("#id").keyup(doAction,idtag);
    $("#id").mouseup(doAction);
    $("#pw").keyup(doAction2);
    $("#pw").mouseup(doAction2);
    $("#pwchk").keyup(doAction3);
    $("#pwchk").mouseup(doAction3);
    $("#name").keyup(doAction4);
    $("#name").mouseup(doAction4);
    
    
    </script>
</body>
</html>