<%@ page language="java" contentType="text/html" pageEncoding="utf-8" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %> 

<% 
    request.setCharacterEncoding("utf-8");

    String idValue = request.getParameter("id_value");
    String pwValue = request.getParameter("pw_value");
    String nameValue = request.getParameter("name_value");
    String teamValue = request.getParameter("team_value");
    String positionValue = request.getParameter("position_value");
    String phoneValue = request.getParameter("phone_value");

    Class.forName("com.mysql.jdbc.Driver");
    Connection connect = DriverManager.getConnection("jdbc:mysql://localhost:3306/daily", "yeongje", "1234");

    String sql = "INSERT INTO user(user_id, user_pw, user_name, user_team, user_position, user_phone) VALUES(?, ?, ?, ?, ?, ?)";
    PreparedStatement query = connect.prepareStatement(sql);
    query.setString(1, idValue);
    query.setString(2, pwValue);
    query.setString(3, nameValue);
    query.setString(4, teamValue);
    query.setString(5, positionValue);
    query.setString(6, phoneValue);

    query.executeUpdate();
%>

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Daily</title>
    <link rel="shortcut icon" href="../images/Daily.ico">
</head>

<body>
    <script>
        window.onload = function() {
            // if(id.length==0 || id=="") {
            //     alert("아이디를 입력해주세요.")
            // }
            else {
                alert("회원가입을 축하합니다. 다시 로그인해주세요.")
                location.href="../signin/signin.jsp"
            }
        }
    </script>
</body>