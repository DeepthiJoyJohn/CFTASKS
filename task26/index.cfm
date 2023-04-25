<html>		
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
		<cfdump var=#res#>
		
	</cfif>
</html>