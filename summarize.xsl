<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <body>
  <h2>My JUNIT failures yay</h2>
  <table border="1">
    <tr bgcolor="#9acd32">
      <th>Plugin Name</th>
      <th>Status</th>
      <th>Error Message</th>
    </tr>
    <xsl:for-each select="//pluginCompatTests/entry">
    <xsl:sort select="pluginInfos/pluginName"/>
    <tr>
      <td><xsl:value-of select="pluginInfos/pluginName"/></td><td><xsl:value-of select="list/compatResult/status"/></td>
      <!--<td><xsl:value-of select="list/compatResult/errorMessage"/></td>-->
    </tr>
    </xsl:for-each>
  </table>
  </body>
  </html>
</xsl:template>

</xsl:stylesheet>