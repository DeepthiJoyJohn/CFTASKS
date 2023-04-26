<html>
    <h3>TASK 5-USER AND MOTHER DOB</h3>
	<form name="form" id="form" action="" method="post">
		<label>User DOB</label>
		<input type="date" class="form-control" name="dtuser" value="#LSDateFormat(now(),'yyyy-mm-dd')#" required />
		<label>Mothers DOB</label>
		<input type="date" class="form-control" name="dtmother" value="#LSDateFormat(now(),'yyyy-mm-dd')#" required />
		<input type="Submit" name="ControlName" value="Submit">
	</form>
	<cfif isDefined("Form.dtuser")>
		<cfinvoke component="CFTASKSCOMBINED.Components.cftask5component" method="finddob" 
		dobuser="#form.dtuser#" dobmother=#form.dtmother# returnVariable="res">
		<cfdump var=#res#>
	</cfif>
	
</html>