<%@ page language="java" import="java.util.*, java.util.ArrayList,com.market.struts.action.goods" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

     <%ArrayList goodslist  = (ArrayList)session.getAttribute("sgoodslist"); %>
     
     <%int size = goodslist.size(); %>
     <% if (size==0){%>
      No requested Product is existing
      <%} %>
     <%for(int i=0;i<size;i++){ %>
     <%goods goods=(goods) goodslist.get(i); %>
     
     <table >
       <caption>Search result</caption>
       <tr>
      <td style="color:blue;font-sie:15pt">Name</td>
      <td style="color:blue;font-sie:15pt">Price</td>
      <td style="color:blue;font-sie:15pt">Amount</td>
      <td style="color:blue;font-sie:15pt">Category</td>
      <td style="color:blue;font-sie:15pt">Seller</td>
     <tr>
     
     <tr>

     <td ><a href="details.do?id=<%=i%>"><%=goods.getName()%></a></td>
     <td ><%=goods.getPrice()%></td>
     <td><%=goods.getAmount()%></td>
     <td><%=goods.getCategory()%></td>
     <td><%=goods.getSeller()%></td>
     
    </tr>
     </table>              
       
       
       
      <% }%>
      <input onclick="location='welcome.jsp'" type=button value="Back"/>
</body>
</html>