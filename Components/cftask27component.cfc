<cfcomponent output="false">
    <cffunction name="logincheck" access="public">
        <cfargument name="username1">
        <cfargument name="password1">
        <cfquery name="local.checkdata" datasource="cftask">
            SELECT id FROM login where username="#arguments.username1#" and 
            password="#arguments.password1#"
        </cfquery>
        <cfif local.checkdata.RecordCount GTE 1>
            <cfset local.login="login Success">
        <cfelse>
            <cfset local.login="login UnSuccess">
        </cfif>
        <cfreturn local.login>
    </cffunction>
</cfcomponent>