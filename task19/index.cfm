<html>	
	<body>
		<cfform name="form" id="form" action="" method="post">
			<p>TASK19_COOKIES</p>			
			<input type="Submit" name="SubmitTask19action" value="Submit">
		</cfform>
		<cfif isDefined("form.SubmitTask19action")>
		    <cfscript>
		    	cookieObj=createObject("component","CFTASKSCOMBINED.Components.cftask19component");
			</cfscript>			
			<cfset cookie.VisitsCounter=cookieObj.incrcook()>			
		    <cfoutput>#cookie.VisitsCounter#</cfoutput>
		</cfif>
	</body>	
</html>