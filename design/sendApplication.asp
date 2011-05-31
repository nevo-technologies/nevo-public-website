<!--METADATA TYPE="typelib" UUID="CD000000-8B95-11D1-82DB-00C04FB1625D" NAME="CDO for Windows 2000 Type Library" -->
<!--METADATA TYPE="typelib" UUID="00000205-0000-0010-8000-00AA006D2EA4" NAME="ADODB Type Library" -->
<%

Dim sRecipient
Dim sReturnEmail
Dim sSubject

sRecipient = "design@nevo.com"
sReturnEmail = "design@nevo.com"
sSubject = "Design Partner Application - " & Request.Form("companyName")

dim objMail
dim SendTo
dim SendFrom
dim SendSubject

Dim MailBody
MailBody = ""
MailBody = MailBody & "Company Name: " & Request.Form("companyName") & vbCRLF
MailBody = MailBody & "Company Address: " & Request.Form("companyAddress") & vbCRLF
MailBody = MailBody & "Company Phone: " & Request.Form("companyPhone") & vbCRLF
MailBody = MailBody & "Company Url: " & Request.Form("companyUrl") & vbCRLF & vbCRLF
MailBody = MailBody & "Primary Contact Name: " & Request.Form("primaryContactName") & vbCRLF
MailBody = MailBody & "Primary Contact Phone: " & Request.Form("primaryContactPhone") & vbCRLF
MailBody = MailBody & "Primary Contact Email: " & Request.Form("primaryContactEmail") & vbCRLF
MailBody = MailBody & "Employee Count: " & Request.Form("employeeCount") & vbCRLF
MailBody = MailBody & "Typical Engagement: " & Request.Form("typicalEngagement") & vbCRLF
MailBody = MailBody & "Minimum Engagement: " & Request.Form("minimumEngagement") & vbCRLF
MailBody = MailBody & "Industry Expertise: " & Request.Form("industryExpertise") & vbCRLF
MailBody = MailBody & "Technical Preferences: " & Request.Form("technicalPreferences") & vbCRLF
MailBody = MailBody & "Technical Capabilities: " & Request.Form("technicalCapabilities") & vbCRLF

SendFrom = sUserEmail

    sServerIs = Request.ServerVariables("SERVER_SOFTWARE")

    Select Case sServerIs

    Case "Microsoft-IIS/5.0"

        rem Use CDONTS for sending Email


        set objMail = Server.CreateObject("CDONTS.Newmail")
        objMail.To = sRecipient
        objMail.From = sRecipient
        objMail.Subject = sSubject
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
              .To       = sRecipient
              .From     = sRecipient
              .Subject  = sSubject
              .TextBody = MailBody
              .Send
        End With

        set iMsg = nothing
        set iConf = nothing

    End Select


Response.Redirect(Request.Form("backTo") & "?emSent=OK")

%>