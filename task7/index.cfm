<html>
    <h3>TASK 7-RETAINING STRUCTURE VALUES</h3>
	<form name="myform" id="myform" action="" method="post">  
		<label>Text Box 1(structure Key)</label>
		<input type="text" class="form-control" name="txtbox3" value="" required />
		<label>Text Box 2(Structure Value)</label>
		<input type="text" class="form-control" name="txtbox4" value="" required />
		<input type="Submit" name="submittask7" value="Submit">&nbsp;	
	</form>
	<cfif isDefined("form.submittask7")> 	
		<cfif isDefined("form.txtbox3") && isDefined("form.txtbox4")> 
			<cfinvoke component="CFTASKSCOMBINED.Components.cftask7component" method="createstructure" 
			keyname="#form.txtbox3#" keyvalue=#form.txtbox4# returnVariable="res">
			<cfdump var="#res#" label="structtest">    			
		</cfif>   
	</cfif>
</html>

