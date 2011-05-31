<%
Dim dQ
dQ = """"
Dim nBSP
nBSP="&nbsp;&nbsp"
Dim backHidden
Dim nextHidden
Dim nextPage
Dim backPage
Dim pCount

Select Case sPageIs

Case "ALL"
	sPageNavigation=""

Case Else

	backHidden="N"
	nextHidden="N"

	if ( CInt(sPageIs) = 1 ) Then backHidden="Y"
	if ( CInt(sPageIs) = iPageCount ) Then nextHidden="Y"
	backPage=CInt(sPageIs) - 1
	nextPage=CInt(sPageIs) + 1

	sPageNavigation="<img src=" & dQ & "/images/1pixel_000000.gif" & dQ & " height=" & dQ & "1" & dQ & " width=" & dQ & "100%" & dQ & "></br>"
	sPageNavigation=sPageNavigation & "<img src=" & dQ & "/images/spacer.gif" & dQ & " height=" & dQ & "2" & dQ & " width=" & dQ & "100%" & dQ & "></br>"

   	sPageNavigation=sPageNavigation & "<a class=obvious href=" & dQ & sPageURL & "ALL" & dQ & ">All</a>" & nBSP

   	Select Case backHidden

   	Case "Y"

   	sPageNavigation=sPageNavigation & "<font class=" & dQ & "tightBodyTextHidden" & dQ & ">Back</font>" & nBSP

   	Case "N"

   	sPageNavigation=sPageNavigation & "<a class=obvious href=" & dQ & sPageURL & backPage & dQ & ">Back</a>" & nBSP

   	End Select

   	for pCount = 1 to iPageCount

   	if ( pCount = CInt(sPageIs) ) then

   	sPageNavigation=sPageNavigation & "<font class=" & dQ & "tightBodyTextWhite" & dQ & ">" & pCount & nBSP & "</font>"

   	Else

   	sPageNavigation=sPageNavigation & "<a class=obvious href=" & dQ & sPageURL & pCount & dQ & ">" & pCount & "</a>" & nBSP

   	End If

   	Next

   	Select Case nextHidden

   	Case "Y"

   	sPageNavigation=sPageNavigation & "<font class=" & dQ & "tightBodyTextHidden" & dQ & ">Next</font>" & nBSP

   	Case "N"

   	sPageNavigation=sPageNavigation & "<a class=obvious href=" & dQ & sPageURL & nextPage & dQ & ">Next</a>" & nBSP

   	End Select

End Select

%>