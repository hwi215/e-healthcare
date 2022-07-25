<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<%@ include file="../layout/header2.jsp"%>

<body>
  <main id="content" class="memJoinContent">
    <div class="contHeadingWrap">
      <h2>회원가입</h2>
    </div>
    <ul class="stepWrap clearFix">
      <li><b>STEP 01</b>회원유형</li>
      <li><b>STEP 02</b>약관동의/본인인증</li>
      <li><b>STEP 03</b>회원정보</li>
      <li class="current"><b>STEP 04</b>가입완료</li>
    </ul>
    <div class="completeJoin">
      <strong>가입이 완료되었습니다.</strong>
      <p>E-healthcare 홈페이지에 가입해 주셔서 감사합니다.<br>가입하신 아이디와 비밀번호로 로그인 하시면, 진료예약 및 예약 조회 서비스를 이용할 수 있습니다. </p>
      <form id="login__input" action="/auth/signin" method="POST">
        <fieldset>
          <legend>로그인</legend>
          <input id="id" name="id" title="아이디" placeholder="아이디" class="inputText" type="text" value=""/>
          <input id="pass" name="pass" title="비밀번호" placeholder="비밀번호" class="inputText" type="password" value=""/>
          <div class="btnWrap">
            <button id="loginBtn" class="btnType03 btnBig">로그인</button>
          </div>
        </fieldset>
      </form>
      <a href="/main" class="btnType01 btnBig" role="button">처음화면가기</a>

    </div>
  </main>

</body>

<%@ include file="../layout/footer2.jsp"%>