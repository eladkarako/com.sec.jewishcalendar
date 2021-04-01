.class public Lnet/sourceforge/zmanim/util/NOAACalculator;
.super Lnet/sourceforge/zmanim/util/AstronomicalCalculator;
.source "NOAACalculator.java"


# static fields
.field private static final JULIAN_DAYS_PER_CENTURY:D = 36525.0

.field private static final JULIAN_DAY_JAN_1_2000:D = 2451545.0


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lnet/sourceforge/zmanim/util/AstronomicalCalculator;-><init>()V

    return-void
.end method

.method private static getEarthOrbitEccentricity(D)D
    .locals 6
    .param p0, "julianCenturies"    # D

    .prologue
    .line 176
    const-wide v0, 0x3f911c11725d0380L    # 0.016708634

    const-wide v2, 0x3f060a1c525fe303L    # 4.2037E-5

    const-wide v4, 0x3e810160fc64d800L    # 1.267E-7

    mul-double/2addr v4, p0

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    sub-double/2addr v0, v2

    return-wide v0
.end method

.method private static getEquationOfTime(D)D
    .locals 26
    .param p0, "julianCenturies"    # D

    .prologue
    .line 295
    invoke-static/range {p0 .. p1}, Lnet/sourceforge/zmanim/util/NOAACalculator;->getObliquityCorrection(D)D

    move-result-wide v4

    .line 296
    .local v4, "epsilon":D
    invoke-static/range {p0 .. p1}, Lnet/sourceforge/zmanim/util/NOAACalculator;->getSunGeometricMeanLongitude(D)D

    move-result-wide v10

    .line 297
    .local v10, "geomMeanLongSun":D
    invoke-static/range {p0 .. p1}, Lnet/sourceforge/zmanim/util/NOAACalculator;->getEarthOrbitEccentricity(D)D

    move-result-wide v2

    .line 298
    .local v2, "eccentricityEarthOrbit":D
    invoke-static/range {p0 .. p1}, Lnet/sourceforge/zmanim/util/NOAACalculator;->getSunGeometricMeanAnomaly(D)D

    move-result-wide v8

    .line 300
    .local v8, "geomMeanAnomalySun":D
    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v22

    const-wide/high16 v24, 0x4000000000000000L    # 2.0

    div-double v22, v22, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->tan(D)D

    move-result-wide v20

    .line 301
    .local v20, "y":D
    mul-double v20, v20, v20

    .line 303
    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    invoke-static {v10, v11}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v24

    mul-double v22, v22, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    .line 304
    .local v12, "sin2l0":D
    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->sin(D)D

    move-result-wide v18

    .line 305
    .local v18, "sinm":D
    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    invoke-static {v10, v11}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v24

    mul-double v22, v22, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    .line 306
    .local v0, "cos2l0":D
    const-wide/high16 v22, 0x4010000000000000L    # 4.0

    invoke-static {v10, v11}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v24

    mul-double v22, v22, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    .line 307
    .local v16, "sin4l0":D
    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v24

    mul-double v22, v22, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    .line 309
    .local v14, "sin2m":D
    mul-double v22, v20, v12

    const-wide/high16 v24, 0x4000000000000000L    # 2.0

    mul-double v24, v24, v2

    mul-double v24, v24, v18

    sub-double v22, v22, v24

    const-wide/high16 v24, 0x4010000000000000L    # 4.0

    mul-double v24, v24, v2

    mul-double v24, v24, v20

    .line 310
    mul-double v24, v24, v18

    mul-double v24, v24, v0

    .line 309
    add-double v22, v22, v24

    .line 310
    const-wide/high16 v24, 0x3fe0000000000000L    # 0.5

    mul-double v24, v24, v20

    mul-double v24, v24, v20

    mul-double v24, v24, v16

    .line 309
    sub-double v22, v22, v24

    .line 310
    const-wide/high16 v24, 0x3ff4000000000000L    # 1.25

    mul-double v24, v24, v2

    mul-double v24, v24, v2

    mul-double v24, v24, v14

    .line 309
    sub-double v6, v22, v24

    .line 311
    .local v6, "equationOfTime":D
    invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v22

    const-wide/high16 v24, 0x4010000000000000L    # 4.0

    mul-double v22, v22, v24

    return-wide v22
