<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<%@ include file="../layout/headerD.jsp"%>

<!-- content -->


<script type="text/javascript">
    $(function() {

    });

    function rsvChange(type, hspcd, deptcd, drcd, rsvdate, rsvtime, selNm) {
        if(type == "U") {
            var rsv_url = "/reservation/reservation.do?hsp_cd="+hspcd+"&dept_cd="+deptcd+"&dr_cd="+drcd;

            if (confirm('예약을 변경 하시겠습니까?')) {
                $([
                    '<form action="', rsv_url, '" method="post">',
                    '<input type="hidden" name="job_type" value="U" />',
                    '<input type="hidden" name="org_hsp_cd" value="', hspcd, '" />',
                    '<input type="hidden" name="org_dept_cd" value="', deptcd, '" />',
                    '<input type="hidden" name="org_dr_cd" value="', drcd, '" />',
                    '<input type="hidden" name="org_rsv_date" value="', rsvdate, '" />',
                    '<input type="hidden" name="org_rsv_time" value="', rsvtime, '" />',
                    '</form>'
                ].join('')).appendTo(document.body).submit();
            }
        } else if(type == "C") {
            var selYn = "N";
            if(selNm == "선택진료") selYn = "Y";
            if (confirm('예약을 취소 하시겠습니까?')) {
                $([
                    '<form action="/reservation/reservationProc.do" method="post">',
                    '<input type="hidden" name="job_type" value="C" />',
                    '<input type="hidden" name="hsp_cd" value="', hspcd, '" />',
                    '<input type="hidden" name="dept_cd" value="', deptcd, '" />',
                    '<input type="hidden" name="dr_cd" value="', drcd, '" />',
                    '<input type="hidden" name="rsv_date" value="', rsvdate, '" />',
                    '<input type="hidden" name="rsv_time" value="', rsvtime, '" />',
                    '<input type="hidden" name="sel_yn" value="', selYn, '" />',
                    '</form>'
                ].join('')).appendTo(document.body).submit();
            }
        }
    }
</script>

<main id="content" class="myPage">
    <div class="contHeadingWrap">
        <h2>환자 관리 / 개인정보 수정 </h2>

        <script type="text/javascript">
            $(function() {

                $('#interestCont, #interestCont2').click(function(e){

                    var regExp = /^https?:\/\/([a-z0-9-_\.]*)/i;
                    var currentUrl = "%2Fmypage%2Fmain.do";

                    try{
                        if("buc06137" == ""){
                            alert("로그인이 필요합니다.");
                            location.href="/login.do?retUrl=%2Fmypage%2Fmain.do";
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

            }
        </script>
        <!-- rsvLayerWrap -->
        <section class="layerWrap rsvLayer layerRservation" id="rsvSchedule"> </section>
        <!-- rsvLayerWrap -->
    </div>
    <!-- row -->
    <div class="row col2 clearFix">
        <!-- item -->
        <div class="item">
            <h3 class="title">진료예약확인</h3>



            <p class="noData">조회 가능한 진료예약이 없습니다.</p>
            <a href="/mypage/reserve/rsvConfirm.do" role="button" class="more a">진료예약확인 상세보기</a>

        </div>
        <!-- //item -->
        <!-- item -->
        <!-- //item -->
        <!-- item -->
        <div class="item">
            <h3 class="title">최근 진료이력조회</h3>



            <p class="noData">최근 1년간 수진이력이 존재하지 않습니다.</p>
            <a href="/mypage/reserve/medHistory.do" role="button" class="more">최근 진료이력조회 상세보기</a>

        </div>

        <!-- //item -->
        <!-- item -->

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
    <!-- row -->
    <div class="row col3 clearFix">

        <!-- //item -->

    </div>
        </body>
        </html>