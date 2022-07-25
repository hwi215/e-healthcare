// (1) 회원정보 수정
function update(userId, event) {
    event.preventDefault(); // 폼태그 액션을 막기!!

    let data = $("#profileUpdate").serialize(); // key=value

    console.log(data);

    $.ajax({
        type: "put",
        url : `/api/user/${userId}`,
        data: data,
        contentType: "application/x-www-form-urlencoded; charset=utf-8",
        dataType: "json"
    }).done(res=>{ // HttpStatus 상태코드 200번대
        console.log("성공", res);
        location.href = `/user/${userId}`;
    }).fail(error=>{ // HttpStatus 상태코드 200번대가 아닐 때
        if(error.data == null){
            alert(error.responseJSON.message);
        }else{
            alert(JSON.stringify(error.responseJSON.data));
        }
    });

    //이메일 인증번호 대조
    $("#emailChk2").click(function(){
        if($("#sm_email2").val() == code){
            $(".successEmailChk").text("인증번호가 일치합니다.");
            $(".successEmailChk").css("color","green");
            $("#emailDoubleChk").val("true");
            $("#sm_email2").attr("disabled",true);
            //$("#sm_email").attr("disabled",true);
        }else{
            $(".successEmailChk").text("인증번호가 일치하지 않습니다. 확인해주시기 바랍니다.");
            $(".successEmailChk").css("color","red");
            $("#emailDoubleChk").val("false");
            $("#sm_email2").attr("autofocus",true);
        }
    });
}