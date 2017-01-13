<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
  <xsl:output method="text"/>
  <xsl:output method="html" indent="yes" name="html"/>
  <xsl:variable name="accent">ǹáàâéèêÈíìîóòôúùû̩̌̀́̂-*</xsl:variable>
  <xsl:variable name="noaccent">naaaeeeeiiiooouuu</xsl:variable>
  <xsl:variable name="abc1"></xsl:variable>
  <xsl:variable name="abc2"></xsl:variable>
  <xsl:variable name="root" select="/"/>
  <xsl:variable name="rules" select="'&lt; a,A &lt; b,B &lt; c,C &lt; d,D &lt; e,E &lt; ɛ,Ɛ &lt; f,F &lt; g,G &lt; h,H &lt; i,I &lt; j,J &lt; k,K &lt; l,L &lt; m,M &lt; n,N &lt; ŋ,Ŋ &lt; o,O &lt; ɔ,Ɔ &lt; p,P &lt; q,Q &lt; r,R &lt; s,S &lt; t,T &lt; u,U &lt; v,V &lt; w,W &lt; x,X &lt; y,Y &lt; z,Z'"/>
  <xsl:variable name="hyphen">-</xsl:variable>
  <xsl:variable name="asterisk">*</xsl:variable>
  
<xsl:template match="/lift">
  <xsl:param name="language"/>
  <xsl:param name="sort"/>
  <xsl:param name="display"/>
  <xsl:param name="toggle"/>
    <xsl:for-each select="distinct-values(entry/sense/definition/form/@lang)">
      <xsl:call-template name="main">
        <xsl:with-param name="language" select="."/>
        <xsl:with-param name="sort">lexeme</xsl:with-param>
        <xsl:with-param name="display">dict</xsl:with-param>
        <xsl:with-param name="toggle">off</xsl:with-param>
      </xsl:call-template>
      <xsl:call-template name="main">
        <xsl:with-param name="language" select="."/>
        <xsl:with-param name="sort">stem</xsl:with-param>
        <xsl:with-param name="display">dict</xsl:with-param>
        <xsl:with-param name="toggle">off</xsl:with-param>
      </xsl:call-template>
      <xsl:call-template name="main">
        <xsl:with-param name="language" select="."/>
        <xsl:with-param name="sort">lexeme</xsl:with-param>
        <xsl:with-param name="display">dict</xsl:with-param>
        <xsl:with-param name="toggle">on</xsl:with-param>
      </xsl:call-template>
      <xsl:call-template name="main">
        <xsl:with-param name="language" select="."/>
        <xsl:with-param name="sort">stem</xsl:with-param>
        <xsl:with-param name="display">dict</xsl:with-param>
        <xsl:with-param name="toggle">on</xsl:with-param>
      </xsl:call-template>
    </xsl:for-each>
