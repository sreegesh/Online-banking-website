<%@ page language="java" contentType="text/html; charset=ISO-8859-1" import="java.util.*, java.util.ArrayList, com.market.struts.action.goods"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
   <%ArrayList shopcar  = (ArrayList)session.getAttribute("shopcar");%>
        <%int size = shopcar.size(); %>

     

     <%for(int i=0;i<size;i++){ %>
     <%goods goods=(goods)shopcar.get(i); %>
     <em style="color:green;font-size:18pt;font-family:arial" >Here is all the product you buy</em>
     <table border="2">
     <tr>
      <td style="color:blue;font-sie:15pt">Name</td>
      <td style="color:blue;font-sie:15pt">Price</td>
      <td style="color:blue;font-sie:15pt">Amount</td>
      <td style="color:blue;font-sie:15pt">Category</td>
      <td style="color:blue;font-sie:15pt">Seller</td>
     <tr>

     <td><%=goods.getName()%></td>
     <td><%=goods.getPrice()%></td>
     <td><%=goods.getBuyamount()%></td>
     <td><%=goods.getCategory()%></td>
     <td><%=goods.getSeller()%></td>
    
    </tr>
     </table>              
      Click <a href="display.do">here</a> to return  
       
       
      <% }%>
</body>
</html>