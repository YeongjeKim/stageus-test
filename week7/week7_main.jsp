<%@ page language="java" contentType="text/html" pageEncoding="utf-8" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %> 

    <%-- result를 변수로 쓸 수 있게(데이터베이스 전용 자료형) 하는 라이브러리 --%>
<%@ page import="java.sql.ResultSet" %>
    <%-- 배열을 쓸 수 있게 하는 라이브러리 --%>
<%@ page import="java.util.ArrayList" %>


<% 
    // 다른 페이지로부터 오는 값들에 대한 문자 인코딩 설정.
    request.setCharacterEncoding("utf-8");

    // 다른 페이지로부터 온 값 저장
    String idValue = request.getParameter("id_value");
    String pwValue = request.getParameter("pw_value");

    // 데이터베이스 탐색
    Class.forName("com.mysql.jdbc.Driver"); //Connecter 파일을 찾아오는 역할
    Connection connect = DriverManager.getConnection("jdbc:mysql://localhost:3306/stageus", "yeongje", "1234");

    //SQL문 만들기
    String sql = "SELECT * FROM account WHERE id=? AND pw=?";
    PreparedStatement query = connect.prepareStatement(sql);
    query.setString(1, idValue);
    query.setString(2, pwValue);

    //SQL문 전송
    ResultSet result = query.executeQuery();

    //값 정제
    ArrayList<ArrayList<String>> data = new ArrayList<ArrayList<String>>();     //2차원 리스트 생성
    while(result.next()) {
        ArrayList<String> tmpData = new ArrayList<String>();    //2차원 리스트에 넣어줄 1차원 리스트 생성
        tmpData.add(result.getString(1));
        tmpData.add(result.getString(2));
        data.add(tmpData);
        // result.getString(1);    //첫 번째 row의 첫번째 값(id값)을 가져온다는 의미
        // result.getString(2);    //첫 번째 row의 두번째 값(pw값)을 가져온다는 의미
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
    <title>week7</title>
</head>
<body>
    <%-- <p> 아이디 : <%=data.get(0).get(0)%> </p> --%>
    <%-- <p> 비밀번호 : <%=data.get(0).get(1)%> </p> --%>

    <script>
        window.onload = function() {
            if (<%=isLogin%> == true) {
                alert("로그인 성공")
            }
            else {
                alert("로그인 실패")
                location.href="week7_login.jsp"
            }
        }
    </script>

</body>