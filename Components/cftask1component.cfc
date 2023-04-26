<cfcomponent output="false">
    <cffunction name="checkinput" access="public">
        <cfargument name="textname">
        <cfif #arguments.textname# eq "5">
            <cfset local.text="#arguments.textname# is Very Good">	     	
     	<cfelseif  #arguments.textname# eq "4">
	     	<cfset local.text="#arguments.textname# is Good">
	    <cfelseif  #arguments.textname# eq "3">
	     	<cfset local.text="#arguments.textname# is Fair">
     	<cfelse>
	     	<cfset local.text="OK">
	     </cfif>        
        <cfreturn local.text>
    </cffunction>
</cfcomponent>