<%@ page language="java" contentType="text/html" pageEncoding="utf-8" %>

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Daily</title>
    <link rel="shortcut icon" href="../images/Daily.ico">
    <link rel="stylesheet" type="text/css" href="signup.css">
</head>

<body>

    <main>
        <div>
            <a href="../signin/signin.jsp">
                <img id="logo" src="../images/Daily logo black2.png">
            </a>
        </div>

        <form action="signup_action.jsp">
            <section>
                <p>아이디</p>
                <article>
                    <input name="id_value" id="signup_id" class="signup_input" type="text" placeholder="20자 이내" maxlength="20">
                    <button type="button" class="check" onclick="checkIdEvent()">중복확인</button>
                </article>
            </section>

            <section>
                <p>비밀번호</p>
                <article>
                    <input name="pw_value" id="signup_pw" class="signup_input" type="password" placeholder="20자 이내" maxlength="20">
                    <button type="button" id="hide_seek" onclick="showPwEvent()">
                        <img id="hide" class="change" src="../images/invisible.png">
                        <img id="seek" class="change" src="../images/visible.png">
                    </button>
                </article>
            </section>

            <section>
                <p>이름</p>
                <article>
                    <input name="name_value" id="signup_name" class="signup_input" type="text">
                </article>
            </section>

            <section>
                <p>부서</p>
                <article>
                    <select name="team_value" class="signup_select">
                        <option value="development"> 개발팀 </option>
                        <option value="education"> 교육팀 </option>
                        <option value="operation"> 운영팀 </option>
                    </select>
                </article>
            </section>

            <section>
                <p>직급</p>
                <article>
                    <select name="position_value" class="signup_select">
                        <option value="member"> 팀원 </option>
                        <option value="leader"> 팀장 </option>
                        <option value="manager"> 관리자 </option>
                    </select>
                </article>
            </section>

            <section>
                <p>전화번호</p>
                <article>
                    <input name="phone_value" id="signup_phone" class="signup_input" type="text" placeholder="-없이 입력하세요" maxlength="11">
                    <button class="check">중복확인</button>
                </article>
            </section>

            <section>
                <input id="signup_button" type="submit" onclick="checkValueEvent()" value="가입하기">
            </section>

        </form>
    </main>

    <script src="signup.js"></script>

</body>