<!-- ================================================================== -->
<!--    $Id: def-mime.mrc,v 1.24 2003/01/19 01:39:32 ehood Exp $
        Earl Hood <earl@earlhood.com>
  -->
<!--    MHonArc Resource File                                           --
  --                                                                    --
  --    Description:                                                    --
  --	    Default resource settings related to MIME processing	--
  --									-->
<!-- ================================================================== -->

<!-- MIMEFILTERS maps content-types to converter functions.
  -->
<MIMEFilters>
application/ms-tnef;       m2h_null::filter;            mhnull.pl
application/octet-stream;  m2h_external::filter;        mhexternal.pl
application/*;             m2h_external::filter;        mhexternal.pl
application/x-patch;       m2h_text_plain::filter;      mhtxtplain.pl
audio/*;                   m2h_external::filter;        mhexternal.pl
chemical/*;                m2h_external::filter;        mhexternal.pl
model/*;                   m2h_external::filter;        mhexternal.pl
image/*;                   m2h_external::filter;        mhexternal.pl
message/delivery-status;   m2h_text_plain::filter;      mhtxtplain.pl
message/external-body;     m2h_msg_extbody::filter;     mhmsgextbody.pl
message/partial;           m2h_text_plain::filter;      mhtxtplain.pl
text/*;                    m2h_text_plain::filter;      mhtxtplain.pl
text/enriched;             m2h_text_enriched::filter;   mhtxtenrich.pl
text/html;                 m2h_text_html::filter;       mhtxthtml.pl
text/plain;                m2h_text_plain::filter;      mhtxtplain.pl
text/richtext;             m2h_text_enriched::filter;   mhtxtenrich.pl
text/tab-separated-values; m2h_text_tsv::filter;        mhtxttsv.pl
text/x-html;               m2h_text_html::filter;       mhtxthtml.pl
video/*;                   m2h_external::filter;        mhexternal.pl
x-sun-attachment;          m2h_text_plain::filter;      mhtxtplain.pl
</MIMEFilters>

<!-- MIMEARGS defines arguments to pass to filters registered via
     MIMEFILTERS.
  -->
<MIMEArgs>
m2h_external::filter; inline
</MIMEArgs>

<!-- MIMEALTPREFS defines content-type preferences for
     multipart/alternative messages.
  -->
<MIMEAltPrefs>
</MIMEAltPrefs>

<!-- MIMEDECODERS defines functions that decode data according
     to an entitie's Content-Transfer-Encoding.
  -->
<MIMEDecoders>
7bit;   	  as-is;
8bit;   	  as-is;
binary;   	  as-is;
base64;   	  base64::b64decode;		base64.pl
quoted-printable; quoted_printable::qprdecode;	qprint.pl
x-uuencode;   	  base64::uudecode;		base64.pl
xuue;   	  base64::uudecode;		base64.pl
uuencode;   	  base64::uudecode;		base64.pl
</MIMEDecoders>

<!-- CHARSETCONVERTERS defines functions that convert character
     data encoded in a character set to HTML.  These functions are
     used for non-ASCII encoded message header field data and used
     by some of the provided text-based MIMEFILTERS.

     Since many charsets are known by a variety of names,
     CHARSETCONVERTERS is used to map a function to one of the
     names for a charset, and the CHARSETALIASES resource (shown
     later) is used to define all alternate names for a given
     charset.
  -->
<CharsetConverters>
plain;		    mhonarc::htmlize;
us-ascii;	    mhonarc::htmlize;
iso-8859-1;	    MHonArc::CharEnt::str2sgml;     MHonArc/CharEnt.pm
iso-8859-2;	    MHonArc::CharEnt::str2sgml;     MHonArc/CharEnt.pm
iso-8859-3;	    MHonArc::CharEnt::str2sgml;     MHonArc/CharEnt.pm
iso-8859-4;	    MHonArc::CharEnt::str2sgml;     MHonArc/CharEnt.pm
iso-8859-5;	    MHonArc::CharEnt::str2sgml;     MHonArc/CharEnt.pm
iso-8859-6;	    MHonArc::CharEnt::str2sgml;     MHonArc/CharEnt.pm
iso-8859-7;	    MHonArc::CharEnt::str2sgml;     MHonArc/CharEnt.pm
iso-8859-8;	    MHonArc::CharEnt::str2sgml;     MHonArc/CharEnt.pm
iso-8859-9;	    MHonArc::CharEnt::str2sgml;     MHonArc/CharEnt.pm
iso-8859-10;	    MHonArc::CharEnt::str2sgml;     MHonArc/CharEnt.pm
iso-8859-11;	    MHonArc::CharEnt::str2sgml;     MHonArc/CharEnt.pm
iso-8859-13;	    MHonArc::CharEnt::str2sgml;     MHonArc/CharEnt.pm
iso-8859-14;	    MHonArc::CharEnt::str2sgml;     MHonArc/CharEnt.pm
iso-8859-15;	    MHonArc::CharEnt::str2sgml;     MHonArc/CharEnt.pm
iso-8859-16;	    MHonArc::CharEnt::str2sgml;     MHonArc/CharEnt.pm
iso-2022-jp;	    MHonArc::CharEnt::str2sgml;     MHonArc/CharEnt.pm
iso-2022-kr;	    MHonArc::CharEnt::str2sgml;     MHonArc/CharEnt.pm
euc-jp;		    MHonArc::CharEnt::str2sgml;     MHonArc/CharEnt.pm
utf-8;		    MHonArc::CharEnt::str2sgml;     MHonArc/CharEnt.pm
cp866;		    MHonArc::CharEnt::str2sgml;     MHonArc/CharEnt.pm
cp932;		    MHonArc::CharEnt::str2sgml;     MHonArc/CharEnt.pm
cp936;		    MHonArc::CharEnt::str2sgml;     MHonArc/CharEnt.pm
cp949;		    MHonArc::CharEnt::str2sgml;     MHonArc/CharEnt.pm
cp950;		    MHonArc::CharEnt::str2sgml;     MHonArc/CharEnt.pm
cp1250;		    MHonArc::CharEnt::str2sgml;     MHonArc/CharEnt.pm
cp1251;		    MHonArc::CharEnt::str2sgml;     MHonArc/CharEnt.pm
cp1252;		    MHonArc::CharEnt::str2sgml;     MHonArc/CharEnt.pm
cp1253;		    MHonArc::CharEnt::str2sgml;     MHonArc/CharEnt.pm
cp1254;		    MHonArc::CharEnt::str2sgml;     MHonArc/CharEnt.pm
cp1255;		    MHonArc::CharEnt::str2sgml;     MHonArc/CharEnt.pm
cp1256;		    MHonArc::CharEnt::str2sgml;     MHonArc/CharEnt.pm
cp1257;		    MHonArc::CharEnt::str2sgml;     MHonArc/CharEnt.pm
cp1258;		    MHonArc::CharEnt::str2sgml;     MHonArc/CharEnt.pm
koi-0;		    MHonArc::CharEnt::str2sgml;     MHonArc/CharEnt.pm
koi-7;		    MHonArc::CharEnt::str2sgml;     MHonArc/CharEnt.pm
koi8-a;		    MHonArc::CharEnt::str2sgml;     MHonArc/CharEnt.pm
koi8-b;		    MHonArc::CharEnt::str2sgml;     MHonArc/CharEnt.pm
koi8-e;		    MHonArc::CharEnt::str2sgml;     MHonArc/CharEnt.pm
koi8-f;		    MHonArc::CharEnt::str2sgml;     MHonArc/CharEnt.pm
koi8-r;		    MHonArc::CharEnt::str2sgml;     MHonArc/CharEnt.pm
koi8-u;		    MHonArc::CharEnt::str2sgml;     MHonArc/CharEnt.pm
gost-19768-87;	    MHonArc::CharEnt::str2sgml;     MHonArc/CharEnt.pm
viscii;		    MHonArc::CharEnt::str2sgml;     MHonArc/CharEnt.pm
big5-eten;	    MHonArc::CharEnt::str2sgml;     MHonArc/CharEnt.pm
big5-hkscs;	    MHonArc::CharEnt::str2sgml;     MHonArc/CharEnt.pm
gb2312;		    MHonArc::CharEnt::str2sgml;     MHonArc/CharEnt.pm
macarabic;	    MHonArc::CharEnt::str2sgml;     MHonArc/CharEnt.pm
maccentraleurroman; MHonArc::CharEnt::str2sgml;     MHonArc/CharEnt.pm
maccroatian;	    MHonArc::CharEnt::str2sgml;     MHonArc/CharEnt.pm
maccyrillic;	    MHonArc::CharEnt::str2sgml;     MHonArc/CharEnt.pm
macgreek;	    MHonArc::CharEnt::str2sgml;     MHonArc/CharEnt.pm
machebrew;	    MHonArc::CharEnt::str2sgml;     MHonArc/CharEnt.pm
macicelandic;	    MHonArc::CharEnt::str2sgml;     MHonArc/CharEnt.pm
macromanian;	    MHonArc::CharEnt::str2sgml;     MHonArc/CharEnt.pm
macroman;	    MHonArc::CharEnt::str2sgml;     MHonArc/CharEnt.pm
macthai;	    MHonArc::CharEnt::str2sgml;     MHonArc/CharEnt.pm
macturkish;	    MHonArc::CharEnt::str2sgml;     MHonArc/CharEnt.pm
hp-roman8;	    MHonArc::CharEnt::str2sgml;     MHonArc/CharEnt.pm
default;	    -ignore-
</CharsetConverters>

<!-- CHARSETALIASES defines alternate names (aliases) for charsets
     listed in CHARSETCONVERTERS.
  -->
<CharsetAliases>
us-ascii;	    ascii
us-ascii;	    ansi_x3.4-1968
us-ascii;	    iso646
us-ascii;	    iso646-us
us-ascii;	    iso646.irv:1991
us-ascii;	    cp367
us-ascii;	    ibm367
us-ascii;	    csascii
us-ascii;	    iso-ir-6
us-ascii;	    us
iso-8859-1;	    latin1
iso-8859-1;	    l1
iso-8859-1;	    iso_8859_1
iso-8859-1;	    iso_8859-1:1987
iso-8859-1;	    iso8859-1
iso-8859-1;	    iso8859_1
iso-8859-1;	    8859-1
iso-8859-1;	    8859_1
iso-8859-1;	    cp819
iso-8859-1;	    ibm819
iso-8859-1;	    x-mac-latin1
iso-8859-1;	    iso-ir-100
iso-8859-2;	    latin2
iso-8859-2;	    l2
iso-8859-2;	    iso_8859_2
iso-8859-2;	    iso_8859-2:1987
iso-8859-2;	    iso8859-2
iso-8859-2;	    iso8859_2
iso-8859-2;	    8859-2
iso-8859-2;	    8859_2
iso-8859-2;	    iso-ir-101
iso-8859-3;	    latin3
iso-8859-3;	    l3
iso-8859-3;	    iso_8859_3
iso-8859-3;	    iso_8859-3:1988
iso-8859-3;	    iso8859-3
iso-8859-3;	    iso8859_3
iso-8859-3;	    8859-3
iso-8859-3;	    8859_3
iso-8859-3;	    iso-ir-109
iso-8859-4;	    latin4
iso-8859-4;	    l4
iso-8859-4;	    iso_8859_4
iso-8859-4;	    iso_8859-4:1988
iso-8859-4;	    iso8859-4
iso-8859-4;	    iso8859_4
iso-8859-4;	    8859-4
iso-8859-4;	    8859_4
iso-8859-4;	    iso-ir-110
iso-8859-5;	    iso_8859-5:1988
iso-8859-5;	    cyrillic
iso-8859-5;	    iso-ir-144
iso-8859-6;	    iso_8859-6:1987
iso-8859-6;	    arabic
iso-8859-6;	    asmo-708
iso-8859-6;	    ecma-114
iso-8859-6;	    iso-ir-127
iso-8859-7;	    iso_8859-7:1987
iso-8859-7;	    greek
iso-8859-7;	    greek8
iso-8859-7;	    ecma-118
iso-8859-7;	    elot_928
iso-8859-7;	    iso-ir-126
iso-8859-8;	    iso-8859-8-i
iso-8859-8;	    iso_8859-8:1988
iso-8859-8;	    hebrew
iso-8859-8;	    iso-ir-138
iso-8859-9;	    latin5
iso-8859-9;	    l5
iso-8859-9;	    iso_8859_9
iso-8859-9;	    iso-8859_9:1989
iso-8859-9;	    iso8859-9
iso-8859-9;	    iso8859_9
iso-8859-9;	    8859-9
iso-8859-9;	    8859_9
iso-8859-9;	    iso-ir-148
iso-8859-10;	    latin6
iso-8859-10;	    l6
iso-8859-10;	    iso_8859_10
iso-8859-10;	    iso_8859-10:1993
iso-8859-10;	    iso8859-10
iso-8859-10;	    iso8859_10
iso-8859-10;	    8859-10
iso-8859-10;	    8859_10
iso-8859-10;	    iso-ir-157
iso-8859-13;	    latin7 ,l7
iso-8859-14;	    latin8 ,l8
iso-8859-15;	    latin9
iso-8859-15;	    latin0
iso-8859-15;	    l9
iso-8859-15;	    l0
iso-8859-15;	    iso_8859_15
iso-8859-15;	    iso8859-15
iso-8859-15;	    iso8859_15
iso-8859-15;	    8859-15
iso-8859-15;	    8859_15
iso-2022-jp;	    iso-2022-jp-1
utf-8;		    utf8
cp932;		    shiftjis
cp932;		    shift_jis
cp932;		    shift-jis
cp932;		    x-sjis
cp932;		    ms_kanji
cp932;		    csshiftjis
cp936;		    gbk
cp936;		    ms936
cp936;		    windows-936
cp949:		    euc-kr
cp949:		    ks_c_5601-1987
cp949:		    ks_c_5601-1989
cp949:		    ksc_5601
cp949:		    iso-ir-149
cp949:		    windows-949
cp949:		    ms949
cp949:		    korean
cp950;		    windows-950
cp1250;		    windows-1250
cp1251;		    windows-1251
cp1252;		    windows-1252
cp1253;		    windows-1253
cp1254;		    windows-1254
cp1255;		    windows-1255
cp1256;		    windows-1256
cp1257;		    windows-1257
cp1258;		    windows-1258
koi-0;		    gost-13052
koi8-e;		    iso-ir-111
koi8-e;		    ecma-113:1986
koi8-r;		    cp878
gost-19768-87;	    ecma-cyrillic
gost-19768-87;	    ecma-113
gost-19768-87;	    ecma-113:1988
big5-eten;	    big5
big5-eten;	    csbig5
big5-eten;	    tcs-big5
big5-eten;	    tcsbig5
big5-hkscs;	    big5hk
big5-hkscs;	    big5hkscs
big5-hkscs;	    hkscs-big5
big5-hkscs;	    hk-big5
gb2312;		    gb_2312-80
gb2312;		    csgb2312
gb2312;		    hz-gb-2312
gb2312;		    iso-ir-58
gb2312;		    euc-cn
gb2312;		    chinese
gb2312;		    csiso58gb231280
macarabic;          apple-arabic
maccentraleurroman; apple-centeuro
maccroatian;        apple-croatian
maccyrillic;        apple-cyrillic
macgreek;           apple-greek
machebrew;          apple-hebrew
macicelandic;       apple-iceland
macromanian;        apple-romanian
macroman;           apple-roman
macthai;            apple-thai
macturkish;         apple-turkish
macarabic;          x-mac-arabic
maccentraleurroman; x-mac-centraleurroman
maccroatian;        x-mac-croatian
maccyrillic;        x-mac-cyrillic
macgreek;           x-mac-greek
machebrew;          x-mac-hebrew
macicelandic;       x-mac-icelandic
macromanian;        x-mac-romanian
macroman;           x-mac-roman
macthai;            x-mac-thai
macturkish;         x-mac-turkish
</CharsetAliases>
