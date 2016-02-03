<%
    id = Request.QueryString("ID")
    Select Case id
      Case 1
        Response.Redirect "http://nevo.com/our-knowledge/whitepapers/High Performance Software Teams.pdf"
      Case 2
        Response.Redirect "http://nevo.com/our-knowledge/whitepapers/Building a High Performance Team.pdf"
      Case 3
        Response.Redirect "http://nevo.com/our-knowledge/whitepapers/RequirementsProcess.pdf"
      Case 4
        Response.Redirect "http://nevo.com/our-knowledge/whitepapers/BuildVsBuy.pdf"
      Case 5
        Response.Redirect "http://nevo.com/our-knowledge/whitepapers/NevoVendorSelection.pdf"
      Case else
        Response.Redirect "http://nevo.com/"
    End Select
%>