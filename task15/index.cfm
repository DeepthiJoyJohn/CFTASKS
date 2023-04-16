<!--Invoke-->
<cfinvoke component="CFTASKSCOMBINED.Components.cftask15component" method="multiply" Arg1="1" Arg2="2"  returnVariable="res1">
<cfinvoke component="CFTASKSCOMBINED.Components.cftask15component" method="multiply" Arg1="1" Arg2="2" Arg3="3"  returnVariable="res2">
<cfinvoke component="CFTASKSCOMBINED.Components.cftask15component" method="multiply" Arg1="1" Arg2="2" Arg3="3" Arg4="4"  returnVariable="res3">
<cfoutput>
    <p><b> Results for multiply function with invoke tag</b></p>
	mulitiply(1,2)=				    		
	#res1#
	mulitiply(1,2,3)=				    		
	#res2#
	mulitiply(1,2,3,4)=				    		
	#res3#		
</cfoutput>	
<!--End-->
<!--cfobject-->
<cfobject name="multiplyObj" type="component" component="CFTASKSCOMBINED.Components.cftask15component">
<cfoutput>
	<p><b>Results for multiply function with cfobject tag</b></p>
	mulitiply(1,2)=			
	#multiplyObj.multiply(1,2)#
	mulitiply(1,2,3)=			
	#multiplyObj.multiply(1,2,3)#
	mulitiply(1,2,3,4)=			
	#multiplyObj.multiply(1,2,3,4)#
</cfoutput>
<!--End-->	
<!--Create Object-->
<cfscript>
	multiplyObj=createObject("component","CFTASKSCOMBINED.Components.cftask15component"); 
</cfscript>
<cfoutput>
	<p><b>Results for multiply function with create Object</b></p>
	mulitiply(1,2)=			
	#multiplyObj.multiply(1,2)#
	mulitiply(1,2,3)=			
	#multiplyObj.multiply(1,2,3)#
	mulitiply(1,2,3,4)=			
	#multiplyObj.multiply(1,2,3,4)#
</cfoutput>

<!--End-->
	

	


