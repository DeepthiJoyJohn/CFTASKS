<html>		
	<body>
		<form name="form" id="form" enctype="multipart/form-data" action="" method="post">
			<p><b>TASK27_LOGIN</b></p><br>
			<label><b>User Name</b></label>
			<input type="text" name="username" value=""><br><br>
			<label><b>Password</b></label>
			<input type="password" name="password" value="">
			<input type="submit" name="submitactiontask27"value="submit">			
		</form>		
	</body>	
	<cfif isDefined("Form.submitactiontask27")>
		<cfinvoke component="CFTASKSCOMBINED.Components.cftask27component" username1="#form.username#" 
		password1="#form.password#" method="logincheck" returnVariable="res">
		<cfif #res# eq "login Success">
			<cflock timeout=20 scope="Session" type="Exclusive">
				<cfset Session.log = "#form.username#">
			</cflock>
			<cflocation url="welcome.cfm">
		<cfelse>
			<cfoutput>#res#</cfoutput>
		</cfif>
	</cfif>
</html>