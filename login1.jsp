<%@page import="java.sql.*" %>
<%
    String s1 = request.getParameter("u1");
    String s2 = request.getParameter("u2");
	try{
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/runtimeanalyzer?allowPublicKeyRetrieval=true&useSSL=false","root","root");
	Statement db = con.createStatement();
	ResultSet rs=db.executeQuery("Select * from loginuse where Email='"+s1+"' AND password='"+s2+"'");
	if(rs.next()){
            
	response.sendRedirect("menu.jsp");
	}
	else{
	response.sendRedirect("login.jsp?s1=invalid username and password");
	}
	con.close();
	}
	catch(Exception e1){ 
		out.println(e1);
	}
%>