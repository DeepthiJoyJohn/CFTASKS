<html>	
	<head>
		<script src="../js/cftask23.js" type="text/javascript"></script>
	</head>
	<body>
		<cfform name="form" id="form" action="../Components/cftask23component.cfc?method=storevalues"  enctype="multipart/form-data" method="post">
			<p><b>TASK23_SAVING VALUES OF FORM TO DB</b></p>
			<h4>Employment Application</h4>		
			<hr style="border: none; border-top: 2px dotted black" />
			<span style="background-color:Moccasin;"><b>Which position are you applying for?</b>
				<span style="color:red">*</span>
			</span><br>
			<cfselect name="position" id="position" onvalidate="valuenull" 
			message="Please Select Position.">
			    <option value=""></option>
				<option value="Interface Designer">Interface Designer</option>
				<option value="Software Engineer">Software Engineer</option>
				<option value="System Administrator">System Administrator</option>novalidation
				<option value="Office Manager">Office Manager</option>
			</cfselect><br>
			<h4>Are you willing to relocate?<span style="color:red">*</span></h4>
			<cfinput type="radio" id="yes" name="relocate" onvalidate="valuenull" 
			message="Please Select Relocate Yes/No." value="yes"/>
			<label>Yes</label><br>
			<cfinput type="radio" id="no" name="relocate" value="no"/>
			<label>No</label><br>
			<h4>When can you start?<span style="color:red">*</span></h4>
			<cfinput type="date" id="startdate" name="startdate" onvalidate="valuenull" 
			message="Please Select Start Date.">
			<h4>Portfolio Web Site</h4>
			<input type="text" style="width:25%" id="Portfolio" placeholder="http://" name="Portfolio">
			<h4>Attach a Copy of Your Resume</h4>
			<input type="file" name="resume" id="resume"><h6>Word or pdf Documents only</h6>
			<h4>Salary requirments</h4>
			$&nbsp;
			<cfinput type="text" style="width:10%"name="dollar" id="dollar">&nbsp;.
			<cfinput type="text" name="cents" style="width:5%"id="cents">
			<h6 style="margin-left:2%;margin-top:1%">Dollars<span style="margin-left:9%">Cents</span></h6>
			<hr style="border: none; border-top: 2px dotted black" />
			<h4>Your Contact Information</h4>
			<label>Name<span style="color:red">*</span></label><br>
			<cfinput type="text" name="firstname" id="firstname" onvalidate="valuenull" 
			message="FirstName cant be null.">&nbsp;
			<cfinput type="text" name="lastname" id="lastname" onvalidate="valuenull" 
			message="Last Name Cant be Null.">
			<h6 style="margin-left:0.5%;margin-top:1%">First<span style="margin-left:12%">Last</span></h6>
			<label>Email Address<span style="color:red">*</span></label><br>
			<cfinput type="text" style="width:25%"name="emailaddress" id="emailaddress" onvalidate="valuenull" 
			message="Email Address cant be null."><br><br>
			<label>Phone<span style="color:red">*</span></label><br>
			<cfinput type="text" style="width:3%" maxlength="3" onvalidate="novalidation" 
			message="Please Enter Number on first phone box." name="phonepart1" minlength="3" id="phonepart1">&nbsp;-&nbsp;
			<cfinput type="text" style="width:3%" onvalidate="novalidation" 
			message="Please Enter Number on second phone box." maxlength="3" minlength="3" name="phonepart2" id="phonepart2">&nbsp;-&nbsp;
			<cfinput type="text" style="width:4%" minlength="4" onvalidate="novalidation" 
			message="Please Enter Number on third phone box." maxlength="4" name="phonepart3" id="phonepart3">
			<h6 style="margin-left:0.5%;margin-top:1%">###<span style="margin-left:3%">###</span>
				<span style="margin-left:3.5%">###</span>
			</h6>
			<input type="submit" name="submitactiontask23"value="submit">
		</cfform>
		<cfinvoke component="CFTASKSCOMBINED.Components.cftask23component" method="storevalues" returnVariable="res">	
		<cfoutput>#res#</cfoutput>	
	</body>	
</html>