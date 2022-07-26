<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!--#include virtual="dbcon.asp"-->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.0.0/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />

<a href="#applicationView">대관신청 조회하기</a>

<div id="applicationView" class="modal">
    <div id="apViewContent">
        <form method="post" name="f2">
            <h4>대관신청 조회하기</h4>
            <table width="600" style="border-collapse:collapse;" border="1">
                <tr>
                    <td style="width:180px;">신청자명 </td>
                    <td ><input type="text" id="f2_name" name="name" value="" maxlength="10"></td>
                </tr>
                <tr>
                    <td>휴대폰번호</td>
                    <td><input type="text" id="f2_hp" name="hp" value="" placeholder="'-' 없이 숫자만 입력" maxlength="11"></td>
                </tr>
            </table>
            <p style="text-align:center;padding:14px;"><input type="button" value="조회하기" onclick="applyViewChk()"/></p>
        </form>
    </div>
</div>

<script>
    $('a[href="#applicationView"]').click(function(event) {
        event.preventDefault();

        $(this).modal({
            fadeDuration: 250,
            /*
                  escapeClose: false,
                  clickClose: false,
                  showClose: false
            */
        });
    });
    function applyViewChk() {
        var form = document.f2;
        if (!form.name.value) {
            alert("신청자명을 입력해 주십시오.");
            form.name.focus();
            return;
        }
        if (!form.hp.value) {
            alert("휴대폰번호를 입력해 주십시오.");
            form.hp.focus();
            return;
        }

    }

</script>
