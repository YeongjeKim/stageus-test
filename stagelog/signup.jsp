<%@ page language="java" contentType="text/html" pageEncoding="utf-8" %>

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Stagelog</title>
    <link rel="stylesheet" type="text/css" href="stagelog.css">
    <style>
        span {
            font-size: 20px;
            padding-top: 5px;
            font-family: 'IBM Plex Sans KR', sans-serif;
            color: #767676;
        }
        p {
            margin: 0px;
            font-family: 'IBM Plex Sans KR', sans-serif;
            font-size: 16px;
            margin-top: 15px;
            margin-bottom: 5px;
        }
        a {
            text-decoration: none;
            color: #767676;
        }
        a:hover {
            color: #3F79ED;
        }
    </style>
</head>

<body>
    <main id="join_main">
        <img id="join_logo" src="images/stageus_logo_black.png">

        <form action="signup_action.jsp" id="join_form">
            <section class="join_section">
                <p>아이디</p>
                <div class="join_section_form">
                    <input name="id_value" class="join_section_input" type="text">
                    <%-- 버튼 만들어서 중복확인 --%>
                </div>

                <p>비밀번호</p>
                <div class="join_section_form">
                    <input name="pw_value" class="join_section_input" type="password">

                </div>
                
                <p>비밀번호 확인</p>
                <div class="join_section_form">
                    <input class="join_section_input" type="password">
                </div>
            </section>

            <section class="join_section">
                <p>닉네임</p>
                <div class="join_section_form">
                    <input name="nn_value" class="join_section_input" type="text">
                </div>
            </section>

            <section class="join_section">
                <p>이메일 (선택)</p>
                <div class="join_section_form">
                    <input name="mail_id" id="join_section_email" type="text">
                    <span>@</span>
                    <select id="join_section_address" name="mail_address">
                        <option selected>이메일을 선택하세요</option>
                        <option value="@gmail.com"> gmail.com </option>
                        <option value="@naver.com"> naver.com </option>
                        <option value="@inha.edu"> inha.edu </option>
                    </select>
                </div>

                <p>전화번호 (선택)</p>
                <div class="join_section_form">
                    <input name="phone_start" class="join_section_phone" type="text" placeholder="010" maxlength="3">
                    <span>-</span>
                    <input name="phone_middle" class="join_section_phone" type="text" maxlength="4">
                    <span>-</span>
                    <input name="phone_end" class="join_section_phone" type="text" maxlength="4">
                </div>

                <%-- <p>생년월일 (선택)</p>
                <div class="join_section_form">
                    <input class="join_section_birth" type="text" placeholder="년(4자)" maxlength="4">
                    <select id="join_section_month" value="month">
                        <option selected> 월 </option>
                        <!-- 월은 자바스크립트 반복문으로 구현했습니다 -->
                    </select>
                    <input class="join_section_birth" type="text" placeholder="일" maxlength="2">
                </div> --%>

                <p>생년월일 (선택)</p>
                <div class="join_section_form">
                    <input name="birth_value" class="join_section_input" type="date">
                </div>
                <div class="join_section_form">
                    <input name="birth_value" class="join_section_input" type="time">
                </div>
            </section>

            <section class="join_section">
                <input id="join_button" type="submit" value="가입하기">
            </section>
        </form>

        <%-- <a href="home.jsp">홈페이지로</a> --%>
    </main>
    
    <script>
        window.onload = function() {
            for (var index = 0; index <12; index++) {
                var tmpDiv = document.createElement("option")
                tmpDiv.innerHTML = index + 1
                // tmpDiv.value = index + 1
                document.getElementById("join_section_month").appendChild(tmpDiv)
            }
        }
    </script>
</body>