<html>		
	<body>
		<cfform name="form" id="form" action="" method="post">
			<p><b>TASK25_STORING WORDSD OF TEXTAREA INTO DATABASE</b></p>
			<label>Enter Text</label><br>
			<cftextarea id="textarea" name="textarea" rows="4" cols="50"></cftextarea><br><br>
			<input type="submit" name="submitactiontask25"value="submit">			
		</cfform>		
	</body>	
	<cfif isDefined("Form.submitactiontask25")>
		<cfinvoke component="CFTASKSCOMBINED.Components.tagCloud" method="init" textc="#form.textarea#" 
		returnVariable="res">
		<p>Constructor returning a Sructure</p>
		<cfdump var=#res#><br>
		<cfinvoke component="CFTASKSCOMBINED.Components.tagCloud" method="retrievedatatest" returnVariable="sorted">
		<cfset colors = ArrayNew(1)>
		<cfset colors[1] = "red">
		<cfset colors[2] = "blue">
		<cfset colors[3] = "green">
		<cfset colors[4] = "orange">
		<cfloop query="sorted">
		   <cfoutput><font style="color:#colors['#sorted.count#']#;font-size:#sorted.count#0px">#sorted.word#(#sorted.count#)<br></font></cfoutput>
		</cfloop>
	</cfif>
</html>