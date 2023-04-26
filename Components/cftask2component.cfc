<cfcomponent output="false">    
    <cffunction name="checkinput" access="public">
        <cfargument name="textname">
        <cfswitch expression=#arguments.textname#> 
            <cfcase value="5">
                <cfset local.text="#arguments.textname# is Very Good">
            </cfcase>
            <cfcase value="4">
                <cfset local.text="#arguments.textname# is Good">
            </cfcase> 
            <cfcase value="3">
                <cfset local.text="#arguments.textname# is Fair">
            </cfcase>
            <cfdefaultcase>
                <cfset local.text="OK">
            </cfdefaultcase> 
        </cfswitch>                
        <cfreturn local.text>
    </cffunction>
</cfcomponent>