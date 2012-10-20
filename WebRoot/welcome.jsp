<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%String username = (String)session.getAttribute("username"); %>
<p style="color:green;font-size:15pt;font-family:arial">Your User Name is <%=username %></p><br />

<a href="sell.jsp">sell</a><br />
<a href="display.do">buy</a><br />
<a href="logout.jsp">Logout</a><br />

</body>
</html>