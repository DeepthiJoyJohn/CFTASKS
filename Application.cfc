<cfcomponent output="false">
	<cfset this.name="coldfusiontasks"/>
	<cfset this.applicationTimeout=createtimespan(0,1,0,0)/>
	<cfset this.datasource="cftask"/>
	<cfset this.sessionmanagement="yes"/>
</cfcomponent>
