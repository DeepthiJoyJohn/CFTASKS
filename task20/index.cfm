<html>	
	<body>
		<form name="form" id="form" action="" method="post">
			<p>TASK20_CAPTCHA</p>
			<cfset funcimg1 = ImageCreateCaptcha(35,400,"loner")>
            <cfimage action="writetoBrowser" source="#funcimg1#"> <br><br>
			<label>Enter Captcha</label>
			<input type="text" name="captcha" required="YES">	
			<label>Enter Email</label>
			<input type="text" name="email" required="YES">					
			<input type="Submit" name="SubmitTask20action" value="Submit">
		<form>
		<cfif isDefined("form.SubmitTask20action")>
		    <cfscript>
		    	captchObj=createObject("component","CFTASKSCOMBINED.Components.cftask20component");
			</cfscript>	
			<cfset res=captchObj.checkcaptcha(#form.captcha#,#form.email#)><br><br>			
			<cfoutput><b>#res#</b></cfoutput>
		</cfif>
	</body>	
</html>