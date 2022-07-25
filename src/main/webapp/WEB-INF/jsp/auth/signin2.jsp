<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<%@ include file="../layout/header2.jsp"%>

<body>
    <main id="content" class="loginContent bodyBg">
        <div class="contHeadingWrap hideEl">
            <h2>로그인</h2>
        </div>
        <div class="logBoxWrap clearFix">

            <div class="logBox">
                <img src = "/images/nologo.png" width="120", height="120">

                <!-- Logo -->
                <fieldset>
                    <img src = "/images/logo6.png" width="120", height="120">
                </fieldset>
                <p class="colorPoint02"><br>E-healthcar는 시공간 제약 없이 <br>사용자에게 맞춤형 진료 서비스를 제공합니다.<br></p>

                <p class="colorPoint02"><br>  </p>

                <div class="telBox">
                    <p><span>대표전화</span></p>
                    <p><b class="colorPoint">1234-5678</b></p>
                    <!-- <p>예약센터 <b class="colorPoint">1588-5700</b></p>
                    <p>대표전화 <b class="colorPoint">02-2072-2114</b></p> -->
                </div>
                </span>

            </div>

            <div class="logBox">
                <h3 class="regularTxt b">로그인</h3>
                <p class="colorPoint02">E-healthcar 홈페이지 회원 서비스는<br>로그인 후 이용하실 수 있습니다.</p>

                <form id="user" action="/auth/signin" method="POST">
                    <input id="retUrl" name="retUrl" type="hidden" value=""/>
                    <fieldset>
                        <legend>아이디, 비밀번호 입력</legend>
                        <input id="username" name="username" placeholder="아이디" class="inputText" type="text" value=""/>
                        <input id="password" name="psssword" onkeydown="check();" placeholder="비밀번호" class="inputText" type="password" value=""/>
                        <button id="loginBtn" class="btnType03 btnBig">로그인</button>
                    </fieldset>
                </form>


                <a href="/auth/findId" role="button" class="txtBtn">아이디/비밀번호찾기</a><span class="b"><a href="signupStep1" role="button" class="txtBtn">회원가입</a></span>
                <a href="#" class="btnNaver btnBig" role="button"><b class="b">네이버 아이디로 로그인</b></a>

            </div>
        </div>
    </main>
</body>

<%@ include file="../layout/footer2.jsp"%>