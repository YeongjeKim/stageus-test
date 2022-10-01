<%@ page language="java" contentType="text/html" pageEncoding="utf-8" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %> 
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.util.ArrayList" %>

<%
    request.setCharacterEncoding("utf-8");

    String idValue = request.getParameter("id_value");
    String phoneValue = request.getParameter("phone_value");

    Class.forName("com.mysql.jdbc.Driver");
    Connection connect = DriverManager.getConnection("jdbc:mysql://localhost:3306/daily", "yeongje", "1234");

    String sql = "SELECT * FROM user WHERE user_id=? AND user_phone=?";
    PreparedStatement query = connect.prepareStatement(sql);
    query.setString(1, idValue);
    query.setString(2, phoneValue);

    ResultSet result = query.executeQuery();

    ArrayList<ArrayList<String>> data = new ArrayList<ArrayList<String>>();
    while(result.next()) {
        ArrayList<String> tmpData = new ArrayList<String>();
        tmpData.add("\"" + result.getString(3) + "\"");
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
            var checkId = <%= checkId %>
            var data = <%=data%>

            console.log(data)

            if (checkId == true) {
                alert("회원님의 비밀번호는 " + data[0] + " 입니다")
                var goToLogin = confirm("로그인 페이지로 이동하시겠습니까?")
                if(goToLogin) {
                    location.href = "../signin/signin.jsp"
                }
                else {
                    location.href="findpw.jsp"
                }
            }
            else {
                alert("입력하신 정보를 다시 한번 확인해주세요.")
                location.href="findpw.jsp"
            }
        }
    </script>
</body>