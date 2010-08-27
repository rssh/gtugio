<html>
<head>
	<meta name="layout" content="default"/>
	<g:metatags/>
</head>

<body>
	
	<h3>Publish you application</h3>
	
	<section class="form_notification">Please enter the information below to join the waiting list for an invitation.
	Visit http://code.google.com/apis/storage to learn more about the service.</section>
	
	<section class="form">
		<span class="asterisk">* Required</span>

		<form action="" name="" method="post">
		
		<ol>
			<li>
				<label for="name">Project Name <span class="asterisk">*</span></label>
				<label for="name">Email address where you would like to receive your invitation</label>
				<input type="text" name="name" value="" id="name" autofocus required>
			</li>
			
			<li>
				<label for="description">Short description <span class="asterisk">*</span></label>
				<label for="description">This is a short description</label>
				<input type="text" name="description" value="" id="description" required>
			</li>
			
			<li>
				<label for="detailedDescription">Detailed description <span class="asterisk">*</span></label>
				<label for="detailedDescription">This is a deteailed description</label>
				<textarea type="text" name="detailedDescription" value="" id="detailedDescription" required></textarea>
			</li>
			
			<li>
				<label for="version">Version <span class="asterisk">*</span></label>
				<label for="version">Application version</label>
				<input type="text" name="version" value="" id="version" required>
			</li>
			
			<li>
				<label for="website">Support website</label>
				<label for="website">Application version</label>
				<input type="text" name="website" value="" id="website">
			</li>
			
			<li>
				<label for="website">Website <span class="asterisk">*</span></label>
				<label for="website">Application version</label>
				<input type="text" name="website" value="" id="website" required>
			</li>
			
			<li>
				<label for="support">Support website <span class="asterisk">*</span></label>
				<label for="support">Application version</label>
				<input type="text" name="support" value="" id="support" required>
			</li>
		</ol>
		
		<g:if test="${template}">
			<g:render template="app_kinds_form_templates/${template}"/>
		</g:if>
		
		<input type="submit" value="Submit">
		</form>
	</section>
</body>
</html>