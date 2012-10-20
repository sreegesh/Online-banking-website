<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%> 
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

   <html:form action="/sell">
			name : <html:text property="name"/><html:errors property="name"/><br/>
			price : <html:text property="price"/><html:errors property="price"/><br/>
			amount: <html:text property="amount"/><html:errors property="amount"/><br/>
			category:<html:select property="category"><option>food</option><option>cloth</option><option>daily requisites</option><option>electric</option></html:select><br/>
			
			
			<html:submit value='Publish'/><html:reset/>   Click <a href="welcome.jsp">here</a> to return 
		</html:form>
		
		
</body>
</html>