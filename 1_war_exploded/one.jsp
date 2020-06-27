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

    <title>one</title>
</head>
<body>
<jsp:include page="file/head.txt"/>
    <form action="" method=get name=form>
        <center><br>请输入1~100之间的整数：<INPUT type="text" name="number"></center>
        <center><br><input type="submit" value="确定" name=submit></center>
    </form>
        <% String num=request.getParameter("number");
            if (num==null){
                num="0";
            }
            try{ int n=Integer.parseInt(num);
                if(n>=1&&n<=50){%>
                    <jsp:forward page="two.jsp">
                        <jsp:param name="number" value="<%=n%>"/>
                    </jsp:forward>
            <%  }
            else if(n>50&&n<=100) {%>
                <jsp:forward page="three.jsp">
                    <jsp:param name="number" value="<%=n%>"/>
                </jsp:forward>
            <%  }
            else if(n>100||n<0){%>
                <jsp:forward page="error.jsp">
                    <jsp:param name="mess" value="<%=n%>"/>
                </jsp:forward>
            <%  }
            }
            catch(Exception e){%>
                <jsp:forward page="error.jsp">
                    <jsp:param name="mess" value="<%e.toString()%>"/>
                </jsp:forward>
        <%  }
            %>
</body>
</html>
