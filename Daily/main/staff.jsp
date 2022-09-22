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
            <button type="button" class="month_button">
                <img class="month_button_image" src="../images/left_yellow.png">
            </button>

            <div id="month_output">2022.09.</div>

            <button type="button" class="month_button">
                <img class="month_button_image" src="../images/right_yellow.png">
            </button>
        </div>

        <div id="header_right">
            <div id="staff_name">
                <h2>개발팀원</h2>
                <h1>노진구</h1>
            </div>
        </div>
    </header>

    <main>
        <section>

            <article class="schedule">
                <div class="schedule_up">
                    <div class="schedule_left">
                        <p id="time">09.24. 오후 02:00</p>
                        <p id="content_pc">모의외주 완성</p>
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