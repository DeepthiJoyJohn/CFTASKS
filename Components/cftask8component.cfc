<cfcomponent output="false">
    <cffunction name="createstructure" access="public">
        <cfargument name="keyname">
        <cfargument name="keyvalue">        
        <cfif not structKeyExists(session.structtestreplace,"#arguments.keyname#")>
            <cfset value=StructInsert(session.structtestreplace, "#arguments.keyname#", "#arguments.keyvalue#")> 
        <cfelse>
        		<cfscript>
					StructUpdate(session.structtestreplace, #arguments.keyname#, #arguments.keyvalue#)
				</cfscript>
        </cfif>         
        <cfreturn session.structtestreplace>
    </cffunction>
</cfcomponent>