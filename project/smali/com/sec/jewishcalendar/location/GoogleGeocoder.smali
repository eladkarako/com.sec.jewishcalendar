.class public Lcom/sec/jewishcalendar/location/GoogleGeocoder;
.super Ljava/lang/Object;
.source "GoogleGeocoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/jewishcalendar/location/GoogleGeocoder$GeocodeResponseHandler;,
        Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;
    }
.end annotation


# static fields
.field private static final CONTENT_TYPE_XML:Ljava/lang/String; = "application/xml"

.field public static final KEY_FORMATTED:Ljava/lang/String; = "formatted_address"

.field private static final TAG:Ljava/lang/String; = "GoogleGeocoder"

.field private static final URL_ADDRESS:Ljava/lang/String; = "http://maps.googleapis.com/maps/api/geocode/xml?address=%s&language=%s&sensor=true"

.field private static final URL_ADDRESS_BOUNDED:Ljava/lang/String; = "http://maps.googleapis.com/maps/api/geocode/xml?address=%s&bounds=%f,%f|%f,%f&language=%s&sensor=true"

.field private static final URL_LATLNG:Ljava/lang/String; = "http://maps.googleapis.com/maps/api/geocode/xml?latlng=%f,%f&language=%s&sensor=true"

.field private static mParser:Ljavax/xml/parsers/SAXParser;

.field private static mParserFactory:Ljavax/xml/parsers/SAXParserFactory;

.field private static mSetSubLocality:Ljava/lang/reflect/Method;


# instance fields
.field protected final mContext:Landroid/content/Context;

.field protected final mLocale:Ljava/util/Locale;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 75
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sec/jewishcalendar/location/GoogleGeocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/Locale;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "locale"    # Ljava/util/Locale;

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Lcom/sec/jewishcalendar/location/GoogleGeocoder;->mContext:Landroid/content/Context;

    .line 87
    iput-object p2, p0, Lcom/sec/jewishcalendar/location/GoogleGeocoder;->mLocale:Ljava/util/Locale;

    .line 88
    return-void
.end method

.method static synthetic access$0()Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/sec/jewishcalendar/location/GoogleGeocoder;->mSetSubLocality:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic access$1(Ljava/lang/reflect/Method;)V
    .locals 0

    .prologue
    .line 63
    sput-object p0, Lcom/sec/jewishcalendar/location/GoogleGeocoder;->mSetSubLocality:Ljava/lang/reflect/Method;

    return-void
.end method

