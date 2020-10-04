<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt3"
    xmlns:sqf="http://www.schematron-quickfix.com/validator/process">

    <sch:pattern id="check-refs-to-xmlids">
        <sch:let name="groupMarkupDoc" value="doc('../group_profiles/group_markup_sample.xml')"/>
        <!--2020-10-04 ebb: This sch:let element defines a variable that points to an XML document. 
            Notice the use of a relative file path for the value of @value. I'm just pointing "up" one directory level from where this file is saved, 
            and then "down" into a new one to retrieve your XML document with the xml:ids.
            If you want to define these in multiple documents, we'll change this to read a collection instead of just one XML document. -->
        <sch:rule context="*[@artistRef]">
            <sch:let name="xmlids"
                value="($groupMarkupDoc//group/@xml:id | $groupMarkupDoc//groupName/@xml:id | $groupMarkupDoc//member/@xml:id)"/>
            <sch:assert test="@artistRef = $xmlids"> An artistRef value must point to an xml:id on a
                groupName, group, or member element in the group markup document. Correct values
                include <sch:value-of select="string-join($xmlids, ', ')"/></sch:assert>
        </sch:rule>
        <sch:rule context="*[@labelRef]">
            <sch:let name="xmlids" value="$groupMarkupDoc//company/@xml:id"/>
            <sch:assert test="@labelRef = $xmlids"> A labelRef value must point to an xml:id on a
                company element in the group markup document. Correct values include <sch:value-of
                    select="string-join($xmlids, ', ')"/></sch:assert>
        </sch:rule>
        <sch:rule context="*[@ref]">
            <sch:let name="xmlids"
                value="($groupMarkupDoc//stageName/@xml:id | $groupMarkupDoc//member[not(stageName/@xml:id)]/@xml:id)"/>
            <sch:assert test="@ref = $xmlids or @ref = 'All'"> A ref value may be "All" or it must
                point to an xml:id on a stageName element if that is available. If not, it must
                point to a member xml:id. Correct values include <sch:value-of
                    select="string-join($xmlids, ', ')"/></sch:assert>
        </sch:rule>
    </sch:pattern>
</sch:schema>
