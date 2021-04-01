.class public Lnet/sourceforge/zmanim/util/SunTimesCalculator;
.super Lnet/sourceforge/zmanim/util/AstronomicalCalculator;
.source "SunTimesCalculator.java"


# static fields
.field private static final DEG_PER_HOUR:D = 15.0


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lnet/sourceforge/zmanim/util/AstronomicalCalculator;-><init>()V

    return-void
.end method

.method private static acosDeg(D)D
    .locals 4
    .param p0, "x"    # D

    .prologue
    .line 83
    invoke-static {p0, p1}, Ljava/lang/Math;->acos(D)D

    move-result-wide v0

    const-wide v2, 0x4076800000000000L    # 360.0

    mul-double/2addr v0, v2

    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    div-double/2addr v0, v2

    return-wide v0
.end method

.method private static asinDeg(D)D
    .locals 4
    .param p0, "x"    # D

    .prologue
    .line 90
    invoke-static {p0, p1}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    const-wide v2, 0x4076800000000000L    # 360.0

    mul-double/2addr v0, v2

    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    div-double/2addr v0, v2

    return-wide v0
.end method

.method private static cosDeg(D)D
    .locals 4
    .param p0, "deg"    # D

    .prologue
    .line 104
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, p0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v2

    const-wide v2, 0x4076800000000000L    # 360.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private static getApproxTimeDays(IDZ)D
    .locals 7
    .param p0, "dayOfYear"    # I
    .param p1, "hoursFromMeridian"    # D
    .param p3, "isSunrise"    # Z

    .prologue
    const-wide/high16 v4, 0x4038000000000000L    # 24.0

    .line 131
    if-eqz p3, :cond_0

    .line 132
    int-to-double v0, p0

    const-wide/high16 v2, 0x4018000000000000L    # 6.0

    sub-double/2addr v2, p1

    div-double/2addr v2, v4

    add-double/2addr v0, v2

    .line 134
    :goto_0
    return-wide v0

    :cond_0
    int-to-double v0, p0

    const-wide/high16 v2, 0x4032000000000000L    # 18.0

    sub-double/2addr v2, p1

    div-double/2addr v2, v4

    add-double/2addr v0, v2

    goto :goto_0
.end method

