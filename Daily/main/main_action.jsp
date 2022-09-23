<%@ page language="java" contentType="text/html" pageEncoding="utf-8" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %> 

<% 
    request.setCharacterEncoding("utf-8");

    // String idValue = request.getParameter("id_value");
    String timeValue = request.getParameter("time_value");
    String memoValue = request.getParameter("memo_value");

    Class.forName("com.mysql.jdbc.Driver");
    Connection connect = DriverManager.getConnection("jdbc:mysql://localhost:3306/daily", "yeongje", "1234");

    String sql = "INSERT INTO schedule(user_code, schedule_time, schedule_memo) VALUES(?, ?, ?)";
    PreparedStatement query = connect.prepareStatement(sql);
    // query.setString(1, idValue);
    query.setString(2, timeValue);
    query.setString(3, memoValue);

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
            alert("일정을 등록하였습니다.")
            location.href="main.jsp"
        }
    </script>
</body>