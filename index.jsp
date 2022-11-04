<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html lang="ko">

<head>
    <!--          meta 선언          -->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!--          link 선언          -->
    <link rel="stylesheet" href="./css/style.css">
    <link rel="stylesheet" href="./css/style_index.css">

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
                <a href="./index.jsp">HOME</a>
            </div>
            <div class="nav_container" id="nav_menu">
                <div class="login_container">
                    <ul class="login">
                        <li class="menu_login"><a class="menu_title" href="./member/login.jsp">로그인</a></li>
                        <li class="menu_join"><a class="menu_title" href="./member/login.jsp">회원가입</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </header>

    <div class="main_container">
        <div class="conB">
            <div class="conB_title">
                <h3>About</h3>
            </div>
            <div class="conB_container">
                <div class="conB_small_container">
                    <div class="conB_icon">
                        <i class="fas fa-code icon"></i>
                    </div>
                    <div class="conB_content">
                        <h3>Title 1</h3>
                        <p>Index 1</p>
                    </div>
                </div>
                <div class="conB_small_container">
                    <div class="conB_icon">
                        <i class="fas fa-cogs icon"></i>
                    </div>
                    <div class="conB_content">
                        <h3>Title 2</h3>
                        <p>Index 2</p>
                    </div>
                </div>
                <div class="conB_small_container">
                    <div class="conB_icon">
                        <i class="fas fa-plane icon"></i>
                    </div>
                    <div class="conB_content">
                        <h3>Title 3</h3>
                        <p>Index 3</p>
                    </div>
                </div>
            </div>
        </div>
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
