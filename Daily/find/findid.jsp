<%@ page language="java" contentType="text/html" pageEncoding="utf-8" %>

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Daily</title>
    <link rel="shortcut icon" href="../images/Daily.ico">
    <link rel="stylesheet" type="text/css" href="find.css">
</head>

<body>

    <main>
        <div>
            <a href="../signin/signin.jsp">
                <img id="logo" src="../images/Daily logo black2.png">
            </a>
        </div>

        <form action="findid_action.jsp" id="find_id">
            <div id="find_top">
                <a href="findid.jsp" id="findid_title" class="find_top_title">ID 찾기</a>
                <a href="findpw.jsp" id="findid_subtitle" class="find_top_title">비밀번호 찾기</a>
            </div>

            <P>다음 정보를 올바르게 입력해 주세요.</P>
            <div id="find_box">
                <div id="find_box_up">
                    <input name="name_value" id="find_id_name" class="find_input" type="text" placeholder="이름">
                </div>
                <div id="find_box_down">
                    <input name="phone_value" id="find_id_phone" class="find_input" type="text" placeholder="전화번호 (-없이 입력하세요)">
                </div>
            </div>
            <input id="find_button" type="button" value="ID 조회하기" onclick="findIdEvent()">
        </form>

        <div id="find_bottom">
            <a href="../signin/signin.jsp">로그인</a>
            <a href="../signup/signup.jsp">회원가입</a>
        </div>
    </main>

    <script src="find.js"></script>

</body>