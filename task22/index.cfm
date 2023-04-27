<html>	
	<body>
		<form name="form" id="form" action=""  enctype="multipart/form-data" method="post">
			<p><b>TASK22_SHOWING JSON IN TABLE FORMAT</b></p>
		<form>
		<cfinvoke component="CFTASKSCOMBINED.Components.cftask22component" method="createtable" returnVariable="res">	
		<cfset cfData=DeserializeJSON(#res#)>	
		<cfset ArrayLength = arraylen(cfData)>	
		<TABLE CELLPADDING="3" CELLSPACING="0">
			<TR BGCOLOR="#888888">				
				<TH>Name</TH>
				<TH>Age</TH>
				<TH>Location</TH>				
			</TR>
			<cfloop index="i" from="1" to=#ArrayLength#> 					   
				<cfoutput>
					<TR>
						<TD>#cfData[i]["Name"]#</TD>
						<TD>#cfData[i]["Age"]#</TD>
						<TD>#cfData[i]["LOCATION"]#</TD>
					</TR>
				</cfoutput>
			</cfloop>
		</TABLE>
	</body>	
</html>