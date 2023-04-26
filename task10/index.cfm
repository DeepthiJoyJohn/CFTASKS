<html>
	<form name="form" id="form" action="" method="post">
		<div style="text-align: center;"><b>CFTASK 10-COLDFUSION STRUCTURE ALPHABETICAL ORDER</b></div>
		<div style="text-align: center;padding:50px;">
			<label style="padding:10px;"><b>Textbox1</b></label>
			<input type='text' class="form-control" name='txtbox1' id='txtbox2'>
			<label style="padding:10px;"><b>Textbox2</b></label>
			<input type='text' class="form-control" name='txtbox2' id='txtbox2'>	
		</div>
		<div style="text-align: center;"><input type="Submit" name="SubmitTask10" value="Submit"></div>		
		<cfif isDefined("form.SubmitTask10")> 	
			<cfif isDefined("form.txtbox1") && isDefined("form.txtbox2")> 
				<cfinvoke component="CFTASKSCOMBINED.Components.cftask10component" method="createstructure" 
				keyname="#form.txtbox1#" keyvalue=#form.txtbox2# returnVariable="res">
				<cfdump var="#res#" label="structtest"> 
			</cfif>   
		</cfif>
	</form>
</html>
