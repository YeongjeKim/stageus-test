<%@ page language="java" contentType="text/html" pageEncoding="utf-8" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %> 

<% 
    request.setCharacterEncoding("utf-8");

    String idValue = request.getParameter("id_value");
    String pwValue = request.getParameter("pw_value");
    String nnValue = request.getParameter("nn_value");
    String mailId = request.getParameter("mail_id");
    String mailAddress = request.getParameter("mail_address");
    String phoneStrat = request.getParameter("phone_start");
    String phoneMiddle = request.getParameter("phone_middle");
    String phoneEnd = request.getParameter("phone_end");
    String birthValue = request.getParameter("birth_value");

    Class.forName("com.mysql.jdbc.Driver");
    Connection connect = DriverManager.getConnection("jdbc:mysql://localhost:3306/stagelog", "yeongje", "1234");

    String sql = "INSERT INTO user(user_id, user_pw, user_nickname, user_email, user_phone, user_birth) VALUES(?, ?, ?, ?, ?, ?)";
    PreparedStatement query = connect.prepareStatement(sql);
    query.setString(1, idValue);
    query.setString(2, pwValue);
    query.setString(3, nnValue);
    query.setString(4, mailId + mailAddress);
    query.setString(5, phoneStrat + phoneMiddle + phoneEnd);
    query.setString(6, birthValue);

    query.executeUpdate();
%>

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Stagelog</title>
</head>

<body>
    <%-- <h1>hello</h1> --%>

    <script>
        alert("회원가입을 축하합니다. 다시 로그인해주세요.")
        location.href="signin.jsp"
    </script>
</body>