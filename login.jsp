<html>
<head>
    <%@include file="head1.jsp" %>
<div id="data">
<center>
    <%
        String s11=request.getParameter("s1");
    if(s11!=null){ %>
<%=s11%>
<%}%>
<form action="login1.jsp">
<table cellpadding="12" bgcolor="pink">
<caption> LogIN Page </caption>
<tr>
<td> Enter Email</td>
<td> <input type = "text" placeholder="Enter Email" name ="u1" class="t1"></td>
</tr>
<tr>
<td> Enter Password</td>
<td> <input type = "password" placeholder="Enter Password" name ="u2" class="t1"></td>
</tr>
<tr>
<th colspan="2"><input type="submit" value="Login" class="B"></th>
</tr>
</table>
</center>
</div>
</body>
</html>
