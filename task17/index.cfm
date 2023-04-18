<html>
	<head>
		<title>JavaScript Validation</title>
		<script>
			function testbox(form, ctrl, value) {
				if (isNaN(value)) 
				{
					return (false);
				} 
				else
				{
					return (true);
				} 
			}
        </script>
	</head>
	<body>
		<cfform name="form" id="form" action="" method="post">
			<h4>TASK17-JAVASCRIPT VALIDATION FOR NUMBER AND ODD NO AND EVEN NO DIFFERENTIATE</h4>
			<label>Textbox1(Enter digits)</label>			
			<cfinput type="text" name="inputbox1" required="YES" onvalidate="testbox" 
			message="Please Enter Number." size="15" maxlength="30">
			<input type="Submit" name="SubmitTask17action" value="Submit">
		</cfform>
		<cfif isDefined("form.SubmitTask17action")>
			<cfscript>
				colObj=createObject("component","CFTASKSCOMBINED.Components.cftask17component");				
	    	</cfscript>	
			<cfset varcol=#colObj.colr(#form.inputbox1#)#>	
			<cfoutput>
				<span style="color:#varcol.color#">#varcol.text# #form.inputbox1#
			</cfoutput>					    
		</cfif>
	</body>	
</html>