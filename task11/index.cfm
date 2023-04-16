<!--- Please insert your code here --->
<form>

<div style="text-align: center;"><b>CFTASK 11-COLDFUSION MULTIPLY</b></div>
<cfscript>
 	
 
function multiply(Arg1,Arg2) { 
	var arg_count = ArrayLen(Arguments); 
	var sum = 1; 
	var i = 0; 
	for( i = 1 ; i LTE arg_count; i = i + 1 ) 
	{ 
	sum = sum * Arguments[i]; 
	} 
	return sum; 
	}
	
</cfscript>
<cfset res=#multiply(1,2)#>
<cfoutput ><b>
	The Result of function multiply(1,2)=
</cfoutput>
<cfdump var=#res#></b>
<cfset res=#multiply(1,2,3)#><br><br>
<cfoutput><b>
	The Result of function multiply(1,2,3)=
</cfoutput>
<cfdump var=#res#></b>
<cfset res=#multiply(1,2,3,4)#><br><br>
<cfoutput><b>
	The Result of function multiply(1,2,3,4)=
</cfoutput>
<cfdump var=#res#></b>




	




</form>