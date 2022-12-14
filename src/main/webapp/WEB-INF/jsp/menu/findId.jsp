<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="../layout/header2.jsp"%>

<!-- content -->

<script type="text/javascript">
  var birthNumCheck=/^[0-9]*$/ ;
  $(function() {
    $('#confirmMailBtn').click(function() {
      if($('#mForm').find('[id=name]').val() == "" || $('#mForm').find('[id=email]').val() == "" || $('#mForm').find('[id=birth]').val() == "") {
        alert("모든 사항은 필수 입력입니다.");
        return false;
      } else {
        var birth = $('#mForm').find('[id=birth]').val().replace(/-/gi,'');
        if(!birthNumCheck.test(birth) || birth.length < 8){
          alert("생년월일 정보를 한번 더 확인해 주십시오.");
          $('#mForm').find('[id=birth]').focus();
          return false;
        }
        $.ajax({
          async : false,
          type : "get",
          url : "./mailCheck.do",
          data : {"name" : $('#mForm').find('[id=name]').val(), "email" : $('#mForm').find('[id=email]').val(), "birth" : $('#mForm').find('[id=birth]').val()},
          success : function(data) {
            if(!data) {
              alert("정보가 확인되지 않습니다. \n입력정보를 한번 더 확인해 주십시오.");
            } else {
              /* $('#memberVo').submit(); */
              $('#mForm').submit();
            }
          }
        });
      }
    });
    $('#confirmHpBtn').click(function() {
      if($('#hForm').find('[id=name]').val() == "" || $('#hForm').find('[id=hp_no]').val() == "" || $('#hForm').find('[id=birth]').val() == "") {
        alert("모든 사항은 필수 입력입니다.");
        return false;
      } else {
        var birth = $('#hForm').find('[id=birth]').val().replace(/-/gi,'');
        if(!birthNumCheck.test(birth) || birth.length < 8){
          alert("생년월일 정보를 한번 더 확인해 주십시오.");
          $('#hForm').find('[id=birth]').focus();
          return false;
        }
        $.ajax({
          async : false,
          type : "get",
          url : "./hpCheck.do",
          data : {"name" : $('#hForm').find('[id=name]').val(), "hp_no" : $('#hForm').find('[id=hp_no]').val(), "birth" : $('#hForm').find('[id=birth]').val()},
          success : function(data) {
            if(!data) {
              alert("정보가 확인되지 않습니다. \n입력정보를 한번 더 확인해 주십시오.");
            } else {
              /* $('#memberVo').submit(); */
              $('#hForm').submit();
            }
          }
        });
      }
    });
    $('#gpinBtn').click(function() {
      var gpin = window.open("./idGpinAuthResponsePopup.do", "gpin"," directories=no,toolbar=no,width=450,height=550");
    });
    $('#mBtn').click(function() {
      var PCC_window =window.open('', 'PCCV3Window', 'width=430, height=560, resizable=1, scrollbars=no, status=0, titlebar=0, toolbar=0, left=300, top=200' );
      PCC_window.focus();
      document.reqPCCForm.action = 'https://pcc.siren24.com/pcc_V3/jsp/pcc_V3_j10.jsp';
      document.reqPCCForm.target="PCCV3Window";
      document.reqPCCForm.submit();
    });
    $('#ipinBtn').click(function() {
      var IPIN_window =window.open('', 'IPINWindow', 'width=450, height=500, resizable=0, scrollbars=no, status=0, titlebar=0, toolbar=0, left=300, top=200' );
      IPIN_window.focus();
      document.reqCBAForm.action = 'https://ipin.siren24.com/i-PIN/jsp/ipin_j10.jsp';
      document.reqCBAForm.target="IPINWindow";
      document.reqCBAForm.submit();
    });
  });
</script>

