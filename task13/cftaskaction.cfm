<cfif isDefined("form.SubmitTask13action")>
	<cfset stringToSearch="the quick brown fox jumps over the lazy dog">
	<cfset substring=#form.txtbox1#>
	<cfset occurrences= (Len(stringToSearch) -Len(Replace(stringToSearch,substring,'','all'))) / Len(substring) >
    <cfoutput >
		Found the key word in #occurrences# times-the quick brown fox jumps over the lazy dog<br>
	</cfoutput> 
</cfif>
