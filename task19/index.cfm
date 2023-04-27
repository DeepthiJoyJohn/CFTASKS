<html>	
	<h5>TASK-19-COOKIE INCREMENT</h5>
	<body>
		<form name="form" id="form" action="" method="post">						
			<input type="Submit" name="SubmitTask19action" value="Submit">
		</form>
		<cfif isDefined("form.SubmitTask19action")>
		    <cfset cookieObj=createObject('component','CFTASKSCOMBINED.Components.cftask19component')>
			<cfset cookie.VisitsCounter=cookieObj.incrcook()>			
		    <cfoutput>#cookie.VisitsCounter#</cfoutput>
		</cfif>
	</body>	
</html>