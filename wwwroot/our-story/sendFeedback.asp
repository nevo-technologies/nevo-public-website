<!--METADATA TYPE="typelib" UUID="CD000000-8B95-11D1-82DB-00C04FB1625D" NAME="CDO for Windows 2000 Type Library" -->
<!--METADATA TYPE="typelib" UUID="00000205-0000-0010-8000-00AA006D2EA4" NAME="ADODB Type Library" -->
<%

Dim sUserEmail
Dim sUserName
Dim sUserMessage
Dim sUserCompany
Dim sBackTo

Dim sRecipient
Dim sReturnEmail
Dim sReturnName
Dim sSubject

sRecipient = "feedback@nevo.com"
sReturnEmail = "feedback@nevo.com"
sReturnName = "www.nevo.com"
sSubject = "Web Site Feedback"

dim objMail
dim SendTo
dim SendFrom
dim SendSubject
dim MailBody

sUserMessage = Request.Form("userMessage")
sUserEmail = Request.Form("userEmail")
sUserName = Request.Form("userName")
sUserCompany = Request.Form("userCompany")
sBackTo = Request.Form("backTo")

Session("userMessage") = sUserMessage
Session("userEmail") = sUserEmail
Session("userName") = sUserName
Session("userCompany") = sUserCompany

MailBody = ""
MailBody = MailBody & "A visitor sent the following feedback message:" & vbCRLF
MailBody = MailBody & vbCRLF
MailBody = MailBody & sUserMessage & vbCRLF
MailBody = MailBody & vbCRLF
MailBody = MailBody & "Visitor's contact information:" & vbCRLF
MailBody = MailBody & vbCRLF
MailBody = MailBody & "Name: " & sUserName & vbCRLF
MailBody = MailBody & "Company: " & sUserCompany & vbCRLF
MailBody = MailBody & "Email: " & sUserEmail & vbCRLF
MailBody = MailBody & vbCRLF
MailBody = MailBody & sReturnName & vbCRLF

SendTo = sRecipient

SendSubject = sSubject

SendFrom = sUserEmail

	sServerIs = Request.ServerVariables("SERVER_SOFTWARE")

	Select Case sServerIs

	Case "Microsoft-IIS/5.0"

		rem Use CDONTS for sending Email


		set objMail = Server.CreateObject("CDONTS.Newmail")
		objMail.To = SendTo
		objMail.From = SendFrom
		objMail.Subject = SendSubject
		objMail.Bcc = "bobd@nevo.com"
		objMail.Body = MailBody

		objMail.MailFormat = 0

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
		      .To       = SendTo
		      .From     = SendFrom
		      .Bcc		= "bobd@nevo.com"
		      .Subject  = SendSubject
		      .TextBody = MailBody
		      .Send
		End With

		set iMsg = nothing
		set iConf = nothing

	End Select


Response.Redirect(sBackTo & "?emSent=OK")

%>