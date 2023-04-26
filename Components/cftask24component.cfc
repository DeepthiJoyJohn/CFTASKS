<cfcomponent output="true">  
    <cffunction name="test" access="remote">    
        <cfset local.email="#url.email#"> 
        <cfset local.firstname="#url.firstname#"> 
        <cfquery name="getemail" datasource="cftask">
			SELECT emailaddress FROM cftask24 where emailaddress=<cfqueryparam value="#url.email#" 
            cfsqltype="CF_SQL_VARCHAR">
		</cfquery>
        <cfif getemail.RecordCount GTE 1>
            <cfset local.text="Email ID Already Present!!!">
        <cfelse>            
            <cfset local.text="false">
        </cfif>  
       <cfreturn local.text> 
    </cffunction>
    <cffunction name="adddata" access="remote">    
        <cfargument name="firstname">
        <cfargument name="emailaddress">
        
        <cfquery name="addemail" datasource="cftask" result="result">
			INSERT INTO cftask24 (firstname,emailaddress) VALUES 
            (<cfqueryparam value="#arguments.firstname#" cfsqltype="CF_SQL_VARCHAR">,
            <cfqueryparam value="#arguments.emailaddress#" cfsqltype="CF_SQL_VARCHAR">) 
		</cfquery>
        <cfset local.text="Record Added Successfully">
        <cfreturn local.text> 
    </cffunction>   
</cfcomponent>