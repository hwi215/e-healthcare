<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<!--
Escape Velocity by HTML5 UP
html5up.net | @ajlkn
Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
Edited by Ga-eun Kim
Home
-->
<html>
<head>
    <title>E-HealthCare Home</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
    <link rel="stylesheet" href="../static/css/main.css" />
</head>
<body class="homepage is-preload">
<div id="page-wrapper">
    <!-- Header -->
    <section id="header" class="wrapper">

        <!-- Logo -->
        <div id="logo">
            <img src = "../static/images/logo.png" style="float: center; display: inline; margin: 1em; width:4em; height:4em;">

            <h1><a href="main.html">E-HealthCare</a></h1>
            <p>An online consultation and medical subscription</p>
        </div>

        <!-- Nav -->
        <nav id="nav">
            <ul>
                <li class="current"><a href="main.html">Home</a></li>
                <li><a href="req_consultation.html">상담요청 목록</a></li>
                <li><a href="patients.html">환자 관리</a></li>
                <li><a href="main.html">Log Out</a></li>		<!-- 로그인 기능 구현 전이기 때문에 페이지를 바꾸는 것으로 대체함. -->
            </ul>
        </nav>
    </section>

    <!-- Main Home -->
    <section id="intro" class="wrapper style2">
        <div class="title">Introduction</div>
        <div class="container">
            <p class="style1">E-HealthCare는 의사의 도움을 필요로 하는</p>
            <p class="style1">다양한 환자들에게 원격 진료 서비스를 제공합니다.</p>
        </div>
    </section>

    <!-- Footer -->
    <section id="footer" class="wrapper">
        <div class="title">Contact</div>
        <div class="container">
            <div class="row">
                <!-- Contact -->
                <section class="feature-list small">
                    <div class="row">
                        <div class="col-6 col-12-small">
                            <section>
                                <h3 class="icon solid fa-envelope">Email</h3>
                                <p>
                                    <a href="#">swe_team4@cau</a>
                                </p>
                            </section>
                        </div>
                        <div class="col-6 col-12-small">
                            <section>
                                <h3 class="icon solid fa-phone">Phone</h3>
                                <p>
                                    (000) 000-0000
                                </p>
                            </section>
                        </div>
                    </div>
                </section>
            </div>
            <div id="copyright">
                <ul>
                    <li>&copy; 2021 중앙대학교 소프트웨어공학 03분반 team4.</li><li>Design: <a href="http://html5up.net">HTML5 UP 참고</a></li>
                </ul>
            </div>
        </div>
    </section>

</div>

<!-- Scripts -->
<script src="assets/js/jquery.min.js"></script>
<script src="assets/js/jquery.dropotron.min.js"></script>
<script src="assets/js/browser.min.js"></script>
<script src="assets/js/breakpoints.min.js"></script>
<script src="assets/js/util.js"></script>
<script src="assets/js/main.js"></script>

</body>
</html>