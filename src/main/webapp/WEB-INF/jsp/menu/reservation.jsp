<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
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
<div class="container">
    <main class="loginMain">
        <!--회원가입섹션-->
        <section class="login">
            <article class="login__form__container">

                <!--상담신청 폼-->
                <div class="login__form">
                    <!--로고-->
                    <h1><img src="/images/logo6.png" alt=""></h1>
                    <h1>E-healthcare 처방전 작성</h1>
                    <p>환자 및 의료인 정보와 처방 내역을 작성해주십시오.</p>
                    <!--로고end-->

                    <!--상담신청 인풋-->
                    <form class="login__input" action="/menu/reservation" method="post">

                        <table>
                            <tr>
                                <td>환자 이름 : </td>
                                <td>
                                    <input type="text" name="name" size="20">
                                </td>
                            </tr>

                            <tr>
                                <td>환자 주민등록번호 : </td>
                                <td>
                                    <input type="text" name="number" size="20">
                                </td>
                            </tr>

                            <tr>
                                <td>의사 면허번호 : </td>
                                <td>
                                    <input type="text" name="doctorNum" size="20">
                                </td>
                            </tr>

                            <tr>
                                <td>의료기관명 : </td>
                                <td>
                                    <input type="text" name="healthcare" size="20">
                                </td>
                            </tr>
                            <tr>
                                <td>처방 의약품의 명칭 : </td>
                                <td>
                                    <input type="text" name="medicineName" size="20">
                                </td>
                            </tr>

                            <tr>
                                <td>1회 투약량 : </td>
                                <td>
                                    <input type="text" name="dosage" size="20">
                                </td>
                            </tr>

                            <tr>
                                <td>1일 투여횟수 : </td>
                                <td>
                                    <input type="text" name="times" size="20">
                                </td>
                            </tr>
                            <tr>
                                <td>총 투약일수 : </td>
                                <td>
                                    <input type="text" name="totalDay" size="20">
                                </td>
                            </tr>

                            <tr>
                                <td>기타 의견사항 : </td>
                                <td>
                                    <input type="text" name="note" size="20">
                                </td>
                            </tr>


                        </table>
                        <tr>
                            <td>
                                <div class="btnWrap" style="float: right;">
                                    <button style="float: right;" class="btnType03 btnBig" id="nextBtn" onclick=location.href="/menu/mypage">Submit</button>
                                </div>
                            </td>
                        </tr>


                    </form>
                    <!--상담신청 인풋end-->
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
        alert("상담 신청 완료!");
    }
</script>