<cfcomponent output="false">
    <cffunction name="displaydetails" access="public">
        <cfset detailstruct=StructNew()> 
        <cfset value=StructInsert(detailstruct, "todaydate", DateFormat(now(),'dd-mm-yyyy'))> 
        <cfset value=StructInsert(detailstruct, "Current Month In Numeric", DateFormat(now(),'mm'))>  
        <cfset value=StructInsert(detailstruct, "Current Month As string", DateFormat(now(),'mmmm'))> 
        <cfset currentDate = Now() />
        <cfset todaydayOfWeek = dayOfWeek(currentDate)>
        <cfset fridayOffset = (6-todaydayOfWeek)-7>
        <cfset mostRecentFriday = dateAdd("d", fridayOffset, currentDate)><br>   
        <cfset value=StructInsert(detailstruct, "Last Friday", DateFormat(mostRecentFriday,'dd-mm-yyyy'))>
        <cfset d=DaysInMonth(currentDate)>
        <cfset yr=Year(currentDate)>
        <cfset m=Month(currentDate)>
        <cfset dateTime = createDate(yr,m,d)>
        <cfset Dayofweek= DayOfWeek(dateTime)>
        <cfset loopstartrange=#d#-4> 
        <cfset value=StructInsert(detailstruct, "Last Day of Month", "#d#-#m#-#yr#")>
        <cfset value=StructInsert(detailstruct, "Day of Last Date", DayOfWeekAsString(Dayofweek))>                                   
        <cfreturn detailstruct>
    </cffunction>
    <cffunction name="displaydetailscolor" access="public">
        <cfset detailstructcolor=StructNew()>         
        <cfset currentDate = Now() />        
        <cfset d=DaysInMonth(currentDate)>
        <cfset yr=Year(currentDate)>
        <cfset m=Month(currentDate)>
        <cfset dateTime = createDate(yr,m,d)>
        <cfset Dayofweek= DayOfWeek(dateTime)>
        <cfset loopstartrange=#d#-4> 
        <cfloop from=#loopstartrange# to=#d# index=#d#>
			<cfset dateTimeoflast = createDate(yr,m,d)>
			<cfset Dayofweeklast= DayOfWeek(dateTimeoflast)>
			<cfif Dayofweeklast eq "1">
                <cfset value=StructInsert(detailstructcolor, "red", "#d#-#DateFormat(now(),'mmm')#-#yr#")>                                   
			<cfelseif Dayofweeklast eq "2">
				<cfset value=StructInsert(detailstructcolor, "green", "#d#-#DateFormat(now(),'mmm')#-#yr#")>                                   
            <cfelseif Dayofweeklast eq "3">
                <cfset value=StructInsert(detailstructcolor, "orange", "#d#-#DateFormat(now(),'mmm')#-#yr#")>                                   
			<cfelseif Dayofweeklast eq "4">
				<cfset value=StructInsert(detailstructcolor, "yellow", "#d#-#DateFormat(now(),'mmm')#-#yr#")>                                   
			<cfelseif Dayofweeklast eq "5">
				<cfset value=StructInsert(detailstructcolor, "black", "#d#-#DateFormat(now(),'mmm')#-#yr#")>                                   
			<cfelseif Dayofweeklast eq "6">
				<cfset value=StructInsert(detailstructcolor, "blue", "#d#-#DateFormat(now(),'mmm')#-#yr#")>                                   
			<cfelseif Dayofweeklast eq "7">
				<cfset value=StructInsert(detailstructcolor, "boldred", "#d#-#DateFormat(now(),'mmm')#-#yr#")>                                   
			</cfif>
		</cfloop>        
        <cfreturn detailstructcolor>
    </cffunction>
</cfcomponent>