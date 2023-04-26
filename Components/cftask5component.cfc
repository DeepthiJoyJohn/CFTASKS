<cfcomponent output="false">
    <cffunction name="finddob" access="public">
        <cfargument name="dobuser">
        <cfargument name="dobmother">        
        <cfset age = dateDiff("yyyy", #arguments.dobuser#,now())>	
		<cfset agemotherdelivered = dateDiff("yyyy", #arguments.dobuser#, #arguments.dobmother#)><br>	
		<cfset monthuserbday=Month(#arguments.dobuser#)>
		<cfset monthmotherbday=Month(#arguments.dobmother#)>
		<cfset monthtoday=Month(now())>
		<cfset yeartoday=Year(now())>
		<cfset d=Day(#arguments.dobuser#)>
		<cfset dmother=Day(#arguments.dobmother#)>
		<cfset dnow=Day(now())>
		<cfif #monthuserbday# gt #monthtoday#> 					 
            <cfset dateofuserbdaythisyear = createDate(yeartoday,monthuserbday,d)>
            <cfset noofdaysforuserbday=dateDiff("d", #dateofuserbdaythisyear#, now())>			
		<cfelseif #monthuserbday# lt #monthtoday#>
			<cfset #yeartodayuser#=#yeartoday#+1>
			<cfset dateofuserbdaythisyear = createDate(yeartodayuser,monthuserbday,d)>
			<cfset noofdaysforuserbday=dateDiff("d", #dateofuserbdaythisyear#, now())>
		<cfelse>
            <cfif #d# gte #dnow#>
                <cfset dateofuserbdaythisyear = createDate(yeartoday,monthuserbday,d)>
                <cfset noofdaysforuserbday=dateDiff("d", #dateofuserbdaythisyear#, now())>
            <cfelse>
                <cfset #yeartodayuser#=#yeartoday#+1>
			    <cfset dateofuserbdaythisyear = createDate(yeartodayuser,monthuserbday,d)>
			    <cfset noofdaysforuserbday=dateDiff("d", #dateofuserbdaythisyear#, now())>
            </cfif>
        </cfif>
        <cfset detailbday=StructNew()>
        <cfset value=StructInsert(detailbday, "Month", "#monthtoday#")>   
		<cfif #monthmotherbday# gt #monthtoday#>            
                <cfset dateofmotherbdaythisyear = createDate(yeartoday,monthmotherbday,dmother)>
                <cfset noofdaysformotherbday=dateDiff("d", #dateofmotherbdaythisyear#, now())>
        <cfelseif #monthmotherbday# lt #monthtoday#>
                <cfset #yeartodaymother#=#yeartoday#+1>
                <cfset dateofmotherbdaythisyear = createDate(yeartodaymother,monthmotherbday,dmother)>
                <cfset noofdaysformotherbday=dateDiff("d", #dateofmotherbdaythisyear#, now())>           
		<cfelse>
            <cfif #dmother# gte #dnow#>	
                <cfset dateofmotherbdaythisyear = createDate(yeartoday,monthmotherbday,dmother)>
                <cfset noofdaysformotherbday=dateDiff("d", #dateofmotherbdaythisyear#, now())>
            <cfelse>			 
                <cfset #yeartodaymother#=#yeartoday#+1>
                <cfset dateofmotherbdaythisyear = createDate(yeartodaymother,monthmotherbday,dmother)>
                <cfset noofdaysformotherbday=dateDiff("d", #dateofmotherbdaythisyear#, now())>
            </cfif>
		</cfif>
		<cfset value=StructInsert(detailbday, "Age of user", "#age#")>   
        <cfset value=StructInsert(detailbday, "Days Left for User Birthday", "#noofdaysforuserbday#")>  
        <cfset value=StructInsert(detailbday, "Age At Which Mother Delivered User", "#agemotherdelivered#")>   
        <cfset value=StructInsert(detailbday, "Days Left for Mother Birthday", "#noofdaysformotherbday#")> 
        <cfreturn detailbday>
    </cffunction>
</cfcomponent>