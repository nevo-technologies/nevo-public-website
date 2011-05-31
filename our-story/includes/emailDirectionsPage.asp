<%
Dim fromWhere
Dim isPrint
Dim dirMessage
Dim AQ

AQ = """"

fromWhere = Request.QueryString("W")
isPrint = Request.QueryString("P")
if ( IsNull(fromWhere) OR fromWhere = "" ) Then fromWhere="ALL"

emailWhat = "directions to Nevo"

dirMessage = ""
dirMessage = dirMessage  & "<html>"
dirMessage = dirMessage  & "<head>"
dirMessage = dirMessage  & ""
dirMessage = dirMessage  & "<STYLE TYPE=" & AQ & "text/css" & AQ & " rel=" & AQ & "stylesheet" & AQ & ">"
dirMessage = dirMessage  & ""
dirMessage = dirMessage  & ".bodyText {"
dirMessage = dirMessage  & "    color:#000000;"
dirMessage = dirMessage  & "	font-family : Arial, Verdana, Geneva, Helvetica, sans-serif;"
dirMessage = dirMessage  & "	font-size : 11pt;"
dirMessage = dirMessage  & "	line-height : 16pt;"
dirMessage = dirMessage  & "}"
dirMessage = dirMessage  & ""
dirMessage = dirMessage  & ".bodyTextNarrow {"
dirMessage = dirMessage  & "    color:#000000;"
dirMessage = dirMessage  & "	font-family : Arial, Verdana, Geneva, Helvetica, sans-serif;"
dirMessage = dirMessage  & "	font-size : 11pt;"
dirMessage = dirMessage  & "	line-height : 12pt;"
dirMessage = dirMessage  & "}"
dirMessage = dirMessage  & ""
dirMessage = dirMessage  & ".tightBodyText {"
dirMessage = dirMessage  & "    color:#000000;"
dirMessage = dirMessage  & "	font-family : Arial, Verdana, Geneva, Helvetica, sans-serif;"
dirMessage = dirMessage  & "	font-size : 9pt;"
dirMessage = dirMessage  & "	line-height : 10pt;"
dirMessage = dirMessage  & "}"
dirMessage = dirMessage  & ""
dirMessage = dirMessage  & ".fromWhereText {"
dirMessage = dirMessage  & "	color:#000000;"
dirMessage = dirMessage  & "	font-family : Verdana, Geneva, Arial, Helvetica, sans-serif;"
dirMessage = dirMessage  & "	font-stretch: expanded;"
dirMessage = dirMessage  & "	font-size : 11pt;"
dirMessage = dirMessage  & "	line-height : 20pt;"
dirMessage = dirMessage  & "	font-weight : bold;"
dirMessage = dirMessage  & "}"

if ( NOT isPrint = "" ) Then

dirMessage = dirMessage  & "A.obvious"
dirMessage = dirMessage  & "{"
dirMessage = dirMessage  & "	color: #000000;"
dirMessage = dirMessage  & "    text-decoration: underline;"
dirMessage = dirMessage  & "    font-family : Arial, Verdana, Geneva, Helvetica, sans-serif;"
dirMessage = dirMessage  & "    font-size : 9pt;"
dirMessage = dirMessage  & "    line-height : 10pt;"
dirMessage = dirMessage  & "}"
dirMessage = dirMessage  & "A.obvious:visited"
dirMessage = dirMessage  & "{"
dirMessage = dirMessage  & "	color: #000000;"
dirMessage = dirMessage  & "    text-decoration: underline;"
dirMessage = dirMessage  & "    font-family : Arial, Verdana, Geneva, Helvetica, sans-serif;"
dirMessage = dirMessage  & "    font-size : 9pt;"
dirMessage = dirMessage  & "    line-height : 10pt;"
dirMessage = dirMessage  & "}"
dirMessage = dirMessage  & "A.obvious:hover"
dirMessage = dirMessage  & "{"
dirMessage = dirMessage  & "	color: #CC0066;"
dirMessage = dirMessage  & "    text-decoration: underline;"
dirMessage = dirMessage  & "    font-family : Arial, Verdana, Geneva, Helvetica, sans-serif;"
dirMessage = dirMessage  & "    font-size : 9pt;"
dirMessage = dirMessage  & "    line-height : 10pt;"
dirMessage = dirMessage  & "}"

End If

dirMessage = dirMessage  & ""
dirMessage = dirMessage  & "</STYLE>"
dirMessage = dirMessage  & ""
dirMessage = dirMessage  & "<TITLE>Directions to Nevo</TITLE>"
dirMessage = dirMessage  & ""
dirMessage = dirMessage  & "</head>"
dirMessage = dirMessage  & "<body class=" & AQ & "bodyText" & AQ & " bgColor=" & AQ & "FFEB00" & AQ & ">"

dirMessage = dirMessage  & "<table cellspacing=" & AQ & "0" & AQ & " cellpadding=" & AQ & "1" & AQ & " border=" & AQ & "0" & AQ & " width=" & AQ & "580" & AQ & ">"

dirMessage = dirMessage  & " <tr>"
dirMessage = dirMessage  & "  <td width=" & AQ & "5%" & AQ & " align=left valign=top></td>"
dirMessage = dirMessage  & "  <td width=" & AQ & "60%" & AQ & " class=" & AQ & "bodyText" & AQ & " valign=" & AQ & "center" & AQ & " align=left valign=top>"

dirMessage = dirMessage  & "<font class=" & AQ & "fromWhereText" & AQ & ">"
dirMessage = dirMessage  & "Directions to Nevo..."
dirMessage = dirMessage  & "</font>"

dirMessage = dirMessage  & "  </td>"

dirMessage = dirMessage  & "  <td width=" & AQ & "35%" & AQ & " align=" & AQ & "right" & AQ & " valign=" & AQ & "top" & AQ & " class=" & AQ & "tightBodyText" & AQ & ">"

if ( NOT isPrint = "" ) Then

dirMessage = dirMessage  & "   <a class=" & AQ & "obvious" & AQ & " href=" & AQ & "javascript:window.print()" & AQ & ">Send To Printer</a>&nbsp;&nbsp;<a class=" & AQ & "obvious" & AQ & " href=" & AQ & "javascript:window.close()" & AQ & ">Close</a>"

Else

dirMessage = dirMessage  & ""

End If

dirMessage = dirMessage  & "  </td>"
dirMessage = dirMessage  & "  <td width=" & AQ & "5%" & AQ & " align=left valign=top></td>"
dirMessage = dirMessage  & " </tr></table>"







dirMessage = dirMessage  & "<p>"
dirMessage = dirMessage  & "<table cellspacing=" & AQ & "0" & AQ & " cellpadding=" & AQ & "1" & AQ & " border=" & AQ & "0" & AQ & " width=" & AQ & "580" & AQ & ">"

dirMessage = dirMessage  & " <tr>"
dirMessage = dirMessage  & "  <td width=" & AQ & "5%" & AQ & " align=left valign=top></td>"
dirMessage = dirMessage  & "  <td width=" & AQ & "90%" & AQ & " class=" & AQ & "bodyText" & AQ & " valign=" & AQ & "center" & AQ & " align=left valign=top>"
dirMessage = dirMessage  & "Nevo is located in the heart of Harvard Square in Cambridge Massachusettts, at"
dirMessage = dirMessage  & " the corner of Church and Palmer Streets. We are"
dirMessage = dirMessage  & " easily reached by either car or public transportation."
dirMessage = dirMessage  & "</br>"
dirMessage = dirMessage  & "<table cellspacing=0 cellpadding=0 border=0><tr><td width=" & AQ & "35%" & AQ & ">"

dirMessage = dirMessage  & "<img width=" & AQ & "305" & AQ & " height=" & AQ & "298" & AQ & " src=" & AQ & "http://www.nevo.com/images/directionsMap.gif" & AQ & " alt=" & AQ & "" & AQ & " border=" & AQ & "1" & AQ & ">"

dirMessage = dirMessage  & "</td><td class=" & AQ & "bodyText" & AQ & " width=" & AQ & "15%" & AQ & ">&nbsp;</td><td width=" & AQ & "30%" & AQ & "class=" & AQ & "tightBodyText" & AQ & " valign=" & AQ & "center" & AQ & ">"

dirMessage = dirMessage  & "</br>"
dirMessage = dirMessage  & "<b>Address</b>"
dirMessage = dirMessage  & "</br>26 Church Street"
dirMessage = dirMessage  & "</br>Cambridge, MA 02138"

dirMessage = dirMessage  & "</br></br>"
dirMessage = dirMessage  & "<b>Phone</b>"
dirMessage = dirMessage  & "</br>617.354.NEVO (6386)"

dirMessage = dirMessage  & "</br></br>"
dirMessage = dirMessage  & "<b>E-mail</b>"
dirMessage = dirMessage  & "</br>"
dirMessage = dirMessage  & "<a href=" & AQ & "mailto:info@nevo.com" & AQ & ">info@nevo.com</a>"
dirMessage = dirMessage  & "</br></br>"
dirMessage = dirMessage  & "<b>Web Site</b>"
dirMessage = dirMessage  & "</br></br>"
dirMessage = dirMessage  & "<a href=" & AQ & "http://www.nevo.com" & AQ & ">www.nevo.com</a>"
dirMessage = dirMessage  & "</td></tr></table>"

Select Case fromWhere

Case "ALL","BOSTON"

if ( fromWhere = "BOSTON" ) Then emailWhat = emailWhat & " from Boston"

dirMessage = dirMessage  & "<font class=" & AQ & "fromWhereText" & AQ & ">"
dirMessage = dirMessage  & "from Boston"
dirMessage = dirMessage  & "</font>"
dirMessage = dirMessage  & "</br>"
dirMessage = dirMessage  & "<font class=" & AQ & "bodyTextNarrow" & AQ & ">"
dirMessage = dirMessage  & "Take Storrow Drive to the"
dirMessage = dirMessage  & " Anderson Bridge exit. Bear right"
dirMessage = dirMessage  & " across Anderson Bridge, and drive"
dirMessage = dirMessage  & " straight into Harvard Square. Just"
dirMessage = dirMessage  & " before you enter Harvard Square,"
dirMessage = dirMessage  & " turn left onto Brattle Street, then"
dirMessage = dirMessage  & " follow it around to the right. After"
dirMessage = dirMessage  & " you bear right, the first turn on"
dirMessage = dirMessage  & " your right is Church Street."
dirMessage = dirMessage  & "</font>"
dirMessage = dirMessage  & "</br>"


End Select

Select Case fromWhere

Case "ALL","I90"

if ( fromWhere = "I90" ) Then emailWhat = emailWhat & " from I-90, Mass. Turnpike"

dirMessage = dirMessage  & "<font class=" & AQ & "fromWhereText" & AQ & ">"
dirMessage = dirMessage  & "from I-90, Massachusetts Turnpike"
dirMessage = dirMessage  & "</font>"
dirMessage = dirMessage  & "</br>"
dirMessage = dirMessage  & "<font class=" & AQ & "bodyTextNarrow" & AQ & ">"
dirMessage = dirMessage  & "Get off at exit 18, Cambridge."
dirMessage = dirMessage  & " Turn left immediately onto Storrow"
dirMessage = dirMessage  & " Drive westbound. Take the"
dirMessage = dirMessage  & " Harvard Square exit and drive"
dirMessage = dirMessage  & " straight towards Harvard Square."
dirMessage = dirMessage  & " Just before you enter Harvard"
dirMessage = dirMessage  & " Square, turn left onto Brattle"
dirMessage = dirMessage  & " Street, follow it around to the"
dirMessage = dirMessage  & " right. After you bear right, the"
dirMessage = dirMessage  & " first turn on your right is Church"
dirMessage = dirMessage  & " Street."
dirMessage = dirMessage  & "</font>"
dirMessage = dirMessage  & "</br>"

End Select

Select Case fromWhere

Case "ALL","LOGAN"

if ( fromWhere = "LOGAN" ) Then emailWhat = emailWhat & " from Logan Airport"

dirMessage = dirMessage  & "<font class=" & AQ & "fromWhereText" & AQ & ">"
dirMessage = dirMessage  & "from Logan Airport"
dirMessage = dirMessage  & "</font>"
dirMessage = dirMessage  & "</br>"
dirMessage = dirMessage  & "<font class=" & AQ & "bodyTextNarrow" & AQ & ">"
dirMessage = dirMessage  & "With the " & AQ & "Big Dig" & AQ & " in process,"
dirMessage = dirMessage  & " exiting Logan is an adventure that"
dirMessage = dirMessage  & " changes daily. Exit the airport,"
dirMessage = dirMessage  & " and take the Sumner tunnel to"
dirMessage = dirMessage  & " Boston. Stay in the left lane"
dirMessage = dirMessage  & " throught the tunnel. At the end of"
dirMessage = dirMessage  & " the tunnel, follow the signs to 93N (up"
dirMessage = dirMessage  & " the ramp) then stay right and take"
dirMessage = dirMessage  & " the immediate exit (26) for"
dirMessage = dirMessage  & " Storrow Drive. Take Storrow to the"
dirMessage = dirMessage  & " Harvard Square exit, and drive"
dirMessage = dirMessage  & " straight towards Harvard Square."
dirMessage = dirMessage  & " Just before you enter Harvard"
dirMessage = dirMessage  & " Square, turn left onto Brattle"
dirMessage = dirMessage  & " Street, follow it around to the"
dirMessage = dirMessage  & " right. After you bear right, the"
dirMessage = dirMessage  & " first turn on your right is Church"
dirMessage = dirMessage  & " Street.</font>"
dirMessage = dirMessage  & "</br>"

End Select

Select Case fromWhere

Case "ALL","SUBWAY"

if ( fromWhere = "SUBWAY" ) Then emailWhat = emailWhat & " by Subway"

dirMessage = dirMessage  & "<font class=" & AQ & "fromWhereText" & AQ & ">"
dirMessage = dirMessage  & "by Subway (the " & AQ & "T" & AQ & ")"
dirMessage = dirMessage  & "</font>"
dirMessage = dirMessage  & "</br>"
dirMessage = dirMessage  & "<font class=" & AQ & "bodyTextNarrow" & AQ & ">"

dirMessage = dirMessage  & "We are 500 yards from the"
dirMessage = dirMessage  & " Harvard Square " & AQ & "T" & AQ & " stop on"
dirMessage = dirMessage  & " the RED line. When exiting the train"
dirMessage = dirMessage  & " look for the signs for the Church St. exit."
dirMessage = dirMessage  & " Take the stairs up towards the Church St. exit."
dirMessage = dirMessage  & " As you exit past the turnstiles, take"
dirMessage = dirMessage  & " the right stairs up to the street."
dirMessage = dirMessage  & " Church St. will be directly in front"
dirMessage = dirMessage  & " of you to your right."
dirMessage = dirMessage  & " Walk straight down the left side of Church St.;"
dirMessage = dirMessage  & " number 26 is near the end of the block."

dirMessage = dirMessage  & "</br>"
dirMessage = dirMessage  & "<font class=" & AQ & "fromWhereText" & AQ & ">"
dirMessage = dirMessage  & "from Logan Airport by subway"
dirMessage = dirMessage  & "</font>"
dirMessage = dirMessage  & "</br>Take the shuttle"
dirMessage = dirMessage  & " bus to the AIRPORT T stop"
dirMessage = dirMessage  & " (BLUE LINE). Take the BLUE"
dirMessage = dirMessage  & " LINE inbound four stops to"
dirMessage = dirMessage  & " GOVERNMENT CENTER."
dirMessage = dirMessage  & " Change to the GREEN LINE"
dirMessage = dirMessage  & " westbound and go one stop to"
dirMessage = dirMessage  & " PARK STREET. Switch to the"
dirMessage = dirMessage  & " RED LINE outbound (toward"
dirMessage = dirMessage  & " ALEWIFE), go four stops and"
dirMessage = dirMessage  & " get off at HARVARD. The subway"
dirMessage = dirMessage  & " ride from Logan Airpoty"
dirMessage = dirMessage  & " can take 45 to 60 minutes."
dirMessage = dirMessage  & "</font>"
dirMessage = dirMessage  & "</br>"

End Select

Select Case fromWhere

Case "ALL","PARK"

if ( fromWhere = "PARK" ) Then emailWhat = emailWhat & " for Parking"

dirMessage = dirMessage  & "<font class=" & AQ & "fromWhereText" & AQ & ">"
dirMessage = dirMessage  & "Parking"
dirMessage = dirMessage  & "</font>"
dirMessage = dirMessage  & "</br>"
dirMessage = dirMessage  & "<font class=" & AQ & "bodyTextNarrow" & AQ & ">"
dirMessage = dirMessage  & "On-street parking is scarce in Cambridge."
dirMessage = dirMessage  & " There is a parking lot at 53 Church Street,"
dirMessage = dirMessage  & " diagonally across from our office."
dirMessage = dirMessage  & "</font>"

End Select

dirMessage = dirMessage  & "  </td>"

dirMessage = dirMessage  & "  <td width=" & AQ & "5%" & AQ & " align=left valign=top></td>"
dirMessage = dirMessage  & " </tr>"

dirMessage = dirMessage  & "</table>"

dirMessage = dirMessage  & "<table cellspacing=" & AQ & "0" & AQ & " cellpadding=" & AQ & "1" & AQ & " border=" & AQ & "0" & AQ & " width=" & AQ & "580" & AQ & ">"

dirMessage = dirMessage  & " <tr>"
dirMessage = dirMessage  & "  <td width=" & AQ & "5%" & AQ & " align=left valign=top></td>"
dirMessage = dirMessage  & "  <td width=" & AQ & "60%" & AQ & " class=" & AQ & "bodyText" & AQ & " valign=" & AQ & "center" & AQ & " align=left valign=top>"

dirMessage = dirMessage  & "&nbsp;"

dirMessage = dirMessage  & "  </td>"

dirMessage = dirMessage  & "  <td width=" & AQ & "35%" & AQ & " align=" & AQ & "right" & AQ & " valign=" & AQ & "top" & AQ & " class=" & AQ & "tightBodyText" & AQ & ">"

if ( NOT isPrint = "" ) Then

dirMessage = dirMessage  & "   <a class=" & AQ & "obvious" & AQ & " href=" & AQ & "javascript:window.print()" & AQ & ">Send To Printer</a>&nbsp;&nbsp;<a class=" & AQ & "obvious" & AQ & " href=" & AQ & "javascript:window.close()" & AQ & ">Close</a>"

Else

dirMessage = dirMessage  & ""

End If

dirMessage = dirMessage  & "  </td>"
dirMessage = dirMessage  & "  <td width=" & AQ & "5%" & AQ & " align=left valign=top></td>"
dirMessage = dirMessage  & " </tr></table>"


dirMessage = dirMessage  & "</body>"
dirMessage = dirMessage  & "</html>"
dirMessage = dirMessage  & ""

%>