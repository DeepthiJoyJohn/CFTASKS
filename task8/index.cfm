
<cfform name="myform" id="myform"> 
    <label>Text Box 1(structure Key)</label>
	<input type="text" class="form-control" name="txtbox5" value="" required />
	<label>Text Box 2(Structure Value)</label>
	<input type="text" class="form-control" name="txtbox6" value="" required />
	<cfinput type="Submit" name="submittask8" value="Submit">&nbsp;	
</cfform>
<cfif isDefined("form.submittask8")> 
    <cfif isDefined("form.txtbox5") && isDefined("form.txtbox6")> 
		<cfapplication name="Structuretask10" sessionmanagement="Yes">
   		<cfif not structKeyExists(application, "#form.txtbox5#")>
	    	<cflock scope="application" type="exclusive" timeout="30">  
	            <cfset value=StructInsert(application, "#form.txtbox5#", "#form.txtbox6#")>            
	    	</cflock>         
        <cfelse>
			<cfscript>
				StructUpdate(application, #form.txtbox5#, #form.txtbox6#)
			</cfscript>
        </cfif>
	    <cfset value=StructDelete(application, 'applicationname')>
        <cfdump var="#application#" label="structtest">    	 
    </cfif>   
</cfif>




