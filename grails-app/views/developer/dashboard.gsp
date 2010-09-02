<html>
<head>
	<meta name="layout" content="default"/>
	<g:metatags/>
	
	<link rel="stylesheet" href="${resource(dir:'css',file:'modal.css')}" />
</head>

<body>
	<g:if test="${flash.message}">
		<div class="message">${flash.message}</div>
	</g:if>

	<g:if test="${projects.size}">
		<script>
			$().ready(function() {
				$('#unpublish_window').jqm({modal:true, overlay:50, overlayClass:'modal_overlay'});
			});

			function unpublish_confirm(pid) {
				$('#project_unpublish_id').val(pid);
				$('#unpublish_window').jqmShow();
			}

			function unpublish_close() {
				$('#project_unpublish_id').val('0');
				$('#unpublish_window').jqmHide();
			}
		</script>

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
							<h2><a href="<g:resource dir="/project/detail/${project.id}"/>">${project.name}</a></h2>
							Version ${project.appversion}
						</td>
						<td>${project.kind}</td>
						<td><time datetime="${project.published}"><g:dateFormat format="d MMMM, yyyy" date="${project.published}" /></time></td>
						<td><time datetime="${project.updated}"><g:dateFormat format="d MMMM, yyyy" date="${project.updated}" /></time></td>
						<td>${project.status}</td>
						<td><g:if test="${project.status == 'published'}"><a href="#unpublish" onclick="unpublish_confirm(${project.id}); return false;">Unpublish</a> | </g:if><a href="<g:resource dir="/developer/edit/${project.id}"/>">Edit</a></td>
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

<div id="unpublish_window" class="modal_window">
	<h3>Are you sure you want to unpublish this item? It will no longer appear in the Gallery, and users will no longer be able to install or update it.</h3>
	<g:form name="application_unpublish" url="[controller:'developer', action:'unpublish']" useToken="true">
		<g:hiddenField name="project_unpublish_id" value="0" id="project_unpublish_id""/>
		<input type="button" value="Cancel" onclick="unpublish_close();"/> <g:actionSubmit value="Yse, unpublish this item" action="unpublish"/>
	</g:form>
</div>
</body>
</html>