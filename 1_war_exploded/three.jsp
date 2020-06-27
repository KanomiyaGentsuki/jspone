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

    <title>three</title>
</head>
<body>
<jsp:include page="file/head.txt"/>
<center><P><br><font size=5 color=#ff1493>This is three.jsp</font></center>
    <font size=3>
        <%
            String s=request.getParameter("number");
            out.println("<center><br>传递过来的值是"+s+"</center>");
            if (s!=null){
                int a=Integer.valueOf(s).intValue();
                a=a*8;
                int b=Integer.valueOf(s).intValue();
                b=b*3;%>
        <center><br><img src="image/two.jpg" width="<%=b%>" height="<%=a%>"/></center>
        <%    }
        else %><center><br><img src="image/two.jpg" width="450" height="750"/></center>
    </font>
</body>
</html>
