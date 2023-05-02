<html>
	<head>	
  		<link rel="stylesheet" href="../css/cftask25.css">
	</head>		
	<body>
		<form name="form" id="form" enctype="multipart/form-data" action="" method="post">
			<p><b>TASK26_READING TEXT DATA FROM TEXT FILE</b></p>
			<label><b>Select File</b></label><br>
			<input type="file" name="fileUpload">
			<input type="submit" name="submitactiontask26"value="submit">			
		</form>		
	</body>	
	<cfif isDefined("Form.submitactiontask26")>
		<cfinvoke component="CFTASKSCOMBINED.Components.cftask26component" filename="fileUpload" method="readdata" 
		 returnVariable="res">
		<cfset colors = ArrayNew(1)>
		<cfset colors[1] = "red">
		<cfset colors[2] = "blue">
		<cfset colors[3] = "green">
		<cfset colors[4] = "orange">
		<cfloop query="res">
		   <cfoutput><p class="class#res.count#">#res.word#(#res.count#)<br></p></cfoutput>
		</cfloop>
		
	</cfif>
</html>