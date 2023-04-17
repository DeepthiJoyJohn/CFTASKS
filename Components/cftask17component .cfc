<cfcomponent output="true"> 
	<cffunction name="colour" access="public">
		<cfargument name="Arg1"> 
		<cfif arguments.Arg1%2 eq 0>
			<cfset color="green">
		<cfelse>
			<cfset color="blue">
		</cfif>
		<cfreturn color>		
	</cffunction>
</cfcomponent>
