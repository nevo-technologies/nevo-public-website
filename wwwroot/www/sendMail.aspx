<%@ Page Language="C#" %>
<%@ Import namespace="System.Net.Mail" %>

<%
    string fromMail = Request.QueryString["from"] ?? "";
    string name = Request.QueryString["name"] ?? "";
    string phone = Request.QueryString["phone"] ?? "";
    string message = Request.QueryString["message"] ?? "";

    string toMail = ConfigurationManager.AppSettings["MailTo"];
    string bccMail = ConfigurationManager.AppSettings["MailBcc"];
    string subject = "NevoWebsite Contact Message";

    MailMessage mailMessage = null;
    try {
        mailMessage = new MailMessage( fromMail, toMail );
        mailMessage.Bcc.Add( new MailAddress( bccMail ) );
        mailMessage.Subject = subject;
        mailMessage.Body =
            "Name: " + name + "\n" +
            "Mail: " + fromMail + "\n" +
            "Phone: " + phone + "\n" +
            "Message: " + message + "\n";
        mailMessage.IsBodyHtml = false;
    }
    catch ( Exception e ) {
        Response.StatusCode = 500;
        Response.Write( e.ToString() );
        return;
    };
        
    SmtpClient smtpClient = null;
    try {
        smtpClient = new SmtpClient("localhost");
        smtpClient.UseDefaultCredentials = true;
        smtpClient.Send( mailMessage );
    }
    catch ( Exception e ) {
        Response.StatusCode = 500;
        Response.Write( e.ToString() );
    };

    Response.StatusCode = 200;
    Response.Write( "OK" );
%>