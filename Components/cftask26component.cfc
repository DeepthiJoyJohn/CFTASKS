<cfcomponent output="false">
    <cffunction name="readdata" access="public">
        <cfargument name="filename"  type="string" required="true">
        <cffile action="upload" fileField="fileUpload" destination="C:\Pictures" accept="text/plain"  
        nameconflict="overwrite"> 
        <cffile action="read"	file="C:\Pictures\#serverfile#"	variable="shoppingList">
        <cfset shoppingList=replaceList("#shoppingList#","."," ")>            
        <cfset local.arrData2 = ListToArray(shoppingList," ") />
        <cfquery name="delete" datasource="cftask"> 
            delete from tags
        </cfquery>
        <cfset wordCount = structNew()>
        <cfloop from="1" to="#ArrayLen(local.arrData2)#" index="i">
            <cfif IsNumeric(#local.arrData2[i]#) OR Len(#local.arrData2[i]#) lt 3>
            <cfelse>                
                <cfif NOT StructKeyExists(wordCount, "#local.arrData2[i]#")> 
                    <cfset local.occurrences = listValueCount("#shoppingList#", "#local.arrData2[i]#", " ")>
                    <cfset structInsert(wordCount,"#local.arrData2[i]#",#local.occurrences#)>
                     <cfquery name="AddWords" datasource="cftask"> 
                        INSERT INTO tags (word,count) VALUES (<cfqueryparam value="#local.arrData2[i]#" cfsqltype="CF_SQL_VARCHAR">,
                        <cfqueryparam value="#local.occurrences#" cfsqltype="CF_SQL_INTEGER">) 
                    </cfquery>
                </cfif>
            </cfif>
        </cfloop>
        <cfquery name="local.getdata" datasource="cftask">
            SELECT * FROM   tags ORDER BY COUNT DESC,LENGTH(word) DESC,word ASC
        </cfquery>
        <cfreturn local.getdata>                  
    </cffunction>
</cfcomponent>