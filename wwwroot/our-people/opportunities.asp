<% Option Explicit %>

<!-- #include virtual="/our-people/includes/job_list.asp" -->

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<html>

<head>

<title>NEVO / Working at NEVO</title>

<LINK type="text/css" rel="stylesheet" href="/our-people/includes/nevo.css"></LINK>
<script type='text/javascript' language='JavaScript' src='/includes/browserneutral.js'> </script>

</head>

<body class="bodyBackGround" marginwidth="0" marginheight="0" topmargin="0" leftmargin="0">

<table cellspacing="0" cellpadding="1" border="0" width="873">
<tr><td align=left valign=top>


<table cellspacing=0 cellpadding=0 border=0>
<tr><td align=left valign=top colspan=2>
<img src="/images/c1t.gif" width=436 height=210>


</tr><tr><td align=left valign=top width=93>
<img src="/images/c2t.gif" width=93 height=109 usemap="#a" border=0><map name="a">
<area href="/our-home/home.htm" shape="rect" coords="0, 28, 92, 58">
<area href="mailto:info@nevo.com" shape="rect" coords="58, 94, 78, 107">

</map>

</td><td align=left valign=top width=343>

<img src="/images/a3t.gif" width=343 height=49 border=0><br>
<img src="/images/1pixel_000000.gif" width="269" height="1"></br>
<img src="/images/spacer.gif" width="188" height="6"><img src="/images/1pixel_green.png" width="60" height="6"></br>

<table cellspacing=0 cellpadding=0 border=0 bgcolor="black">
<tr>
<td width="15"  height="26pt"><img src="/images/pixel.gif" width=15 height="24pt"></td>
<td width="73"  height="26pt" valign="center"><a href="/our-story/our_story.htm" class="nevotop">our story</a></td>
<td width="100" height="26pt" valign="center"><a href="/our-knowledge/our_knowledge.htm" class="nevotop">our knowledge</a></td>
<td width="93"  height="26pt" valign="center"><a href="/our-people/our_people.htm" class="nevotop">our people</a></td>
</tr>
</table>

<table cellspacing=0 cellpadding=0 border=0>

<tr>
<td width="15"><img src="/images/pixel.gif" width=15 height="24pt"></td>
<td width="73"><img src="/images/pixel.gif" width=73 height="24pt"></td>
<td width="100"><img src="/images/pixel.gif" width=73 height="24pt"></td>
<td width="93" valign="center"><a href="/our-people/team_leaders.asp">team leaders</a></td>
</tr>
<tr>
<td width="15"><img src="/images/pixel.gif" width=15 height="24pt"></td>
<td width="73"><img src="/images/pixel.gif" width=73 height="24pt"></td>
<td width="100"><img src="/images/pixel.gif" width=93 height="24pt"></td>
<td width="93" valign="center"><a href="/our-people/working.asp?P=1">working at Nevo</a></td>
</tr>

<tr>
<td width="15"><img src="/images/pixel.gif" width=15 height="24pt"></td>
<td width="73"><img src="/images/pixel.gif" width=73 height="24pt"></td>
<td width="100"><img src="/images/pixel.gif" width=93 height="24pt"></td>
<td width="93" valign="center">
<ul class="navbar">
   <li class="navbarselected">opportunities</li>
   <li class="navbar"><a href="mailto:jobs@nevo.com?subject=Resume">submit&nbsp;a&nbsp;resume</a></li>
  </ul>
</tr>

</table>


</td></tr></table></td><td class="bodyText" valign="center" align=left>

</br><img width="320" src="/images/spacer.gif" height="55"></br>
<font class="leaderText">
o&nbsp;p&nbsp;p&nbsp;o&nbsp;r&nbsp;<i>t</i>&nbsp;u&nbsp;n&nbsp;i&nbsp;t&nbsp;i&nbsp;e&nbsp;s</font>
</br><img width="320" src="/images/spacer.gif" height="1"></br>
<font class="bodyTextNarrow">
At Nevo Technologies, we are actively seeking certain individuals who posses great
development skills, who can lead a team of similarly talented
people, good at requirements gathering and project management
who love to solve complex problems, working with the latest
technologies.  If you are bright, like to get things done and
are nice to work with, we are looking for you.
<p>
We are located in Harvard Square, Cambridge, MA.
<p>
We are expanding our team in three areas:  Software Engineer / Developer,
Team Lead, and Principal.
</font>

<table cellspacing=0 cellpadding=0 border=0>
<tr><td class="bodyText" colspan="2"><b>Current Opportunities</b></td></tr>

<% Dim iJID %>
<% Dim showCount %>
<% showCount = 0 %>

<% For iJID=1 to iJobCount %>

<%   if ( sJobVisible(iJID) = "Y" ) Then %>

<%    showCount = showCount + 1 %>

      <%=formatJobListItem ( iJID )%>

<%   End If %>

<% Next %>

<% If ( NOT showCount > 0 ) Then %>

  <tr><td class="bodyTextNarrow" colspan="2">Sorry, we are unable to offer any new opportunities at this time...</td></tr>

<% End If %>

</table>

</td>
<td><img src="/images/pixel.gif" width=2 height="505" border=0 alt=""></td>
</tr>
</table>
</body>
</html>
