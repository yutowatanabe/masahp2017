<%@page pageEncoding="UTF-8" isELIgnored="false" session="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="f" uri="http://www.slim3.org/functions"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta http-equiv="Content-Style-Type" content="text/css" />
<meta http-equiv="Content-Script-Type" content="text/javascript" />
<meta http-equiv="imagetoolbar" content="no" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<link rel="stylesheet" href="css/common.css" type="text/css" />
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/common.js"></script>
<script src="//api.html5media.info/1.1.8/html5media.min.js"></script>
<script type="text/javascript">
	$(function() {
		$('#slide').slideshow({
			autoSlide : true,
			type : 'repeat',
			interval : 3000,
			duration : 500,
			easing : 'swing',
			imgHoverStop : true,
			navHoverStop : true,
			prevPosition : 0,
			nextPosition : 0,
			baseWidth : 940
		});
		$('.slidePrev img').rollover();
		$('.slideNext img').rollover();
		$(window).load(function() {
			$('.topNaviCon').uniformHeight();
		});
	});
</script>
<title>HILO-SENDAI TOURS</title>
</head>
<body>
	<div id="container">
		<div id="header">
			<h1>
				<a href="index"><img src="images/title.gif"
					alt="HILO-SENDAI=TOURS" /></a>
			</h1>
			<div id="menu">
				<ul>
					<li class="home active"><a href="index">ホーム</a></li>
					<li><a href="Hilo">HAWAII</a></li>
					<li><a href="Oahu">Oahu</a></li>
					<li><a href="Tohoku">東北</a></li>
					<li><a href="Inquiry">お問い合わせ</a></li>
					<li><a href="index">ログイン</a></li>
				</ul>
			</div>
			<!-- /#menu -->
		</div>
		<!-- /#header -->
		<div id="slide">
		<!-- 画像を三枚指定して再生させる。 -->
			<ul class="slideInner">
				<li><a href="index.jsp"><img src="images/hawaii.jpg" alt="" /></a></li>
				<li><a href="index.jsp"><img src="images/hawaii2.jpg"
						alt="" /></a></li>
				<li><a href="index.jsp"><img src="images/hawaii3.jpg"
						alt="" /></a></li>
			</ul>
			<div class="slidePrev">
				<img src="images/nav_prev.png" alt="前へ" title="" />
			</div>
			<div class="slideNext">
				<img src="images/nav_next.png" alt="次へ" title="" />
			</div>
			<div class="controlNav"></div>
		</div>
		<!--/slide-->
		<div id="contents">
			<div class="topNavi">
				<!--<img alt="rogo" src="images/newdesainT.jpg" width = 1000 height = 400>-->
			</div>
			<!-- /.topNavi -->
			<div id="conR">
				<div >
				<table>
				<tr>
				<td>
					<video src="/video/Naruko_01.mp4" width="320" height="200"  controls preload></video>
				</td>
				<td>
				<br>
				<br>
				<br>
				<h2>東北紹介</h2>
				<br>
				<br>←再生クリック
				</td>
				</tr>

				</table>
				</div>
				<div class="information">
					<h3>INFORMATION</h3>
					</dl>
				</div>
				<!-- /.information -->
				<h3>イベント・情報</h3>

				<h3>Gallary</h3>

				<!-- <h4>menu2</h4>
            <ul>
                <li><a href="index.jsp">1</a></li>
                <li><a href="index.jsp">2</a></li>
                <li><a href="index.jsp">3</a></li>
            </ul>
            <h4>menu3</h4>
            <ul>
                <li><a href="index.jsp">1</a></li>
                <li><a href="index.jsp">2</a></li>
                 <li><a href="index.jsp">3</a></li>
           </ul>
            <div class="box">
                <h4>直近のハワイ島</h4>
                <img src="images/photo04.jpg" alt="" />
                <p class="first">あいうえおかきくけこさしすせそたちつてとなにぬねの。</p>
            </div><!-- /.box -->
				<div class="bnrL">
					<!--バナー -->
					<ul>
						<li><a href="http://www.senbus.co.jp"><img src="images/senbus_banner.jpg"
								alt="仙台バス株式会社" /></a></li>
						<li><a href="http://www.senbus.co.jp/bustours/"><img src="images/senbustours_banner.jpg"
								alt="仙台バスツアーズ" /></a></li>
						<!-- <li><a href="index.jsp"><img src="images/bnr_l.jpg"
								alt="" /></a></li> -->
					</ul>
				</div>
				<!-- /.bnrL -->
			</div>
			<!-- /.conR -->


			<!--        <div id="conL">サイドバーメニュー
        <div>PROFILE

        	<p>masa
        	<br>東北&ハワイの情報を
        	<br>お届けしてます！

        </div>
 -->
			<!--<div class="submenu">
            <h3>メニュー</h3>
                <h4>menu1</h4>
                <ul>
                    <li><a href="index.jsp">Link1</a></li>
                    <li><a href="index.jsp">Link2</a></li>
                    <li><a href="index.jsp">Link3</a></li>
                </ul>
                <h4>menu2</h4>
                <ul>
                    <li><a href="index.jsp">Link1</a></li>
                    <li><a href="index.jsp">Link2</a></li>
                    <li><a href="index.jsp">Link3</a></li>
                </ul>
                <h4>menu3</h4>
                <ul>
                    <li><a href="index.jsp">Link1</a></li>
                    <li><a href="index.html">Link2</a></li>
                    <li><a href="index.jsp">Link3</a></li>
               </ul>
            </div>-->
			<!-- /.submenu -->

			<div class="bnrR">
				<ul>
					<li>
						<div class="topNavi">
							<h2>ハワイ島</h2>
							<div class="bnrRCon">
								<div class="topNaviPhoto">
									<img src="images/hawaii01.jpg" alt="" />
								</div>
								<p>ハワイ島の名所、お得な情報</p>
								<p class="topNaviDetail">
									<a href="/Hilo">詳しくはこちら</a>
								</p>
							</div>
						</div>
					</li>
					<li>
						<div class="topNavi">
							<h2>オアフ島</h2>
							<div class="bnrRCon">
								<div class="topNaviPhoto">
									<img src="images/oahu01.jpg" alt="" />
								</div>
								<p>オアフ島の名所、隠れスポットなど</p>
								<p class="topNaviDetail">
									<a href="/Oahu">詳しくはこちら</a>
								</p>
							</div>
						</div>
					</li>
					<li>
						<div class="topNavi">
							<h2>東北</h2>
							<div class="bnrRCon">

								<div class="topNaviPhoto">
									<img src="images/touhoku01.jpg" alt="" />
								</div>
								<p>東北のいいところ、イベント情報</p>
								<p class="topNaviDetail">
									<a href="/Tohoku">詳しくはこちら</a>
								</p>
							</div>
						</div>

					</li>
				</ul>

				<!-- <div>PROFILE
        			<p>NAME masa</p>
        			東北&ハワイ関連の情報展開
        			<br>ツアー企画など色々やってます！
        			</div>
                	<ul>
                    <li><a href="index.jsp"><img src="images/plof.jpg" alt="" /></a></li>
                   		<li><a href="index.html"><img src="images/bnr_r.jpg" alt="" /></a></li>
                	</ul>
                -->
			</div>
			<!-- /.bnrR -->
		</div>
		<!-- /.conL -->
	</div>
	<!-- /#contents -->
	<div id="footMenu">
		<!--  <ul>
            <li><a href="index.html">ホーム</a></li>
            <li><a href="sample.html">メール</a></li>
            <li><a href="sample.html">つぶやき</a></li>
            <li><a href="index.html">お問い合わせ</a></li>
            <li><a href="index.jsp">FaceBook</a></li>
        </ul>
        -->
	</div>
	<!-- /#footerMenu -->
	<div id="footer">
		<div class="copyright">Copyright &copy; 2017 HILO-SENDAI-TOURS All
			Rights Reserved.</div>
	</div>
	<!-- /#footer -->
	</div>
	<!-- /#container -->
	<div id="pageTop">
		<a href="#">Page Top</a>
	</div>
	<!-- /#pageTop -->
</body>
</html>