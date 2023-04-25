<cfoutput></cfoutput>
<cfif isDefined("Session.log") AND Session.log neq "">    			
	<p><b>Welcome <cfoutput>#Session.log#</cfoutput></b></p>			
	<a href="index.cfm?Session.log=">Logout</a>
<cfelse>
    <CFSET StructClear(Session)>
	<cflocation url="index.cfm">
</cfif>
