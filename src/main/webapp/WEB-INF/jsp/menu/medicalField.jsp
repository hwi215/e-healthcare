<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">

<head>
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=yes">

    <title>E-healthcare</title>
    <link rel="shortcut icon" href="/images/logo6.png">
    <link rel="canonical" href="" />
    <link rel="apple-touch-icon-precomposed" href="" sizes="" />
    <meta name="description" content="">
    <meta name="author" content="aiif">

    <script type="text/javascript" src="/js/webfont.min.js"></script>
    <link rel="stylesheet" href="/css/base.css">
    <link rel="stylesheet" href="/css/common.css">
    <link rel="stylesheet" href="/css/content.css">
    <link rel="stylesheet" href="/css/medicalfield.css">
    <script type="text/javascript" src="/js/jquery.min.js"></script>
    <script type="text/javascript" src="/js/jquery-ui.min.js"></script>
    <script type="text/javascript" src="/js/snuh-components-v1.0.0.js"></script>

    <script
            src="https://code.jquery.com/jquery-3.5.1.min.js"
            integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0="
            crossorigin="anonymous"></script>

    <link
            href="https://fonts.googleapis.com/css2?family=IBM+Plex+Mono:wght@400;500;600;700&family=Noto+Sans+KR:wght@400;500;700&display=swap"
            rel="stylesheet">

    <link rel="stylesheet" href="../static/css/medicalfield.css">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;800&display=swap" rel="stylesheet">


</head>

