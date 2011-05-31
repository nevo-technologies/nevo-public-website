<% Option Explicit %>

<%

Dim emSent

emSent = Request.QueryString("emSent")

%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
<title>NEVO / Feedback</title>

<LINK type="text/css" rel="stylesheet" href="/our-story/includes/nevo.css"></LINK>

<script type='text/javascript' language='JavaScript' src='/includes/feedback.js'> </script>

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

<table cellspacing=0 cellpadding=0 border=0 >

<tr>
<td width="15"><img src="/images/pixel.gif" width=15 height="24pt"></td>
<% if ( emSent = "OK" ) Then %>
<td width="73" valign="center"><a href="/our-story/feedback.asp">feedback</a></td>
<% Else %>
<td width="73" valign="center"class="tightBodyTextWhite">feedback</td>
<% End If %>
<td width="100"><img src="/images/pixel.gif" width=100 height="24pt"></td>
<td width="93"><img src="/images/pixel.gif" width=93 height="24pt"></td>
</tr>

<tr>
<td width="15"><img src="/images/pixel.gif" width=15 height="24pt"></td>
<td width="73" valign="center"><a href="/our-story/directions.asp?P=1">directions</a></td>
<td width="100"><img src="/images/pixel.gif" width=100 height="24pt"></td>
<td width="93"><img src="/images/pixel.gif" width=93 height="24pt"></td>
</tr>

<tr>
<td width="15"><img src="/images/pixel.gif" width=15 height="24pt"></td>
<td width="73" valign="center"><a href="/our-story/contact.htm">contact&nbsp;us</a></td>
<td width="100"><img src="/images/pixel.gif" width=100 height="24pt"></td>
<td width="93"><img src="/images/pixel.gif" width=93 height="24pt"></td>
</tr>

</table>

</td></tr></table></td><td align=left valign="center"><table cellspacing=0 cellpadding=2 border=0>
<tr><td align=left valign=top colspan=2>
</br><img src="/images/spacer.gif" width=320 height="1"></br>
<font class="leaderText">
f&nbsp;e&nbsp;e&nbsp;d&nbsp;b&nbsp;a&nbsp;c&nbsp;k&nbsp;/&nbsp;r&nbsp;e&nbsp;q&nbsp;u&nbsp;e&nbsp;s&nbsp;t&nbsp;&nbsp;&nbsp;<i>f</i>&nbsp;o&nbsp;r&nbsp;m</font>
</br><img width="320" src="/images/spacer.gif" height="1"></br>

</td></tr><tr>



<td class="bodyTextNarrow" align=left valign=top colspan=2>

<% if ( emSent = "OK" ) Then %>

Thank you, your feedback has been sent.


<% Else %>


<FORM name="formName" ACTION="/our-story/sendFeedback.asp"  METHOD=POST onSubmit="return validateInput(this);">

  <INPUT TYPE=HIDDEN NAME="backTo" VALUE = "/our-story/feedback.asp">


If you have feedback on this site or would like to know more
about what we do, we want to hear from you. Use this form to
drop us a line.<br><br></td></tr>

<tr>
<td class="bodyText" align=right valign=middle>name&nbsp;</td>
<td align=left valign=middle><INPUT TYPE="bodyText" NAME="userName" SIZE=35 VALUE=""></td>
</tr>

<tr>
<td class="bodyText" align=right>company&nbsp;</td>
<td align=left valign=middle><INPUT TYPE="bodyText" NAME="userCompany" SIZE=35 VALUE=""></td>
</tr>

<tr>
<td class="bodyText" align=right valign=middle>email&nbsp;</td>
<td align=left valign=middle><INPUT TYPE="bodyText" NAME="userEmail" SIZE=35 VALUE=""></td>
</tr>

<tr>
<td class="bodyText" align=right valign=top>message&nbsp;</td>
<td align=left valign=top><img alt="" border=0 width="250" src="/images/spacer.gif" height="4pt"></br><TEXTAREA TYPE="bodyText" NAME="userMessage" ROWS=7 COLS=29 MAXLENGTH="1000"></TEXTAREA></td>
</tr>

<tr>
<td>&nbsp;</td>
<td align="center"><br><input type="image" name="Submit" src="/images/submit.gif" alt="Submit Feedback">&nbsp;

&nbsp;&nbsp;&nbsp;&nbsp;

<a href="javascript:document.formName.reset()" onClick="myReset()"><img src="/images/clear.gif" border=0 alt="Reset"></a>

</form>

<% End If %>

</td>
</tr>
</table>

</td>
<td><img src="/images/pixel.gif" width=2 height="505" border=0 alt=""></td>
</tr></table>


</body>
</html>

