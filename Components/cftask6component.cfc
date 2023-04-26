<cfcomponent output="false">
    <cffunction name="createstructure" access="public">
        <cfargument name="keyname">
        <cfargument name="keyvalue">
        <cfset local.structtest=StructNew()>
        <cfset value=StructInsert(structtest, "#arguments.keyname#", "#arguments.keyvalue#")>          
        <cfreturn local.structtest>
    </cffunction>
</cfcomponent>