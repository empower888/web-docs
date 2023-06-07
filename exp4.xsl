<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version = "1.0"
xmlns:xsl = "http://www.w3.org/1999/XSL/Transform"
xmlns = "http://www.w3.org/1999/xhtml" >
<xsl:template match = "/">
<html>
<body>
<center>
<h2> Patient Details </h2>
<table border="1">
<tr bgcolor="khaki">
<th>name</th>
<th>middle name</th>
<th>last name</th>
<th>ssn</th>
<th>age</th>
<th>room</th>
<th>primary_insurance</th>
<th>primary_insurance/address</th>
<th>secondary_insurance</th>
<th>secondary_insurance/address</th>
<th>medproblem</th>
<th>drugallergy</th>
</tr>
<xsl:for-each select = "patients/patient">
<tr>

<td><xsl:value-of select = "name/firstname" /></td>

<td><xsl:value-of select = "name/middlename" /> </td>

<td><xsl:value-of select = "name/lastname" /> </td>

<td><xsl:value-of select = "ssn" /> </td>

<td><xsl:value-of select = "age" /> </td>

<td><xsl:value-of select = "roomnumber" /> </td>

<td><xsl:value-of select = "primary_insurance/gn" /> </td>

<td><xsl:value-of select = "primary_insurance/address" /> </td>

<td><xsl:value-of select = "secondary_insurance/gn" /> </td>

<td><xsl:value-of select = "secondary_insurance/address" /> </td>

<td><xsl:value-of select = "medproblem" /> </td>

<td><xsl:value-of select = "drugallergie" /> </td>

</tr>
</xsl:for-each>
</table>
</center>
</body>
</html>
</xsl:template>
</xsl:stylesheet>