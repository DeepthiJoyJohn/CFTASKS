<p><b>CFTASK16-PROGRAM TO PRINT PATTERN</b></p>

<cfscript>
	patternObj=createObject("component","CFTASKSCOMBINED.Components.cftask16component"); 
</cfscript>
<cfset structvar=patternObj.pattern()/>
<cfoutput>				
	#structvar[1]#<br><br>
	#structvar[2]#<br><br>
	#structvar[3]#<br>
</cfoutput>


	

	


