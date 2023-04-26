<cfcomponent output="false">
    <cffunction name="checkinput" access="public">
        <cfargument name="textname">
        <cfset a=ListToArray(#arguments.textname#,',')>
        <cfset local.text="">
        <cfset local.divno=3>
		<cfloop from="1" to="#ArrayLen(a)#" index="i">
		    <cfif #a[i]#%local.divno eq 0> 
                <cfset local.text=local.text&#a[i]#&",">			
			    <cfcontinue>
			</cfif>
		</cfloop>  
                  
        <cfreturn local.text>
    </cffunction>
</cfcomponent>