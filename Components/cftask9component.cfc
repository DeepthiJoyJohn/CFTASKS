<cfcomponent output="false">
    <cffunction name="createstructure" access="public">
        <cfargument name="keyname">
        <cfargument name="keyvalue">        
        <cfif not structKeyExists(session.structtestreplaceno,"#arguments.keyname#")>
            <cfset value=StructInsert(session.structtestreplaceno, "#arguments.keyname#", "#arguments.keyvalue#")> 
            <cfreturn session.structtestreplaceno>
        <cfelse>
            <cfset local.text="Key already Exists Cannot add again">
            <cfreturn local.text>
        </cfif>         
    </cffunction>

</cfcomponent>