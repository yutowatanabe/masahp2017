<%@page pageEncoding="UTF-8" isELIgnored="false" session="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="f" uri="http://www.slim3.org/functions"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="ja">
	<head>
		<meta charset="utf-8">
    	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    	<meta name="viewport" content="width=device-width, initial-scale=1">
    	<meta name="description" content="">
    	<meta name="author" content="">
    	<link rel="icon" href="../../favicon.ico">

    	<title><fmt:message key="application.admin.title"/></title>

    	<!-- Bootstrap core CSS -->
    	<link href="/css/bootstrap.css" rel="stylesheet">
    	<link href="/css/colorbox.css" rel="stylesheet">

	    <!-- Custom styles for this template -->
    	<link href="/css/apply.css" rel="stylesheet">
	</head>

	<body>
		<nav class="navbar navbar-default navbar-fixed-top">
			<div class="container">
        		<div class="navbar-header">
          			<a class="navbar-brand" href="/"><img src="/images/logo.png" style="margin-top:-10px"></a>
        		</div>
        		<div id="navbar" class="navbar-collapse collapse">
	        </div>
	      </div>
    	</nav>

    	<div class="container">
			<div class="row">
				<div class="col-md-12 col-sm-12 col-xs-12 col-lg-12" style="margin-bottom:20px;">
					<div class="alert alert-danger" role="alert">
						<span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>
					  	<span class="sr-only">Error:</span>
				  		${errorMsg}
					</div>
				</div>
			</div>
		</div><!-- /.container -->

		<hr class="footer">
		<div class="copyright">&copy; 2017 HILO-SENDAI-TOURS All Rights Reserved.</div>

    	<!-- Bootstrap core JavaScript
    	================================================== -->
    	<!-- Placed at the end of the document so the pages load faster -->
	    <script src="/js/jquery-2.1.3.min.js"></script>
	    <script src="/js/bootstrap.js"></script>
	    <script src="/js/jquery.colorbox.js"></script>
	    <script src="/js/jquery.colorbox-ja.js"></script>
		<script src="/js/jquery.blockUI.js"></script>
	</body>
</html>

