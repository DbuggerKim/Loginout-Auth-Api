<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <!--          meta 선언          -->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!--          link 선언          -->
    <link rel="stylesheet" href="../css/style.css">
    <link rel="stylesheet" href="../css/style_login.css">

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
            <div class="nav_container" id="nav_menu">
                <div class="login_container">
                    <ul class="login">
                        <li class="menu_login"><a class="menu_title" href="./login.jsp">로그인</a></li>
                        <li class="menu_join"><a class="menu_title" href="./join.jsp">회원가입</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </header>

    <div class="login_containers">
        <h2>
            로그인
        </h2>
        <form method="post" action="./login_Action.jsp">
            <h3>아이디</h3>
            <div class="loginID">
                <input type="text" class="input" placeholder="아이디" name="userID" maxlength="20">
            </div>
            <h3>비밀번호</h3>
            <div class="loginPassword">
                <input type="password" class="input" placeholder="비밀번호" name="userPassword" maxlength="20">
            </div>
            <input type="submit" class="bt_login" value="로그인">
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
