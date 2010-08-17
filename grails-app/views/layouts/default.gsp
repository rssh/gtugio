<!doctype html> 
<html lang="en"> 
<head> 
  	<g:layoutHead />
	
	<!--[if IE]>
  	<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
  	<![endif]--> 
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js" type="text/javascript"></script>
	
	<link rel="stylesheet" href="${createLinkTo(dir:'css',file:'style.css')}" />
	<link rel="icon" type="image/png" href="/images/favicon.png">

	<link rel="alternate" type="application/rss+xml" title=" (RSS)" href="/feed/rss" /> 
	<link rel="alternate" type="application/atom+xml" title=" (Atom)" href="/feed/atom" />
	
	<nav:resources/> 
</head>

<body>
	<g:if test="${session.user}">
		<header>
			<section id="top_info">
				<nav:ifHasItems group="admin">
					<section id="admin_actions">Manage: <nav:render group="admin"/></section>
				</nav:ifHasItems>
				<section id="user_info">
					<b>${session.user.email} <a href="<g:createLinkTo dir="/authenticate/signout"/>">Sign Out</a></b>
				</section>
			</section>
		</header>
	</g:if>
	<g:layoutBody />
</body>
</html>