.end method

.method private static getJulianCenturiesFromJulianDay(D)D
    .locals 4
    .param p0, "julianDay"    # D

    .prologue
    .line 124
    const-wide v0, 0x4142b42c80000000L    # 2451545.0

    sub-double v0, p0, v0

    const-wide v2, 0x40e1d5a000000000L    # 36525.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method private static getJulianDay(Ljava/util/Calendar;)D
    .locals 12
    .param p0, "calendar"    # Ljava/util/Calendar;

    .prologue
    const/4 v6, 0x2

    .line 103
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 104
    .local v4, "year":I
    invoke-virtual {p0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int/lit8 v3, v5, 0x1

    .line 105
    .local v3, "month":I
    const/4 v5, 0x5

    invoke-virtual {p0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 106
    .local v2, "day":I
    if-gt v3, v6, :cond_0

    .line 107
    add-int/lit8 v4, v4, -0x1

    .line 108
    add-int/lit8 v3, v3, 0xc

    .line 110
    :cond_0
    div-int/lit8 v0, v4, 0x64

    .line 111
    .local v0, "a":I
    rsub-int/lit8 v5, v0, 0x2

    div-int/lit8 v6, v0, 0x4

    add-int v1, v5, v6

    .line 113
    .local v1, "b":I
    const-wide v6, 0x4076d40000000000L    # 365.25

    add-int/lit16 v5, v4, 0x126c

    int-to-double v8, v5

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    const-wide v8, 0x403e99a027525461L    # 30.6001

    add-int/lit8 v5, v3, 0x1

    int-to-double v10, v5

    mul-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    add-double/2addr v6, v8

    int-to-double v8, v2

    add-double/2addr v6, v8

    int-to-double v8, v1

    add-double/2addr v6, v8

    const-wide v8, 0x4097d20000000000L    # 1524.5

    sub-double/2addr v6, v8

    return-wide v6
.end method

.method private static getJulianDayFromJulianCenturies(D)D
    .locals 4
    .param p0, "julianCenturies"    # D

    .prologue
    .line 135
    const-wide v0, 0x40e1d5a000000000L    # 36525.0

    mul-double/2addr v0, p0

    const-wide v2, 0x4142b42c80000000L    # 2451545.0

    add-double/2addr v0, v2

    return-wide v0
.end method

.method private static getMeanObliquityOfEcliptic(D)D
    .locals 12
    .param p0, "julianCenturies"    # D

    .prologue
    const-wide/high16 v10, 0x404e000000000000L    # 60.0

    .line 249
    const-wide v2, 0x403572b020c49ba6L    # 21.448

    .line 250
    const-wide v4, 0x40476851eb851eb8L    # 46.815

    const-wide v6, 0x3f4355475a31a4beL    # 5.9E-4

    const-wide v8, 0x3f5db445ed4a1ad6L    # 0.001813

    mul-double/2addr v8, p0

    sub-double/2addr v6, v8

    mul-double/2addr v6, p0

    add-double/2addr v4, v6

    mul-double/2addr v4, p0

    .line 249
    sub-double v0, v2, v4

    .line 251
    .local v0, "seconds":D
    const-wide/high16 v2, 0x4037000000000000L    # 23.0

    const-wide/high16 v4, 0x403a000000000000L    # 26.0

    div-double v6, v0, v10

    add-double/2addr v4, v6

    div-double/2addr v4, v10

    add-double/2addr v2, v4

    return-wide v2
.end method

.method private static getObliquityCorrection(D)D
    .locals 8
    .param p0, "julianCenturies"    # D

    .prologue
    .line 263
    invoke-static {p0, p1}, Lnet/sourceforge/zmanim/util/NOAACalculator;->getMeanObliquityOfEcliptic(D)D

    move-result-wide v0

    .line 265
    .local v0, "obliquityOfEcliptic":D
    const-wide v4, 0x405f428f5c28f5c3L    # 125.04

    const-wide v6, 0x409e388b43958106L    # 1934.136

    mul-double/2addr v6, p0

    sub-double v2, v4, v6

    .line 266
    .local v2, "omega":D
    const-wide v4, 0x3f64f8b588e368f1L    # 0.00256

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v4, v0

    return-wide v4
.end method

.method private static getSolarNoonUTC(DD)D
    .locals 12
    .param p0, "julianCenturies"    # D
    .param p2, "longitude"    # D

    .prologue
    .line 409
    invoke-static {p0, p1}, Lnet/sourceforge/zmanim/util/NOAACalculator;->getJulianDayFromJulianCenturies(D)D

    move-result-wide v8

    .line 410
    const-wide v10, 0x4076800000000000L    # 360.0

    div-double v10, p2, v10

    .line 409
    add-double/2addr v8, v10

    invoke-static {v8, v9}, Lnet/sourceforge/zmanim/util/NOAACalculator;->getJulianCenturiesFromJulianDay(D)D

    move-result-wide v6

    .line 411
    .local v6, "tnoon":D
    invoke-static {v6, v7}, Lnet/sourceforge/zmanim/util/NOAACalculator;->getEquationOfTime(D)D

    move-result-wide v0

    .line 412
    .local v0, "eqTime":D
    const-wide v8, 0x4086800000000000L    # 720.0

    const-wide/high16 v10, 0x4010000000000000L    # 4.0

    mul-double/2addr v10, p2

    add-double/2addr v8, v10

    sub-double v4, v8, v0

    .line 414
    .local v4, "solNoonUTC":D
    invoke-static {p0, p1}, Lnet/sourceforge/zmanim/util/NOAACalculator;->getJulianDayFromJulianCenturies(D)D

    move-result-wide v8

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    sub-double/2addr v8, v10

    .line 415
    const-wide v10, 0x4096800000000000L    # 1440.0

    div-double v10, v4, v10

    .line 414
    add-double/2addr v8, v10

    invoke-static {v8, v9}, Lnet/sourceforge/zmanim/util/NOAACalculator;->getJulianCenturiesFromJulianDay(D)D

    move-result-wide v2

    .line 417
    .local v2, "newt":D
    invoke-static {v2, v3}, Lnet/sourceforge/zmanim/util/NOAACalculator;->getEquationOfTime(D)D

    move-result-wide v0

    .line 418
    const-wide v8, 0x4086800000000000L    # 720.0

    const-wide/high16 v10, 0x4010000000000000L    # 4.0

    mul-double/2addr v10, p2

    add-double/2addr v8, v10

    sub-double/2addr v8, v0

    return-wide v8
.end method

.method private static getSunApparentLongitude(D)D
    .locals 12
    .param p0, "julianCenturies"    # D

    .prologue
    .line 234
    invoke-static {p0, p1}, Lnet/sourceforge/zmanim/util/NOAACalculator;->getSunTrueLongitude(D)D

    move-result-wide v4

    .line 236
    .local v4, "sunTrueLongitude":D
    const-wide v6, 0x405f428f5c28f5c3L    # 125.04

    const-wide v8, 0x409e388b43958106L    # 1934.136

    mul-double/2addr v8, p0

    sub-double v2, v6, v8

    .line 237
    .local v2, "omega":D
    const-wide v6, 0x3f774e65bea0ba1fL    # 0.00569

    sub-double v6, v4, v6

    const-wide v8, 0x3f7394317acc4ef9L    # 0.00478

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    sub-double v0, v6, v8

    .line 238
    .local v0, "lambda":D
    return-wide v0
.end method

.method private static getSunDeclination(D)D
    .locals 12
    .param p0, "julianCenturies"    # D

    .prologue
    .line 278
    invoke-static {p0, p1}, Lnet/sourceforge/zmanim/util/NOAACalculator;->getObliquityCorrection(D)D

    move-result-wide v2

    .line 279
    .local v2, "obliquityCorrection":D
    invoke-static {p0, p1}, Lnet/sourceforge/zmanim/util/NOAACalculator;->getSunApparentLongitude(D)D

    move-result-wide v0

    .line 281
    .local v0, "lambda":D
    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double v4, v8, v10

    .line 282
    .local v4, "sint":D
    invoke-static {v4, v5}, Ljava/lang/Math;->asin(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    .line 283
    .local v6, "theta":D
    return-wide v6
.end method

.method private static getSunEquationOfCenter(D)D
    .locals 16
    .param p0, "julianCenturies"    # D

    .prologue
    .line 187
    invoke-static/range {p0 .. p1}, Lnet/sourceforge/zmanim/util/NOAACalculator;->getSunGeometricMeanAnomaly(D)D

    move-result-wide v0

    .line 189
    .local v0, "m":D
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    .line 190
    .local v2, "mrad":D
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    .line 191
    .local v8, "sinm":D
    add-double v10, v2, v2

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    .line 192
    .local v4, "sin2m":D
    add-double v10, v2, v2

    add-double/2addr v10, v2

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    .line 194
    .local v6, "sin3m":D
    const-wide v10, 0x3ffea235b4edb2f6L    # 1.914602

    const-wide v12, 0x3f73bafd976ff3aeL    # 0.004817

    const-wide v14, 0x3eed5c31593e5fb7L    # 1.4E-5

    mul-double v14, v14, p0

    add-double/2addr v12, v14

    mul-double v12, v12, p0

    sub-double/2addr v10, v12

    mul-double/2addr v10, v8

    .line 195
    const-wide v12, 0x3f94790b84988095L    # 0.019993

    const-wide v14, 0x3f1a79fec99f1ae3L    # 1.01E-4

    mul-double v14, v14, p0

    sub-double/2addr v12, v14

    mul-double/2addr v12, v4

    .line 194
    add-double/2addr v10, v12

    .line 195
    const-wide v12, 0x3f32f09d8c6d612cL    # 2.89E-4

    mul-double/2addr v12, v6

    .line 194
    add-double/2addr v10, v12

    return-wide v10
.end method

.method private static getSunGeometricMeanAnomaly(D)D
    .locals 6
    .param p0, "julianCenturies"    # D

    .prologue
    .line 165
    const-wide v0, 0x407658773c0c1fc9L    # 357.52911

    const-wide v2, 0x40e193e19bf9c62aL    # 35999.05029

    const-wide v4, 0x3f242550f260db0cL    # 1.537E-4

    mul-double/2addr v4, p0

    sub-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    return-wide v0
.end method

.method private static getSunGeometricMeanLongitude(D)D
    .locals 10
    .param p0, "julianCenturies"    # D

    .prologue
    const-wide v8, 0x4076800000000000L    # 360.0

    .line 146
    const-wide v2, 0x407187769ec2ce46L    # 280.46646

    const-wide v4, 0x40e19418a272862fL    # 36000.76983

    const-wide v6, 0x3f33deda158aabc0L    # 3.032E-4

    mul-double/2addr v6, p0

    add-double/2addr v4, v6

    mul-double/2addr v4, p0

    add-double v0, v2, v4

    .line 147
    .local v0, "longitude":D
    :goto_0
    cmpl-double v2, v0, v8

    if-gtz v2, :cond_0

    .line 150
    :goto_1
    const-wide/16 v2, 0x0

    cmpg-double v2, v0, v2

    if-ltz v2, :cond_1

    .line 154
    return-wide v0

    .line 148
    :cond_0
    sub-double/2addr v0, v8

    goto :goto_0

    .line 151
    :cond_1
    add-double/2addr v0, v8

    goto :goto_1
.end method

.method private static getSunHourAngleAtSunrise(DDD)D
    .locals 10
    .param p0, "lat"    # D
    .param p2, "solarDec"    # D
    .param p4, "zenith"    # D

    .prologue
    .line 325
    invoke-static {p0, p1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    .line 326
    .local v0, "latRad":D
    invoke-static {p2, p3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    .line 328
    .local v2, "sdRad":D
    invoke-static {p4, p5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    div-double/2addr v4, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v6

    .line 329
    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    .line 328
    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->acos(D)D

    move-result-wide v4

    return-wide v4
.end method

.method private static getSunHourAngleAtSunset(DDD)D
    .locals 12
    .param p0, "lat"    # D
    .param p2, "solarDec"    # D
    .param p4, "zenith"    # D

    .prologue
    .line 344
    invoke-static {p0, p1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    .line 345
    .local v2, "latRad":D
    invoke-static {p2, p3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    .line 347
    .local v4, "sdRad":D
    invoke-static/range {p4 .. p5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    div-double/2addr v6, v8

    .line 348
    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v8

    invoke-static {v4, v5}, Ljava/lang/Math;->tan(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    .line 347
    sub-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->acos(D)D

    move-result-wide v0

    .line 349
    .local v0, "hourAngle":D
    neg-double v6, v0

    return-wide v6
.end method

.method private static getSunTrueLongitude(D)D
    .locals 6
    .param p0, "julianCenturies"    # D

    .prologue
    .line 206
    invoke-static {p0, p1}, Lnet/sourceforge/zmanim/util/NOAACalculator;->getSunGeometricMeanLongitude(D)D

    move-result-wide v2

    .line 207
    .local v2, "sunLongitude":D
    invoke-static {p0, p1}, Lnet/sourceforge/zmanim/util/NOAACalculator;->getSunEquationOfCenter(D)D

    move-result-wide v0

    .line 209
    .local v0, "center":D
    add-double v4, v2, v0

    return-wide v4
.end method

.method private static getSunriseUTC(DDDD)D
    .locals 26
    .param p0, "julianDay"    # D
    .param p2, "latitude"    # D
    .param p4, "longitude"    # D
    .param p6, "zenith"    # D

    .prologue
    .line 365
    invoke-static/range {p0 .. p1}, Lnet/sourceforge/zmanim/util/NOAACalculator;->getJulianCenturiesFromJulianDay(D)D

    move-result-wide v14

    .line 370
    .local v14, "julianCenturies":D
    move-wide/from16 v0, p4

    invoke-static {v14, v15, v0, v1}, Lnet/sourceforge/zmanim/util/NOAACalculator;->getSolarNoonUTC(DD)D

    move-result-wide v18

    .line 371
    .local v18, "noonmin":D
    const-wide v2, 0x4096800000000000L    # 1440.0

    div-double v2, v18, v2

    add-double v2, v2, p0

    invoke-static {v2, v3}, Lnet/sourceforge/zmanim/util/NOAACalculator;->getJulianCenturiesFromJulianDay(D)D

    move-result-wide v24

    .line 375
    .local v24, "tnoon":D
    invoke-static/range {v24 .. v25}, Lnet/sourceforge/zmanim/util/NOAACalculator;->getEquationOfTime(D)D

    move-result-wide v10

    .line 376
    .local v10, "eqTime":D
    invoke-static/range {v24 .. v25}, Lnet/sourceforge/zmanim/util/NOAACalculator;->getSunDeclination(D)D

    move-result-wide v4

    .local v4, "solarDec":D
    move-wide/from16 v2, p2

    move-wide/from16 v6, p6

    .line 377
    invoke-static/range {v2 .. v7}, Lnet/sourceforge/zmanim/util/NOAACalculator;->getSunHourAngleAtSunrise(DDD)D

    move-result-wide v12

    .line 379
    .local v12, "hourAngle":D
    invoke-static {v12, v13}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    sub-double v8, p4, v2

    .line 380
    .local v8, "delta":D
    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    mul-double v20, v2, v8

    .line 381
    .local v20, "timeDiff":D
    const-wide v2, 0x4086800000000000L    # 720.0

    add-double v2, v2, v20

    sub-double v22, v2, v10

    .line 385
    .local v22, "timeUTC":D
    invoke-static {v14, v15}, Lnet/sourceforge/zmanim/util/NOAACalculator;->getJulianDayFromJulianCenturies(D)D

    move-result-wide v2

    .line 386
    const-wide v6, 0x4096800000000000L    # 1440.0

    div-double v6, v22, v6

    .line 385
    add-double/2addr v2, v6

    invoke-static {v2, v3}, Lnet/sourceforge/zmanim/util/NOAACalculator;->getJulianCenturiesFromJulianDay(D)D

    move-result-wide v16

    .line 387
    .local v16, "newt":D
    invoke-static/range {v16 .. v17}, Lnet/sourceforge/zmanim/util/NOAACalculator;->getEquationOfTime(D)D

    move-result-wide v10

    .line 388
    invoke-static/range {v16 .. v17}, Lnet/sourceforge/zmanim/util/NOAACalculator;->getSunDeclination(D)D

    move-result-wide v4

    move-wide/from16 v2, p2

    move-wide/from16 v6, p6

    .line 389
    invoke-static/range {v2 .. v7}, Lnet/sourceforge/zmanim/util/NOAACalculator;->getSunHourAngleAtSunrise(DDD)D

    move-result-wide v12

    .line 390
    invoke-static {v12, v13}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    sub-double v8, p4, v2

    .line 391
    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    mul-double v20, v2, v8

    .line 392
    const-wide v2, 0x4086800000000000L    # 720.0

    add-double v2, v2, v20

    sub-double v22, v2, v10

    .line 393
    return-wide v22
.end method

.method private static getSunsetUTC(DDDD)D
    .locals 26
    .param p0, "julianDay"    # D
    .param p2, "latitude"    # D
    .param p4, "longitude"    # D
    .param p6, "zenith"    # D

    .prologue
    .line 435
    invoke-static/range {p0 .. p1}, Lnet/sourceforge/zmanim/util/NOAACalculator;->getJulianCenturiesFromJulianDay(D)D

    move-result-wide v14

    .line 440
    .local v14, "julianCenturies":D
    move-wide/from16 v0, p4

    invoke-static {v14, v15, v0, v1}, Lnet/sourceforge/zmanim/util/NOAACalculator;->getSolarNoonUTC(DD)D

    move-result-wide v18

    .line 441
    .local v18, "noonmin":D
    const-wide v2, 0x4096800000000000L    # 1440.0

    div-double v2, v18, v2

    add-double v2, v2, p0

    invoke-static {v2, v3}, Lnet/sourceforge/zmanim/util/NOAACalculator;->getJulianCenturiesFromJulianDay(D)D

    move-result-wide v24

    .line 445
    .local v24, "tnoon":D
    invoke-static/range {v24 .. v25}, Lnet/sourceforge/zmanim/util/NOAACalculator;->getEquationOfTime(D)D

    move-result-wide v10

    .line 446
    .local v10, "eqTime":D
    invoke-static/range {v24 .. v25}, Lnet/sourceforge/zmanim/util/NOAACalculator;->getSunDeclination(D)D

    move-result-wide v4

    .local v4, "solarDec":D
    move-wide/from16 v2, p2

    move-wide/from16 v6, p6

    .line 447
    invoke-static/range {v2 .. v7}, Lnet/sourceforge/zmanim/util/NOAACalculator;->getSunHourAngleAtSunset(DDD)D

    move-result-wide v12

    .line 449
    .local v12, "hourAngle":D
    invoke-static {v12, v13}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    sub-double v8, p4, v2

    .line 450
    .local v8, "delta":D
    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    mul-double v20, v2, v8

    .line 451
    .local v20, "timeDiff":D
    const-wide v2, 0x4086800000000000L    # 720.0

    add-double v2, v2, v20

    sub-double v22, v2, v10

    .line 455
    .local v22, "timeUTC":D
    invoke-static {v14, v15}, Lnet/sourceforge/zmanim/util/NOAACalculator;->getJulianDayFromJulianCenturies(D)D

    move-result-wide v2

    .line 456
    const-wide v6, 0x4096800000000000L    # 1440.0

    div-double v6, v22, v6

    .line 455
    add-double/2addr v2, v6

    invoke-static {v2, v3}, Lnet/sourceforge/zmanim/util/NOAACalculator;->getJulianCenturiesFromJulianDay(D)D

    move-result-wide v16

    .line 457
    .local v16, "newt":D
    invoke-static/range {v16 .. v17}, Lnet/sourceforge/zmanim/util/NOAACalculator;->getEquationOfTime(D)D

    move-result-wide v10

    .line 458
    invoke-static/range {v16 .. v17}, Lnet/sourceforge/zmanim/util/NOAACalculator;->getSunDeclination(D)D

    move-result-wide v4

    move-wide/from16 v2, p2

    move-wide/from16 v6, p6

    .line 459
    invoke-static/range {v2 .. v7}, Lnet/sourceforge/zmanim/util/NOAACalculator;->getSunHourAngleAtSunset(DDD)D

    move-result-wide v12

    .line 461
    invoke-static {v12, v13}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    sub-double v8, p4, v2

    .line 462
    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    mul-double v20, v2, v8

    .line 463
    const-wide v2, 0x4086800000000000L    # 720.0

    add-double v2, v2, v20

    sub-double v22, v2, v10

    .line 464
    return-wide v22
.end method


# virtual methods
.method public getCalculatorName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    const-string v0, "US National Oceanic and Atmospheric Administration Algorithm"

    return-object v0
.end method

.method public getUTCSunrise(Ljava/util/Calendar;Lnet/sourceforge/zmanim/util/GeoLocation;DZ)D
    .locals 15
    .param p1, "calendar"    # Ljava/util/Calendar;
    .param p2, "geoLocation"    # Lnet/sourceforge/zmanim/util/GeoLocation;
    .param p3, "zenith"    # D
    .param p5, "adjustForElevation"    # Z

    .prologue
    .line 56
    if-eqz p5, :cond_0

    invoke-virtual/range {p2 .. p2}, Lnet/sourceforge/zmanim/util/GeoLocation;->getElevation()D

    move-result-wide v10

    .line 57
    .local v10, "elevation":D
    :goto_0
    move-wide/from16 v0, p3

    invoke-virtual {p0, v0, v1, v10, v11}, Lnet/sourceforge/zmanim/util/NOAACalculator;->adjustZenith(DD)D

    move-result-wide v8

    .line 59
    .local v8, "adjustedZenith":D
    invoke-static/range {p1 .. p1}, Lnet/sourceforge/zmanim/util/NOAACalculator;->getJulianDay(Ljava/util/Calendar;)D

    move-result-wide v2

    invoke-virtual/range {p2 .. p2}, Lnet/sourceforge/zmanim/util/GeoLocation;->getLatitude()D

    move-result-wide v4

    invoke-virtual/range {p2 .. p2}, Lnet/sourceforge/zmanim/util/GeoLocation;->getLongitude()D

    move-result-wide v6

    neg-double v6, v6

    invoke-static/range {v2 .. v9}, Lnet/sourceforge/zmanim/util/NOAACalculator;->getSunriseUTC(DDDD)D

    move-result-wide v12

    .line 61
    .local v12, "sunrise":D
    const-wide/high16 v2, 0x404e000000000000L    # 60.0

    div-double/2addr v12, v2

    .line 64
    :goto_1
    const-wide/16 v2, 0x0

    cmpg-double v2, v12, v2

    if-ltz v2, :cond_1

    .line 67
    :goto_2
    const-wide/high16 v2, 0x4038000000000000L    # 24.0

    cmpl-double v2, v12, v2

    if-gez v2, :cond_2

    .line 70
    return-wide v12

    .line 56
    .end local v8    # "adjustedZenith":D
    .end local v10    # "elevation":D
    .end local v12    # "sunrise":D
    :cond_0
    const-wide/16 v10, 0x0

    goto :goto_0

    .line 65
    .restart local v8    # "adjustedZenith":D
    .restart local v10    # "elevation":D
    .restart local v12    # "sunrise":D
    :cond_1
    const-wide/high16 v2, 0x4038000000000000L    # 24.0

    add-double/2addr v12, v2

    goto :goto_1

    .line 68
    :cond_2
    const-wide/high16 v2, 0x4038000000000000L    # 24.0

    sub-double/2addr v12, v2

    goto :goto_2
.end method

.method public getUTCSunset(Ljava/util/Calendar;Lnet/sourceforge/zmanim/util/GeoLocation;DZ)D
    .locals 15
    .param p1, "calendar"    # Ljava/util/Calendar;
    .param p2, "geoLocation"    # Lnet/sourceforge/zmanim/util/GeoLocation;
    .param p3, "zenith"    # D
    .param p5, "adjustForElevation"    # Z

    .prologue
    .line 77
    if-eqz p5, :cond_0

    invoke-virtual/range {p2 .. p2}, Lnet/sourceforge/zmanim/util/GeoLocation;->getElevation()D

    move-result-wide v10

    .line 78
    .local v10, "elevation":D
    :goto_0
    move-wide/from16 v0, p3

    invoke-virtual {p0, v0, v1, v10, v11}, Lnet/sourceforge/zmanim/util/NOAACalculator;->adjustZenith(DD)D

    move-result-wide v8

    .line 80
    .local v8, "adjustedZenith":D
    invoke-static/range {p1 .. p1}, Lnet/sourceforge/zmanim/util/NOAACalculator;->getJulianDay(Ljava/util/Calendar;)D

    move-result-wide v2

    invoke-virtual/range {p2 .. p2}, Lnet/sourceforge/zmanim/util/GeoLocation;->getLatitude()D

    move-result-wide v4

    invoke-virtual/range {p2 .. p2}, Lnet/sourceforge/zmanim/util/GeoLocation;->getLongitude()D

    move-result-wide v6

    neg-double v6, v6

    invoke-static/range {v2 .. v9}, Lnet/sourceforge/zmanim/util/NOAACalculator;->getSunsetUTC(DDDD)D

    move-result-wide v12

    .line 82
    .local v12, "sunset":D
    const-wide/high16 v2, 0x404e000000000000L    # 60.0

    div-double/2addr v12, v2

    .line 85
    :goto_1
    const-wide/16 v2, 0x0

    cmpg-double v2, v12, v2

    if-ltz v2, :cond_1

    .line 88
    :goto_2
    const-wide/high16 v2, 0x4038000000000000L    # 24.0

    cmpl-double v2, v12, v2

    if-gez v2, :cond_2

    .line 91
    return-wide v12

    .line 77
    .end local v8    # "adjustedZenith":D
    .end local v10    # "elevation":D
    .end local v12    # "sunset":D
    :cond_0
    const-wide/16 v10, 0x0

    goto :goto_0

    .line 86
    .restart local v8    # "adjustedZenith":D
    .restart local v10    # "elevation":D
    .restart local v12    # "sunset":D
    :cond_1
    const-wide/high16 v2, 0x4038000000000000L    # 24.0

    add-double/2addr v12, v2

    goto :goto_1

    .line 89
    :cond_2
    const-wide/high16 v2, 0x4038000000000000L    # 24.0

    sub-double/2addr v12, v2

    goto :goto_2
.end method
