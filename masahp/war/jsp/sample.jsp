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
<script type="text/javascript">
$(function() {
    $('#slide').slideshow({
        autoSlide    : true,
        type         : 'repeat',
        interval     : 3000,
        duration     : 500,
        easing       : 'swing',
        imgHoverStop : true,
        navHoverStop : true,
        prevPosition : 0,
        nextPosition : 0,
        baseWidth    : 940
    });
    $('.slidePrev img').rollover();
    $('.slideNext img').rollover();
    $(window).load(function() {
         $('.topNaviCon').uniformHeight();
    });
});
</script>
<title>AILE</title>
</head>
<body>
<div id="container">
    <div id="header">
        <h1><a href="index.jsp"><img src="images/AILE title.gif" alt="SAMPLE WEB SITE" /></a></h1>
        <div id="menu">
            <ul>
                <li class="home active"><a href="index.jsp">ホーム</a></li>
                <li><a href="index">HAWAII</a></li>
                <li><a href="sample">Oahu</a></li>
                <li><a href="index">東北</a></li>
                <li><a href="index">掲示板</a></li>
            </ul>
        </div><!-- /#menu -->
    </div><!-- /#header -->
    <div id="slide">
        <ul class="slideInner">
            <li><a href="index.jsp"><img src="images/hawaii.jpg" alt="" /></a></li>
            <li><a href="index.jsp"><img src="images/hawaii2.jpg" alt="" /></a></li>
            <li><a href="index.jsp"><img src="images/hawaii3.jpg" alt="" /></a></li>
        </ul>
        <div class="slidePrev"><img src="images/nav_prev.png" alt="前へ" title="" /></div>
        <div class="slideNext"><img src="images/nav_next.png" alt="次へ" title="" /></div>
        <div class="controlNav"></div>
    </div><!--/slide-->
    <div id="contents">
       <div class="topNavi">
            <div class="topNaviColumn">
                <h2>ハワイ島</h2>
                <div class="topNaviCon">
                    <div class="topNaviPhoto"><img src="images/hawaii01.jpg" alt="" /></div>
                    <p>ハワイ島の名所、お得な情報</p>
                    <p class="topNaviDetail"><a href="index.jsp">詳しくはこちら</a></p>
                </div><!-- /.topNaviCon -->
            </div><!-- /.topNaviColumn -->
            <div class="topNaviColumn">
                <h2>オアフ島</h2>
                <div class="topNaviCon">
                    <div class="topNaviPhoto"><img src="images/oahu01.jpg" alt="" /></div>
                    <p>オアフ島の名所、隠れスポットなど</p>
                    <p class="topNaviDetail"><a href="index.jsp">詳しくはこちら</a></p>
                </div><!-- /.topNaviCon -->
            </div><!-- /.topNaviColumn -->
            <div class="topNaviColumn">
                <h2>東北</h2>
                <div class="topNaviCon">
                    <div class="topNaviPhoto"><img src="images/touhoku01.jpg" alt="" /></div>
                    <p>東北のいいところ、イベント情報</p>
                    <p class="topNaviDetail"><a href="index.jsp">詳しくはこちら</a></p>
                </div><!-- /.topNaviCon -->
            </div><!-- /.topNaviColumn -->
        </div><!-- /.topNavi -->
        <div id="conR">
            <div class="information">
                <h3>ハワイ島</h3>
                <dl>
                    <dt>2015-08-04</dt>
                    <dd><a href="../sample1.jsp">ハワイ島の夏イベント情報</a>を更新しました。</dd>
                    <dt>2015-08-03</dt>
                    <dd><a href="/sample.jsp">オアフ島の夏イベント</a>を更新しました。</dd>
                    <dt>2015-08-02</dt>
                    <dd><a href="/sample.jsp">東北のお祭り情報</a>を更新しました。</dd>
                    <dt>2015-08-01</dt>
                    <dd><a href="/sample.jsp">新規ホームページを立ち上げました</a></dd>
                </dl>
            </div><!-- /.information -->



            <div class="bnrR">
            	<div>PROFILE
        			<p>NAME masa</p>
        			東北&ハワイ関連の情報展開
        			<br>ツアー企画など色々やってます！
        		</div>
                <ul>
                    <li><a href="index.jsp"><img src="images/plof.jpg" alt="" /></a></li>
                   <!--   <li><a href="index.html"><img src="images/bnr_r.jpg" alt="" /></a></li>-->
                </ul>
            </div><!-- /.bnrR -->
        </div><!-- /.conL -->
    </div><!-- /#contents -->
   <div id="footMenu">
      <!--  <ul>
            <li><a href="index.html">ホーム</a></li>
            <li><a href="sample.html">メール</a></li>
            <li><a href="sample.html">つぶやき</a></li>
            <li><a href="index.html">掲示板</a></li>
            <li><a href="index.jsp">FaceBook</a></li>
        </ul>
        -->
    </div><!-- /#footerMenu -->
    <div id="footer">
        <div class="copyright">Copyright &copy; 2014 YOUR SITE NAME All Rights Reserved.</div>
    </div><!-- /#footer -->
</div><!-- /#container -->
<div id="pageTop">
    <a href="#">Page Top</a>
</div><!-- /#pageTop -->
</body>
</html>