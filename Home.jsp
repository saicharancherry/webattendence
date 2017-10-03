
 <%@ page import="java.lang.*" %>
<%@ page import="java.io.*" %>
<%  
String a[]=request.getParameterValues("section");
	String p[]=request.getParameterValues("subject");
	if(a!=null && p!=null){
		if(a[0].equals("4") && p[0].equalsIgnoreCase("wt")){
			response.sendRedirect("csedwt.jsp");
		}
	}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="Home.jsp" method="post">
<select name="section">
<option value="1">csea</option>
<option value="2">cseb</option>
<option value="3">csec</option>
<option value="4">csed</option>
<option value="5">csee</option>
</select>
<select name="subject">
<option value="wt">wt</option>
<option value="dccn">dccn</option>
<option value="mefa">mefa</option>
<option value="os">os</option>
<option value="e">e</option>
</select>
<br/>
<input type="submit">
</form>
</body>
</html>