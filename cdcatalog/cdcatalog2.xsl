<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
  <h2>My CD Collection</h2>
    <table border="1">
      <tr bgcolor="#DB0000">
        <th style="text-align:left">Title</th>
        <th style="text-align:left">Artist</th>
      </tr>
      
      <tr>
        <td><xsl:value-of select="catalog/cd[4]/title"/></td>
        <td><xsl:value-of select="catalog/cd[4]/artist"/></td>
      </tr>
      
    </table>
</xsl:template>
</xsl:stylesheet>