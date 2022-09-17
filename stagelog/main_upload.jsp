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
            <a id="home_button" href="main_home.jsp">
                <img id="home_button_light" src="images/stageus_logo_black.png">
                <img id="home_button_dark" src="images/stageus_logo_white.png">
            </a>
        </div>
        <div id="header_right">
            <a class="header_button" href="main_upload.jsp">
                <img class="header_button_image" src="images/upload.png">
            </a>
            <a class="header_button" href="profile.html">
                <img class="header_button_image" src="images/profile.png">
            </a>
        </div>
    </header>

    <main id="upload_main">
        <section>
            <article>
                <h1>게시물 작성하기</h1>
            </article>

            <article>
                <form action="main_uplaod_action.jsp">
                    <table id="upload_table">
                        <tr>
                            <td class="upload_name">
                                <h2>제목</h2>
                            </td>
                            <td class="upload_form">
                                <input name="post_title" id="upload_title" class="upload_input" type="text" palceholder="글 제목">
                            </td>
                        </tr>

                        <tr>
                            <td class="upload_name">
                                <h2>본문</h2>
                            </td>
                            <td class="upload_form">
                                <input name="post_content" id="upload_content" class="upload_input" type="text">
                            </td>
                        </tr>
                    </table>

                    <div id="upload_button_frame">
                        <input id="upload_button" type="submit" value="게시하기">
                    </div>
                </form>
            </article>
        </section>

        
    </main>
    
    <script src="stagelog.js"></script>
</body>