.method private static getCosLocalHourAngle(DDD)D
    .locals 8
    .param p0, "sunTrueLongitude"    # D
    .param p2, "latitude"    # D
    .param p4, "zenith"    # D

    .prologue
    .line 181
    const-wide v4, 0x3fd975e2046c764bL    # 0.39782

    invoke-static {p0, p1}, Lnet/sourceforge/zmanim/util/SunTimesCalculator;->sinDeg(D)D

    move-result-wide v6

    mul-double v2, v4, v6

    .line 182
    .local v2, "sinDec":D
    invoke-static {v2, v3}, Lnet/sourceforge/zmanim/util/SunTimesCalculator;->asinDeg(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Lnet/sourceforge/zmanim/util/SunTimesCalculator;->cosDeg(D)D

    move-result-wide v0

    .line 183
    .local v0, "cosDec":D
    invoke-static {p4, p5}, Lnet/sourceforge/zmanim/util/SunTimesCalculator;->cosDeg(D)D

    move-result-wide v4

    invoke-static {p2, p3}, Lnet/sourceforge/zmanim/util/SunTimesCalculator;->sinDeg(D)D

    move-result-wide v6

    mul-double/2addr v6, v2

    sub-double/2addr v4, v6

    invoke-static {p2, p3}, Lnet/sourceforge/zmanim/util/SunTimesCalculator;->cosDeg(D)D

    move-result-wide v6

    mul-double/2addr v6, v0

    div-double/2addr v4, v6

    return-wide v4
.end method

.method private static getDayOfYear(III)I
    .locals 4
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "day"    # I

    .prologue
    .line 112
    mul-int/lit16 v3, p1, 0x113

    div-int/lit8 v0, v3, 0x9

    .line 113
    .local v0, "n1":I
    add-int/lit8 v3, p1, 0x9

    div-int/lit8 v1, v3, 0xc

    .line 114
    .local v1, "n2":I
    div-int/lit8 v3, p0, 0x4

    mul-int/lit8 v3, v3, 0x4

    sub-int v3, p0, v3

    add-int/lit8 v3, v3, 0x2

    div-int/lit8 v3, v3, 0x3

    add-int/lit8 v2, v3, 0x1

    .line 115
    .local v2, "n3":I
    mul-int v3, v1, v2

    sub-int v3, v0, v3

    add-int/2addr v3, p2

    add-int/lit8 v3, v3, -0x1e

    return v3
.end method

.method private static getHoursFromMeridian(D)D
    .locals 2
    .param p0, "longitude"    # D

    .prologue
    .line 123
    const-wide/high16 v0, 0x402e000000000000L    # 15.0

    div-double v0, p0, v0

    return-wide v0
.end method

.method private static getLocalMeanTime(DDD)D
    .locals 4
    .param p0, "localHour"    # D
    .param p2, "sunRightAscensionHours"    # D
    .param p4, "approxTimeDays"    # D

    .prologue
    .line 193
    add-double v0, p0, p2

    const-wide v2, 0x3fb0d25edd052935L    # 0.06571

    mul-double/2addr v2, p4

    sub-double/2addr v0, v2

    const-wide v2, 0x401a7ced916872b0L    # 6.622

    sub-double/2addr v0, v2

    return-wide v0
.end method

.method private static getMeanAnomaly(IDZ)D
    .locals 5
    .param p0, "dayOfYear"    # I
    .param p1, "longitude"    # D
    .param p3, "isSunrise"    # Z

    .prologue
    .line 142
    const-wide v0, 0x3fef8a0902de00d2L    # 0.9856

    invoke-static {p1, p2}, Lnet/sourceforge/zmanim/util/SunTimesCalculator;->getHoursFromMeridian(D)D

    move-result-wide v2

    invoke-static {p0, v2, v3, p3}, Lnet/sourceforge/zmanim/util/SunTimesCalculator;->getApproxTimeDays(IDZ)D

    move-result-wide v2

    mul-double/2addr v0, v2

    const-wide v2, 0x400a4fdf3b645a1dL    # 3.289

    sub-double/2addr v0, v2

    return-wide v0
.end method

.method private static getSunRightAscensionHours(D)D
    .locals 14
    .param p0, "sunTrueLongitude"    # D

    .prologue
    const-wide v12, 0x4056800000000000L    # 90.0

    .line 167
    const-wide v8, 0x3fed5d4e8fb00bccL    # 0.91764

    invoke-static {p0, p1}, Lnet/sourceforge/zmanim/util/SunTimesCalculator;->tanDeg(D)D

    move-result-wide v10

    mul-double v0, v8, v10

    .line 168
    .local v0, "a":D
    const-wide v8, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v10

    mul-double v4, v8, v10

    .line 170
    .local v4, "ra":D
    div-double v8, p0, v12

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    mul-double v2, v8, v12

    .line 171
    .local v2, "lQuadrant":D
    div-double v8, v4, v12

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    mul-double v6, v8, v12

    .line 172
    .local v6, "raQuadrant":D
    sub-double v8, v2, v6

    add-double/2addr v4, v8

    .line 174
    const-wide/high16 v8, 0x402e000000000000L    # 15.0

    div-double v8, v4, v8

    return-wide v8
.end method

.method private static getSunTrueLongitude(D)D
    .locals 10
    .param p0, "sunMeanAnomaly"    # D

    .prologue
    const-wide v8, 0x4076800000000000L    # 360.0

    .line 150
    const-wide v2, 0x3ffea7ef9db22d0eL    # 1.916

    invoke-static {p0, p1}, Lnet/sourceforge/zmanim/util/SunTimesCalculator;->sinDeg(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    add-double/2addr v2, p0

    const-wide v4, 0x3f947ae147ae147bL    # 0.02

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    mul-double/2addr v6, p0

    invoke-static {v6, v7}, Lnet/sourceforge/zmanim/util/SunTimesCalculator;->sinDeg(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    const-wide v4, 0x4071aa24dd2f1aa0L    # 282.634

    add-double v0, v2, v4

    .line 153
    .local v0, "l":D
    cmpl-double v2, v0, v8

    if-ltz v2, :cond_0

    .line 154
    sub-double/2addr v0, v8

    .line 156
    :cond_0
    const-wide/16 v2, 0x0

    cmpg-double v2, v0, v2

    if-gez v2, :cond_1

    .line 157
    add-double/2addr v0, v8

    .line 159
    :cond_1
    return-wide v0
.end method

.method private static getTimeUTC(IIIDDDZ)D
    .locals 27
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "day"    # I
    .param p3, "longitude"    # D
    .param p5, "latitude"    # D
    .param p7, "zenith"    # D
    .param p9, "isSunrise"    # Z

    .prologue
    .line 219
    invoke-static/range {p0 .. p2}, Lnet/sourceforge/zmanim/util/SunTimesCalculator;->getDayOfYear(III)I

    move-result v14

    .line 220
    .local v14, "dayOfYear":I
    move-wide/from16 v0, p3

    move/from16 v2, p9

    invoke-static {v14, v0, v1, v2}, Lnet/sourceforge/zmanim/util/SunTimesCalculator;->getMeanAnomaly(IDZ)D

    move-result-wide v22

    .line 221
    .local v22, "sunMeanAnomaly":D
    invoke-static/range {v22 .. v23}, Lnet/sourceforge/zmanim/util/SunTimesCalculator;->getSunTrueLongitude(D)D

    move-result-wide v4

    .line 222
    .local v4, "sunTrueLong":D
    invoke-static {v4, v5}, Lnet/sourceforge/zmanim/util/SunTimesCalculator;->getSunRightAscensionHours(D)D

    move-result-wide v24

    .local v24, "sunRightAscensionHours":D
    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    .line 223
    invoke-static/range {v4 .. v9}, Lnet/sourceforge/zmanim/util/SunTimesCalculator;->getCosLocalHourAngle(DDD)D

    move-result-wide v12

    .line 225
    .local v12, "cosLocalHourAngle":D
    const-wide/16 v16, 0x0

    .line 226
    .local v16, "localHourAngle":D
    if-eqz p9, :cond_0

    .line 227
    const-wide v8, 0x4076800000000000L    # 360.0

    invoke-static {v12, v13}, Lnet/sourceforge/zmanim/util/SunTimesCalculator;->acosDeg(D)D

    move-result-wide v10

    sub-double v16, v8, v10

    .line 231
    :goto_0
    const-wide/high16 v8, 0x402e000000000000L    # 15.0

    div-double v6, v16, v8

    .line 234
    .local v6, "localHour":D
    invoke-static/range {p3 .. p4}, Lnet/sourceforge/zmanim/util/SunTimesCalculator;->getHoursFromMeridian(D)D

    move-result-wide v8

    move/from16 v0, p9

    invoke-static {v14, v8, v9, v0}, Lnet/sourceforge/zmanim/util/SunTimesCalculator;->getApproxTimeDays(IDZ)D

    move-result-wide v10

    move-wide/from16 v8, v24

    .line 233
    invoke-static/range {v6 .. v11}, Lnet/sourceforge/zmanim/util/SunTimesCalculator;->getLocalMeanTime(DDD)D

    move-result-wide v18

    .line 235
    .local v18, "localMeanTime":D
    invoke-static/range {p3 .. p4}, Lnet/sourceforge/zmanim/util/SunTimesCalculator;->getHoursFromMeridian(D)D

    move-result-wide v8

    sub-double v20, v18, v8

    .line 236
    .local v20, "pocessedTime":D
    :goto_1
    const-wide/16 v8, 0x0

    cmpg-double v8, v20, v8

    if-ltz v8, :cond_1

    .line 239
    :goto_2
    const-wide/high16 v8, 0x4038000000000000L    # 24.0

    cmpl-double v8, v20, v8

    if-gez v8, :cond_2

    .line 242
    return-wide v20

    .line 229
    .end local v6    # "localHour":D
    .end local v18    # "localMeanTime":D
    .end local v20    # "pocessedTime":D
    :cond_0
    invoke-static {v12, v13}, Lnet/sourceforge/zmanim/util/SunTimesCalculator;->acosDeg(D)D

    move-result-wide v16

    goto :goto_0

    .line 237
    .restart local v6    # "localHour":D
    .restart local v18    # "localMeanTime":D
    .restart local v20    # "pocessedTime":D
    :cond_1
    const-wide/high16 v8, 0x4038000000000000L    # 24.0

    add-double v20, v20, v8

    goto :goto_1

    .line 240
    :cond_2
    const-wide/high16 v8, 0x4038000000000000L    # 24.0

    sub-double v20, v20, v8

    goto :goto_2
.end method

.method private static sinDeg(D)D
    .locals 4
    .param p0, "deg"    # D

    .prologue
    .line 76
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, p0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v2

    const-wide v2, 0x4076800000000000L    # 360.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private static tanDeg(D)D
    .locals 4
    .param p0, "deg"    # D

    .prologue
    .line 97
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, p0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v2

    const-wide v2, 0x4076800000000000L    # 360.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public getCalculatorName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    const-string v0, "US Naval Almanac Algorithm"

    return-object v0
.end method

.method public getUTCSunrise(Ljava/util/Calendar;Lnet/sourceforge/zmanim/util/GeoLocation;DZ)D
    .locals 23
    .param p1, "calendar"    # Ljava/util/Calendar;
    .param p2, "geoLocation"    # Lnet/sourceforge/zmanim/util/GeoLocation;
    .param p3, "zenith"    # D
    .param p5, "adjustForElevation"    # Z

    .prologue
    .line 45
    if-eqz p5, :cond_0

    invoke-virtual/range {p2 .. p2}, Lnet/sourceforge/zmanim/util/GeoLocation;->getElevation()D

    move-result-wide v20

    .line 46
    .local v20, "elevation":D
    :goto_0
    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    move-wide/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Lnet/sourceforge/zmanim/util/SunTimesCalculator;->adjustZenith(DD)D

    move-result-wide v14

    .line 48
    .local v14, "adjustedZenith":D
    const/4 v6, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v7

    const/4 v6, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/lit8 v8, v6, 0x1

    .line 49
    const/4 v6, 0x5

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Lnet/sourceforge/zmanim/util/GeoLocation;->getLongitude()D

    move-result-wide v10

    invoke-virtual/range {p2 .. p2}, Lnet/sourceforge/zmanim/util/GeoLocation;->getLatitude()D

    move-result-wide v12

    .line 50
    const/16 v16, 0x1

    .line 48
    invoke-static/range {v7 .. v16}, Lnet/sourceforge/zmanim/util/SunTimesCalculator;->getTimeUTC(IIIDDDZ)D

    move-result-wide v18

    .line 51
    .local v18, "doubleTime":D
    return-wide v18

    .line 45
    .end local v14    # "adjustedZenith":D
    .end local v18    # "doubleTime":D
    .end local v20    # "elevation":D
    :cond_0
    const-wide/16 v20, 0x0

    goto :goto_0
.end method

.method public getUTCSunset(Ljava/util/Calendar;Lnet/sourceforge/zmanim/util/GeoLocation;DZ)D
    .locals 23
    .param p1, "calendar"    # Ljava/util/Calendar;
    .param p2, "geoLocation"    # Lnet/sourceforge/zmanim/util/GeoLocation;
    .param p3, "zenith"    # D
    .param p5, "adjustForElevation"    # Z

    .prologue
    .line 58
    if-eqz p5, :cond_0

    invoke-virtual/range {p2 .. p2}, Lnet/sourceforge/zmanim/util/GeoLocation;->getElevation()D

    move-result-wide v20

    .line 59
    .local v20, "elevation":D
    :goto_0
    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    move-wide/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Lnet/sourceforge/zmanim/util/SunTimesCalculator;->adjustZenith(DD)D

    move-result-wide v14

    .line 61
    .local v14, "adjustedZenith":D
    const/4 v6, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v7

    const/4 v6, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/lit8 v8, v6, 0x1

    .line 62
    const/4 v6, 0x5

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Lnet/sourceforge/zmanim/util/GeoLocation;->getLongitude()D

    move-result-wide v10

    invoke-virtual/range {p2 .. p2}, Lnet/sourceforge/zmanim/util/GeoLocation;->getLatitude()D

    move-result-wide v12

    .line 63
    const/16 v16, 0x0

    .line 61
    invoke-static/range {v7 .. v16}, Lnet/sourceforge/zmanim/util/SunTimesCalculator;->getTimeUTC(IIIDDDZ)D

    move-result-wide v18

    .line 64
    .local v18, "doubleTime":D
    return-wide v18

    .line 58
    .end local v14    # "adjustedZenith":D
    .end local v18    # "doubleTime":D
    .end local v20    # "elevation":D
    :cond_0
    const-wide/16 v20, 0x0

    goto :goto_0
.end method
