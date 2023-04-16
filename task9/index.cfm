<form name="form" id="form" method="post">
	<div style="text-align: center;"><b>CFTASK 9-COLDFUSION STRUCTURE</b></div>
	<div style="text-align: center;padding:50px;">
		<label style="padding:10px;"><b>Textbox1</b></label><input type='text' class="form-control" name='txtbox1' id='txtbox2'>
		<label style="padding:10px;"><b>Textbox2</b></label><input type='text' class="form-control" name='txtbox2' id='txtbox2'>	
	</div>
	<div style="text-align: center;"><input type="Submit" name="SubmitTask9" value="Submit"></div>
	<cfapplication name="Structuretask9" sessionmanagement="Yes">
	<cfif isDefined("form.SubmitTask9")> 	
    	<cfif isDefined("form.txtbox1") && isDefined("form.txtbox2")> 
   			<cfif not structKeyExists(application, "#form.txtbox1#")>    
				<cflock scope="application" type="exclusive" timeout="30">  
						<cfset value=StructInsert(application, "#form.txtbox1#", "#form.txtbox2#")>            
				</cflock>         
    		<cfelse>
				<cfoutput>
					<b>THE KEY #form.txtbox1# ALREADY PRESENT CANNOT ADD AGAIN</b>
				</cfoutput>
    		</cfif>
			<cfset value=StructDelete(application, 'applicationname')>
			<cfdump var="#application#" label="structtesttask9">    
   		</cfif>   
	</cfif>
</form>
