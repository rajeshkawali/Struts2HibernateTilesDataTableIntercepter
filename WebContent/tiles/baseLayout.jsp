<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       <!--  <link rel="stylesheet" type="text/css" media="all" href="style.css" /> -->
            <title>
            	<tiles:insertAttribute name="title" ignore="true" />
            </title>
    </head>
    <body>
        <table height="100%" width="100%" border="0px" cellpadding="0" cellspacing="0" align="center">
            <tr >
                <td id="header" height="30" width="900" colspan="2" bgcolor="#a6a6a6">
                    <tiles:insertAttribute name="header" />
                </td>
            </tr>
            <tr>
                <td id="sidebar" height="540" width="200" bgcolor="#aaff00">
                    <tiles:insertAttribute name="menu" />
                </td>
                <td id="wrap" height="540" width="700" bgcolor="#f2f2f2">
                    <tiles:insertAttribute name="body" />
                </td>
            </tr>
            <tr>
                <td id="footer" height="30" width="900" colspan="2" bgcolor="#00cc66">
                    <tiles:insertAttribute name="footer" />
                </td>
            </tr>
        </table>
    </body>
</html>