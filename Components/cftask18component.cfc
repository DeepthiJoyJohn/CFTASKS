<cfcomponent output="false">
    <cffunction name="query" access="public">	
		<cfscript>
		    myquery=querynew("ID","integer",[[#form.id1#]]);
		    QueryAddColumn(myQuery,"NAME","varchar",["#form.name1#"]);
            QueryAddColumn(myQuery,"EMAIL","varchar",["#form.email1#"]);
            queryAddRow(myQuery,[{ID=#form.id2#,NAME="#form.name2#",EMAIL="#form.email2#"},
            {ID=#form.id3#,NAME="#form.name3#",EMAIL="#form.email3#"}]); 
	    </cfscript>
		<cfquery name="local.AddDetails" datasource="cftask"> 
			INSERT INTO cftask18 (id,name,email) VALUES (<cfqueryparam value="#form.id1#" cfsqltype="CF_SQL_INTEGER">,
			<cfqueryparam value="#form.name1#" cfsqltype="CF_SQL_VARCHAR">,
			<cfqueryparam value="#form.email1#" cfsqltype="CF_SQL_VARCHAR">),
			(<cfqueryparam value="#form.id2#" cfsqltype="CF_SQL_INTEGER">,
			<cfqueryparam value="#form.name2#" cfsqltype="CF_SQL_VARCHAR">,
			<cfqueryparam value="#form.email2#" cfsqltype="CF_SQL_VARCHAR">),
			(<cfqueryparam value="#form.id3#" cfsqltype="CF_SQL_INTEGER">,
			<cfqueryparam value="#form.name3#" cfsqltype="CF_SQL_VARCHAR">,
			<cfqueryparam value="#form.email3#" cfsqltype="CF_SQL_VARCHAR">)   
        </cfquery>
		<cfreturn myquery>
	</cffunction>
</cfcomponent>