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
                
                <ul class="nav">
                    <li class="nav_li"><a href="../index.html">About</a></li>
                    <li class="nav_li dropdown">
                        <a href="../group_profiles.html" class="dropbtn">Group Profiles</a>
                        <div class="dropdown-content">
                            <a href="BTS_Profile.html">BTS</a>
                            <a href="BLACKPINK_Profile.html">BLAƆKPIИK</a>
                            <a href="EXO_Profile.html">EXO</a>
                            <a href="#">Twice</a>
                            <a href="#">NCT 127</a>
                            <a href="#">NCT Dream</a>
                            <a href="#">GOT7</a>
                            <a href="#">Seventeen</a>
                            <a href="#">Stray Kids</a>
                            <a href="#">Monsta X</a>
                        </div>
                    </li>
                    <li class="nav_li dropdown">
                        <a href="../songs.html" class="dropbtn">Songs</a>
                        <div class="dropdown-content">
                            <a href="#">BTS - Boy with Luv</a>
                            <a href="#">BLAƆKPIИK - DDU-DU DDU-DU</a>
                            <a href="#">EXO - Obsession</a>
                            <a href="#">Twice - Likey</a>
                            <a href="#">NCT 127 - Simon Says</a>
                            <a href="#">NCT Dream - Ridin'</a>
                            <a href="#">GOT7 - Lullaby</a>
                            <a href="#">Seventeen- Don't Wanna Cry</a>
                            <a href="#">Stray Kids - Back Door</a>
                            <a href="#">Monsta X - From Zero</a>
                        </div>
                    </li>
                </ul>
                
                <div class="main" id="{descendant::songName/[@xml:id]}">
                    <h2><xsl:apply-templates select="descendant::songName"/> Lyrics and Translation</h2>
                    
                    <section id="about">
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
                    
                    <section id="korean_lyrics">
                        <div class="lyrics_header">Original Korean Lyrics:</div>
                        <div id="korean_lyrics_div">
                            <xsl:apply-templates select="descendant::koreanLyrics"/>
                        </div>
                    </section>
                    
                    <section id="english_trans">
                        <div class="lyrics_header">English Translation:</div>
                        <div id="english_trans_div">
                            <xsl:apply-templates select="descendant::engTrans"/>
                        </div>
                    </section>
                </div>
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="p">
        <p><xsl:apply-templates/></p>
    </xsl:template>
    
    <xsl:template match="producer">
        <li><xsl:apply-templates/></li>
    </xsl:template>
    
    <xsl:template match="writer">
        <li><xsl:apply-templates/></li>
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
    
    <xsl:template match="line">
        <div class="song_line lineNumber{@linenum} {@lineRef}">
            <xsl:apply-templates/>
        </div>
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
    
</xsl:stylesheet>