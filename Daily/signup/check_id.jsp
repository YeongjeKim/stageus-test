<%@ page language="java" contentType="text/html" pageEncoding="utf-8" %>

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Daily</title>
    <link rel="shortcut icon" href="./Daily/images/Daily.ico">
    <link rel="stylesheet" type="text/css" href="signup.css">
</head>

<body>
    <main id="check_main">
        <h1>아이디 중복확인</h1>
        <form id="check_form">
            <div>
                <input type="text" id="check_input" disabled>
                <input type="button" id="check_button" value="중복확인">
            </div>
            <div id="check_notify">
                <p id="noftify_none">아이디가 입력되지 않았습니다.</p>
                <p id="noftify_impossible">사용 불가능한 아이디입니다.</p>
                <p id="noftify_possible">사용 가능한 아이디입니다.</p>
            </div>
            <input type="button" id="check_escape" value="취소">
            <input type="button" id="check_use" value="사용하기">
        </form>
    </main>
</body>