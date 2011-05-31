<%  // AVAILABLE JOBS LIST

Dim sJobName()
Dim sJobSlantPos()
Dim sJobURL()
Dim sJobVisible()

Dim iJobCount
Dim iJC

iJobCount=11

Redim sJobName(iJobCount + 1)
Redim sJobSlantPos(iJobCount + 1)
Redim sJobURL(iJobCount + 1)
Redim sJobVisible(iJobCount + 1)

iJC = 0

// THESES WILL BE LISTED IN THE ORDER BELOW

iJC = iJC + 1
sJobName(iJC) 			= "Project Manager"
sJobSlantPos(iJC) 		= 4
sJobURL(iJC) 			= "/our-people/jobs/ProjectManager.asp"
sJobVisible(iJC) 		= "N"

iJC = iJC + 1
sJobName(iJC) 			= "Senior Architect"
sJobSlantPos(iJC) 		= 9
sJobURL(iJC) 			= "/our-people/jobs/SeniorArchitect.asp"
sJobVisible(iJC) 		= "N"

iJC = iJC + 1
sJobName(iJC) 			= "Senior QA Engineer"
sJobSlantPos(iJC) 		= 13
sJobURL(iJC) 			= "/our-people/jobs/SeniorQAEngineer.asp"
sJobVisible(iJC) 		= "N"

iJC = iJC + 1
sJobName(iJC) 			= "Senior Sales Executive"
sJobSlantPos(iJC) 		= 10
sJobURL(iJC) 			= "/our-people/jobs/SeniorSalesExecutive.asp"
sJobVisible(iJC) 		= "N"

iJC = iJC + 1
sJobName(iJC) 			= "Software Engineers"
sJobSlantPos(iJC) 		= 12
sJobURL(iJC) 			= "/our-people/jobs/SoftwareEngineers.asp"
sJobVisible(iJC) 		= "N"

iJC = iJC + 1
sJobName(iJC) 			= "System/Network Administrator"
sJobSlantPos(iJC) 		= 14
sJobURL(iJC) 			= "/our-people/jobs/SystemsNetworkAdmin.asp"
sJobVisible(iJC) 		= "N"

iJC = iJC + 1
sJobName(iJC) 			= "Senior Java/J2EE Developer"
sJobSlantPos(iJC) 		= 6
sJobURL(iJC) 			= "/our-people/jobs/SeniorJavaJ2EEDeveloper.asp"
sJobVisible(iJC) 		= "N"

iJC = iJC + 1
sJobName(iJC) 			= "Systems Architect / Developer"
sJobSlantPos(iJC) 		= 10
sJobURL(iJC) 			= "/our-people/jobs/SeasonedSystemArchitectDeveloper.asp"
sJobVisible(iJC) 		= "N"

iJC = iJC + 1
sJobName(iJC) 			= "Software Engineer / Developer"
sJobSlantPos(iJC) 		= 15
sJobURL(iJC) 			= "/our-people/jobs/SoftwareEngineerDeveloper.asp"
sJobVisible(iJC) 		= "Y"

iJC = iJC + 1
sJobName(iJC) 			= "Team Lead"
sJobSlantPos(iJC) 		= 3
sJobURL(iJC) 			= "/our-people/jobs/TeamLead.asp"
sJobVisible(iJC) 		= "Y"

iJC = iJC + 1
sJobName(iJC) 			= "Principal"
sJobSlantPos(iJC) 		= 4
sJobURL(iJC) 			= "/our-people/jobs/Principal.asp"
sJobVisible(iJC) 		= "Y"


Function formatJobListItem (sID)

	if ( sJobVisible(sID) = "Y" ) Then

	   formatJobListItem = "<tr><td class=""bodyText"" valign=""center"" align=""center"">" & _
				"<ul><li>&nbsp;</li><ul></td>" & _
				"<td class=""listText""><a class=""listpick"" href=""javascript:newWindow('" & _
				sJobURL(sID) & _
				"?ID=" & sID & "');"">" & _
				sJobName(sID) & _
				"</a></td></tr>"
	Else
	   formatJobListItem=""
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