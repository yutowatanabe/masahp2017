<%@page pageEncoding="UTF-8" isELIgnored="false" session="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="f" uri="http://www.slim3.org/functions"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<TITLE>会員登録フォーム</TITLE>
</HEAD>
<BODY bgcolor="#FFFFFF">
<div align="center">
 <img src="images/title.gif"alt="WEB SITE" />
</div>
<HR width="650" align="center">
<div align="center">
  <TABLE width="650">
    <TBODY>
    <TR>
      <TD align="center" width="735"><FONT size="+4" color="#660033"><font color="#660033" size="5">会員登録フォーム</font></FONT><BR>
        <FONT face="Times New Roman"><B><FONT size="+1">以下の入力項目に情報を入力してください</FONT></B></FONT></TD>
    </TR>
    </TBODY>
  </TABLE>
</div>
<form action="/sendMail" method="Post">
<HR width="700" align="center">
<div align="center"><FONT color="#ff0000"> </FONT>
  <TABLE cellspacing="1" cellpadding="6" width="700">
    <TR>
      <TD colspan="2" bgcolor="#FFFFCC"><font color="#ff0000">※</font><b>印は入力必須項目です。</b>
      </TD>
    </TR>
    <TBODY>
    <TR>
      <TD bgcolor="#edd7b8" width="183" nowrap><FONT color=#ff0000>※</FONT> 氏名<BR>
        　　<FONT size="-1">（漢字）</FONT></TD>
      <TD bgcolor="#f8f1eb" width="574">
        <INPUT name="userName" size="15">

      </TD>
    </TR>
    <TR>
      <TD bgcolor="#edd7b8" width="153"><FONT color=#ff0000>※</FONT> メールアドレス<BR>
        <FONT size="-1">（確認のため２回）</FONT></TD>
      <TD bgcolor="#f8f1eb" width="564">
        <INPUT name=userMail>
        <BR>
        <INPUT name=checkMail>
      </TD>
    </TR>
    <TR>
      <TD bgcolor="#edd7b8" width="153">　　生年月日</TD>
      <TD bgcolor="#f8f1eb" width="564">
       <INPUT name=userBirthDate placeholder ="yyyy年mm月dd日">
        </TD>
    </TR>
    <TR>
      <TD bgcolor="#edd7b8" width="173"><FONT color=#ff0000>※</FONT> 住所</TD>
      <TD>
        <INPUT name="userAddress" size="60">
      </TD>
    </TR>

    <TR>
      <TD bgcolor="#edd7b8" width="153"><FONT color=#ff0000>※</FONT> 電話番号<BR>
        　　（半角英数）</TD>
      <TD bgcolor="#f8f1eb" width="564">電話番号　
        <INPUT name="Home_phone0" size="11" placeholder = "ハイフンなしで入力">
       </TD>
    </TR>
    </TBODY>
  </TABLE>
</div>
<P align="center">
  <INPUT type=submit name="submit" id="submit" value="　　 送信 　　">
  </form>
  <br>
</BODY>
</HTML>