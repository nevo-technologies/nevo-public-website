
<!-- #include virtual="/our-knowledge/includes/case_study_popup_top.asp" -->

<p><font class="sectionTitleText">Profile: Global</font>

<p><font class="sectionTitleText">Background:</font>

<p>This sporting equipment manufacturer, an operating company of a Fortune 100 company, is the industry leader in its field, comprising a plethora of highly recognized brands, with sales exceeding $1B.  Nevo Technologies has a long working relationship with this client, and has been involved in the technology driving the majority of their sales and fulfillment pipeline.

<p><font class="sectionTitleText">Problems:</font>

<p>This manufacturer approached Nevo, as their trusted technology partner, to architect and implement a point-of-sale application that would integrates with numerous other systems including their CRM package, product catalog (which is available through a metadata repository), and their order-to-cash system.

<p>Additionally, Nevo has recently been involved in their efforts to move off a heavily customized, but now antiquated, order-to-cash system (HFA), to a new system provided by the Intentia Corporation.  To accommodate the magnitude of this core system, we have guided the client’s development through this system replacement.

<p>A key component of these two initiatives was the development of a custom designed data synchronization engine.

<p><font class="sectionTitleText">Our Solution:</font>

<p>Nevo deployed Intentia’s MOVEX ERP system in the client’s Canadian headquarters in preparation for a worldwide rollout. A requirement of the MOVEX implementation was a seamless integration with all existing systems in the US, Europe, and Asia.  We therefore developed an integration strategy that mapped and moved data between the wide variety of systems that supported the client’s global operations. After the requirements gathering process, we designed a flexible, reusable architecture that minimized the rework and effort required to complete this implementation and testing.

<p>The custom designed data synchronization engine was written in Java, and met the client’s requirement to synchronize the new Intentia data to their existing point-of-sale applications.  The data synchronization engine supported clear separation of the Intentia data and the point-of-sale data definitions.  This proved a critical aspect of an integration solution in which the biggest challenge was defining the data migration and transformations, while validating that the implemented synchronization logic truly met the specification.

<p>Each transition point in an integration solution (disparate applications to integration requirements, integration requirements to integration solution architecture, solution architecture to implementation, and implementation to testing) presents the highest probability of introducing errors that effect the rest of the project lifecycle.  We worked closely with the client’s subject matter experts, for both the Intentia and point-of-sale applications, to capture and document the many points of possible error introduction.  The data synchronization was further complicated by the multiple sources of data.  Data was collected directly from Intentia via:

<ul><li>The Intentia published API (Movex)
</li><li>Directly from the underlying DB2 Intentia Database
</li><li>Specially extracted data tables also generated in the Intentia DB2 database
</li><li>Directly from the point-of-sale SQL Server Database
</li></ul>

<p>Several transformations were "market driven."  These were controlled using XML descriptions of the export and transformation criteria.  Following the initial delivery of the client transformations, the client’s staff easily implemented transformations for the product line by replicating the market-driven transformation.

<p><font class="sectionTitleText">Results:</font>

<p>Nevo’s architecture and integration of the client’s point-of-sale (mobile sales force automation), CRM, product catalog, and order-to-cash systems was launched in three international deployments - the US, Canada, and Europe.  This resulted in a common order management approach, a simplified order entry process for their worldwide sales force, reduced training costs, increased productivity, and reduced operational complexity.

<p>Additionally, the Intentia and MOVEX implementation was successful not only in Canada, but in its integration with all other worldwide systems. This success created a foundation and template for the deployment of MOVEX worldwide, an initiative that has proven integral to the client’s global growth strategy.


<!-- #include virtual="/our-knowledge/includes/case_study_popup_bottom.asp" -->