</xsl:template>

 <xsl:template name="main">
  <xsl:param name="language"/>
  <xsl:param name="sort"/>
  <xsl:param name="display"/>
  <xsl:param name="toggle"/>
 <xsl:variable name="sortpath">
    <xsl:choose>
      <xsl:when test="$sort='lexeme'">citation</xsl:when>
      <xsl:otherwise>lexical-unit</xsl:otherwise>
    </xsl:choose>
  </xsl:variable> 
      
  <xsl:result-document href="../all_{$sort}_{$toggle}_{$display}_{$language}.html" format="html">
    <xsl:variable name="letter">all</xsl:variable>
    <html>
      <head>
        <link rel="stylesheet" type="text/css" href="lexicon.css"/>
      </head>
      <body>
        <div class="title"><xsl:choose><xsl:when test="$language='fr'">Affichage Dictionnaire: <span class="letterheader">Toutes Les Entrées</span></xsl:when><xsl:otherwise>Dictionary View: <span class="letterheader">All Entries</span></xsl:otherwise></xsl:choose>
          <div class="subtitle"><xsl:choose><xsl:when test="$language='fr'">(Trié par <xsl:choose><xsl:when test="$sort='lexeme'">lexème</xsl:when><xsl:otherwise>radical</xsl:otherwise></xsl:choose>)</xsl:when><xsl:otherwise>(Sorted by <xsl:value-of select="$sort"/>)</xsl:otherwise></xsl:choose></div>
        </div>
        <div class="leftpane">
          <xsl:for-each select="$root/lift/entry">
            <xsl:sort select="node()[name()=$sortpath]/form[@lang='yko']/text/translate(.,$accent,$noaccent)" collation="http://saxon.sf.net/collation?rules={encode-for-uri($rules)}"/>
            <xsl:call-template name="dictentry">
              <xsl:with-param name="language" select="$language"/>
              <xsl:with-param name="fletter" select="$letter"/>
              <xsl:with-param name="sort" select="$sort"/>
              <xsl:with-param name="display" select="$display"/>
              <xsl:with-param name="toggle" select="$toggle"/>
            </xsl:call-template>
          </xsl:for-each>
        </div>
        <xsl:call-template name="alphnav">
          <xsl:with-param name="language" select="$language"/>
          <xsl:with-param name="fletter" select="$letter"/>
          <xsl:with-param name="sort" select="$sort"/>
          <xsl:with-param name="display" select="$display"/>
          <xsl:with-param name="toggle" select="$toggle"/>
        </xsl:call-template>
      </body>
    </html>
  </xsl:result-document>
    
    <xsl:for-each select="distinct-values($root/lift/entry/node()[name()=$sortpath]/form/text/substring(translate(., $accent, $noaccent),1,1))">
      <xsl:variable name="letter" select="."/>
      <xsl:result-document href="../{$letter}_{$sort}_{$toggle}_{$display}_{$language}.html" format="html">
        <html>
          <head>
            <link rel="stylesheet" type="text/css" href="lexicon.css"/>
          </head>
          <body>
            <div id="draft">
              <xsl:choose>
                <xsl:when test="$language='fr'">EBAUCHE</xsl:when>
                <xsl:otherwise>DRAFT</xsl:otherwise>
              </xsl:choose>
            </div>
            <div class="title"><xsl:choose><xsl:when test="$language='fr'">Affichage Dictionnaire: <span class="letterheader"><xsl:value-of select="$letter"/></span></xsl:when><xsl:otherwise>Dictionary View: <span class="letterheader"><xsl:value-of select="$letter"/></span></xsl:otherwise></xsl:choose>
              <div class="subtitle"><xsl:choose><xsl:when test="$language='fr'">(Trié par <xsl:choose><xsl:when test="$sort='lexeme'">lexème</xsl:when><xsl:otherwise>radical</xsl:otherwise></xsl:choose>)</xsl:when><xsl:otherwise>(Sorted by <xsl:value-of select="$sort"/>)</xsl:otherwise></xsl:choose></div>
            </div>
            <div class="leftpane">
              <xsl:for-each select="$root/lift/entry">
                <xsl:sort select="node()[name()=$sortpath]/form[@lang='yko']/text/translate(.,$accent,$noaccent)" collation="http://saxon.sf.net/collation?rules={encode-for-uri($rules)}"/>
               <xsl:if test="node()[name()=$sortpath]/form/text[starts-with(translate(., $accent, $noaccent), $letter)]">
                  <xsl:call-template name="dictentry">
                    <xsl:with-param name="language" select="$language"/>
                    <xsl:with-param name="fletter" select="$letter"/>
                    <xsl:with-param name="sort" select="$sort"/>
                    <xsl:with-param name="display" select="$display"/>
                    <xsl:with-param name="toggle" select="$toggle"/>
                  </xsl:call-template>
                </xsl:if>
              </xsl:for-each>
            </div>
            <xsl:call-template name="alphnav">
              <xsl:with-param name="language" select="$language"/>
              <xsl:with-param name="fletter" select="$letter"/>
              <xsl:with-param name="sort" select="$sort"/>
              <xsl:with-param name="display" select="$display"/>
              <xsl:with-param name="toggle" select="$toggle"/>
            </xsl:call-template>
          </body>
        </html>
      </xsl:result-document>
    </xsl:for-each>
    
  </xsl:template> 
  
  <xsl:template name="dictentry">
    <xsl:param name="language"/>
    <xsl:param name="sort"/>
    <xsl:param name="display"/>
    <xsl:param name="fletter"/>
    <xsl:param name="toggle"/>
    <xsl:variable name="sortpath">
      <xsl:choose>
        <xsl:when test="$sort='lexeme'">citation</xsl:when>
        <xsl:otherwise>lexical-unit</xsl:otherwise>
      </xsl:choose>
    </xsl:variable> 
    <xsl:variable name="entryid" select="@guid"/>
    <xsl:variable name="graminf">
      <xsl:choose>
        <xsl:when test="sense[1]/grammatical-info/@value='Noun'">n. <xsl:value-of select="sense[1]/grammatical-info/trait[@name='inflection-feature']/replace(@value,'.*gender:([\?0-9a]+/?[0-9]*).*','$1')"/><xsl:if test="sense[1]/grammatical-info/trait[@name='inflection-feature']/contains(@value,'num:')"><xsl:text> </xsl:text><xsl:value-of select="sense[1]/grammatical-info/trait[@name='inflection-feature']/replace(@value,'.*num:([a-z]+).*','$1')"/></xsl:if></xsl:when>
        <xsl:when test="sense[1]/grammatical-info/@value='Verb'">v.</xsl:when>
        <xsl:when test="sense[1]/grammatical-info/@value='Adverb'">adv.</xsl:when>
        <xsl:when test="sense[1]/grammatical-info/@value='Preposition'">prep.</xsl:when>
        <xsl:when test="sense[1]/grammatical-info/@value='Nominal Adjective'">adj. nom.</xsl:when>
        <xsl:when test="sense[1]/grammatical-info/@value='Inflectional Adjective'">adj. infl.</xsl:when>
        <xsl:when test="sense[1]/grammatical-info/@value='Pronoun'">pro.</xsl:when>
        <xsl:when test="sense[1]/grammatical-info/@value='Interrogative pro-form'">pro. int.</xsl:when>
        <xsl:when test="sense[1]/grammatical-info/@value='Possessive pronoun'">pro. poss.</xsl:when>
        <xsl:when test="sense[1]/grammatical-info/@value='Cardinal numeral'">num. card.</xsl:when>
        <xsl:when test="sense[1]/grammatical-info/@value='Ordinal numeral'">num. ord.</xsl:when>
        <xsl:when test="sense[1]/grammatical-info/@value='Participle'">ptcp.</xsl:when>
        <xsl:when test="sense[1]/grammatical-info/@value='Coordinating connective'">coord.</xsl:when>
        <xsl:when test="sense[1]/grammatical-info/@value='Connective'">conn.</xsl:when>
        <xsl:when test="sense[1]/grammatical-info/@value='Quantifier'">quant.</xsl:when>
        <xsl:otherwise></xsl:otherwise>
      </xsl:choose>
    </xsl:variable>
   <div>
      <a class="shift" id="{@guid}"><xsl:text> </xsl:text></a>
        <b>
          <xsl:choose>
            <xsl:when test="starts-with(lexical-unit/form[@lang='yko']/text,$hyphen) or ends-with(ancestor::entry/lexical-unit/form[@lang='yko']/text,$hyphen)"><xsl:value-of select="lexical-unit/form[@lang='yko']/text"/></xsl:when>
            <xsl:otherwise><xsl:value-of select="citation/form[@lang='yko']/text"/></xsl:otherwise>
          </xsl:choose></b> [<xsl:value-of select="pronunciation/form/text"/>] <i><xsl:value-of select="$graminf"/></i> 
        <xsl:if test="boolean(translate(citation/form[@lang='yko']/text,$accent,$noaccent)!=translate(lexical-unit/form[@lang='yko']/text,$accent,$noaccent)) or boolean(field[@type='Surface Plural Form']) or boolean(trait[@name='Irregular Inflection'])">
          <xsl:text> (</xsl:text><xsl:if test="boolean(translate(citation/form[@lang='yko']/text,$accent,$noaccent)!=translate(lexical-unit/form[@lang='yko']/text,$accent,$noaccent))"><span class="label">
            <xsl:choose>
              <xsl:when test="$language='fr'">Radical : </xsl:when>
              <xsl:otherwise>Stem: </xsl:otherwise>
            </xsl:choose></span><i><xsl:value-of select="lexical-unit/form/text"/></i>
          </xsl:if>
          <xsl:if test="boolean(field[@type='Surface Plural Form'])">
            <span class="label"> pl: </span><i><xsl:value-of select="field[@type='Surface Plural Form']/form/text"/></i>
          </xsl:if>
          <xsl:if test="boolean(trait[@name='Irregular Inflection'])">
            <span class="label"> irreg. infl.: </span> <xsl:value-of select="trait[@name='Irregular Inflection']/@value"/>
          </xsl:if>)
        </xsl:if>
      <xsl:for-each select="pronunciation/media">
        <xsl:element name="a">
          <xsl:attribute name="href">audio/<xsl:value-of select='@href'/></xsl:attribute><xsl:attribute name="target">_blank</xsl:attribute><img src="images/Speaker_Icon_gray.png" height="20" width="20" />
        </xsl:element>
      </xsl:for-each>
      <xsl:for-each select="pronunciation/field[@type='tone']"><span class="label">
        <xsl:choose>
          <xsl:when test="$language='fr'"> Ton: </xsl:when>
          <xsl:otherwise> Tone: </xsl:otherwise>
        </xsl:choose></span><span class="tone"><xsl:value-of select="form/text"></xsl:value-of></span>
      </xsl:for-each>
      <xsl:if test="boolean(trait[@name='Root Tone Melody'])">
        <span class="label"><xsl:choose>
          <xsl:when test="$language='fr'"> Mélodie tonale de la racine : </xsl:when>
          <xsl:otherwise> Root Tone Melody: </xsl:otherwise>
        </xsl:choose></span><xsl:value-of select="trait[@name='Root Tone Melody']/@value"/>
      </xsl:if>
    </div>
    <div class="lexrel">
      <xsl:if test="boolean(relation[@type='_component-lexeme'])">
        <div>
          <xsl:for-each select="relation[@type='_component-lexeme']">
              <xsl:variable name="guid" select="replace(@ref,'.*_','')"/>
              <xsl:if test="not(starts-with(@ref,'⁺'))">
                <span class="label">
                  <xsl:if test="@order='0'">
                    <xsl:choose>
                      <xsl:when test="$language='fr'"> Composé de  : </xsl:when>
                      <xsl:otherwise> Subentry of: </xsl:otherwise>
                    </xsl:choose>
                  </xsl:if>
                </span>
                <xsl:choose>
                  <xsl:when test="$fletter='all'"><a href="#{$guid}"><xsl:value-of select="replace(@ref,'([0-9])|(_).*','')"/></a></xsl:when>
                  <xsl:otherwise><a href="{../../entry[@guid=$guid]/node()[name()=$sortpath]/form[@lang='yko']/text/substring(translate(.,$accent,$noaccent),1,1)}_{$sort}_{$toggle}_{$display}_{$language}.html#{$guid}"><xsl:value-of select="replace(@ref,'[0-9,_].*','')"/></a></xsl:otherwise>
                </xsl:choose>
                <xsl:if test="position()!=last()">; </xsl:if>
              </xsl:if>
            </xsl:for-each>
          </div>
        </xsl:if>
        <xsl:for-each select="relation[@type!='_component-lexeme' and @type!='Compare' and not(starts-with(@ref,'⁺'))]">
          <xsl:variable name="guid" select="replace(@ref,'.*_','')"/>
          <xsl:if test="(boolean(preceding-sibling::relation[@type!='_component-lexeme' and @type!='Compare' and not(starts-with(@ref,'⁺'))]) and (@type!=preceding-sibling::relation[@type!='_component-lexeme' and @type!='Compare' and not(starts-with(@ref,'⁺'))]/@type)) or not(boolean(preceding-sibling::relation[@type!='_component-lexeme' and @type!='Compare' and not(starts-with(@ref,'⁺'))]))">
            <span class="label">
              <xsl:choose>
                <xsl:when test="$language='fr' and @type='Homophonous Root'"> Radical homophone : </xsl:when>
                <xsl:when test="$language='fr' and @type='Minimal Tone Pair'"> Paire Minimale Tonale : </xsl:when>
                <xsl:otherwise> <xsl:value-of select="@type"/>: </xsl:otherwise>
              </xsl:choose>
            </span>
          </xsl:if>
            <xsl:choose>
              <xsl:when test="$fletter='all'"><a href="#{$guid}"><xsl:value-of select="replace(@ref,'[0-9,_].*','')"/></a></xsl:when>
              <xsl:otherwise><a href="{../../entry[@guid=$guid]/node()[name()=$sortpath]/form[@lang='yko']/text/substring(translate(.,$accent,$noaccent),1,1)}_{$sort}_{$toggle}_{$display}_{$language}.html#{$guid}"><xsl:value-of select="replace(@ref,'[0-9,_].*','')"/></a></xsl:otherwise>
            </xsl:choose>
            <xsl:if test="@type=following-sibling::relation[1][@type!='_component-lexeme' and @type!='Compare' and not(starts-with(@ref,'⁺'))]/@type">; </xsl:if>
            <xsl:if test="boolean(following-sibling::relation[1][@type!='_component-lexeme' and @type!='Compare' and not(starts-with(@ref,'⁺'))]) and (@type!=following-sibling::relation[1][@type!='_component-lexeme' and @type!='Compare' and not(starts-with(@ref,'⁺'))]/@type)"><br/></xsl:if>
        </xsl:for-each>
        
        
        <!-- Adds links to subentries. Heavy processing load. Comment out for all but final transformation to speed up testing. -->
        <!--
        <xsl:if test="boolean(../entry/relation[replace(@ref,'.*_','')=$entryid])">
          <div>
            <xsl:for-each select="../entry/relation[replace(@ref,'.*_','')=$entryid]">
              <xsl:if test="position()=1">
                <span class="label"><xsl:choose>
                  <xsl:when test="$language='fr'">Sous-entrées : </xsl:when>
                  <xsl:otherwise> Subentries: </xsl:otherwise>
                </xsl:choose></span>
              </xsl:if>
              <xsl:choose>
                <xsl:when test="$fletter='all'"><a href="#{../@guid}"><xsl:value-of select="../citation/form[@lang='yko']/text"/></a></xsl:when>
              </xsl:choose>
              <a href="{../node()[name()=$sortpath]/form[@lang='yko']/text/substring(translate(.,$accent,$noaccent),1,1)}_{$sort}_{$toggle}_{$display}_{$language}.html#{../@guid}"><xsl:value-of select="../citation/form[@lang='yko']/text"/></a>
              <xsl:if test="position()!=last()">; </xsl:if>
            </xsl:for-each>
          </div>
        </xsl:if>
        -->
        
        
    </div>
    <div class="sens">
      <xsl:for-each select="sense">
        <xsl:variable name="graminf2">
          <xsl:choose>
            <xsl:when test="grammatical-info/@value='Noun'">n. <xsl:value-of select="grammatical-info/trait[@name='inflection-feature']/replace(@value,'.*gender:([\?0-9a]+/?[0-9]*).*','$1')"/><xsl:if test="grammatical-info/trait[@name='inflection-feature']/contains(@value,'num:')"><xsl:text> </xsl:text><xsl:value-of select="grammatical-info/trait[@name='inflection-feature']/replace(@value,'.*num:([a-z]+).*','$1')"/></xsl:if></xsl:when>
            <xsl:when test="grammatical-info/@value='Verb'">v.</xsl:when>
            <xsl:when test="grammatical-info/@value='Adverb'">adv.</xsl:when>
            <xsl:when test="grammatical-info/@value='Preposition'">prep.</xsl:when>
            <xsl:when test="grammatical-info/@value='Nominal Adjective'">adj. nom.</xsl:when>
            <xsl:when test="grammatical-info/@value='Inflectional Adjective'">adj. infl.</xsl:when>
            <xsl:when test="grammatical-info/@value='Pronoun'">pro.</xsl:when>
            <xsl:when test="grammatical-info/@value='Interrogative pro-form'">pro. int.</xsl:when>
            <xsl:when test="grammatical-info/@value='Possessive pronoun'">pro. poss.</xsl:when>
            <xsl:when test="grammatical-info/@value='Cardinal numeral'">num. card.</xsl:when>
            <xsl:when test="grammatical-info/@value='Ordinal numeral'">num. ord.</xsl:when>
            <xsl:when test="grammatical-info/@value='Participle'">ptcp.</xsl:when>
            <xsl:when test="grammatical-info/@value='Coordinating connective'">coord.</xsl:when>
            <xsl:when test="grammatical-info/@value='Connective'">conn.</xsl:when>
            <xsl:when test="grammatical-info/@value='Quantifier'">quant.</xsl:when>
            <xsl:otherwise></xsl:otherwise>
          </xsl:choose>
        </xsl:variable>
        <xsl:if test="trait[@name='sense-type' and @value='definition']">
          <b><xsl:number value="position()" format="1" />. </b><xsl:value-of select="definition/form[@lang=$language]/text/text()"/>
          <xsl:if test="gloss[@lang=$language]/text[contains(.,$hyphen) or contains(.,' ')]"> (<span class="label">
            <xsl:choose><xsl:when test="$language='fr'">Glose : </xsl:when><xsl:otherwise>Gloss: </xsl:otherwise></xsl:choose>
            </span><xsl:value-of select="gloss[@lang=$language]/text/text()"/>)
          </xsl:if>
          <xsl:if test="$graminf!=$graminf2">
            <b><xsl:text> </xsl:text>(<i><xsl:value-of select="$graminf2"/></i>)</b>
          </xsl:if>
          <xsl:if test="boolean(field[@type='SILCAWL Number'])">
            <xsl:text> [</xsl:text><span class="label">
              <xsl:choose>
                <xsl:when test="$language='fr'">Numéro SILCAWL : </xsl:when>
                <xsl:otherwise>SILCAWL Number: </xsl:otherwise>
              </xsl:choose></span><xsl:value-of select="field[@type='SILCAWL Number']/form/text"/><xsl:text>] </xsl:text></xsl:if><br/>
        </xsl:if>
      </xsl:for-each>
    </div>
    <xsl:if test="$toggle='on'">
      <div id="examples">
        <xsl:if test="boolean(sense/example)">
          <span><br/><b>Examples:</b></span><br/>
          <xsl:for-each select="sense[child::trait[@name='sense-type' and @value='frame']]/example">
            <ul>
              <li>
                <i><xsl:value-of select="form/text"/></i><a href="audio/{field[@type='Frame Recording']/form[@lang='yko-Zxxx-x-audio']/text}" target="_blank"><img src="images/Speaker_Icon_gray.png" height="20" width="20" /></a>
                <xsl:for-each select="field[@type='Frame Recording Duplicate']/form/text/span[@lang='en' and @class='Hyperlink']">
                  <a href="audio/{replace(replace(.,'\.wav.*','.wav'),'C:\\ProgramData\\SIL\\FieldWorks\\Projects\\Yasa\\LinkedFiles\\AudioVisual\\','')}" target="_blank"><img src="images/Speaker_Icon_gray.png" height="20" width="20" /></a>
                </xsl:for-each><br/>
                <xsl:if test="boolean(field[@type='Frame Gloss']/form[@lang=$language])"><xsl:value-of select="field[@type='Frame Gloss']/form[@lang=$language]"/><br/></xsl:if>
                '<xsl:value-of select="translation[@type='Free translation']/form[@lang=$language]/text"/>'<br/>
                [<xsl:value-of select="field[@type='Phonetic']/form/text"/>]<br/>
                <span class="tone"><xsl:value-of select="field[@type='Frame Tone']/form/text"/></span><br/>
                <span class="label">
                  <xsl:choose>
                    <xsl:when test="$language='fr'">Type de cadre : </xsl:when>
                    <xsl:otherwise>Frame Type: </xsl:otherwise>
                  </xsl:choose></span><xsl:value-of select="trait[@name='Frame Type']/@value" disable-output-escaping="yes"/>
              </li>
            </ul>
          </xsl:for-each>
        </xsl:if>
      </div>
    </xsl:if>
  </xsl:template>

  <xsl:template name="alphnav">
    <xsl:param name="language"/>
    <xsl:param name="sort"/>
    <xsl:param name="display"/>
    <xsl:param name="fletter"/>
    <xsl:param name="toggle"/> 
    <xsl:variable name="sortpath">
      <xsl:choose>
        <xsl:when test="$sort='lexeme'">citation</xsl:when>
        <xsl:otherwise>lexical-unit</xsl:otherwise>
      </xsl:choose>
    </xsl:variable> 
    <div class="rightpane">
      <a href="{$fletter}_{$sort}_{$toggle}_{$display}_en.html"><img src="images/eng.jpg"/></a><a href="{$fletter}_{$sort}_{$toggle}_{$display}_fr.html"><img src="images/fr.jpg"/></a><br/><br/>
      <a id="home" href="index_{$language}.html">
        <xsl:choose>
          <xsl:when test="$language='fr'">Accueil</xsl:when>
          <xsl:otherwise>Home</xsl:otherwise>
        </xsl:choose>
      </a><br/>
      <a href="all_lexeme_ascending_dat_{$language}.html">
        <xsl:choose>
          <xsl:when test="$language='fr'">Affichage Base de Données</xsl:when>
          <xsl:otherwise>Database View</xsl:otherwise>
        </xsl:choose>
      </a><br/><br/>
      <span class="subheader"><b><xsl:choose><xsl:when  test="$language='fr'">Navigation du dictionnaire</xsl:when><xsl:otherwise>Dictionary Navigation</xsl:otherwise></xsl:choose></b></span><br/><br/>
      <span><b><xsl:choose><xsl:when test="$language='fr'">Entrées Par Première Lettre :</xsl:when><xsl:otherwise>Entries By First Letter:</xsl:otherwise></xsl:choose></b></span><br/>
      <xsl:for-each select="distinct-values($root/lift/entry/node()[name()=$sortpath]/form/text/substring(translate(., $accent, $noaccent),1,1))">
        <xsl:sort select='.' collation="http://saxon.sf.net/collation?rules={encode-for-uri($rules)}"/>
        <xsl:element name="a"><xsl:attribute name="href"><xsl:value-of select="."/>_<xsl:value-of select="$sort"/>_<xsl:value-of select="$toggle"/>_<xsl:value-of select="$display"/>_<xsl:value-of select="$language"/>.html</xsl:attribute><span class="letterheader"><xsl:value-of select="."/></span></xsl:element> | 
      </xsl:for-each>
      <a href="all_{$sort}_{$toggle}_{$display}_{$language}.html"><xsl:choose><xsl:when test="$language='fr'">Toutes Les Entrées</xsl:when><xsl:otherwise>All Entries</xsl:otherwise></xsl:choose></a><br/><br/>
      <span><b><xsl:choose><xsl:when test="$language='fr'">Trier Par :</xsl:when><xsl:otherwise>Sort By:</xsl:otherwise></xsl:choose></b></span><br/>
      <a href="{$fletter}_lexeme_{$toggle}_{$display}_{$language}.html"><xsl:choose><xsl:when test="$language='fr'">Lexème</xsl:when><xsl:otherwise>Lexeme</xsl:otherwise></xsl:choose></a> | 
      <a href="{$fletter}_stem_{$toggle}_{$display}_{$language}.html"><xsl:choose><xsl:when test="$language='fr'">Radical</xsl:when><xsl:otherwise>Stem</xsl:otherwise></xsl:choose></a><br/><br/><xsl:choose>
        <xsl:when test="$toggle='on'">
          <a href="{$fletter}_{$sort}_off_{$display}_{$language}.html">
            <xsl:choose>
              <xsl:when test="$language='fr'">Cacher Les Examples</xsl:when>
              <xsl:otherwise>Hide Examples</xsl:otherwise>
            </xsl:choose></a>
        </xsl:when>
        <xsl:otherwise>
          <a href="{$fletter}_{$sort}_on_{$display}_{$language}.html">
            <xsl:choose>
              <xsl:when test="$language='fr'">Montrer Les Examples</xsl:when>
              <xsl:otherwise>Show Examples</xsl:otherwise>
            </xsl:choose></a>
        </xsl:otherwise>
      </xsl:choose>
    </div>
  </xsl:template>
  
</xsl:stylesheet>