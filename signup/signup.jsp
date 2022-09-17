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
            <img id="logo" src="../images/Daily logo black2.png">
        </div>

        <form>
            <section>
                <p>아이디</p>
                <article>
                    <input name="id_value" class="signup_input" type="text" placeholder="20자 이내" maxlength="20">
                    <button class="check">중복확인</button>
                </article>
            </section>

            <section>
                <p>비밀번호</p>
                <article>
                    <input name="pw_value" class="signup_input" type="password" placeholder="20자 이내" maxlength="20">
                    <button id="hide_seek">
                        <img id="hide" src="../images/invisible.png">
                    </button>
                </article>
            </section>

            <section>
                <p>이름</p>
                <article>
                    <input name="name_value" class="signup_input" type="text">
                </article>
            </section>

            <section>
                <p>부서</p>
                <article>
                    <select name="team_value" class="signup_select">
                        <option value="개발팀"> 개발팀 </option>
                        <option value="교육팀"> 교육팀 </option>
                        <option value="운영팀"> 운영팀 </option>
                    </select>
                </article>
            </section>

            <section>
                <p>직급</p>
                <article>
                    <select name="position_value" class="signup_select">
                        <option value="팀원"> 팀원 </option>
                        <option value="팀장"> 팀장 </option>
                        <option value="관리자"> 관리자 </option>
                    </select>
                </article>
            </section>

            <section>
                <p>전화번호</p>
                <article>
                    <input name="phone_value" class="signup_input" type="text" placeholder="-없이 입력하세요" maxlength="11">
                    <button class="check">중복확인</button>
                </article>
            </section>

            <section>
                <input id="signup_button" type="submit" value="가입하기">
            </section>

        </form>
    </main>

</body>