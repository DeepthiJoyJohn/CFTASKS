<!--- Please insert your code here --->
<cfform>
<label>User DOB</label>
<input type="date" class="form-control" name="dtuser" value="#LSDateFormat(now(),'yyyy-mm-dd')#" required />
<label>Mothers DOB</label>
<input type="date" class="form-control" name="dtmother" value="#LSDateFormat(now(),'yyyy-mm-dd')#" required />
<cfinput type="Submit" name="ControlName" value="Submit">
</cfform>
<cfif isDefined("Form.dtuser")>
	
	<cfset age = dateDiff("yyyy", #Form.dtuser#, now())>	
	<cfset agemotherdelivered = dateDiff("yyyy", #Form.dtuser#, #Form.dtmother#)><br>	
	<cfset monthuserbday=Month(Form.dtuser)>
	<cfset monthmotherbday=Month(Form.dtmother)>
	<cfset monthtoday=Month(now())>
	<cfset yeartoday=Year(now())>
	<cfset d=Day(Form.dtuser)>
	<cfset dmother=Day(Form.dtmother)>
	<cfset dnow=Day(now())>
	<cfif #monthuserbday# gte #monthtoday#> 
		<cfif #d# gte #dnow#>		 
		 <cfset dateofuserbdaythisyear = createDate(yeartoday,monthuserbday,d)>
		 <cfset noofdaysforuserbday=dateDiff("d", #dateofuserbdaythisyear#, now())>
		<cfelse>
		 <cfset #yeartodayuser#=#yeartoday#+1>
	     <cfset dateofuserbdaythisyear = createDate(yeartodayuser,monthuserbday,d)>
		 <cfset noofdaysforuserbday=dateDiff("d", #dateofuserbdaythisyear#, now())>		  
		</cfif>
	<cfelseif #monthtoday# gt #monthuserbday#>
	    <cfset #yeartodayuser#=#yeartoday#+1>
	    <cfset dateofuserbdaythisyear = createDate(yeartodayuser,monthuserbday,d)>
		<cfset noofdaysforuserbday=dateDiff("d", #dateofuserbdaythisyear#, now())>
	</cfif>
	<cfoutput >
		#monthtoday#
	</cfoutput>
	<cfif #monthmotherbday# gte #monthtoday#>
	 <cfif #dmother# gte #dnow#>				 
		<cfset dateofmotherbdaythisyear = createDate(yeartoday,monthmotherbday,dmother)>
		<cfset noofdaysformotherbday=dateDiff("d", #dateofmotherbdaythisyear#, now())>
	 <cfelse>
	    <cfset #yeartodaymother#=#yeartoday#+1>
	    <cfset dateofmotherbdaythisyear = createDate(yeartodaymother,monthmotherbday,dmother)>
		<cfset noofdaysformotherbday=dateDiff("d", #dateofmotherbdaythisyear#, now())>
	 </cfif>
	<cfelseif #monthtoday# gt #monthmotherbday#>	
	    <cfset #yeartodaymother#=#yeartoday#+1>
	    <cfset dateofmotherbdaythisyear = createDate(yeartodaymother,monthmotherbday,dmother)>
		<cfset noofdaysformotherbday=dateDiff("d", #dateofmotherbdaythisyear#, now())>
	</cfif>
	
	
	<cfoutput>
		
		<b>Age Of User=#age#</b><br>
			<b>Days Left for User Birthday=#noofdaysforuserbday#</b><br><br>
		<span style='color:red;'><b>Age At Which Mother Delivered User=#agemotherdelivered#</b><br>
		<b>Days Left for Mother Birthday=#noofdaysformotherbday#</b></span>
		
	</cfoutput>
</cfif>