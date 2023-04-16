<!--- Please insert your code here --->
<cfform>
     	<cfinput type="text" name="newPart" required="true" message="Please enter the Value"/>
     	<cfinput type="Submit" name="ControlName" value="Submit">
</cfform>
 <cfif isDefined("Form.newPart")>     
 	<cfswitch expression=#Form.newPart#> 
       <cfcase value="5">5 is very Good</cfcase>
       <cfcase value="4">4 is Good</cfcase> 
       <cfcase value="3">3 is Fair</cfcase>
       <cfdefaultcase>OK</cfdefaultcase> 
   </cfswitch>
  </cfif>