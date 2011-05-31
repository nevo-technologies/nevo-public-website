<% Option Explicit %>

<!-- #include virtual="/our-people/includes/team_leader_list.asp" -->

<% Dim iTC %>
<% iTC = Request.QueryString("ID") %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<html>

<head>

<title>NEVO / Team Leaders - <%=sTeamLeaderName(iTC)%></title>

<LINK type="text/css" rel="stylesheet" href="/our-people/includes/nevoteam.css"></LINK>

</head>

<body class="bodyBackGround" marginwidth="0" marginheight="0" topmargin="0" leftmargin="0">

<table cellspacing="0" cellpadding="0" border="0" width="644">

 <tr>
  <td width="5%" align=left valign=top></td>
  <td width="70%" class="bodyText" valign="center" align=left valign=top>
   &nbsp;
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
   <%=formatDoubleString(sTeamLeaderName(iTC),sTeamLeaderSlantPos(iTC))%>
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
  <td valign = "top" width="90%" class="bodyText" valign="center" align=left valign=top>
   <% If ( NOT sTeamLeaderEmailImageURL(iTC) = "" ) Then %>
   	<img align="left" border="1" src="<%=sTeamLeaderEmailImageURL(iTC)%>" width="<%=sTeamLeaderPhotoImageWidth%>" height="<%=sTeamLeaderPhotoImageHeight%>" alt="">
   	<img align="left" border="0" src="/images/spacer.gif" width="4" height="<%=sTeamLeaderPhotoImageHeight%>" alt="">
   <% End If %>

