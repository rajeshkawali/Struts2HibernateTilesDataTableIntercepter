<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
<title>Student Form</title>

</head>

<body>
<h2>Student Form</h2>

<s:form action="studentaddress" method="post" validate="true">
	<s:textfield name="name" key="name" size="20" />
	<s:textfield name="age" key="age" size="20" />
	<s:textfield name="email" key="email" size="20" />
	<s:textfield name="telephone" key="telephone" size="20" />
	<s:submit key="label.add.student" align="center" />
</s:form>
</body>
</html>
