<html>
    <h3>TASK 3-BASED ON INPUT "3,8,9,11,12" SHOW NUMBERS DIVIDED BY 3
</h3>
	<form name="form" id="form" action="" method="post">
		<label>Enter "3,8,9,11,12"</label>
		<input type="text" name="newPart" value="" required="true"/>
		<input type="Submit" name="ControlName" value="Submit">
	</form>
	<cfif isDefined("form.ControlName")>
		<cfinvoke component="CFTASKSCOMBINED.Components.cftask3component" method="checkinput" 
		textname="#form.newPart#" returnVariable="res">
		<cfoutput>#res#</cfoutput>		
	</cfif>
</html>