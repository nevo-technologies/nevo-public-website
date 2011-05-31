<% Option Explicit %>

<%

Dim emSent

emSent = Request.QueryString("emSent")

%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>

<head>

<title>NEVO / Design Partner Program</title>

<link type="text/css" rel="stylesheet" href="/design/nevo.css"></link>

<script language="JavaScript">

function validateInput(frm)  {

    if (frm.companyName.value == "") { alert("Please enter a company name"); return false;}

}

</script>

</head>

<body class="bodyBackGround" marginwidth="0" marginheight="0" topmargin="0" leftmargin="0">

<table cellspacing="0" cellpadding="0" border="0" width="644">

 <tr>
  <td width="5%" align=left valign=top></td>
  <td width="70%" class="bodyText" valign="center" align=left valign=top>
   &nbsp;
  </td>
  <td width="20%" align="right" class="tightBodyText">
    <span id="printClose"><a class="obvious" href="javascript:window.print()">Print</a>&nbsp;&nbsp;<a class="obvious" href="javascript:window.close()">Close</a></span>
    <span id="nevoNav" style="display:none"><a class="obvious" href="/index.html">Go to www.nevo.com</a></span>
  </td>
  <td width="5%" align=left valign=top></td>
 </tr>
 <tr>
  <td width="5%" align=left valign=top></td>
  <td width="70%" class="bodyText" valign="center" align=left valign=top>

   <font align="center" class="leaderText">
   Nevo Design Partner Program
   </font>
  </td>
  <td width="20%" align="right" valign="top" class="tightBodyText">
    <img src="/images/nevo.png" style="margin-top:10px">
  </td>
  <td width="5%" align=left valign=top></td>
 </tr>

</table>

<img src="/images/pixel.gif" width="644" height="4"></br>
<img src="/images/1pixel_000000.gif" width="644" height="1"></br>
<img src="/images/spacer.gif" width="350" height="6"><img src="/images/1pixel_green.png" width="50" height="6"></br>

<table cellspacing=0 cellpadding=2 class="menuTable">
<tr>
  <td width="30" align=left valign=top></td>
  <td width="75" height="26pt" valign="center"><a href="/design/index.html" class="nevotop">Introduction</a></td>
  <td width="85" height="26pt" valign="center"><a href="/design/works.htm" class="nevotop">How It Works</a></td>
  <td width="65" height="26pt" valign="center"><a href="/design/questions.htm" class="nevotop">Questions</a></td>
  <td width="80" height="26pt" valign="center"><a href="/design/pledge.htm" class="nevotop">Our Pledge</a></td>
  <td height="26pt" valign="center"><a href="/design/apply.asp" class="nevotop">Apply</a></td>
</tr>
</table>

<% if ( emSent = "OK" ) Then %>

<table cellspacing="0" cellpadding="0" border="0" width="644">

 <tr>
  <td width="5%" align=left valign=top></td>
  <td valign="top" width="90%" class="bodyText" valign="center" align=left valign=top>

    <p style="margin:50px">Thanks for applying!  We'll be in touch.</p>

  </td>
  <td width="5%" align=left valign=top></td>
 </tr>

</table>

<% Else %>


<FORM name="formName" ACTION="/design/sendApplication.asp"  METHOD=POST onSubmit="return validateInput(this);">

<INPUT TYPE=HIDDEN NAME="backTo" VALUE = "/design/apply.asp"/>


<table cellspacing="0" cellpadding="0" border="0" width="644">

<tr>
<td width="5%" align=left valign=top></td>
<td valign="top" class="bodyText" valign="center" align=left valign=top colspan=2>
<p class="sectionTitleText">Interested in our partner program?</p>

Email us at <a href="mailto:design@nevo.com">design@nevo.com</a>.
<br/><br/>
If you want to get right into our partner database, fill out the form below.  We'll follow up with personal contact too.<br><br>
</td>
</tr>

<tr>
<td width="5%" align=left valign=top></td>
<td class="caption" align=right valign=middle>company name</td>
<td class="field" align=left valign=middle><INPUT TYPE="bodyText" NAME="companyName" SIZE=50 VALUE=""></td>
</tr>

<tr>
<td width="5%" align=left valign=top></td>
<td class="caption" align=right>company address</td>
<td class="field" align=left valign=top><img alt="" border=0 width="250" src="/images/spacer.gif" height="4pt"></br><TEXTAREA TYPE="bodyText" NAME="companyAddress" ROWS=4 COLS=29 MAXLENGTH="1000"></TEXTAREA></td>
</tr>

