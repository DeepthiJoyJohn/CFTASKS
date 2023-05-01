<cfcomponent output="false">
    <cffunction name="createtable" access="public">
        <cfset local.returnData = ArrayNew(1)>
        <cfset local.personStruct = {}>
        <cfset local.personStruct = {"Name":"saravanan","Age":27,"LOCATION":"dubai"}>        
        <cfset arrayAppend( local.returnData,local.personStruct )>
        <cfset local.personStruct = {"Name":"Ram","Age":26,"LOCATION":"Kovilpatti"}>
        <cfset arrayAppend( local.returnData,local.personStruct )>
        <cfset local.j = serializeJSON(local.returnData)>
        <cfreturn local.j>
    </cffunction>
</cfcomponent>