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

	rem on 12/5/11 Pete Jaffe removed the "select case" switch that toggled between this 
	rem and using CDO.Message.  I proved CDONTS.Newmail worked and sent directly to our new Google account
	rem (it didn't seem to get "trapped" in the @nevo.com Web.com world).  I figured I would just remove
	rem the other CDO.Message implementation since either it wasn't working, or the original "Select Case"
	rem wasn't working based on the matching of "Microsoft-IIS/5.0" or "Microsoft-IIS/5.1" (which probably makes
	rem sense given web.com is supposedly running IIS 7 for the hosted websites.
	
	rem Use CDONTS for sending Email
	set objMail = Server.CreateObject("CDONTS.Newmail")
	objMail.To = SendTo
	objMail.From = SendFrom
	objMail.Subject = SendSubject
	objMail.Bcc = "pjaffe@nevo.com"
	objMail.Body = MailBody

	objMail.MailFormat = 0

	objMail.Send

	set objMail = nothing


Response.Redirect(sBackTo & "?emSent=OK")

%>