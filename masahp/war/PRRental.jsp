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
<meta name="keywords" content="HILO,SENDAI,TOURS,仙台バス,ハワイ,ヒロ,ツアー,旅行,HILO仙台" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<link rel="stylesheet" href="css/common.css" type="text/css" />
<link href="css/jquery.bxslider.css" rel="stylesheet" />
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/common.js"></script>
<script src="js/jquery.bxslider.min.js"></script>
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
    $(document).ready(function(){
          $('.bxslider').bxSlider({
                    auto: true,
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
				</ul>
			</div>
			<!-- /#menu -->
		</div>
		<!-- /#header -->
		<div id="slide">
			<!-- 画像を三枚指定して再生させる。 -->
			<ul class="slideInner">
				<li><a href="index.jsp"><img src="images/headerImage/head1.jpg" alt="" /></a></li>
				<li><a href="index.jsp"><img src="images/headerImage/head2.jpg" alt="" /></a></li>
				<li><a href="index.jsp"><img src="images/headerImage/head3.jpg" alt="" /></a></li>
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
				<div>
					<img alt="rogo" src="images/newdesainT.jpg" width=600 height=200>
				</div>
				<div class="information">
					<h1><center>バケーションレンタル</center></h1>
					<p>

					<div id="planname" >
						▼ 施設　一覧
						<br>
						<!-- <div align ="right">*1名1泊 $80</div> -->
					</div>
					<div>
						<h3><font size = "4" color ="blue">メインルーム</font></h3>
						<div align ="right">*1名1泊 $80</div>
							<!--
							<font size ="4">ビーチツアー（リリウオカラニ・ケアウカハ・オネカハカハ・カールスミス）
							<br>＊シュノーケルしながら亀を見るならおススメです</font>
							-->
							<ul class="bxslider">
							<li><img src="images/planImage/4A_001.jpg"></li>
							<li><img src="images/planImage/4A_002.jpg"></li>
							<li><img src="images/planImage/4A_003.jpg"></li>
   					     	<li><img src="images/planImage/4A_004.jpg"></li>
							<li><img src="images/planImage/4A_005.jpg"></li>
							<li><img src="images/headerImage/head1.jpg"></li>
							</ul>
						<h3><font size = "4" color ="green">サブルーム</font></h3>
							<!--
							<font size ="4">州立公園ツアー（レインボー滝・ラヴァーツリー・アハラヌイ）
							<br>＊州立公園を観ながら温泉も楽しんじゃおう</font>
							-->
							<ul class="bxslider">
							<li><img src="images/hawaii2.jpg"></li>
							<li><img src="images/planImage/4B_002.jpg"></li>
							<li><img src="images/planImage/4B_003.jpg"></li>
							</ul>

						<h3><font size = "4" color ="#FF0099">キッチン</font></h3>
						<!--
							<font size ="4">ショッピングツアー（ビックアイランドキャンディ・マカダミア工場）
							<br>＊ハワイ島ヒロのショッピングをするなら穴場も紹介しちゃいます</font>
							-->
							<ul class="bxslider">
							<li><img src="images/planImage/4C_001.jpg"></li>
							<li><img src="images/planImage/4C_002.jpg"></li>
							<li><img src="images/planImage/4C_003.jpg"></li>
   					     	<li><img src="images/planImage/4C_004.jpg"></li>
							<li><img src="images/planImage/4C_005.jpg"></li>
							</ul>
						<h3><font size = "4" color ="red">バスルーム</font></h3>
							<!--
							<font size ="4">キラウエアナイトツアー（キラウエア）
							<br>＊夜景を楽しみながらキラウエアの火口を観に行こう</font>
							-->
							<ul class="bxslider">
							<li><img src="images/planImage/4D_001.jpg"></li>
							<li><img src="images/planImage/4D_004.jpg"></li>
							<li><img src="images/planImage/4D_003.jpg"></li>
							<li><img src="images/planImage/4D_002.jpg"></li>
							</ul>
					</div>

				</div>
				<!-- /.information -->
				<!-- <h3>イベント・情報</h3> -->

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
				<!-- 	<ul>
						<li><a href="http://www.senbus.co.jp"><img
								src="images/senbus_banner.jpg" alt="仙台バス株式会社" /></a></li>
						<li><a href="http://www.senbus.co.jp/bustours/"><img
								src="images/senbustours_banner.jpg" alt="仙台バスツアーズ" /></a></li>
						 <li><a href="index.jsp"><img src="images/bnr_l.jpg"
								alt="" /></a></li>
					</ul>
					 -->
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
							<div class="bnrRCon">
								<img src="images/simarogo.jpg" width=300 height=200 alt="ロゴ" />
							</div>
						</div>
					</li>
					<li>
						<div class="topNavi">
							<h2>一般　予約</h2>
							<div class="bnrRCon">
								<div class="topNaviPhoto">

								</div>
								<p>＊オプショナル予約＊

								</p>
								<p class="topNaviDetail">
									<a href="/detail">お問い合わせはこちら</a>
								</p>
							</div>
						</div>
					</li>
					 <li>
						<div class="topNavi">
							<h2>会員　予約</h2>
							<div class="bnrRCon">
								<div class="topNaviPhoto">

								</div>
								<p>下記リンクから会員用ページにアクセス</p>
								<p class="topNaviDetail">
									<a href="/LimitedReserv">お問い合わせはこちら</a>
								</p>
							</div>
						</div>
					</li>
					<li>
						<div class="topNavi">
							<h2>会員　登録</h2>
							<div class="bnrRCon">

								<div class="topNaviPhoto">

								</div>
								<p>＊会員登録には紹介者が必要となります。</p>
								<p class="topNaviDetail">
									<a href="/checkUser">詳しくはこちら</a>
								</p>
							</div>
						</div>
					</li>

					<li>
						<div class="topNavi">
							<h2>Profile</h2>
							<div class="bnrRCon">

								<div class="topNaviPhoto">
								ハワイ島に来ると空を見上げることが多くなります。
								<br>
								そんな時間を過ごしに来ませんか。

									<img src="images/headerImage/prof.jpg" height =400 width =300 alt="prof" />
								</div>
								お問い合わせは、日本語で24時間
								<br>お気軽にご連絡ください。
								担当：MASA
								<br>TEL :080-3753-9771
								<br>MAIL:sendaimasa@hilo-sendai-tours.com
								<br>PUC 5599-C
							</div>
						</div>
					</li>
					<li>
					<div class="topNavi">
							<a href="http://www.senbus.co.jp"><img
								src="images/senbus_banner.jpg" alt="仙台バス株式会社" /></a>
					</div>
					</li>
					<li>
					<div class="topNavi">
							<a href="http://www.senbus.co.jp/bustours/"><img
								src="images/senbustours_banner.jpg" alt="仙台バスツアーズ" /></a>
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
		<!--</div>-->
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
		<div class="copyright">Copyright &copy; 2017 HILO-SENDAI-TOURS
			All Rights Reserved.</div>
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