<%@page pageEncoding="UTF-8" isELIgnored="false" session="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="f" uri="http://www.slim3.org/functions"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<TITLE>お問い合わせフォーム</TITLE>
</HEAD>
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
							color="#660033" size="5">ご質問・お問い合わせフォーム</font></FONT><BR> <FONT
						face="Times New Roman"><B><FONT size="+1">以下の入力項目に情報を入力してください</FONT></B></FONT></TD>
				</TR>
			</TBODY>
		</TABLE>
	</div>
	<HR width="700" align="center">
	<div align="center">
		<FONT color="#ff0000"> </FONT>
		<TABLE cellspacing="1" cellpadding="6" width="700">
			<TR>
				<TD colspan="2" bgcolor="#FFFFCC"><font color="#ff0000">※</font><b>印は入力必須項目です。</b>
				</TD>
			</TR>
			<TBODY>
				<TR>
					<TD bgcolor="#edd7b8" width="183" nowrap><FONT color=#ff0000>※</FONT>
						氏名： 姓 名<BR> <FONT size="-1">（漢字）</FONT></TD>
					<TD bgcolor="#f8f1eb" width="574"><INPUT name="name0"
						size="11"> <INPUT name="name1" size="10"></TD>
				</TR>
				<TR>
					<TD bgcolor="#edd7b8" width="153"><FONT color=#ff0000>※</FONT>
						氏名： 姓 名<BR> <FONT size="-1">（ひらがな）</FONT></TD>
					<TD bgcolor="#f8f1eb" width="564"><INPUT name="name_kana0"
						size="11"> <INPUT name="name_kana1" size="10"></TD>
				</TR>
				<TR>
					<TD bgcolor="#edd7b8" width="153">氏名： <FONT size="-1">
							（英語</FONT>）
					</TD>
					<TD bgcolor="#f8f1eb" width="564">Last <INPUT
						name="name_english0" size="11"> First <INPUT
						name="name_english1" size="10"> Middle <INPUT
						name="name_english2" size="10">
					</TD>
				</TR>
				<TR>
					<TD bgcolor="#edd7b8" width="153"><FONT color=#ff0000>※</FONT>
						メールアドレス<BR> <FONT size="-1">（確認のため２度）</FONT></TD>
					<TD bgcolor="#f8f1eb" width="564"><INPUT name=mail_address>
						<BR> <INPUT name=mail_address></TD>
				</TR>

				<TR>
					<TD bgcolor="#edd7b8" width="153"><FONT color=#ff0000>※</FONT>
						性別</TD>
					<TD bgcolor="#f8f1eb" width="564"><INPUT type=radio CHECKED
						value=name name=sex> 男性 <INPUT type=radio value=name2
						name=sex> 女性</TD>
				</TR>
			</TBODY>
		</TABLE>
	</div>
	<div align="center">
		<TABLE cellspacing="1" cellpadding="6" width="700">
			<TR bgcolor="#FFFFCC">
				<TD colspan="2"><b>お問い合わせ内容</b></TD>
			</TR>
			<TBODY>


			</TBODY>
		</TABLE>
	</div>
	<P align="center">
		<INPUT type=submit value="　　 送信 　　"> &nbsp;&nbsp;&nbsp;&nbsp;
		<INPUT type=reset value=　　クリア　　> <br> <font size="2"
			color="#FF0000">※現在は稼動しない</font>
	</P>
</BODY>
</HTML>