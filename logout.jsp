<html>
<head>
<style type="text/css">
body{
background-image:url('P6.jpg');
}
#mymenu{
background:black;
color:white;
text-align:right;
}
#mymenu ul li{
display:inline-block;
padding:12px;
}
</style>
</head>
<body>
<div id="mymenu">
<ul>
<li> <a href="menu.jsp"> Home </a></li>
<li> <a href="insert.jsp"> Insert </a></li>
<li> <a href="search.jsp">Search</a> </li>
<li><a href="update.jsp"> Update </a></li>
<li> delete </li>
<li><a href="showall0.jsp"> Showall</a> </li>
<li><a href="logout.jsp"> LogOut </a></li>
</ul>
</div>   
</body>
</html>
<% response.sendRedirect("head1.jsp");%>