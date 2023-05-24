<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
    <xsl:output method="html" indent="yes" encoding="uft-8"/>

	<xsl:template match="/">
		<html>
			<body>
				<style type="text/css">
					form {
					position: absolute;
					border-style: double;
					left: 34%;
					width: 35%;
					top: 17%;
					font-weight: bold;
					font-size: 24px;
					border-top-right-radius: 5%;


					}
					/*form repeating-linear-gradient*/
					form::before {
					content: "";
					position: absolute;
					top: 0;
					left: 0;
					width: 100%;
					height: 100%;
					background: repeating-linear-gradient( white, white 11.11%, brown 11.11%, brown 22.22% );
					opacity: 0.2;


					}
					/*h1 style*/
					h1{
					position: absolute;
					left: 34%;
					font-family: Broadway;
					top: 5%;
					}

					h2{
					font-family: Elephant;
					font-size: 27px;
					}

					/*body background*/
					body {
					display: flex;
					align-items: center;
					}

					body::before {
					display: flex;
					align-items: center;
					content: "";
					position: fixed;
					top: 0;
					left: 0;
					width: 100%;
					height: 100%;
					z-index: -1;
					background-image: url('IT.jpg');
					background-repeat: no-repeat;
					background-size: cover;
					opacity: 0.1;
					}
				</style>
				<h2>Kõik arvutid</h2>
				<ul>
					<xsl:for-each select="arvutit/arvuti">
						<li>
							<strong>
								<xsl:value-of select="nimetus"/>
							</strong>,
							<xsl:value-of select="hind"/>,
							<xsl:value-of select="firma"/>.
							<ul>
								<xsl:for-each select="lisad/monitor">
									<li>
										<strong>Monitor:</strong> <xsl:value-of select="nimetus"/>,
										<xsl:value-of select="hind"/>
									</li>
								</xsl:for-each>
								<xsl:for-each select="lisad/hiir">
									<li>
										<strong>Hiir:</strong>
										<xsl:value-of select="firma"/>
									</li>
								</xsl:for-each>
							</ul>
						</li>
					</xsl:for-each>
				</ul>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
