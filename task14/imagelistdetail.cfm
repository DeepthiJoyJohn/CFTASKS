
<cfset FileName1 = ListDeleteAt(FileName, ListLen(FileName, "."), ".")>
<cfoutput>
	<p>Image Name=#FileName#</p> 
    <p>Image Description=#application[FileName1]#</p>                   
</cfoutput><br>    
<cfset myImage=ImageNew("C:/Pictures\#filename#")>	
<p>Original Uploaded Image</p>			
<cfimage source="#myImage#" action="writeToBrowser"><br>
