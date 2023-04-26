<html>
	
<form name="form" action=""  method="Post">
	<cfif isDefined("URL.pagename") AND isDefined("URL.pagedes")>
		<cfset pagename="#URL.pagename#">
		<cfset pagedes="#URL.pagedes#">
		<cfset id="#URL.id#">
	<cfelse>
		<cfset pagename="">
		<cfset pagedes="">
		<cfset id="">
	</cfif>
	<table> 
     	<tr> 
            <td>Page Name:</td> 
            <td><input type="text" name="pagename" value="<cfoutput>#pagename#</cfoutput>">
			</td> 
     	</tr> 
     	<tr> 
            <td>Description:</td> 
            <td><input type="text" name="description" value="<cfoutput>#pagedes#</cfoutput>">
			    <input type="hidden" name="id" value="<cfoutput>#id#</cfoutput>">
			</td> 
     	</tr> 		 
    </table>
	<cfif #pagename# eq "">
		<input type="submit" name="submitpage" value="Add"> 
	<cfelse>
		<input type="submit" name="updatepage" value="Update"> 
	</cfif>
	<cfif isDefined("Form.submitpage")>
		<cfinvoke component="CFTASKSCOMBINED.Components.cftask28component" pagename="#form.pagename#" 
		description="#form.description#" method="addpage" returnVariable="res">
	<cfelseif isDefined("Form.updatepage")>
		<cfinvoke component="CFTASKSCOMBINED.Components.cftask28component" pagename="#form.pagename#" 
		description="#form.description#" id=#form.id# method="updatepage" returnVariable="res">
	<cfelse>
		<cfinvoke component="CFTASKSCOMBINED.Components.cftask28component" method="viewpage" returnVariable="res">
	</cfif>
	
		<table style="border: 1px solid black;">
			<tr>
				<th colspan=2>Page ID</th>
				<th colspan=2>Page Name</th>
				<th colspan=2>Description</th>
				<th colspan=2>Delete</th>
				<th colspan=2>Edit</th>
			</tr>
			<cfoutput query="res">
				<tr>
					<td colspan=2 style="border:1px solid black;">#id#</td>
					<td colspan=2 style="border:1px solid black;">#pagename#</td>
					<td colspan=2 style="border:1px solid black;">#pagedes#</td>
					<td colspan=2 style="border:1px solid black;">
						<a href="../Components/cftask28component.cfc?method=deletepage&id=#id#">Delete</a>						
					</td>
					<td colspan=2 style="border:1px solid black;">						
						<a href="pages.cfm?pagename=#pagename#&pagedes=#pagedes#&id=#id#">edit</a>
					</td>
				</tr>
			</cfoutput>
		</table>

</form>