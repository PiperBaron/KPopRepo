<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math"
    xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl"
    xmlns="http://www.w3.org/1999/xhtml"
    exclude-result-prefixes="xs math xd"
    version="3.0">
    <!-- <xd:doc scope="stylesheet">
        <xd:desc>
            <xd:p><xd:b>Created on:</xd:b> Oct 30, 2020</xd:p>
            <xd:p><xd:b>Author:</xd:b> piperbaron</xd:p>
            <xd:p>XSLT to create an HTML page listing band members for KPop Group Profile pages</xd:p>
        </xd:desc>
    </xd:doc>-->
    <xsl:output method="xhtml" encoding="utf-8" doctype-system="about:legacy-compat"
        omit-xml-declaration="yes"/>
    
    <xsl:template match="/">
        <html>
            <head>
                <title>K-Pop Project: <xsl:apply-templates select="descendant::songName"/></title>
                <link rel="stylesheet" type="text/css" href="../css/songs_CSS/All_Songs_Starter_CSS.css"/>
            </head>
            <body>
                <div class="header">
                    <h1>K-Pop Songs, Translations, and Profiles</h1>
                </div>
                
                <!--#include virtual="navigation_menu_profiles.html" -->
                
                <div class="main" id="{descendant::songName/[@xml:id]}">
                    <h2><xsl:apply-templates select="descendant::songName"/> Lyrics and Translation</h2>
                    
                    <section id="about">
                        <div class="song_info">Background Info:</div>
                        <xsl:apply-templates select="descendant::bgInfo"/>
                        <div class="song_info">Album:</div><xsl:apply-templates select="descendant::album"/>
                        <div class="song_info">Producers:</div>
                        <ul><xsl:apply-templates select="descendant::produceCredit"/></ul>
                        <div class="song_info">Writers:</div>
                        <ul><xsl:apply-templates select="descendant::lyricCredit"/></ul>
                        <div class="song_info">Label:</div>
                        <xsl:apply-templates select="descendant::label"/>
                        <div class="song_info">Release Date:</div>
                        <xsl:apply-templates select="descendant::releaseDate"/>
                    </section>
                    
                    <div id="lyrics_holder">
                        <div id="korean_lyrics_div">
                            <div class="lyrics_header">Original Korean Lyrics:</div>
                            <xsl:apply-templates select="descendant::koreanLyrics"/>
                        </div>
                        
                        <div id="english_trans_div">
                            <div class="lyrics_header">English Translation:</div>
                            <xsl:apply-templates select="descendant::engTrans"/>
                        </div>
                    </div>
                </div>
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="p">
        <p><xsl:apply-templates/></p>
    </xsl:template>
    
    <xsl:template match="meaning">
        <div class="song_info">Song Meaning:</div>
        <p><xsl:apply-templates/></p>
    </xsl:template>
    
    <xsl:template match="producer[count(@artistRef)=0]">
        <li><xsl:apply-templates/></li>
    </xsl:template>
    
    <xsl:template match="producer[@artistRef]">
        <li><a href="#{@artistRef}"><xsl:apply-templates/></a></li>
    </xsl:template>
    
    <xsl:template match="writer[count(@artistRef)=0]">
        <li><xsl:apply-templates/></li>
    </xsl:template>
    
    <xsl:template match="writer[@artistRef]">
        <li><a href="#{@artistRef}"><xsl:apply-templates/></a></li>
    </xsl:template>

    <xsl:template match="intro">
        <div class="song_section">
            <xsl:apply-templates/>
        </div>
    </xsl:template>

    <xsl:template match="verse">
        <div class="song_section verseNumber{@versenum}">
            <xsl:apply-templates/>
        </div>
    </xsl:template>
    
    <xsl:template match="preChorus">
        <div class="song_section preChorusNumber{@prechorusnum}">
            <xsl:apply-templates/>
        </div>
    </xsl:template>
    
    <xsl:template match="chorus">
        <div class="song_section chorusNumber{@chorusnum}">
            <xsl:apply-templates/>
        </div>
    </xsl:template>
    
    <xsl:template match="bridge">
        <div class="song_section">
            <xsl:apply-templates/>
        </div>
    </xsl:template>
    
    <xsl:template match="postChorus">
        <div class="song_section postChorusNumber{@postchorusnum}">
            <xsl:apply-templates/>
        </div>
    </xsl:template>
    
    <xsl:template match="refrain">
        <div class="song_section refrainNumber{@refrainnum}">
            <xsl:apply-templates/>
        </div>
    </xsl:template>
    
    <xsl:template match="koreanLyrics/descendant::line">
        <div class="song_line {@lineRef}" id="korLineNumber{@linenum}">
            <xsl:apply-templates/>
        </div>
    </xsl:template>
    
    <xsl:template match="engTrans/descendant::line">
        <div class="song_line {@lineRef}" id="engLineNumber{@linenum}">
            <xsl:apply-templates/>
        </div>
    </xsl:template>
    
    <xsl:template match="backVocal">
        <span class="backing_vocal {@lineRef}"><xsl:apply-templates/></span>
    </xsl:template>
    
    <xsl:template match="sharedLine">
        <span class="shared_line {@lineRef}"><xsl:apply-templates/></span>
    </xsl:template>
    
    <xsl:template match="outro">
        <div class="song_section">
            <xsl:apply-templates/>
        </div>
    </xsl:template>
    
    <xsl:template match="groupMent">
        <a href="#{@artistRef}"><xsl:apply-templates/></a>
    </xsl:template>
    
    <xsl:template match="memberMent">
        <a href="#{@artistRef}"><xsl:apply-templates/></a>
    </xsl:template>
    
    <xsl:template match="albumMent">
        <a href="#{@albumRef}"><xsl:apply-templates/></a>
    </xsl:template>
    
    <xsl:template match="compMent">
        <a href="#{@labelRef}"><xsl:apply-templates/></a>
    </xsl:template>
    
    <xsl:template match="lineMent">
        <span class="line_mention"><a href="#engLineNumber{@linenum}"><xsl:apply-templates/></a></span>
    </xsl:template>
    
    <xsl:template match="link">
        <a href="{@linkURL}"><xsl:apply-templates/></a>
    </xsl:template>
    
    <xsl:template match="quote">
       <a href="{@quoteURL}"><xsl:apply-templates/></a>
    </xsl:template>
    
</xsl:stylesheet>