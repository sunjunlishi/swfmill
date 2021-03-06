<?xml version="1.0"?>
<xsl:stylesheet	xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version='1.0'>

	<xsl:template mode="ctype" match="*">
		<xsl:message terminate="yes">Unknown data type: <xsl:value-of select="name()"/>.</xsl:message>
	</xsl:template>

	<xsl:template mode="ctype" match="byte">std::uint8_t</xsl:template>
	<xsl:template mode="ctype" match="word">std::uint16_t</xsl:template>
	<xsl:template mode="ctype" match="byteOrWord">std::uint16_t</xsl:template>
	<xsl:template mode="ctype" match="string">char *</xsl:template>
	<xsl:template mode="ctype" match="fixedpoint">float</xsl:template>
	<xsl:template mode="ctype" match="fixedpoint2">float</xsl:template>
	<xsl:template mode="ctype" match="bit">bool</xsl:template>
	<xsl:template mode="ctype" match="integer">std::int32_t</xsl:template>
	<xsl:template mode="ctype" match="object"><xsl:value-of select="@type"/></xsl:template>
	<xsl:template mode="ctype" match="list">List&lt;<xsl:value-of select="@type"/>&gt;</xsl:template>
	<xsl:template mode="ctype" match="data">unsigned char *</xsl:template>
	<xsl:template mode="ctype" match="uint32">std::uint32_t</xsl:template>
	<xsl:template mode="ctype" match="float">float</xsl:template>
	<xsl:template mode="ctype" match="double">double</xsl:template>
	<xsl:template mode="ctype" match="half">float</xsl:template>
	<xsl:template mode="ctype" match="xml">char *</xsl:template>
	<xsl:template mode="ctype" match="u30">std::uint32_t</xsl:template>
	<xsl:template mode="ctype" match="s24">std::int32_t</xsl:template>
	<xsl:template mode="ctype" match="encodedu32">std::uint32_t</xsl:template>

	<xsl:template mode="printf" match="*">
		<xsl:message terminate="yes">Unknown data type: <xsl:value-of select="name()"/>.</xsl:message>
	</xsl:template>

	<xsl:template mode="printf" match="byte">%" PRIu8 "</xsl:template>
	<xsl:template mode="printf" match="word">%" PRIu16 "</xsl:template>
	<xsl:template mode="printf" match="byteOrWord">%" PRIu16 "</xsl:template>
	<xsl:template mode="printf" match="string">%s</xsl:template>
	<xsl:template mode="printf" match="fixedpoint">%G</xsl:template>
	<xsl:template mode="printf" match="fixedpoint2">%G</xsl:template>
	<xsl:template mode="printf" match="bit">%i</xsl:template>
	<xsl:template mode="printf" match="integer">%" PRIi32 "</xsl:template>
	<xsl:template mode="printf" match="object|list|data">%p</xsl:template>
	<xsl:template mode="printf" match="uint32">%" PRIi32 "</xsl:template>
	<xsl:template mode="printf" match="float|double|half">%g</xsl:template>
	<xsl:template mode="printf" match="xml">%s</xsl:template>
	<xsl:template mode="printf" match="u30">%" PRIi32 "</xsl:template>
	<xsl:template mode="printf" match="s24">%" PRIi32 "</xsl:template>
	<xsl:template mode="printf" match="encodedu32">%" PRIi32 "</xsl:template>

	<xsl:template mode="scanf" match="*">
		<xsl:message terminate="yes">Unknown data type: <xsl:value-of select="name()"/>.</xsl:message>
	</xsl:template>

	<xsl:template mode="scanf" match="byte">%" SCNi8 "</xsl:template>
	<xsl:template mode="scanf" match="word">%" SCNi16 "</xsl:template>
	<xsl:template mode="scanf" match="byteOrWord">%" SCNi16 "</xsl:template>
	<xsl:template mode="scanf" match="string">%s</xsl:template>
	<xsl:template mode="scanf" match="fixedpoint">%G</xsl:template>
	<xsl:template mode="scanf" match="fixedpoint2">%G</xsl:template>
	<xsl:template mode="scanf" match="bit">%i</xsl:template>
	<xsl:template mode="scanf" match="integer">%" SCNi32 "</xsl:template>
	<xsl:template mode="scanf" match="object|list|data">%p</xsl:template>
	<xsl:template mode="scanf" match="uint32">%" SCNi32 "</xsl:template>
	<xsl:template mode="scanf" match="float|double|half">%g</xsl:template>
	<xsl:template mode="scanf" match="xml">%s</xsl:template>
	<xsl:template mode="scanf" match="u30">%" SCNi32 "</xsl:template>
	<xsl:template mode="scanf" match="s24">%" SCNi32 "</xsl:template>
	<xsl:template mode="scanf" match="encodedu32">%" SCNi32 "</xsl:template>

	<xsl:template mode="default" match="*">
		<xsl:message terminate="yes">Unknown data type: <xsl:value-of select="name()"/>.</xsl:message>
	</xsl:template>

	<xsl:template mode="default" match="byte|word|byteOrWord|fixedpoint|fixedpoint2|bit|integer">0</xsl:template>
	<xsl:template mode="default" match="uint32|float|double|half|u30|s24|encodedu32">0</xsl:template>
	<xsl:template mode="default" match="string|data|xml">NULL</xsl:template>

</xsl:stylesheet>
