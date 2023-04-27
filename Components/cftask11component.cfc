<cfcomponent output="false">
        <cfscript>
            
                function multiply(Arg1,Arg2) { 
                    var arg_count = ArrayLen(Arguments); 
                    var sum = 1; 
                    var i = 0; 
                    for( i = 1 ; i LTE arg_count; i = i + 1 ) 
                    { 
                    sum = sum * Arguments[i]; 
                    } 
                    return sum; 
                }
                
            
        </cfscript>
</cfcomponent>