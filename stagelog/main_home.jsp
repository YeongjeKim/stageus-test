<%@ page language="java" contentType="text/html" pageEncoding="utf-8" %>

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Stagelog</title>
    <link rel="stylesheet" type="text/css" href="stagelog.css">
</head>

<body>
    <header>
        <div id="header_left">
            <a id="home_button" href="home.html">
                <img id="home_button_light" src="images/stageus_logo_black.png">
                <img id="home_button_dark" src="images/stageus_logo_white.png">
            </a>
        </div>
        <div id="header_right">
            <a class="header_button" href="upload.html">
                <img class="header_button_image" src="images/upload.png">
            </a>
            <a class="header_button" href="profile.html">
                <img class="header_button_image" src="images/profile.png">
            </a>
        </div>
    </header>

    <main>
        <section>
            <article>
                <h1>자유게시판</h1>
            </article>

            <article>
                <a href="">
                    <h3>작성자</h3>
                    <time>2022-08-31 02:01 </time>
                    <h2>인정받는 개발자 3대 원칙</h2>
                    <p> 
                        작업에 대한 근거를 명확하게 정한 뒤, 최적화된 선택을 하는 원칙<br>
                        문제를 해결만 하는 행동을 지양하고, 원인을 파악해 제거하는 원칙<br>
                        항상 협업을 생각하고, 유지보수와 가독성을 고려하여 개발하는 원칙
                    </p>
                </a>
            </article>
            
        </section>
    </main>

    <script src="stagelog.js"></script>
</body>