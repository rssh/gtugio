<html>
<head>
	<meta name="layout" content="default"></meta>
	<g:metatags/>
	
	<nav:resources override="true"/> 
</head>

<body>

	<aside id="aside_nav">
		Are you a developer?
		<nav:render group="developer_aside"/>
	</aside>
	
	<section id="main_dashboard">
		
		<g:if test="${latestProject}">
			<section id="upcoming_project">
				<img src="<g:resource dir="/images/${latestProject.icon}"/>">
				<h2><a href="<g:resource dir="/project/detail/${latestProject.id}"/>">${latestProject.name}</a></h2>
				by ${latestProject.user.nickname}<br/>
				${latestProject.description}
			</section>
		</g:if>

		<g:if test="${projects}">
			<section id="latest_projects">
			<h3>Latest projects</h3>
			<g:each in="${projects}" var="project">
				<img src="<g:resource dir="/images/${project.icon}"/>">
				<a href="<g:resource dir="/project/detail/${project.id}"/>">${project.name}</a>
				${project.description}
			</g:each>
		</g:if>
	</section>

</body>
</html>