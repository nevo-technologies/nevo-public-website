<% Option Explicit %>

<!-- #include virtual="/our-knowledge/includes/case_study_list.asp" -->

<% Dim iPID %>

<% iPID = Request.QueryString("ID") %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<html>

<head>

<title>NEVO / Case Study - <%=sProjectClientName(iPID)%>&nbsp;<%=sProjectDescription(iPID)%></title>

<LINK type="text/css" rel="stylesheet" href="/our-knowledge/includes/nevoprojects.css"></LINK>

</head>

<body class="bodyBackGround" marginwidth="0" marginheight="0" topmargin="0" leftmargin="0">

<table cellspacing="0" cellpadding="1" border="0" width="644">

 <tr>
  <td width="5%" align=left valign=top></td>
  <td width="70%" class="bodyText" valign="center" align=left valign=top>
   &nbsp;
  </font>
  </td>
  <td width="20%" align="right" class="tightBodyText">
   <a class="obvious" href="javascript:window.print()">Print</a>&nbsp;&nbsp;<a class="obvious" href="javascript:window.close()">Close</a>
  </td>
  <td width="5%" align=left valign=top></td>
 </tr>
  <tr>
   <td width="5%" align=left valign=top></td>
   <td width="70%" class="bodyText" valign="center" align=left valign=top>
    <font align="center" class="leaderText">
    <%=formatDoubleString("Nevo Case Studies",6)%>
   </font>
   </td>
   <td width="20%" align="right" class="tightBodyText">
    &nbsp;
   </td>
   <td width="5%" align=left valign=top></td>
 </tr>
</table>

<table cellspacing="0" cellpadding="0" border="0" width="644">
 <tr>
  <td width="5%" align=left valign=top></td>
  <td width="90%" class="bodyTextNarrow" valign="center" align=left valign=top>

  <font class="sectionTitleText"><%=sProjectClientName(iPID)%><br/><%=sProjectDescription(iPID)%></font>
