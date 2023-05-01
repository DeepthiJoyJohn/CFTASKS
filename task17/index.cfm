<html>
	<head>
		<script src="../js/cftask17.js" type="text/javascript"></script>
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
			<cfset colObj=createObject('component','CFTASKSCOMBINED.Components.cftask17component')>
			<cfset varcol=#colObj.colr(form.inputbox1)#>	
			<cfoutput>
				<span style="color:#varcol.color#">#varcol.text# #form.inputbox1#
			</cfoutput>					    
		</cfif>
	</body>	
</html>