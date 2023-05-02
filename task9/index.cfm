<html>
	<head>	
  		<link rel="stylesheet" href="../css/cftask9.css">
	</head>
   <h3>TASK 9-STRUCTURE IF KEY EXISTS SHOULD NOT REPLACE</h3>
	<form name="form" id="form" method="post">
		<div class="class1">
			<label class="class2"><b>Textbox1</b></label><input type='text' class="form-control" name='txtbox1' id='txtbox2'>
			<label class="class2"><b>Textbox2</b></label><input type='text' class="form-control" name='txtbox2' id='txtbox2'>	
		</div>
		<div class="class1"><input type="Submit" name="SubmitTask9" value="Submit"></div>		
		<cfif isDefined("form.SubmitTask9")> 	
			<cfif isDefined("form.txtbox1") && isDefined("form.txtbox2")> 
				<cfinvoke component="CFTASKSCOMBINED.Components.cftask9component" method="createstructure" 
		   		keyname="#form.txtbox1#" keyvalue=#form.txtbox2# returnVariable="res">
		   		<cfdump var="#res#" label="structtest"> 
			</cfif>   
		</cfif>
	</form>
</html>
