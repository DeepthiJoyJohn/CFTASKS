<html>
    <h3>TASK 4-DISPLAYING DETAILS</h3>
	<cfinvoke component="CFTASKSCOMBINED.Components.cftask4component" method="displaydetails" 
	returnVariable="res">
	<cfdump var=#res#>
	<cfinvoke component="CFTASKSCOMBINED.Components.cftask4component" method="displaydetailscolor" 
	returnVariable="res">
	<cfoutput>Last Five Days</cfoutput><br>
	<cfloop collection="#res#" item="key" >
        <cfoutput>
		    <cfif #key# eq "boldred">
				<span style="color:#key#">
					<b>#res[key]#</b>
				</span>
			<cfelse>
				<span style="color:#key#">
					#res[key]#
				</span>
			</cfif>
			<br>
		</cfoutput>
    </cfloop>	
</html>


