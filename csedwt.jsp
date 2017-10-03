<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="java.lang.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.util.Date" %>
<%@ page import="java.util.*" %>
<%
PreparedStatement mystmt;
ResultSet myrs;
String checkboxchecked[]=request.getParameterValues("att");
try{
	out.println("entered try");
	Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mydatabase1","charan","charan@88888888");
if(checkboxchecked!=null){
	for(int i=0;i<checkboxchecked.length;i++){
		out.println(checkboxchecked[i]);
	}
	//mystmt=con.prepareStatement("select curdate();");
	//myrs=mystmt.executeQuery();
	Date today = new Date(); // Fri Jun 17 14:54:28 PDT 2016
	Calendar cal = Calendar.getInstance();
	cal.setTime(today); 
	int dayOfMonth = cal.get(Calendar.DAY_OF_MONTH);
	int month = cal.get(Calendar.MONTH); 
	int year = cal.get(Calendar.YEAR); 
	  String YEAR=Integer.toString(year);
	    String MONTH=Integer.toString(month+1);
	   String DAY=Integer.toString(dayOfMonth);

	String s=(new StringBuilder()).append(DAY).append(MONTH).append(YEAR).append("d").toString();  
	out.println(s);
	String f= "alter table wt add "+ s +" INT NULL DEFAULT 0";
	out.println("9");
	mystmt=con.prepareStatement(f);
	mystmt.execute();
	out.println("excecuted update");
	String update="update wt set "+s+"=? where sno=?";
	boolean b=false;
for(int i=0;i<checkboxchecked.length;i++){
	b=true;
mystmt=con.prepareStatement(update);
mystmt.setInt(1,1);
String dup=checkboxchecked[i];
mystmt.setInt(2,Integer.parseInt(checkboxchecked[i]));
mystmt.execute();
}

if(b){
response.sendRedirect("doneentry.jsp");
}
}}catch(Exception e){
	response.sendRedirect("error.html");
}
	

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="csedwt.jsp" method="post">
<jsp:include page="csedmembers.jsp"></jsp:include>
<br/>
<input type="submit">
</form>
</body>
</html>