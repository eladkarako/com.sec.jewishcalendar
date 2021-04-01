.class public Lnet/sourceforge/zmanim/ComplexZmanimCalendar;
.super Lnet/sourceforge/zmanim/ZmanimCalendar;
.source "ComplexZmanimCalendar.java"


# static fields
.field protected static final ZENITH_10_POINT_2:D = 100.2

.field protected static final ZENITH_11_DEGREES:D = 101.0

.field protected static final ZENITH_11_POINT_5:D = 101.5

.field protected static final ZENITH_13_POINT_24:D = 103.24

.field protected static final ZENITH_19_POINT_8:D = 109.8

.field protected static final ZENITH_26_DEGREES:D = 116.0

.field protected static final ZENITH_3_POINT_65:D = 93.65

.field protected static final ZENITH_3_POINT_7:D = 93.7

.field protected static final ZENITH_4_POINT_37:D = 94.37

.field protected static final ZENITH_4_POINT_61:D = 94.61

.field protected static final ZENITH_4_POINT_8:D = 94.8

.field protected static final ZENITH_5_POINT_88:D = 95.88

.field protected static final ZENITH_5_POINT_95:D = 95.95

.field protected static final ZENITH_7_POINT_083:D = 97.0


# instance fields
.field private ateretTorahSunsetOffset:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 252
    invoke-direct {p0}, Lnet/sourceforge/zmanim/ZmanimCalendar;-><init>()V

    .line 239
    const-wide/high16 v0, 0x4044000000000000L    # 40.0

    iput-wide v0, p0, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->ateretTorahSunsetOffset:D

    .line 253
    return-void
.end method

.method public constructor <init>(Lnet/sourceforge/zmanim/util/GeoLocation;)V
    .locals 2
    .param p1, "location"    # Lnet/sourceforge/zmanim/util/GeoLocation;

    .prologue
    .line 242
    invoke-direct {p0, p1}, Lnet/sourceforge/zmanim/ZmanimCalendar;-><init>(Lnet/sourceforge/zmanim/util/GeoLocation;)V

    .line 239
    const-wide/high16 v0, 0x4044000000000000L    # 40.0

    iput-wide v0, p0, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->ateretTorahSunsetOffset:D

    .line 243
    return-void
.end method


# virtual methods
.method public getAlos120()Ljava/util/Date;
    .locals 4

    .prologue
    .line 666
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getSeaLevelSunrise()Ljava/util/Date;

    move-result-object v0

    const-wide/32 v2, -0x6ddd00

    invoke-virtual {p0, v0, v2, v3}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getAlos120Zmanis()Ljava/util/Date;
    .locals 6

    .prologue
    .line 683
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getShaahZmanisGra()J

    move-result-wide v0

    .line 684
    .local v0, "shaahZmanis":J
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 685
    const/4 v2, 0x0

    .line 687
    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getSeaLevelSunrise()Ljava/util/Date;

    move-result-object v2

    const-wide/16 v4, -0x2

    mul-long/2addr v4, v0

    invoke-virtual {p0, v2, v4, v5}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;J)Ljava/util/Date;

    move-result-object v2

    goto :goto_0
.end method

