<cfcomponent output="false">
    <cffunction name="colr" access="public">	
        <cfargument name="Arg1"> 
        <cfset colstruct=StructNew()>
		<cfset local.cor="blue">
		<cfset local.text="Odd No">
		<cfif #arguments.Arg1#%2 eq 0>
			<cfset local.cor="green">
			<cfset local.text="Even No">
            <cfset value=StructInsert(colstruct, "color", "#local.cor#")>  
            <cfset value=StructInsert(colstruct, "text", "#local.text#")>  
		</cfif>
		<cfreturn colstruct>
	</cffunction>
</cfcomponent>