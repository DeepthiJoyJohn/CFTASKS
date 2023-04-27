<cfcomponent displayname="Names" hint="ColdFusion Component for Names"> 
	<cffunction name="retrieveNames" access="remote">
		<cfquery name="getNames" datasource="cftask">
			select * from cftask12
		</cfquery>
		<cfreturn getNames>
	</cffunction>
</cfcomponent>

