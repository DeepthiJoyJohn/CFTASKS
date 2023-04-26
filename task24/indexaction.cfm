<cfquery name="getemail" datasource="cftask">
select * from cftask24 
where emailaddress = 
  <cfqueryparam value = "#url.email#" cfsqltype="cf_sql_varchar">
</cfquery>
<cfif getemail.recordcount>
<span>
<cfoutput>Found</cfoutput>
</span>
</cfif>