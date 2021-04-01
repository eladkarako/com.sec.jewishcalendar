.class public Lnet/sourceforge/zmanim/ZmanimCalendar;
.super Lnet/sourceforge/zmanim/AstronomicalCalendar;
.source "ZmanimCalendar.java"


# static fields
.field protected static final ZENITH_16_POINT_1:D = 106.1

.field protected static final ZENITH_8_POINT_5:D = 98.5


# instance fields
.field private candleLightingOffset:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 340
    invoke-direct {p0}, Lnet/sourceforge/zmanim/AstronomicalCalendar;-><init>()V

    .line 74
    const-wide/high16 v0, 0x4032000000000000L    # 18.0

    iput-wide v0, p0, Lnet/sourceforge/zmanim/ZmanimCalendar;->candleLightingOffset:D

    .line 341
    return-void
.end method

.method public constructor <init>(Lnet/sourceforge/zmanim/util/GeoLocation;)V
    .locals 2
    .param p1, "location"    # Lnet/sourceforge/zmanim/util/GeoLocation;

    .prologue
    .line 350
    invoke-direct {p0, p1}, Lnet/sourceforge/zmanim/AstronomicalCalendar;-><init>(Lnet/sourceforge/zmanim/util/GeoLocation;)V

    .line 74
    const-wide/high16 v0, 0x4032000000000000L    # 18.0

    iput-wide v0, p0, Lnet/sourceforge/zmanim/ZmanimCalendar;->candleLightingOffset:D

    .line 351
    return-void
.end method


