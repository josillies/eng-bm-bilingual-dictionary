<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="html"/>
<xsl:template match = "/dictionary">
  
<html>
	<head> <link rel="stylesheet" type="text/css" href="dictionary.css" /> 

	</head>
	
  <body>
  <a id ="engtop"></a>
    <h1>English-Malay Bilingual Dictionary of Animals</h1>
    <h5>Kamus Dwibahasa Bahasa Inggeris-Bahasa Melayu</h5>
    
    <div class="topnav">
    <a class="active" href="#english">English Dictionary</a>
    <a href="#malay">Kamus Bahasa Melayu</a>
    <a href = "search.html">Search</a>
    </div>

    <xsl:for-each select = "english">
      <a id = "english"><h2>English Dictionary</h2></a>
      <h4>Browse by letter:</h4>
      
      <div class ="letternav">
      <xsl:for-each select="letter">
          <a href="#{generate-id(alphabet)}">
          <xsl:value-of select="alphabet" /></a>
      </xsl:for-each>
      </div>
       
        
      <xsl:for-each select = "letter">
        <a id = "{generate-id(alphabet)}">
          <h3> <xsl:value-of select = "alphabet"/></h3></a>
          <table>
            <tr>
              <th>No.</th>
              <th>Word</th>
              <th>Definition</th>
              <th>Type</th>
              <th>IPA Pronunciation</th>
              <th>Malay</th>
            </tr>
            
            <xsl:for-each select = "entry">
              <tr>
                <td> <countNo><xsl:value-of select="position()" /></countNo></td>
                <td> <xsl:value-of select = "word"/> </td>
                <td> <xsl:value-of select = "definition"/> </td>
                <td> <xsl:value-of select = "type"/> </td>
                <td> <xsl:value-of select = "IPA"/> </td>
                <td> <xsl:value-of select = "translation"/> </td>
              </tr>
            
          </xsl:for-each>
          </table>
      </xsl:for-each>
    </xsl:for-each>
    
  <a style="position:fixed;bottom:0px;right:0px;padding:20px;" href="#engtop">Back to top</a>
      
<xsl:for-each select = "malay">
      <a id = "malay"><h2>Kamus Bahasa Melayu</h2></a>
      <h4>Imbas mengikut huruf:</h4>
    <div class ="letternav">
      <xsl:for-each select="letter">
          <a href="#{generate-id(alphabet)}">
          <xsl:value-of select="alphabet" /></a>
      </xsl:for-each>
      </div>
        
      <xsl:for-each select = "letter">
        <a id = "{generate-id(alphabet)}">
          <h3> <xsl:value-of select = "alphabet"/></h3></a>
          <table>
            <tr>
              <th>No.</th>
              <th>Perkataan</th>
              <th>Definisi</th>
              <th>Jenis</th>
              <th>Sebutan IPA</th>
              <th>Bahasa Inggeris</th>
            </tr>
            
            <xsl:for-each select = "entry">
              <tr>
                <td> <countNo><xsl:value-of select="position()" /></countNo></td>
                <td> <xsl:value-of select = "word"/> </td>
                <td> <xsl:value-of select = "definition"/> </td>
                <td> <xsl:value-of select = "type"/> </td>
                <td> <xsl:value-of select = "IPA"/> </td>
                <td> <xsl:value-of select = "translation"/> </td>
              </tr>
            
          </xsl:for-each>
          </table>

      </xsl:for-each>
    </xsl:for-each>
    
		</body>
	
	</html>

</xsl:template>

</xsl:stylesheet>