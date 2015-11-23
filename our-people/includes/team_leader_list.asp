<%  // TEAM LEADER LIST

Dim sTeamLeaderName()
Dim sTeamLeaderSlantPos()
Dim sTeamLeaderTitle()
Dim sTeamLeaderEmailImageURL()
Dim sTeamLeaderPhotoImageURL()
Dim sTeamLeaderPhotoImageHeight
Dim sTeamLeaderPhotoImageWidth
Dim sTeamLeaderURL()
Dim sTeamLeaderVisible()

Dim iTeamLeaderCount
Dim iTLC

iTeamLeaderCount=9

Redim sTeamLeaderName(iTeamLeaderCount + 1)
Redim sTeamLeaderSlantPos(iTeamLeaderCount + 1)
Redim sTeamLeaderTitle(iTeamLeaderCount + 1)
Redim sTeamLeaderEmailImageURL(iTeamLeaderCount + 1)
Redim sTeamLeaderPhotoImageURL(iTeamLeaderCount + 1)
Redim sTeamLeaderURL(iTeamLeaderCount + 1)
Redim sTeamLeaderVisible(iTeamLeaderCount + 1)

iTLC = 0

// THESES WILL BE LISTED IN THE ORDER BELOW
//
// NOTE PHOTO IMAGES ARE TO BE MADE WHERE WIDTH=120 and HEIGHT=120

sTeamLeaderPhotoImageHeight = 120
sTeamLeaderPhotoImageWidth = 120

iTLC = iTLC + 1

sTeamLeaderName(iTLC) 			= "Kenneth S. Ledeen"
sTeamLeaderSlantPos(iTLC) 		= 14
sTeamLeaderTitle(iTLC) 			= "Chairman and CEO"
sTeamLeaderURL(iTLC) 			= "/our-people/team/KenLedeen.asp"
sTeamLeaderEmailImageURL(iTLC) 	= ""
sTeamLeaderVisible(iTLC) 		= "Y"
sTeamLeaderEmailImageURL(iTLC) 	= ""

iTLC = iTLC + 1
sTeamLeaderName(iTLC) 			= "Peter C. L. Jaffe"
sTeamLeaderSlantPos(iTLC) 		= 3
sTeamLeaderTitle(iTLC) 			= "Chief Operating Officer"
sTeamLeaderURL(iTLC) 			= "/our-people/team/PeterJaffe.asp"
sTeamLeaderEmailImageURL(iTLC) 		= ""
sTeamLeaderVisible(iTLC) 		= "Y"
sTeamLeaderEmailImageURL(iTLC) 	= ""

iTLC = iTLC + 1
sTeamLeaderName(iTLC) 			= "Ethan Jacobson"
sTeamLeaderSlantPos(iTLC) 		= 11
sTeamLeaderTitle(iTLC) 			= "Senior Software Architect"
sTeamLeaderURL(iTLC) 			= "/our-people/team/EthanJacobson.asp"
sTeamLeaderEmailImageURL(iTLC) 	= ""
sTeamLeaderVisible(iTLC) 		= "Y"
sTeamLeaderEmailImageURL(iTLC) 	= ""


Function formatPageTitle (sTeamLeaderName)

	formatSideNavImage="<title>NEVO / Team Leaders - " & sTeamLeaderName & "</title>"

End Function

Function formatTeamLeaderListItem (sID)

	if ( sTeamLeaderVisible(sID) = "Y" ) Then
	   formatTeamLeaderListItem= "<li class=""picklist""><a class=""listpick"" href=""javascript:newWindow('" & _
	 			     sTeamLeaderURL(sID) & _
				     "?ID=" & sID & "');"">" & _
				     sTeamLeaderName(sID) & _
				     "</a>, " & _
				     sTeamLeaderTitle(sID) & "</li>"
	Else
	   formatTeamLeaderListItem=""
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