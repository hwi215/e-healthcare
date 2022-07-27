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
                    <p>아무말</p>
                    <!--로고end-->

                    <!--상담신청 인풋-->
                    <form class="login__input"  action="/items/new" method="post">
                        <tr>
                            <td>이름 : <input type="text" name="name" size="20"></td>
                        </tr>
                        <tr>
                            <td>증상 : <input type="text" name="name" size="20"></td>
                        </tr>
                        <input type="text" name="name" placeholder="환자이름" required="required"  maxlength="30"/>
                        <input type="text" name="price" placeholder="의사이름" required="required" />
                        <input type="text" name="quantity" placeholder="진료분야" required="required" />
                        <input type="text" name="note" placeholder="증상" required="required" />
                        <button onclick="suc()">상담신청</button>
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