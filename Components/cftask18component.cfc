<cfcomponent output="false">
    <cffunction name="query" access="public">	
		<cfscript>
		    myquery=querynew("ID","integer",[[1]]);
		    QueryAddColumn(myQuery,"NAME","varchar",["Ryan"]);
            QueryAddColumn(myQuery,"EMAIL","varchar",["ryanjustusjohn@gmail.com"]);
            queryAddRow(myQuery,[{ID=2,NAME="Celine",EMAIL="celinejanejohn@hotmail.com"},
            {ID=3,NAME="Jayden",EMAIL="jaydenjoyjohn@yahoo.com"}]); 
	    </cfscript>
		<cfreturn myquery>
	</cffunction>
</cfcomponent>