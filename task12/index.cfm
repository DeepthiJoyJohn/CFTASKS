<html>
    <h5>TASK-12,While click on submit, you should show all data from table and nth row 1st name</h5>
	<form name="form" id="form" action="" method="post">		
		<label>Textbox1(Enter digits between 1-10)</label>
		<input type="text" name="txtbox1" value="">
		<input type="Submit" name="SubmitTask12action" value="Submit">
		<cfif isDefined("form.SubmitTask12action")>	
			<cfinvoke component="CFTASKSCOMBINED.Components.cftask12component" method="retrieveNames" 
			returnVariable="res">
			<br>	
			<cfloop query="res">
				<cfoutput>#res.firstname# #res.lastname#</cfoutput><br>
			</cfloop>
			<cfoutput>
				<b>nth row firstname=#res.firstname[form.txtbox1]#</b>
			</cfoutput><br>
		</cfif>
	</form>	
</html>