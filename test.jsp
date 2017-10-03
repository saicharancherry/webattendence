<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">
<%@ page import="java.lang.*" %>
<%@ page import="java.io.*" %>
<% String[] a = request.getParameterValues("multiple");
if(a!=null)
{
for(int i=0;i<a.length;i++){
//out.println(Integer.parseInt(a[i])); //If integer
out.println(a[i]);
}}
%>
<html>
<body>
<form action="test.jsp" method="post">
<select name="multiple" multiple="multiple"><option value="1">one</option><option value="2">2</option><option value="3">3</option></select>
<input type="submit">
<jsp:include page="check.jsp"/>
</form>
</body>
</html>