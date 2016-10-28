<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
  <h2>My CD Collection</h2>
    <table border="1">
      <tr bgcolor="#DB0000">
        <th style="text-align:left">Title</th>
        <th style="text-align:left">Artist</th>
        <th style="text-align:left; background-color: #D6D4A9">Year</th>
      </tr>
      <xsl:for-each select="catalog/cd">
      <xsl:sort select="year" data-type="number" order="descending"/>
      <xsl:if test="price &gt; 10 or year=1990">
      <tr>
        <td><xsl:value-of select="title"/></td>
        <td><xsl:value-of select="artist"/></td>
        <td><xsl:value-of select="year"/></td>
      </tr>
      </xsl:if>
      </xsl:for-each>
    </table>
</xsl:template>
</xsl:stylesheet>