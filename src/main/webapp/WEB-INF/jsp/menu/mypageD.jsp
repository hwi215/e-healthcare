<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<!--
Escape Velocity by HTML5 UP
html5up.net | @ajlkn
Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)

Edited by Ga-eun Kim

상담요청 목록 페이지
-->
<html>
<head>
    <title>E-HealthCare 상담요청 목록</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />

    <link rel="stylesheet" href="/css/main.css">
    <link rel="stylesheet" href="/css/base.css">
    <link rel="stylesheet" href="/css/common.css">
    <link rel="stylesheet" href="/css/content.css">
</head>
<body class="req_consultation is-preload">
<div id="page-wrapper">
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

    <!-- Main -->
    <section id="highlights" class="wrapper style2">
        <div class="title">마이페이지</div>
        <div class="container">
            <div class="item personal">
                <div class="btnWrap">
                    <button style="float: center;" type="button" class="btnType01" onClick="location.href='/mypage/info/change/changeInfo.do'">회원정보 수정</button>
                    <button type="button" class="btnType01" onClick="location.href='/mypage/info/change/changePassword.do'">비밀번호 변경</button>
                    <a href="/mypage/info/withdrawal/step1.do" role="button" class="btnType01">회원탈퇴</a>
                </div>
            </div>
    </section>

    <%@ include file="../layout/footer2.jsp"%>

    <!-- Scripts -->
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/js/jquery.dropotron.min.js"></script>
    <script src="assets/js/browser.min.js"></script>
    <script src="assets/js/breakpoints.min.js"></script>
    <script src="assets/js/util.js"></script>
    <script src="assets/js/main.js"></script>