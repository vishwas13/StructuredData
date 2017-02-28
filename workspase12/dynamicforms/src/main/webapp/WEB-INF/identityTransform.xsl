<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	
	<xsl:template match="/">
	
	   <form id="identityCreateForm" action="identityAction" method="post">
	       <xsl:apply-templates />
	
	   </form>
	
	</xsl:template>
	
	<xsl:template match="property">
	    <xsl:variable name="id" select="./@name" />
	    <xsl:element name="label">
	    <h2>
	       <xsl:attribute name="for"><xsl:value-of select="$id"/></xsl:attribute>
	       <xsl:value-of select="./label" />
	    </h2>
	    </xsl:element>
	    <br/>
        <xsl:element name="input" >
            <xsl:attribute name="id"><xsl:value-of select="$id"/></xsl:attribute>
            <xsl:attribute name="type"><xsl:value-of select="./@type"/></xsl:attribute>
            <xsl:attribute name="name"><xsl:value-of select="./@name"/></xsl:attribute>
            <xsl:attribute name="required"><xsl:value-of select="./@required"/></xsl:attribute>
            <xsl:attribute name="value"><xsl:value-of select="./@defaultvalue"/></xsl:attribute>
            <xsl:attribute name="placeholder"><xsl:value-of select="./hint"/></xsl:attribute>
            <xsl:attribute name="data-calculation"><xsl:value-of select="./@calculatedvalue"/></xsl:attribute>
        	<xsl:attribute name="class"><xsl:value-of select="./@class"/></xsl:attribute>
        </xsl:element>
       <br/>
	   
	</xsl:template>
	
</xsl:stylesheet>