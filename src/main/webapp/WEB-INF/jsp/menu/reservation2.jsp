<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page import="java.util.Enumeration" %>



<% Enumeration enu = request.getParameterNames(); %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>E-healthcare</title>
    <link rel="stylesheet" href="/css/style0.css">

    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="format-detection" content="telephone=no">
    <link rel="shortcut icon" href="/images/logo6.png" type="image/x-icon"/>

    <link rel="stylesheet" href="/css/base.css">
    <link rel="stylesheet" href="/css/common.css">
    <link rel="stylesheet" href="/css/content.css">
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"
          integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous" />
</head>

<body>
    <!-- JoinForm.jsp에서 입력한 정보를 넘겨 받아 처리한다. -->
    <%
        // 한글 깨짐을 방지하기 위한 인코딩 처리
        request.setCharacterEncoding("euc-kr");

        // getParameter()를 이용해 넘겨진 파라미터 값을 얻어올 수 있다.
        // 파라미터 값을 얻을때 name= 에 지정해둔 값과 동일한 값을 인자로 지정해야 된다.
        String name = request.getParameter("name");
        String number = request.getParameter("number");
        String medicineName = request.getParameter("medicineName");

        String doctorNum = request.getParameter("doctorNum");
        String healthcare = request.getParameter("healthcare");

        String dosage = request.getParameter("dosage");
        String times = request.getParameter("times");
        String totalDay = request.getParameter("totalDay");

    %>
<div class="container">
    <main class="loginMain">
        <!--회원가입섹션-->
        <section class="login">
            <article class="login__form__container">

                <!--상담신청 폼-->
                <div class="login__form">
                    <!--로고-->
                    <h1><img src="/images/logo6.png" alt=""></h1>
                    <h1>E-healthcare 처방전</h1>
                    <p>처방전에 입력한 내용이 맞는지 확인해 주십시오.</p>
                    <!--로고end-->
                    <table border="1" width="500px" >
                        <tr bgcolor="green" align ="center">
                            <p><td colspan = "6" span style="color:white"> 처 방 전</td></p>
                        </tr>
                        <tr>
                            <p><td colspan = "2" span>환자이름</td><td colspan = "3" span><%=name %></td></p>
                        </tr>
                        <tr>
                            <p><td colspan = "2" span>환자 주민번호</td><td colspan = "3" span><%=number %></td></p>
                        </tr>
                        <tr><td></td><td></td><td></td><td></td><td></td></tr>
                        <tr><td></td><td></td><td></td><td></td><td></td></tr>
                        <tr><td></td><td></td><td></td><td></td><td></td></tr>

                        <tr>
                            <p><td colspan = "2" span>처방 의료인 의사 면허번호</td><td colspan = "3" span><%=doctorNum %></td></p>
                        </tr>
                        <tr>
                            <p><td colspan = "2" span>의료기관</td><td colspan = "3" span><%=healthcare %></td></p>
                        </tr>
                        <tr><td></td><td></td><td></td><td></td><td></td></tr>
                        <tr><td></td><td></td><td></td><td></td><td></td></tr>
                        <tr><td></td><td></td><td></td><td></td><td></td></tr>

                        <tr><th>처방 의약품의 명칭</th><th>1회 투약량</th><th>1회 투여 횟수</th><th>총 투약일수</th><th>용법</tr>

                        <tr><td><%=medicineName %></td><td><%=dosage %></td><td><%=times %></td><td><%=totalDay %></td><td></td></tr>
                        <tr><td><%=medicineName %></td><td><%=dosage %></td><td><%=times %></td><td><%=totalDay %></td><td></td></tr>
                        <tr><td><%=medicineName %></td><td><%=dosage %></td><td><%=times %></td><td><%=totalDay %></td><td></td></tr>
                        <tr><td><%=medicineName %></td><td><%=dosage %></td><td><%=times %></td><td><%=totalDay %></td><td></td></tr>
                        <tr><td></td><td></td><td></td><td></td><td></td></tr>
                        <tr><td></td><td></td><td></td><td></td><td></td></tr>
                        <tr><td></td><td></td><td></td><td></td><td></td></tr>




                        <tr><p><td colspan = "6" span>주사제 처방 내역(원내조제 ㅁ, 원외처방 ㅁ)</td></p></tr>
                        <tr><p><td colspan = "1" span>사용기간</td><td colspan = "2" span>교부일로부터 ( 3 ) 일간</td><td colspan = "3" span>사용 기간 내에 약국에 제출하여야 합니다.</td></p></tr>

                        <tr><p><td colspan = "6" span>의 약 품  조 제  내 역</td></p></tr>
                        <tr><p><td colspan = "2" span>조제기관의 명칭</td><td colspan = "3" span></td></p></tr>
                        <tr><p><td colspan = "2" span>조제약사</td><td colspan = "1" span>서명</td><td colspan = "2" span>(서명 또는 날인)</td></p></tr>
                        <tr><p><td colspan = "2" span>조제량(조제일수)</td><td colspan = "3" span></td></p></tr>
                        <tr><p><td colspan = "2" span>조제년월일</td><td colspan = "3" span></td></p></tr>


                   </table>

                    <div class="btnWrap" style="float: right;">
                        <button style="float: right;" class="btnType03 btnBig" id="nextBtn" onclick="suc()">Submit</button>
                        <button style="float: right;" class="btnType03 btnBig" id="nextBtn" onclick=location.href="/menu/reservation">수정</button>
                    </div>

                </div>
                <!--상담신청 폼end-->

            </article>
        </section>
    </main>
</div>

</body>

</html>

<script>
    function suc() {
        alert("처방전이 제출되었습니다.");
        location.href="/items";
    }
</script>