# virtual methods
.method public getAlos72()Ljava/util/Date;
    .locals 4

    .prologue
    .line 119
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ZmanimCalendar;->getSeaLevelSunrise()Ljava/util/Date;

    move-result-object v0

    const-wide/32 v2, -0x41eb00

    invoke-virtual {p0, v0, v2, v3}, Lnet/sourceforge/zmanim/ZmanimCalendar;->getTimeOffset(Ljava/util/Date;J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getAlosHashachar()Ljava/util/Date;
    .locals 2

    .prologue
    .line 103
    const-wide v0, 0x405a866666666666L    # 106.1

    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/zmanim/ZmanimCalendar;->getSunriseOffsetByDegrees(D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getCandleLighting()Ljava/util/Date;
    .locals 6

    .prologue
    .line 199
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ZmanimCalendar;->getSunset()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ZmanimCalendar;->getCandleLightingOffset()D

    move-result-wide v2

    neg-double v2, v2

    const-wide v4, 0x40ed4c0000000000L    # 60000.0

    mul-double/2addr v2, v4

    invoke-virtual {p0, v0, v2, v3}, Lnet/sourceforge/zmanim/ZmanimCalendar;->getTimeOffset(Ljava/util/Date;D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getCandleLightingOffset()D
    .locals 2

    .prologue
    .line 364
    iget-wide v0, p0, Lnet/sourceforge/zmanim/ZmanimCalendar;->candleLightingOffset:D

    return-wide v0
.end method

.method public getChatzos()Ljava/util/Date;
    .locals 1

    .prologue
    .line 133
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ZmanimCalendar;->getSunTransit()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getMinchaGedola()Ljava/util/Date;
    .locals 6

    .prologue
    .line 255
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ZmanimCalendar;->getSeaLevelSunrise()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ZmanimCalendar;->getShaahZmanisGra()J

    move-result-wide v2

    long-to-double v2, v2

    const-wide/high16 v4, 0x401a000000000000L    # 6.5

    mul-double/2addr v2, v4

    invoke-virtual {p0, v0, v2, v3}, Lnet/sourceforge/zmanim/ZmanimCalendar;->getTimeOffset(Ljava/util/Date;D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getMinchaKetana()Ljava/util/Date;
    .locals 6

    .prologue
    .line 274
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ZmanimCalendar;->getSeaLevelSunrise()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ZmanimCalendar;->getShaahZmanisGra()J

    move-result-wide v2

    long-to-double v2, v2

    const-wide/high16 v4, 0x4023000000000000L    # 9.5

    mul-double/2addr v2, v4

    invoke-virtual {p0, v0, v2, v3}, Lnet/sourceforge/zmanim/ZmanimCalendar;->getTimeOffset(Ljava/util/Date;D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getPlagHamincha()Ljava/util/Date;
    .locals 6

    .prologue
    .line 289
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ZmanimCalendar;->getSeaLevelSunrise()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ZmanimCalendar;->getShaahZmanisGra()J

    move-result-wide v2

    long-to-double v2, v2

    const-wide v4, 0x4025800000000000L    # 10.75

    mul-double/2addr v2, v4

    invoke-virtual {p0, v0, v2, v3}, Lnet/sourceforge/zmanim/ZmanimCalendar;->getTimeOffset(Ljava/util/Date;D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getShaahZmanisGra()J
    .locals 2

    .prologue
    .line 314
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ZmanimCalendar;->getSeaLevelSunrise()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ZmanimCalendar;->getSeaLevelSunset()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/zmanim/ZmanimCalendar;->getTemporalHour(Ljava/util/Date;Ljava/util/Date;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getShaahZmanisMGA()J
    .locals 2

    .prologue
    .line 330
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ZmanimCalendar;->getAlos72()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ZmanimCalendar;->getTzais72()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/zmanim/ZmanimCalendar;->getTemporalHour(Ljava/util/Date;Ljava/util/Date;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSofZmanShmaGRA()Ljava/util/Date;
    .locals 6

    .prologue
    .line 150
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ZmanimCalendar;->getSeaLevelSunrise()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ZmanimCalendar;->getShaahZmanisGra()J

    move-result-wide v2

    const-wide/16 v4, 0x3

    mul-long/2addr v2, v4

    invoke-virtual {p0, v0, v2, v3}, Lnet/sourceforge/zmanim/ZmanimCalendar;->getTimeOffset(Ljava/util/Date;J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getSofZmanShmaMGA()Ljava/util/Date;
    .locals 6

    .prologue
    .line 169
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ZmanimCalendar;->getAlos72()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ZmanimCalendar;->getShaahZmanisMGA()J

    move-result-wide v2

    const-wide/16 v4, 0x3

    mul-long/2addr v2, v4

    invoke-virtual {p0, v0, v2, v3}, Lnet/sourceforge/zmanim/ZmanimCalendar;->getTimeOffset(Ljava/util/Date;J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getSofZmanTfilaGRA()Ljava/util/Date;
    .locals 6

    .prologue
    .line 215
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ZmanimCalendar;->getSeaLevelSunrise()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ZmanimCalendar;->getShaahZmanisGra()J

    move-result-wide v2

    const-wide/16 v4, 0x4

    mul-long/2addr v2, v4

    invoke-virtual {p0, v0, v2, v3}, Lnet/sourceforge/zmanim/ZmanimCalendar;->getTimeOffset(Ljava/util/Date;J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getSofZmanTfilaMGA()Ljava/util/Date;
    .locals 6

    .prologue
    .line 234
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ZmanimCalendar;->getAlos72()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ZmanimCalendar;->getShaahZmanisMGA()J

    move-result-wide v2

    const-wide/16 v4, 0x4

    mul-long/2addr v2, v4

    invoke-virtual {p0, v0, v2, v3}, Lnet/sourceforge/zmanim/ZmanimCalendar;->getTimeOffset(Ljava/util/Date;J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getTzais()Ljava/util/Date;
    .locals 2

    .prologue
    .line 88
    const-wide v0, 0x4058a00000000000L    # 98.5

    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/zmanim/ZmanimCalendar;->getSunsetOffsetByDegrees(D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getTzais72()Ljava/util/Date;
    .locals 4

    .prologue
    .line 184
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/ZmanimCalendar;->getSeaLevelSunset()Ljava/util/Date;

    move-result-object v0

    const-wide/32 v2, 0x41eb00

    invoke-virtual {p0, v0, v2, v3}, Lnet/sourceforge/zmanim/ZmanimCalendar;->getTimeOffset(Ljava/util/Date;J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public setCandleLightingOffset(D)V
    .locals 1
    .param p1, "candleLightingOffset"    # D

    .prologue
    .line 378
    iput-wide p1, p0, Lnet/sourceforge/zmanim/ZmanimCalendar;->candleLightingOffset:D

    .line 379
    return-void
.end method