<body>
<!-- wrap -->
<div id="wrap">
    <a href="#content" class="skipToContent">본문으로 바로가기</a>
    <!-- header -->

    <script type="text/javascript">

        function outcomesFnc(e) {

            var now = new Date();
            var dday = new Date("2021", "11", "17","11","59","59");

            if(now != dday) {
                alert("콘텐츠 준비중입니다.");
                e.preventDefault();
                return false;
            }else {
                window.open('https://dept.snuh.org/dept/OC/index.do');
            }

        }
    </script>
    <header id="header" class="b">
        <!-- innerWrap -->
        <div class="innerWrap">
            <h1><a href="/main.do" class="hideTxt">서울대학교병원</a></h1>
            <div class="topLeftWrap">
                <a href="https://dept.snuh.org/dept/OC/index.do" class="hideTxt" id="outcomes" >Outcomes Book</a>
            </div>

            <!-- topMenuWrap -->
            <div class="topMenuWrap">

                <!-- topMenu -->
                <ul class="topMenu">

                    <li><a href="file:///Users/gimhwigyeong/Desktop/study/Project/ehealthcare/src/main/resources/static/member/login3.html">로그인</a></li>
                    <li><a href="file:///Users/gimhwigyeong/Desktop/study/Project/ehealthcare/src/main/resources/static/member/signupStep1.html" onclick="gtag('event','PC 메인화면 상단 회원가입 버튼', { 'event_category' : '회원가입', 'event_label' : '회원가입_PC 메인화면 상단 회원가입 버튼', 'value': 1000});">회원가입</a></li>

                </ul>
                <!-- //topMenu -->
            </div>
            <!-- //topMenuWrap -->

            <!-- gnb -->
            <nav id="gnb">
                <button class="totMenuBtn hideTxt" type="button">전체 메뉴 열기</button>
                <h2 class="hideEl">주 메뉴</h2>
                <ul class="gnbList clearFix">
                    <li>
                        <a href="/" onclick="return false;">헬스케어 소개</a>

                    </li>
                    <li>
                        <a href="/" onclick="return false;">분야선택</a>

                    </li>
                    <li>
                        <a href="/" onclick="return false;">의사검색</a>

                    </li>
                    <li>
                        <a href="/" onclick="return false;">내 질병 찾기</a>

                    </li>
                    <li>
                        <a href="/" onclick="return false;">마이페이지</a>

                    </li>

                </ul>

            </nav>
            <!-- //gnb -->


        </div>
        <!-- //innerWrap -->
    </header>
    <!-- //header -->

    <!-- contTopBar -->


    <div class="contTopBar">
        <!-- innerWrap -->
        <div class="innerWrap clearFix">
            <!-- bcQuickMenu -->
            <ul class="bcQuickMenu">
                <li class="a"><a href="/reservation/reservation.do">진료예약</a></li>
                <li><a href="/reservation/confirm/rsvConfirm.do">예약조회</a></li>
            </ul>
            <!-- //bcQuickMenu -->
        </div>
        <!-- //innerWrap -->
    </div>
    <script type="text/javascript">

        var locationInfo = {
            cate0: $(".viewTitle h3").text(),
            cate1: $(".breadcrumb em:eq(2)").text(),
            cate2: $(".breadcrumb em:eq(1)").text(),
            cate3: $(".breadcrumb em:eq(0)").text()
        }
    </script>


    <!-- //contTopBar -->

    <!-- contTopBar -->


    <div class="contTopBar">
        <!-- innerWrap -->
        <div class="innerWrap clearFix">
            <!-- breadcrumb -->
            <div class="breadcrumb">
                <strong class="hideEl">현재 위치: </strong>
                <a href="/" class="bcHomeBtn hideTxt b">HOME</a>
                <span class="hideEl">&gt;</span>

            </div>
            <!-- //breadcrumb -->
            <!-- bcQuickMenu -->
            <ul class="bcQuickMenu">
                <li class="a"><a href="/reservation/reservation.do">진료예약</a></li>
                <li><a href="/reservation/confirm/rsvConfirm.do">예약조회</a></li>
            </ul>
            <!-- //bcQuickMenu -->
        </div>
        <!-- //innerWrap -->
    </div>
    <script type="text/javascript">

        var locationInfo = {
            cate0: $(".viewTitle h3").text(),
            cate1: $(".breadcrumb em:eq(2)").text(),
            cate2: $(".breadcrumb em:eq(1)").text(),
            cate3: $(".breadcrumb em:eq(0)").text()
        }
    </script>


    <!-- //contTopBar -->

    <div class ="container">

        <div class = "mainContent">
            <div class = "menuName">
                <span>진료분야 선택</span>
                <span style="color: #479c24; font-weight: bold;"> | </span>
            </div>
            <div class = "subjectContainer">
                <div class = "medicalSubject" id = "gj">
                    <img src ="/images/가정의학과.png">
                    <span>가정의학과</span>
                </div>
                <div class = "medicalSubject" id = "dj">
                    <img src ="/images/대장항문과.png">
                    <span>대장항문과</span>
                </div>
                <div class = "medicalSubject" id = "bn">
                    <img src ="/images/비뇨기과.png">
                    <span>비뇨기과</span>
                </div>
                <div class = "medicalSubject" id = "sb">
                    <img src ="/images/산부인과.png">
                    <span>산부인과</span>
                </div>
                <div class = "medicalSubject" id = "sh">
                    <img src ="/images/성형외과.png">
                    <span>성형외과</span>
                </div>
                <div class = "medicalSubject" id = "sa">
                    <img src ="/images/소아청소년과.png">
                    <span>소아청소년과</span>
                </div>
                <div class = "medicalSubject" id = "an">
                    <img src ="/images/안과.png">
                    <span>안과</span>
                </div>
                <div class = "medicalSubject" id = "eb">
                    <img src ="/images/이비인후과.png">
                    <span>이비인후과</span>
                </div>
                <div class = "medicalSubject" id = "js">
                    <img src ="/images/정신건강의학과.png">
                    <span>정신건강의학과</span>
                </div>
                <div class = "medicalSubject" id = "jh">
                    <img src ="/images/정형외과.png">
                    <span>정형외과</span>
                </div>
                <div class = "medicalSubject" id = "pb">
                    <img src ="/images/피부과.png">
                    <span>피부과</span>
                </div>
                <div class = "medicalSubject" id = "cg">
                    <img src ="/images/치과.png">
                    <span>치과</span>
                </div>

            </div>
        </div>



    </div>

    <script>

        var $subjectContainer = $(".subjectContainer");
        var $userId = $("#userId");

        if(localStorage.getItem('id')){
            var id =  localStorage.getItem('id');
            $userId.text(id);
        }

        $subjectContainer.children().mouseenter(function(e){
            console.log(this);
            $(this).css({
                "background-color": "rgb(198, 211, 228)",
                "font-family" : "NB"
            });
        });

        $subjectContainer.children().mouseleave(function(e){
            $(this).css({
                "background-color": "#4bbd1d38",
                "font-family" : "NR"
            });
        });

        $subjectContainer.children().click(function(e){
            var link = "./" + this.id;
            location.href = link;

        });

    </script>

    <!-- //footer -->


    <%@ include file="../layout/footer2.jsp"%>