<html>
    <h3>TASK 2-BASED ON INPUT SHOW RESULT USE CFCASE</h3>
    <form name="form" id="form" action="" method="post">
        <label>Enter No btw(1-5)</label>
        <input type="text" name="newPart" required="true" message="Please enter the Value"/>
        <input type="Submit" name="ControlName" value="Submit">
    </form>
    <cfif isDefined("Form.newPart")>
        <cfinvoke component="CFTASKSCOMBINED.Components.cftask2component" method="checkinput" 
        textname="#form.newPart#" returnVariable="res">
        <cfoutput>#res#</cfoutput> 
    </cfif>
</html>