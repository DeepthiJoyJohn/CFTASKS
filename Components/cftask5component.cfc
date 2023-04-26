<cfcomponent output="false">
    <cffunction name="finddob" access="public">
        <cfargument name="dobuser">
        <cfargument name="dobmother">
        <CFSET FirstDate = DateFormat(Now(  ),'yyyy-mm-dd')>
        <cfset age = dateDiff("yyyy", #arguments.dobuser#,#FirstDate#)>	
		<cfset agemotherdelivered = dateDiff("yyyy", #arguments.dobuser#, #arguments.dobmother#)><br>	
		<cfset monthuserbday=Month(#arguments.dobuser#)>
		<cfset monthmotherbday=Month(#arguments.dobmother#)>
		<cfset monthtoday=Month(now())>
		<cfset yeartoday=Year(now())>
		<cfset d=Day(#arguments.dobuser#)>
		<cfset dmother=Day(#arguments.dobmother#)>
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
        <cfset detailbday=StructNew()>
        <cfset value=StructInsert(detailbday, "Month", "#monthtoday#")>   
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
		<cfset value=StructInsert(detailbday, "Age of user", "#age#")>   
        <cfset value=StructInsert(detailbday, "Days Left for User Birthday", "#noofdaysforuserbday#")>  
        <cfset value=StructInsert(detailbday, "Age At Which Mother Delivered User", "#agemotherdelivered#")>   
        <cfset value=StructInsert(detailbday, "Days Left for Mother Birthday", "#noofdaysformotherbday#")> 
        <cfreturn detailbday>
    </cffunction>
</cfcomponent>