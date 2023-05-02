<cfcomponent displayname="Names" hint="ColdFusion Component for Names"> 
	<cffunction name="retrieveNames" access="remote">
		<cfquery name="local.getNames" datasource="cftask">
			select * from cftask12
		</cfquery>
		<cfreturn local.getNames>
	</cffunction>
</cfcomponent>

