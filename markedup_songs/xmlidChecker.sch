<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt3"
    xmlns:sqf="http://www.schematron-quickfix.com/validator/process">
    
    <sch:pattern id="check-refs-to-xmlids">
        <sch:let name="groupMarkupColl" value="collection('../group_profiles/?select=*.xml')"/>        
        <sch:rule context="*[@artistRef]">
            <sch:let name="xmlids"
                value="($groupMarkupColl//group/@xml:id | $groupMarkupColl//groupName/@xml:id | $groupMarkupColl//member/@xml:id | $groupMarkupColl//subunitList/@xml:id)"/>
            <sch:assert test="@artistRef = $xmlids"> An artistRef value must point to an xml:id on a
                groupName, group, member, or subunitList element in the group markup collection. Correct values
                include <sch:value-of select="string-join($xmlids, ', ')"/></sch:assert>
        </sch:rule>
        <sch:rule context="*[@artistname]">
            <sch:let name="xmlids"
                value="($groupMarkupColl//group/@xml:id | $groupMarkupColl//groupName/@xml:id | $groupMarkupColl//member/@xml:id | $groupMarkupColl//subunitList/@xml:id)"/>
            <sch:let name="nameTokens" value="tokenize(@artistname, ',\s*')"/>
            <sch:assert test="every $nt in $nameTokens satisfies $nt = $xmlids or $nt = 'All' or $nt = 'Non-Member'">
                An values coded in artistname may be in a list form, but each member of the list must point to anxml:id on a groupName, group, member, or subunitList element
                in the group markup collection Correct values include <sch:value-of select="string-join($xmlids, ', ')"/>
            </sch:assert>

        </sch:rule>
        <sch:rule context="*[@labelRef]">
            <sch:let name="xmlids" value="$groupMarkupColl//company/@xml:id"/>
            <sch:assert test="@labelRef = $xmlids"> A labelRef value must point to an xml:id on a
                company element in the group markup collection. Correct values include <sch:value-of
                    select="string-join($xmlids, ', ')"/></sch:assert>
        </sch:rule>
        <sch:rule context="*[@lineRef]">
            <sch:let name="xmlids" value="$groupMarkupColl//member/@xml:id"/>
            <sch:assert test="@lineRef = $xmlids or @lineRef = 'All' or @lineRef = 'Non-Member'"> A lineRef value 
                may be "All," may be "Non-Member," or it must point to an xml:id on a member element in the group 
                markup collection. Correct values include <sch:value-of
                    select="string-join($xmlids, ', ')"/></sch:assert>
        </sch:rule>
        <sch:rule context="*[@unitName]">
            <sch:let name="xmlids" value="$groupMarkupColl//subunitList/@xml:id"/>
            <sch:assert test="@unitName = $xmlids"> A unitName value must point to an xml:id on a
                subunitList element in the group markup collection. Correct values include <sch:value-of
                    select="string-join($xmlids, ', ')"/></sch:assert>
        </sch:rule>
    </sch:pattern>
</sch:schema>
