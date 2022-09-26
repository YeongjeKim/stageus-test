<%@ page language="java" contentType="text/html" pageEncoding="utf-8" %>

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Daily</title>
    <link rel="shortcut icon" href="../images/Daily.ico">
    <link rel="stylesheet" type="text/css" href="signin.css">
</head>

<body>

    <main>

        <div>
            <img id="logo" src="../images/Daily logo black2.png">
        </div>

        <form action="signin_action.jsp">
            <div id="signin_box">
                <div id="signin_box_up">
                    <input name="id_value" class="signin_input" type="text" placeholder="아이디">
                </div>
                <div id="signin_box_down">
                    <input name="pw_value" class="signin_input" type="password" placeholder="비밀번호">
                </div>
            </div>
            <input id="signin_button" type="submit" value="로그인">
        </form>

        <div id="signin_bottom">
            <a href="../signup/signup.jsp">회원가입</a>
            <a href="../find/findid.jsp">아이디 · 비밀번호 찾기</a>
        </div>

    </main>

</body>