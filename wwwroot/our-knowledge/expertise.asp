<% Option Explicit %>

<%

Dim sPageIs
Dim sPageIsQuery
Dim sPageNavigation
Dim sPageURL
Dim sLeftPageNavigation
Dim sUseLeftPageNavigation
Dim sNavFormat
Dim sPageSpaceLeft
Dim sPageSpaceRight
Dim pgName
Dim pgFrom()

sPageSpaceLeft="65%"
sPageSpaceRight="35%"
sNavFormat="ALLBACKPAGESNEXT"
sNavFormat="MORE"
sUseLeftPageNavigation="NO"

sPageIsQuery = "P"

sPageIs = Request.QueryString(sPageIsQuery)
if ( IsNull(sPageIs) OR sPageIs = "" ) Then sPageIs = "ALL"

sPageURL="/our-knowledge/expertise.asp" & "?" & sPageIsQuery & "="

REM sPageNavigation set by ./includes/pageNavigation.asp
REM which is included in content asp, /our-knowledge/includes/how-we-work-content.asp
REM /our-knowledge/includes/how-we-work-content.asp returns a single page of content
REM or all the content if the All navigator is selected.

%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<html>

<head>

<title>NEVO</title>

<LINK type="text/css" rel="stylesheet" href="/our-knowledge/includes/nevo.css"></LINK>

<script type='text/javascript' language='JavaScript' src='/includes/browserneutral.js'> </script>

</head>

<body marginwidth="0" marginheight="0" topmargin="0" leftmargin="0" background="/images/bg_blue.gif">


<table cellspacing=0 cellpadding=1 border="0" width=673>
<tr><td align=left valign=top>


<table cellspacing=0 cellpadding=0 border=0>
<tr><td align=left valign=top colspan=2>
<img src="/images/b1t.gif" width=436 height=210>



</tr><tr><td align=left valign=top width=93>
<img src="/images/b2t.gif" width=93 height=109 usemap="#a" border=0><map name="a">
<area href="/our-home/home.htm" shape="rect" coords="0, 28, 92, 58">
<area href="mailto:info@nevo.com" shape="rect" coords="58, 94, 78, 107">

</map>

</td><td align=left valign=top width=343>

<img src="/images/a3t.gif" width=343 height=49 border=0><br>
<img src="/images/1pixel_000000.gif" width="281" height="1"></br>
<img src="/images/spacer.gif" width="88" height="6"><img src="/images/1pixel_yellow.gif" width="80" height="6"></br>

<table cellspacing=0 cellpadding=0 border=0 bgcolor="black">

<tr>
<td width="15"  height="26pt"><img src="/images/pixel.gif" width=15 height="24pt"></td>
<td width="73"  height="26pt" valign="center"><a href="/our-story/our_story.htm">our story</a></td>
<td width="100" height="26pt" valign="center"><a href="/our-knowledge/our_knowledge.htm" class="nevotop">our knowledge</a></td>
<td width="93"  height="26pt" valign="center"><a href="/our-people/our_people.htm">our people</a></td>
</tr>

</table>

<table cellspacing=0 cellpadding=0 border=0>


<tr>
<td width="15"><img src="/images/pixel.gif" width=15 height="24pt"></td>
<td width="73"><img src="/images/pixel.gif" width=73 height="24pt"></td>
<td width="100" valign="center" class="tightBodyTextWhite">expertise</td>
<td width="93"><img src="/images/pixel.gif" width=93 height="24pt"></td>
</tr>

<tr>
<td width="15"><img src="/images/pixel.gif" width=15 height="24pt"></td>
<td width="73"><img src="/images/pixel.gif" width=73 height="24pt"></td>
<td width="100" valign="center"><a href="/our-knowledge/case_studies.asp">case&nbsp;studies</a></td>
<td width="93"><img src="/images/pixel.gif" width=93 height="24pt"></td>
</tr>

<tr>
<td width="15"><img src="/images/pixel.gif" width=15 height="24pt"></td>
<td width="73"><img src="/images/pixel.gif" width=73 height="24pt"></td>
<td width="100" valign="center"><a href="/our-knowledge/whitepapers.asp">white&nbsp;papers</a></td>
<td width="93"><img src="/images/pixel.gif" width=93 height="24pt"></td>
</tr>

<tr>
<td width="15"><img src="/images/pixel.gif" width=15 height="24pt"></td>
<td width="73"><img src="/images/pixel.gif" width=73 height="24pt"></td>
<td width="100" valign="center"><a href="/our-knowledge/work.asp?P=1">the&nbsp;way&nbsp;we&nbsp;work</a></td>
<td width="93"><img src="/images/pixel.gif" width=93 height="24pt"></td>
</tr>

</table>

</td></tr></table></td><td class="bodyTextNarrow" valign="center" align=left>


<font class="leaderText">
e&nbsp;<i>x</i>&nbsp;p&nbsp;e&nbsp;r&nbsp;t&nbsp;i&nbsp;s&nbsp;e
</font>
</br><img width="320" src="/images/spacer.gif" height="1"></br>
<font class="bodyText"></font>

<!-- #include virtual="/our-knowledge/includes/expertise-content.asp" -->

</td>
<td><img src="/images/pixel.gif" width=2 height="505" border=0 alt=""></td>
</tr>
<tr>
<td></td><td>
<table cellspacing=0 cellpadding=1 border=0 width="100%">

 <%=sPageNavigation%>

</table>
</td><td></td></tr>

</table>
</body>
</html>