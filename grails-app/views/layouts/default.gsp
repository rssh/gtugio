<!doctype html> 
<html lang="en"> 
<head> 
  	<g:layoutHead />
	
	<!--[if IE]>
  	<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
  	<![endif]--> 
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js" type="text/javascript"></script>
	<script src="${resource(dir: 'js', file: 'jqModal.js') }" type="text/javascript"></script>
	
	<link rel="stylesheet" href="${resource(dir:'css',file:'style.css')}" />
	<link rel="shortcut icon" href="${resource(dir:'images',file:'favicon.png')}" type="image/x-icon" />

	<link rel="alternate" type="application/atom+xml" title=" (Atom)" href="/feed/atom" />
	
	<nav:resources override="true"/> 
</head>

<body>
	<header>
		<g:if test="${session.user}">
			<section id="top_info">
				<nav:ifHasItems group="admin">
					<section id="admin_actions">Manage: <nav:render group="admin"/></section>
				</nav:ifHasItems>
				<section id="user_info">
					<b>${session.user.email} <a href="<g:createLinkTo dir="/authenticate/signout"/>">Sign Out</a></b>
				</section>
			</section>
		</g:if>
		
		<section id="logo">
			<a href="<g:resource dir="/"/>"><img src="<g:resource dir="images" file="gtugio_logo.jpg" />"></a>
		</section>
	</header>

	<g:layoutBody />
</body>
</html>