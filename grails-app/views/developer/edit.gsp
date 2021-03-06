<html>
<head>
	<meta name="layout" content="default"/>
	<g:metatags/>
</head>

<body>
	<h4><a href="${resource(dir: '/developer/dashboard')}">Developer dashboard<a/> > Edit your application</h4>
	
	<g:hasErrors bean="${project}">
		<div class="errors">
		    <g:renderErrors bean="${project}" as="list" />
		</div>
	</g:hasErrors>
	
	<section class="form_notification">Please enter the information below to to publish your projectStaged.</section>
	
	<section class="form">
		<span class="asterisk">* Required</span>

		<g:form name="application_edit" url="[controller:'developer', action:'edit']" useToken="true" enctype="multipart/form-data">
		<g:hiddenField name="kind" value="${projectStaged.kind}" />
		<g:hiddenField name="id" value="${projectOrig.id}" />
		<g:hiddenField name="from" value="edit" />
		
		<g:if test="${projectStaged.kind}">
			<g:render template="app_kinds_form_templates/${projectStaged.kind}"/>
		</g:if>
		
		<ol>
			<li>
				<label for="name">Project Name <span class="asterisk">*</span></label>
				<label for="name">Project name</label>
				<g:textField name="name" value="${projectStaged.name}" id="name" autofocus="on" required="on"/>
			</li>
			
			<li>
				<label for="description">Short description <span class="asterisk">*</span></label>
				<label for="description">This is a short description</label>
				<g:textField name="description" value="${projectStaged.description}" id="description" required="on"/>
			</li>
			
			<li>
				<label for="detailedDescription">Detailed description <span class="asterisk">*</span></label>
				<label for="detailedDescription">This is a deteailed description</label>
				<g:textArea name="detailedDescription" value="${projectStaged.detailedDescription}" id="detailedDescription" required="on"/>
			</li>
			
			<li>
				<label for="appversion">Version <span class="asterisk">*</span></label>
				<label for="appversion">Application version</label>
				<g:textField name="appversion" value="${projectStaged.appversion}" id="appversion" required="on"/>
			</li>
			
			<li>
				<label for="repository">Repository</label>
				<label for="repository">URL to program sources</label>
				<g:textField name="repository" value="${projectStaged.repository}" id="repository" required="on"/>
			</li>
			
			<li>
				<label for="support">Support website</label>
				<label for="support">Suuport website</label>
				<g:textField name="support" value="${projectStaged.support}" id="support"/>
			</li>
			
			<li>
				<label for="website">Website <span class="asterisk">*</span></label>
				<label for="website">Application website</label>
				<g:textField name="website" value="${projectStaged.website}" id="website" required="on"/>
			</li>
		</ol>
		
		<g:actionSubmit value="Discard changes" action="discard" />
		<g:actionSubmit value="Save draft and return to dashboard" action="save_draft" />
		
		<g:actionSubmit value="Publish changes" action="edit" />
		</g:form>
	</section>
</body>
</html>