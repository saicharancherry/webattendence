
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.lang.*"%>
<%@ page import="java.io.*"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.util.*"%>
<%@page import="java.sql.PreparedStatement"%>
<%
PreparedStatement myst;
ResultSet myrs;
String d=request.getParameter("date");
String m=request.getParameter("month");
String y=request.getParameter("year");
out.println(d);
out.println(m);
out.println(y);
try{
	if(d!=null){
	out.println("entered try");
	Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mydatabase1","charan","charan@88888888");
	
	String s1=d+m+y+"d";
			//String s1=(new StringBuilder()).append(d).append(m).append(y).append("d").toString();  
	out.println(s1);
	String f1= "select sno,"+ s1 +" from wt";
			if(f1!=null){
	myst=con.prepareStatement(f1);
	myrs=myst.executeQuery();
	out.println("done<br/>");
	
	while(myrs.next()){
		out.println(myrs.getInt(1)+"      :        "+myrs.getInt(2)+"<br/>");
	}
	out.println("excecuted update");
			}
	}
}
catch(Exception e){out.println(e);}
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>retrieve</title>
</head>
<body>
	<form action="checkatten.jsp" method="post">
		Date:<input type="text" name="date" value="date"> <br />
		Month:<input type="text" name="month" value="month"> <br />
		Year:<input type="text" name="year" value="year"> <br /> <input
			type="submit">
	</form>
</body>
</html>