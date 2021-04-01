.class public Lnet/sourceforge/zmanim/util/ZmanimFormatter;
.super Ljava/lang/Object;
.source "ZmanimFormatter.java"


# static fields
.field public static final DECIMAL_FORMAT:I = 0x1

.field public static final HOUR_MILLIS:J = 0x36ee80L

.field static final MINUTE_MILLIS:J = 0xea60L

.field public static final SEXAGESIMAL_FORMAT:I = 0x2

.field public static final SEXAGESIMAL_MILLIS_FORMAT:I = 0x4

.field public static final SEXAGESIMAL_SECONDS_FORMAT:I = 0x3

.field public static final SEXAGESIMAL_XSD_FORMAT:I = 0x0

.field public static final XSD_DURATION_FORMAT:I = 0x5

.field private static milliNF:Ljava/text/DecimalFormat;

.field private static minuteSecondNF:Ljava/text/DecimalFormat;


# instance fields
.field private dateFormat:Ljava/text/SimpleDateFormat;

.field private hourNF:Ljava/text/DecimalFormat;

.field private prependZeroHours:Z

.field private timeFormat:I

.field private timeZone:Ljava/util/TimeZone;

.field private useMillis:Z

.field private useSeconds:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 45
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnet/sourceforge/zmanim/util/ZmanimFormatter;->minuteSecondNF:Ljava/text/DecimalFormat;

    .line 49
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "000"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnet/sourceforge/zmanim/util/ZmanimFormatter;->milliNF:Ljava/text/DecimalFormat;

    .line 104
    return-void
.end method

