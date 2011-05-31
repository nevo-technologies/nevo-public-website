<% Dim iPageCount %>

<% iPageCount = 2 %>

<!-- #include virtual="/our-knowledge/includes/pageNavigation.asp" -->

<% Select Case sPageIs %>

<% Case "ALL", "1" %>

	At Nevo, we feel it is our responsibility to first understand your challenges, needs,
	and opportunities, and then to choose or craft the solution that best matches your unique constraints. In order to keep up with the latest industry trends and technological
	capabilities, we communicate continually with others in the field and maintain
	strategic affiliations with major industry groups such as the Object Management Group
	(OMG) DMSL.org UDDI.org and the Association for Computing Machinery (ACM), to name a few.

	</br><img src="/images/pixel.gif" width="1" height="10pt"></br>
	Although we fearlessly experiment with pre-release products on our own, we protect our clients from the risks involved in working with bleeding-edge technology. Having done
	extensive research and experienced the learning curve, we recommend and implement
	solutions only when we have confidence in their long-term viability as well as their
	appropriateness to the task at hand.

<% End Select %>

<% Select Case sPageIs %>

<% Case "ALL", "2" %>
	<% if ( sPageIs = "ALL" ) Then %>
	<p>
	<% End If %>

	Nevo technologists have practical experience in
	the following proven technologies:

	<table cellspacing=0 cellpadding=0 border=0>
	<tr><td align="left" valign="top" class="tightBodyText">
	<ul>
		     <li>ASP, ASP.NET
		</li><li>BizTalk
		</li><li>C++
		</li><li>C#
		</li><li>CGI
		</li><li>COM/DCOM
		</li><li>CORBA
		</li><li>DHTML
		</li><li>Digital Signatures & PKI
		</li><li>EAI
		</li><li>EJB
		</li><li>HTML
		</li><li>JSP
		</li><li>Java, J2EE
		</li><li>Javascript
		</li><li>Linux
		</li><li>.NET
		</li><li>.NET Windows Forms
		</li>
	</ul>
	<td  align="left" valign="top" class="tightBodyText">
	<ul>
		     <li>NT / 2000 / XP
		</li><li>OOD
		</li><li>Oracle
		</li><li>RDBMS
		</li><li>RMI
		</li><li>SQLServer
		</li><li>Servlets
		</li><li>SOA
		</li><li>Sybase
		</li><li>UML
		</li><li>Unix
		</li><li>VBScript
		</li><li>Visual Basic .NET
		</li><li>WebLogic
		</li><li>WebMethods
		</li><li>WebSphere
		</li><li>XML/XSL/XSLT
		</li>
	</ul>
	</td><tr></table>

<% End Select %>

