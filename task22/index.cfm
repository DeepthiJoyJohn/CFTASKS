<html>	
	<body>
		<form name="form" id="form" action=""  enctype="multipart/form-data" method="post">
			<p><b>TASK22_SHOWING JSON IN TABLE FORMAT</b></p>
		<form>
		<cfinvoke component="CFTASKSCOMBINED.Components.cftask22component" method="createtable" returnVariable="res">	
		<cfset cfData=DeserializeJSON(#res#)>		
		<TABLE CELLPADDING="3" CELLSPACING="0">
			<TR BGCOLOR="#888888">				
				<TH>Name</TH>
				<TH>Age</TH>
				<TH>Location</TH>				
			</TR>
			<TR>				
				<TD><cfoutput>#cfData[1].Name#</cfoutput></TD>
				<TD><cfoutput>#cfData[1].Age#</cfoutput></TD>
				<TD><cfoutput>#cfData[1].LOCATION#</cfoutput></TD>				
			</TR>
			<TR>				
				<TD><cfoutput>#cfData[2].Name#</cfoutput></TD>
				<TD><cfoutput>#cfData[2].Age#</cfoutput></TD>
				<TD><cfoutput>#cfData[2].LOCATION#</cfoutput></TD>				
			</TR>
		</TABLE>
	</body>	
</html>