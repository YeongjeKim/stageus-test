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
            <button id="nav_button" class="header_button" onclick="showNav()">
                <img class="header_button_image" src="../images/menu.png">
            </button>

            <a href="main.jsp">
                <img id="logo" src="../images/Daily logo black2.png">
                <img id="logo_mobile" src="../images/Daily logo simple.png">
            </a>
        </div>

        <div id="header_middle">
            <button class="month_button">
                <img class="month_button_image" src="../images/left_yellow.png">
            </button>

            <div id="month_output">2022.09.</div>

            <button class="month_button">
                <img class="month_button_image" src="../images/right_yellow.png">
            </button>
        </div>

        <div id="header_right">
            <button class="header_button" onclick="showProfileMenu()">
                <img class="header_button_image" src="../images/profile.png">
            </button>

            <div id="profile_menu">
                <button class="profile_menu_category">로그아웃</button>
                <button class="profile_menu_category">회원탈퇴</button>
            </div>
        </div>
    </header>

    <nav id="staff_list">
        일정을 확인할 팀원의 이름을 클릭하세요.
        <div class="staff_team">
            개발팀
            <a class="staff_name">김아무개</a>
            <a class="staff_name">박아무개</a>
        </div>
        <div class="staff_team">
            교육팀
            <a class="staff_name">고길동</a>
            <a class="staff_name">홍길동</a>
        </div>
        <div class="staff_team">
            운영팀
            <a class="staff_name">철수</a>
            <a class="staff_name">영희</a>
        </div>
    </nav>

    <main>
        <section>

            <article class="upload">
                <div class="upload_up">
                    <input class="upload_datetime" type="datetime-local">
                    <button class="upload_button">
                        <img class="upload_button_image" src="../images/save.png">
                    </button>
                </div>
                <div class="upload_down">
                    <input class="upload_memo" type="text" maxlength="100" placeholder="새로운 일정을 등록하세요!">
                </div>
            </article>

            <article class="scedule">
                <div class="scedule_left">
                    <p id="time">09.22. 오후 02:00</p>
                    <p id="content">과제 제출</p>
                </div>
                <div class="scedule_right">
                    <button class="scedule_button">
                        <img class="scedule_button_image" src="../images/edit.png">
                    </button>
                    <button class="scedule_button">
                        <img class="scedule_button_image" src="../images/delete.png">
                    </button>
                </div>
            </article>


        </section>
    </main>


    <script src="main.js"></script>

</body>