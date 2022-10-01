<%@ page language="java" contentType="text/html" pageEncoding="utf-8" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %> 
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.util.ArrayList" %>

<%
    request.setCharacterEncoding("utf-8");

    String idValue = request.getParameter("id_value");

    Class.forName("com.mysql.jdbc.Driver");
    Connection connect = DriverManager.getConnection("jdbc:mysql://localhost:3306/daily", "yeongje", "1234");

    String sql = "SELECT * FROM user WHERE user_id=?";
    PreparedStatement query = connect.prepareStatement(sql);
    query.setString(1, idValue);

    ResultSet result = query.executeQuery();

    ArrayList<ArrayList<String>> data = new ArrayList<ArrayList<String>>();
    while(result.next()) {
        ArrayList<String> tmpData = new ArrayList<String>();
        tmpData.add(result.getString(1));
        data.add(tmpData);
    }
    
    Boolean checkId = false;
    if (data.size() >= 1) {
        checkId = true;
    }
%>

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Daily</title>
    <link rel="shortcut icon" href="./Daily/images/Daily.ico">
</head>

<body>
    <script>
        window.onload = function() {
            var checkId = <%=checkId%>
            var data = <%=data%>
            var idValue = <%= idValue %>

            console.log(idValue)

            if (checkId == true) {
                alert("이 아이디는 사용할 수 없습니다.")
            }
            else {
                alert("이 아이디는 사용 가능합니다.")
            }

        }
    </script>
</body>