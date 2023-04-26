<cfcomponent output="false">
    <cffunction name="createstructure" access="public">
        <cfargument name="keyname">
        <cfargument name="keyvalue">        
        <cfif not structKeyExists(session.structtest,"#arguments.keyname#")>
            <cfset value=StructInsert(session.structtest, "#arguments.keyname#", "#arguments.keyvalue#")> 
        </cfif>         
        <cfreturn session.structtest>
    </cffunction>
</cfcomponent>