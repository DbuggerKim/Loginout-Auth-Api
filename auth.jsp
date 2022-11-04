<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <!--          meta 선언          -->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!--          link 선언          -->
    <link rel="stylesheet" href="../css/style.css">
    <link rel="stylesheet" href="../css/style_auth.css">

    <!--          script 선언          -->
    <script src="https://kit.fontawesome.com/e1bd1cb2a5.js"></script>
    <script src="https://code.jquery.com/jquery-3.4.1.js"></script>

    <title>
        nel's
    </title>
</head>

<body>
    <header>
        <div class="header_container">
            <div class="logo_container">
                <a href="../index.jsp">HOME</a>
            </div>
        </div>
    </header>

    <div class="join_container">
        <h2>
            핸드폰 번호 인증
        </h2>
        <form method="post" action="./auth_action.jsp">
            <h3>SMS로 전송된 인증번호를 입력하세요.</h3>
            <div class="joinID">
            	<input type="text" class="input" placeholder="인증번호" name="authnum" maxlength="20">
            </div>
            <input value="확인" type="submit" class="bt_join">
        </form>
    </div>

    <footer>
        <div class="footer_container">
            <div class="footA">
                nel's
            </div>
            <div class="footB">
                Copyright © nel's All Rights Reserved.
            </div>
        </div>
    </footer>
</body>

</html>
