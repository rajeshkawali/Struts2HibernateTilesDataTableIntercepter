<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>

<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Student List</title>
<!-- <link href="css/bootstrap.min.css" rel="stylesheet"> 
<link rel="stylesheet" type="text/css" href="css/dataTables.bootstrap.min.css"> -->
<link rel="stylesheet" type="text/css" href="css/jquery.dataTables.min.css">
<!-- <link rel="stylesheet" type="text/css" href="css/jquery.dataTables.css"> -->
</head>
<body>
	<s:actionerror />

	<table id="example" class="table display table-hover table-bordered"
		cellspacing="0">
		<thead>
			<tr>
				<th>Name</th>
				<th>Collage Name</th>
				<th></th>
				<!-- <th></th> -->
			</tr>
		</thead>
		<tfoot>
			<tr>
				<th>Name</th>
				<th>Collage Name</th>
				<th></th>
				<!-- <th></th> -->
			</tr>
		</tfoot>
		<s:iterator value="listStudents" var="i">
			<tbody>
				<tr>
				<tr>
					<td>${i.name}</td>
					<td>${i.collage}</td>
					<td><a href="delete.action?id=<s:property value="id"/>">Delete Student</a></td>
					<%-- <td><a href="select.action?id=<s:property value="id"/>">Student Update</a></td> --%>
					<%-- <td><a href="<s:url action="update"/>">Student Update </a></td> --%>
					<%-- <td><s:property value="name" /></td>
						<td><s:property value="collage" /></td> --%>
				</tr>
			</tbody>
		</s:iterator>
	</table>

	<script type="text/javascript" charset="utf8" src="js/jquery-3.1.1.js"></script>
	<script type="text/javascript" charset="utf8" src="js/jquery.dataTables.min.js"></script>
	<script type="text/javascript"  src="js/jquery.dataTables.js"></script>
	<%-- <script type="text/javascript" charset="utf8" src="js/dataTables.bootstrap.min.js"></script>
	<script src="js/bootstrap.min.js"></script> --%>
<script>
  $(function(){
    $("#example").dataTable({                           
        "bJQueryUI": true,
        "sPaginationType": "full_numbers",
        "bDestroy": true,
        "bSort": true,
        "bFilter": true,
     });
  });
 </script>
</body>
</html>



