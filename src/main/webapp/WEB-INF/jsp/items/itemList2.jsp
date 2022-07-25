<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
    <script
            src="https://code.jquery.com/jquery-3.4.1.js"
            integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
            crossorigin="anonymous"></script>
    <style>
        a{
            text-decoration : none;
        }
        table{
            border-collapse: collapse;
            width: 1000px;
            margin-top : 20px;
            text-align: center;
        }
        td, th{
            border : 1px solid black;
            height: 50px;
        }
        th{
            font-size : 17px;
        }
        thead{
            font-weight: 700;
        }
        .table_wrap{
            margin : 50px 0 0 50px;
        }
        .bno_width{
            width: 12%;
        }
        .writer_width{
            width: 20%;
        }
        .regdate_width{
            width: 15%;
        }
        .updatedate_width{
            width: 15%;
        }
        .top_btn{
            font-size: 20px;
            padding: 6px 12px;
            background-color: #fff;
            border: 1px solid #ddd;
            font-weight: 600;
        }
    </style>
</head>
<body>
<h1>상담요청 리스트</h1>

<div class="table_wrap">
    <table>
        <thead>
        <tr>
            <th class="bno_width">번호</th>
            <th class="title_width">상담요청 환자</th>
            <th class="writer_width">진료 과목</th>
            <th class="regdate_width">상담신청일</th>
            <button>상담요청 수락</button>
        </tr>
        </thead>
        <tr>
            <td>1</td>
            <td>환자1</td>
            <td>가정의학과</td>
            <td>2022/07/07</td>
        </tr>
        <tr>
            <td>2</td>
            <td>환자2</td>
            <td>가정의학과</td>
            <td>2022/07/08</td>
        </tr>
    </table>
</div>

<script>
    $(document).ready(function(){

        let result = '<c:out value="${result}"/>';

        checkAlert(result);

        function checkAlert(result){

            if(result === ''){
                return;
            }

            if(result === "enrol success"){
                alert("등록이 완료되었습니다.");
            }

        }

    });
</script>

</body>
</html>