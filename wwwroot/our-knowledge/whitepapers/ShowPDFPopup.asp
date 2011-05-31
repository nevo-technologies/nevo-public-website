<!-- #include virtual="/our-knowledge/includes/whitepaper_list.asp" -->

<% Dim iPID %>
<% Dim pdfURL %>

<% iPID = Request.QueryString("ID") %>
<% pdfURL = sWhitePaperURL(iPID) %>

<FRAMESET ROWS="*">
  <FRAME NAME="pdf" src="<%=pdfURL%>">
</FRAMESET>
