<%@ page language="java" contentType="text/html" pageEncoding="utf-8" %>

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Daily</title>
    <link rel="shortcut icon" href="../images/Daily.ico">
    <link rel="stylesheet" type="text/css" href="main.css">
</head>

<body>
    <header>
        <div id="header_left">
            <button type="button" id="nav_button" class="header_button" onclick="showNavEvent()">
                <img class="header_button_image" src="../images/menu.png">
            </button>

            <a href="main.jsp">
                <img id="logo" src="../images/Daily logo black2.png">
                <img id="logo_mobile" src="../images/Daily logo simple.png">
            </a>
        </div>

        <div id="header_middle">
            <button type="button" class="month_button">
                <img class="month_button_image" src="../images/left_yellow.png">
            </button>

            <div id="month_output">2022.09.</div>

            <button type="button" class="month_button">
                <img class="month_button_image" src="../images/right_yellow.png">
            </button>
        </div>

        <div id="header_right">
            <button type="button" class="header_button" onclick="showProfileMenuEvent()">
                <img class="header_button_image" src="../images/profile.png">
            </button>

            <div id="profile_menu">
                <button type="submit" class="profile_menu_category">로그아웃</button>
                <button type="submit" class="profile_menu_category">회원탈퇴</button>
            </div>
        </div>
    </header>

    <nav id="staff_list">
        일정을 확인할 팀원의 이름을 클릭하세요.
        <div class="staff_team">
            개발팀
            <a href="staff.jsp" class="staff_name">노진구</a>
            <a class="staff_name">이슬이</a>
            <a class="staff_name">퉁퉁이</a>
            <a class="staff_name">비실이</a>
        </div>
        <div class="staff_team">
            교육팀
            <a class="staff_name">고길동</a>
            <a class="staff_name">마이콜</a>
            <a class="staff_name">희동이</a>
        </div>
        <div class="staff_team">
            운영팀
            <a class="staff_name">신짱구</a>
            <a class="staff_name">김철수</a>
            <a class="staff_name">한유리</a>
            <a class="staff_name">이훈이</a>
            <a class="staff_name">맹구</a>
        </div>
    </nav>

    <main>
        <section>

            <article class="upload">
                <form action="main_action.jsp">
                    <div class="upload_up">
                        <input name="time_value" class="upload_datetime" type="datetime-local">
                        <button type="submit" class="upload_button">
                            <img class="upload_button_image" src="../images/save.png">
                        </button>
                    </div>
                    <div class="upload_down">
                        <input name="memo_value" class="upload_memo" type="text" maxlength="100" placeholder="새로운 일정을 등록하세요!">
                    </div>
                </form>
            </article>

            <article class="schedule">
                <div class="schedule_up">
                    <div class="schedule_left">
                        <p id="time">09.24. 오후 02:00</p>
                        <p id="content_pc">모의외주 완성</p>
                    </div>
                    <div class="schedule_right">
                        <button type="button" class="schedule_button">
                            <img class="schedule_button_image" src="../images/edit.png">
                        </button>
                        <button type="button" class="schedule_button">
                            <img class="schedule_button_image" src="../images/delete.png">
                        </button>
                    </div>
                </div>
                <div class="schedule_down">
                    <p id="content_mobile">모의외주 완성</p>
                </div>
            </article>


        </section>
    </main>


    <script src="main.js"></script>

</body>