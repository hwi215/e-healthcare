<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Photogram</title>
    <link rel="stylesheet" href="/css/style.css">
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"
          integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous" />
</head>

<body>
<div class="container">
    <main class="loginMain">
        <!--회원가입섹션-->
        <section class="login">
            <article class="login__form__container">

                <!--회원가입 폼-->
                <div class="login__form">

                    <!--회원가입 인풋-->
                    <form class="login__input"  action="/items/new" method="post">
                        <input type="text" name="name" placeholder="name" required="required"  maxlength="30"/>
                        <input type="text" name="price" placeholder="price" required="required" />
                        <input type="text" name="quantity" placeholder="quantity" required="required" />
                        <button>Submit</button>
                    </form>
                    <!--회원가입 인풋end-->
                </div>
                <!--회원가입 폼end-->

            </article>
        </section>
    </main>
</div>
</body>

</html>