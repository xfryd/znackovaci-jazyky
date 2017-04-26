<?xml version="1.0" encoding="UTF-8"?>
<!-- Odkaz na github: https://github.com/xfryd/znackovaci-jazyky/ -->
<!-- Vybrání všech uživatelů, kteří mají přístupové práva vyší nebo rovny dvoumi, a transformace do JSON -->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" >
  <xsl:template match="/">
    <html>
      <style> table {border-collapse: collapse; width:500px;} }</style>
      <body>
        <div style="margin:0px auto;width:1000px">
        <h1>Rezervace hostů </h1>
        <xsl:for-each select="Kuzelna_konfigurace/sekce">
          <h2>
         <xsl:value-of select="@Snazev"/>
         </h2>
        <table border="1">
          <tr bgcolor="#b3d9ff">
            <th >Jmeno</th>
            <th >Prijmeni</th>
            <th >id</th>
            <th >Rezervace</th>
          </tr>                              
          <xsl:for-each select="Seznam-uzivatelu/osoba[Rezervace != '' ]">
            <xsl:sort select="Rezervace" order="ascending"/>
            <tr>
              <td>
                <xsl:value-of select="Jmeno"/>
              </td>
              <td>
                <xsl:value-of select="Prijmeni"/>
              </td>
              <td>
                <xsl:value-of select="@id"/>
              </td>
              <td>
                <xsl:value-of select="Rezervace"/>
              </td>
            </tr>
          </xsl:for-each>
        </table>
          </xsl:for-each>
</div>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>