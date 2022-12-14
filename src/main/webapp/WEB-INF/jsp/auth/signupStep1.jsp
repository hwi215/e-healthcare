<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<%@ include file="../layout/header2.jsp"%>


<main id="content" class="memJoinContent">
    <div class="contHeadingWrap">
        <h2>회원가입</h2>
    </div>
    <ul class="stepWrap clearFix">
        <li class="current"><b>STEP 01</b>회원유형</li>
        <li><b>STEP 02</b>약관동의/본인인증</li>
        <li><b>STEP 03</b>회원정보</li>
        <li><b>STEP 04</b>가입완료</li>
    </ul>
    <div class="confirmWrap b">
        <p>회원가입 유형을 선택해 주시기 바랍니다.</p>
        <p>회원 유형에 따라 이용 가능한 서비스가 다를 수 있습니다.</p>
    </div>
    <div class="memTypeWrap clearFix">
        <div class="memType01" style="justify-content: center;">
            <h3>진료회원 ( = 진료받는사람 ), 전문의료진( = 의사면허 소지자 )</h3>
            <div class="clearFix">
                <a href="/auth/signupStep2"><span class="mAdult b" style="justify-content: center;"></span>진료회원</a>
                <a href="/auth/signupStep2Doctor"><span class="mStaffer b" style="justify-content: center;"></span>전문의료진</a>

            </div>
            <p><span class="colorPoint">환자</span> <span style="color:#ba2751">본인</span><span class="colorPoint">의 정보로</span> <span style="color:#ba2751">회원가입</span>을 하셔야 합니다. <u>(타인으로 예약 변경 불가)</u><br /><span class="colorPoint">홈페이지 진료회원은 진료예약관리 및 다양한 환자 서비스를 이용할 수 있습니다.</span>
        </div>
    </div>
</main>

<%@ include file="../layout/footer2.jsp"%>