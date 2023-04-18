<html>	
	<body>
		<form name="form" id="form" action="" method="post">
			<p><b>TASK21_BIRTHDAYWISH CARD THROUGH EMAIL</b></p>			
			<label>BirthDay Baby Name:</label>
			<input type="text" name="bdaybabyname" required="YES"><br><br>	
			<label>Enter Email:</label>
			<input type="text" name="babyemail" required="YES"><br><br>	
			<label>Bday Wish:</label><br>
			<textarea name="bdaywish" rows="2" cols="50"></textarea><br><br>
			<label>File Upload</label>
			<input type="file" name="fileUpload"><br><br>
			<input type="Submit" name="SubmitTask21action" value="Submit">
		<form>
		 		
		<cfif isDefined("form.SubmitTask21action")>
		    <cfset fff="deepthinmol@gmail.com">
			<cfset ffff="deepthi.joy@techversantinfotech.com">
			
			<cfmail from="#fff#" to="#ffff#" subject="Sample e-mail from ColdFusion">
   				This is a sample e-mail message to show basic e-mail capability.
			</cfmail>	
			<cfoutput>#fff#</cfoutput>	    
		</cfif>
	</body>	
</html>