.method public constructor <init>(ILjava/text/SimpleDateFormat;Ljava/util/TimeZone;)V
    .locals 3
    .param p1, "format"    # I
    .param p2, "dateFormat"    # Ljava/text/SimpleDateFormat;
    .param p3, "timeZone"    # Ljava/util/TimeZone;

    .prologue
    const/4 v2, 0x0

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-boolean v2, p0, Lnet/sourceforge/zmanim/util/ZmanimFormatter;->prependZeroHours:Z

    .line 41
    iput-boolean v2, p0, Lnet/sourceforge/zmanim/util/ZmanimFormatter;->useSeconds:Z

    .line 43
    iput-boolean v2, p0, Lnet/sourceforge/zmanim/util/ZmanimFormatter;->useMillis:Z

    .line 53
    const/4 v1, 0x0

    iput-object v1, p0, Lnet/sourceforge/zmanim/util/ZmanimFormatter;->timeZone:Ljava/util/TimeZone;

    .line 78
    iput v2, p0, Lnet/sourceforge/zmanim/util/ZmanimFormatter;->timeFormat:I

    .line 125
    invoke-virtual {p0, p3}, Lnet/sourceforge/zmanim/util/ZmanimFormatter;->setTimeZone(Ljava/util/TimeZone;)V

    .line 126
    const-string v0, "0"

    .line 127
    .local v0, "hourFormat":Ljava/lang/String;
    iget-boolean v1, p0, Lnet/sourceforge/zmanim/util/ZmanimFormatter;->prependZeroHours:Z

    if-eqz v1, :cond_0

    .line 128
    const-string v0, "00"

    .line 130
    :cond_0
    new-instance v1, Ljava/text/DecimalFormat;

    invoke-direct {v1, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lnet/sourceforge/zmanim/util/ZmanimFormatter;->hourNF:Ljava/text/DecimalFormat;

    .line 131
    invoke-virtual {p0, p1}, Lnet/sourceforge/zmanim/util/ZmanimFormatter;->setTimeFormat(I)V

    .line 132
    invoke-virtual {p2, p3}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 133
    invoke-virtual {p0, p2}, Lnet/sourceforge/zmanim/util/ZmanimFormatter;->setDateFormat(Ljava/text/SimpleDateFormat;)V

    .line 134
    return-void
.end method

.method public constructor <init>(Ljava/util/TimeZone;)V
    .locals 3
    .param p1, "timeZone"    # Ljava/util/TimeZone;

    .prologue
    .line 110
    const/4 v0, 0x0

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "h:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1, p1}, Lnet/sourceforge/zmanim/util/ZmanimFormatter;-><init>(ILjava/text/SimpleDateFormat;Ljava/util/TimeZone;)V

    .line 111
    return-void
.end method

.method private static formatDigits(I)Ljava/lang/String;
    .locals 3
    .param p0, "digits"    # I

    .prologue
    .line 288
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 289
    .local v0, "dd":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x30

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "dd":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method private static includeMethod(Ljava/lang/reflect/Method;)Z
    .locals 6
    .param p0, "method"    # Ljava/lang/reflect/Method;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 475
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 478
    .local v1, "methodWhiteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 481
    .local v0, "methodBlackList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 494
    :cond_0
    :goto_0
    return v2

    .line 483
    :cond_1
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v2, v3

    .line 484
    goto :goto_0

    .line 486
    :cond_2
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    array-length v4, v4

    if-lez v4, :cond_3

    move v2, v3

    .line 487
    goto :goto_0

    .line 488
    :cond_3
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "get"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    move v2, v3

    .line 489
    goto :goto_0

    .line 491
    :cond_4
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Date"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "long"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    move v2, v3

    .line 494
    goto :goto_0
.end method

.method private setSettings(ZZZ)V
    .locals 0
    .param p1, "prependZeroHours"    # Z
    .param p2, "useSeconds"    # Z
    .param p3, "useMillis"    # Z

    .prologue
    .line 171
    iput-boolean p1, p0, Lnet/sourceforge/zmanim/util/ZmanimFormatter;->prependZeroHours:Z

    .line 172
    iput-boolean p2, p0, Lnet/sourceforge/zmanim/util/ZmanimFormatter;->useSeconds:Z

    .line 173
    iput-boolean p3, p0, Lnet/sourceforge/zmanim/util/ZmanimFormatter;->useMillis:Z

    .line 174
    return-void
.end method

.method public static toXML(Lnet/sourceforge/zmanim/AstronomicalCalendar;)Ljava/lang/String;
    .locals 20
    .param p0, "ac"    # Lnet/sourceforge/zmanim/AstronomicalCalendar;

    .prologue
    .line 366
    new-instance v6, Lnet/sourceforge/zmanim/util/ZmanimFormatter;

    const/4 v14, 0x5

    new-instance v15, Ljava/text/SimpleDateFormat;

    .line 367
    const-string v16, "yyyy-MM-dd\'T\'HH:mm:ss"

    invoke-direct/range {v15 .. v16}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getGeoLocation()Lnet/sourceforge/zmanim/util/GeoLocation;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lnet/sourceforge/zmanim/util/GeoLocation;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v16

    .line 366
    move-object/from16 v0, v16

    invoke-direct {v6, v14, v15, v0}, Lnet/sourceforge/zmanim/util/ZmanimFormatter;-><init>(ILjava/text/SimpleDateFormat;Ljava/util/TimeZone;)V

    .line 368
    .local v6, "formatter":Lnet/sourceforge/zmanim/util/ZmanimFormatter;
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v14, "yyyy-MM-dd"

    invoke-direct {v3, v14}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 369
    .local v3, "df":Ljava/text/DateFormat;
    invoke-virtual/range {p0 .. p0}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getGeoLocation()Lnet/sourceforge/zmanim/util/GeoLocation;

    move-result-object v14

    invoke-virtual {v14}, Lnet/sourceforge/zmanim/util/GeoLocation;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 371
    new-instance v9, Ljava/lang/StringBuffer;

    const-string v14, "<"

    invoke-direct {v9, v14}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 372
    .local v9, "sb":Ljava/lang/StringBuffer;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    const-string v15, "net.sourceforge.zmanim.AstronomicalCalendar"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 373
    const-string v14, "AstronomicalTimes"

    invoke-virtual {v9, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 388
    :cond_0
    :goto_0
    const-string v14, " date=\""

    invoke-virtual {v9, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getCalendar()Ljava/util/Calendar;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v15

    invoke-virtual {v3, v15}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    const-string v15, "\""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 389
    const-string v14, " type=\""

    invoke-virtual {v9, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    const-string v15, "\""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 390
    const-string v14, " algorithm=\""

    invoke-virtual {v9, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getAstronomicalCalculator()Lnet/sourceforge/zmanim/util/AstronomicalCalculator;

    move-result-object v15

    invoke-virtual {v15}, Lnet/sourceforge/zmanim/util/AstronomicalCalculator;->getCalculatorName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    const-string v15, "\""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 391
    const-string v14, " location=\""

    invoke-virtual {v9, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getGeoLocation()Lnet/sourceforge/zmanim/util/GeoLocation;

    move-result-object v15

    invoke-virtual {v15}, Lnet/sourceforge/zmanim/util/GeoLocation;->getLocationName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    const-string v15, "\""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 392
    const-string v14, " latitude=\""

    invoke-virtual {v9, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getGeoLocation()Lnet/sourceforge/zmanim/util/GeoLocation;

    move-result-object v15

    invoke-virtual {v15}, Lnet/sourceforge/zmanim/util/GeoLocation;->getLatitude()D

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v14

    const-string v15, "\""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 393
    const-string v14, " longitude=\""

    invoke-virtual {v9, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getGeoLocation()Lnet/sourceforge/zmanim/util/GeoLocation;

    move-result-object v15

    invoke-virtual {v15}, Lnet/sourceforge/zmanim/util/GeoLocation;->getLongitude()D

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v14

    const-string v15, "\""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 394
    const-string v14, " elevation=\""

    invoke-virtual {v9, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getGeoLocation()Lnet/sourceforge/zmanim/util/GeoLocation;

    move-result-object v15

    invoke-virtual {v15}, Lnet/sourceforge/zmanim/util/GeoLocation;->getElevation()D

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v14

    const-string v15, "\""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 395
    const-string v14, " timeZoneName=\""

    invoke-virtual {v9, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getGeoLocation()Lnet/sourceforge/zmanim/util/GeoLocation;

    move-result-object v15

    invoke-virtual {v15}, Lnet/sourceforge/zmanim/util/GeoLocation;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/TimeZone;->getDisplayName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    const-string v15, "\""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 396
    const-string v14, " timeZoneID=\""

    invoke-virtual {v9, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getGeoLocation()Lnet/sourceforge/zmanim/util/GeoLocation;

    move-result-object v15

    invoke-virtual {v15}, Lnet/sourceforge/zmanim/util/GeoLocation;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    const-string v15, "\""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 397
    const-string v14, " timeZoneOffset=\""

    invoke-virtual {v9, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    .line 398
    invoke-virtual/range {p0 .. p0}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getGeoLocation()Lnet/sourceforge/zmanim/util/GeoLocation;

    move-result-object v15

    invoke-virtual {v15}, Lnet/sourceforge/zmanim/util/GeoLocation;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getCalendar()Ljava/util/Calendar;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v15

    int-to-double v0, v15

    move-wide/from16 v16, v0

    const-wide v18, 0x414b774000000000L    # 3600000.0

    div-double v16, v16, v18

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v14

    .line 399
    const-string v15, "\""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 401
    const-string v14, ">\n"

    invoke-virtual {v9, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 403
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v11

    .line 404
    .local v11, "theMethods":[Ljava/lang/reflect/Method;
    const-string v10, ""

    .line 405
    .local v10, "tagName":Ljava/lang/String;
    const/4 v12, 0x0

    .line 406
    .local v12, "value":Ljava/lang/Object;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 407
    .local v2, "dateList":Ljava/util/List;, "Ljava/util/List<Lnet/sourceforge/zmanim/util/Zman;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 408
    .local v4, "durationList":Ljava/util/List;, "Ljava/util/List<Lnet/sourceforge/zmanim/util/Zman;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 409
    .local v8, "otherList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .end local v12    # "value":Ljava/lang/Object;
    .local v7, "i":I
    :goto_1
    array-length v14, v11

    if-lt v7, v14, :cond_4

    .line 438
    sget-object v14, Lnet/sourceforge/zmanim/util/Zman;->DATE_ORDER:Ljava/util/Comparator;

    invoke-static {v2, v14}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 440
    const/4 v7, 0x0

    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v14

    if-lt v7, v14, :cond_b

    .line 446
    sget-object v14, Lnet/sourceforge/zmanim/util/Zman;->DURATION_ORDER:Ljava/util/Comparator;

    invoke-static {v4, v14}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 447
    const/4 v7, 0x0

    :goto_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v14

    if-lt v7, v14, :cond_c

    .line 454
    const/4 v7, 0x0

    :goto_4
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v14

    if-lt v7, v14, :cond_d

    .line 458
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    const-string v15, "net.sourceforge.zmanim.AstronomicalCalendar"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_e

    .line 459
    const-string v14, "</AstronomicalTimes>"

    invoke-virtual {v9, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 465
    :cond_1
    :goto_5
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    return-object v14

    .line 377
    .end local v2    # "dateList":Ljava/util/List;, "Ljava/util/List<Lnet/sourceforge/zmanim/util/Zman;>;"
    .end local v4    # "durationList":Ljava/util/List;, "Ljava/util/List<Lnet/sourceforge/zmanim/util/Zman;>;"
    .end local v7    # "i":I
    .end local v8    # "otherList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "tagName":Ljava/lang/String;
    .end local v11    # "theMethods":[Ljava/lang/reflect/Method;
    :cond_2
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    const-string v15, "net.sourceforge.zmanim.ComplexZmanimCalendar"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 378
    const-string v14, "Zmanim"

    invoke-virtual {v9, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 382
    :cond_3
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    const-string v15, "net.sourceforge.zmanim.ZmanimCalendar"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 383
    const-string v14, "BasicZmanim"

    invoke-virtual {v9, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 410
    .restart local v2    # "dateList":Ljava/util/List;, "Ljava/util/List<Lnet/sourceforge/zmanim/util/Zman;>;"
    .restart local v4    # "durationList":Ljava/util/List;, "Ljava/util/List<Lnet/sourceforge/zmanim/util/Zman;>;"
    .restart local v7    # "i":I
    .restart local v8    # "otherList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v10    # "tagName":Ljava/lang/String;
    .restart local v11    # "theMethods":[Ljava/lang/reflect/Method;
    :cond_4
    aget-object v14, v11, v7

    invoke-static {v14}, Lnet/sourceforge/zmanim/util/ZmanimFormatter;->includeMethod(Ljava/lang/reflect/Method;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 411
    aget-object v14, v11, v7

    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x3

    invoke-virtual {v14, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 414
    :try_start_0
    aget-object v14, v11, v7

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v14, v0, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 415
    .restart local v12    # "value":Ljava/lang/Object;
    if-nez v12, :cond_6

    .line 416
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "<"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ">N/A</"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ">"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v8, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 409
    .end local v12    # "value":Ljava/lang/Object;
    :cond_5
    :goto_6
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 419
    .restart local v12    # "value":Ljava/lang/Object;
    :cond_6
    instance-of v14, v12, Ljava/util/Date;

    if-eqz v14, :cond_7

    .line 420
    new-instance v14, Lnet/sourceforge/zmanim/util/Zman;

    check-cast v12, Ljava/util/Date;

    .end local v12    # "value":Ljava/lang/Object;
    invoke-direct {v14, v12, v10}, Lnet/sourceforge/zmanim/util/Zman;-><init>(Ljava/util/Date;Ljava/lang/String;)V

    invoke-interface {v2, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    .line 432
    :catch_0
    move-exception v5

    .line 433
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    .line 421
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v12    # "value":Ljava/lang/Object;
    :cond_7
    :try_start_1
    instance-of v14, v12, Ljava/lang/Long;

    if-nez v14, :cond_8

    instance-of v14, v12, Ljava/lang/Integer;

    if-eqz v14, :cond_a

    .line 422
    :cond_8
    move-object v0, v12

    check-cast v0, Ljava/lang/Long;

    move-object v14, v0

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    const-wide/high16 v16, -0x8000000000000000L

    cmp-long v14, v14, v16

    if-nez v14, :cond_9

    .line 423
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "<"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ">N/A</"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ">"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v8, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 427
    :cond_9
    new-instance v14, Lnet/sourceforge/zmanim/util/Zman;

    check-cast v12, Ljava/lang/Long;

    .end local v12    # "value":Ljava/lang/Object;
    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-int v15, v0

    int-to-long v0, v15

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-direct {v14, v0, v1, v10}, Lnet/sourceforge/zmanim/util/Zman;-><init>(JLjava/lang/String;)V

    invoke-interface {v4, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 430
    .restart local v12    # "value":Ljava/lang/Object;
    :cond_a
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "<"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ">"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "</"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ">"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v8, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_6

    .line 441
    .end local v12    # "value":Ljava/lang/Object;
    :cond_b
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lnet/sourceforge/zmanim/util/Zman;

    .line 442
    .local v13, "zman":Lnet/sourceforge/zmanim/util/Zman;
    const-string v14, "\t<"

    invoke-virtual {v9, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    invoke-virtual {v13}, Lnet/sourceforge/zmanim/util/Zman;->getZmanLabel()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    const-string v15, ">"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 443
    invoke-virtual {v13}, Lnet/sourceforge/zmanim/util/Zman;->getZman()Ljava/util/Date;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getCalendar()Ljava/util/Calendar;

    move-result-object v15

    invoke-virtual {v6, v14, v15}, Lnet/sourceforge/zmanim/util/ZmanimFormatter;->formatDateTime(Ljava/util/Date;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 444
    const-string v14, "</"

    invoke-virtual {v9, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    invoke-virtual {v13}, Lnet/sourceforge/zmanim/util/Zman;->getZmanLabel()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    const-string v15, ">\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 440
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    .line 448
    .end local v13    # "zman":Lnet/sourceforge/zmanim/util/Zman;
    :cond_c
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lnet/sourceforge/zmanim/util/Zman;

    .line 449
    .restart local v13    # "zman":Lnet/sourceforge/zmanim/util/Zman;
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "\t<"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Lnet/sourceforge/zmanim/util/Zman;->getZmanLabel()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    const-string v15, ">"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 450
    invoke-virtual {v13}, Lnet/sourceforge/zmanim/util/Zman;->getDuration()J

    move-result-wide v14

    long-to-int v14, v14

    int-to-long v14, v14

    invoke-virtual {v6, v14, v15}, Lnet/sourceforge/zmanim/util/ZmanimFormatter;->format(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    const-string v15, "</"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    invoke-virtual {v13}, Lnet/sourceforge/zmanim/util/Zman;->getZmanLabel()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    .line 451
    const-string v15, ">\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 447
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_3

    .line 455
    .end local v13    # "zman":Lnet/sourceforge/zmanim/util/Zman;
    :cond_d
    const-string v14, "\t"

    invoke-virtual {v9, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    const-string v15, "\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 454
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_4

    .line 460
    :cond_e
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    const-string v15, "net.sourceforge.zmanim.ComplexZmanimCalendar"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_f

    .line 461
    const-string v14, "</Zmanim>"

    invoke-virtual {v9, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_5

    .line 462
    :cond_f
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    const-string v15, "net.sourceforge.zmanim.ZmanimCalendar"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 463
    const-string v14, "</Basic>"

    invoke-virtual {v9, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_5
.end method


# virtual methods
.method public format(D)Ljava/lang/String;
    .locals 3
    .param p1, "milliseconds"    # D

    .prologue
    .line 184
    double-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/zmanim/util/ZmanimFormatter;->format(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public format(J)Ljava/lang/String;
    .locals 1
    .param p1, "millis"    # J

    .prologue
    .line 195
    new-instance v0, Lnet/sourceforge/zmanim/util/Time;

    invoke-direct {v0, p1, p2}, Lnet/sourceforge/zmanim/util/Time;-><init>(J)V

    invoke-virtual {p0, v0}, Lnet/sourceforge/zmanim/util/ZmanimFormatter;->format(Lnet/sourceforge/zmanim/util/Time;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public format(Lnet/sourceforge/zmanim/util/Time;)Ljava/lang/String;
    .locals 4
    .param p1, "time"    # Lnet/sourceforge/zmanim/util/Time;

    .prologue
    .line 206
    iget v1, p0, Lnet/sourceforge/zmanim/util/ZmanimFormatter;->timeFormat:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 207
    invoke-virtual {p0, p1}, Lnet/sourceforge/zmanim/util/ZmanimFormatter;->formatXSDDurationTime(Lnet/sourceforge/zmanim/util/Time;)Ljava/lang/String;

    move-result-object v1

    .line 221
    :goto_0
    return-object v1

    .line 209
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 210
    .local v0, "sb":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lnet/sourceforge/zmanim/util/ZmanimFormatter;->hourNF:Ljava/text/DecimalFormat;

    invoke-virtual {p1}, Lnet/sourceforge/zmanim/util/Time;->getHours()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 211
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 212
    sget-object v1, Lnet/sourceforge/zmanim/util/ZmanimFormatter;->minuteSecondNF:Ljava/text/DecimalFormat;

    invoke-virtual {p1}, Lnet/sourceforge/zmanim/util/Time;->getMinutes()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 213
    iget-boolean v1, p0, Lnet/sourceforge/zmanim/util/ZmanimFormatter;->useSeconds:Z

    if-eqz v1, :cond_1

    .line 214
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 215
    sget-object v1, Lnet/sourceforge/zmanim/util/ZmanimFormatter;->minuteSecondNF:Ljava/text/DecimalFormat;

    invoke-virtual {p1}, Lnet/sourceforge/zmanim/util/Time;->getSeconds()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 217
    :cond_1
    iget-boolean v1, p0, Lnet/sourceforge/zmanim/util/ZmanimFormatter;->useMillis:Z

    if-eqz v1, :cond_2

    .line 218
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 219
    sget-object v1, Lnet/sourceforge/zmanim/util/ZmanimFormatter;->milliNF:Ljava/text/DecimalFormat;

    invoke-virtual {p1}, Lnet/sourceforge/zmanim/util/Time;->getMilliseconds()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 221
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public formatDateTime(Ljava/util/Date;Ljava/util/Calendar;)Ljava/lang/String;
    .locals 2
    .param p1, "dateTime"    # Ljava/util/Date;
    .param p2, "calendar"    # Ljava/util/Calendar;

    .prologue
    .line 235
    iget-object v0, p0, Lnet/sourceforge/zmanim/util/ZmanimFormatter;->dateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p2}, Ljava/text/SimpleDateFormat;->setCalendar(Ljava/util/Calendar;)V

    .line 236
    iget-object v0, p0, Lnet/sourceforge/zmanim/util/ZmanimFormatter;->dateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v0

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    invoke-virtual {p0, p1, p2}, Lnet/sourceforge/zmanim/util/ZmanimFormatter;->getXSDateTime(Ljava/util/Date;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    .line 239
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lnet/sourceforge/zmanim/util/ZmanimFormatter;->dateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public formatXSDDurationTime(J)Ljava/lang/String;
    .locals 1
    .param p1, "millis"    # J

    .prologue
    .line 300
    new-instance v0, Lnet/sourceforge/zmanim/util/Time;

    invoke-direct {v0, p1, p2}, Lnet/sourceforge/zmanim/util/Time;-><init>(J)V

    invoke-virtual {p0, v0}, Lnet/sourceforge/zmanim/util/ZmanimFormatter;->formatXSDDurationTime(Lnet/sourceforge/zmanim/util/Time;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public formatXSDDurationTime(Lnet/sourceforge/zmanim/util/Time;)Ljava/lang/String;
    .locals 6
    .param p1, "time"    # Lnet/sourceforge/zmanim/util/Time;

    .prologue
    const-wide/16 v4, 0x0

    .line 311
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 312
    .local v0, "duration":Ljava/lang/StringBuffer;
    invoke-virtual {p1}, Lnet/sourceforge/zmanim/util/Time;->getHours()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lnet/sourceforge/zmanim/util/Time;->getMinutes()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lnet/sourceforge/zmanim/util/Time;->getSeconds()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lnet/sourceforge/zmanim/util/Time;->getMilliseconds()J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-eqz v1, :cond_6

    .line 313
    :cond_0
    const-string v1, "P"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 314
    const-string v1, "T"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 316
    invoke-virtual {p1}, Lnet/sourceforge/zmanim/util/Time;->getHours()I

    move-result v1

    if-eqz v1, :cond_1

    .line 317
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lnet/sourceforge/zmanim/util/Time;->getHours()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "H"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 319
    :cond_1
    invoke-virtual {p1}, Lnet/sourceforge/zmanim/util/Time;->getMinutes()I

    move-result v1

    if-eqz v1, :cond_2

    .line 320
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lnet/sourceforge/zmanim/util/Time;->getMinutes()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "M"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 322
    :cond_2
    invoke-virtual {p1}, Lnet/sourceforge/zmanim/util/Time;->getSeconds()I

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p1}, Lnet/sourceforge/zmanim/util/Time;->getMilliseconds()J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-eqz v1, :cond_4

    .line 323
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lnet/sourceforge/zmanim/util/Time;->getSeconds()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lnet/sourceforge/zmanim/util/ZmanimFormatter;->milliNF:Ljava/text/DecimalFormat;

    invoke-virtual {p1}, Lnet/sourceforge/zmanim/util/Time;->getMilliseconds()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 324
    const-string v1, "S"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 326
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    .line 327
    const-string v1, "T0S"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 328
    :cond_5
    invoke-virtual {p1}, Lnet/sourceforge/zmanim/util/Time;->isNegative()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 329
    const/4 v1, 0x0

    const-string v2, "-"

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 331
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getDateFormat()Ljava/text/SimpleDateFormat;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lnet/sourceforge/zmanim/util/ZmanimFormatter;->dateFormat:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method public getTimeZone()Ljava/util/TimeZone;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lnet/sourceforge/zmanim/util/ZmanimFormatter;->timeZone:Ljava/util/TimeZone;

    return-object v0
.end method

.method public getXSDateTime(Ljava/util/Date;Ljava/util/Calendar;)Ljava/lang/String;
    .locals 10
    .param p1, "dateTime"    # Ljava/util/Date;
    .param p2, "cal"    # Ljava/util/Calendar;

    .prologue
    const v9, 0x36ee80

    .line 256
    const-string v6, "yyyy-MM-dd\'T\'HH:mm:ss"

    .line 260
    .local v6, "xsdDateTimeFormat":Ljava/lang/String;
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 261
    .local v1, "dateFormat":Ljava/text/SimpleDateFormat;
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/util/ZmanimFormatter;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 263
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 265
    .local v0, "buff":Ljava/lang/StringBuffer;
    const/16 v7, 0xf

    invoke-virtual {p2, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    const/16 v8, 0x10

    invoke-virtual {p2, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    add-int v4, v7, v8

    .line 267
    .local v4, "offset":I
    if-nez v4, :cond_0

    .line 268
    const-string v7, "Z"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 277
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 271
    :cond_0
    div-int v2, v4, v9

    .line 273
    .local v2, "hrs":I
    rem-int v3, v4, v9

    .line 274
    .local v3, "min":I
    if-gez v2, :cond_1

    const/16 v5, 0x2d

    .line 275
    .local v5, "posneg":C
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lnet/sourceforge/zmanim/util/ZmanimFormatter;->formatDigits(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x3a

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v3}, Lnet/sourceforge/zmanim/util/ZmanimFormatter;->formatDigits(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 274
    .end local v5    # "posneg":C
    :cond_1
    const/16 v5, 0x2b

    goto :goto_1
.end method

.method public setDateFormat(Ljava/text/SimpleDateFormat;)V
    .locals 0
    .param p1, "sdf"    # Ljava/text/SimpleDateFormat;

    .prologue
    .line 163
    iput-object p1, p0, Lnet/sourceforge/zmanim/util/ZmanimFormatter;->dateFormat:Ljava/text/SimpleDateFormat;

    .line 164
    return-void
.end method

.method public setTimeFormat(I)V
    .locals 2
    .param p1, "format"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 143
    iput p1, p0, Lnet/sourceforge/zmanim/util/ZmanimFormatter;->timeFormat:I

    .line 144
    packed-switch p1, :pswitch_data_0

    .line 160
    :goto_0
    :pswitch_0
    return-void

    .line 146
    :pswitch_1
    invoke-direct {p0, v1, v1, v1}, Lnet/sourceforge/zmanim/util/ZmanimFormatter;->setSettings(ZZZ)V

    goto :goto_0

    .line 149
    :pswitch_2
    invoke-direct {p0, v0, v0, v0}, Lnet/sourceforge/zmanim/util/ZmanimFormatter;->setSettings(ZZZ)V

    goto :goto_0

    .line 152
    :pswitch_3
    invoke-direct {p0, v0, v1, v0}, Lnet/sourceforge/zmanim/util/ZmanimFormatter;->setSettings(ZZZ)V

    goto :goto_0

    .line 155
    :pswitch_4
    invoke-direct {p0, v0, v1, v1}, Lnet/sourceforge/zmanim/util/ZmanimFormatter;->setSettings(ZZZ)V

    goto :goto_0

    .line 144
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public setTimeZone(Ljava/util/TimeZone;)V
    .locals 0
    .param p1, "timeZone"    # Ljava/util/TimeZone;

    .prologue
    .line 69
    iput-object p1, p0, Lnet/sourceforge/zmanim/util/ZmanimFormatter;->timeZone:Ljava/util/TimeZone;

    .line 70
    return-void
.end method
