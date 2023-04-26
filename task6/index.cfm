<html>
   <h3>TASK 6-CFDUMB STRUCTURE</h3>
   <form name="myform" id="myform" method="post">  
         <label>Text Box 1</label>
         <input type="text" class="form-control" name="txtbox1" value="" required />
         <label>Text Box 2</label>
         <input type="text" class="form-control" name="txtbox2" value="" required />
         <input type="Submit" name="submittask6" value="Submit">&nbsp;	
   </form>
   <cfif isDefined("form.submittask6")> 
      <cfif isDefined("form.txtbox1") && isDefined("form.txtbox2")>
         <cfinvoke component="CFTASKSCOMBINED.Components.cftask6component" method="createstructure" 
		   keyname="#form.txtbox1#" keyvalue=#form.txtbox2# returnVariable="res">
		   <cfdump var="#res#" label="structtest">         
      </cfif>
   </cfif>
</html>

