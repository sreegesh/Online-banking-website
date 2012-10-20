<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<table border="2">
  <caption style="color:green;font-size:13pt;font-family:arial">you have added this goods in our website</caption>
  <tr>
  <td><%String name = (String)session.getAttribute("name"); %>
  <%=name %></td >
   <td>
   <%String price = (String)session.getAttribute("price"); %>
  <%=price %></td >
  <td>
  <%String  amount = (String)session.getAttribute("amount"); %>
  <%=amount %></td>
  <td>
  <%String category = (String)session.getAttribute("category"); %>
  <%=category %></td>
  <td>
  <%String username = (String)session.getAttribute("username"); %>
  <%=username %></td>
  
  </tr>
   </table>
    Click <a href="welcome.jsp">here</a> to return  
</body>
</html>