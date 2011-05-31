<% Option Explicit %>

<%

Dim iPageCount

iPageCount = 6

Dim sPageIs
Dim sPageIsQuery
Dim sPageNavigation
Dim sLeftPageNavigation
Dim sPageURL
Dim sPageASP
Dim pgName
Dim pgFrom()

Redim pgFrom(iPageCount)

  pgFrom(1)=""
  pgFrom(2)="from Boston"
  pgFrom(3)="from I-90"
  pgFrom(4)="from Logan Airport"
  pgFrom(5)="by Subway"
  pgFrom(6)="parking"

sPageIsQuery = "P"

sPageASP="/our-story/directions.asp"

sPageIs = Request.QueryString(sPageIsQuery)
if ( IsNull(sPageIs) OR sPageIs = "" ) Then sPageIs = "ALL"
Select Case sPageIs
Case "ALL"
  pgName="ALL"
Case "1"
  pgName="ALL"
Case "2"
  pgName="BOSTON"
Case "3"
  pgName="I90"
Case "4"
  pgName="LOGAN"
Case "5"
  pgName="SUBWAY"
Case "6"
  pgName="PARK"
End Select

sPageURL=sPageASP & "?" & sPageIsQuery & "="

REM sPageNavigation set by ./includes/pageNavigation.asp
REM which is included in content asp, /our-knowledge/includes/how-we-work-content.asp
REM /our-knowledge/includes/how-we-work-content.asp returns a single page of content
REM or all the content if the All navigator is selected.

%>

<!-- #include virtual="/our-story/includes/pageNavigation.asp" -->

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
<title>NEVO / Directions</title>
<LINK type="text/css" rel="stylesheet" href="/our-story/includes/nevo.css"></LINK>
<script type='text/javascript' language='JavaScript' src='/includes/browserneutral.js'> </script>

</head>

<body class="bodyBackGround" marginwidth="0" marginheight="0" topmargin="0" leftmargin="0">

<table cellspacing=0 cellpadding=1 border=0 width=673>
<tr><td align=left valign=top>

<table cellspacing=0 cellpadding=0 border=0>
<tr><td align=left valign=top colspan=2>
<img src="/images/a1t.gif" width=436 height=210>



</tr><tr><td align=left valign=top width=93>
<img src="/images/a2t.gif" width=93 height=109 usemap="#a" border=0><map name="a">
<area href="/our-home/home.htm" shape="rect" coords="0, 28, 92, 58">
<area href="mailto:info@nevo.com" shape="rect" coords="58, 94, 78, 107">

</map>

</td><td align=left valign=top width=343>

<img src="/images/a3t.gif" width=343 height=49 border=0><br>
<img src="/images/1pixel_000000.gif" width="281" height="1"></br>
<img src="/images/spacer.gif" width="15" height="6"><img src="/images/1pixel_red.gif" width="50" height="6"></br>

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
<td width="73" valign="center"><a href="/our-story/feedback.asp">feedback</a></td>
<td width="100"><img src="/images/pixel.gif" width=100 height="24pt"></td>
<td width="93"><img src="/images/pixel.gif" width=93 height="24pt"></td>
</tr>

<tr>
<td width="15"><img src="/images/pixel.gif" width=15 height="24pt"></td>
<td colspan="2" width="173" valign="center"><a href="/our-story/directions.asp?P=1">directions</a>
<%=sLeftPageNavigation%>
</td>
<td width="93"><img src="/images/pixel.gif" width=93 height="24pt"></td>
</tr>

<tr>
<td width="15"><img src="/images/pixel.gif" width=15 height="24pt"></td>
<td width="73" valign="center"><a href="/our-story/contact.htm">contact&nbsp;us</a></td>
<td width="100"><img src="/images/pixel.gif" width=100 height="24pt"></td>
<td width="93"><img src="/images/pixel.gif" width=93 height="24pt"></td>
</tr>

</table>


</td></tr></table></td><td class="bodyText" valign="center" align=left>
<table cellspacing=0 cellpadding=0 border=0 width="320">
 <tr>
  <td width="55%" align="left" class="tightBodyText" valign="center">
    <font class="leaderText">
  d&nbsp;i&nbsp;r&nbsp;e&nbsp;c&nbsp;<i>t</i>&nbsp;i&nbsp;o&nbsp;n&nbsp;s</font>
  </td>
  <td width="45%" align="right" class="tightBodyText" valign="center">
    <a class="obvious" href="javascript:newWindow('/our-story/printDirections.asp?W=<%=pgName%>&P=Y');">Print</a>&nbsp;&nbsp;&nbsp;<a class="obvious" href="javascript:newEmailWindow('/our-story/emailBack.asp?W=<%=pgName%>');">Email To Me</a>
  </td>
 </tr>
 </table>


<img width="320" src="/images/spacer.gif" height="1"></br>

 <!-- #include virtual="/our-story/includes/directions-content.asp" -->

</td>
<td><img src="/images/pixel.gif" width=2 height="505" border=0 alt=""></td>
</tr>
<tr>
<td></td><td>
<table cellspacing=0 cellpadding=1 border=0 width="100%">
 <tr>
  <td width="40%" class="tightBodyTight" valign="top" align="right">&nbsp;</td>
  <td width="60%" class="tightBodyTight" valign="top" align="right"><%=sPageNavigation%></td>
  </tr>

 </table>
</td><td></td></tr>

</table>
</body>
</html>
