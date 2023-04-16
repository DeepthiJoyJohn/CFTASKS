<!--- Please insert your code here --->
<cfform>
     	<cfinput type="text" name="newPart" required="true" message="Please enter the Value"/>
     	<cfinput type="Submit" name="ControlName" value="Submit">
</cfform>
<cfif isDefined("Form.newPart")>
	<cfset variablename=#Form.newPart#>	
	
	<cfset a=ListToArray(variablename,',')>
	
	<cfloop from="1" to="#ArrayLen(a)#" index="i">
		<cfif #a[i]#%3 eq 0> 
		  <cfoutput>
		 #a[i]#,
		  </cfoutput>
		  <cfcontinue>
		 </cfif>
	</cfloop>
</cfif>