<%@ page language="java" contentType="text/html" pageEncoding="utf-8" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %> 
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.util.ArrayList" %>


<%
    request.setCharacterEncoding("utf-8");

    String idValue = request.getParameter("id_value");
    String pwValue = request.getParameter("pw_value");

    Class.forName("com.mysql.jdbc.Driver");
    Connection connect = DriverManager.getConnection("jdbc:mysql://localhost:3306/stagelog", "yeongje", "1234");

    String sql = "SELECT * FROM user WHERE user_id=? AND user_pw=?";
    PreparedStatement query = connect.prepareStatement(sql);
    query.setString(1, idValue);
    query.setString(2, pwValue);

    ResultSet result = query.executeQuery();

    ArrayList<ArrayList<String>> data = new ArrayList<ArrayList<String>>();
    while(result.next()) {
        ArrayList<String> tmpData = new ArrayList<String>();    //2차원 리스트에 넣어줄 1차원 리스트 생성
        tmpData.add(result.getString(2));
        tmpData.add(result.getString(3));
        data.add(tmpData);
    }

    Boolean isLogin = false;
    if (data.size() >= 1) {
        isLogin = true;
    }
%>

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Stagelog</title>
</head>
<body>
    <script>
        window.onload = function() {
            if (<%=isLogin%> == true) {
                alert("로그인 성공")
                location.href="main_home.jsp"
            }
            else {
                confirm("정말 일정을 삭제하시겠습니까?")
                location.href="signin.jsp"
            }
        }
    </script>
</body>