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
    <link rel="stylesheet" href="/css/main.css" />
</head>
<body class="req_consultation is-preload">
<div id="page-wrapper">
    <!-- Header -->
    <section id="header" class="wrapper">

        <!-- Logo -->
        <div id="logo">
            <img src = "images/logo.png" style="float: center; display: inline; margin: 1em; width:4em; height:4em;">

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
        <div class="title">상담요청 목록</div>
        <div class="container">
            <table>
                <thead>
                <tr>
                    <th>이름</th>
                    <th>수락 상태</th>
                    <th>진료 과목</th>
                    <th>상담요청일</th>
                </tr>
                </thead>
                <tbody>
                <!------------------------------------------------------------------------------>
                <!-- 아래의 환자 정보를 DB에서 불러오면 array 같은데에 저장해서 반복하면 됌 -->
                <tr><!-- 첫번째 줄 -->
                    <td>홍길동</td>
                    <td>
                        <label class="switch">
                            <input type="checkbox">
                            <span class="slider round"></span>
                        </label>
                    </td>
                    <td>가정의학과</td>
                    <td>2022/07/24</td>
                </tr>
                <tr><!-- 두번째 줄 -->
                    <td>김이박</td>
                    <td>
                        <label class="switch">
                            <input type="checkbox">
                            <span class="slider round"></span>
                        </label>
                    </td>
                    <td>가정의학과</td>
                    <td>2022/07/24</td>
                </tr>
                <tr><!-- 세번째 줄 -->
                    <td>강하다</td>
                    <td>
                        <label class="switch">
                            <input type="checkbox">
                            <span class="slider round"></span>
                        </label>
                    </td>
                    <td>가정의학과</td>
                    <td>2022/07/24</td>
                </tr>
                <tr><!-- 네번째 줄 -->
                    <td>한겨울</td>
                    <td>
                        <label class="switch">
                            <input type="checkbox">
                            <span class="slider round"></span>
                        </label>
                    </td>
                    <td>가정의학과</td>
                    <td>2022/07/24</td>
                </tr>
                <!------------------------------------------------------------------------------>
                </tbody>
            </table>
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