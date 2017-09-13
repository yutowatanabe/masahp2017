<%@page pageEncoding="UTF-8" isELIgnored="false" session="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="f" uri="http://www.slim3.org/functions"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>紹介者会員番号入力</title>
<style>
body
{

    padding-top: 70px;
}
.container {
    background-color: #f7f7f7
}
.header
{
    background-color: #ffffff;
    border-bottom: 1px solid #CCC;
}
.header-img
{
    margin: 15px auto 10px;
    display: block;
    moz-border-radius: 50%;
    -webkit-border-radius: 50%;
    border-radius: 50%;

}
.normal-text
{
    padding: 7px 35px 0px 35px;
    color: #696969;
}
.smaller-text
{
    font-size:11px;
    font-weight:bold;
}
.smallest-text
{
    padding: 12px 30px 0px 30px;
    color: #CCC;
    font-size:11px;
}
.form-signin
{
    max-width: 360px;
    padding: 0px 0 0px 0;
    margin: 0 auto;
}
.form-signin .form-signin-heading, .form-signin .checkbox
{
    margin-bottom: 10px;
}
.form-signin .checkbox
{
    font-weight: normal;
}
.form-signin .form-control
{
    position: relative;
    font-size: 16px;
    height: auto;
    padding: 10px;
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    box-sizing: border-box;
}
.form-signin .form-control:focus
{
    z-index: 2;
}
.form-signin input[type="text"]
{
    margin-bottom: -1px;
    border-radius: 0;
    border-left: 0;
    border-right: 0;
}
.form-signin input[type="number"]
{
    margin-bottom: -1px;
    border-radius: 0;
    border-left: 0;
    border-right: 0;
}
.form-signin input[type="password"]
{
    border-radius: 0;
    border-left: 0;
    border-right: 0;
    margin-bottom: -1px;
}
.account-wall
{
    margin-top: 20px;
    padding: 10px 0px 10px 0px;
    background-color: #ffffff;
    -moz-box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
    -webkit-box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
    box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
}
.login-title
{
    color: #000;
    font-size: 22px;
    font-weight: 600;
    display: block;
}

.profile-img
{
    width: 96px;
    height: 96px;
    margin: 0 auto 10px;
    display: block;
    moz-border-radius: 50%;
    -webkit-border-radius: 50%;
    border-radius: 50%;
}
.need-help
{
    margin-top: 10px;
}
.new-account
{
    display: block;
    margin-top: 10px;
}
.btn
{
    border-radius:0;
}
.chase-logo
{
    text-align: center;
    padding: 0px 15px 20px 15px;
}
#error
{
    color: red;
    display: none;
}
#errorMsg
{
	color: red;
}
</style>
    <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
</head>
<body>

<div class="container">
    <div class="row navbar-fixed-top header">
        <img class="header-img" src="images/title.gif" id="bond-logo" />
    </div>
    <div class="row">
    <img src="images/planImage/4A_001.jpg">
        <div class="col-sm-6 col-md-4 col-md-offset-4">
        <background-image url("images/planImage/4A_001.jpg")>
            <!-- <h1 class="text-center login-title">Sign in to continue to Bootsnipp</h1> -->
            <div class="account-wall">
                <div class="chase-logo">
                    <!-- <img class="profile-img" src="images/title.gif"alt=""> -->
                    <br>
                    <h1 class="text-center login-title">会員登録</h1>
                    <p class="text-center normal-text ">会員登録には、紹介者が必要です。
                    <br>
                    <br>会費無料登録後仙台バスツアーズより会員証が送付されます。
					<br>登録者又は登録者の紹介のみバケーションレンタル予約が可能となります。
					<br>
					<br>会員特典
					<br>
					<br>バケーションレンタルの予約
					<br>オプショナルの優先予約
					<br>当社特別プランの案内
					<br>ハワイ島に滞在中のアフターケアー
					<br>
					<br>＜ご利用案内＞
					<br>
					<br>会費、年会費無料となり、
					<br>有効期限はありません。
					<br>会員証はご本人様のご利用となります。
					その他への貸与・譲渡は出来ません

					<br>会員証の汚破損・紛失・その他の場合
					<br>再発行を致します。（手数料＄１）
					<br>登録内容変更はお早めにご連絡下さい。
					<br>
					<br>個人情報の取り扱い
					<br>
					<br>個人情報はHILO SENDAI TOUES、
					<br>仙台バスツアーズのデータとして
					<br>保管され法令の定める場合を除き、
					<br>事前に本人の同意がない場合、
					<br>第三者への提供は致しません。






                    <br>
                    <c:if test = "${!empty msg}">
                    <div id ="errorMsg">
                    	<c:out value="${msg}" />
                    </div>
                    </c:if>
                    </p>
                    <!--<p class="text-center smaller-text"><a>LEARN MORE</a></p>-->
                    <p id="error"><span class="glyphicon glyphicon-warning-sign left"></span> Invalid routing number</p>
                </div>
                <form class="form-signin" action="/CheckUser" method="Post">
                <input type="text" class="form-control" placeholder="紹介者名" name = "introducerName" id="introducerName" required>
                <input type="text" class="form-control" placeholder="紹介者会員番号" name = "introducerNumber" id="introducerNumber"required>
                <!-- <input type="text" class="form-control" placeholder="Routing Number" id="routing" required> -->
                <button class="btn btn-lg btn-primary btn-block" type="submit">
                    Next Page</button>
                </form>
            </div>
          <!-- コメント挿入可能 -->
        </div>
    </div>
</div>

</body>
</html>
