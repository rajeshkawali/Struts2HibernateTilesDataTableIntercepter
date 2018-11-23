<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Struts 2 - Login Application</title>
<!-- <link href="css/bootstrap.min.css" rel="stylesheet"> -->
</head>
<body>
<h2>Struts 2 - Login Form</h2>
<s:actionerror />
<s:form action="login" method="post" >
	<div class="form-group">
		<s:textfield name="username" key="label.username" placeholder="User Name"/>
	</div>
	<s:password name="password" key="label.password" placeholder="Password"/>
	<s:submit key="label.login" align="center" class="btn btn-default" />
</s:form>

    <script src="js/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>
</body>
</html>
