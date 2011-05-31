<%  // PROJECT LIST

Dim sProjectClientName()
Dim sProjectURL()
Dim sProjectVisible()

Dim iProjectCount
Dim iJC

iProjectCount=9

Redim sProjectClientName(iProjectCount + 1)
Redim sProjectURL(iProjectCount + 1)
Redim sProjectVisible(iProjectCount + 1)

iJC = 0

// THESES WILL BE LISTED IN THE ORDER BELOW

iJC = iJC + 1
sProjectClientName(iJC)		= "Acushnet Company"
sProjectURL(iJC) 			= "/our-knowledge/projects/AcushnetPopup.asp"
sProjectVisible(iJC) 		= "Y"

iJC = iJC + 1
sProjectClientName(iJC)		= "Bowstreet"
sProjectURL(iJC) 			= "/our-knowledge/projects/BowstreetPopup.asp"
sProjectVisible(iJC) 		= "N"

iJC = iJC + 1
sProjectClientName(iJC)		= "Manulife Financial Corporation"
sProjectURL(iJC) 			= "/our-knowledge/projects/manulifePopup.asp"
sProjectVisible(iJC) 		= "N"

iJC = iJC + 1
sProjectClientName(iJC)		= "Berlitz International"
sProjectURL(iJC) 			= "/our-knowledge/projects/berlitz-GCAPopup.asp"
sProjectVisible(iJC) 		= "Y"

iJC = iJC + 1
sProjectClientName(iJC)		= "Key Education Resources"
sProjectURL(iJC) 			= "/our-knowledge/projects/keybankPopup.asp"
sProjectVisible(iJC) 		= "Y"

iJC = iJC + 1
sProjectClientName(iJC)		= "Fidelity National Charitable Services"
sProjectURL(iJC) 			= "/our-knowledge/projects/fidelity-NCSPopup.asp"
sProjectVisible(iJC) 		= "Y"

iJC = iJC + 1
sProjectClientName(iJC)		= "Harvard Educational Records System"
sProjectURL(iJC) 			= "/our-knowledge/projects/harvardPopup.asp"
sProjectVisible(iJC) 		= "Y"

iJC = iJC + 1
sProjectClientName(iJC)		= "Harvard Dossier Services"
sProjectURL(iJC) 			= "/our-knowledge/projects/harvard-dossier-servicesPopup.asp"
sProjectVisible(iJC) 		= "Y"

iJC = iJC + 1
sProjectClientName(iJC)		= "Vanderweil Facilities Advisors"
sProjectURL(iJC) 			= "/our-knowledge/projects/vanderweilPopup.asp"
sProjectVisible(iJC) 		= "N"

Function formatProjectListItem (sID)

	if ( sProjectVisible(sID) = "Y" ) Then

	   formatProjectListItem = "<li><a href=""javascript:newWindow('" & _
				sProjectURL(sID) & _
				"?ID=" & sID & "');"" class=""tightBodyText"">" & _
				sProjectClientName(sID) & _
				"</a></li>"

	Else
	   formatProjectListItem=""
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
			sDoubleString = sDoubleString & sNBSP & sNBSP & sNBSP
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