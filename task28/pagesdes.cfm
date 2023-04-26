<form name="form" action=""  method="Post"> 
	<cfinvoke component="CFTASKSCOMBINED.Components.cftask28component" method="viewpage" returnVariable="res">    
	<table style="border: 1px solid black;">
		<tr><td>Page Names</td></tr>
		<cfoutput query="res">		
		<tr>
		<td> <a href="pagesdes.cfm?id=#res.id#">#res.pagename#</a></td>
		</tr>
		</cfoutput>
	</table><br>
	<cfif isDefined("URL.id")>
		<cfinvoke component="CFTASKSCOMBINED.Components.cftask28component" itemid=#URL.id# method="viewpageitem" returnVariable="res">    
		<cfoutput>
			<table> 
				<tr> 
					<td>Page Name:</td> 
					<td>Description</td> 
				</tr> 
				<tr> 
					<td>#res.pagename#:</td> 
					<td>#res.pagedes#</td> 
				</tr> 		 
			</table>
	    </cfoutput>
	</cfif>
</form>