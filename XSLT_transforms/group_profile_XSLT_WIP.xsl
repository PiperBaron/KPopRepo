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
                <title>K-Pop Project: <xsl:apply-templates select="descendant::groupName"/></title>
                <link rel="stylesheet" type="text/css" href="../website/css/profiles_CSS/All_Group_Profiles_Starter_CSS.css"/>
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
                
                <div class="main" id="{descendant::groupName/[@xml:id]}">
                    <h2><xsl:apply-templates select="descendant::groupName"/> Profile</h2>
                    
                    <section id="about">
                        <xsl:apply-templates select="descendant::bgInfo"/>
                        <div class="fandom_info">Fandom Name:</div><xsl:apply-templates select="descendant::fandomName"/>
                        <br/>
                        <br/>
                        <xsl:apply-templates select="descendant::fandomColor"/>
                        <div class="fandom_info">Lightstick:</div><img id="lightstick_img"  src="{descendant::lightstick}" alt="{descendant::groupName}'s lightstick"></img>
                    </section>
                    
                    <section id="discography">
                        <div class="fandom_info">Discography:</div>
                        <ul id="discography-list">
                            <xsl:apply-templates select="descendant::discography"/>
                        </ul>
                    </section>
                    <section id="members">
                        <div class="members_header">Members</div>
                        <xsl:apply-templates select="descendant::memberList"/>
                        <xsl:apply-templates select="descendant::formerMemberList"/>
                    </section>
                    <section id="subunits">
                        <xsl:apply-templates select="descendant::subunitList"/>
                    </section>
                </div>
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="p">
        <p><xsl:apply-templates/></p>
    </xsl:template>
    
    <xsl:template match="fandomColor">
        <div class="fandom_info">Fandom Colors:</div>
        <ul>
         <xsl:apply-templates/>
       </ul>
    </xsl:template>
    
    <xsl:template match="color">
        <li><mark style="background-color:{@colorHex};"><xsl:apply-templates/></mark></li>
    </xsl:template>
    
    <xsl:template match="album">
        <li id="{@xml:id}"><xsl:apply-templates/></li>
    </xsl:template>
    
    <xsl:template match="member">
        <div class="member_div" id="{@xml:id}">
            <div id="stage_name_top"><xsl:apply-templates select="substring-before(descendant::stageName, ' (')"/></div>
            <br/>
            <img class="member_img" src="{portrait}" alt="Portait of {descendant::stageName} or {descendant::koreanName}"></img>
            <div class="member_small_headers">Names:</div>
            <ul id="member_profile_list">
                <li><span id="names">Stage name: </span><xsl:apply-templates select="descendant::stageName"/></li>
                <xsl:apply-templates select="descendant::koreanName"/>
                <xsl:apply-templates select="descendant::nkBirthName"/>
            </ul>
            
            <div class="member_small_headers">Roles:</div>
            <ol id="roles_list">
                <xsl:apply-templates select="descendant::role"/>
            </ol>
            
            <xsl:apply-templates select="descendant::subunit"/>
            <div class="member_small_headers">Height:</div> <xsl:apply-templates select="height"/>
            <xsl:apply-templates select="weight"/>
            <div class="member_small_headers">Birthday:</div> <xsl:apply-templates select="birthday"/>
        </div>
    </xsl:template>
    
    <xsl:template match="formerMemberList">
        <div class="members_header">Former Member(s):</div>
        <xsl:apply-templates/>
    </xsl:template>
    
    <xsl:template match="formerMember">
        <div class="member_div" id="{@xml:id}">
            <div id="stage_name_top"><xsl:apply-templates select="substring-before(descendant::stageName, ' (')"/></div>
            <br/>
            <img class="member_img" src="{portrait}" alt="Portait of former member {descendant::stageName} or {descendant::koreanName}" width="200"></img>
            <div class="member_small_headers">Names:</div>
            <ul id="member_profile_list">
                <li><span id="names">Stage name: </span><xsl:apply-templates select="descendant::stageName"/></li>
                <xsl:apply-templates select="descendant::koreanName"/>
                <xsl:apply-templates select="descendant::nkBirthName"/>
            </ul>
            
            <div class="member_small_headers">Roles:</div>
            <ol id="roles_list">
                <xsl:apply-templates select="descendant::role"/>
            </ol>
            
            <xsl:apply-templates select="descendant::subunit"/>
            <div class="member_small_headers">Height:</div> <xsl:apply-templates select="height"/>
            <xsl:apply-templates select="weight"/>
            <div class="member_small_headers">Birthday:</div> <xsl:apply-templates select="birthday"/>
        </div> 
    </xsl:template>
    
    <xsl:template match="koreanName">
        <li><span id="names">Korean Name: </span><xsl:apply-templates/></li>
    </xsl:template>
    
    <xsl:template match="nkBirthName">
        <li><span id="names">Non-Korean Birth Name: </span><xsl:apply-templates/></li>
    </xsl:template>
    
    <xsl:template match="position">
        <li><xsl:apply-templates/></li>
    </xsl:template>
    
    <xsl:template match="subunit">
        <div class="member_small_headers">Subunits:</div>
        <ul id="member_subunit_list">
            <xsl:apply-templates/>
        </ul>
    </xsl:template>
    
    <xsl:template match="unit">
        <li><xsl:apply-templates/></li>
    </xsl:template>
    
    <xsl:template match="weight">
        <div class="member_small_headers">Weight:</div> <xsl:apply-templates/>
    </xsl:template>
    
    <xsl:template match="subunitList">
        <div class="members_header">Subunits:</div>
        <div id="subunit_div">
          <xsl:apply-templates/>
        </div>
    </xsl:template>
    
    <xsl:template match="groupSubunit">
        <div id="group_subunit_div">
            <div id="{@xml:id}" class="subunit_name_header"><xsl:apply-templates select="subunitName"/>:</div>
            <ul id="subunit_list">
                <xsl:apply-templates select="subunitMembers"/>
            </ul>
        </div>
    </xsl:template>
    
    <xsl:template match="subunitMembers">
        <li><a href="#"><xsl:apply-templates/></a></li>
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