
<%@ Page Language="C#" %>
<%@ Import namespace="System.Net.Mail" %>

<%
    string toEmail = ConfigurationManager.AppSettings["contactEmailTo"];
    string bccEmail = ConfigurationManager.AppSettings["contactEmailBcc"];
    string subject = ConfigurationManager.AppSettings["contactEmailSubject"];
    
    string fromEmail = Request.QueryString["from"] ?? "";
    string name = Request.QueryString["name"] ?? "";
    string phone = Request.QueryString["phone"] ?? "";
    string message = Request.QueryString["message"] ?? "";

    MailAddress bccMailAddress = new MailAddress( bccEmail );
   
    MailMessage mailMessage = null;
    try {
        mailMessage = new MailMessage( fromEmail, toEmail );
        //mailMessage.Bcc.Add( bccMailAddress );
        mailMessage.Subject = subject;
        mailMessage.Body =
            "Name: " + name + "\n" +
            "Email: " + fromEmail + "\n" +
            "Phone: " + phone + "\n" +
            "Message: " + message + "\n";
        mailMessage.IsBodyHtml = false;
    }
    catch ( Exception e ) {
        Response.Write( e.ToString() );
        return;
    };
        
    SmtpClient client = new SmtpClient("smtp.nevo.com", 25);
    client.UseDefaultCredentials = true;
    
    try {
        client.Send( mailMessage );
        Response.Write( "OK" );
        Response.StatusCode = 200;
    }
    catch ( Exception e ) {
        Response.Write( e.ToString() );
        Response.StatusCode = 500;
    };
%>