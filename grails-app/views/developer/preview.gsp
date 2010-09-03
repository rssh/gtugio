<html>
<head>
	<meta name="layout" content="default"/>
	<g:metatags/>
</head>

<body>

	<section id="project_details">
			<img src="<g:resource dir="/images/${project.icon}"/>">
			<h2>${project.name}</h2>
			by ${project.user.nickname}<br/>
			
			${project.description}
			
			<div class="description">
				${project.detailedDescription}
			</div>
			
			Version ${project.appversion} - <time datetime="${project.published}"><g:dateFormat format="d MMMM, yyyy" date="${project.published}" /></time><br/>
			<a href="${project.website}" rel="external">Developer website</a><br/>
			<a href="${project.support}" rel="external">Support website</a>
	</section>
</body>
</html>