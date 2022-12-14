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

    <div id="wrap2">
        <!-- header -->

        <header id="header" class="b">
            <!-- innerWrap -->
            <div class="innerWrap">
                <h1><a href="/main" class="hideTxt">E-healthcare</a></h1>
                <div class="topLeftWrap">
                    <a href="/main" class="hideTxt" id="outcomes" >Outcomes Book</a>
                </div>


                <!-- topMenuWrap -->
                <div class="topMenuWrap">

                    <!-- topMenu -->
                    <ul class="topMenu">
                        <li><a href="/auth/signin">?????????</a></li>
                        <li><a href="/auth/signupStep1">????????????</a></li>
                    </ul>
                    <!-- //topMenu -->
                </div>
                <!-- //topMenuWrap -->

                <!-- gnb -->
                <nav id="gnb">
                    <h2 class="hideEl">??? ??????</h2>
                    <ul class="gnbList clearFix">
                        <li>
                            <a href="/menu/mainpage">???????????? ??????</a>
                        </li>
                        <li><a href="/menu/medicalField">????????????</a></li>
                        <li>
                            <a href="/menu/doctor">????????????</a>
                        </li>
                        <li>
                            <a href="/menu/disease">??? ?????? ??????</a>
                        </li>
                        <li>
                            <a href="/menu/mypage">???????????????</a>
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
                <li><a href="/menu/mypage">????????????</a></li>
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
                <strong class="hideEl">?????? ??????: </strong>
                <a href="/" class="bcHomeBtn hideTxt b">HOME</a>
                <span class="hideEl">&gt;</span>

            </div>
            <!-- //breadcrumb -->
            <!-- bcQuickMenu -->
            <ul class="bcQuickMenu">
                <li class="a"><a href="/reservation/reservation.do">????????????</a></li>
                <li><a href="/reservation/confirm/rsvConfirm.do">????????????</a></li>
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
                <span>???????????? ??????</span>
                <span style="color: #479c24; font-weight: bold;"> | </span>
            </div>
            <div class = "subjectContainer">
                <div class = "medicalSubject" id = "gj">
                    <img src ="/images/???????????????.png">
                    <span>???????????????</span>
                </div>
                <div class = "medicalSubject" id = "dj">
                    <img src ="/images/???????????????.png">
                    <span>???????????????</span>
                </div>
                <div class = "medicalSubject" id = "bn">
                    <img src ="/images/????????????.png">
                    <span>????????????</span>
                </div>
                <div class = "medicalSubject" id = "sb">
                    <img src ="/images/????????????.png">
                    <span>????????????</span>
                </div>
                <div class = "medicalSubject" id = "sh">
                    <img src ="/images/????????????.png">
                    <span>????????????</span>
                </div>
                <div class = "medicalSubject" id = "sa">
                    <img src ="/images/??????????????????.png">
                    <span>??????????????????</span>
                </div>
                <div class = "medicalSubject" id = "an">
                    <img src ="/images/??????.png">
                    <span>??????</span>
                </div>
                <div class = "medicalSubject" id = "eb">
                    <img src ="/images/???????????????.png">
                    <span>???????????????</span>
                </div>
                <div class = "medicalSubject" id = "js">
                    <img src ="/images/?????????????????????.png">
                    <span>?????????????????????</span>
                </div>
                <div class = "medicalSubject" id = "jh">
                    <img src ="/images/????????????.png">
                    <span>????????????</span>
                </div>
                <div class = "medicalSubject" id = "pb">
                    <img src ="/images/?????????.png">
                    <span>?????????</span>
                </div>
                <div class = "medicalSubject" id = "cg">
                    <img src ="/images/??????.png">
                    <span>??????</span>
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
