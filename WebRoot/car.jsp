<%@ page language="java" import="java.util.*, java.util.ArrayList, com.market.struts.action.goods"  contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%> 
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>Insert title here</title>
</head>
<body>
   <em style="color:green;font-size:18pt;font-family:arial" >Shop Car Page</em> <br />
       Click <a href="display.do">here</a> to go back to product list
   <%ArrayList shopcar  = (ArrayList)session.getAttribute("shopcar"); %>
     
     <%int size = shopcar.size(); %>
     <%for(int i=0;i<size;i++){ %>
     <%goods goods=(goods)shopcar.get(i); %>

     <table border="2">
      <tr>
      <td style="color:blue;font-sie:15pt">Name</td>
      <td style="color:blue;font-sie:15pt">Price</td>
      <td style="color:blue;font-sie:15pt">Buying Quantity</td>
      <td style="color:blue;font-sie:15pt">Category</td>
      <td style="color:blue;font-sie:15pt">Seller</td>
     <tr>
     <tr>
       
     <td><%=goods.getName()%></td>
     <td><%=goods.getPrice()%></td>
     <td><%=goods.getBuyamount()%></td>
     <td><%=goods.getCategory()%></td>
     <td><%=goods.getSeller()%></td>
    
     <td ><a href="delete.do?id=<%=goods.getDataid()%>">Delete 1</a></td>
    </tr>
     </table>              
      Click <a href="ordersuccess.jsp">here</a> to submit your order
       
       
      <% }%>
</body>
</html>