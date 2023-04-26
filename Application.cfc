<cfcomponent output="false">
	<cfset this.name="coldfusiontasks"/>
	<cfset this.applicationTimeout=createtimespan(0,1,0,0)/>
	<cfset this.datasource="cftask"/>
	<cfset this.sessionmanagement="yes"/>
	<cfset cookie.VisitsCounter = "0" />
	<cfset SESSION.HitCount ="0"/>
<cffunction name="OnSessionStart" access="public" returntype="void" output="false" 
                                         hint="Fires when user session initializes">

       <cfset session.loggedin = "NO">
       <cfset session.username = "">
       <cfset session.userrights = "">
       <cfset session.usergroup = "">  

  </cffunction>
</cfcomponent>
