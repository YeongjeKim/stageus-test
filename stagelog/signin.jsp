<%@ page language="java" contentType="text/html" pageEncoding="utf-8" %>


<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Stagelog</title>
    <link rel="stylesheet" type="text/css" href="stagelog.css">
    <style>
        a {
            padding-left: 10px;
            padding-right: 10px;
            text-decoration: none;
            color: #3F79ED;
        }
        a:hover {
            text-decoration: underline;
        }
    </style>
</head>

<body id="index_body">

    <div id="index_main">
        <img id="index_logo" src="images/stageus_logo_black.png">

        <form action="signin_action.jsp" id="index_login">
            <input name="id_value" class="index_login_input" type="text" placeholder=" 아이디 입력">
            <input name="pw_value" class="index_login_input" type="password" placeholder=" 비밀번호 입력">

            <input id="index_login_button" type="submit" value="로그인">
        </form>

        <div id="index_footer">
            <!-- 이 부분 <a>의 CSS는 파일분리를 하지않고 현재 파일의 상단에 설정하였습니다. -->
            <a href="signup.jsp">회원가입</a>
            <a>아이디 찾기</a>
            <a>비밀번호 찾기</a>
        </div>
    </div>

    <%-- <script src="stagelog.js"></script> --%>
</body>