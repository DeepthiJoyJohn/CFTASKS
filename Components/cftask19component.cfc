<cfcomponent output="false">
    <cffunction name="incrcook" access="public">
        <cfset SESSION.HitCount=(SESSION.HitCount+1)>	        
		<cfset local.var=#SESSION.HitCount#>
        <cfreturn local.var>		
	</cffunction>
</cfcomponent>