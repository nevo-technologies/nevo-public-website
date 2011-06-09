<% Dim iPageCount %>

<% iPageCount = 2 %>

<!-- #include virtual="/our-knowledge/includes/pageNavigation.asp" -->

<% Select Case sPageIs %>

<% Case "ALL", "1" %>

At Nevo, we feel it is our responsibility to understand your challenges, needs, and opportunities, and then to choose or craft the solution that best matches your unique constraints. In order to keep up with the latest industry trends and technological capabilities, we communicate continually with others in the field and maintain strategic affiliations with major industry groups.
</br><img src="/images/pixel.gif" width="1" height="10pt"></br>
Although we fearlessly experiment with pre-release products on our own, we protect our clients from the risks involved in working with bleeding-edge technology. Having done the research and experienced the learning curve, we recommend and implement solutions only when we have confidence in their long-term viability as well as their appropriateness to the task at hand.

<% End Select %>

<% Select Case sPageIs %>

<% Case "ALL", "2" %>
	<% if ( sPageIs = "ALL" ) Then %>
	<p>
	<% End If %>

	Nevo technologists have practical experience in
	the following technologies:

	<table cellspacing=0 cellpadding=0 border=0>
	<tr><td align="left" valign="top" class="tightBodyText" width="240">
	<ul>
        <li>Agile Metholdology (SCRUM)
        </li><li>ASP, ASP.NET
        </li><li>Business Rule Management (BRM)
		</li><li>C++
		</li><li>C#
		</li><li>COM/DCOM
        </li><li>Confluence
        </li><li>Continous Integration
        </li><li>CruiseControl.Net
        </li><li>Data Replication / Data Distribution (often in the context of occasionally connected applications)
        </li><li>Dependency Injection / Inversion of Control
		</li><li>DHTML
		</li><li>Enterprise Application Integration (EAI)
        </li><li>Enterprise Architect (modelling tool)
		</li><li>EJB
        </li><li>Entity Framework
        </li><li>F# (functional programming)
        </li><li>Google Gears    
		</li><li>HTML (including HTML5)
		</li><li>JSP
        </li><li>Jira
		</li><li>Java, J2EE
		</li><li>Javascript
		</li><li>LINQ</li>
	</ul>
	<td  align="left" valign="top" class="tightBodyText">
	<ul>
        
        <li>Messaging (MQSeries, MSMQ, WCF)
        </li><li>N-Tiered Design
		</li><li>.NET
		</li><li>.NET Windows Forms
        </li><li>Nolij (document management)
		</li><li>Object Oriented Desighn(OOD)
        </li><li>OR Mapping (Hibernate, nHibernate, iBatis)
		</li><li>Oracle
        </li><li>Performance analysis / optimization
		</li><li>Relational DBMS
        </li><li>ScrumDesk (Agile / Scrum tool)
		</li><li>SQLServer
		</li><li>Servlets
		</li><li>Service Oriented Architectures(SOA)
        </li><li>Struts / Struts2
		</li><li>Sybase
		</li><li>UML
        </li><li>Unit Testing (jUnit / nUnit)
		</li><li>VBScript
		</li><li>WebMethods
		</li><li>WebSphere
        </li><li>WPF
		</li><li>XML/XSL/XSLT
		</li>
	</ul>
	</td><tr></table>

<% End Select %>

