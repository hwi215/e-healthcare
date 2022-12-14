<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<%@ include file="../layout/header2.jsp"%>

  <!-- content -->

  <script type="text/javascript">
    var birthNumCheck=/^[0-9]*$/ ;
    $(function() {

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

      $('#confirmMailBtn').click(function() {

        if($('#mForm').find('[id=id]').val() == "" || $('#mForm').find('[id=name]').val() == "" || $('#mForm').find('[id=email]').val() == "" || $('#mForm').find('[id=birth]').val() == "") {
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
            url : "./passMailCheck.do",
            data : {"id" : $('#mForm').find('[id=id]').val(), "name" : $('#mForm').find('[id=name]').val(), "email" : $('#mForm').find('[id=email]').val(), "birth" : $('#mForm').find('[id=birth]').val()},
            success : function(data) {
              if(!data) {
                alert("정보가 확인되지 않습니다. \n입력정보를 한번 더 확인해 주십시오.");
              } else {
                $('#mForm').submit();
              }
            }
          });
        }
      });

      $('#confirmHpBtn').click(function() {

        if($('#hForm').find('[id=id]').val() == "" || $('#hForm').find('[id=name]').val() == "" || $('#hForm').find('[id=hp_no]').val() == "" || $('#hForm').find('[id=birth]').val() == "") {
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
            url : "./passHpCheck.do",
            data : {"id" : $('#hForm').find('[id=id]').val(), "name" : $('#hForm').find('[id=name]').val(), "hp_no" : $('#hForm').find('[id=hp_no]').val(), "birth" : $('#hForm').find('[id=birth]').val()},
            success : function(data) {
              if(!data) {
                alert("정보가 확인되지 않습니다. \n입력정보를 한번 더 확인해 주십시오.");
              } else {
                $('#hForm').submit();
              }
            }
          });
        }
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
        <li><a href="/auth/findId">아이디 찾기</a></li>
        <li class="current"><a href="#">비밀번호 찾기</a></li>
      </ul>
    </div>
    <!-- //tabType -->
    <div class="confirmWrap pwConfirmWrap b">
      <p>비밀번호를 잊으셨습니까?</p>
      <p>가입하신 당시 인증 방법 중 한가지를 선택하여 찾으실 수 있습니다.</p>
    </div>
    <div class="memType03 clearFix">
      <a href="/" class="layerBtn" id="mBtnWP2" data-layer="layerHp"><span class="mPhone b">가입정보</span>휴대전화 이용하기</a>
      <a href="/" class="layerBtn" data-layer="layerMail"><span class="mEMail b">가입정보</span>이메일 이용하기</a>
      <a href="javascript:void(0);" id="mBtn"><span class="mPhone b">휴대전화</span>본인 인증하기</a>
    </div>
    <p class="referenMark"><span>&#8251;&nbsp;</span>회원정보가 변경되어 본인 확인이 불가할 경우 02-2072-0596 으로 연락주십시오.</p>

    <form name="reqPCCForm" method="post" action="" >
      <input type="hidden" name="reqInfo" value="609A87FA9B2B786D2E352288893788CF6562FE275E7FEAB63A4E372C5F755A4DB2745BE6EB15CBF01CC7F29C362D13EEB1A2F6C14849535D2BF1B8105F1A30E2469A2605E692C3E5BFBEC7CBBCCA4A3DB119189FB403A2553DD6ADDF82F3A2AFB4833750D07847F7D4CC117B82A33D3B3F168C3F917257CB146C05C603C3401D6E8DE0D04A8FE7D83A54EF5FBBC15A2BC606F47E2404D25B2311214EE0AB42681892B62F51DB45EFDBF5219FD75DA18C326F4A3742BB236F43677389DE3392A05E2EE170C0D3F47DF4358DA990212567A8192F606CCE5754F4D02DC0ED0E0A70">
      <input type="hidden" name="retUrl" value="32https://www.snuh.org/member/phoneAuthResponse.do?authKind=findPassword">
    </form>

    <form name="reqCBAForm" method="post" action="" >
      <input type="hidden" name="reqInfo" value="589E23D2DC9FD270B02D0B6236091DE51647B24A719328FFFC07A310AE9BA7F63CC1D93FDA4827D28E99A755FBEBBD65E8ED3C57ED2E4D1908055769EA361C56E38130C4E2AAA1803CED355BF539FEDC4514C7D829CF829EF25A9D079CE634BD2E4B52711D0E636F0B16F359ECC0DE15A4A47A1D782DA9932B305D09366C81E604444DE3A766A5C59A51410478D2E48EA278F1CD9743013CFC2119A1F97DD6C58398446EACF979994FD922C071AFFE40C78BB20B815A1ADF9CD4058F6EE6FCBE">
      <input type="hidden" name="retUrl" value="23https://www.snuh.org/member/ipinAuthResponse.do?authKind=findPassword&join_type=null">
    </form>
    <!-- layerWrap -->
    <section class="layerWrap layerMail">
      <h1>회원정보 이메일 확인</h1>
      <!-- layerContent -->
      <div class="layerContent">
        <form id="mForm" name="mForm" action="./findPassMailResult.do" method="post">
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
                  <th scope="row">아이디</th>
                  <td><input id="id" name="id" title="아이디" class="inputText" type="text" value="" maxlength="20"/></td>
                </tr>
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
        <form id="hForm" name="hForm" action="./findPassHpResult.do" method="post">
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
                  <th scope="row">아이디</th>
                  <td><input id="id" name="id" title="아이디" class="inputText" type="text" value="" maxlength="20"/></td>
                </tr>
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

<%@ include file="../layout/footer2.jsp"%>