<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>

<%-- <%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<tiles:putAttribute name="register" value="/register.jsp"/> --%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Struts2Hibernate</title>
</head>
<body>
	<s:actionerror />
	<s:form action="addStudent" method="post">
		<s:textfield name="name" label="First Name " />
		<s:textfield name="collage" label="Collage Name " />
		<s:submit value="Add Student" align="center" />

		<h2>Student Details</h2>
	</s:form>
</body>
</html>