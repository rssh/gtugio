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
</head>

<body>
	<g:if test="${session.user}">
		<header>
			<b>${session.user.email} <a href="<g:createLinkTo dir="/authenticate/signout"/>">Sign Out</a></b>
		</header>
	</g:if>
	<g:layoutBody />
</body>
</html>