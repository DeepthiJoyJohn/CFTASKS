<html>
	<head>	
  		<link rel="stylesheet" href="../css/cftask23.css">
	</head>
	<body>
		<form name="form" id="form" action="../Components/cftask23component.cfc?method=storevalues"  
		 enctype="multipart/form-data" method="post">
			<p class="thicker">TASK23_SAVING VALUES OF FORM TO DB</p>
			<h4>Employment Application</h4>		
			<hr>
			<span class="position">Which position are you applying for?
				<span class="red">*</span>
			</span><br>
			<select name="position" id="position" required="yes">
			    <option value=""></option>
				<option value="Interface Designer">Interface Designer</option>
				<option value="Software Engineer">Software Engineer</option>
				<option value="System Administrator">System Administrator</option>novalidation
				<option value="Office Manager">Office Manager</option>
			</select><br>
			<h4>Are you willing to relocate?<span class="red">*</span></h4>
			<input type="radio" id="yes" name="relocate" required="yes" value="yes"/>
			<label>Yes</label><br>
			<input type="radio" id="no" name="relocate" value="no"/>
			<label>No</label><br>
			<h4>When can you start?<span class="red">*</span></h4>
			<input type="date" id="startdate" name="startdate" required="yes">
			<h4>Portfolio Web Site</h4>
			<input type="text" class="small" id="Portfolio" placeholder="http://" name="Portfolio">
			<h4>Attach a Copy of Your Resume</h4>
			<input type="file" name="resume" id="resume">
			<h6>Word or pdf Documents only</h6>
			<h4>Salary requirments</h4>
			$&nbsp;
			<input type="text" class="toosmall" name="dollar" id="dollar">&nbsp;.
			<input type="text" name="cents" class="little"id="cents">
			<h6 class="class1">Dollars<span class="class2">Cents</span></h6>
			<hr>
			<h4>Your Contact Information</h4>
			<label>Name<span class="red">*</span></label><br>
			<input type="text" name="firstname" id="firstname" required="yes">&nbsp;
			<input type="text" name="lastname" id="lastname" required="yes">
			<h6 class="class2">First<span class="class3">Last</span></h6>
			<label>Email Address<span class="red">*</span></label><br>
			<input type="text" class="small"name="emailaddress" id="emailaddress" required="yes"><br><br>
			<label>Phone<span class="red">*</span></label><br>
			<input type="text" class="phone1" maxlength="3" required="yes" name="phonepart1" minlength="3" id="phonepart1">&nbsp;-&nbsp;
			<input type="text" class="phone1" maxlength="3" required="yes" minlength="3" name="phonepart2" id="phonepart2">&nbsp;-&nbsp;
			<input type="text" required="yes" class="phone2" minlength="4" maxlength="4" name="phonepart3" id="phonepart3">
			<h6 class="class2">###<span class="class4">###</span>
				<span class="class5">###</span>
			</h6>
			<input type="submit" name="submitactiontask23"value="submit">
		</form>
		<cfif isDefined("Form.submitactiontask23")>
			<cfinvoke component="CFTASKSCOMBINED.Components.cftask23component" method="storevalues" returnVariable="res">	
			<cfoutput>#res#</cfoutput>	
		</cfif>
	</body>	
</html>