<%  // WHITE PAPERS LIST

Dim sWhitePaperClientName()
Dim sWhitePaperURL()
Dim sWhitePaperVisible()
Dim sWhitePaperIsPDF()

Dim iWhitePaperCount
Dim iJC
Dim acroLink
Dim showAcroLink

iWhitePaperCount=9

Redim sWhitePaperClientName(iWhitePaperCount + 1)
Redim sWhitePaperURL(iWhitePaperCount + 1)
Redim sWhitePaperVisible(iWhitePaperCount + 1)
Redim sWhitePaperIsPDF(iWhitePaperCount + 1)

iJC = 0

acroLink = "&nbsp;<a class=""listpick"" href=""javascript:newWindow('http://www.adobe.com/products/acrobat/readstep2.html')"">Acrobat Reader</a>"
showAcroLink = "N"

// THESES WILL BE LISTED IN THE ORDER BELOW

iJC = iJC + 1
sWhitePaperClientName(iJC)		= "The Requirements Gathering Process"
sWhitePaperURL(iJC) 			= "/our-knowledge/whitepapers/RequirementsProcess.pdf"
sWhitePaperVisible(iJC) 		= "Y"
sWhitePaperIsPDF(iJC)			= "Y"

iJC = iJC + 1
sWhitePaperClientName(iJC)		= "Establishing Effective Processes"
sWhitePaperURL(iJC) 			= "/our-knowledge/whitepapers/EstablishingEffectiveProcessesPopup.asp"
sWhitePaperVisible(iJC) 		= "Y"
sWhitePaperIsPDF(iJC)			= "N"

iJC = iJC + 1
sWhitePaperClientName(iJC)		= "Making a Build vs. Buy Decision"
sWhitePaperURL(iJC) 			= "/our-knowledge/whitepapers/BuildVsBuy.pdf"
sWhitePaperVisible(iJC) 		= "Y"
sWhitePaperIsPDF(iJC)			= "Y"

iJC = iJC + 1
sWhitePaperClientName(iJC)		= "Vendor Selection"
sWhitePaperURL(iJC) 			= "NevoVendorSelection.pdf"
sWhitePaperVisible(iJC) 		= "Y"
sWhitePaperIsPDF(iJC)			= "Y"

iJC = iJC + 1
sWhitePaperClientName(iJC)		= "Key Education Resources"
sWhitePaperURL(iJC) 			= "/our-knowledge/whitepapers/keybankPopup.asp"
sWhitePaperVisible(iJC) 		= "N"
sWhitePaperIsPDF(iJC)			= "N"

iJC = iJC + 1
sWhitePaperClientName(iJC)		= "Fidelity National Charitable Services"
sWhitePaperURL(iJC) 			= "/our-knowledge/whitepapers/fidelity-NCSPopup.asp"
sWhitePaperVisible(iJC) 		= "N"
sWhitePaperIsPDF(iJC)			= "N"

iJC = iJC + 1
sWhitePaperClientName(iJC)		= "Harvard Education Records"
sWhitePaperURL(iJC) 			= "/our-knowledge/whitepapers/harvardPopup.asp"
sWhitePaperVisible(iJC) 		= "N"
sWhitePaperIsPDF(iJC)			= "N"

iJC = iJC + 1
sWhitePaperClientName(iJC)		= "Harvard Dossier Services"
sWhitePaperURL(iJC) 			= "/our-knowledge/whitepapers/harvard-dossier-servicesPopup.asp"
sWhitePaperVisible(iJC) 		= "N"
sWhitePaperIsPDF(iJC)			= "N"

iJC = iJC + 1
sWhitePaperClientName(iJC)		= "Vanderweil Facilities Advisors"
sWhitePaperURL(iJC) 			= "/our-knowledge/whitepapers/vanderweilPopup.asp"
sWhitePaperVisible(iJC) 		= "N"
sWhitePaperIsPDF(iJC)			= "N"

Function formatWhitePaperListItem (sID)


	if ( sWhitePaperVisible(sID) = "Y" ) Then

	  if ( sWhitePaperIsPDF(sID) = "N" ) Then

	   formatWhitePaperListItem = "<li class=""picklist""><a class=""listpick"" href=""javascript:newWindow('" & _
				sWhitePaperURL(sID) & _
				"?ID=" & sID & "');"" class=""tightBodyText"">" & _
				sWhitePaperClientName(sID) & _
				"</a></li>"
	  Else
	     showAcroLink = "Y"
	     formatWhitePaperListItem = "<li class=""picklist""><a class=""listpick"" href=""javascript:newWindow('" & _
				"/our-knowledge/whitepapers/ShowPDFPopup.asp" & _
				"?ID=" & sID & "');"" class=""tightBodyText"">" & _
				sWhitePaperClientName(sID) & _
				"</a>&nbsp;*</li>"
	  End If

	Else
	   formatWhitePaperListItem=""
	End If
End Function

Function formatDoubleString ( sInString, sSlantPos )

	Dim iLength
	Dim iPos
	Dim sDoubleString
	Dim sLetter
	Dim iStart
	Dim iEnd
	Dim sNBSP
	Dim sNextLetter

	sNBSP = "&nbsp;"

	iLength = Len(sInString)

	for iPos = 1 to iLength
		sLetter = Mid(sInString,iPos,1)
		sNextLetter = ""
		if iPos + 1 < iLength Then sNextLetter = Mid(sInString,iPos+1,1)
		if sNextLetter = "." Then
			sDoubleString = sDoubleString & sLetter & sNextLetter & sNBSP
		Else
		Select Case sLetter
		Case " "
			sDoubleString = sDoubleString & sNBSP & sNBSP
		Case "."
			sDoubleString = sDoubleString
		Case Else
			iStart = ""
			iEnd = ""
			if (CInt(sSlantPos) = CInt(iPos) ) Then
				iStart 	= "<i>"
				iEnd 	= "</i>"
			End If
		    sDoubleString = sDoubleString & iStart & sLetter & iEnd & sNBSP
		End Select
		End If
	Next

	formatDoubleString = sDoubleString

End Function

%>