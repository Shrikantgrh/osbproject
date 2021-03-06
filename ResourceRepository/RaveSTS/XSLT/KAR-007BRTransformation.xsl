<xsl:stylesheet version="1.0" exclude-result-prefixes="xsd xsi oracle-xsl-mapper xsl ns0 tns oraxsl"
                xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java" xmlns:xsd="http://www.w3.org/2001/XMLSchema"
                xmlns:ns0="http://www.cdisc.org/ns/odm/v1.3" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:tns="http://soa.incresearch.com/Rave/STS"
                xmlns:mdsol="http://www.mdsol.com/ns/odm/metadata" xmlns:xlink="http://www.w3.org/1999/xlink"
                xmlns:rl="http://soa.incresearch.com/Rave/URL"
                xmlns:DVMFunctions="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.functions.dvm.DVMFunctions"
                xmlns:BasicCredentialsUserFunction="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.stages.functions.BasicCredentialsUserFunction"
                xmlns:UUIDUserFunction="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.stages.functions.UUIDUserFunction"
                xmlns:IsUserInRoleFunction="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.stages.functions.IsUserInRoleFunction"
                xmlns:IsUserInGroupFunction="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.stages.functions.IsUserInGroupFunction"
                xmlns:XrefFunctions="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.functions.xref.XrefFunctions">
  <oracle-xsl-mapper:schema>
    <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
    <oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:source type="XSD">
        <oracle-xsl-mapper:schema location="../Schemas/RaveODM.xsd"/>
        <oracle-xsl-mapper:rootElement name="ODM" namespace="http://www.cdisc.org/ns/odm/v1.3"/>
      </oracle-xsl-mapper:source>
    </oracle-xsl-mapper:mapSources>
    <oracle-xsl-mapper:mapTargets>
      <oracle-xsl-mapper:target type="XSD">
        <oracle-xsl-mapper:schema location="../Schemas/RaveSTS.xsd"/>
        <oracle-xsl-mapper:rootElement name="Subject" namespace="http://soa.incresearch.com/Rave/STS"/>
      </oracle-xsl-mapper:target>
    </oracle-xsl-mapper:mapTargets>
    <!--GENERATED BY ORACLE XSL MAPPER 12.1.3.0.0(XSLT Build 140529.0700.0211) AT [MON MAY 07 03:50:52 EDT 2018].-->
  </oracle-xsl-mapper:schema>
  <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
  <xsl:template match="/">
    <xsl:variable name="TarSite">
      <xsl:value-of select="/ns0:ODM/ns0:ClinicalData/ns0:SubjectData/ns0:SiteRef/@LocationOID"/>
    </xsl:variable>
    <tns:Subject>
      <tns:Details>
        <tns:sourceSubjectKey>
          <xsl:value-of select="/ns0:ODM/ns0:ClinicalData/ns0:SubjectData/@SubjectKey"/>
        </tns:sourceSubjectKey>
        <tns:sourceLocationOID>
          <xsl:value-of select="/ns0:ODM/ns0:ClinicalData/ns0:SubjectData/ns0:SiteRef/@LocationOID"/>
        </tns:sourceLocationOID>
        <tns:targetSubjectKey>
          <xsl:value-of select="/ns0:ODM/ns0:ClinicalData/ns0:SubjectData/@SubjectKey"/>
        </tns:targetSubjectKey>
        <tns:targetLocationOID>
          <xsl:value-of select="$TarSite"/>
        </tns:targetLocationOID>
        <tns:transfer>1</tns:transfer>
      </tns:Details>
    </tns:Subject>
  </xsl:template>
</xsl:stylesheet>