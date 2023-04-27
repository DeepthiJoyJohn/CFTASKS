<cfcomponent output="false">
    <cffunction name="incrcook" access="public">
        <cfif isDefined("SESSION.HitCount")>
            <cfset SESSION.HitCount=(SESSION.HitCount+1)>
        <cfelse>
            <cfset SESSION.HitCount ="0"/>
        </cfif>	
        <cfreturn SESSION.HitCount>	
	</cffunction>
</cfcomponent>