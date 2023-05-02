<html>	
	<head>	
  		<link rel="stylesheet" href="../css/cftask25.css">
	</head>	
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
		<cfloop query="sorted">
		   <cfoutput><p class="class#sorted.count#">#sorted.word#(#sorted.count#)<br></p></cfoutput>
		</cfloop>
	</cfif>
</html>