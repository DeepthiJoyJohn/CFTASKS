<html>
	<h5>TASK 11-MULTIPLY</h5>
	<form>
		<cfset obj=CreateObject('component','CFTASKSCOMBINED.Components.cftask11component')>		
		<cfoutput >
			RESULT <br>
			1.multiply(1,2)=#obj.multiply(1,2)#<br>
			2.multiply(1,2,3)=#obj.multiply(1,2,3)#<br>
			3.multiply(1,2,3,4)=#obj.multiply(1,2,3,4)#<br>
		</cfoutput>
	</form>
</html>