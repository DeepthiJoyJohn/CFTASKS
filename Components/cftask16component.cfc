<cfcomponent output="true"> 
	<cffunction name="pattern" access="public">	
		<cfset patternstruct=StructNew()>
		<cfloop index="i" from="1" to="3"> 
			<cfset local.x=#i#+3>
			<cfset local.y=#x#+3>
			<cfset local.patternstring = #i#&" "&#x#&"  "&#y#>			
			<cfset value=StructInsert(patternstruct, "#i#", "#patternstring#")>  
		</cfloop> 
		<cfreturn patternstruct>
	</cffunction>
</cfcomponent>
