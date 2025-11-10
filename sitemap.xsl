<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:s="http://www.sitemaps.org/schemas/sitemap/0.9">
  <xsl:output method="html" indent="yes" />
  <xsl:template match="/">
    <html>
      <head>
        <meta charset="utf-8"/>
        <title>XML Sitemap — FortuneX Jobs</title>
        <style>
          body{font-family:Inter,system-ui,Arial,Helvetica,sans-serif;background:#fff;color:#111;padding:20px}
          h1{font-size:20px;margin-bottom:10px}
          table{border-collapse:collapse;width:100%;max-width:980px}
          th,td{padding:8px 10px;border-bottom:1px solid #eee;text-align:left}
          th{background:#f7f7f7;font-weight:600}
          a{color:#1a56db;text-decoration:none}
          .meta{color:#666;font-size:0.9rem}
        </style>
      </head>
      <body>
        <h1>XML Sitemap — FortuneX Jobs</h1>
        <p class="meta">This file is for search engines. The table below is a browser-friendly view only.</p>
        <table>
          <thead>
            <tr><th>URL</th><th>Last Modified</th><th>Changefreq</th><th>Priority</th></tr>
          </thead>
          <tbody>
            <xsl:for-each select="s:urlset/s:url">
              <tr>
                <td>
                  <a>
                    <xsl:attribute name="href">
                      <xsl:value-of select="s:loc"/>
                    </xsl:attribute>
                    <xsl:value-of select="s:loc"/>
                  </a>
                </td>
                <td><xsl:value-of select="s:lastmod"/></td>
                <td><xsl:value-of select="s:changefreq"/></td>
                <td><xsl:value-of select="s:priority"/></td>
              </tr>
            </xsl:for-each>
          </tbody>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
