<html>
	<head>
		<script src="../js/cftask24.js" type="text/javascript"></script>
	</head>
	
	<body>
		<cfform name="form" id="form" action="" method="post">
			<p><b>TASK24_SUBSCRIBE FORM WITH AJAX</b></p>
			<label>First Name</label><br>
			<cfinput type="text" name="firstname" id="firstname"><br>
			<label>Email Address</label><br>
			<cfinput type="text" style="width:25%" name="emailaddress" id="emailaddress">
			<cfinput type="button" onclick="checkemail(form.emailaddress)"  name="check" value="checkemail"><br><br>
			 
			<input type="submit" disabled name="submitactiontask23"value="submit">
			<div id="display"></div>
		</cfform>
		
	</body>	
</html>