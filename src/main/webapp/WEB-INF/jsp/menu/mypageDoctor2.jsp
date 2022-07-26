<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>






<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>E-healthcare</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="format-detection" content="telephone=no">
    <link rel="shortcut icon" href="/images/logo6.png" type="image/x-icon"/>

    <link rel="stylesheet" href="/css/base.css">
    <link rel="stylesheet" href="/css/common.css">
    <link rel="stylesheet" href="/css/content.css">
    <link rel="stylesheet" href="/css/main.css" />
</head>
<body>
<!-- wrap -->
<div id="wrap">
    <!-- Header -->
    <section id="header2" class="wrapper">

        <!-- Logo -->
        <div id="logo">
            <img src = "/images/logo6.png" style="float: center; display: inline; margin: 1em; width:4em; height:4em;">

            <h1><a href="index.html">E-HealthCare</a></h1>
            <p>An online consultation and medical subscription</p>
        </div>

        <!-- Nav -->
        <nav id="nav">
            <ul>
                <li class="current"><a href="/menu/mypageDoctor">마이페이지</a></li>
                <li><a href="/items">상담요청 목록</a></li>
                <li><a href="/auth/signin">Log Out</a></li>		<!-- 로그인 기능 구현 전이기 때문에 페이지를 바꾸는 것으로 대체함. -->
            </ul>
        </nav>
    </section>
    <!-- //header -->

    <!-- contTopBar -->


    <!-- content -->



    <main id="content" class="myPage">
        <div class="contHeadingWrap">
            <h2>환자 관리 / 개인정보 수정 </h2>
            <!-- rsvLayerWrap -->
            <section class="layerWrap rsvLayer layerRservation" id="rsvSchedule"> </section>
            <!-- rsvLayerWrap -->
        </div>
        <!-- row -->
        <div class="row col2 clearFix">
            <div class="item personal">
                <h3 class="title">회원정보수정</h3>
                <p class="text">
                    회원정보 수정을 원하시거나 비밀번호 변경을<br>
                    원하실 경우 아래의 버튼을 클릭해 주세요.
                </p>
                <div class="btnWrap">
                    <button type="button" class="btnType01" onClick="location.href='/mypage/info/change/changeInfo.do'">회원정보 수정</button>
                    <button type="button" class="btnType01" onClick="location.href='/mypage/info/change/changePassword.do'">비밀번호 변경</button>
                </div>
            </div>
            <!-- //item -->
            <!-- item -->
            <div class="item personal">
                <h3 class="title">회원탈퇴</h3>
                <p class="text">
                    회원 서비스를 이용하지 않으실 경우<br>
                    아래의 버튼을 클릭해 주세요.
                </p>
                <div class="btnWrap">
                    <a href="/mypage/info/withdrawal/step1.do" role="button" class="btnType01">회원탈퇴</a>
                </div>
            </div>
            <!-- //item -->
        </div>
        <!-- //row -->

</body>
</html>