<!-- content -->
<main id="content" class="findContent">
  <div class="contHeadingWrap">
    <h2>아이디/비밀번호 찾기</h2>
  </div>
  <!-- tabType -->
  <div class="tabTypeCol2 a">
    <ul class="clearFix">
      <li class="current"><a href="#">아이디 찾기</a></li>
      <li><a href="/auth/findPw">비밀번호 찾기</a></li>
    </ul>
  </div>
  <!-- //tabType -->
  <div class="confirmWrap b">
    <p>아이디를 잊으셨습니까?</p>
    <p>인증 방법 중 한가지를 선택하여 찾으실 수 있습니다.</p>
  </div>
  <div class="memType03 clearFix">
    <a href="/" class="layerBtn" id="mBtnWI2" data-layer="layerHp"><span class="mPhone b">가입정보</span>휴대전화 이용하기</a>
    <a href="/" class="layerBtn" data-layer="layerMail"><span class="mEMail b">가입정보</span>이메일 이용하기</a>
    <a href="javascript:void(0)" id="mBtn"><span class="mPhone b">휴대전화</span>본인 인증하기</a>

  </div>
  <p class="referenMark">
    <span class="colorPoint">장기간 미사용 시&nbsp;</span><span class="colorPoint06"> 휴면회원 또는</span>
    <span class="colorPoint"><B>탈퇴</B></span><span class="colorPoint06"> 처리 되었을 수 있습니다.</span><br>
    <span class="colorPoint06">아이디 찾기가 안 될 경우&nbsp;</span><span class="colorPoint07"><B>회원가입</B></span>
    <span class="colorPoint06">후 이용해 주십시오.<br>회원정보가 변경되어 본인 확인이 불가할 경우 02-2072-0596 으로 연락주십시오.</span>
  </p>

  <form name="reqPCCForm" method="post" action="" >
    <input type="hidden" name="reqInfo" value="F072704777224B6913829CD0205DF98703C336D13DFAE8E8AD55E116752269342A45C7E5BDE2681FA92F5099830A0D02F0112B18D452F606808964BBDB821E008AC6B585026056B5DCE1DBEB36812D63EC2F438BE427263B15BAC43EDBCFE61A508DD9A5B46BC61791A3CE20FDEAE7EB43C8E105E409C24BE3DA05F1E534E992F4806061113A22310962F6267F8CAF43A7C4B88C7D864037ACB0FDA0AB78D31F2B03296A634B89F63CFF6287877B29B2BA3E68871EBC06ECF8E541DCE28454C4A399D83F849D63CC1C8E71E20632303143737E092BAACA0516326E52FE89687B">
    <input type="hidden" name="retUrl" value="32https://www.snuh.org/member/phoneAuthResponse.do?authKind=findId">
  </form>
  <form name="reqCBAForm" method="post" action="" >
    <input type="hidden" name="reqInfo" value="D1B86C00FB6B0F1735ADB044BD029F3C8BF9579816B7991EDD76620238FEBDDF93A69AFA2B588655200BB3DE1BE30CE7B2DD77EAC0F8AFD4D3FE9CDF71C0BA64A8A4B2D1392A3A732268F0ADED58EA589617B02496BF8154E2ECCF6B91E06DD1FAF3EE386A4C6A94A7E7E3146D324FF99A0E6F3BDF0F2BF3F65073BB8283C30EAECF3EB4B46272AA5B7AF7802CB962A2C541945FDBB0D343F4089D22844B363D960C2065CF0B63787A8091124339607CEA98635DED8C25945C9625C5B6CDA519">
    <input type="hidden" name="retUrl" value="23https://www.snuh.org/member/ipinAuthResponse.do?authKind=findId&join_type=null">
  </form>

  <!-- layerWrap -->
  <section class="layerWrap layerMail">
    <h1>회원정보 이메일 확인</h1>
    <!-- layerContent -->
    <div class="layerContent">
      <form id="mForm" name="mForm" action="./findIdResult.do" method="post">
        <fieldset>
          <legend>이메일확인</legend>
          <div class="boardTypeForm">
            <table>
              <caption>이메일확인(이름, 이메일주소, 생년월일)</caption>
              <colgroup>
                <col style="width: 135px;">
                <col style="width: auto;">
              </colgroup>
              <tbody>
              <tr>
                <th scope="row">이름</th>
                <td><input id="name" name="name" title="이름" class="inputText" type="text" value="" maxlength="20"/></td>
              </tr>
              <tr>
                <th scope="row">이메일주소</th>
                <td><input id="email" name="email" title="이메일주소" class="inputText" type="text" value="" maxlength="40"/></td>
              </tr>
              <tr>
                <th scope="row">생년월일</th>
                <td><input id="birth" name="birth" title="생년원일" class="inputText" type="text" value="" maxlength="10"/><p class="desc">예)1970-01-01</p></td>
              </tr>
              </tbody>
            </table>
          </div>
        </fieldset>
      </form>
      <div class="btnWrap alignC">
        <button type="button" class="btnType03" id="confirmMailBtn">확인하기</button>
      </div>
    </div>
    <!-- //layerContent -->
    <button type="button" class="layerCloseBtn">레이어 닫기</button>
  </section>

  <section class="layerWrap layerHp">
    <h1>회원정보 휴대전화번호 확인</h1>
    <!-- layerContent -->
    <div class="layerContent">
      <form id="hForm" name="hForm" action="./findIdResult.do" method="post">
        <fieldset>
          <legend>휴대전화번호 확인</legend>
          <div class="boardTypeForm">
            <table>
              <caption>휴대전화번호 (이름, 휴대전화번호, 생년월일)</caption>
              <colgroup>
                <col style="width: 135px;">
                <col style="width: auto;">
              </colgroup>
              <tbody>
              <tr>
                <th scope="row">이름</th>
                <td><input id="name" name="name" title="이름" class="inputText" type="text" value="" maxlength="20"/></td>
              </tr>
              <tr>
                <th scope="row">휴대전화번호</th>
                <td><input id="hp_no" name="hp_no" title="휴대전화번호" class="inputText" type="text" value="" maxlength="40"/></td>
              </tr>
              <tr>
                <th scope="row">생년월일</th>
                <td><input id="birth" name="birth" title="생년원일" class="inputText" type="text" value="" maxlength="10"/><p class="desc">예)1970-01-01</p></td>
              </tr>
              </tbody>
            </table>
          </div>
        </fieldset>
      </form>
      <div class="btnWrap alignC">
        <button type="button" class="btnType03" id="confirmHpBtn">확인하기</button>
      </div>
    </div>
    <!-- //layerContent -->
    <button type="button" class="layerCloseBtn">레이어 닫기</button>
  </section>
  <!-- //layerWrap -->
</main>
<!-- //content -->

<!-- //content -->

{{> footer}}
<%@ include file="../layout/footer2.jsp"%>