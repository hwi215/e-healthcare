<tbody>
<tr class="email">
    <th>
        <label>이메일</label>
    </th>
    <td>
        <p>
            <input id="sm_email" type="text" name="sm_email" title="이메일 주소를 입력해주세요." required/>
            <span id="emailChk" class="doubleChk">인증번호 보내기</span><br/>
            <input id="sm_email2" type="text" name="sm_email2" title="인증번호 입력" disabled required/>
            <span id="emailChk2" class="doubleChk">이메일인증</span>
            <span class="point successEmailChk">이메일 입력후 인증번호 보내기를 해주십시오.</span>
            <input type="hidden" id="emailDoubleChk"/>
        </p>
        <p class="tip">
            아이디 비밀번호 분실시 필요한 정보이므로, 정확하게 기입해 주십시오.
        </p>
    </td>
</tr>
</center>

</tbody>


//


<div class="boardTypeForm">
    <table>
        <colgroup>
            <col style="width: 140px;">
            <col style="width: auto;">
        </colgroup>
        <form action="/auth/email?cmd=signupStep2" method="POST">
            <br>이메일 입력후 인증번호 보내기를 해주십시오.</br>
            <input type="email" name="email" placeholder="email" title="이메일 주소를 입력해주세요." />
            <button type="button" >인증번호 보내기</button><br />
            <input type="text" name="text" placeholder="인증번호" title="인증번호를 입력해주세요." /><br />
        </form>

        <button type="button" class="btn btn-primary" id="mail-Check-Btn">본인인증</button>

    </table>
</div>



//

<table>
    <colgroup>
        <col style="width: 140px;">
        <col style="width: auto;">
    </colgroup>
    <form action="/auth/email?cmd=signupStep2" method="POST">
        <br>이메일 입력후 인증번호 보내기를 해주십시오.</br>
        <input type="email" name="email" placeholder="email" title="이메일 주소를 입력해주세요." />
        <button type="button" >인증번호 보내기</button><br />
        <input type="text" name="text" placeholder="인증번호" title="인증번호를 입력해주세요." /><br />
    </form></br>

</table>


//



<form id="login__input" action="/auth/signin" method="POST">
    <fieldset>
        <legend>로그인</legend>
        <input type="text" name="username" placeholder="아이디" required="required"/>
        <input type="password" name="password" placeholder="비밀번호" required="required" />
        <div class="btnWrap">
            <button id="loginBtn" class="btnType03 btnBig">로그인</button>
            <a href="/main" class="btnType01 btnBig" role="button">처음화면가기</a>
        </div>
    </fieldset>
</form>