<xsl:stylesheet version="1.0" exclude-result-prefixes="xsd xsi oracle-xsl-mapper xsl ns0 oraxsl" xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:ns0="http://www.cdisc.org/ns/odm/v1.3" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:mdsol="http://www.mdsol.com/ns/odm/metadata" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:DVMFunctions="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.functions.dvm.DVMFunctions" xmlns:BasicCredentialsUserFunction="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.stages.functions.BasicCredentialsUserFunction" xmlns:UUIDUserFunction="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.stages.functions.UUIDUserFunction" xmlns:IsUserInRoleFunction="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.stages.functions.IsUserInRoleFunction" xmlns:IsUserInGroupFunction="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.stages.functions.IsUserInGroupFunction" xmlns:XrefFunctions="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.functions.xref.XrefFunctions">
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
        <oracle-xsl-mapper:schema location="../Schemas/RaveODM.xsd"/>
        <oracle-xsl-mapper:rootElement name="ODM" namespace="http://www.cdisc.org/ns/odm/v1.3"/>
      </oracle-xsl-mapper:target>
    </oracle-xsl-mapper:mapTargets>
    <!--GENERATED BY ORACLE XSL MAPPER 12.1.3.0.0(XSLT Build 140529.0700.0211) AT [MON MAY 07 03:50:52 EDT 2018].-->
  </oracle-xsl-mapper:schema>
  <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
  <xsl:template match="/">
    <ns0:ODM>
      <xsl:if test="/ns0:ODM/@FileType">
        <xsl:attribute name="FileType">
          <xsl:value-of select="/ns0:ODM/@FileType"/>
        </xsl:attribute>
      </xsl:if>
      <xsl:if test="/ns0:ODM/@FileOID">
        <xsl:attribute name="FileOID">
          <xsl:value-of select="/ns0:ODM/@FileOID"/>
        </xsl:attribute>
      </xsl:if>
      <xsl:if test="/ns0:ODM/@CreationDateTime">
        <xsl:attribute name="CreationDateTime">
          <xsl:value-of select="/ns0:ODM/@CreationDateTime"/>
        </xsl:attribute>
      </xsl:if>
      <xsl:if test="/ns0:ODM/@ODMVersion">
        <xsl:attribute name="ODMVersion">
          <xsl:value-of select="/ns0:ODM/@ODMVersion"/>
        </xsl:attribute>
      </xsl:if>
      <xsl:for-each select="/ns0:ODM/ns0:ClinicalData[1]">
        <ns0:ClinicalData>
          <xsl:if test="@StudyOID">
            <xsl:attribute name="StudyOID">
              <xsl:value-of select="@StudyOID"/>
            </xsl:attribute>
          </xsl:if>
          <xsl:if test="@MetaDataVersionOID">
            <xsl:attribute name="MetaDataVersionOID">
              <xsl:value-of select="@MetaDataVersionOID"/>
            </xsl:attribute>
          </xsl:if>
          <ns0:SubjectData>
            <xsl:if test="ns0:SubjectData/@SubjectKey">
              <xsl:attribute name="SubjectKey">
                <xsl:value-of select="ns0:SubjectData/@SubjectKey"/>
              </xsl:attribute>
            </xsl:if>
            <xsl:if test="ns0:SubjectData/@TransactionType">
              <xsl:attribute name="TransactionType">
                <xsl:value-of select="ns0:SubjectData/@TransactionType"/>
              </xsl:attribute>
            </xsl:if>
            <ns0:SiteRef>
              <xsl:if test="ns0:SubjectData/ns0:SiteRef/@LocationOID">
                <xsl:attribute name="LocationOID">
                  <xsl:value-of select="ns0:SubjectData/ns0:SiteRef/@LocationOID"/>
                </xsl:attribute>
              </xsl:if>
              <xsl:value-of select="ns0:SubjectData/ns0:SiteRef"/>
            </ns0:SiteRef>
            <xsl:for-each select="/ns0:ODM/ns0:ClinicalData">
              <xsl:if test="ns0:SubjectData/ns0:StudyEventData/ns0:FormData/ns0:ItemGroupData/@TransactionType ='Update' or ns0:SubjectData/ns0:StudyEventData/ns0:FormData/ns0:ItemGroupData/@TransactionType ='Upsert'">
                <ns0:StudyEventData>
                      <xsl:if test="ns0:SubjectData/ns0:StudyEventData/@StudyEventOID">
                        <xsl:attribute name="StudyEventOID">
                          <xsl:value-of select="ns0:SubjectData/ns0:StudyEventData/@StudyEventOID"/>
                        </xsl:attribute>
                      </xsl:if>
                      <xsl:if test="ns0:SubjectData/ns0:StudyEventData/@StudyEventRepeatKey">
                        <xsl:attribute name="StudyEventRepeatKey">
                          <xsl:value-of select="ns0:SubjectData/ns0:StudyEventData/@StudyEventRepeatKey"/>
                        </xsl:attribute>
                      </xsl:if>
                      <xsl:if test="ns0:SubjectData/ns0:StudyEventData/@TransactionType">
                        <xsl:attribute name="TransactionType">
                          <xsl:value-of select="ns0:SubjectData/ns0:StudyEventData/@TransactionType"/>
                        </xsl:attribute>
                      </xsl:if>
                      <ns0:FormData>
                        <xsl:if test="ns0:SubjectData/ns0:StudyEventData/ns0:FormData/@FormOID">
                          <xsl:attribute name="FormOID">
                            <xsl:value-of select="ns0:SubjectData/ns0:StudyEventData/ns0:FormData/@FormOID"/>
                          </xsl:attribute>
                        </xsl:if>
                        <xsl:if test="ns0:SubjectData/ns0:StudyEventData/ns0:FormData/@FormRepeatKey">
                          <xsl:attribute name="FormRepeatKey">
                            <xsl:value-of select="ns0:SubjectData/ns0:StudyEventData/ns0:FormData/@FormRepeatKey"/>
                          </xsl:attribute>
                        </xsl:if>
                        <xsl:if test="ns0:SubjectData/ns0:StudyEventData/ns0:FormData/@TransactionType">
                          <xsl:attribute name="TransactionType">
                            <xsl:value-of select="ns0:SubjectData/ns0:StudyEventData/ns0:FormData/@TransactionType"/>
                          </xsl:attribute>
                        </xsl:if>
                        <ns0:ItemGroupData>
                          <xsl:if test="ns0:SubjectData/ns0:StudyEventData/ns0:FormData/ns0:ItemGroupData/@ItemGroupOID">
                            <xsl:attribute name="ItemGroupOID">
                              <xsl:value-of select="ns0:SubjectData/ns0:StudyEventData/ns0:FormData/ns0:ItemGroupData/@ItemGroupOID"/>
                            </xsl:attribute>
                          </xsl:if>
                          <xsl:choose>
                            <xsl:when test=".//*[(local-name() = &quot;ItemData&quot;)][contains(@TransactionType, &quot;Context&quot;)]">
                              <xsl:attribute name="ItemGroupRepeatKey">@CONTEXT</xsl:attribute>
                              <xsl:attribute name="TransactionType">Upsert</xsl:attribute>
                            </xsl:when>
                            <xsl:otherwise>
                              <xsl:if test="ns0:SubjectData/ns0:StudyEventData/ns0:FormData/ns0:ItemGroupData/@ItemGroupRepeatKey">
                                <xsl:attribute name="ItemGroupRepeatKey">
                                  <xsl:value-of select="ns0:SubjectData/ns0:StudyEventData/ns0:FormData/ns0:ItemGroupData/@ItemGroupRepeatKey"/>
                                </xsl:attribute>
                              </xsl:if>
                              <xsl:attribute name="TransactionType">
                                <xsl:value-of select="ns0:SubjectData/ns0:StudyEventData/ns0:FormData/ns0:ItemGroupData/@TransactionType"/>
                              </xsl:attribute>
                            </xsl:otherwise>
                          </xsl:choose>
                          <xsl:for-each select="ns0:SubjectData/ns0:StudyEventData/ns0:FormData/ns0:ItemGroupData/ns0:ItemData">
                            <ns0:ItemData mdsol:Lock="AsFound">
                              <xsl:if test="@ItemOID">
                                <xsl:attribute name="ItemOID">
                                  <xsl:value-of select="@ItemOID"/>
                                </xsl:attribute>
                              </xsl:if>
                              <xsl:if test="@Value">
                                <xsl:attribute name="Value">
                                  <xsl:value-of select="@Value"/>
                                </xsl:attribute>
                              </xsl:if>
                              <xsl:if test="@IsNull">
                                <xsl:attribute name="IsNull">
                                  <xsl:value-of select="@IsNull"/>
                                </xsl:attribute>
                              </xsl:if>
                              <xsl:if test="@TransactionType">
                                <xsl:attribute name="TransactionType">
                                  <xsl:value-of select="@TransactionType"/>
                                </xsl:attribute>
                              </xsl:if>
                            </ns0:ItemData>
                          </xsl:for-each>
                        </ns0:ItemGroupData>
                      </ns0:FormData>
                    </ns0:StudyEventData>
                
              </xsl:if>
            </xsl:for-each>
          </ns0:SubjectData>
        </ns0:ClinicalData>
      </xsl:for-each>
    </ns0:ODM>
  </xsl:template>
</xsl:stylesheet>