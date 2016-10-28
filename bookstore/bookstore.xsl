<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
  <h2>Bookstore</h2>
    <table border="1">
      <tr bgcolor="#DB0000">
        <th style="text-align:left">Title</th>
        <th style="text-align:left">Author</th>
        <th style="text-align:left; background-color: #D6D4A9">Year</th>
      </tr>
      <xsl:for-each select="bookstore/book[position()&lt;3]">
      <tr>
        <td><xsl:value-of select="title"/></td>
        <td><xsl:value-of select="author"/></td>
        <td><xsl:value-of select="year"/></td>
      </tr>
      </xsl:for-each>
    </table>
</xsl:template>
</xsl:stylesheet>