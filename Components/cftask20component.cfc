<cfcomponent output="false">
     <cffunction name="checkcaptcha" access="public">
        <cfargument name="Arg1"> 
        <cfargument name="Arg2"> 
        <cfif (arguments.Arg1 eq "loner") && (isValid("email", arguments.Arg2))>
            <cfset local.res="Email Address successfully subscribe our newsletter">
        <cfelseif (arguments.Arg1 neq "loner")>
            <cfset local.res="Invalid Captcha">
        <cfelse>
            <cfset local.res="Invalid Email">
        </cfif>
        <cfreturn local.res>
	</cffunction>
</cfcomponent>