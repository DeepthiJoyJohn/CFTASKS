<html>
    <h3>TASK 8-RETAINING STRUCTURE VALUES AND REPLACING OLD ONE</h3>
	<cfform name="myform" id="myform"> 
		<label>Text Box 1(structure Key)</label>
		<input type="text" class="form-control" name="txtbox5" value="" required />
		<label>Text Box 2(Structure Value)</label>
		<input type="text" class="form-control" name="txtbox6" value="" required />
		<cfinput type="Submit" name="submittask8" value="Submit">&nbsp;	
	</cfform>
	<cfif isDefined("form.submittask8")> 
		<cfif isDefined("form.txtbox5") && isDefined("form.txtbox6")>			
				<cfinvoke component="CFTASKSCOMBINED.Components.cftask8component" method="createstructure" 
				keyname="#form.txtbox5#" keyvalue=#form.txtbox6# returnVariable="res">
				<cfdump var="#res#" label="structtest">   
		</cfif>   
	</cfif>
</html>




