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
			<cfinvoke component="CFTASKSCOMBINED.Components.cftask17component" method="colour" Arg1="#form.inputbox1#" returnVariable="res1">		
			<cfdump var=#res1#>
			<cfoutput>
				<span style="color:#res1#">
					#form.inputbox1#
				</span>
			</cfoutput>
		</cfif>
	</body>	
</html>