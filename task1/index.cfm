<html>
    <h3>TASK 1-BASED ON INPUT SHOW RESULT USE CFIF</h3>
	<form name="form" id="form" action="" method="post">
	    <label>Enter No btw(1-5)</label>
     	<input type="text" name="newPart" required="true"/>
     	<input type="Submit" name="ControlName" value="Submit">
    </form>
    <cfif isDefined("Form.newPart")>
	 	<cfinvoke component="CFTASKSCOMBINED.Components.cftask1component" method="checkinput" 
		textname="#form.newPart#" returnVariable="res">
		<cfoutput>#res#</cfoutput>     	
    </cfif>
</html>