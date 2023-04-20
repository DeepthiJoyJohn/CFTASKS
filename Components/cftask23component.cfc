<cfcomponent output="false">
    <cffunction name="storevalues" access="remote">
         <cfset local.filename="">
         <cfif isDefined("Form.resume") AND evaluate("Form.resume") NEQ "" >
            <cffile action="upload" fileField="form.resume" destination="C:\Pictures" 
            accept="application/pdf,application/vnd.openxmlformats-officedocument.wordprocessingml.document"  
            nameconflict="makeunique">
            <cfset local.filename="#cffile.serverdirectory#/#cffile.serverfile#">            
        </cfif> 
        <cfquery name="getlastid" datasource="cftask">
			SELECT CASE WHEN MAX(id) IS NULL THEN 1 ELSE MAX(id)+1 END AS id FROM cftask23
		</cfquery>   
        <cfset local.radiovalue="">     
        <cfif isDefined("Form.relocate")>
            <cfif #form.relocate# eq "yes">
                <cfset local.radiovalue="yes">
                <cfelse>
                <cfset local.radiovalue="no">
            </cfif>
        </cfif>
        <cfset local.sal="0">
        <cfif isDefined("#Form.dollar#") AND ("#Form.dollar#") NEQ "">
            <cfset local.sal=#Form.dollar#>
        </cfif>
        <cfif isDefined("#Form.cents#")AND ("#Form.cents#") NEQ "">
            <cfset local.sal="#local.sal#.#Form.cents#">
        </cfif>
        
		<cfquery name="AddEmployee" datasource="cftask"> 
            INSERT INTO cftask23 VALUES  (#getlastid.id#,'#form.position#','#local.radiovalue#',
            '#form.startdate#','#form.Portfolio#','#local.filename#','#local.sal#','#form.firstname#',
            '#form.lastname#','#form.emailaddress#','#form.phonepart1##form.phonepart2##form.phonepart3#') 
        </cfquery>  
        <cfset local.result="Data Saved Successfully"> 
        <cfreturn local.result>		
	</cffunction>
</cfcomponent>