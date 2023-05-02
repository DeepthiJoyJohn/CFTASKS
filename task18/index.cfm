<html>
	<p>TASK18_QUERY DATATYPE</p>
	<head>
		<link rel="stylesheet" href="../css/cftask18.css">
	</head>
	<form name="form" id="form" action="" method="post">
			<table>
				<tr>
					<th>ID</th>
					<th>NAME</th>
					<th>EMAIL</th>
				</tr>
				<tr>
					<td><input type="text" name="id1" required="YES"> </td>
					<td><input type="text" name="name1" required="YES"> </td>
					<td><input type="text" name="email1" required="YES"></td>
				</tr>
				<tr>
					<td><input type="text" name="id2" required="YES"></td>
					<td><input type="text" name="name2" required="YES"></td>
					<td><input type="text" name="email2" required="YES"></td>
				</tr>
				<tr>
					<td><input type="text" name="id3" required="YES"> </td>
					<td><input type="text" name="name3" required="YES"></td>
					<td><input type="text" name="email3" required="YES"></td>
				</tr>
			</table><br>
			<input type="Submit" name="SubmitTask17action" value="Submit">
			
			
	</form>
	<cfscript>
		queryObj=createObject("component","CFTASKSCOMBINED.Components.cftask18component");
	</cfscript>		
	<cfdump var=#queryObj.query(form)#>	
</html>