<html>
<head>
	<meta name="layout" content="default"/>
	<g:metatags/>
</head>

<body>
	
	<h3>Publish you application</h3>

	<g:hasErrors bean="${project}">
		<div class="errors">
		    <g:renderErrors bean="${project}" as="list" />
		</div>
	</g:hasErrors>
	
	<section class="form_notification">Please enter the information below to to publish your project.</section>
	
	<section class="form">
		<span class="asterisk">* Required</span>

		<g:form name="application_publish" url="[controller:'developer', action:'publish']" useToken="true" enctype="multipart/form-data">
		<g:hiddenField name="kind" value="${kind}" />
		
		<g:if test="${kind}">
			<g:render template="app_kinds_form_templates/${kind}"/>
		</g:if>
		
		<ol>
			<li>
				<label for="name">Project Name <span class="asterisk">*</span></label>
				<label for="name">Project name</label>
				<g:textField name="name" value="${project?.name}" id="name" autofocus="on" required="on"/>
			</li>
			
			<li>
				<label for="description">Short description <span class="asterisk">*</span></label>
				<label for="description">This is a short description</label>
				<g:textField name="description" value="${project?.description}" id="description" required="on"/>
			</li>
			
			<li>
				<label for="detailedDescription">Detailed description <span class="asterisk">*</span></label>
				<label for="detailedDescription">This is a deteailed description</label>
				<g:textArea name="detailedDescription" value="${project?.detailedDescription}" id="detailedDescription" required="on"/>
			</li>
			
			<li>
				<label for="appversion">Version <span class="asterisk">*</span></label>
				<label for="appversion">Application version</label>
				<g:textField name="appversion" value="${project?.version}" id="appversion" required="on"/>
			</li>
			
			<li>
				<label for="repository">Repository</label>
				<label for="repository">URL to program sources</label>
				<g:textField name="repository" value="${project?.repository}" id="repository" required="on"/>
			</li>
			
			<li>
				<label for="support">Support website</label>
				<label for="support">Suuport website</label>
				<g:textField name="support" value="${project?.support}" id="support"/>
			</li>
			
			<li>
				<label for="website">Website <span class="asterisk">*</span></label>
				<label for="website">Application website</label>
				<g:textField name="website" value="${project?.website}" id="website" required="on"/>
			</li>
		</ol>
		
		<input type="button" value="Discard changes">
		<g:actionSubmit value="Save draft and return to dashboard" action="save_draft" />
		
		<g:actionSubmit value="Preview" action="preview" />
		<g:actionSubmit value="Publish" action="publish" />
		</g:form>
	</section>
</body>
</html>