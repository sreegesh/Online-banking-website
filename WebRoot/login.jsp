<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%> 
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
 
<html> 
	<head>
		<title>JSP for UserForm form</title>
	</head>
	<body>
		<div>
		<p style="color:green;font-size:18pt;font-family:arial">Login form</p>
		<p style="color:green;font-size:18pt;font-family:arial">If you have registered, Please Login</p>
	    <html:form  action="/user" >
			username : <html:text property="username"/><html:errors property="username"/><br/>
			password : <html:password property="password"/><html:errors property="password"/><br/>
			<html:submit value='login'/><html:reset/>
		</html:form>
		</div>
		<br />
	    <br />
	    
	    <div>
		<p style="color:green;font-size:18pt;font-family:arial">Register</p>
		<p style="color:green;font-size:18pt;font-family:arial">If you have not registed, Please register first</p>
		<html:form action="/register">
			username : <html:text property="username"/><html:errors property="username"/><br/>
			password : <html:password property="password"/><html:errors property="password"/><br/>
			address :  <html:text property="address"/><html:errors property="address"/><br/>					
			<html:submit value='Register'/><html:reset/>
		</html:form>
	    </div>
	</body>
</html>

