<html>
	<head>		
		<script src="../js/cftask24.js" type="text/javascript"></script>
		<script>
		 function checkemail(){
            $.ajax({
				type: "GET",
				url: "../Components/cftask24component.cfc?method=test",
				cache: false,
				success: function(data){
					alert(data);
					
				},
				});
		 }

		</script>
	</head>
	<body>
		<form>
			<p><b>TASK24_SUBSCRIBE FORM WITH AJAX</b></p>
			<label>First Name</label><br>
			<input type="text" name="firstname" id="firstname"/><br>
			<label>Email Address</label><br>
			<input type="text" style="width:25%;" name="emailaddress" id="emailaddress"/>
			<button type="button" id="myBtn" onclick="checkemail();">Check Me</button>			
			<input type="submit" disabled name="submitactiontask24" value="submit"/>
			<div id="testdiv"></div>			
		</form>
	</body>	
</html>