.method public getAlos16Point1Degrees()Ljava/util/Date;
    .locals 2

    .prologue
    .line 756
    const-wide v0, 0x405a866666666666L    # 106.1

    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getSunriseOffsetByDegrees(D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getAlos18Degrees()Ljava/util/Date;
    .locals 2

    .prologue
    .line 720
    const-wide/high16 v0, 0x405b000000000000L    # 108.0

    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getSunriseOffsetByDegrees(D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getAlos19Point8Degrees()Ljava/util/Date;
    .locals 2

    .prologue
    .line 738
    const-wide v0, 0x405b733333333333L    # 109.8

    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getSunriseOffsetByDegrees(D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getAlos26Degrees()Ljava/util/Date;
    .locals 2

    .prologue
    .line 706
    const-wide/high16 v0, 0x405d000000000000L    # 116.0

    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getSunriseOffsetByDegrees(D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getAlos60()Ljava/util/Date;
    .locals 4

    .prologue
    .line 553
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getSeaLevelSunrise()Ljava/util/Date;

    move-result-object v0

    const-wide/32 v2, -0x36ee80

    invoke-virtual {p0, v0, v2, v3}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getAlos72Zmanis()Ljava/util/Date;
    .locals 8

    .prologue
    .line 571
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getShaahZmanisGra()J

    move-result-wide v0

    .line 572
    .local v0, "shaahZmanis":J
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 573
    const/4 v2, 0x0

    .line 575
    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getSeaLevelSunrise()Ljava/util/Date;

    move-result-object v2

    long-to-double v4, v0

    const-wide v6, -0x400ccccccccccccdL    # -1.2

    mul-double/2addr v4, v6

    double-to-long v4, v4

    invoke-virtual {p0, v2, v4, v5}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;J)Ljava/util/Date;

    move-result-object v2

    goto :goto_0
.end method

.method public getAlos90()Ljava/util/Date;
    .locals 4

    .prologue
    .line 649
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getSeaLevelSunrise()Ljava/util/Date;

    move-result-object v0

    const-wide/32 v2, -0x5265c0

    invoke-virtual {p0, v0, v2, v3}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getAlos90Zmanis()Ljava/util/Date;
    .locals 8

    .prologue
    .line 608
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getShaahZmanisGra()J

    move-result-wide v0

    .line 609
    .local v0, "shaahZmanis":J
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 610
    const/4 v2, 0x0

    .line 612
    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getSeaLevelSunrise()Ljava/util/Date;

    move-result-object v2

    long-to-double v4, v0

    const-wide/high16 v6, -0x4008000000000000L    # -1.5

    mul-double/2addr v4, v6

    double-to-long v4, v4

    invoke-virtual {p0, v2, v4, v5}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;J)Ljava/util/Date;

    move-result-object v2

    goto :goto_0
.end method

.method public getAlos96()Ljava/util/Date;
    .locals 4

    .prologue
    .line 591
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getSeaLevelSunrise()Ljava/util/Date;

    move-result-object v0

    const-wide/32 v2, -0x57e400

    invoke-virtual {p0, v0, v2, v3}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getAlos96Zmanis()Ljava/util/Date;
    .locals 8

    .prologue
    .line 629
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getShaahZmanisGra()J

    move-result-wide v0

    .line 630
    .local v0, "shaahZmanis":J
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 631
    const/4 v2, 0x0

    .line 633
    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getSeaLevelSunrise()Ljava/util/Date;

    move-result-object v2

    long-to-double v4, v0

    const-wide v6, -0x4006666666666666L    # -1.6

    mul-double/2addr v4, v6

    double-to-long v4, v4

    invoke-virtual {p0, v2, v4, v5}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;J)Ljava/util/Date;

    move-result-object v2

    goto :goto_0
.end method

.method public getAteretTorahSunsetOffset()D
    .locals 2

    .prologue
    .line 1872
    iget-wide v0, p0, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->ateretTorahSunsetOffset:D

    return-wide v0
.end method

.method public getBainHasmashosRT13Point24Degrees()Ljava/util/Date;
    .locals 2

    .prologue
    .line 1636
    const-wide v0, 0x4059cf5c28f5c28fL    # 103.24

    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getSunsetOffsetByDegrees(D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getBainHasmashosRT13Point5MinutesBefore7Point083Degrees()Ljava/util/Date;
    .locals 4

    .prologue
    .line 1667
    const-wide v0, 0x4058400000000000L    # 97.0

    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getSunsetOffsetByDegrees(D)Ljava/util/Date;

    move-result-object v0

    const-wide v2, -0x3ed747e000000000L    # -810000.0

    invoke-virtual {p0, v0, v2, v3}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getBainHasmashosRT2Stars()Ljava/util/Date;
    .locals 8

    .prologue
    .line 1683
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getAlos19Point8Degrees()Ljava/util/Date;

    move-result-object v0

    .line 1684
    .local v0, "alos19Point8":Ljava/util/Date;
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getSeaLevelSunrise()Ljava/util/Date;

    move-result-object v1

    .line 1685
    .local v1, "sunrise":Ljava/util/Date;
    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    .line 1686
    :cond_0
    const/4 v2, 0x0

    .line 1688
    :goto_0
    return-object v2

    :cond_1
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getSeaLevelSunset()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    long-to-double v4, v4

    const-wide v6, 0x3fd1c71c71c71c72L    # 0.2777777777777778

    mul-double/2addr v4, v6

    invoke-virtual {p0, v2, v4, v5}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;D)Ljava/util/Date;

    move-result-object v2

    goto :goto_0
.end method

.method public getBainHasmashosRT58Point5Minutes()Ljava/util/Date;
    .locals 4

    .prologue
    .line 1652
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getSeaLevelSunset()Ljava/util/Date;

    move-result-object v0

    const-wide v2, 0x414ac77800000000L    # 3510000.0

    invoke-virtual {p0, v0, v2, v3}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getFixedLocalChatzos()Ljava/util/Date;
    .locals 6

    .prologue
    .line 2228
    const-wide/high16 v0, 0x4028000000000000L    # 12.0

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getGeoLocation()Lnet/sourceforge/zmanim/util/GeoLocation;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sourceforge/zmanim/util/GeoLocation;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v2

    int-to-double v2, v2

    .line 2229
    const-wide v4, 0x414b774000000000L    # 3600000.0

    div-double/2addr v2, v4

    sub-double/2addr v0, v2

    .line 2228
    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getDateFromTime(D)Ljava/util/Date;

    move-result-object v0

    .line 2229
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getGeoLocation()Lnet/sourceforge/zmanim/util/GeoLocation;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sourceforge/zmanim/util/GeoLocation;->getLocalMeanTimeOffset()J

    move-result-wide v2

    neg-long v2, v2

    .line 2228
    invoke-virtual {p0, v0, v2, v3}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method protected getMesheyakirAteretTorah(D)Ljava/util/Date;
    .locals 5
    .param p1, "minutes"    # D

    .prologue
    .line 2035
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getAlos72Zmanis()Ljava/util/Date;

    move-result-object v0

    const-wide v2, 0x40ed4c0000000000L    # 60000.0

    mul-double/2addr v2, p1

    invoke-virtual {p0, v0, v2, v3}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getMinchaGedola16Point1Degrees()Ljava/util/Date;
    .locals 6

    .prologue
    .line 1325
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getAlos16Point1Degrees()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getShaahZmanis16Point1Degrees()J

    move-result-wide v2

    long-to-double v2, v2

    const-wide/high16 v4, 0x401a000000000000L    # 6.5

    mul-double/2addr v2, v4

    invoke-virtual {p0, v0, v2, v3}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getMinchaGedola30Minutes()Ljava/util/Date;
    .locals 4

    .prologue
    .line 1286
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getChatzos()Ljava/util/Date;

    move-result-object v0

    const-wide/32 v2, 0x1b7740

    invoke-virtual {p0, v0, v2, v3}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getMinchaGedola72Minutes()Ljava/util/Date;
    .locals 6

    .prologue
    .line 1306
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getAlos72()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getShaahZmanis72Minutes()J

    move-result-wide v2

    long-to-double v2, v2

    const-wide/high16 v4, 0x401a000000000000L    # 6.5

    mul-double/2addr v2, v4

    invoke-virtual {p0, v0, v2, v3}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getMinchaGedolaAteretTorah()Ljava/util/Date;
    .locals 6

    .prologue
    .line 1964
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getAlos72Zmanis()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getShaahZmanisAteretTorah()J

    move-result-wide v2

    long-to-double v2, v2

    const-wide/high16 v4, 0x401a000000000000L    # 6.5

    mul-double/2addr v2, v4

    invoke-virtual {p0, v0, v2, v3}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getMinchaGedolaGreaterThan30()Ljava/util/Date;
    .locals 2

    .prologue
    .line 1340
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getMinchaGedola30Minutes()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getMinchaGedola()Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1341
    :cond_0
    const/4 v0, 0x0

    .line 1343
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getMinchaGedola30Minutes()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getMinchaGedola()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getMinchaGedola30Minutes()Ljava/util/Date;

    move-result-object v0

    goto :goto_0

    .line 1344
    :cond_2
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getMinchaGedola()Ljava/util/Date;

    move-result-object v0

    goto :goto_0
.end method

.method public getMinchaKetana16Point1Degrees()Ljava/util/Date;
    .locals 6

    .prologue
    .line 1365
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getAlos16Point1Degrees()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getShaahZmanis16Point1Degrees()J

    move-result-wide v2

    long-to-double v2, v2

    const-wide/high16 v4, 0x4023000000000000L    # 9.5

    mul-double/2addr v2, v4

    invoke-virtual {p0, v0, v2, v3}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getMinchaKetana72Minutes()Ljava/util/Date;
    .locals 6

    .prologue
    .line 1385
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getAlos72()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getShaahZmanis72Minutes()J

    move-result-wide v2

    long-to-double v2, v2

    const-wide/high16 v4, 0x4023000000000000L    # 9.5

    mul-double/2addr v2, v4

    invoke-virtual {p0, v0, v2, v3}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getMinchaKetanaAteretTorah()Ljava/util/Date;
    .locals 6

    .prologue
    .line 1991
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getAlos72Zmanis()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getShaahZmanisAteretTorah()J

    move-result-wide v2

    long-to-double v2, v2

    const-wide/high16 v4, 0x4023000000000000L    # 9.5

    mul-double/2addr v2, v4

    invoke-virtual {p0, v0, v2, v3}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getMisheyakir10Point2Degrees()Ljava/util/Date;
    .locals 2

    .prologue
    .line 807
    const-wide v0, 0x40590ccccccccccdL    # 100.2

    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getSunriseOffsetByDegrees(D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getMisheyakir11Degrees()Ljava/util/Date;
    .locals 2

    .prologue
    .line 790
    const-wide v0, 0x4059400000000000L    # 101.0

    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getSunriseOffsetByDegrees(D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getMisheyakir11Point5Degrees()Ljava/util/Date;
    .locals 2

    .prologue
    .line 773
    const-wide v0, 0x4059600000000000L    # 101.5

    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getSunriseOffsetByDegrees(D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getPlagAlos16Point1ToTzaisGeonim7Point083Degrees()Ljava/util/Date;
    .locals 8

    .prologue
    .line 1608
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getAlos16Point1Degrees()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTzaisGeonim7Point083Degrees()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTemporalHour(Ljava/util/Date;Ljava/util/Date;)J

    move-result-wide v0

    .line 1609
    .local v0, "shaahZmanis":J
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getAlos16Point1Degrees()Ljava/util/Date;

    move-result-object v2

    long-to-double v4, v0

    const-wide v6, 0x4025800000000000L    # 10.75

    mul-double/2addr v4, v6

    invoke-virtual {p0, v2, v4, v5}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;D)Ljava/util/Date;

    move-result-object v2

    return-object v2
.end method

.method public getPlagAlosToSunset()Ljava/util/Date;
    .locals 8

    .prologue
    .line 1585
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getAlos16Point1Degrees()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getSeaLevelSunset()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTemporalHour(Ljava/util/Date;Ljava/util/Date;)J

    move-result-wide v0

    .line 1586
    .local v0, "shaahZmanis":J
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getAlos16Point1Degrees()Ljava/util/Date;

    move-result-object v2

    long-to-double v4, v0

    const-wide v6, 0x4025800000000000L    # 10.75

    mul-double/2addr v4, v6

    invoke-virtual {p0, v2, v4, v5}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;D)Ljava/util/Date;

    move-result-object v2

    return-object v2
.end method

.method public getPlagHamincha120Minutes()Ljava/util/Date;
    .locals 6

    .prologue
    .line 536
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getAlos120()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getShaahZmanis120Minutes()J

    move-result-wide v2

    long-to-double v2, v2

    const-wide v4, 0x4025800000000000L    # 10.75

    mul-double/2addr v2, v4

    invoke-virtual {p0, v0, v2, v3}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getPlagHamincha120MinutesZmanis()Ljava/util/Date;
    .locals 6

    .prologue
    .line 519
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getAlos120Zmanis()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getShaahZmanis120MinutesZmanis()J

    move-result-wide v2

    long-to-double v2, v2

    const-wide v4, 0x4025800000000000L    # 10.75

    mul-double/2addr v2, v4

    invoke-virtual {p0, v0, v2, v3}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getPlagHamincha16Point1Degrees()Ljava/util/Date;
    .locals 6

    .prologue
    .line 1512
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getAlos16Point1Degrees()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getShaahZmanis16Point1Degrees()J

    move-result-wide v2

    long-to-double v2, v2

    const-wide v4, 0x4025800000000000L    # 10.75

    mul-double/2addr v2, v4

    invoke-virtual {p0, v0, v2, v3}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getPlagHamincha18Degrees()Ljava/util/Date;
    .locals 6

    .prologue
    .line 1564
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getAlos18Degrees()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getShaahZmanis18Degrees()J

    move-result-wide v2

    long-to-double v2, v2

    const-wide v4, 0x4025800000000000L    # 10.75

    mul-double/2addr v2, v4

    invoke-virtual {p0, v0, v2, v3}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getPlagHamincha19Point8Degrees()Ljava/util/Date;
    .locals 6

    .prologue
    .line 1530
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getAlos19Point8Degrees()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getShaahZmanis19Point8Degrees()J

    move-result-wide v2

    long-to-double v2, v2

    const-wide v4, 0x4025800000000000L    # 10.75

    mul-double/2addr v2, v4

    invoke-virtual {p0, v0, v2, v3}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getPlagHamincha26Degrees()Ljava/util/Date;
    .locals 6

    .prologue
    .line 1547
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getAlos26Degrees()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getShaahZmanis26Degrees()J

    move-result-wide v2

    long-to-double v2, v2

    const-wide v4, 0x4025800000000000L    # 10.75

    mul-double/2addr v2, v4

    invoke-virtual {p0, v0, v2, v3}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getPlagHamincha60Minutes()Ljava/util/Date;
    .locals 6

    .prologue
    .line 1402
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getAlos60()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getShaahZmanis60Minutes()J

    move-result-wide v2

    long-to-double v2, v2

    const-wide v4, 0x4025800000000000L    # 10.75

    mul-double/2addr v2, v4

    invoke-virtual {p0, v0, v2, v3}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getPlagHamincha72Minutes()Ljava/util/Date;
    .locals 6

    .prologue
    .line 1419
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getAlos72()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getShaahZmanis72Minutes()J

    move-result-wide v2

    long-to-double v2, v2

    const-wide v4, 0x4025800000000000L    # 10.75

    mul-double/2addr v2, v4

    invoke-virtual {p0, v0, v2, v3}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getPlagHamincha72MinutesZmanis()Ljava/util/Date;
    .locals 6

    .prologue
    .line 1494
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getAlos72Zmanis()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getShaahZmanis72MinutesZmanis()J

    move-result-wide v2

    long-to-double v2, v2

    const-wide v4, 0x4025800000000000L    # 10.75

    mul-double/2addr v2, v4

    invoke-virtual {p0, v0, v2, v3}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getPlagHamincha90Minutes()Ljava/util/Date;
    .locals 6

    .prologue
    .line 1436
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getAlos90()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getShaahZmanis90Minutes()J

    move-result-wide v2

    long-to-double v2, v2

    const-wide v4, 0x4025800000000000L    # 10.75

    mul-double/2addr v2, v4

    invoke-virtual {p0, v0, v2, v3}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getPlagHamincha90MinutesZmanis()Ljava/util/Date;
    .locals 6

    .prologue
    .line 1480
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getAlos90Zmanis()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getShaahZmanis90MinutesZmanis()J

    move-result-wide v2

    long-to-double v2, v2

    const-wide v4, 0x4025800000000000L    # 10.75

    mul-double/2addr v2, v4

    invoke-virtual {p0, v0, v2, v3}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getPlagHamincha96Minutes()Ljava/util/Date;
    .locals 6

    .prologue
    .line 1452
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getAlos96()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getShaahZmanis96Minutes()J

    move-result-wide v2

    long-to-double v2, v2

    const-wide v4, 0x4025800000000000L    # 10.75

    mul-double/2addr v2, v4

    invoke-virtual {p0, v0, v2, v3}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getPlagHamincha96MinutesZmanis()Ljava/util/Date;
    .locals 6

    .prologue
    .line 1466
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getAlos96Zmanis()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getShaahZmanis96MinutesZmanis()J

    move-result-wide v2

    long-to-double v2, v2

    const-wide v4, 0x4025800000000000L    # 10.75

    mul-double/2addr v2, v4

    invoke-virtual {p0, v0, v2, v3}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getPlagHaminchaAteretTorah()Ljava/util/Date;
    .locals 6

    .prologue
    .line 2013
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getAlos72Zmanis()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getShaahZmanisAteretTorah()J

    move-result-wide v2

    long-to-double v2, v2

    const-wide v4, 0x4025800000000000L    # 10.75

    mul-double/2addr v2, v4

    invoke-virtual {p0, v0, v2, v3}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getShaahZmanis120Minutes()J
    .locals 2

    .prologue
    .line 482
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getAlos120()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTzais120()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTemporalHour(Ljava/util/Date;Ljava/util/Date;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getShaahZmanis120MinutesZmanis()J
    .locals 2

    .prologue
    .line 502
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getAlos120Zmanis()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTzais120Zmanis()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTemporalHour(Ljava/util/Date;Ljava/util/Date;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getShaahZmanis16Point1Degrees()J
    .locals 2

    .prologue
    .line 325
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getAlos16Point1Degrees()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTzais16Point1Degrees()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTemporalHour(Ljava/util/Date;Ljava/util/Date;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getShaahZmanis18Degrees()J
    .locals 2

    .prologue
    .line 284
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getAlos18Degrees()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTzais18Degrees()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTemporalHour(Ljava/util/Date;Ljava/util/Date;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getShaahZmanis19Point8Degrees()J
    .locals 2

    .prologue
    .line 268
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getAlos19Point8Degrees()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTzais19Point8Degrees()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTemporalHour(Ljava/util/Date;Ljava/util/Date;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getShaahZmanis26Degrees()J
    .locals 2

    .prologue
    .line 300
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getAlos26Degrees()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTzais26Degrees()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTemporalHour(Ljava/util/Date;Ljava/util/Date;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getShaahZmanis60Minutes()J
    .locals 2

    .prologue
    .line 341
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getAlos60()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTzais60()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTemporalHour(Ljava/util/Date;Ljava/util/Date;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getShaahZmanis72Minutes()J
    .locals 2

    .prologue
    .line 357
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getShaahZmanisMGA()J

    move-result-wide v0

    return-wide v0
.end method

.method public getShaahZmanis72MinutesZmanis()J
    .locals 2

    .prologue
    .line 376
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getAlos72Zmanis()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTzais72Zmanis()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTemporalHour(Ljava/util/Date;Ljava/util/Date;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getShaahZmanis90Minutes()J
    .locals 2

    .prologue
    .line 391
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getAlos90()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTzais90()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTemporalHour(Ljava/util/Date;Ljava/util/Date;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getShaahZmanis90MinutesZmanis()J
    .locals 2

    .prologue
    .line 410
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getAlos90Zmanis()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTzais90Zmanis()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTemporalHour(Ljava/util/Date;Ljava/util/Date;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getShaahZmanis96Minutes()J
    .locals 2

    .prologue
    .line 467
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getAlos96()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTzais96()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTemporalHour(Ljava/util/Date;Ljava/util/Date;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getShaahZmanis96MinutesZmanis()J
    .locals 2

    .prologue
    .line 429
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getAlos96Zmanis()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTzais96Zmanis()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTemporalHour(Ljava/util/Date;Ljava/util/Date;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getShaahZmanisAteretTorah()J
    .locals 2

    .prologue
    .line 452
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getAlos72Zmanis()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTzaisAteretTorah()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTemporalHour(Ljava/util/Date;Ljava/util/Date;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSofZmanAchilasChametzGRA()Ljava/util/Date;
    .locals 1

    .prologue
    .line 2445
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getSofZmanTfilaGRA()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getSofZmanAchilasChametzMGA16Point1Degrees()Ljava/util/Date;
    .locals 1

    .prologue
    .line 2487
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getSofZmanTfilaMGA16Point1Degrees()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getSofZmanAchilasChametzMGA72Minutes()Ljava/util/Date;
    .locals 1

    .prologue
    .line 2466
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getSofZmanTfilaMGA72Minutes()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getSofZmanBiurChametzGRA()Ljava/util/Date;
    .locals 6

    .prologue
    .line 2503
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getSeaLevelSunrise()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getShaahZmanisGra()J

    move-result-wide v2

    const-wide/16 v4, 0x5

    mul-long/2addr v2, v4

    invoke-virtual {p0, v0, v2, v3}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getSofZmanBiurChametzMGA16Point1Degrees()Ljava/util/Date;
    .locals 6

    .prologue
    .line 2542
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getAlos16Point1Degrees()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getShaahZmanis16Point1Degrees()J

    move-result-wide v2

    const-wide/16 v4, 0x5

    mul-long/2addr v2, v4

    invoke-virtual {p0, v0, v2, v3}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getSofZmanBiurChametzMGA72Minutes()Ljava/util/Date;
    .locals 6

    .prologue
    .line 2522
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getAlos72()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getShaahZmanisMGA()J

    move-result-wide v2

    const-wide/16 v4, 0x5

    mul-long/2addr v2, v4

    invoke-virtual {p0, v0, v2, v3}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getSofZmanKidushLevana15Days()Ljava/util/Date;
    .locals 2

    .prologue
    .line 2372
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getAlos72()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTzais72()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getSofZmanKidushLevana15Days(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getSofZmanKidushLevana15Days(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;
    .locals 1
    .param p1, "alos"    # Ljava/util/Date;
    .param p2, "tzais"    # Ljava/util/Date;

    .prologue
    .line 2349
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSofZmanKidushLevanaBetweenMoldos()Ljava/util/Date;
    .locals 2

    .prologue
    .line 2309
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getAlos72()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTzais72()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getSofZmanKidushLevanaBetweenMoldos(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getSofZmanKidushLevanaBetweenMoldos(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;
    .locals 1
    .param p1, "alos"    # Ljava/util/Date;
    .param p2, "tzais"    # Ljava/util/Date;

    .prologue
    .line 2290
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSofZmanShma3HoursBeforeChatzos()Ljava/util/Date;
    .locals 4

    .prologue
    .line 985
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getChatzos()Ljava/util/Date;

    move-result-object v0

    const-wide/32 v2, -0xa4cb80

    invoke-virtual {p0, v0, v2, v3}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getSofZmanShmaAlos16Point1ToSunset()Ljava/util/Date;
    .locals 6

    .prologue
    .line 1025
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getAlos16Point1Degrees()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getSeaLevelSunset()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTemporalHour(Ljava/util/Date;Ljava/util/Date;)J

    move-result-wide v0

    .line 1026
    .local v0, "shaahZmanis":J
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getAlos16Point1Degrees()Ljava/util/Date;

    move-result-object v2

    const-wide/16 v4, 0x3

    mul-long/2addr v4, v0

    invoke-virtual {p0, v2, v4, v5}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;J)Ljava/util/Date;

    move-result-object v2

    return-object v2
.end method

.method public getSofZmanShmaAlos16Point1ToTzaisGeonim7Point083Degrees()Ljava/util/Date;
    .locals 6

    .prologue
    .line 1048
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getAlos16Point1Degrees()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTzaisGeonim7Point083Degrees()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTemporalHour(Ljava/util/Date;Ljava/util/Date;)J

    move-result-wide v0

    .line 1049
    .local v0, "shaahZmanis":J
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getAlos16Point1Degrees()Ljava/util/Date;

    move-result-object v2

    const-wide/16 v4, 0x3

    mul-long/2addr v4, v0

    invoke-virtual {p0, v2, v4, v5}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;J)Ljava/util/Date;

    move-result-object v2

    return-object v2
.end method

.method public getSofZmanShmaAteretTorah()Ljava/util/Date;
    .locals 6

    .prologue
    .line 1912
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getAlos72Zmanis()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getShaahZmanisAteretTorah()J

    move-result-wide v2

    const-wide/16 v4, 0x3

    mul-long/2addr v2, v4

    invoke-virtual {p0, v0, v2, v3}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getSofZmanShmaFixedLocal()Ljava/util/Date;
    .locals 4

    .prologue
    .line 2242
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getFixedLocalChatzos()Ljava/util/Date;

    move-result-object v0

    const-wide/32 v2, -0xa4cb80

    invoke-virtual {p0, v0, v2, v3}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getSofZmanShmaKolEliyahu()Ljava/util/Date;
    .locals 8

    .prologue
    .line 1065
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getFixedLocalChatzos()Ljava/util/Date;

    move-result-object v0

    .line 1066
    .local v0, "chatzos":Ljava/util/Date;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getSunrise()Ljava/util/Date;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1067
    :cond_0
    const/4 v1, 0x0

    .line 1070
    :goto_0
    return-object v1

    .line 1069
    :cond_1
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getSeaLevelSunrise()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x2

    div-long v2, v4, v6

    .line 1070
    .local v2, "diff":J
    neg-long v4, v2

    invoke-virtual {p0, v0, v4, v5}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;J)Ljava/util/Date;

    move-result-object v1

    goto :goto_0
.end method

.method public getSofZmanShmaMGA120Minutes()Ljava/util/Date;
    .locals 6

    .prologue
    .line 1005
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getAlos120()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getShaahZmanis120Minutes()J

    move-result-wide v2

    const-wide/16 v4, 0x3

    mul-long/2addr v2, v4

    invoke-virtual {p0, v0, v2, v3}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getSofZmanShmaMGA16Point1Degrees()Ljava/util/Date;
    .locals 6

    .prologue
    .line 845
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getAlos16Point1Degrees()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getShaahZmanis16Point1Degrees()J

    move-result-wide v2

    const-wide/16 v4, 0x3

    mul-long/2addr v2, v4

    invoke-virtual {p0, v0, v2, v3}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getSofZmanShmaMGA19Point8Degrees()Ljava/util/Date;
    .locals 6

    .prologue
    .line 826
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getAlos19Point8Degrees()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getShaahZmanis19Point8Degrees()J

    move-result-wide v2

    const-wide/16 v4, 0x3

    mul-long/2addr v2, v4

    invoke-virtual {p0, v0, v2, v3}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getSofZmanShmaMGA72Minutes()Ljava/util/Date;
    .locals 1

    .prologue
    .line 866
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getSofZmanShmaMGA()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getSofZmanShmaMGA72MinutesZmanis()Ljava/util/Date;
    .locals 6

    .prologue
    .line 888
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getAlos72Zmanis()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getShaahZmanis72MinutesZmanis()J

    move-result-wide v2

    const-wide/16 v4, 0x3

    mul-long/2addr v2, v4

    invoke-virtual {p0, v0, v2, v3}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getSofZmanShmaMGA90Minutes()Ljava/util/Date;
    .locals 6

    .prologue
    .line 907
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getAlos90()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getShaahZmanis90Minutes()J

    move-result-wide v2

    const-wide/16 v4, 0x3

    mul-long/2addr v2, v4

    invoke-virtual {p0, v0, v2, v3}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getSofZmanShmaMGA90MinutesZmanis()Ljava/util/Date;
    .locals 6

    .prologue
    .line 928
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getAlos90Zmanis()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getShaahZmanis90MinutesZmanis()J

    move-result-wide v2

    const-wide/16 v4, 0x3

    mul-long/2addr v2, v4

    invoke-virtual {p0, v0, v2, v3}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getSofZmanShmaMGA96Minutes()Ljava/util/Date;
    .locals 6

    .prologue
    .line 947
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getAlos96()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getShaahZmanis96Minutes()J

    move-result-wide v2

    const-wide/16 v4, 0x3

    mul-long/2addr v2, v4

    invoke-virtual {p0, v0, v2, v3}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getSofZmanShmaMGA96MinutesZmanis()Ljava/util/Date;
    .locals 6

    .prologue
    .line 968
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getAlos96Zmanis()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getShaahZmanis96MinutesZmanis()J

    move-result-wide v2

    const-wide/16 v4, 0x3

    mul-long/2addr v2, v4

    invoke-virtual {p0, v0, v2, v3}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getSofZmanTfila2HoursBeforeChatzos()Ljava/util/Date;
    .locals 4

    .prologue
    .line 1265
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getChatzos()Ljava/util/Date;

    move-result-object v0

    const-wide/32 v2, -0x6ddd00

    invoke-virtual {p0, v0, v2, v3}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getSofZmanTfilaFixedLocal()Ljava/util/Date;
    .locals 4

    .prologue
    .line 2254
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getFixedLocalChatzos()Ljava/util/Date;

    move-result-object v0

    const-wide/32 v2, -0x6ddd00

    invoke-virtual {p0, v0, v2, v3}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getSofZmanTfilaMGA120Minutes()Ljava/util/Date;
    .locals 6

    .prologue
    .line 1248
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getAlos120()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getShaahZmanis120Minutes()J

    move-result-wide v2

    const-wide/16 v4, 0x4

    mul-long/2addr v2, v4

    invoke-virtual {p0, v0, v2, v3}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getSofZmanTfilaMGA16Point1Degrees()Ljava/util/Date;
    .locals 6

    .prologue
    .line 1110
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getAlos16Point1Degrees()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getShaahZmanis16Point1Degrees()J

    move-result-wide v2

    const-wide/16 v4, 0x4

    mul-long/2addr v2, v4

    invoke-virtual {p0, v0, v2, v3}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getSofZmanTfilaMGA19Point8Degrees()Ljava/util/Date;
    .locals 6

    .prologue
    .line 1090
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getAlos19Point8Degrees()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getShaahZmanis19Point8Degrees()J

    move-result-wide v2

    const-wide/16 v4, 0x4

    mul-long/2addr v2, v4

    invoke-virtual {p0, v0, v2, v3}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getSofZmanTfilaMGA72Minutes()Ljava/util/Date;
    .locals 1

    .prologue
    .line 1131
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getSofZmanTfilaMGA()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getSofZmanTfilaMGA72MinutesZmanis()Ljava/util/Date;
    .locals 6

    .prologue
    .line 1151
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getAlos72Zmanis()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getShaahZmanis72MinutesZmanis()J

    move-result-wide v2

    const-wide/16 v4, 0x4

    mul-long/2addr v2, v4

    invoke-virtual {p0, v0, v2, v3}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getSofZmanTfilaMGA90Minutes()Ljava/util/Date;
    .locals 6

    .prologue
    .line 1170
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getAlos90()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getShaahZmanis90Minutes()J

    move-result-wide v2

    const-wide/16 v4, 0x4

    mul-long/2addr v2, v4

    invoke-virtual {p0, v0, v2, v3}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getSofZmanTfilaMGA90MinutesZmanis()Ljava/util/Date;
    .locals 6

    .prologue
    .line 1190
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getAlos90Zmanis()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getShaahZmanis90MinutesZmanis()J

    move-result-wide v2

    const-wide/16 v4, 0x4

    mul-long/2addr v2, v4

    invoke-virtual {p0, v0, v2, v3}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getSofZmanTfilaMGA96Minutes()Ljava/util/Date;
    .locals 6

    .prologue
    .line 1209
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getAlos96()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getShaahZmanis96Minutes()J

    move-result-wide v2

    const-wide/16 v4, 0x4

    mul-long/2addr v2, v4

    invoke-virtual {p0, v0, v2, v3}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getSofZmanTfilaMGA96MinutesZmanis()Ljava/util/Date;
    .locals 6

    .prologue
    .line 1229
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getAlos96Zmanis()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getShaahZmanis96MinutesZmanis()J

    move-result-wide v2

    const-wide/16 v4, 0x4

    mul-long/2addr v2, v4

    invoke-virtual {p0, v0, v2, v3}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getSofZmanTfilahAteretTorah()Ljava/util/Date;
    .locals 6

    .prologue
    .line 1935
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getAlos72Zmanis()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getShaahZmanisAteretTorah()J

    move-result-wide v2

    const-wide/16 v4, 0x4

    mul-long/2addr v2, v4

    invoke-virtual {p0, v0, v2, v3}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getSolarMidnight()Ljava/util/Date;
    .locals 8

    .prologue
    .line 2557
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sourceforge/zmanim/ZmanimCalendar;

    .line 2558
    .local v0, "clonedCal":Lnet/sourceforge/zmanim/ZmanimCalendar;
    invoke-virtual {v0}, Lnet/sourceforge/zmanim/ZmanimCalendar;->getCalendar()Ljava/util/Calendar;

    move-result-object v3

    const/4 v4, 0x5

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->add(II)V

    .line 2559
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getSunset()Ljava/util/Date;

    move-result-object v2

    .line 2560
    .local v2, "sunset":Ljava/util/Date;
    invoke-virtual {v0}, Lnet/sourceforge/zmanim/ZmanimCalendar;->getSunrise()Ljava/util/Date;

    move-result-object v1

    .line 2561
    .local v1, "sunrise":Ljava/util/Date;
    invoke-virtual {p0, v2, v1}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTemporalHour(Ljava/util/Date;Ljava/util/Date;)J

    move-result-wide v4

    const-wide/16 v6, 0x6

    mul-long/2addr v4, v6

    invoke-virtual {p0, v2, v4, v5}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;J)Ljava/util/Date;

    move-result-object v3

    return-object v3
.end method

.method public getTchilasZmanKidushLevana3Days()Ljava/util/Date;
    .locals 2

    .prologue
    .line 2399
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getAlos72()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTzais72()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTchilasZmanKidushLevana3Days(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getTchilasZmanKidushLevana3Days(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;
    .locals 1
    .param p1, "alos"    # Ljava/util/Date;
    .param p2, "tzais"    # Ljava/util/Date;

    .prologue
    .line 2395
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTchilasZmanKidushLevana7Days()Ljava/util/Date;
    .locals 2

    .prologue
    .line 2427
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getAlos72()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTzais72()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTchilasZmanKidushLevana7Days(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getTchilasZmanKidushLevana7Days(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;
    .locals 1
    .param p1, "alos"    # Ljava/util/Date;
    .param p2, "tzais"    # Ljava/util/Date;

    .prologue
    .line 2423
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTzais120()Ljava/util/Date;
    .locals 4

    .prologue
    .line 2125
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getSeaLevelSunset()Ljava/util/Date;

    move-result-object v0

    const-wide/32 v2, 0x6ddd00

    invoke-virtual {p0, v0, v2, v3}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getTzais120Zmanis()Ljava/util/Date;
    .locals 8

    .prologue
    .line 2139
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getShaahZmanisGra()J

    move-result-wide v0

    .line 2140
    .local v0, "shaahZmanis":J
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 2141
    const/4 v2, 0x0

    .line 2143
    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getSeaLevelSunset()Ljava/util/Date;

    move-result-object v2

    long-to-double v4, v0

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    mul-double/2addr v4, v6

    invoke-virtual {p0, v2, v4, v5}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;D)Ljava/util/Date;

    move-result-object v2

    goto :goto_0
.end method

.method public getTzais16Point1Degrees()Ljava/util/Date;
    .locals 2

    .prologue
    .line 2157
    const-wide v0, 0x405a866666666666L    # 106.1

    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getSunsetOffsetByDegrees(D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getTzais18Degrees()Ljava/util/Date;
    .locals 2

    .prologue
    .line 2184
    const-wide/high16 v0, 0x405b000000000000L    # 108.0

    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getSunsetOffsetByDegrees(D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getTzais19Point8Degrees()Ljava/util/Date;
    .locals 2

    .prologue
    .line 2198
    const-wide v0, 0x405b733333333333L    # 109.8

    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getSunsetOffsetByDegrees(D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getTzais26Degrees()Ljava/util/Date;
    .locals 2

    .prologue
    .line 2171
    const-wide/high16 v0, 0x405d000000000000L    # 116.0

    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getSunsetOffsetByDegrees(D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getTzais60()Ljava/util/Date;
    .locals 4

    .prologue
    .line 1841
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getSeaLevelSunset()Ljava/util/Date;

    move-result-object v0

    const-wide/32 v2, 0x36ee80

    invoke-virtual {p0, v0, v2, v3}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getTzais72Zmanis()Ljava/util/Date;
    .locals 8

    .prologue
    .line 2049
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getShaahZmanisGra()J

    move-result-wide v0

    .line 2050
    .local v0, "shaahZmanis":J
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 2051
    const/4 v2, 0x0

    .line 2053
    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getSeaLevelSunset()Ljava/util/Date;

    move-result-object v2

    long-to-double v4, v0

    const-wide v6, 0x3ff3333333333333L    # 1.2

    mul-double/2addr v4, v6

    invoke-virtual {p0, v2, v4, v5}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;D)Ljava/util/Date;

    move-result-object v2

    goto :goto_0
.end method

.method public getTzais90()Ljava/util/Date;
    .locals 4

    .prologue
    .line 2107
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getSeaLevelSunset()Ljava/util/Date;

    move-result-object v0

    const-wide/32 v2, 0x5265c0

    invoke-virtual {p0, v0, v2, v3}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getTzais90Zmanis()Ljava/util/Date;
    .locals 8

    .prologue
    .line 2067
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getShaahZmanisGra()J

    move-result-wide v0

    .line 2068
    .local v0, "shaahZmanis":J
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 2069
    const/4 v2, 0x0

    .line 2071
    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getSeaLevelSunset()Ljava/util/Date;

    move-result-object v2

    long-to-double v4, v0

    const-wide/high16 v6, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v4, v6

    invoke-virtual {p0, v2, v4, v5}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;D)Ljava/util/Date;

    move-result-object v2

    goto :goto_0
.end method

.method public getTzais96()Ljava/util/Date;
    .locals 4

    .prologue
    .line 2212
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getSeaLevelSunset()Ljava/util/Date;

    move-result-object v0

    const-wide/32 v2, 0x57e400

    invoke-virtual {p0, v0, v2, v3}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getTzais96Zmanis()Ljava/util/Date;
    .locals 8

    .prologue
    .line 2085
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getShaahZmanisGra()J

    move-result-wide v0

    .line 2086
    .local v0, "shaahZmanis":J
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 2087
    const/4 v2, 0x0

    .line 2089
    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getSeaLevelSunset()Ljava/util/Date;

    move-result-object v2

    long-to-double v4, v0

    const-wide v6, 0x3ff999999999999aL    # 1.6

    mul-double/2addr v4, v6

    invoke-virtual {p0, v2, v4, v5}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;D)Ljava/util/Date;

    move-result-object v2

    goto :goto_0
.end method

.method public getTzaisAteretTorah()Ljava/util/Date;
    .locals 6

    .prologue
    .line 1861
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getSeaLevelSunset()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getAteretTorahSunsetOffset()D

    move-result-wide v2

    const-wide v4, 0x40ed4c0000000000L    # 60000.0

    mul-double/2addr v2, v4

    invoke-virtual {p0, v0, v2, v3}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getTzaisGeonim3Point65Degrees()Ljava/util/Date;
    .locals 2

    .prologue
    .line 1729
    const-wide v0, 0x405769999999999aL    # 93.65

    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getSunsetOffsetByDegrees(D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getTzaisGeonim4Point37Degrees()Ljava/util/Date;
    .locals 2

    .prologue
    .line 1761
    const-wide v0, 0x405797ae147ae148L    # 94.37

    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getSunsetOffsetByDegrees(D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getTzaisGeonim4Point61Degrees()Ljava/util/Date;
    .locals 2

    .prologue
    .line 1745
    const-wide v0, 0x4057a70a3d70a3d7L    # 94.61

    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getSunsetOffsetByDegrees(D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getTzaisGeonim4Point8Degrees()Ljava/util/Date;
    .locals 2

    .prologue
    .line 1797
    const-wide v0, 0x4057b33333333333L    # 94.8

    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getSunsetOffsetByDegrees(D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getTzaisGeonim5Point88Degrees()Ljava/util/Date;
    .locals 2

    .prologue
    .line 1780
    const-wide v0, 0x4057f851eb851eb8L    # 95.88

    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getSunsetOffsetByDegrees(D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getTzaisGeonim5Point95Degrees()Ljava/util/Date;
    .locals 2

    .prologue
    .line 1713
    const-wide v0, 0x4057fccccccccccdL    # 95.95

    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getSunsetOffsetByDegrees(D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getTzaisGeonim7Point083Degrees()Ljava/util/Date;
    .locals 2

    .prologue
    .line 1812
    const-wide v0, 0x4058400000000000L    # 97.0

    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getSunsetOffsetByDegrees(D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getTzaisGeonim8Point5Degrees()Ljava/util/Date;
    .locals 2

    .prologue
    .line 1826
    const-wide v0, 0x4058a00000000000L    # 98.5

    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->getSunsetOffsetByDegrees(D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public setAteretTorahSunsetOffset(D)V
    .locals 1
    .param p1, "ateretTorahSunsetOffset"    # D

    .prologue
    .line 1886
    iput-wide p1, p0, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;->ateretTorahSunsetOffset:D

    .line 1887
    return-void
.end method
