<cfcomponent output="false">
    <cffunction name="readdata" access="public">
        <cfargument name="filename"  type="string" required="true">
        <cffile action="upload" fileField="fileUpload" destination="C:\Pictures" accept="text/plain"  
        nameconflict="overwrite"> 
        <cffile action="read"	file="C:\Pictures\#serverfile#"	variable="shoppingList">
        <cfset local.arrData2 = ListToArray(shoppingList," ") />
        <cfset wordCount = structNew()>
        <cfloop from="1" to="#ArrayLen(local.arrData2)#" index="i">
            <cfif IsNumeric(#local.arrData2[i]#)>
            <cfelse>                
                <cfif NOT StructKeyExists(wordCount, "#local.arrData2[i]#")>       
                    <cfset occurrences= (Len(#shoppingList#) -Len(Replace(#shoppingList#,#local.arrData2[i]#,'','all'))) / Len(#local.arrData2[i]#) >
                    <cfset structInsert(wordCount,"#local.arrData2[i]#",#occurrences#)>
                </cfif>
            </cfif>
        </cfloop>
        <cfset StructSort(wordCount,"numeric","desc")>        
        <cfreturn wordCount>                   
    </cffunction>
</cfcomponent>