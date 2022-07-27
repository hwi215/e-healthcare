<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
    <title>E-HealthCare 상담요청 목록</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
    <link rel="stylesheet" href="/css/main.css" />

    <link rel="stylesheet" href="/css/base.css">

    <link rel="stylesheet" href="/css/content.css">


</head>
<body class="req_consultation is-preload">
<div id="page-wrapper">

    <section id="header" class="wrapper">

        <!-- Logo -->
        <div id="logo">
            <img src = "images/logo6.png" style="float: center; display: inline; margin: 1em; width:4em; height:4em;">

            <h1><a href="/menu/mainpage">E-HealthCare</a></h1>
            <p>An online consultation and medical subscription</p>
        </div>
        <!-- Nav -->
        <nav id="nav">
            <ul>
                <li class="current"><a href="/menu/mypageDoctor">마이페이지</a></li>
                <li><a href="/items">상담요청 목록</a></li>
                <li><a href="/room">상담 시작하기</a></li>
                <li><a href="/auth/signin">Log Out</a></li>		<!-- 로그인 기능 구현 전이기 때문에 페이지를 바꾸는 것으로 대체함. -->
            </ul>
        </nav>
    </section>


    <section id="highlights" class="wrapper style2">
        <div class="title">상담요청 목록</div>
        <div class="container">
        <form role="form" method="post" action="/items/new">
            <table>
                <tr><th>이름</th><th>진료과목</th><th>증상요약</th><th>상담요청일</th><th>상담수락</th><th>상담상태</th><th>처방전</th></tr>

                <c:forEach items="${item}" var = "item">
                    <tr>
                        <td><c:out value="${item.name}" /></td>
                        <td><c:out value="${item.quantity}" /></td>
                        <td><c:out value="${item.note}" /></td>
                        <td><c:out value="${item.createDate}" /></td>
                        <td>
                            <label class="switch">
                                <input type="checkbox">
                                <span class="slider round"></span>
                            </label>
                        </td>
                        <td>
                            <select name="state">
                                <option value="00">미완료</option>
                                <option value="01" >진행중</option>
                                <option value="02">완료</option>
                            </select>
                        </td>
                        <td><button type="button" onclick=location.href="/menu/reservation">작성</button></td>
                    </tr>
                </c:forEach>
            </table>
        </form>
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