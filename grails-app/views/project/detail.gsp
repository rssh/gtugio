<html>
<head>
	<meta name="layout" content="default"/>
	<g:metatags/>
</head>

<body>

	<g:if test="${project}">	
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
		
		<section id="comments">
			<g:if test="${comments}">
				<g:each in="${comments}" var="comment">
					<div>
						<b>${comment.user.nickname}</b> <time datetime="${comment.posted}"><g:dateFormat format="d MMMM, yyyy" date="${comment.posted}" /></time><br/>
						${comment.text}
					</div>
				</g:each>
			</g:if>
			<g:else>
				No comments yet
			</g:else>
		</section>
	
		<g:if test="${session.user}">
			<g:form name="comment_publish" url="[controller:'project', action:'post_comment']" useToken="true">
				<g:hiddenField name="project_id" value="${project.id}" />
				<g:textArea name="text" value="${comment?.text}" id="text" required="on"/>
				<g:actionSubmit value="Publish" action="post_comment" />
			</g:form>
		</g:if>
		<g:else>
			You have to <a href="/gtugio/authenticate/signin">sign in</a> first to be able to leave comments
		</g:else>
	</g:if>
	<g:else>
		<h2>An error occurred:</h2>
		Item not found. This item may have been removed by its author or not published yet.
	</g:else>
	
</body>
</html>