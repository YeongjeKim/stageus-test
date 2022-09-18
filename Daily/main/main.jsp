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
            <button id="profile_button">
                <img id="profile_image" src="../images/profile.png">
            </button>
        </div>
    </header>

    <nav></nav>

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

</body>