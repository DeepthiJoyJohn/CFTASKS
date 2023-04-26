<html>
	<head>	
		<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>	
		<script src="../js/cftask24.js" type="text/javascript"></script>
	</head>
	<body>
		<form name="form" id="form" action="" method="post">
			<p><b>TASK24_SUBSCRIBE FORM WITH AJAX</b></p>
			<label>First Name</label><br>
			<input type="text" name="firstname" id="firstname"/><br>
			<label>Email Address</label><br>
			<input type="text" style="width:25%;" name="emailaddress" id="emailaddress"/>
			<button type="button" id="myBtn" onclick="checkemail(form.emailaddress,form.firstname);">Check Me</button>			
			<input type="submit" disabled id="submitactiontask24" name="submitactiontask24" value="submit"/><br.<br>
			<br><div id="testdiv"></div>
		</form>
		<cfif isDefined("Form.submitactiontask24")>
			<cfinvoke component="CFTASKSCOMBINED.Components.cftask24component" method="adddata" 
			firstname="#form.firstname#" emailaddress="#form.emailaddress#" returnVariable="res">
			<cfoutput>#res#</cfoutput>
		</cfif>
		
	</body>	
</html>