<tr>
<td width="5%" align=left valign=top></td>
<td class="caption" align=right valign=middle>main phone number</td>
<td class="field" align=left valign=middle><INPUT TYPE="bodyText" NAME="companyPhone" SIZE=15 VALUE=""></td>
</tr>

<tr>
<td width="5%" align=left valign=top></td>
<td class="caption" align=right valign=middle>url</td>
<td class="field" align=left valign=middle><INPUT TYPE="bodyText" NAME="companyUrl" SIZE=50 VALUE=""></td>
</tr>

<tr>
<td>&nbsp;</td>
<td>&nbsp;</td>
<td>&nbsp;</td>
</tr>

<tr>
<td width="5%" align=left valign=top></td>
<td class="caption" align=right valign=middle>name of primary contact</td>
<td class="field" align=left valign=middle><INPUT TYPE="bodyText" NAME="primaryContactName" SIZE=50 VALUE=""></td>
</tr>

<tr>
<td width="5%" align=left valign=top></td>
<td class="caption" align=right valign=middle>primary contact phone</td>
<td class="field" align=left valign=middle><INPUT TYPE="bodyText" NAME="primaryContactPhone" SIZE=15 VALUE=""></td>
</tr>

<tr>
<td width="5%" align=left valign=top></td>
<td class="caption" align=right valign=middle>primary contact email</td>
<td class="field" align=left valign=middle><INPUT TYPE="bodyText" NAME="primaryContactEmail" SIZE=50 VALUE=""></td>
</tr>

<tr>
<td>&nbsp;</td>
<td>&nbsp;</td>
<td>&nbsp;</td>
</tr>

<tr>
<td width="5%" align=left valign=top></td>
<td class="caption" align=right valign=middle>number of employees</td>
<td class="field" align=left valign=middle><INPUT TYPE="bodyText" NAME="employeeCount" SIZE=5 VALUE=""></td>
</tr>

<tr>
<td width="5%" align=left valign=top></td>
<td class="caption" align=right valign=middle>typical engagement size</td>
<td class="dollarField" align=left valign=middle>$ <INPUT TYPE="bodyText" NAME="typicalEngagement" SIZE=10 VALUE=""></td>
</tr>

<tr>
<td width="5%" align=left valign=top></td>
<td class="caption" align=right valign=middle>smallest engagement size for which we should consider you</td>
<td class="dollarField" align=left valign=middle>$ <INPUT TYPE="bodyText" NAME="minimumEngagement" SIZE=10 VALUE=""></td>
</tr>

<tr>
<td width="5%" align=left valign=top></td>
<td class="caption" align=right valign=middle>industry expertise<br/>(e.g. financial services, health care, non-profit)</td>
<td class="field" align=left valign=top><img alt="" border=0 width="250" src="/images/spacer.gif" height="4pt"></br><TEXTAREA TYPE="bodyText" NAME="industryExpertise" ROWS=4 COLS=29 MAXLENGTH="1000"></TEXTAREA></td>
</tr>

<tr>
<td width="5%" align=left valign=top></td>
<td class="caption" align=right valign=middle>technical preferences<br/>(e.g. ASP.NET, J2EE)</td>
<td class="field" align=left valign=top><img alt="" border=0 width="250" src="/images/spacer.gif" height="4pt"></br><TEXTAREA TYPE="bodyText" NAME="technicalPreferences" ROWS=4 COLS=29 MAXLENGTH="1000"></TEXTAREA></td>
</tr>

<tr>
<td width="5%" align=left valign=top></td>
<td class="caption" align=right valign=middle>describe your in-house technical capabilities</td>
<td class="field" align=left valign=top><img alt="" border=0 width="250" src="/images/spacer.gif" height="4pt"></br><TEXTAREA TYPE="bodyText" NAME="technicalCapabilities" ROWS=4 COLS=29 MAXLENGTH="1000"></TEXTAREA></td>
</tr>

<tr>
<td>&nbsp;</td>
<td>&nbsp;</td>
<td align="center"><br><input type="image" name="Submit" src="/images/submit.gif" alt="Submit Feedback">&nbsp;

&nbsp;&nbsp;&nbsp;&nbsp;

<a href="javascript:document.formName.reset()" onClick="myReset()"><img src="/images/clear.gif" border=0 alt="Reset"></a>
</td>
</tr>
</table>

</form>

<% End If %>

</body>

<script language="JavaScript">
if(window.name != "popup")
{
  printClose.style.display="none";
  nevoNav.style.display="inline";
}
</script>
</html>



