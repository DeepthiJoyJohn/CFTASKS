     <cfform>
     	<cfinput type="text" name="newPart" required="true" message="Please enter the Value"/>
     	<cfinput type="Submit" name="ControlName" value="Submit">
     </cfform>
     <cfif isDefined("Form.newPart")>
     	<cfif #Form.newPart# eq "5">
	     	<cfoutput>
	     		<h1>#Form.newPart# is Very Good</h1>     		
	     	</cfoutput>
     	<cfelseif  #Form.newPart# eq "4">
	     	<cfoutput>
	     		<h1>#Form.newPart# is Good</h1>     		
	     	</cfoutput>
	    <cfelseif  #Form.newPart# eq "3">
	     	<cfoutput>
	     	 <h1> #Form.newPart# is Fair</h1>     		
	     	</cfoutput>
     	<cfelse>
	     	<cfoutput>
	     		<h1>OK</h1>     		
	     	</cfoutput>
	     </cfif>
     	
     
     </cfif>