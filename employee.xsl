<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <!-- Template to match the root element of the XML -->
    <xsl:template match="/employees">
        <html>
            <head>
                <title>Employee List</title>
                <style>
                    .even-row {
                        background-color: #A9A9A9; /* Light gray */
                    }
                    .odd-row {
                        background-color: #ffffff; /* White */
                    }
                    tr{
                        border: none;
                    }
                </style>
                <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet"></link>
            </head>
            <body>
                <table border="1">
                    <tr >
                        <th colspan="6" class="bg-blue-500 text-white text-center py-2" >TeamStream</th>
                    </tr>
                    <tr class="bg-gray-200 text-left">
                        <th class="px-4 py-2">Name</th>
                        <th class="px-4 py-2">Email</th>
                        <th class="px-4 py-2">Phone Number</th>
                        <th class="px-4 py-2">Position</th>
                        <th class="px-4 py-2">Salary</th>
                        <th class="px-4 py-2">Department Id</th>
                    </tr>
                    <xsl:for-each select="employee">
                        <tr >
                            <xsl:attribute name="class">
                                <xsl:choose>
                                    <xsl:when test="position() mod 2 = 0">even-row</xsl:when>
                                    <xsl:otherwise>odd-row</xsl:otherwise>
                                </xsl:choose>
                            </xsl:attribute>
                            <td class="px-4 py-2" >
                                <xsl:value-of select="concat(firstname, ' ', lastname)"/>
                            </td>
                            <td class="px-4 py-2">
                                <xsl:value-of select="email"/>
                            </td>
                            <td class="px-4 py-2">
                                <xsl:value-of select="phone_no"/>
                            </td>
                            <td class="px-4 py-2">
                                <xsl:value-of select="position"/>
                            </td>
                            <td class="px-4 py-2">
                                <xsl:value-of select="salary"/>
                            </td>
                            <td class="px-4 py-2">
                                <xsl:value-of select="department_id"/>
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
