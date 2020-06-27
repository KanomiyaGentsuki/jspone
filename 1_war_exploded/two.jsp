<%--
  Created by IntelliJ IDEA.
  User: 97404
  Date: 2020/3/19
  Time: 8:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <title>two</title>
</head>
<body>
<jsp:include page="file/head.txt"/>
<center><P><br><font size=5 color=#00bfff>This is two.jsp</font></center>
<font size=4>
    <%
        String s=request.getParameter("number");
        out.println("<center><br>传递过来的值是"+s+"</center>");
        if (s!=null){
            int a=Integer.valueOf(s).intValue();
            a=a*8;%>
            <center><br><img src="image/one.jpg" width="<%=a%>" height="<%=a%>"/></center>
    <%    }
        else %><center><br><img src="image/one.jpg" width="<%=s%>" height="<%=s%>"/></center>
</font>
</body>
</html>
