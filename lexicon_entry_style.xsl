<xsl:sort select='citation/form/text[translate(., $accent, $noaccent) and translate(current-grouping-key(), $abc1, $abc2)]'/>
<div>
  <b><xsl:value-of select="citation/form/text"/></b> 
  [<xsl:value-of select="pronunciation/form/text"/>] 
  <xsl:for-each select="pronunciation/media">
    <xsl:element name="a">
      <xsl:attribute name="href">audio/<xsl:value-of select='@href'/></xsl:attribute><img src="images/Speaker_Icon_gray.png" height="20" width="20" /></xsl:element>
  </xsl:for-each>
  <xsl:for-each select="pronunciation/field[@type='tone']"><span class="label">Tone: </span><span class="tone"><xsl:value-of select="form/text"></xsl:value-of></span></xsl:for-each>
</div>
<div class="sens">
  <xsl:for-each select="sense">
    <xsl:if test="trait[@name='sense-type' and @value='definition']">
      - <xsl:value-of select="definition/form[@lang='en']/text/text()"/><br/>
    </xsl:if>
  </xsl:for-each>
</div>