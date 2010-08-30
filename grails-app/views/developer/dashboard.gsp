<html>
<head>
	<meta name="layout" content="default"/>
	<g:metatags/>
</head>

<body>
	<g:if test="${flash.message}">
		<div class="message">${flash.message}</div>
	</g:if>

	<g:if test="${projects.size}">	
		<section id="project_list">
			<table>
			<thead>
				<th><!-- name column --></th>
				<th>Type</th>
				<th>Created</th>
				<th>Last updated</th>
				<th>Status</th>
				<th><!-- actions column --></th>
			</thead>
			<tbody>
				<g:each in="${projects}" var="project">
					<tr>
						<td>
							<img src="<g:resource dir="/images/${project.icon}"/>">
							<h2><a href="<g:resource dir="/projects/detail/${project.id}"/>">${project.name}</a></h2>
							Version ${project.appversion}
						</td>
						<td>${project.kind}</td>
						<td><time datetime="${project.published}"><g:dateFormat format="d MMMM, yyyy" date="${project.published}" /></time></td>
						<td><time datetime="${project.updated}"><g:dateFormat format="d MMMM, yyyy" date="${project.updated}" /></time></td>
						<td>${project.status}</td>
						<td><a href="">Edit</a></td>
					</tr>
				</g:each>
			</tbody>
			</table>
		</section>
	</g:if>
	<g:else>
		<section id="empty_project_list">
			You do not have any projects yet.
		</section>
	</g:else>
	
	<h3>Choose application to publish</h3>
	<ol>
	<g:each in="${appKinds}" var="kind">
		<li><a href="<g:resource dir="/developer/publish/${kind.key}"/>">${kind.value}</a></li>
	</g:each>
	</ol>
</body>
</html>