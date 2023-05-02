<cfcomponent output="true">  
    <cffunction name="test" access="remote">    
        <cfset local.email="#url.email#"> 
        <cfset local.firstname="#url.firstname#"> 
        <cfquery name="local.getemail" datasource="cftask" result="resultemail">
			SELECT emailaddress FROM cftask24 where emailaddress=<cfqueryparam value="#url.email#" 
            cfsqltype="CF_SQL_VARCHAR">
		</cfquery>
       <cfreturn local.getemail.RecordCount> 
    </cffunction>
    <cffunction name="adddata" access="remote">    
        <cfargument name="firstname">
        <cfargument name="emailaddress">
        <cfquery name="local.addemail" datasource="cftask" result="result">
			INSERT INTO cftask24 (firstname,emailaddress) VALUES 
            (<cfqueryparam value="#arguments.firstname#" cfsqltype="CF_SQL_VARCHAR">,
            <cfqueryparam value="#arguments.emailaddress#" cfsqltype="CF_SQL_VARCHAR">) 
		</cfquery>
        <cfreturn result> 
    </cffunction>   
</cfcomponent>