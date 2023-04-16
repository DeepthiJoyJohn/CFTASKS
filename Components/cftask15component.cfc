<cfcomponent output="true"> 
	<cffunction name="multiply" access="public">
	    <cfargument name="Arg1"> 
		<cfargument name="Arg2"> 
		 
		
		<cfset result=1>
		<cfloop index="i" from="1" to="#ArrayLen(Arguments)#"> 
			<cfset result=#i#*#result#> 
		</cfloop> 
		<cfreturn result>
	</cffunction>
</cfcomponent>
