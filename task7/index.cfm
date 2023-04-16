<cfform name="myform" id="myform">  
	<label>Text Box 1(structure Key)</label>
	<input type="text" class="form-control" name="txtbox3" value="" required />
	<label>Text Box 2(Structure Value)</label>
	<input type="text" class="form-control" name="txtbox4" value="" required />
	<input type="Submit" name="submittask7" value="Submit">&nbsp;	
</cfform>


<cfif isDefined("form.submittask7")> 	
	<cfif isDefined("form.txtbox3") && isDefined("form.txtbox4")> 
   		<cfif not structKeyExists(application, "#form.txtbox3#")>
	    	<cflock scope="application" type="exclusive" timeout="30">  
	            <cfset value=StructInsert(application, "#form.txtbox3#", "#form.txtbox4#")>            
	    	</cflock>
       		<cfdump var="#application#" label="structtest">    
    	</cfif> 
    </cfif>   
</cfif>

