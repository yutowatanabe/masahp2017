<%@page pageEncoding="UTF-8" isELIgnored="false" session="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="f" uri="http://www.slim3.org/functions"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

<link rel="stylesheet" href="css/common.css" type="text/css" />

<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/common.js"></script>
<script src="//api.html5media.info/1.1.8/html5media.min.js"></script>
<script type="text/javascript">
	function smtel(telno) {
		if ((navigator.userAgent.indexOf('iPhone') > 0)
				|| navigator.userAgent.indexOf('Android') > 0) {
			document.write('<a class="tel-link" href="tel:'+telno+'">' + telno
					+ '</a>');
		} else {
			document.write('<span class="tel-link">' + telno + '</span>');
		}
	}
</script>
<title>お問い合わせページ</title>
</head>
<body>
<BODY bgcolor="#FFFFFF">
	<div align="center">
		<img src="images/title.gif" alt="WEB SITE" />
	</div>
	<HR width="650" align="center">
	<div align="center">
		<TABLE width="650">
			<TBODY>
				<TR>
					<TD align="center" width="735"><FONT size="+4" color="#660033"><font
							color="#660033" size="5">お問い合わせ先</font></FONT><BR> <FONT
						face="Times New Roman"><B><FONT size="+1">オプショナルツアーや、バケーションレンタルに関するお問い合わせは<br>
									こちらへ！
									<p>
										TEL ：<span class="tel-link">080-3753-9771</span><br>
										MAIL ：sendaimasa@hilo-sendai-tours.com

									<h2>担当：MASA</h2>

								<h4>ホームページを見ました！と伝えていただけるとスムーズな対応ができます。</h4>
							</FONT></B></FONT></TD>
				</TR>
			</TBODY>
		</TABLE>
	</div>
</body>
</html>
