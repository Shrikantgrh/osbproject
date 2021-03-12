<xsl:stylesheet version="1.0" exclude-result-prefixes="xsi oracle-xsl-mapper xsl xsd ns0 tns oraxsl DVMFunctions BasicCredentialsUserFunction UUIDUserFunction IsUserInRoleFunction IsUserInGroupFunction XrefFunctions" xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java" xmlns:DVMFunctions="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.functions.dvm.DVMFunctions" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:BasicCredentialsUserFunction="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.stages.functions.BasicCredentialsUserFunction" xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas" xmlns:UUIDUserFunction="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.stages.functions.UUIDUserFunction" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ns0="http://soa.incresearch.com/xsd/EDNAllerganSubjVisits" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:tns="http://soa.incresearch.com/xsd/AllerganSubjVisits" xmlns:IsUserInRoleFunction="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.stages.functions.IsUserInRoleFunction" xmlns:IsUserInGroupFunction="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.stages.functions.IsUserInGroupFunction" xmlns:XrefFunctions="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.functions.xref.XrefFunctions" xmlns:nxsd="http://xmlns.oracle.com/pcbpel/nxsd" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20">
  <oracle-xsl-mapper:schema>
    <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
    <oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:source type="XSD">
        <oracle-xsl-mapper:schema location="../Schemas/nxsd_AllerganSubjVisits_v1_source.xsd"/>
        <oracle-xsl-mapper:rootElement name="subjectVisits" namespace="http://soa.incresearch.com/xsd/EDNAllerganSubjVisits"/>
      </oracle-xsl-mapper:source>
    </oracle-xsl-mapper:mapSources>
    <oracle-xsl-mapper:mapTargets>
      <oracle-xsl-mapper:target type="XSD">
        <oracle-xsl-mapper:schema location="../Schemas/nxsd_AllerganSubjVisits_v1_Target.xsd"/>
        <oracle-xsl-mapper:rootElement name="visitSubjects" namespace="http://soa.incresearch.com/xsd/AllerganSubjVisits"/>
      </oracle-xsl-mapper:target>
    </oracle-xsl-mapper:mapTargets>
    <!--GENERATED BY ORACLE XSL MAPPER 12.1.3.0.0(XSLT Build 140529.0700.0211) AT [THU FEB 02 02:55:14 EST 2017].-->
  </oracle-xsl-mapper:schema>
  <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
  <xsl:template match="/">
    <tns:visitSubjects>
      <xsl:for-each select="/ns0:subjectVisits/ns0:Subject">
        <tns:subject>
          <tns:StudyName>
            <xsl:value-of select="ns0:STUDYNAME"/>
          </tns:StudyName>
          <tns:StudyNumber>
            <xsl:value-of select="ns0:STUDYNUMBER"/>
          </tns:StudyNumber>
          <tns:InternalNumber>
            <xsl:value-of select="&quot;1007364A&quot;"/>
          </tns:InternalNumber>
          <tns:SiteNumber>
            <xsl:value-of select="ns0:SITENUMBER"/>
          </tns:SiteNumber>
          <tns:ScreeningNo>
            <xsl:value-of select="ns0:SCREENING_NUMBER"/>
          </tns:ScreeningNo>
          <tns:InformedConsentDate>
            <xsl:value-of select="xp20:format-dateTime(concat (substring (ns0:INFORMCONSENTDATE, 7, 4 ), &quot;-&quot;, substring (ns0:INFORMCONSENTDATE, 1, 2 ), &quot;-&quot;, substring (ns0:INFORMCONSENTDATE, 4, 2 ) ),'[Y0001]-[M01]-[D01]')"/>
          </tns:InformedConsentDate>
          <xsl:choose>
            <xsl:when test="/ns0:subjectVisits/ns0:Subject/ns0:GENDER = &quot;M&quot;">
              <tns:Gender>
                <xsl:value-of select="'Male'"/>
              </tns:Gender>
            </xsl:when>
            <xsl:otherwise>
              <tns:Gender>
                <xsl:value-of select="'Female'"/>
              </tns:Gender>
            </xsl:otherwise>
          </xsl:choose>
          <tns:ScreenDate>
            <xsl:value-of select="xp20:format-dateTime(concat (substring (ns0:SCREENDATE, 7, 4 ), &quot;-&quot;, substring (ns0:SCREENDATE, 1, 2 ), &quot;-&quot;, substring (ns0:SCREENDATE, 4, 2 ) ),'[Y0001]-[M01]-[D01]')"/>
          </tns:ScreenDate>
          <tns:ScrnFailDate>
            <xsl:value-of select="xp20:format-dateTime(concat (substring (ns0:SCREENFAILEDDATE, 7, 4 ), &quot;-&quot;, substring (ns0:SCREENFAILEDDATE, 1, 2 ), &quot;-&quot;, substring (ns0:SCREENFAILEDDATE, 4, 2 ) ),'[Y0001]-[M01]-[D01]')"/>
          </tns:ScrnFailDate>
          <tns:EnrolledDate>
            <xsl:value-of select="xp20:format-dateTime(concat (substring (ns0:ENROLLEDDATE, 7, 4 ), &quot;-&quot;, substring (ns0:ENROLLEDDATE, 1, 2 ), &quot;-&quot;, substring (ns0:ENROLLEDDATE, 4, 2 ) ),'[Y0001]-[M01]-[D01]')"/>
          </tns:EnrolledDate>
          <tns:CompletedDate>
            <xsl:value-of select="xp20:format-dateTime(concat (substring (ns0:COMPLETEDDATE, 7, 4 ), &quot;-&quot;, substring (ns0:COMPLETEDDATE, 1, 2 ), &quot;-&quot;, substring (ns0:COMPLETEDDATE, 4, 2 ) ),'[Y0001]-[M01]-[D01]')"/>
          </tns:CompletedDate>
          <tns:DiscntDate>
            <xsl:value-of select="xp20:format-dateTime(concat (substring (ns0:DISCONTINUATIONDATE, 7, 4 ), &quot;-&quot;, substring (ns0:DISCONTINUATIONDATE, 1, 2 ), &quot;-&quot;, substring (ns0:DISCONTINUATIONDATE, 4, 2 ) ),'[Y0001]-[M01]-[D01]')"/>
          </tns:DiscntDate>
          <tns:VisitName>
            <xsl:value-of select="ns0:VISITNAME"/>
          </tns:VisitName>
          <tns:VisitReference>
            <xsl:value-of select="ns0:VISITNUM"/>
          </tns:VisitReference>
          <tns:VisitDate>
            <xsl:value-of select="xp20:format-dateTime(concat (substring (ns0:VISITDATE, 7, 4 ), &quot;-&quot;, substring (ns0:VISITDATE, 1, 2 ), &quot;-&quot;, substring (ns0:VISITDATE, 4, 2 ) ),'[Y0001]-[M01]-[D01]')"/>
          </tns:VisitDate>
          <tns:EnrollId>
            <xsl:value-of select="&quot;&quot;"/>
          </tns:EnrollId>
          <tns:SubjectInitials>
            <xsl:value-of select="&quot;&quot;"/>
          </tns:SubjectInitials>
          <tns:SubjectStatus>
            <xsl:value-of select="&quot;Screening&quot;"/>
          </tns:SubjectStatus>
          <tns:DOB>
            <xsl:value-of select="&quot;&quot;"/>
          </tns:DOB>
          <tns:RandomId>
            <xsl:value-of select="&quot;&quot;"/>
          </tns:RandomId>
          <tns:RandomizedDate>
            <xsl:value-of select="&quot;&quot;"/>
          </tns:RandomizedDate>
          <tns:ScrFailReason>
            <xsl:value-of select="&quot;&quot;"/>
          </tns:ScrFailReason>
          <tns:ScrnFailSubStatus>
            <xsl:value-of select="&quot;&quot;"/>
          </tns:ScrnFailSubStatus>
          <tns:DiscSubStatus>
            <xsl:value-of select="&quot;&quot;"/>
          </tns:DiscSubStatus>
          <tns:DiscntReason>
            <xsl:value-of select="&quot;&quot;"/>
          </tns:DiscntReason>
          <tns:StartDate>
            <xsl:value-of select="&quot;&quot;"/>
          </tns:StartDate>
          <tns:TreatmentArm>
            <xsl:value-of select="&quot;&quot;"/>
          </tns:TreatmentArm>
          <tns:Cohort>
            <xsl:value-of select="&quot;&quot;"/>
          </tns:Cohort>
          <tns:VisitOID>
            <xsl:value-of select="&quot;&quot;"/>
          </tns:VisitOID>
          <tns:VisitRepeatKey>
            <xsl:value-of select="&quot;&quot;"/>
          </tns:VisitRepeatKey>
          <tns:Effort>
            <xsl:value-of select="&quot;&quot;"/>
          </tns:Effort>
          <tns:EffortUnits>
            <xsl:value-of select="&quot;&quot;"/>
          </tns:EffortUnits>
          <tns:CRFTemplateName>
            <xsl:value-of select="&quot;&quot;"/>
          </tns:CRFTemplateName>
          <tns:CRFName>
            <xsl:value-of select="&quot;&quot;"/>
          </tns:CRFName>
          <tns:CRFRepeatKey>
            <xsl:value-of select="&quot;&quot;"/>
          </tns:CRFRepeatKey>
          <tns:PageNo>
            <xsl:value-of select="&quot;&quot;"/>
          </tns:PageNo>
          <tns:SubPageNo>
            <xsl:value-of select="&quot;&quot;"/>
          </tns:SubPageNo>
          <tns:CRFSDVDate>
            <xsl:value-of select="&quot;&quot;"/>
          </tns:CRFSDVDate>
          <tns:CRFSDV>
            <xsl:value-of select="&quot;&quot;"/>
          </tns:CRFSDV>
          <tns:CRFReviewed>
            <xsl:value-of select="&quot;&quot;"/>
          </tns:CRFReviewed>
          <tns:CRFCollected>
            <xsl:value-of select="&quot;&quot;"/>
          </tns:CRFCollected>
          <tns:CRFReceivedDate>
            <xsl:value-of select="&quot;&quot;"/>
          </tns:CRFReceivedDate>
          <tns:CRFReceived>
            <xsl:value-of select="&quot;&quot;"/>
          </tns:CRFReceived>
          <tns:CRFCollectedDate>
            <xsl:value-of select="&quot;&quot;"/>
          </tns:CRFCollectedDate>
          <tns:CRFReviewedDate>
            <xsl:value-of select="&quot;&quot;"/>
          </tns:CRFReviewedDate>
        </tns:subject>
      </xsl:for-each>
    </tns:visitSubjects>
  </xsl:template>
</xsl:stylesheet>