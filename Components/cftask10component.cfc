<cfcomponent output="false">
    <cffunction name="createstructure" access="public">
        <cfargument name="keyname">
        <cfargument name="keyvalue">        
        <cfif not structKeyExists(session.abc,"#arguments.keyname#")>
            <cfset value=StructInsert(session.abc, "#arguments.keyname#", "#arguments.keyvalue#")> 
        <cfelse>
        	<cfset value=StructUpdate(session.abc, "#arguments.keyname#", "#arguments.keyvalue#")> >
        </cfif>         
        <cfreturn session.abc>
    </cffunction>
</cfcomponent>