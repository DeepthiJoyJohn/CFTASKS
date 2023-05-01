function checkemail(email,firstname){
	var email=email.value;
	var firstname=firstname.value;	
	$(document).ready(function(){	
				$.ajax({
					type: "GET",
					url: '../Components/cftask24component.cfc?method=test&email='+email+'&firstname=',
					cache: false,
					success: function(data){
						$('#testdiv').html(data);
						var html = document.getElementById("testdiv").textContent;
						if(html=="0.0"){
							document.getElementById("submitactiontask24").disabled=false;
							$('#testdiv').html("Email ID Not Present,You can Add");						 
						}else{
							$('#testdiv').html("Email  Present");
							document.getElementById("submitactiontask24").disabled=true;	

						}
					},
				});
		
	});
}
	  

