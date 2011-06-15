<%  // PROJECT LIST

Dim sProjectClientName()
Dim sProjectURL()
Dim sProjectVisible()

Dim iProjectCount
Dim iJC

iProjectCount=7

Redim sProjectDescription(iProjectCount + 1)
Redim sProjectClientName(iProjectCount + 1)
Redim sProjectClientIndustry(iProjectCount + 1)
Redim sProjectURL(iProjectCount + 1)

iJC = 0

// THESES WILL BE LISTED IN THE ORDER BELOW

iJC = iJC + 1
sProjectDescription(iJC)    = "Financial Information Portal"
sProjectClientName(iJC)     = "John Hancock Mutual Funds"
sProjectClientIndustry(iJC) = "Financial Services"
sProjectURL(iJC)            = "/our-knowledge/casestudies/JHFundsPopup.asp"

iJC = iJC + 1
sProjectDescription(iJC)    = "Order Entry System"
sProjectClientName(iJC)     = "Acushnet Company"
sProjectClientIndustry(iJC) = "Sports Equipment Manufacturing"
sProjectURL(iJC)            = "/our-knowledge/casestudies/AcushnetPopup.asp"

//iJC = iJC + 1
//sProjectDescription(iJC)    = "Energy Audit System"
//sProjectClientName(iJC)     = "Conservation Services Group"
//sProjectClientIndustry(iJC) = "Energy Conservation / Efficiency"
//sProjectURL(iJC)            = "/our-knowledge/casestudies/CSG.asp"

iJC = iJC + 1
sProjectDescription(iJC)    = "Product Recommendation System"
sProjectClientName(iJC)     = "Berlitz International"
sProjectClientIndustry(iJC) = "Language Learning Services"
sProjectURL(iJC)            = "/our-knowledge/casestudies/berlitz-GCAPopup.asp"

iJC = iJC + 1
sProjectDescription(iJC)    = "Order Processing Component Integration"
sProjectClientName(iJC)     = "Key Education Resources"
sProjectClientIndustry(iJC) = "Retail Banking"
sProjectURL(iJC)            = "/our-knowledge/casestudies/keybankPopup.asp"

iJC = iJC + 1
sProjectDescription(iJC)    = "Account Access System Rapid Prototype"
sProjectClientName(iJC)     = "Fidelity National Charitable Services"
sProjectClientIndustry(iJC) = "Charitable Giving Management"
sProjectURL(iJC)            = "/our-knowledge/casestudies/fidelity-NCSPopup.asp"

iJC = iJC + 1
sProjectDescription(iJC)    = "Educational Records System"
sProjectClientName(iJC)     = "Harvard University"
sProjectClientIndustry(iJC) = "Post-Secondary Education"
sProjectURL(iJC)            = "/our-knowledge/casestudies/harvardPopup.asp"

iJC = iJC + 1
sProjectDescription(iJC)    = "Dossier Tracking System"
sProjectClientName(iJC)     = "Harvard University"
sProjectClientIndustry(iJC) = "Post-Secondary Education"
sProjectURL(iJC)            = "/our-knowledge/casestudies/harvard-dossier-servicesPopup.asp"

Function formatProjectListItem (sID)

   formatProjectListItem = "<li><a class=""listpick"" href=""javascript:newWindow('" & _
            sProjectURL(sID) & _
            "?ID=" & sID & "');"" class=""tightBodyText"">" & _
            sProjectDescription(sID) & _
            "</a>" & _
            "<p class=""desc"">Client: " &_
            sProjectClientName(sID) &_
            "</p><p class=""desc"">" &_
            "Industry: " &_
            sProjectClientIndustry(sID) &_
            "</p>" &_
            "</li>"

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
                iStart  = "<i>"
                iEnd    = "</i>"
            End If
            sDoubleString = sDoubleString & iStart & sLetter & iEnd & sNBSP
        End Select
        End If
    Next

    formatDoubleString = sDoubleString

End Function

%>