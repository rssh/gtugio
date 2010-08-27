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

		<g:form name="application_publish" url="[controller:'developer', action:'publish']" useToken="true">
		<g:hiddenField name="kind" value="${kind}" />
		<ol>
			<li>
				<label for="name">Project Name <span class="asterisk">*</span></label>
				<label for="name">Email address where you would like to receive your invitation</label>
				<g:textField name="name" value="" id="name" autofocus="on" required="on"/>
			</li>
			
			<li>
				<label for="description">Short description <span class="asterisk">*</span></label>
				<label for="description">This is a short description</label>
				<g:textField name="description" value="" id="description" required="on"/>
			</li>
			
			<li>
				<label for="detailedDescription">Detailed description <span class="asterisk">*</span></label>
				<label for="detailedDescription">This is a deteailed description</label>
				<g:textArea name="detailedDescription" value="" id="detailedDescription" required="on"/>
			</li>
			
			<li>
				<label for="version">Version <span class="asterisk">*</span></label>
				<label for="version">Application version</label>
				<g:textField name="version" value="" id="version" required="on"/>
			</li>
			
			<li>
				<label for="website">Support website</label>
				<label for="website">Application version</label>
				<g:textField name="website" value="" id="website"/>
			</li>
			
			<li>
				<label for="website">Website <span class="asterisk">*</span></label>
				<label for="website">Application version</label>
				<g:textField name="website" value="" id="website" required="on"/>
			</li>
			
			<li>
				<label for="support">Support website <span class="asterisk">*</span></label>
				<label for="support">Application version</label>
				<g:textField name="support" value="" id="support" required="on"/>
			</li>
		</ol>
		
		<g:if test="${kind}">
			<g:render template="app_kinds_form_templates/${kind}"/>
		</g:if>
		
		<g:actionSubmit value="Publish" action="publish" />
		<g:actionSubmit value="Preview" action="preview" />
		<g:actionSubmit value="Save as draft" action="draft" />
		</g:form>
	</section>
</body>
</html>