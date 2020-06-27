<%--
  Created by IntelliJ IDEA.
  User: 97404
  Date: 2020/3/19
  Time: 8:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <title>error</title>
</head>
<body>
<jsp:include page="file/head.txt"/>
<center><P><br><font size=5 color=#4169e1>This is error.jsp</font></center>
    <font size=3>
        <%
            String s=request.getParameter("mess");
            out.println("<center><br>传递过来的值是"+s+"</center>");
        %>
        <center><br><img src="image/error.jpg" width="120" height="120"/></center>
    </font>
</body>
</html>
