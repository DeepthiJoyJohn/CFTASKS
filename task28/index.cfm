<form name="form" action=""  method="Post"> 
    <table> 
     	<tr> 
            <td>user name:</td> 
            <td><input type="text" name="j_username" required="yes"  message="A user name is required">
			</td> 
     	</tr> 
     	<tr> 
            <td>password:</td> 
            <td><input type="password" name="j_password" required="yes">
			</td> 
     	</tr> 
    </table> 
    <br> 
    <input type="submit" name="submitactiontask28" value="Log In"> 
	<cfif isDefined("Form.submitactiontask28")>
		<cfinvoke component="CFTASKSCOMBINED.Components.cftask28component" username1="#form.j_username#" 
		password1="#form.j_password#" method="logindata" returnVariable="res">
        <cfif res eq "1001" or res eq "1002">
			<cflocation url="pages.cfm">
		<cfelse>
			<cflocation url="pagesdes.cfm">
		</cfif>
	</cfif>
</form>