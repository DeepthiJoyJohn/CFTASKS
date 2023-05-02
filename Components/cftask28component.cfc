<cfcomponent output="false">    
    <cffunction name="logindata" access="public">
        <cfargument name="username1">
        <cfargument name="password1">
        <cfquery name="checkdata" datasource="cftask">
            SELECT role FROM user where username=<cfqueryparam value="#arguments.username1#" cfsqltype="CF_SQL_VARCHAR"> and 
            pwd=<cfqueryparam value="#arguments.password1#" cfsqltype="CF_SQL_VARCHAR">
        </cfquery>
        <cfif checkdata.RecordCount GTE 1>
            <cfset session.usergroup="#checkdata.role#">
        <cfelse>
            <cfset session.usergroup="">
        </cfif>
        <cfreturn session.usergroup>
    </cffunction>
    <cffunction name="addpage" access="public">  
        <cfargument name="pagename">
        <cfargument name="description">
        <cfquery name="local.getlastid" datasource="cftask">
			SELECT CASE WHEN MAX(id) IS NULL THEN 1 ELSE MAX(id)+1 END AS id FROM page
		</cfquery>                 
        <cfquery name="local.checkpage" datasource="cftask">
            INSERT INTO page (id,pageid,pagename,pagedes) VALUES 
            (<cfqueryparam value="#local.getlastid.id#" cfsqltype="CF_SQL_INTEGER">,
            <cfqueryparam value="#local.getlastid.id#" cfsqltype="CF_SQL_INTEGER">,
            <cfqueryparam value="#arguments.pagename#" cfsqltype="CF_SQL_VARCHAR">,
            <cfqueryparam value="#arguments.description#" cfsqltype="CF_SQL_VARCHAR">) 
        </cfquery>  
        <cfquery name="local.pagelist" datasource="cftask">
            SELECT * from page
        </cfquery>             
        <cfreturn local.pagelist>
    </cffunction>
    <cffunction name="deletepage" access="remote">                 
        <cfquery name="local.deletepage" datasource="cftask">
			delete from page where id=<cfqueryparam value="#url.id#" cfsqltype="CF_SQL_INTEGER">
		</cfquery>
        <cflocation url="../task28/pages.cfm">
    </cffunction>
    <cffunction name="updatepage" access="remote">  
        <cfargument name="pagename">
        <cfargument name="description">  
        <cfargument name="id">                            
        <cfquery name="local.updatepage" datasource="cftask">
			update page set pagename=<cfqueryparam value="#arguments.pagename#" cfsqltype="CF_SQL_VARCHAR">,
            pagedes=<cfqueryparam value="#arguments.description#" cfsqltype="CF_SQL_VARCHAR"> where id=
            <cfqueryparam value="#arguments.id#" cfsqltype="CF_SQL_INTEGER">
		</cfquery>                    
        <cflocation url="../task28/pages.cfm">
    </cffunction>
    <cffunction name="viewpage" access="public">          
        <cfquery name="local.pagelist" datasource="cftask">
            SELECT * from page
        </cfquery> 
        <cfreturn local.pagelist>
    </cffunction>
    <cffunction name="viewpageitem" access="public">
        <cfargument name="itemid">          
        <cfquery name="local.pagelist" datasource="cftask">
            SELECT * from page where id=<cfqueryparam value="#arguments.itemid#" cfsqltype="CF_SQL_INTEGER">
        </cfquery> 
        <cfreturn local.pagelist>
    </cffunction>
</cfcomponent>