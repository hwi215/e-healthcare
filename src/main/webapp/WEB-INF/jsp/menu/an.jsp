<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.0.0/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />



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
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.0.0/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />


    <script
            src="https://code.jquery.com/jquery-3.5.1.min.js"
            integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0="
            crossorigin="anonymous"></script>

    <link
            href="https://fonts.googleapis.com/css2?family=IBM+Plex+Mono:wght@400;500;600;700&family=Noto+Sans+KR:wght@400;500;700&display=swap"
            rel="stylesheet">

    <link rel="stylesheet" href="/css/doctorList.css">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;800&display=swap" rel="stylesheet">

</head>

<body>
<div class ="container">




    <div id="wrap2">
        <a href="#content" class="skipToContent">???????????? ????????????</a>
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

    </div>


    <div class = "doctorContainer">
        <div class = "subjectField">
            <span class = "subjectTitle"> ?????? </span>
            <span style="color: #157CC0; font-weight: bold;"> | </span>
            <span id = "subjectInfo">????????? ?????? ????????? ????????? ???????????? ???????????? ????????? ??? ???????????????.<br>
          ????????? ?????? ???????????? ??????????????? ?????? ?????? ????????? ?????? ??? ????????? ????????? ?????? ????????? ???????????? ????????? ?????? ?????? ??????, ????????? ???????????? ?????? ??? ????????? ????????? ????????? ?????? ????????????.
          </span>
        </div>

        <div class = "consultWaiting">
            <span style="font-family: NR;">???????????? ?????????...</span>
            <div id = "waitingName"></div>
            <div id = "waitingNum"></div>
            <div id = "loading">
            </div>
            <div id = "waitingCancle">????????????</div>
        </div>


        <div class = "doctorList">

            <div class = "doctorContent" id="doc1">
                <div class = "doctorImg">
                    <img src="/images/ex1.jpg">
                </div>
                <div id = "doctorName">
                    <span style="color: #157CC0 ">?????????</span>
                    <span>??????</span>
                </div>
                <div id = "doctorSubject">
                    <span>[??????]</span>

                </div>
                <div id = "doctorField">
                    <span>[????????????]<br></span>
                    <span style="font-family: NEXON;">?????????,?????????</span>
                </div>
                <div id = "hospitalName">
                    <span style="color: #145c8b;">?????????????????????????????????????????????</span>
                </div>
                <div id = "doctorWaiting">
                    <img src="/images/waiting.png">
                    <span>: 1???</span>
                </div>
                <div id = "doctorOnline">
                </div>

                <a id = "doctorDetail">
                    <img src="/images/?????????.png">
                    <span>????????????</span>
                </a>
                <a id = "doctorConsult">
                    <img src="/images/??????.png">
                    <span>
                        <button type="button" onclick=location.href="/items/new">????????????</button>
                    </span>
               </a>

                <div class = "doctorDetailInfo">
                    <div id = "doctorSpeak">
                        <span>?????????:&nbsp;</span>
                        <span>????????? ???????????? ????????? ???????????????.</span>
                    </div>
                    <div id = "doctorProfile">
                        <span style="color: #157CC0 ">??????:<br></span>
                        <span>?????????????????? ?????? ??????<br>?????????????????? ????????? ??????</span>
                    </div>
                    <div id = "doctorActivity">
                        <span style="color: #157CC0 ">?????? ??????:<br></span>
                        <span>?????? ??????????????? ?????????<br>?????? ???????????????????????? ?????????</span>
                    </div>
                    <div id = "hospitalLocation">
                        <span>??????:&nbsp;</span>
                        <span>?????? ????????? ???????????? 381 ?????????????????? 303???</span>
                    </div>
                    <div id = "detailUndo">
                        <img src="/images/undo.png">
                    </div>
                </div>
            </div>

            <div class = "doctorContent" id="doc2">
                <div class = "doctorImg">
                    <img src="/images/ex2.jpg">
                </div>
                <div id = "doctorName">
                    <span style="color: #157CC0 ">?????????</span>
                    <span>??????</span>
                </div>
                <div id = "doctorSubject">
                    <span>[??????]</span>
                </div>
                <div id = "doctorField">
                    <span>[????????????]<br></span>
                    <span style="font-family: NEXON;">????????????, ????????????, ?????? ??????</span>
                </div>
                <div id = "hospitalName">
                    <span style="color: #145c8b;">??????????????????</span>
                </div>
                <div id = "doctorWaiting">
                    <img src="/images/waiting.png">
                    <span>: 0???</span>
                </div>
                <div id = "doctorOnline">
                </div>
                <a id = "doctorDetail">
                    <img src="/images/?????????.png">
                    <span>????????????</span>
                </a>
                <a id = "doctorConsult">
                    <img src="/images/??????.png">
                    <span>
                        <button type="button" onclick=location.href="/items/new">????????????</button>
                    </span>
                </a>
                <div class = "doctorDetailInfo">
                    <div id = "doctorSpeak">
                        <span>?????????:&nbsp;</span>
                        <span>'??????... ????????????' ??????????????? ???????????? ???????????????.</span>
                    </div>
                    <div id = "doctorProfile">
                        <span style="color: #157CC0 ">??????:<br></span>
                        <span>????????????????????? ?????? ??????<br>??????????????? ???????????? ??????????????? ??????</span>
                    </div>
                    <div id = "doctorActivity">
                        <span style="color: #157CC0 ">?????? ??????:<br></span>
                        <span>?????? ??????????????? ?????????<br>?????? ????????????????????? ?????????</span>
                    </div>
                    <div id = "hospitalLocation">
                        <span>??????:</span>
                        <span>?????? ????????? ???????????? 158 ???????????? 302???</span>
                    </div>
                    <div id = "detailUndo">
                        <img src="/images/undo.png">
                    </div>
                </div>
            </div>

            <div class = "doctorContent" id="doc3">
                <div class = "doctorImg">
                    <img src="/images/ex3.jpg">
                </div>
                <div id = "doctorName">
                    <span style="color: #157CC0 ">?????????</span>
                    <span>??????</span>
                </div>
                <div id = "doctorSubject">
                    <span>[??????]</span>
                </div>
                <div id = "doctorField">
                    <span>[????????????]<br></span>
                    <span style="font-family: NEXON;">??????, ??????, ???????????????</span>
                </div>
                <div id = "hospitalName">
                    <span style="color: #145c8b;">?????????????????????</span>
                </div>
                <div id = "doctorWaiting">
                    <img src="/images/waiting.png">
                    <span>: 3???</span>
                </div>
                <div id = "doctorOnline">
                </div>
                <a id = "doctorDetail">
                    <img src="/images/?????????.png">
                    <span>????????????</span>
                </a>
                <a id = "doctorConsult">
                    <img src="/images/??????.png">
                    <span>
                        <button type="button" onclick=location.href="/items/new">????????????</button>
                    </span>
                </a>

                <div class = "doctorDetailInfo">
                    <div id = "doctorSpeak">
                        <span>?????????:&nbsp;</span>
                        <span>???????????? ???????????????. ????????? ???????????????.</span>
                    </div>
                    <div id = "doctorProfile">
                        <span style="color: #157CC0 ">??????:<br></span>
                        <span>??????????????? ?????? ??????</span>
                    </div>
                    <div id = "doctorActivity">
                        <span style="color: #157CC0 ">?????? ??????:<br></span>
                        <span>?????? ??????????????? ?????????</span>
                    </div>
                    <div id = "hospitalLocation">
                        <span>??????:</span>
                        <span>?????? ????????? ???????????? 329 ????????????202???</span>
                    </div>
                    <div id = "detailUndo">
                        <img src="/images/undo.png">
                    </div>
                </div>
            </div>

            <div class = "doctorContent" id="doc4">
                <div class = "doctorImg">
                    <img src="/images/ex4.jpg">
                </div>
                <div id = "doctorName">
                    <span style="color: #157CC0 ">?????????</span>
                    <span>??????</span>
                </div>
                <div id = "doctorSubject">
                    <span>[??????]</span>
                </div>
                <div id = "doctorField">
                    <span>[????????????]<br></span>
                    <span style="font-family: NEXON;">???????????????????????, ????????????</span>
                </div>
                <div id = "hospitalName">
                    <span style="color: #145c8b;">???????????????????????????????????? ??????????????????</span>
                </div>
                <div id = "doctorWaiting">
                    <img src="/images/waiting.png">
                    <span>: 0???</span>
                </div>
                <div id = "doctorOffline">
                </div>
                <a id = "doctorDetail">
                    <img src="/images/?????????.png">
                    <span>????????????</span>
                </a>
                <a id = "doctorConsult">
                    <img src="/images/??????.png">
                    <span>
                        <button type="button" onclick=location.href="/items/new">????????????</button>
                    </span>
                </a>
                <div class = "doctorDetailInfo">
                    <div id = "doctorSpeak">
                        <span>?????????:&nbsp;</span>
                        <span>????????? ???????????? ???????????? ???????????????.</span>
                    </div>
                    <div id = "doctorProfile">
                        <span style="color: #157CC0 ">??????:<br></span>
                        <span>??????????????? ?????? ??????</span>
                    </div>
                    <div id = "doctorActivity">
                        <span style="color: #157CC0 ">?????? ??????:<br></span>
                        <span>?????? ??????????????? ?????????</span>
                    </div>
                    <div id = "hospitalLocation">
                        <span>??????:</span>
                        <span>?????? ????????? ??????????????? 2614 ?????????????????? 305???</span>
                    </div>
                    <div id = "detailUndo">
                        <img src="/images/undo.png">
                    </div>
                </div>
            </div>

        </div>

    </div>

    <script>
        var $doctorList = $(".doctorList");
        var $doctorContent = $(".doctorContent");
        var $doctorContentEX = $(".doctorContentEX");
        var $doctorDetail = $("#doctorDetail");
        var $reservation = $(".reservation");
        var $doctorDetailInfo = $(".doctorDetailInfo");
        var $consultWaiting = $('.consultWaiting');
        var cnt = 0 ;
        var $docNum = 0;
        var $userId = $(".userId");

        if(localStorage.getItem('id')){
            var id =  localStorage.getItem('id');
            $userId.text(id);
        }
        $doctorContent.children().mouseenter(function(e) {
            var id = this.id;
            if (id == "doctorDetail" || id == "doctorConsult") {
                this.id += "_s";
            }
        });

        $doctorContent.children().mouseleave(function(e){
            var id = this.id;
            if (id == "doctorDetail_s" || id ==  "doctorConsult_s"){
                this.id = this.id.replace("_s","");}
        });
        $doctorContent.children().click(function(e){
            var id = this.id;
            if (id == "doctorDetail_s"){
                var x = $(this).parent();
                x.removeClass("doctorContent")
                x.addClass("doctorContentEX");
            }
        });

        /*
        $doctorContent.children().click(function(e){
            var id = this.id;
            if (id ==  "doctorConsult_s"){
                if(cnt != 0){
                    alert('?????? ???????????? ??????????????? ????????????.');
                }
                if(cnt == 0){

                    alert('???????????? ???????????????.');
                    var room = {
                        doctorName : "doctorname"
                    };
                    console.log(room);
                    $.ajax({
                        url : "./room.do",
                        data : room,
                        type : "post",
                        dataType : "json",
                        async : true,
                        success : function(resp) {
                            alert("success");
                            alert(resp.doctorName);
                        },
                        error : function() {
                            alert("error")
                        }
                    });

                    cnt ++;
                    var waiting = $(this).prevAll("#doctorWaiting").children().text();
                    var x = waiting.split("");
                    x[2] = Number(x[2]) + 1;
                    waiting = x.join("");
                    $(this).prevAll("#doctorWaiting").children().text(waiting.slice(0,4));
                    $consultWaiting.css({"display": "flex"});
                    $consultWaiting.children("#waitingNum").text(x[2]+"??????");
                    var docName = $(this).prevAll("#doctorName").children().text();
                    $consultWaiting.children("#waitingName").text(docName.slice(0,3)+" "+docName.slice(3,5));
                    $docNum = $(this).parents().attr("id");

                };
            }
        });


         */



        $consultWaiting.children("#waitingCancle").click(function(e){
            if(cnt !=0){
                var x = document.getElementById($docNum);
                var waiting = $(x).children("#doctorWaiting").children().text();
                var temp = waiting.split("");
                temp[2] = Number(temp[2]) - 1;
                waiting = temp.join("");
                $(x).children("#doctorWaiting").children().text(waiting.slice(0,4));
                cnt --;
                $consultWaiting.css({"display": "none"});
                alert("???????????? ?????????????????????.")
            }
        });
        $doctorDetailInfo.children().click(function(e){
            var id = this.id;
            if (id == "detailUndo"){
                var x = $(this).parent().parent();
                x.removeClass("doctorContentEX")
                x.addClass("doctorContent");
            }
        });



    </script>


</body>
</html>