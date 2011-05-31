<!--METADATA TYPE="typelib" UUID="CD000000-8B95-11D1-82DB-00C04FB1625D" NAME="CDO for Windows 2000 Type Library" -->
<!--METADATA TYPE="typelib" UUID="00000205-0000-0010-8000-00AA006D2EA4" NAME="ADODB Type Library" -->

<% Option Explicit %>

<%

Dim emSent
Dim emailWhat
Dim isPostBack
%>

<!-- #include virtual="/our-story/includes/emailDirectionsPage.asp" -->

<%
isPostBack = Request.Form("postback")
Dim sUserEmail
Dim sReturnEmail
Dim sSubject

sReturnEmail = "info@nevo.com"
sSubject = "Directions to Nevo Technologies"

Dim sServerIs

dim objMail
dim SendTo
dim SendFrom
dim SendSubject
dim MailBody

sUserEmail = Request.Form("userEmail")

if ( isPostBack = "yes" ) Then

	sServerIs = Request.ServerVariables("SERVER_SOFTWARE")

	Select Case sServerIs

	Case "Microsoft-IIS/5.0"

		rem Use CDONTS for sending Email


		MailBody = ""
		MailBody = MailBody & dirMessage

		SendTo = sUserEmail
		SendSubject = sSubject
		SendFrom = sReturnEmail

		set objMail = Server.CreateObject("CDONTS.Newmail")
		objMail.To = SendTo
		objMail.From = SendFrom
		objMail.Subject = SendSubject
		objMail.MailFormat = 0
		objMail.BodyFormat = 0
		objMail.Body = MailBody

		objMail.Send

		set objMail = nothing

	Case "Microsoft-IIS/5.1"

		rem Use CDOSYS for sending Email
		Dim iMsg
		Set iMsg = CreateObject("CDO.Message")
		Dim iConf
		Set iConf = CreateObject("CDO.Configuration")

		Dim Flds
		Set Flds = iConf.Fields

		With Flds
		  rem assume constants are defined within script file
		  .Item(cdoSendUsingMethod)       = 2
		  .Item(cdoSMTPServer)            = "localhost"
		  .Item(cdoSMTPConnectionTimeout) = 10
		  .Item(cdoURLGetLatestVersion)   = True
		  .Update
		End With

		With iMsg
		  Set .Configuration = iConf
		      .To       = sUserEmail
		      .From     = sReturnEmail
		      .Subject  = sSubject
		      .HTMLBody = dirMessage
		      .Send
		End With

		set iMsg = nothing
		set iConf = nothing

	End Select

End If

emSent = Request.QueryString("emSent")

%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
<title>NEVO</title>

<LINK type="text/css" rel="stylesheet" href="/our-story/includes/nevo.css"></LINK>

<script type='text/javascript' language='JavaScript' src='/includes/feedback.js'> </script>

</head>

<body class="bodyBackGround" marginwidth="0" marginheight="0" topmargin="0" leftmargin="0">

<table cellspacing=0 cellpadding=0 border=0 width=200>
<tr>

<td align=left valign=top ><img src="/images/spacer.gif" width=20 height=1 border=0></td>

<td align=left valign=top>

	<font class="leaderText">
	<center>
	s&nbsp;e&nbsp;n&nbsp;<i>d</i>&nbsp;&nbsp;&nbsp;
	a&nbsp;n&nbsp;&nbsp;&nbsp;
	e&nbsp;m&nbsp;a&nbsp;i&nbsp;l</center>
	</font>

</td>
<td align=left valign=top ><img src="/images/spacer.gif" width=10 height=1 border=0></td>
</tr>
<tr>
<td align=left valign=top ><img src="/images/spacer.gif" width=20 height=1 border=0></td>
<td>

	<table width="200" cellspacing=0 cellpadding=0 border=0>

	<% if ( isPostBack = "yes"  ) Then %>

	<tr>
		<td class="tightBodyText" align="center" valign="center">
		<img src="/images/spacer.gif" width=280 height=1></br>
		Thank you, your email has been sent...

		<FORM name="formName" ACTION="javascript:window.close();"  METHOD=POST onSubmit="javascript:window.close();"

		<table width="200" cellspacing=0 cellpadding=0 border=0>
		<tr>
			<td class="tightBodyText" align="center" valign="center"></br>
			<input type="submit" name="Close" value="Close" onClick="javascript:window.close();">
			</td>
		</tr></table>

		</td>

	</tr>

	<% Else %>

	<tr>
		<td class="tightBodyText" align="center" valign="center">

		<img src="/images/spacer.gif" width=280 height=1></br>
		Enter your email address to receive</br>your copy of
		<%=emailWhat%>.</br></br></td></tr>

		<FORM name="formName" ACTION="/our-story/emailBack.asp?W=<%=fromWHERE%>"  METHOD=POST onSubmit="return validateJustEmailInput(this);">

		<INPUT TYPE=HIDDEN NAME="postback" VALUE = "yes">

		<table width="200" cellspacing=0 cellpadding=0 border=0>
		<tr>

			<td class="tightBodyText" align=right valign="center"><b>email</b>&nbsp;</td>
			<td align=left valign=middle><INPUT TYPE="bodyText" NAME="userEmail" SIZE=33 VALUE=""></td>

		</tr>
		<tr>
			<td class="tightBodyText">&nbsp;</td>
			<td class="tightBodyText" align="center" valign="center"></br>
			<input type="submit" name="Submit" value="Send">&nbsp;&nbsp;&nbsp;&nbsp;<input type="button" name="Cancel" value="Cancel" onClick="javascript:window.close();">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			</td>
		</tr></table>
		</FORM>

		</td>
	</tr>

	<% End If %>

	</table>

</td>

<td align=left valign=top><img src="/images/spacer.gif" width=10 height=1 border=0></td>

</tr>

</table>


</body>
</html>

