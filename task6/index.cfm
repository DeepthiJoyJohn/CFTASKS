

<cfform name="myform" id="myform">  
      <label>Text Box 1</label>
		<input type="text" class="form-control" name="txtbox1" value="" required />
		<label>Text Box 2</label>
		<input type="text" class="form-control" name="txtbox2" value="" required />
		<cfinput type="Submit" name="submittask6" value="Submit">&nbsp;	
</cfform>			
 
 

<cfif isDefined("form.submittask6")> 
	
   <cfif isDefined("form.txtbox1") && isDefined("form.txtbox2")>
   	 <cfset structtest=StructNew()>
      <cfset value=StructInsert(structtest, "#form.txtbox1#", "#form.txtbox2#")>
    <cfdump var="#structtest#" label="structtest">
   </cfif>
    
    
</cfif>

