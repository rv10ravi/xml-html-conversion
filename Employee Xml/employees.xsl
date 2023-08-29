<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:output method="xml" indent="yes"/>

  <xsl:template match="/employees">
    <html>
      <head>
        <title>Employees</title>
      </head>
      <body>
        <table border="1">
          <tr>
            <th>Name</th>
            <th>Age</th>
            <th>Department</th>
            <th>Salary</th>
          </tr>
          <xsl:for-each select="employee">
            <tr>
              <td><xsl:value-of select="name"/></td>
              <td><xsl:value-of select="age"/></td>
              <td><xsl:value-of select="department"/></td>
              <td><xsl:value-of select="salary"/></td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>
