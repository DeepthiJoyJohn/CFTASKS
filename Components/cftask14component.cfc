<cfcomponent output="true"> 
	<cffunction name="retrieveImages" access="public">
	    <cfargument name="filename"  required="true">  
		<cfargument name="description"  required="true">
		<cfargument name="fileUpload"  type="string" required="true">
		<cffile action="upload" fileField="fileUpload" destination="C:\Pictures" accept="image/png,image/jpg,image/gif,image/jpeg"  nameconflict="overwrite">    
		<cffile action = "rename" destination = "#cffile.ServerDirectory#/#filename#.#cffile.ClientFileExt#" source = "#cffile.ServerDirectory#/#cffile.ClientFileName#.#cffile.ClientFileExt#" mode = "666">
		<cfif cffile.filesize gt 1000000>
		    <cffile action="delete"	file="#cffile.ServerDirectory#\#filename#.#cffile.ClientFileExt#" result="fileUpload">
			<cfthrow type="sizeerror" message="File is to big; your file must be smaller than 1.0mb.">				
		</cfif>		     
		<cfoutput>
		   	Thankyou, your file has been uploaded to successfully to #cffile.ServerDirectory# 
		</cfoutput>
		<cfif not structKeyExists(application, "#filename#")>    
			<cflock scope="application" type="exclusive" timeout="30">  
					<cfset value=StructInsert(application, "#filename#", "#description#")>            
			</cflock>				
		</cfif>		
		<cfif IsImageFile("#cffile.ServerDirectory#/#filename#.#cffile.ClientFileExt#")>		
		    <cfimage action="read" source="#cffile.ServerDirectory#/#filename#.#cffile.ClientFileExt#" name="myImage">
		    <cfset ImageScaleToFit(myImage,20,20,"bilinear")>
		    <cfset newImageName = #cffile.ServerDirectory# & "/" &#filename#&"_thumbnail." &#cffile.ClientFileExt#>		      	
		    <cfimage source="#myImage#" action="write" destination="#newImageName#" overwrite="yes">
		</cfif>
		<cfreturn application>
	</cffunction>
</cfcomponent>