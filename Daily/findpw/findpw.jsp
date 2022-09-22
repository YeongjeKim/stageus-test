<%@ page language="java" contentType="text/html" pageEncoding="utf-8" %>

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Daily</title>
    <link rel="shortcut icon" href="../images/Daily.ico">
    <link rel="stylesheet" type="text/css" href="findpw.css">
</head>

<body>

    <main>
        <div>
            <a href="../signin/signin.jsp">
                <img id="logo" src="../images/Daily logo black2.png">
            </a>
        </div>

        <form action="findpw_action.jsp">
            <div id="findpw_top">
                <a href="../findid/findid.jsp" id="subtitle" class="findpw_top_title">ID 찾기</a>
                <a href="findpw.jsp" id="title" class="findpw_top_title">비밀번호 찾기</a>
            </div>

            <P>다음 정보를 올바르게 입력해 주세요.</P>
            <div id="findpw_box">
                <div id="findpw_box_up">
                    <input name="id_value" class="findpw_input" type="text" placeholder="아이디">
                </div>
                <div id="findpw_box_down">
                    <input name="phone_value" class="findpw_input" type="text" placeholder="전화번호 (-없이 입력하세요)">
                </div>
            </div>
            <input id="findpw_button" type="submit" value="비밀번호 조회하기">
        </form>

        <div id="findpw_bottom">
            <a href="../signin/signin.jsp">로그인</a>
            <a href="../signup/signup.jsp">회원가입</a>
        </div>
    </main>

</body>