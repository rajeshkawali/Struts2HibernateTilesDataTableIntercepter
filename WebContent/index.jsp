<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page language="java"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>


<tiles:insertTemplate template="baseLayout.jsp" >

<tiles:putAttribute name="title" value="This is Tiles test" type="string"/>
<tiles:putAttribute name="header" value="/header.jsp"/>
<tiles:putAttribute name="menu"   value="/menu.jsp"/>
<tiles:putAttribute name="body"   value="/body.jsp"/>
<tiles:putAttribute name="footer"   value="/footer.jsp"/>

</tiles:insertTemplate>