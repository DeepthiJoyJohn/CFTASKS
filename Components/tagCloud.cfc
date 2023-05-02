<cfcomponent output="false">
    <cffunction name="init" access="public" output="false" hint="constructor">
        <cfargument name="textc">
        <cfset local.strData = "#arguments.textc#" />
        <cfset local.strData=replaceList("#local.strData#",";,&,<,>,`,',!,@,$,%,(,),=,+,{,},[,],\,.,"," ")>  
        
		<cfset local.arrData = ListToArray(local.strData," ") />
        <cfquery name="local.delete" datasource="cftask"> 
            delete from tags
        </cfquery>
        <cfset local.words=structnew()> 
        <cfloop from="1" to="#ArrayLen(local.arrData)#" index="i">
            <cfif IsNumeric(#local.arrData[i]#) OR Len(#local.arrData[i]#) lt 3>
            <cfelse> 
                <cfif NOT StructKeyExists(local.words, "#local.arrData[i]#")> 
                    <cfset local.occurrences = listValueCount("#local.strData#", "#local.arrData[i]#", " ")>
                    <cfset structInsert(local.words,"#local.arrData[i]#",#local.occurrences#)>    
                    <cfquery name="local.AddWords" datasource="cftask"> 
                        INSERT INTO tags (word,count) VALUES (<cfqueryparam value="#local.arrData[i]#" cfsqltype="CF_SQL_VARCHAR">,
                        <cfqueryparam value="#local.occurrences#" cfsqltype="CF_SQL_INTEGER">) 
                    </cfquery>
                </cfif>
            </cfif>
        </cfloop>  
        <cfset local.words=local.words.ToSorted("text","asc",false)>
        <cfreturn local.words>
    </cffunction>
    <cffunction name="retrievedatatest" access="public" output="false" >
        <cfquery name="local.getdata" datasource="cftask">
            SELECT * FROM   tags ORDER BY COUNT DESC,LENGTH(word) DESC,word ASC
        </cfquery>
        <cfreturn local.getdata>
    </cffunction>
</cfcomponent>