.method private getFromURL(Ljava/lang/String;I)Ljava/util/List;
    .locals 6
    .param p1, "queryUrl"    # Ljava/lang/String;
    .param p2, "maxResults"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/location/Address;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 144
    const-string v4, "GoogleGeocoder"

    invoke-static {v4, p1}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 146
    .local v3, "url":Ljava/net/URL;
    invoke-virtual {p0, v3}, Lcom/sec/jewishcalendar/location/GoogleGeocoder;->readFromNetwork(Ljava/net/URL;)[B

    move-result-object v0

    .line 148
    .local v0, "data":[B
    :try_start_0
    invoke-direct {p0, v0, p2}, Lcom/sec/jewishcalendar/location/GoogleGeocoder;->parseLocations([BI)Ljava/util/List;
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    return-object v4

    .line 149
    :catch_0
    move-exception v1

    .line 150
    .local v1, "pce":Ljavax/xml/parsers/ParserConfigurationException;
    new-instance v4, Ljava/io/IOException;

    invoke-virtual {v1}, Ljavax/xml/parsers/ParserConfigurationException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 151
    .end local v1    # "pce":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_1
    move-exception v2

    .line 152
    .local v2, "se":Lorg/xml/sax/SAXException;
    new-instance v4, Ljava/io/IOException;

    invoke-virtual {v2}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private parseLocations([BI)Ljava/util/List;
    .locals 5
    .param p1, "data"    # [B
    .param p2, "maxResults"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI)",
            "Ljava/util/List",
            "<",
            "Landroid/location/Address;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;,
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 206
    if-eqz p1, :cond_0

    array-length v3, p1

    const/16 v4, 0x12

    if-ge v3, v4, :cond_1

    .line 207
    :cond_0
    const/4 v2, 0x0

    .line 213
    :goto_0
    return-object v2

    .line 209
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 210
    .local v2, "results":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 211
    .local v0, "in":Ljava/io/ByteArrayInputStream;
    invoke-virtual {p0}, Lcom/sec/jewishcalendar/location/GoogleGeocoder;->getParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v1

    .line 212
    .local v1, "parser":Ljavax/xml/parsers/SAXParser;
    new-instance v3, Lcom/sec/jewishcalendar/location/GoogleGeocoder$GeocodeResponseHandler;

    invoke-direct {v3, p0, v2, p2}, Lcom/sec/jewishcalendar/location/GoogleGeocoder$GeocodeResponseHandler;-><init>(Lcom/sec/jewishcalendar/location/GoogleGeocoder;Ljava/util/List;I)V

    invoke-virtual {v1, v0, v3}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)V

    goto :goto_0
.end method


# virtual methods
.method public getFromLocation(DDI)Ljava/util/List;
    .locals 7
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .param p5, "maxResults"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DDI)",
            "Ljava/util/List",
            "<",
            "Landroid/location/Address;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    const-wide v2, -0x3fa9800000000000L    # -90.0

    cmpg-double v1, p1, v2

    if-ltz v1, :cond_0

    const-wide v2, 0x4056800000000000L    # 90.0

    cmpl-double v1, p1, v2

    if-lez v1, :cond_1

    .line 93
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "latitude == "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 95
    :cond_1
    const-wide v2, -0x3f99800000000000L    # -180.0

    cmpg-double v1, p3, v2

    if-ltz v1, :cond_2

    const-wide v2, 0x4066800000000000L    # 180.0

    cmpl-double v1, p3, v2

    if-lez v1, :cond_3

    .line 96
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "longitude == "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 98
    :cond_3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "http://maps.googleapis.com/maps/api/geocode/xml?latlng=%f,%f&language=%s&sensor=true"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    .line 99
    iget-object v5, p0, Lcom/sec/jewishcalendar/location/GoogleGeocoder;->mLocale:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 98
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, "queryUrl":Ljava/lang/String;
    invoke-direct {p0, v0, p5}, Lcom/sec/jewishcalendar/location/GoogleGeocoder;->getFromURL(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getFromLocationName(Ljava/lang/String;I)Ljava/util/List;
    .locals 5
    .param p1, "locationName"    # Ljava/lang/String;
    .param p2, "maxResults"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/location/Address;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 105
    if-nez p1, :cond_0

    .line 106
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "locationName == null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 108
    :cond_0
    const-string v1, "http://maps.googleapis.com/maps/api/geocode/xml?address=%s&language=%s&sensor=true"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    .line 109
    iget-object v4, p0, Lcom/sec/jewishcalendar/location/GoogleGeocoder;->mLocale:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 108
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, "queryUrl":Ljava/lang/String;
    invoke-direct {p0, v0, p2}, Lcom/sec/jewishcalendar/location/GoogleGeocoder;->getFromURL(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getFromLocationName(Ljava/lang/String;IDDDD)Ljava/util/List;
    .locals 9
    .param p1, "locationName"    # Ljava/lang/String;
    .param p2, "maxResults"    # I
    .param p3, "lowerLeftLatitude"    # D
    .param p5, "lowerLeftLongitude"    # D
    .param p7, "upperRightLatitude"    # D
    .param p9, "upperRightLongitude"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IDDDD)",
            "Ljava/util/List",
            "<",
            "Landroid/location/Address;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 117
    if-nez p1, :cond_0

    .line 118
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "locationName == null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 120
    :cond_0
    const-wide v4, -0x3fa9800000000000L    # -90.0

    cmpg-double v3, p3, v4

    if-ltz v3, :cond_1

    const-wide v4, 0x4056800000000000L    # 90.0

    cmpl-double v3, p3, v4

    if-lez v3, :cond_2

    .line 121
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "lowerLeftLatitude == "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 122
    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 121
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 124
    :cond_2
    const-wide v4, -0x3f99800000000000L    # -180.0

    cmpg-double v3, p5, v4

    if-ltz v3, :cond_3

    const-wide v4, 0x4066800000000000L    # 180.0

    cmpl-double v3, p5, v4

    if-lez v3, :cond_4

    .line 125
    :cond_3
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "lowerLeftLongitude == "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 126
    invoke-virtual {v4, p5, p6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 125
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 128
    :cond_4
    const-wide v4, -0x3fa9800000000000L    # -90.0

    cmpg-double v3, p7, v4

    if-ltz v3, :cond_5

    const-wide v4, 0x4056800000000000L    # 90.0

    cmpl-double v3, p7, v4

    if-lez v3, :cond_6

    .line 129
    :cond_5
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "upperRightLatitude == "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 130
    move-wide/from16 v0, p7

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 129
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 132
    :cond_6
    const-wide v4, -0x3f99800000000000L    # -180.0

    cmpg-double v3, p9, v4

    if-ltz v3, :cond_7

    const-wide v4, 0x4066800000000000L    # 180.0

    cmpl-double v3, p9, v4

    if-lez v3, :cond_8

    .line 133
    :cond_7
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "upperRightLongitude == "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 134
    move-wide/from16 v0, p9

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 133
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 136
    :cond_8
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    const-string v4, "http://maps.googleapis.com/maps/api/geocode/xml?address=%s&bounds=%f,%f|%f,%f&language=%s&sensor=true"

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    .line 137
    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-static {p5, p6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    invoke-static/range {p7 .. p8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    .line 138
    invoke-static/range {p9 .. p10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x5

    iget-object v7, p0, Lcom/sec/jewishcalendar/location/GoogleGeocoder;->mLocale:Ljava/util/Locale;

    invoke-virtual {v7}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 136
    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 139
    .local v2, "queryUrl":Ljava/lang/String;
    invoke-direct {p0, v2, p2}, Lcom/sec/jewishcalendar/location/GoogleGeocoder;->getFromURL(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v3

    return-object v3
.end method

.method protected getParser()Ljavax/xml/parsers/SAXParser;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 224
    sget-object v0, Lcom/sec/jewishcalendar/location/GoogleGeocoder;->mParser:Ljavax/xml/parsers/SAXParser;

    if-nez v0, :cond_0

    .line 225
    invoke-virtual {p0}, Lcom/sec/jewishcalendar/location/GoogleGeocoder;->getParserFactory()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    sput-object v0, Lcom/sec/jewishcalendar/location/GoogleGeocoder;->mParser:Ljavax/xml/parsers/SAXParser;

    .line 226
    :cond_0
    sget-object v0, Lcom/sec/jewishcalendar/location/GoogleGeocoder;->mParser:Ljavax/xml/parsers/SAXParser;

    return-object v0
.end method

.method protected getParserFactory()Ljavax/xml/parsers/SAXParserFactory;
    .locals 1

    .prologue
    .line 217
    sget-object v0, Lcom/sec/jewishcalendar/location/GoogleGeocoder;->mParserFactory:Ljavax/xml/parsers/SAXParserFactory;

    if-nez v0, :cond_0

    .line 218
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    sput-object v0, Lcom/sec/jewishcalendar/location/GoogleGeocoder;->mParserFactory:Ljavax/xml/parsers/SAXParserFactory;

    .line 219
    :cond_0
    sget-object v0, Lcom/sec/jewishcalendar/location/GoogleGeocoder;->mParserFactory:Ljavax/xml/parsers/SAXParserFactory;

    return-object v0
.end method

.method protected readFromNetwork(Ljava/net/URL;)[B
    .locals 13
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 157
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    .line 158
    .local v2, "conn":Ljava/net/HttpURLConnection;
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 159
    .local v1, "code":I
    const-string v10, "GoogleGeocoder"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "readFromNetwork code="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const/16 v10, 0xc8

    if-eq v1, v10, :cond_1

    .line 200
    :cond_0
    :goto_0
    return-object v5

    .line 163
    :cond_1
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v3

    .line 164
    .local v3, "contentType":Ljava/lang/String;
    const-string v10, "GoogleGeocoder"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "readFromNetwork contentType="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    if-eqz v3, :cond_0

    .line 168
    const-string v10, "application/xml"

    invoke-virtual {v3, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 171
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v8

    .line 172
    .local v8, "length":I
    const-string v10, "GoogleGeocoder"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "readFromNetwork length="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const/4 v5, 0x0

    .line 174
    .local v5, "data":[B
    const/4 v6, 0x0

    .line 176
    .local v6, "in":Ljava/io/InputStream;
    :try_start_0
    new-instance v7, Ljava/io/BufferedInputStream;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    invoke-direct {v7, v10}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 177
    .end local v6    # "in":Ljava/io/InputStream;
    .local v7, "in":Ljava/io/InputStream;
    if-gtz v8, :cond_4

    .line 178
    :try_start_1
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 179
    .local v9, "out":Ljava/io/ByteArrayOutputStream;
    const/16 v10, 0x400

    new-array v0, v10, [B

    .line 180
    .local v0, "buf":[B
    invoke-virtual {v7, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .line 181
    .local v4, "count":I
    :goto_1
    if-gez v4, :cond_3

    .line 185
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 186
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    .line 192
    .end local v0    # "buf":[B
    .end local v4    # "count":I
    .end local v9    # "out":Ljava/io/ByteArrayOutputStream;
    :goto_2
    if-eqz v7, :cond_2

    .line 194
    :try_start_2
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 198
    :cond_2
    :goto_3
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_0

    .line 182
    .restart local v0    # "buf":[B
    .restart local v4    # "count":I
    .restart local v9    # "out":Ljava/io/ByteArrayOutputStream;
    :cond_3
    const/4 v10, 0x0

    :try_start_3
    invoke-virtual {v9, v0, v10, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 183
    invoke-virtual {v7, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    goto :goto_1

    .line 188
    .end local v0    # "buf":[B
    .end local v4    # "count":I
    .end local v9    # "out":Ljava/io/ByteArrayOutputStream;
    :cond_4
    new-array v5, v8, [B

    .line 189
    invoke-virtual {v7, v5}, Ljava/io/InputStream;->read([B)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 191
    :catchall_0
    move-exception v10

    move-object v6, v7

    .line 192
    .end local v7    # "in":Ljava/io/InputStream;
    .restart local v6    # "in":Ljava/io/InputStream;
    :goto_4
    if-eqz v6, :cond_5

    .line 194
    :try_start_4
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 198
    :cond_5
    :goto_5
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 199
    throw v10

    .line 195
    :catch_0
    move-exception v11

    goto :goto_5

    .end local v6    # "in":Ljava/io/InputStream;
    .restart local v7    # "in":Ljava/io/InputStream;
    :catch_1
    move-exception v10

    goto :goto_3

    .line 191
    .end local v7    # "in":Ljava/io/InputStream;
    .restart local v6    # "in":Ljava/io/InputStream;
    :catchall_1
    move-exception v10

    goto :goto_4
.end method
