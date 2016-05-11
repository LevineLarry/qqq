<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
    <html>
      <head>
        <title>ejer_4</title>
        <style type="text/css">
          table,td,th {border:1px black solid}
          .amarillo {background: yellow}
          .azul {background: blue}
          .verde {background: green}
        </style>
      </head>
      <body>
        <table>
        <tr>
          <th>Title</th>
          <th>Artist</th>
          <th>Año</th>
        </tr>
        <xsl:for-each select="catalog/cd">
          <xsl:choose>
            <xsl:when test="year&lt;1980">
              <tr class="amarillo">
                  <td><xsl:value-of select="title" /></td>
                  <td><xsl:value-of select="artist" /></td>
                  <td><xsl:value-of select="year" /></td>
              </tr>
            </xsl:when>
            <xsl:when test="year&gt;1989">
                <tr class="azul">
                  <td><xsl:value-of select="title" /></td>
                  <td><xsl:value-of select="artist" /></td>
                  <td><xsl:value-of select="year" /></td>
              </tr>
            </xsl:when>
            <xsl:otherwise>
                <tr class="verde">
                  <td><xsl:value-of select="title" /></td>
                  <td><xsl:value-of select="artist" /></td>
                  <td><xsl:value-of select="year" /></td>
              </tr>
            </xsl:otherwise>
          </xsl:choose>  

        </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
