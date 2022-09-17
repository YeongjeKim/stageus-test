<%@ page language="java" contentType="text/html" pageEncoding="utf-8" %>

    <%-- 데이터베이스 찾는 라이브러리 --%>
<%@ page import="java.sql.DriverManager" %>

    <%-- 데이터베이스 연결 라이브러리 --%>
<%@ page import="java.sql.Connection" %>

    <%-- SQL문을 만들 때 도움을 주는 라이브러리 --%>
<%@ page import="java.sql.PreparedStatement" %>     


<% 
    // 다른 페이지로부터 오는 값들에 대한 문자 인코딩 설정.
    request.setCharacterEncoding("utf-8");

    // 다른 페이지로부터 온 값 저장
    String idValue = request.getParameter("id_value");
    String pwValue = request.getParameter("pw_value");

    // 데이터베이스 탐색
    Class.forName("com.mysql.jdbc.Driver"); //Connecter(톰캣과 DB연결) 파일을 찾아오는 역할
    Connection connect = DriverManager.getConnection("jdbc:mysql://localhost:3306/stageus", "yeongje", "1234");

    //SQL문 만들기
    String sql = "INSERT INTO account(id, pw) VALUES(?, ?)";
    PreparedStatement query = connect.prepareStatement(sql);
    query.setString(1, idValue);    //idValue를 작은따옴표를 찍어서(문자형으로 들어갈 수 있게 해서) 첫번째 ?에 넣는다는 뜻
    query.setString(2, pwValue);    //pwValue를 작은따옴표를 찍어서 두번째 ?에 넣는다는 뜻

    //SQL문 전송
    query.executeUpdate();
%>

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>week7</title>
</head>
<body>

    <%-- <h1>회원가입 완료 페이지</h1>
    <div><%=idValue%></div>
    <div><%=pwValue%></div> --%>

    <script>
        alert("<%=idValue%>님의 회원가입 완료")
        location.href="week7_login.jsp"
    </script>

</body>