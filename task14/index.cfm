
<form name="form" id="form" enctype="multipart/form-data" action="" method="post">
	<h4>TASK14-IMAGE UPLOAD </h4>
	<label>Image Name</label>
	<input type="text" name="txtbox1" value="" required>
	<label>Description</label>
	<input type="text" name="txtbox2" value="" required>
 	<input type="file" name="fileUpload">
	<input type="Submit" name="SubmitTask14action" value="Upload File">		        
</form>	
<cfif isDefined("form.SubmitTask14action")>
	<cfinvoke component="CFTASKSCOMBINED.Components.cftask14component" method="retrieveImages" 
	filename="#Form.txtbox1#" description="#Form.txtbox2#" fileUpload=#Form.fileUpload# returnVariable="res">	
	<cfset recurse=true>
	<cfset listInfo="name">
	<cfset filter="*_thumbnail*">
	<cfset res= DirectoryList(#cffile.ServerDirectory#,recurse,#listInfo#,#filter#)> 
	<cfloop array="#res#" item="itm">
		<br><br>
		<cfset myImage=ImageNew("#cffile.ServerDirectory#\#itm#")>				
		<cfimage source="#myImage#" action="writeToBrowser"><br>
		<cfset FileName = rereplace( #itm# , '_thumbnail' , '' ) />
		<cfoutput>				    		
			<a href="../task14/imagelistdetail.cfm?filename=#FileName#">#FileName#</a>
		</cfoutput>			    
	</cfloop>
</cfif>

