<%@ page language="java" import="java.util.*, java.util.ArrayList, com.market.struts.action.goods"  contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%> 
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<html:form action="/get">
			name : <html:text property="name"/><html:errors property="name"/><br/>
		
			<html:submit value='search'/><html:reset/><br />
			Click <a href="car.jsp">here</a> to go to Shopcar<br />
			Click <a href="welcome.jsp">here</a> to return
			
		</html:form>
		<em style="color:green;font-size:18pt;font-family:arial" >Here is all the Product</em> 

     <%ArrayList goodslist  = (ArrayList)session.getAttribute("goodslist"); %>
     
     <%int size = goodslist.size(); %>
     <%for(int i=0;i<size;i++){ %>
     <%goods g=(goods) goodslist.get(i); %>
     
    <table border="2">
      <tr>
      <td style="color:blue;font-sie:15pt">Name</td>
      <td style="color:blue;font-sie:15pt">Price</td>
      <td style="color:blue;font-sie:15pt">Amount</td>
      <td style="color:blue;font-sie:15pt">Category</td>
      <td style="color:blue;font-sie:15pt">Seller</td>
     <tr>
     <tr>

     <td ><a href="detail.do?id=<%=i%>"><%=g.getName()%></a></td>
     <td ><%=g.getPrice()%></td>
     <td><%=g.getAmount()%></td>
     <td><%=g.getCategory()%></td>
     <td><%=g.getSeller()%></td>
    
    </tr>
     </table>              
       
       
       
      <% }%>

      		
</body>
</html>