<cfcomponent output="false">
    <cffunction name="init" access="public" output="false" hint="constructor">
        <cfargument name="textc">
        <cfset local.strData = "#arguments.textc#" />
		<cfset local.arrData = ListToArray(local.strData," ") />
        <cfset local.words=structnew()> 
        <cfloop from="1" to="#ArrayLen(local.arrData)#" index="i">
            <cfif IsNumeric(#local.arrData[i]#)>
            <cfelse>                
                <cfif NOT StructKeyExists(local.words, "#local.arrData[i]#")>       
                    <cfset structInsert(local.words,"#local.arrData[i]#",#local.arrData[i]#)>                 
                    <cfquery name="AddWords" datasource="cftask"> 
                        INSERT INTO tags (word) VALUES (<cfqueryparam value="#local.arrData[i]#" cfsqltype="CF_SQL_VARCHAR">) 
                    </cfquery>
                </cfif>
            </cfif>
        </cfloop>        
        <cfreturn local.words>
    </cffunction>
    <cffunction name="retrievedata" access="public" output="false" >
        <cfargument name="textd">
        <cfset local.strData2 = "#arguments.textd#" />
		<cfset local.arrData2 = ListToArray(local.strData2," ") />
        <cfquery name="getdata" datasource="cftask">
            SELECT word FROM tags ORDER BY LENGTH(word) DESC,word ASC        
        </cfquery>
        <cfset wordCount = structNew()>
        <cfloop query="getdata">
            <cfset occurrences= (Len(local.strData2) -Len(Replace(local.strData2,#word#,'','all'))) / Len(#word#) >
            <cfset structInsert(wordCount,"#word#",#occurrences#)>
        </cfloop>
        <cfset StructSort(wordCount,"numeric","desc")>        
        <cfreturn wordCount>
    </cffunction>
</cfcomponent>
