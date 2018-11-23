<%@taglib uri="/struts-tags" prefix="s"%>
<%@ page contentType="text/html; charset=UTF-8"%>



<a href="<s:url action="welcome"/>" >Welcome</a><br>
<a href="<s:url action="addStudent-use"/>" >Add Student</a><br>
<s:a href="studAddress">Student Address</s:a><br>
<a href="<s:url action="listStudents"/>" >List Student</a><br>
<a href="<s:url action="studentAjax"/>" >Student Ajax</a><br>
<%-- 
<s:a href="welcome">Customer</s:a>
<a href="login.jsp">Login Student</a><br>
 --%>