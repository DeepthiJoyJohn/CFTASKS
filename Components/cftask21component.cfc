<cfcomponent output="true">
    <cffunction name="sendemail" access="public">
        <cfargument name="bdaybabyname"> 
        <cfargument name="babyemail">
        <cfargument name="bdaywish"> 
        <cfargument name="fileUpload" type="string">        
        <cffile action="upload" fileField="fileUpload" destination="C:\Pictures" 
        accept="image/png,image/jpg,image/gif,image/jpeg"  nameconflict="overwrite">    
		<cfset local.frmadd="deepthi.joy@techversantinfotech.com">			
		<cfmail from="#local.frmadd#" to="#arguments.babyemail#" subject="BirthdayWish 
        to #arguments.bdaybabyname#" 	mimeattach="C:/Pictures/#ClientFileName#.#ClientFileExt#">
            #arguments.bdaywish#
		</cfmail>
        <cfset local.mssg="Mail Sent">
        <cfreturn local.mssg> 
    </cffunction>
</cfcomponent>