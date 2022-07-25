<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<%@ include file="../layout/headerD.jsp"%>



<main id="content">
    <!-- contHeadingWrap -->
    <div class="contHeadingWrap">
        <h2>진료예약확인</h2>

        <!-- contUtilMenu -->
        <ul class="contUtilMenu">
            <li class="pagePrint"><a href="/" role="button">인쇄</a></li>
            <li class="b"><a href="/" role="button" id="interestCont">관심콘텐츠</a></li>
            <li class="copyURL b"><a href="/" role="button">URL복사</a></li>
            <!--<li class="voiceBtnLbl b"><a href="/" class="a" role="button" onclick="javascript:voicemonjs_statval();return false;">음성</a></li>-->
            <li class="zoomOut"><button type="button" class="hideTxt">화면 축소</button></li>
            <li class="zoomIn"><button type="button" class="hideTxt">화면 확대</button></li>
        </ul>
        <!-- //contUtilMenu -->
        <script type="text/javascript">
            $(function() {

                $('#interestCont, #interestCont2').click(function(e){

                    var regExp = /^https?:\/\/([a-z0-9-_\.]*)/i;
                    var currentUrl = "%2Fmypage%2Freserve%2FrsvConfirm.do";

                    try{
                        if("buc06137" == ""){
                            alert("로그인이 필요합니다.");
                            location.href="/login.do?retUrl=%2Fmypage%2Freserve%2FrsvConfirm.do";
                            return false;
                        }

                        $.ajax({
                            async: false,
                            type: "POST",
                            url: "/common/interestContentsProcAjax.do",
                            data : {"link_url" : currentUrl, "cate0": locationInfo.cate0, "cate1" : locationInfo.cate1, "cate2" : locationInfo.cate2 , "cate3" : locationInfo.cate3 },
                            success: function(res){
                                if(res > 0){
                                    alert("관심컨텐츠로 등록 되었습니다.");
                                }else{
                                    alert("죄송합니다. 서비스에 문제가 있습니다.\n빠른시간내 수정하겠습니다.");
                                }
                            }
                        });
                    }catch(e){
                        alert('죄송합니다. 서비스에 문제가 있습니다.\n\n빠른시간내 수정하겠습니다.');
                        return false;
                    }
                    return false;
                });
            });
        </script>
        <script type="text/javascript">
            function viewRsvLayer(hspcd, deptcd, drcd, selyn) {

                <c:if test="false">
                alert("로그인 해 주세요.");
                location.href = "/login.do?retUrl=/mypage/reserve/rsvConfirm.do";
                </c:if>
                <c:if test="true">
                var url = '/reservation/rsvScheduleAjax.do';
                var data = 'hsp_cd='+hspcd+'&dept_cd='+deptcd+'&dr_cd='+drcd+'&sel_yn='+selyn;

                $.ajax({
                    type: "GET",
                    url: url,
                    data: data,
                    success: function(data)
                    {
                        //feUI.schDateMethod.init;
                        feUI.layerMethod.viewLayer('layerRservation');
                        $("#rsvSchedule").html(data);
                    }
                });
                </c:if>
            }
        </script>
        <!-- rsvLayerWrap -->
        <section class="layerWrap rsvLayer layerRservation" id="rsvSchedule"> </section>
        <!-- rsvLayerWrap -->
    </div>
    <!-- resConfirmList -->
    <ul class="resConfirmList">


        <li class="item">
            <p class="noData">조회 가능한 진료예약이 없습니다.</p>
        </li>

    </ul>
    <!-- //resConfirmList -->
    <!-- boxTypeGray -->
    <div class="boxTypeGray boxVtical">
        <strong class="boxTit b">주의</strong>
        <div class="txtWrap">
            <p>진료예약취소는 <span class="colorPoint">진료일 이전(자정)</span>까지 가능합니다. (수납기록 및 검사예약이 없는 진료만 변경/취소가 가능)</p>
            <p>특정 진료과(방사선종양학과, 영상의학과, 마취통증의학과)의 예약이 조회되지 않을 수 있습니다.</p>
            <p>예약이 조회되지 않을 경우에는 <span class="colorPoint">예약센터(1588-5700)</span>나 해당 진료과로 문의해 주십시오.	</p>
        </div>
    </div>
    <!-- //boxTypeGray -->
    <div class="contTitleWrap resConfirmTitle">
        <h3>검사예약확인</h3>
        <p class="colorPoint02">
            <span>*</span>
            검사예약은 조회만 가능하며, 특정 검사는 조회가 되지 않을 수도 있습니다.
        </p>
    </div>
    <!-- resConfirmList -->
    <ul class="resConfirmList">

        <li class="item">
            <p class="noData">조회 가능한 검사예약이 없습니다.</p>
        </li>