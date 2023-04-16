<!--- Please insert your code here --->
<cfset todaydate=DateFormat(now(),'dd-mm-yyyy')>
<cfoutput> TodaysDate=#todaydate#</cfoutput><br>
<cfoutput> Current Month In Numeric=#DateFormat(now(),'mm')#</cfoutput><br>
<cfoutput> Current Month As String=#DateFormat(now(),'mmmm')#</cfoutput>
<cfset currentDate = Now() /> 

<cfset todaydayOfWeek = dayOfWeek(currentDate)>
<cfset fridayOffset = (6-todaydayOfWeek)-7>
<cfset mostRecentFriday = dateAdd("d", fridayOffset, currentDate)><br>
<cfoutput>Last Friday=#DateFormat(mostRecentFriday,'dd-mm-yyyy')#</cfoutput><br>
<cfset d=DaysInMonth(currentDate)>
<cfset yr=Year(currentDate)>
<cfset m=Month(currentDate)>
<cfset dateTime = createDate(yr,m,d)>
<cfset Dayofweek= DayOfWeek(dateTime)>
<cfset loopstartrange=#d#-4>
<cfoutput >
	Last Day of Month=#d#-#m#-#yr#<br>
	Day of Last Date =#DayOfWeekAsString(Dayofweek)#	
</cfoutput><br>
<cfloop from=#loopstartrange# to=#d# index=#d#>
	<cfoutput >
		<cfset dateTimeoflast = createDate(yr,m,d)>
        <cfset Dayofweeklast= DayOfWeek(dateTimeoflast)>
        <cfif Dayofweeklast eq "1">
		<span style="color:red">
		#d#-#DateFormat(now(),'mmm')#-#yr#
		</span>
		<cfelseif Dayofweeklast eq "2">
		<span style="color:green">
		#d#-#DateFormat(now(),'mmm')#-#yr#
		</span>
		<cfelseif Dayofweeklast eq "3">
		<span style="color:orange">
		#d#-#DateFormat(now(),'mmm')#-#yr#
		</span>
		<cfelseif Dayofweeklast eq "4">
		<span style="color:yellow">
		#d#-#DateFormat(now(),'mmm')#-#yr#
		</span>
		<cfelseif Dayofweeklast eq "5">
		<span style="color:black"><b>
		#d#-#DateFormat(now(),'mmm')#-#yr#
		</b></span>
		<cfelseif Dayofweeklast eq "6">
		<span style="color:blue">
		#d#-#DateFormat(now(),'mmm')#-#yr#
		</span>
		<cfelseif Dayofweeklast eq "7">
		<span style="color:red"><b>
		#d#-#DateFormat(now(),'mmm')#-#yr#
		</b></span>
		</cfif>
		
	</cfoutput><br>
	
</cfloop>


