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
    <xsl:param name="display"/>
    <xsl:param name="sort"/>
    <xsl:param name="dir"/>
    <xsl:for-each select="distinct-values(entry/sense/definition/form/@lang)">
      <xsl:call-template name="datview">
        <xsl:with-param name="language" select="."/>
        <xsl:with-param name="display">dat</xsl:with-param>
        <xsl:with-param name="sort">lexeme</xsl:with-param>
        <xsl:with-param name="dir">ascending</xsl:with-param>
      </xsl:call-template>
      <xsl:call-template name="datview">
        <xsl:with-param name="language" select="."/>
        <xsl:with-param name="display">dat</xsl:with-param>
        <xsl:with-param name="sort">lexeme</xsl:with-param>
        <xsl:with-param name="dir">descending</xsl:with-param>
      </xsl:call-template>
      <xsl:call-template name="datview">
        <xsl:with-param name="language" select="."/>
        <xsl:with-param name="display">dat</xsl:with-param>
        <xsl:with-param name="sort">stem</xsl:with-param>
        <xsl:with-param name="dir">ascending</xsl:with-param>
      </xsl:call-template>
      <xsl:call-template name="datview">
        <xsl:with-param name="language" select="."/>
        <xsl:with-param name="display">dat</xsl:with-param>
        <xsl:with-param name="sort">stem</xsl:with-param>
        <xsl:with-param name="dir">descending</xsl:with-param>
      </xsl:call-template>
      <xsl:call-template name="datview">
        <xsl:with-param name="language" select="."/>
        <xsl:with-param name="display">dat</xsl:with-param>
        <xsl:with-param name="sort">silnum</xsl:with-param>
        <xsl:with-param name="dir">ascending</xsl:with-param>
      </xsl:call-template>
      <xsl:call-template name="datview">
        <xsl:with-param name="language" select="."/>
        <xsl:with-param name="display">dat</xsl:with-param>
        <xsl:with-param name="sort">silnum</xsl:with-param>
        <xsl:with-param name="dir">descending</xsl:with-param>
      </xsl:call-template>
      <xsl:call-template name="datview">
        <xsl:with-param name="language" select="."/>
        <xsl:with-param name="display">dat</xsl:with-param>
        <xsl:with-param name="sort">phonetic</xsl:with-param>
        <xsl:with-param name="dir">ascending</xsl:with-param>
      </xsl:call-template>
      <xsl:call-template name="datview">
        <xsl:with-param name="language" select="."/>
        <xsl:with-param name="display">dat</xsl:with-param>
        <xsl:with-param name="sort">phonetic</xsl:with-param>
        <xsl:with-param name="dir">descending</xsl:with-param>
      </xsl:call-template>
      <xsl:call-template name="datview">
        <xsl:with-param name="language" select="."/>
        <xsl:with-param name="display">dat</xsl:with-param>
        <xsl:with-param name="sort">def</xsl:with-param>
        <xsl:with-param name="dir">ascending</xsl:with-param>
      </xsl:call-template>
      <xsl:call-template name="datview">
        <xsl:with-param name="language" select="."/>
        <xsl:with-param name="display">dat</xsl:with-param>
        <xsl:with-param name="sort">def</xsl:with-param>
        <xsl:with-param name="dir">descending</xsl:with-param>
      </xsl:call-template>
      <xsl:call-template name="datview">
        <xsl:with-param name="language" select="."/>
        <xsl:with-param name="display">dat</xsl:with-param>
        <xsl:with-param name="sort">gloss</xsl:with-param>
        <xsl:with-param name="dir">ascending</xsl:with-param>
      </xsl:call-template>
      <xsl:call-template name="datview">
        <xsl:with-param name="language" select="."/>
        <xsl:with-param name="display">dat</xsl:with-param>
        <xsl:with-param name="sort">gloss</xsl:with-param>
        <xsl:with-param name="dir">descending</xsl:with-param>
      </xsl:call-template>
      <xsl:call-template name="datview">
        <xsl:with-param name="language" select="."/>
        <xsl:with-param name="display">dat</xsl:with-param>
        <xsl:with-param name="sort">graminf</xsl:with-param>
        <xsl:with-param name="dir">ascending</xsl:with-param>
      </xsl:call-template>
      <xsl:call-template name="datview">
        <xsl:with-param name="language" select="."/>
        <xsl:with-param name="display">dat</xsl:with-param>
        <xsl:with-param name="sort">graminf</xsl:with-param>
        <xsl:with-param name="dir">descending</xsl:with-param>
      </xsl:call-template>
      <xsl:call-template name="datview">
        <xsl:with-param name="language" select="."/>
        <xsl:with-param name="display">dat</xsl:with-param>
        <xsl:with-param name="sort">tones</xsl:with-param>
        <xsl:with-param name="dir">ascending</xsl:with-param>
      </xsl:call-template>
      <xsl:call-template name="datview">
        <xsl:with-param name="language" select="."/>
        <xsl:with-param name="display">dat</xsl:with-param>
        <xsl:with-param name="sort">tones</xsl:with-param>
        <xsl:with-param name="dir">descending</xsl:with-param>
      </xsl:call-template>
      <xsl:call-template name="datview">
        <xsl:with-param name="language" select="."/>
        <xsl:with-param name="display">dat</xsl:with-param>
        <xsl:with-param name="sort">sound</xsl:with-param>
        <xsl:with-param name="dir">ascending</xsl:with-param>
      </xsl:call-template>
      <xsl:call-template name="datview">
        <xsl:with-param name="language" select="."/>
        <xsl:with-param name="display">dat</xsl:with-param>
        <xsl:with-param name="sort">sound</xsl:with-param>
        <xsl:with-param name="dir">descending</xsl:with-param>
      </xsl:call-template>
      <xsl:call-template name="datview">
        <xsl:with-param name="language" select="."/>
        <xsl:with-param name="display">dat</xsl:with-param>
        <xsl:with-param name="sort">melody</xsl:with-param>
        <xsl:with-param name="dir">ascending</xsl:with-param>
      </xsl:call-template>
      <xsl:call-template name="datview">
        <xsl:with-param name="language" select="."/>
        <xsl:with-param name="display">dat</xsl:with-param>
        <xsl:with-param name="sort">melody</xsl:with-param>
        <xsl:with-param name="dir">descending</xsl:with-param>
      </xsl:call-template>
      <xsl:call-template name="datview">
        <xsl:with-param name="language" select="."/>
        <xsl:with-param name="display">dat</xsl:with-param>
        <xsl:with-param name="sort">pl</xsl:with-param>
        <xsl:with-param name="dir">ascending</xsl:with-param>
      </xsl:call-template>
      <xsl:call-template name="datview">
        <xsl:with-param name="language" select="."/>
        <xsl:with-param name="display">dat</xsl:with-param>
        <xsl:with-param name="sort">pl</xsl:with-param>
        <xsl:with-param name="dir">descending</xsl:with-param>
      </xsl:call-template>
      <xsl:call-template name="datview">
        <xsl:with-param name="language" select="."/>
        <xsl:with-param name="display">dat</xsl:with-param>
        <xsl:with-param name="sort">irreg</xsl:with-param>
        <xsl:with-param name="dir">ascending</xsl:with-param>
      </xsl:call-template>
      <xsl:call-template name="datview">
        <xsl:with-param name="language" select="."/>
        <xsl:with-param name="display">dat</xsl:with-param>
        <xsl:with-param name="sort">irreg</xsl:with-param>
        <xsl:with-param name="dir">descending</xsl:with-param>
      </xsl:call-template>
      <xsl:call-template name="datview">
        <xsl:with-param name="language" select="."/>
        <xsl:with-param name="display">dat</xsl:with-param>
        <xsl:with-param name="sort">framerec</xsl:with-param>
        <xsl:with-param name="dir">ascending</xsl:with-param>
      </xsl:call-template>
      <xsl:call-template name="datview">
        <xsl:with-param name="language" select="."/>
        <xsl:with-param name="display">dat</xsl:with-param>
        <xsl:with-param name="sort">framerec</xsl:with-param>
        <xsl:with-param name="dir">descending</xsl:with-param>
      </xsl:call-template>
      <xsl:call-template name="datview">
        <xsl:with-param name="language" select="."/>
        <xsl:with-param name="display">dat</xsl:with-param>
        <xsl:with-param name="sort">frames</xsl:with-param>
        <xsl:with-param name="dir">ascending</xsl:with-param>
      </xsl:call-template>
      <xsl:call-template name="datview">
        <xsl:with-param name="language" select="."/>
        <xsl:with-param name="display">dat</xsl:with-param>
        <xsl:with-param name="sort">frames</xsl:with-param>
        <xsl:with-param name="dir">descending</xsl:with-param>
      </xsl:call-template>
      <xsl:call-template name="datview">
        <xsl:with-param name="language" select="."/>
        <xsl:with-param name="display">dat</xsl:with-param>
        <xsl:with-param name="sort">translation</xsl:with-param>
        <xsl:with-param name="dir">ascending</xsl:with-param>
      </xsl:call-template>
      <xsl:call-template name="datview">
        <xsl:with-param name="language" select="."/>
        <xsl:with-param name="display">dat</xsl:with-param>
        <xsl:with-param name="sort">translation</xsl:with-param>
        <xsl:with-param name="dir">descending</xsl:with-param>
      </xsl:call-template>
      <xsl:call-template name="datview">
        <xsl:with-param name="language" select="."/>
        <xsl:with-param name="display">dat</xsl:with-param>
        <xsl:with-param name="sort">frphonetic</xsl:with-param>
        <xsl:with-param name="dir">ascending</xsl:with-param>
      </xsl:call-template>
      <xsl:call-template name="datview">
        <xsl:with-param name="language" select="."/>
        <xsl:with-param name="display">dat</xsl:with-param>
        <xsl:with-param name="sort">frphonetic</xsl:with-param>
        <xsl:with-param name="dir">descending</xsl:with-param>
      </xsl:call-template>
      <xsl:call-template name="datview">
        <xsl:with-param name="language" select="."/>
        <xsl:with-param name="display">dat</xsl:with-param>
        <xsl:with-param name="sort">frtone</xsl:with-param>
        <xsl:with-param name="dir">ascending</xsl:with-param>
      </xsl:call-template>
      <xsl:call-template name="datview">
        <xsl:with-param name="language" select="."/>
        <xsl:with-param name="display">dat</xsl:with-param>
        <xsl:with-param name="sort">frtone</xsl:with-param>
        <xsl:with-param name="dir">descending</xsl:with-param>
      </xsl:call-template>
      <xsl:call-template name="datview">
        <xsl:with-param name="language" select="."/>
        <xsl:with-param name="display">dat</xsl:with-param>
        <xsl:with-param name="sort">frtype</xsl:with-param>
        <xsl:with-param name="dir">ascending</xsl:with-param>
      </xsl:call-template>
      <xsl:call-template name="datview">
        <xsl:with-param name="language" select="."/>
        <xsl:with-param name="display">dat</xsl:with-param>
        <xsl:with-param name="sort">frtype</xsl:with-param>
        <xsl:with-param name="dir">descending</xsl:with-param>
      </xsl:call-template>
    </xsl:for-each>
  </xsl:template>
  
  <xsl:template name="datview">
    <xsl:param name="language"/>
    <xsl:param name="display"/>
    <xsl:param name="sort"/>
    <xsl:param name="dir"/>
    <xsl:variable name="sortpath">
      <xsl:choose>
        <xsl:when test="$sort='stem'">lexical-unit</xsl:when>
        <xsl:when test="$sort='phonetic'">pronunciation</xsl:when>
        <xsl:when test="$sort='sound'">pronunciation</xsl:when>
        <xsl:otherwise>citation</xsl:otherwise>
      </xsl:choose>
    </xsl:variable> 
    <xsl:variable name="sortatt">
      <xsl:choose>
        <xsl:when test="$sort='silnum'">SILCAWL Number</xsl:when>
        <xsl:otherwise></xsl:otherwise>
      </xsl:choose>
    </xsl:variable>
    <xsl:variable name="sortname">
      <xsl:choose>
        <xsl:when test="$sort='lexeme' and $language='fr'">lexème</xsl:when>
        <xsl:when test="$sort='lexeme' and $language='en'">lexeme</xsl:when>
        <xsl:when test="$sort='stem' and $language='fr'">radical</xsl:when>
        <xsl:when test="$sort='stem' and $language='en'">stem</xsl:when>
        <xsl:when test="$sort='pl' and $language='fr'">pluriel</xsl:when>
        <xsl:when test="$sort='pl' and $language='en'">plural</xsl:when>
        <xsl:when test="$sort='irreg' and $language='fr'">flexion irrégulière</xsl:when>
        <xsl:when test="$sort='irreg' and $language='en'">irregular inflection</xsl:when>
        <xsl:when test="$sort='phonetic' and $language='fr'">forme phonétique</xsl:when>
        <xsl:when test="$sort='phonetic' and $language='en'">phonetic form</xsl:when>
        <xsl:when test="$sort='sound' and $language='fr'">son</xsl:when>
        <xsl:when test="$sort='sound' and $language='en'">sound</xsl:when>
        <xsl:when test="$sort='tones' and $language='fr'">ton du radicale</xsl:when>
        <xsl:when test="$sort='tones' and $language='en'">stem tone</xsl:when>
        <xsl:when test="$sort='melody' and $language='fr'">root melody</xsl:when>
        <xsl:when test="$sort='melody' and $language='en'">mélodie de la racine</xsl:when>
        <xsl:when test="$sort='silnum' and $language='fr'">numéro SILCAWL</xsl:when>
        <xsl:when test="$sort='silnum' and $language='en'">SILCAWL number</xsl:when>
        <xsl:when test="$sort='def' and $language='fr'">définition</xsl:when>
        <xsl:when test="$sort='def' and $language='en'">definition</xsl:when>
        <xsl:when test="$sort='gloss' and $language='fr'">glose</xsl:when>
        <xsl:when test="$sort='gloss' and $language='en'">gloss</xsl:when>
        <xsl:when test="$sort='graminf' and $language='fr'">information grammaticale</xsl:when>
        <xsl:when test="$sort='stem' and $language='en'">grammatical information</xsl:when>
        <xsl:when test="$sort='frames' and $language='fr'">cadre</xsl:when>
        <xsl:when test="$sort='frames' and $language='en'">frame</xsl:when>
        <xsl:when test="$sort='framerec' and $language='fr'">enregistrement du cadre</xsl:when>
        <xsl:when test="$sort='framerec' and $language='en'">frame recording</xsl:when>
        <xsl:when test="$sort='translation' and $language='fr'">traduction</xsl:when>
        <xsl:when test="$sort='translation' and $language='en'">translation</xsl:when>
        <xsl:when test="$sort='frphonetic' and $language='fr'">forme phonétique du cadre</xsl:when>
        <xsl:when test="$sort='frphonetic' and $language='en'">frame phonetic form</xsl:when>
        <xsl:when test="$sort='frtone' and $language='fr'">ton du cadre</xsl:when>
        <xsl:when test="$sort='frtone' and $language='en'">frame tone</xsl:when>
        <xsl:when test="$sort='frtype' and $language='fr'">type de cadre</xsl:when>
        <xsl:when test="$sort='frtype' and $language='en'">frame type</xsl:when>
      </xsl:choose>
    </xsl:variable>
    <xsl:result-document href="../all_{$sort}_{$dir}_{$display}_{$language}.html" format="html">
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
          <div class="titledat"><xsl:choose><xsl:when test="$language='fr'">Affichage Base de Données</xsl:when><xsl:otherwise>Database View</xsl:otherwise></xsl:choose>
            <div id="langlink">
              <a href="all_{$sort}_{$dir}_{$display}_en.html"><img src="images/eng.jpg"/></a><a href="all_{$sort}_{$dir}_{$display}_fr.html"><img src="images/fr.jpg"/></a><br/>
              <a id="home" href="index_{$language}.html">
                <xsl:choose>
                  <xsl:when test="$language='fr'">Accueil</xsl:when>
                  <xsl:otherwise>Home</xsl:otherwise>
                </xsl:choose>
              </a><br/>
              <a href="a_lexeme_off_dict_{$language}.html">
                <xsl:choose>
                  <xsl:when test="$language='fr'">Affichage Dictionnaire</xsl:when>
                  <xsl:otherwise>Dictionary View</xsl:otherwise>
                </xsl:choose>
              </a>
            </div>
            <div class="subtitle">
              <xsl:choose>
                <xsl:when test="$language='fr'">(Trié par <xsl:value-of select="$sortname"/>)</xsl:when>
                <xsl:otherwise>(Sorted by <xsl:value-of select="$sortname"/>)</xsl:otherwise>
              </xsl:choose></div>
          </div>
          <div class="leftpane">
          <table cellPadding="0" border="0">
            <tablebody>
              <tr>
                <th class="lexeme"><b>
                  <xsl:choose>
                    <xsl:when test="$language='fr'">Lèxeme : </xsl:when>
                    <xsl:otherwise>Lexeme: </xsl:otherwise>
                  </xsl:choose><a href="all_lexeme_ascending_{$display}_{$language}.html">↑</a><a href="all_lexeme_descending_{$display}_{$language}.html">↓</a></b></th>
                <th class="stem"><b>
                  <xsl:choose>
                    <xsl:when test="$language='fr'">Radical : </xsl:when>
                    <xsl:otherwise>Stem: </xsl:otherwise>
                  </xsl:choose></b><a href="all_stem_ascending_{$display}_{$language}.html">↑</a><a href="all_stem_descending_{$display}_{$language}.html">↓</a></th>
                <th class="pl"><b>
                  <xsl:choose>
                    <xsl:when test="$language='fr'">Pluriel : </xsl:when>
                    <xsl:otherwise>Plural: </xsl:otherwise>
                  </xsl:choose></b><a href="all_pl_ascending_{$display}_{$language}.html">↑</a><a href="all_pl_descending_{$display}_{$language}.html">↓</a></th>
                <th class="irreg"><b>
                  <xsl:choose>
                    <xsl:when test="$language='fr'">Fl. irrég. : </xsl:when>
                    <xsl:otherwise>Irreg. Infl.: </xsl:otherwise>
                  </xsl:choose></b><a href="all_irreg_ascending_{$display}_{$language}.html">↑</a><a href="all_irreg_descending_{$display}_{$language}.html">↓</a></th>
                <th class="phonetic"><b>
                  <xsl:choose>
                    <xsl:when test="$language='fr'">Phonétique : </xsl:when>
                    <xsl:otherwise>Phonetic: </xsl:otherwise>
                  </xsl:choose></b><a href="all_phonetic_ascending_{$display}_{$language}.html">↑</a><a href="all_phonetic_descending_{$display}_{$language}.html">↓</a></th>
                <th class="sounds"><b>
                  <xsl:choose>
                    <xsl:when test="$language='fr'">Son : </xsl:when>
                    <xsl:otherwise>Sound: </xsl:otherwise>
                  </xsl:choose></b><a href="all_sound_ascending_{$display}_{$language}.html">↑</a><a href="all_sound_descending_{$display}_{$language}.html">↓</a></th>
                <th class="tones"><b>
                  <xsl:choose>
                    <xsl:when test="$language='fr'">Ton du rad. : </xsl:when>
                    <xsl:otherwise>Stem tone: </xsl:otherwise>
                  </xsl:choose></b><a href="all_tones_ascending_{$display}_{$language}.html">↑</a><a href="all_tones_descending_{$display}_{$language}.html">↓</a></th>
                <th class="melody"><b>
                  <xsl:choose>
                    <xsl:when test="$language='fr'">Mélodie : </xsl:when>
                    <xsl:otherwise>Melody: </xsl:otherwise>
                  </xsl:choose></b><a href="all_melody_ascending_{$display}_{$language}.html">↑</a><a href="all_melody_descending_{$display}_{$language}.html">↓</a></th>
                <th class="silnum"><b>
                  <xsl:choose>
                    <xsl:when test="$language='fr'">N° SILCAWL : </xsl:when>
                    <xsl:otherwise>SILCAWL #: </xsl:otherwise>
                  </xsl:choose></b><a href="all_silnum_ascending_{$display}_{$language}.html">↑</a><a href="all_silnum_descending_{$display}_{$language}.html">↓</a></th>
                <th class="def"><b>
                  <xsl:choose>
                    <xsl:when test="$language='fr'">Définition : </xsl:when>
                    <xsl:otherwise>Definition: </xsl:otherwise>
                  </xsl:choose></b><a href="all_def_ascending_{$display}_{$language}.html">↑</a><a href="all_def_descending_{$display}_{$language}.html">↓</a></th>
                <th class="gloss"><b>
                  <xsl:choose>
                    <xsl:when test="$language='fr'">Glose : </xsl:when>
                    <xsl:otherwise>Gloss: </xsl:otherwise>
                  </xsl:choose></b><a href="all_gloss_ascending_{$display}_{$language}.html">↑</a><a href="all_gloss_descending_{$display}_{$language}.html">↓</a></th>
                <th class="graminf"><b>
                  <xsl:choose>
                    <xsl:when test="$language='fr'">Info. grammaticale : </xsl:when>
                    <xsl:otherwise>Grammatical Info: </xsl:otherwise>
                  </xsl:choose></b><a href="all_graminf_ascending_{$display}_{$language}.html">↑</a><a href="all_graminf_descending_{$display}_{$language}.html">↓</a></th>
                <th class="lexrefs"><b>
                  <xsl:choose>
                    <xsl:when test="$language='fr'">Relations lexicales : </xsl:when>
                    <xsl:otherwise>Lexical Relations: </xsl:otherwise>
                  </xsl:choose></b></th>
                <th class="frames"><b>
                  <xsl:choose>
                    <xsl:when test="$language='fr'">Cadres : </xsl:when>
                    <xsl:otherwise>Frames: </xsl:otherwise>
                  </xsl:choose></b><a href="all_frames_ascending_{$display}_{$language}.html">↑</a><a href="all_frames_descending_{$display}_{$language}.html">↓</a></th>
                <th class="framerecs"><b>
                  <xsl:choose>
                    <xsl:when test="$language='fr'">Enreg. du cadre : </xsl:when>
                    <xsl:otherwise>Frame Rec.: </xsl:otherwise>
                  </xsl:choose></b><a href="all_framerec_ascending_{$display}_{$language}.html">↑</a><a href="all_framerec_descending_{$display}_{$language}.html">↓</a></th>
                <th class="translation"><b>
                  <xsl:choose>
                    <xsl:when test="$language='fr'">Traduction : </xsl:when>
                    <xsl:otherwise>Translation: </xsl:otherwise>
                  </xsl:choose></b><a href="all_translation_ascending_{$display}_{$language}.html">↑</a><a href="all_translation_descending_{$display}_{$language}.html">↓</a></th>
                <th class="frphonetic"><b>
                  <xsl:choose>
                    <xsl:when test="$language='fr'">Phonétique du cadre : </xsl:when>
                    <xsl:otherwise>Frame Phonetic: </xsl:otherwise>
                  </xsl:choose></b><a href="all_frphonetic_ascending_{$display}_{$language}.html">↑</a><a href="all_frphonetic_descending_{$display}_{$language}.html">↓</a></th>
                <th class="frtones"><b>
                  <xsl:choose>
                    <xsl:when test="$language='fr'">Ton du cadre : </xsl:when>
                    <xsl:otherwise>Frame Tone: </xsl:otherwise>
                  </xsl:choose></b><a href="all_frtone_ascending_{$display}_{$language}.html">↑</a><a href="all_frtone_descending_{$display}_{$language}.html">↓</a></th>
                <th class="frtype"><b>
                  <xsl:choose>
                    <xsl:when test="$language='fr'">Type de cadre : </xsl:when>
                    <xsl:otherwise>Frame type: </xsl:otherwise>
                  </xsl:choose></b><a href="all_frtype_ascending_{$display}_{$language}.html">↑</a><a href="all_frtype_descending_{$display}_{$language}.html">↓</a></th>
              </tr>
              <xsl:choose>
                <xsl:when test="$sort='silnum'">
                  <xsl:for-each select="$root/lift/entry/sense[*[@name='sense-type' and @value='definition']]">
                    <xsl:sort select="translate(field[@type=$sortatt]/form/text,$accent,$noaccent)" order="{$dir}" collation="http://saxon.sf.net/collation?rules={encode-for-uri($rules)}"/>
                    <xsl:variable name="position" select="position()"/>
                    <xsl:call-template name="entry">
                      <xsl:with-param name="language" select="$language"/>
                      <xsl:with-param name="display" select="$display"/>
                      <xsl:with-param name="sort" select="$sort"/>
                      <xsl:with-param name="dir" select="$dir"/>
                      <xsl:with-param name="position" select="$position"/>
                    </xsl:call-template>
                  </xsl:for-each>
                </xsl:when>
                <xsl:when test="$sort='def'">
                  <xsl:for-each select="$root/lift/entry/sense[*[@name='sense-type' and @value='definition']]">
                    <xsl:sort select="translate(definition/form[@lang=$language]/text,$accent,$noaccent)" order="{$dir}" collation="http://saxon.sf.net/collation?rules={encode-for-uri($rules)}"/>
                    <xsl:variable name="position" select="position()"/>
                    <xsl:call-template name="entry">
                      <xsl:with-param name="language" select="$language"/>
                      <xsl:with-param name="display" select="$display"/>
                      <xsl:with-param name="sort" select="$sort"/>
                      <xsl:with-param name="dir" select="$dir"/>
                      <xsl:with-param name="position" select="$position"/>
                    </xsl:call-template>
                  </xsl:for-each>
                </xsl:when>
                <xsl:when test="$sort='gloss'">
                  <xsl:for-each select="$root/lift/entry/sense[*[@name='sense-type' and @value='definition']]">
                    <xsl:sort select="translate(gloss[@lang=$language]/text,$accent,$noaccent)" order="{$dir}" collation="http://saxon.sf.net/collation?rules={encode-for-uri($rules)}"/>
                    <xsl:variable name="position" select="position()"/>
                    <xsl:call-template name="entry">
                      <xsl:with-param name="language" select="$language"/>
                      <xsl:with-param name="display" select="$display"/>
                      <xsl:with-param name="sort" select="$sort"/>
                      <xsl:with-param name="dir" select="$dir"/>
                      <xsl:with-param name="position" select="$position"/>
                   </xsl:call-template>
                  </xsl:for-each>
                </xsl:when>
                <xsl:when test="$sort='graminf'">
                  <xsl:for-each select="$root/lift/entry/sense[*[@name='sense-type' and @value='definition']]">
                    <xsl:sort select="translate(grammatical-info/@value,$accent,$noaccent)" order="{$dir}" collation="http://saxon.sf.net/collation?rules={encode-for-uri($rules)}"/>
                    <xsl:variable name="position" select="position()"/>
                    <xsl:call-template name="entry">
                      <xsl:with-param name="language" select="$language"/>
                      <xsl:with-param name="display" select="$display"/>
                      <xsl:with-param name="sort" select="$sort"/>
                      <xsl:with-param name="dir" select="$dir"/>
                      <xsl:with-param name="position" select="$position"/>
                   </xsl:call-template>
                  </xsl:for-each>
                </xsl:when>
                <xsl:when test="$sort='tones'">
                  <xsl:for-each select="$root/lift/entry/pronunciation/field[@type='tone']/form/text">
                    <xsl:sort select="." order="{$dir}"/>
                    <xsl:call-template name="entry">
                      <xsl:with-param name="language" select="$language"/>
                      <xsl:with-param name="display" select="$display"/>
                      <xsl:with-param name="sort" select="$sort"/>
                      <xsl:with-param name="dir" select="$dir"/>
                   </xsl:call-template>
                  </xsl:for-each>
                </xsl:when>
                <xsl:when test="$sort='sound'">
                  <xsl:for-each select="$root/lift/entry/pronunciation">
                    <xsl:sort select="media/@href/translate(.,$accent,$noaccent)" order="{$dir}" collation="http://saxon.sf.net/collation?rules={encode-for-uri($rules)}"/>
                    <xsl:call-template name="entry">
                      <xsl:with-param name="language" select="$language"/>
                      <xsl:with-param name="display" select="$display"/>
                      <xsl:with-param name="sort" select="$sort"/>
                      <xsl:with-param name="dir" select="$dir"/>
                    </xsl:call-template>
                  </xsl:for-each>
                </xsl:when>
                <xsl:when test="$sort='melody'">
                  <xsl:for-each select="$root/lift/entry/trait[@name='Root Tone Melody']/@value">
                    <xsl:sort select="." order="{$dir}" collation="http://saxon.sf.net/collation?rules={encode-for-uri($rules)}"/>
                    <xsl:call-template name="entry">
                      <xsl:with-param name="language" select="$language"/>
                      <xsl:with-param name="display" select="$display"/>
                      <xsl:with-param name="sort" select="$sort"/>
                      <xsl:with-param name="dir" select="$dir"/>
                    </xsl:call-template>
                  </xsl:for-each>
                </xsl:when>
                <xsl:when test="$sort='pl'">
                  <xsl:for-each select="$root/lift/entry/field[@type='Surface Plural Form']/form/text">
                    <xsl:sort select="." order="{$dir}" collation="http://saxon.sf.net/collation?rules={encode-for-uri($rules)}"/>
                    <xsl:call-template name="entry">
                      <xsl:with-param name="language" select="$language"/>
                      <xsl:with-param name="display" select="$display"/>
                      <xsl:with-param name="sort" select="$sort"/>
                      <xsl:with-param name="dir" select="$dir"/>
                    </xsl:call-template>
                  </xsl:for-each>
                </xsl:when>
                <xsl:when test="$sort='phonetic'">
                  <xsl:for-each select="$root/lift/entry/pronunciation">
                    <xsl:sort select="form/text" order="{$dir}" collation="http://saxon.sf.net/collation?rules={encode-for-uri($rules)}"/>
                    <xsl:call-template name="entry">
                      <xsl:with-param name="language" select="$language"/>
                      <xsl:with-param name="display" select="$display"/>
                      <xsl:with-param name="sort" select="$sort"/>
                      <xsl:with-param name="dir" select="$dir"/>
                    </xsl:call-template>
                  </xsl:for-each>
                </xsl:when>
                <xsl:when test="$sort='irreg'">
                  <xsl:for-each select="$root/lift/entry/trait[@name='Irregular Inflection']/@value">
                    <xsl:sort select="." order="{$dir}" collation="http://saxon.sf.net/collation?rules={encode-for-uri($rules)}"/>
                    <xsl:call-template name="entry">
                      <xsl:with-param name="language" select="$language"/>
                      <xsl:with-param name="display" select="$display"/>
                      <xsl:with-param name="sort" select="$sort"/>
                      <xsl:with-param name="dir" select="$dir"/>
                    </xsl:call-template>
                  </xsl:for-each>
                </xsl:when>
                <xsl:when test="$sort='frames'">
                  <xsl:for-each select="$root/lift/entry/sense[*[@name='sense-type' and @value='frame']]/example">
                    <xsl:sort select="form/text" order="{$dir}" collation="http://saxon.sf.net/collation?rules={encode-for-uri($rules)}"/>
                    <xsl:variable name="position" select="position()"/>
                    <xsl:call-template name="entry">
                      <xsl:with-param name="language" select="$language"/>
                      <xsl:with-param name="display" select="$display"/>
                      <xsl:with-param name="sort" select="$sort"/>
                      <xsl:with-param name="dir" select="$dir"/>
                      <xsl:with-param name="position" select="$position"/>
                    </xsl:call-template>
                  </xsl:for-each>
                </xsl:when>
                <xsl:when test="$sort='framerec'">
                  <xsl:for-each select="$root/lift/entry/sense[*[@name='sense-type' and @value='frame']]/example/field[@type='Frame Recording']/form[@lang='yko-Zxxx-x-audio']/text
                                                        | $root/lift/entry/sense[*[@name='sense-type' and @value='frame']]/example/field[@type='Frame Recording Duplicate']/form/text/span[@class='Hyperlink']
                                                        | $root/lift/entry/sense[*[@name='sense-type' and @value='frame'] and not(example/field[@type='Frame Recording Duplicate']/form/text/span[@class='Hyperlink']) and not(example/field[@type='Frame Recording']/form[@lang='yko-Zxxx-x-audio']/text)]">
                    <xsl:sort select="replace(replace(.,'\.wav.*','.wav'),'C:\\ProgramData\\SIL\\FieldWorks\\Projects\\Yasa\\LinkedFiles\\AudioVisual\\','')" order="{$dir}" collation="http://saxon.sf.net/collation?rules={encode-for-uri($rules)}"/>
                    <xsl:call-template name="entry">
                      <xsl:with-param name="language" select="$language"/>
                      <xsl:with-param name="display" select="$display"/>
                      <xsl:with-param name="sort" select="$sort"/>
                      <xsl:with-param name="dir" select="$dir"/>
                    </xsl:call-template>
                  </xsl:for-each>
                </xsl:when>
                <xsl:when test="$sort='translation'">
                  <xsl:for-each select="$root/lift/entry/sense[*[@name='sense-type' and @value='frame']]/example">
                    <xsl:sort select="translation/form[@lang=$language]/text" order="{$dir}" collation="http://saxon.sf.net/collation?rules={encode-for-uri($rules)}"/>
                    <xsl:call-template name="entry">
                      <xsl:with-param name="language" select="$language"/>
                      <xsl:with-param name="display" select="$display"/>
                      <xsl:with-param name="sort" select="$sort"/>
                      <xsl:with-param name="dir" select="$dir"/>
                    </xsl:call-template>
                  </xsl:for-each>
                </xsl:when>
                <xsl:when test="$sort='frphonetic'">
                  <xsl:for-each select="$root/lift/entry/sense[*[@name='sense-type' and @value='frame']]/example">
                    <xsl:sort select="field[@type='Phonetic']/form/text" order="{$dir}" collation="http://saxon.sf.net/collation?rules={encode-for-uri($rules)}"/>
                    <xsl:call-template name="entry">
                      <xsl:with-param name="language" select="$language"/>
                      <xsl:with-param name="display" select="$display"/>
                      <xsl:with-param name="sort" select="$sort"/>
                      <xsl:with-param name="dir" select="$dir"/>
                    </xsl:call-template>
                  </xsl:for-each>
                </xsl:when>
                <xsl:when test="$sort='frtone'">
                  <xsl:for-each select="$root/lift/entry/sense[*[@name='sense-type' and @value='frame']]/example">
                    <xsl:sort select="field[@type='Frame Tone']/form/text" order="{$dir}" collation="http://saxon.sf.net/collation?rules={encode-for-uri($rules)}"/>
                    <xsl:call-template name="entry">
                      <xsl:with-param name="language" select="$language"/>
                      <xsl:with-param name="display" select="$display"/>
                      <xsl:with-param name="sort" select="$sort"/>
                      <xsl:with-param name="dir" select="$dir"/>
                    </xsl:call-template>
                  </xsl:for-each>
                </xsl:when>
                <xsl:when test="$sort='frtype'">
                  <xsl:for-each select="$root/lift/entry/sense[*[@name='sense-type' and @value='frame']]/example">
                    <xsl:sort select="trait[@name='Frame Type']/@value" order="{$dir}" collation="http://saxon.sf.net/collation?rules={encode-for-uri($rules)}"/>
                    <xsl:call-template name="entry">
                      <xsl:with-param name="language" select="$language"/>
                      <xsl:with-param name="display" select="$display"/>
                      <xsl:with-param name="sort" select="$sort"/>
                      <xsl:with-param name="dir" select="$dir"/>
                    </xsl:call-template>
                  </xsl:for-each>
                </xsl:when>
                <xsl:otherwise>
                  <xsl:for-each select="$root/lift/entry/node()[name()=$sortpath]">
                    <xsl:sort select="translate(.,$accent,$noaccent)" order="{$dir}" collation="http://saxon.sf.net/collation?rules={encode-for-uri($rules)}"/>
                    <xsl:call-template name="entry">
                      <xsl:with-param name="language" select="$language"/>
                      <xsl:with-param name="display" select="$display"/>
                      <xsl:with-param name="sort" select="$sort"/>
                      <xsl:with-param name="dir" select="$dir"/>
                    </xsl:call-template>
                  </xsl:for-each>
                </xsl:otherwise>
              </xsl:choose>
            </tablebody>
          </table>
          </div>
        </body>
      </html>
    </xsl:result-document>
  </xsl:template>
  
  <xsl:template name="entry">
    <xsl:param name="language"/>
    <xsl:param name="display"/>
    <xsl:param name="sort"/>
    <xsl:param name="dir"/>
    <xsl:param name="position"/>
    <tr>
      <td class="lexeme"><b>
        <a class="shift" id="{ancestor::entry/@guid}"> </a>
        <xsl:choose>
          <xsl:when test="$sort='lexeme'">
            <xsl:choose>
              <xsl:when test="starts-with(ancestor::entry/lexical-unit/form[@lang='yko']/text,$hyphen) or ends-with(ancestor::entry/lexical-unit/form[@lang='yko']/text,$hyphen)"><xsl:value-of select="ancestor::entry/lexical-unit/form[@lang='yko']/text"/></xsl:when>
              <xsl:otherwise><xsl:value-of select="."/></xsl:otherwise>
            </xsl:choose>
          </xsl:when>
          <xsl:otherwise>
            <xsl:choose>
              <xsl:when test="starts-with(ancestor::entry/lexical-unit/form[@lang='yko']/text,$hyphen) or ends-with(ancestor::entry/lexical-unit/form[@lang='yko']/text,$hyphen)"><xsl:value-of select="ancestor::entry/lexical-unit/form[@lang='yko']/text"/></xsl:when>
              <xsl:otherwise><xsl:value-of select="ancestor::entry/citation/form[@lang='yko']/text"/></xsl:otherwise>
            </xsl:choose>
          </xsl:otherwise>
        </xsl:choose></b></td>
      <td class="stem">
        <xsl:choose>
          <xsl:when test="$sort='stem'"><xsl:value-of select="."/></xsl:when>
          <xsl:otherwise><xsl:for-each select="ancestor::entry/lexical-unit/form[@lang='yko']/text"><xsl:value-of select="."/><xsl:if test="position()!=last()"><br/></xsl:if></xsl:for-each></xsl:otherwise>
        </xsl:choose></td>
      <td class="pl">
        <xsl:choose>
          <xsl:when test="$sort='pl'"><xsl:value-of select="."/></xsl:when>
          <xsl:otherwise><xsl:value-of select="ancestor::entry/field[@type='Surface Plural Form']/form/text"/></xsl:otherwise>
        </xsl:choose></td>
        <td class="irreg">
        <xsl:choose>
          <xsl:when test="$sort='irreg'"><xsl:value-of select="."/></xsl:when>
          <xsl:otherwise><xsl:value-of select="ancestor::entry/trait[@name='Irregular Inflection']/@value"/></xsl:otherwise>
        </xsl:choose></td>
      <td class="phonetic">
        <xsl:choose>  
          <xsl:when test="$sort='phonetic'">
            <xsl:value-of select="form/text"/>
          </xsl:when>
          <xsl:otherwise><xsl:for-each select="ancestor::entry/pronunciation/form/text">
            <xsl:value-of select="."/><xsl:if test="position()!=last()"><br/></xsl:if>
          </xsl:for-each></xsl:otherwise>
        </xsl:choose>
      </td>
      <td class="sounds">
        <div class="sound">
          <xsl:choose>
            <xsl:when test="$sort='sound'">
              <a href="audio/{media/@href}" target="_blank"><xsl:value-of select="media/@href"/></a>
            </xsl:when>
            <xsl:otherwise><xsl:for-each select="ancestor::entry/pronunciation">
              <a href="audio/{media/@href}" target="_blank"><xsl:value-of select="media/@href"/></a><xsl:if test="position()!=last()"><br/></xsl:if>
            </xsl:for-each></xsl:otherwise>
          </xsl:choose>
        </div>
      </td>
      <td class="tones">
        <xsl:choose>
          <xsl:when test="$sort='tones'"><span class="tone"><xsl:value-of select="."/></span></xsl:when>
          <xsl:otherwise><xsl:for-each select="ancestor::entry/pronunciation/field[@type='tone']/form/text"><span class="tone"><xsl:value-of select="."/></span><xsl:if test="position()!=last()"><br/></xsl:if></xsl:for-each></xsl:otherwise>
        </xsl:choose></td>
      <td class="melody">
        <xsl:choose>
          <xsl:when test="$sort='melody'"><xsl:value-of select="."/></xsl:when>
          <xsl:otherwise><xsl:value-of select="ancestor::entry/trait[@name='Root Tone Melody']/@value"/></xsl:otherwise>
        </xsl:choose>
      </td>
      <td class="silnum">
        <xsl:choose>
          <xsl:when test="$sort='graminf' or $sort='silnum' or $sort='def' or $sort='gloss'">
              <xsl:value-of select="field[@type='SILCAWL Number']/form/text"/>
          </xsl:when>
          <xsl:otherwise>
            <xsl:for-each select="ancestor::entry/sense[*[@name='sense-type' and @value='definition']]">
              <xsl:if test="boolean(field[@type='SILCAWL Number']/form/text) and (boolean(preceding-sibling::sense[*[@name='sense-type' and @value='definition']] or following-sibling::sense[*[@name='sense-type' and @value='definition']]))">
                <b><xsl:number value="position()" format="1" />. </b>
              </xsl:if>
              <xsl:value-of select="field[@type='SILCAWL Number']/form/text"/>
              <xsl:if test="position()!=last()"><br/></xsl:if>
            </xsl:for-each>
          </xsl:otherwise>
       </xsl:choose></td>
      <td class="def">
        <xsl:choose>
          <xsl:when test="$sort='graminf' or $sort='silnum' or $sort='def' or $sort='gloss'">
              <xsl:value-of select="definition/form[@lang=$language]/text"/>
          </xsl:when>
          <xsl:otherwise>
            <xsl:for-each select="ancestor::entry/sense[*[@name='sense-type' and @value='definition']]">
              <xsl:if test="boolean(definition/form[@lang=$language]/text) and (boolean(preceding-sibling::sense[*[@name='sense-type' and @value='definition']] or following-sibling::sense[*[@name='sense-type' and @value='definition']]))">
                <b><xsl:number value="position()" format="1" />. </b>
              </xsl:if>
              <xsl:value-of select="definition/form[@lang=$language]/text"/>
              <xsl:if test="position()!=last()"><br/></xsl:if>
            </xsl:for-each>
          </xsl:otherwise>
        </xsl:choose></td>
      <td class="gloss">
        <xsl:choose>
          <xsl:when test="$sort='graminf' or $sort='silnum' or $sort='def' or $sort='gloss'">
              <xsl:value-of select="gloss[@lang=$language]/text"/>
          </xsl:when>
          <xsl:otherwise>
            <xsl:for-each select="ancestor::entry/sense[*[@name='sense-type' and @value='definition']]">
              <xsl:if test="boolean(gloss[@lang=$language]/text) and (boolean(preceding-sibling::sense[*[@name='sense-type' and @value='definition']] or following-sibling::sense[*[@name='sense-type' and @value='definition']]))">
                <b><xsl:number value="position()" format="1" />. </b>
              </xsl:if>
              <xsl:value-of select="gloss[@lang=$language]/text"/>
              <xsl:if test="position()!=last()"><br/></xsl:if>
            </xsl:for-each>
          </xsl:otherwise>
        </xsl:choose></td>
        <td class="graminf">
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
        <xsl:choose>
          <xsl:when test="$sort='graminf' or $sort='silnum' or $sort='def' or $sort='gloss'">
              <i><xsl:value-of select="$graminf2"/></i>
          </xsl:when>
          <xsl:otherwise>
            <xsl:for-each select="ancestor::entry/sense[*[@name='sense-type' and @value='definition']]">
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
              <xsl:if test="boolean(grammatical-info/@value) and (boolean(preceding-sibling::sense[*[@name='sense-type' and @value='definition']] or following-sibling::sense[*[@name='sense-type' and @value='definition']]))">
                <b><xsl:number value="position()" format="1" />. </b>
              </xsl:if>
              <i><xsl:value-of select="$graminf2"/></i>
              <xsl:if test="position()!=last()"><br/></xsl:if>
            </xsl:for-each>
          </xsl:otherwise>
        </xsl:choose></td>
        <td class="lexrefs">
          <xsl:if test="boolean(ancestor::entry/relation[@type='_component-lexeme'])">
            <div>
              <xsl:for-each select="ancestor::entry/relation[@type='_component-lexeme']">
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
                  <xsl:text> </xsl:text>
                  <a href="all_{$sort}_{$dir}_{$display}_{$language}.html#{$guid}"><xsl:value-of select="replace(@ref,'[0-9,_].*','')"/></a>
                  <xsl:if test="position()!=last()">; </xsl:if>
              </xsl:if>
            </xsl:for-each>
          </div>
        </xsl:if>
        <xsl:for-each select="ancestor::entry/relation[@type!='_component-lexeme' and @type!='Compare' and not(starts-with(@ref,'⁺'))]">
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
          <a href="all_{$sort}_{$dir}_{$display}_{$language}.html#{$guid}"><xsl:value-of select="replace(@ref,'[0-9,_].*','')"/></a>
          <xsl:if test="@type=following-sibling::relation[1][@type!='_component-lexeme' and @type!='Compare' and not(starts-with(@ref,'⁺'))]/@type">; </xsl:if>
          <xsl:if test="boolean(following-sibling::relation[1][@type!='_component-lexeme' and @type!='Compare' and not(starts-with(@ref,'⁺'))]) and (@type!=following-sibling::relation[1][@type!='_component-lexeme' and @type!='Compare' and not(starts-with(@ref,'⁺'))]/@type)"><br/></xsl:if>
        </xsl:for-each>
        
        <!-- Adds links to subentries. Heavy processing load. Comment out for all but final transformation to speed up testing. -->
        <!--
          <xsl:if test="boolean(ancestor::lift/entry/relation[replace(@ref,'.*_','')=$entryid])">
            <div>
              <xsl:for-each select="ancestor::lift/entry/relation[replace(@ref,'.*_','')=$entryid]">
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
        
      </td>
      <td class="frames">
        <xsl:choose>
          <xsl:when test="$sort='frames' or $sort='translation' or $sort='frphonetic' or $sort='frtone' or $sort='frtype'">
            <xsl:value-of select="form/text"/>
          </xsl:when>
          <xsl:when test="$sort='framerec'">
            <xsl:for-each select="ancestor::example">
              <xsl:value-of select="form/text"/>
            </xsl:for-each>
          </xsl:when>
          <xsl:otherwise>
            <xsl:for-each select="ancestor::entry/sense[*[@name='sense-type' and @value='frame']]/example">
              <b><xsl:number value="position()" format="i"/>) </b><xsl:value-of select="form/text"/>
              <xsl:if test="position()!=last()"><br/></xsl:if>
            </xsl:for-each>
          </xsl:otherwise>
        </xsl:choose>
      </td>
      <td class="framerecs">
        <div class="framerec">
          <xsl:choose>
            <xsl:when test="$sort='framerec'">
                <a href="audio/{replace(replace(.,'\.wav.*','.wav'),'C:\\ProgramData\\SIL\\FieldWorks\\Projects\\Yasa\\LinkedFiles\\AudioVisual\\','')}" target="_blank">
                  <xsl:value-of select="replace(replace(.,'\.wav.*','.wav'),'C:\\ProgramData\\SIL\\FieldWorks\\Projects\\Yasa\\LinkedFiles\\AudioVisual\\','')"/>
                </a>
                <xsl:if test="position()!=last()"><br/></xsl:if>
            </xsl:when>
            <xsl:when test="$sort='frames' or $sort='translation' or $sort='frphonetic' or $sort='frtone' or $sort='frtype'">
              <xsl:for-each select="field[@type='Frame Recording']/form[@lang='yko-Zxxx-x-audio']/text
                                                  | field[@type='Frame Recording Duplicate']/form/text/span[@class='Hyperlink']">
                <a href="audio/{replace(replace(.,'\.wav.*','.wav'),'C:\\ProgramData\\SIL\\FieldWorks\\Projects\\Yasa\\LinkedFiles\\AudioVisual\\','')}" target="_blank">
                  <xsl:value-of select="replace(replace(.,'\.wav.*','.wav'),'C:\\ProgramData\\SIL\\FieldWorks\\Projects\\Yasa\\LinkedFiles\\AudioVisual\\','')"/>
                </a>
                <xsl:if test="position()!=last()"><br/></xsl:if>
              </xsl:for-each>
            </xsl:when>
            <xsl:otherwise>
              <xsl:for-each select="ancestor::entry/sense[*[@name='sense-type' and @value='frame']]/example">
                <xsl:if test="boolean(preceding-sibling::example or following-sibling::example)">
                  <b><xsl:number value="position()" format="i" />) </b>
                </xsl:if>
                <xsl:for-each select="field[@type='Frame Recording']/form[@lang='yko-Zxxx-x-audio']/text
                                                    | field[@type='Frame Recording Duplicate']/form/text/span[@class='Hyperlink']">
                  <a href="audio/{replace(replace(.,'\.wav.*','.wav'),'C:\\ProgramData\\SIL\\FieldWorks\\Projects\\Yasa\\LinkedFiles\\AudioVisual\\','')}" target="_blank">
                    <xsl:value-of select="replace(replace(.,'\.wav.*','.wav'),'C:\\ProgramData\\SIL\\FieldWorks\\Projects\\Yasa\\LinkedFiles\\AudioVisual\\','')"/>
                  </a>
                  <xsl:if test="position()!=last()"><br/></xsl:if>
                </xsl:for-each>
                <xsl:if test="position()!=last()"><br/></xsl:if>
              </xsl:for-each>
            </xsl:otherwise>
          </xsl:choose>
        </div>
      </td>
      <td class="translation">
        <xsl:choose>
          <xsl:when test="$sort='frames' or $sort='translation' or $sort='frphonetic' or $sort='frtone' or $sort='frtype'">
            <xsl:value-of select="translation/form[@lang=$language]/text"/>
          </xsl:when>
          <xsl:when test="$sort='framerec'">
            <xsl:for-each select="ancestor::example">
              <xsl:value-of select="translation/form[@lang=$language]/text"/>
            </xsl:for-each>
          </xsl:when>
          <xsl:otherwise>
            <xsl:for-each select="ancestor::entry/sense[*[@name='sense-type' and @value='frame']]/example">
              <b><xsl:number value="position()" format="i"/>) </b><xsl:value-of select="translation/form[@lang=$language]/text"/>
              <xsl:if test="position()!=last()"><br/></xsl:if>
            </xsl:for-each>
          </xsl:otherwise>
        </xsl:choose>
      </td>
      <td class="frphonetic">
        <xsl:choose>
          <xsl:when test="$sort='frames' or $sort='translation' or $sort='frphonetic' or $sort='frtone' or $sort='frtype'">
            <xsl:value-of select="field[@type='Phonetic']/form/text"/>
          </xsl:when>
          <xsl:when test="$sort='framerec'">
            <xsl:for-each select="ancestor::example">
              <xsl:value-of select="field[@type='Phonetic']/form/text"/>
            </xsl:for-each>
          </xsl:when>
          <xsl:otherwise>
            <xsl:for-each select="ancestor::entry/sense[*[@name='sense-type' and @value='frame']]/example">
              <b><xsl:number value="position()" format="i"/>) </b><xsl:value-of select="field[@type='Phonetic']/form/text"/>
              <xsl:if test="position()!=last()"><br/></xsl:if>
            </xsl:for-each>
          </xsl:otherwise>
        </xsl:choose>
      </td>
      <td class="frtones">
        <div class="frtone">
          <xsl:choose>
            <xsl:when test="$sort='frames' or $sort='translation' or $sort='frphonetic' or $sort='frtone' or $sort='frtype'">
              <span class="tone"><xsl:value-of select="field[@type='Frame Tone']/form/text"/></span>
            </xsl:when>
            <xsl:when test="$sort='framerec'">
              <xsl:for-each select="ancestor::example">
                <span class="tone"><xsl:value-of select="field[@type='Frame Tone']/form/text"/></span>
              </xsl:for-each>
            </xsl:when>
            <xsl:otherwise>
              <xsl:for-each select="ancestor::entry/sense[*[@name='sense-type' and @value='frame']]/example">
                <b><xsl:number value="position()" format="i"/>) </b><span class="tone"><xsl:value-of select="field[@type='Frame Tone']/form/text"/></span>
                <xsl:if test="position()!=last()"><br/></xsl:if>
              </xsl:for-each>
            </xsl:otherwise>
          </xsl:choose>
        </div>
      </td>
      <td class="frtype">
        <xsl:choose>
          <xsl:when test="$sort='frames' or $sort='translation' or $sort='frphonetic' or $sort='frtone' or $sort='frtype'">
            <xsl:value-of select="trait[@name='Frame Type']/@value"/>
          </xsl:when>
          <xsl:when test="$sort='framerec'">
            <xsl:for-each select="ancestor::example">
              <xsl:value-of select="trait[@name='Frame Type']/@value"/>
            </xsl:for-each>
          </xsl:when>
          <xsl:otherwise>
            <xsl:for-each select="ancestor::entry/sense[*[@name='sense-type' and @value='frame']]/example">
              <b><xsl:number value="position()" format="i"/>) </b><xsl:value-of select="trait[@name='Frame Type']/@value"/>
              <xsl:if test="position()!=last()"><br/></xsl:if>
            </xsl:for-each>
          </xsl:otherwise>
        </xsl:choose>
      </td>
    </tr>
  </xsl:template>
  
</xsl:stylesheet>
