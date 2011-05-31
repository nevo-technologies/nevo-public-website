<% Dim iPageCount %>

<% iPageCount = 5 %>

<!-- #include virtual="/our-knowledge/includes/pageNavigation.asp" -->

<% Select Case sPageIs %>

<% Case "ALL", "1" %>


	Nevo’s work process is carefully structured to focus on achieving goals, managing change, and mitigating risk.
	</br><img src="/images/pixel.gif" width="1" height="10pt"></br>
	From the start, we elicit business and system requirements with a level of attention, care, and collaboration that is unparalleled.  Depending on the unique situation of each client and the singular demands of each engagement, we begin with business process review, system requirements, or solution architecture. We detail system requirements and constraints in the formal language of UML and Use Cases. This discipline enables us to define project goals precisely and quantify success criteria. With agreed-upon metrics we have clear milestones for measuring progress toward our project's success.

<% End Select %>

<% Select Case sPageIs %>

<% Case "ALL", "2" %>
	<% if ( sPageIs = "ALL" ) Then %>
	</br><img src="/images/pixel.gif" width="1" height="10pt"></br>
	<% End If %>
	Our comprehensive lifecycle methodology enables us to effectively review and improve business processes, capture business requirements and constraints, streamline system design and implementation, and ensure a smooth rollout. This formal process also defines the documentation set that accompanies each Nevo project.

	</br><img src="/images/pixel.gif" width="1" height="10pt"></br>
	While we take complete responsibility for the overall solution, we encourage our customers to participate actively. We strongly believe that close collaboration is key to instilling a sense of ownership and accomplishment that leads to successful adoption and ongoing support and extension by your organization.

<% End Select %>

<% Select Case sPageIs %>

<% Case "ALL", "3" %>
	<% if ( sPageIs = "ALL" ) Then %>
	<p>
	<% End If %>
	A typical Nevo engagement involves three work phases:

	<table cellspacing=0 cellpadding=0 border=0 width="100%">

	<tr><td valign="top" class="bodyTextNarrow" width="10"><b>1.&nbsp;&nbsp;&nbsp;</b></td>

	<td class="bodyTextNarrow" ><b>Analysis</b>. The analysis stage is the most critical part of each Nevo engagement as this is where the seeds of success are sown. Our goal is to implement the right system the first time, every time.  We immerse ourselves in your environment, listening to business stakeholders, users, and IT staff to learn about what you want and what you need. We assess the business objectives, functional requirements, environmental constraints, and the company’s ability to adopt technology enabled change. We follow up with a comprehensive recommendation that details business process changes and opportunities, specific goals and priorities, the proposed system, technologies and processes to be implemented, staffing requirements, project timelines, and cost estimates.
	</td></tr>

	<% If ( NOT sPageIs = "ALL" ) Then %>
	</table>
	<% End If %>

<% End Select %>

<% Select Case sPageIs %>

<% Case "ALL", "4" %>

	<% If ( NOT sPageIs = "ALL" ) Then %>
	<table cellspacing=0 cellpadding=0 border=0 width="100%">
	<% End If %>

	<tr><td valign="top" class="bodyTextNarrow" width="10"><b>2.&nbsp;&nbsp;&nbsp;</b></td>

	<td class="bodyTextNarrow"><b>System implementation</b>. This phase includes architecture, development, testing and integration activities&#8212;writing new code, melding new capabilities with legacy systems, and building bridges among new and old systems that use different technologies or are topologically isolated. Using an iterative process of development, testing, and deployment, we provide ample opportunities for stakeholders and select users to interact with both prototypes and incremental product releases, to evaluate alternatives, and to recommend optimal solutions. Nevo never deploys a system fully until all interested parties are satisfied.
	</td></tr>

	<% If ( NOT sPageIs = "ALL" ) Then %>
	</table>
	<% End If %>

<% End Select %>

<% Select Case sPageIs %>

<% Case "ALL", "5" %>

	<% If ( NOT sPageIs = "ALL" ) Then %>
	<table cellspacing=0 cellpadding=0 border=0 width="100%">
	<% End If %>

	<tr><td valign="top" class="bodyTextNarrow" width="10"><b>3.&nbsp;&nbsp;&nbsp;</b></td>

	<td class="bodyTextNarrow" ><b>Knowledge transfer</b>. To ensure that your organization has the skills to extend and enhance the systems we create, Nevo’s knowledge transfer experts are involved in your project from start to finish. Through extensive modeling, documentation, and formal training, they smooth the transition for your company as you bring new capabilities online. Knowledge transfer is generally one of the metrics of success for Nevo projects. We pride ourselves on our success in ensuring that Nevo clients go on to support and extend their systems independently.

	</td></tr>
	</table>

<% End Select %>
