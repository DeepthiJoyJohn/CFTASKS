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
		<cfinvoke component="CFTASKSCOMBINED.Components.tagCloud" method="retrievedata" textd="#form.textarea#" 
		returnVariable="sorted">
		<cfloop collection="#sorted#" item="key" >
			<cfoutput> 
				#key#(#sorted[key]#)<br><br>
			</cfoutput>
		</cfloop>
	</cfif>
</html>