.class public Lnet/sourceforge/zmanim/util/JSuntimeCalculator;
.super Lnet/sourceforge/zmanim/util/AstronomicalCalculator;
.source "JSuntimeCalculator.java"


# instance fields
.field private calculatorName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lnet/sourceforge/zmanim/util/AstronomicalCalculator;-><init>()V

    .line 39
    const-string v0, "US National Oceanic and Atmospheric Administration Algorithm"

    iput-object v0, p0, Lnet/sourceforge/zmanim/util/JSuntimeCalculator;->calculatorName:Ljava/lang/String;

    .line 38
    return-void
.end method

.method private static dateToJulian(Ljava/util/Calendar;)D
    .locals 22
    .param p0, "date"    # Ljava/util/Calendar;

    .prologue
    .line 162
    const/4 v12, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Ljava/util/Calendar;->get(I)I

    move-result v11

    .line 163
    .local v11, "year":I
    const/4 v12, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Ljava/util/Calendar;->get(I)I

    move-result v12

    add-int/lit8 v9, v12, 0x1

    .line 164
    .local v9, "month":I
    const/4 v12, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 165
    .local v4, "day":I
    const/16 v12, 0xb

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 166
    .local v5, "hour":I
    const/16 v12, 0xc

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 167
    .local v8, "minute":I
    const/16 v12, 0xd

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Ljava/util/Calendar;->get(I)I

    move-result v10

    .line 169
    .local v10, "second":I
    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    int-to-double v14, v11

    mul-double/2addr v12, v14

    int-to-double v14, v9

    add-double/2addr v12, v14

    const-wide v14, 0x4107319400000000L    # 190002.5

    sub-double v6, v12, v14

    .line 170
    .local v6, "extra":D
    const-wide v12, 0x4076f00000000000L    # 367.0

    int-to-double v14, v11

    mul-double/2addr v12, v14

    const-wide/high16 v14, 0x401c000000000000L    # 7.0

    int-to-double v0, v11

    move-wide/from16 v16, v0

    int-to-double v0, v9

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x4022000000000000L    # 9.0

    add-double v18, v18, v20

    const-wide/high16 v20, 0x4028000000000000L    # 12.0

    div-double v18, v18, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->floor(D)D

    move-result-wide v18

    add-double v16, v16, v18

    mul-double v14, v14, v16

    const-wide/high16 v16, 0x4010000000000000L    # 4.0

    div-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->floor(D)D

    move-result-wide v14

    sub-double/2addr v12, v14

    .line 171
    const-wide v14, 0x4071300000000000L    # 275.0

    int-to-double v0, v9

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    const-wide/high16 v16, 0x4022000000000000L    # 9.0

    div-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->floor(D)D

    move-result-wide v14

    .line 170
    add-double/2addr v12, v14

    .line 171
    int-to-double v14, v4

    .line 170
    add-double/2addr v12, v14

    .line 171
    int-to-double v14, v5

    int-to-double v0, v8

    move-wide/from16 v16, v0

    int-to-double v0, v10

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x404e000000000000L    # 60.0

    div-double v18, v18, v20

    add-double v16, v16, v18

    const-wide/high16 v18, 0x404e000000000000L    # 60.0

    div-double v16, v16, v18

    add-double v14, v14, v16

    const-wide/high16 v16, 0x4038000000000000L    # 24.0

    div-double v14, v14, v16

    .line 170
    add-double/2addr v12, v14

    .line 172
    const-wide v14, 0x413a42b580000000L    # 1721013.5

    .line 170
    add-double/2addr v12, v14

    .line 172
    const-wide/high16 v14, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v14, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v16

    div-double v14, v14, v16

    .line 170
    sub-double/2addr v12, v14

    .line 172
    const-wide/high16 v14, 0x3fe0000000000000L    # 0.5

    .line 170
    add-double v2, v12, v14

    .line 173
    .local v2, "JD":D
    return-wide v2
.end method

.method private static eccentricityOfEarthsOrbit(D)D
    .locals 6
    .param p0, "t"    # D

    .prologue
    .line 317
    const-wide v0, 0x3f911c11725d0380L    # 0.016708634

    const-wide v2, 0x3f060a1c525fe303L    # 4.2037E-5

    const-wide v4, 0x3e810160fc64d800L    # 1.267E-7

    mul-double/2addr v4, p0

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    sub-double/2addr v0, v2

    return-wide v0
.end method

.method private static equationOfCentreForSun(D)D
    .locals 10
    .param p0, "t"    # D

    .prologue
    .line 361
    invoke-static {p0, p1}, Lnet/sourceforge/zmanim/util/JSuntimeCalculator;->geometricMeanAnomalyOfSun(D)D

    move-result-wide v0

    .line 363
    .local v0, "m":D
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    const-wide v4, 0x3ffea235b4edb2f6L    # 1.914602

    const-wide v6, 0x3f73bafd976ff3aeL    # 0.004817

    const-wide v8, 0x3eed5c31593e5fb7L    # 1.4E-5

    mul-double/2addr v8, p0

    add-double/2addr v6, v8

    mul-double/2addr v6, p0

    sub-double/2addr v4, v6

    mul-double/2addr v2, v4

    .line 364
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    const-wide v6, 0x3f94790b84988095L    # 0.019993

    const-wide v8, 0x3f1a79fec99f1ae3L    # 1.01E-4

    mul-double/2addr v8, p0

    sub-double/2addr v6, v8

    mul-double/2addr v4, v6

    .line 363
    add-double/2addr v2, v4

    .line 364
    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    .line 365
    const-wide v6, 0x3f32f09d8c6d612cL    # 2.89E-4

    .line 364
    mul-double/2addr v4, v6

    .line 363
    add-double/2addr v2, v4

    return-wide v2
.end method

.method private static equationOfTime(D)D
    .locals 20
    .param p0, "t"    # D

    .prologue
    .line 206
    invoke-static/range {p0 .. p1}, Lnet/sourceforge/zmanim/util/JSuntimeCalculator;->obliquityCorrection(D)D

    move-result-wide v4

    .line 207
    .local v4, "epsilon":D
    invoke-static/range {p0 .. p1}, Lnet/sourceforge/zmanim/util/JSuntimeCalculator;->geomMeanLongSun(D)D

    move-result-wide v6

    .line 208
    .local v6, "l0":D
    invoke-static/range {p0 .. p1}, Lnet/sourceforge/zmanim/util/JSuntimeCalculator;->eccentricityOfEarthsOrbit(D)D

    move-result-wide v0

    .line 209
    .local v0, "e":D
    invoke-static/range {p0 .. p1}, Lnet/sourceforge/zmanim/util/JSuntimeCalculator;->geometricMeanAnomalyOfSun(D)D

    move-result-wide v8

    .line 210
    .local v8, "m":D
    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v12

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    div-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->tan(D)D

    move-result-wide v12

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    .line 212
    .local v10, "y":D
    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v14

    mul-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    mul-double/2addr v12, v10

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    mul-double/2addr v14, v0

    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    mul-double v14, v14, v16

    sub-double/2addr v12, v14

    const-wide/high16 v14, 0x4010000000000000L    # 4.0

    mul-double/2addr v14, v0

    mul-double/2addr v14, v10

    .line 213
    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    mul-double v14, v14, v16

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v18

    mul-double v16, v16, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    mul-double v14, v14, v16

    .line 212
    add-double/2addr v12, v14

    .line 213
    const-wide/high16 v14, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v14, v10

    mul-double/2addr v14, v10

    .line 214
    const-wide/high16 v16, 0x4010000000000000L    # 4.0

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v18

    mul-double v16, v16, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    .line 213
    mul-double v14, v14, v16

    .line 212
    sub-double/2addr v12, v14

    .line 214
    const-wide/high16 v14, 0x3ff4000000000000L    # 1.25

    mul-double/2addr v14, v0

    mul-double/2addr v14, v0

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v18

    mul-double v16, v16, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    mul-double v14, v14, v16

    .line 212
    sub-double v2, v12, v14

    .line 215
    .local v2, "eTime":D
    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v12

    const-wide/high16 v14, 0x4010000000000000L    # 4.0

    mul-double/2addr v12, v14

    return-wide v12
.end method

.method private static eveningPhenomenon(DDDD)D
    .locals 22
    .param p0, "julian"    # D
    .param p2, "latitude"    # D
    .param p4, "longitude"    # D
    .param p6, "zenithDistance"    # D

    .prologue
    .line 137
    invoke-static/range {p0 .. p1}, Lnet/sourceforge/zmanim/util/JSuntimeCalculator;->julianDayToJulianCenturies(D)D

    move-result-wide v16

    .line 140
    .local v16, "t":D
    invoke-static/range {v16 .. v17}, Lnet/sourceforge/zmanim/util/JSuntimeCalculator;->equationOfTime(D)D

    move-result-wide v8

    .line 141
    .local v8, "eqtime":D
    invoke-static/range {v16 .. v17}, Lnet/sourceforge/zmanim/util/JSuntimeCalculator;->sunDeclination(D)D

    move-result-wide v2

    .local v2, "solarDec":D
    move-wide/from16 v0, p2

    move-wide/from16 v4, p6

    .line 142
    invoke-static/range {v0 .. v5}, Lnet/sourceforge/zmanim/util/JSuntimeCalculator;->hourAngleEvening(DDD)D

    move-result-wide v12

    .line 144
    .local v12, "hourangle":D
    invoke-static {v12, v13}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    sub-double v6, p4, v0

    .line 145
    .local v6, "delta":D
    const-wide/high16 v0, 0x4010000000000000L    # 4.0

    mul-double v18, v0, v6

    .line 146
    .local v18, "timeDiff":D
    const-wide v0, 0x4086800000000000L    # 720.0

    add-double v0, v0, v18

    sub-double v20, v0, v8

    .line 149
    .local v20, "timeUTC":D
    invoke-static/range {v16 .. v17}, Lnet/sourceforge/zmanim/util/JSuntimeCalculator;->julianCenturiesToJulianDay(D)D

    move-result-wide v0

    const-wide v4, 0x4096800000000000L    # 1440.0

    div-double v4, v20, v4

    add-double/2addr v0, v4

    invoke-static {v0, v1}, Lnet/sourceforge/zmanim/util/JSuntimeCalculator;->julianDayToJulianCenturies(D)D

    move-result-wide v14

    .line 150
    .local v14, "newt":D
    invoke-static {v14, v15}, Lnet/sourceforge/zmanim/util/JSuntimeCalculator;->equationOfTime(D)D

    move-result-wide v8

    .line 151
    invoke-static {v14, v15}, Lnet/sourceforge/zmanim/util/JSuntimeCalculator;->sunDeclination(D)D

    move-result-wide v2

    move-wide/from16 v0, p2

    move-wide/from16 v4, p6

    .line 152
    invoke-static/range {v0 .. v5}, Lnet/sourceforge/zmanim/util/JSuntimeCalculator;->hourAngleEvening(DDD)D

    move-result-wide v12

    .line 154
    invoke-static {v12, v13}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    sub-double v6, p4, v0

    .line 155
    const-wide/high16 v0, 0x4010000000000000L    # 4.0

    mul-double v18, v0, v6

    .line 157
    const-wide v0, 0x4086800000000000L    # 720.0

    add-double v0, v0, v18

    sub-double v10, v0, v8

    .line 158
    .local v10, "evening":D
    return-wide v10
.end method

.method private static geomMeanLongSun(D)D
    .locals 12
    .param p0, "t"    # D

    .prologue
    const-wide/16 v10, 0x0

    const-wide v8, 0x4076800000000000L    # 360.0

    .line 295
    const-wide v2, 0x407187769ec2ce46L    # 280.46646

    const-wide v4, 0x40e19418a272862fL    # 36000.76983

    const-wide v6, 0x3f33deda158aabc0L    # 3.032E-4

    mul-double/2addr v6, p0

    add-double/2addr v4, v6

    mul-double/2addr v4, p0

    add-double v0, v2, v4

    .line 297
    .local v0, "l0":D
    :cond_0
    :goto_0
    cmpl-double v2, v0, v10

    if-ltz v2, :cond_1

    cmpg-double v2, v0, v8

    if-lez v2, :cond_2

    .line 306
    :cond_1
    return-wide v0

    .line 298
    :cond_2
    cmpl-double v2, v0, v8

    if-lez v2, :cond_3

    .line 299
    sub-double/2addr v0, v8

    .line 302
    :cond_3
    cmpg-double v2, v0, v10

    if-gez v2, :cond_0

    .line 303
    add-double/2addr v0, v8

    goto :goto_0
.end method

.method private static geometricMeanAnomalyOfSun(D)D
    .locals 6
    .param p0, "t"    # D

    .prologue
    .line 328
    const-wide v0, 0x407658773c0c1fc9L    # 357.52911

    const-wide v2, 0x40e193e19bf9c62aL    # 35999.05029

    const-wide v4, 0x3f242550f260db0cL    # 1.537E-4

    mul-double/2addr v4, p0

    sub-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    return-wide v0
.end method

.method private static hourAngleEvening(DDD)D
    .locals 2
    .param p0, "lat"    # D
    .param p2, "solarDec"    # D
    .param p4, "zenithDistance"    # D

    .prologue
    .line 262
    invoke-static/range {p0 .. p5}, Lnet/sourceforge/zmanim/util/JSuntimeCalculator;->hourAngleMorning(DDD)D

    move-result-wide v0

    neg-double v0, v0

    return-wide v0
.end method

.method private static hourAngleMorning(DDD)D
    .locals 6
    .param p0, "lat"    # D
    .param p2, "solarDec"    # D
    .param p4, "zenithDistance"    # D

    .prologue
    .line 245
    invoke-static {p4, p5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    .line 246
    invoke-static {p0, p1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    invoke-static {p2, p3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    .line 245
    div-double/2addr v0, v2

    .line 246
    invoke-static {p0, p1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    .line 247
    invoke-static {p2, p3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->tan(D)D

    move-result-wide v4

    .line 246
    mul-double/2addr v2, v4

    .line 245
    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->acos(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private static julianCenturiesToJulianDay(D)D
    .locals 4
    .param p0, "t"    # D

    .prologue
    .line 195
    const-wide v0, 0x40e1d5a000000000L    # 36525.0

    mul-double/2addr v0, p0

    const-wide v2, 0x4142b42c80000000L    # 2451545.0

    add-double/2addr v0, v2

    return-wide v0
.end method

.method private static julianDayToJulianCenturies(D)D
    .locals 4
    .param p0, "julian"    # D

    .prologue
    .line 184
    const-wide v0, 0x4142b42c80000000L    # 2451545.0

    sub-double v0, p0, v0

    const-wide v2, 0x40e1d5a000000000L    # 36525.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method private static meanObliquityOfEcliptic(D)D
    .locals 14
    .param p0, "t"    # D

    .prologue
    const-wide/high16 v12, 0x404e000000000000L    # 60.0

    .line 284
    const-wide/high16 v0, 0x4037000000000000L    # 23.0

    const-wide/high16 v2, 0x403a000000000000L    # 26.0

    const-wide v4, 0x403572b020c49ba6L    # 21.448

    const-wide v6, 0x40476851eb851eb8L    # 46.815

    const-wide v8, 0x3f4355475a31a4beL    # 5.9E-4

    const-wide v10, 0x3f5db445ed4a1ad6L    # 0.001813

    mul-double/2addr v10, p0

    sub-double/2addr v8, v10

    mul-double/2addr v8, p0

    add-double/2addr v6, v8

    mul-double/2addr v6, p0

    div-double/2addr v6, v12

    sub-double/2addr v4, v6

    add-double/2addr v2, v4

    div-double/2addr v2, v12

    add-double/2addr v0, v2

    return-wide v0
.end method

.method private static morningPhenomenon(DDDD)D
    .locals 22
    .param p0, "julian"    # D
    .param p2, "latitude"    # D
    .param p4, "longitude"    # D
    .param p6, "zenithDistance"    # D

    .prologue
    .line 102
    invoke-static/range {p0 .. p1}, Lnet/sourceforge/zmanim/util/JSuntimeCalculator;->julianDayToJulianCenturies(D)D

    move-result-wide v16

    .line 103
    .local v16, "t":D
    invoke-static/range {v16 .. v17}, Lnet/sourceforge/zmanim/util/JSuntimeCalculator;->equationOfTime(D)D

    move-result-wide v8

    .line 104
    .local v8, "eqtime":D
    invoke-static/range {v16 .. v17}, Lnet/sourceforge/zmanim/util/JSuntimeCalculator;->sunDeclination(D)D

    move-result-wide v2

    .local v2, "solarDec":D
    move-wide/from16 v0, p2

    move-wide/from16 v4, p6

    .line 105
    invoke-static/range {v0 .. v5}, Lnet/sourceforge/zmanim/util/JSuntimeCalculator;->hourAngleMorning(DDD)D

    move-result-wide v10

    .line 106
    .local v10, "hourangle":D
    invoke-static {v10, v11}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    sub-double v6, p4, v0

    .line 107
    .local v6, "delta":D
    const-wide/high16 v0, 0x4010000000000000L    # 4.0

    mul-double v18, v0, v6

    .line 108
    .local v18, "timeDiff":D
    const-wide v0, 0x4086800000000000L    # 720.0

    add-double v0, v0, v18

    sub-double v20, v0, v8

    .line 111
    .local v20, "timeUTC":D
    invoke-static/range {v16 .. v17}, Lnet/sourceforge/zmanim/util/JSuntimeCalculator;->julianCenturiesToJulianDay(D)D

    move-result-wide v0

    const-wide v4, 0x4096800000000000L    # 1440.0

    div-double v4, v20, v4

    add-double/2addr v0, v4

    invoke-static {v0, v1}, Lnet/sourceforge/zmanim/util/JSuntimeCalculator;->julianDayToJulianCenturies(D)D

    move-result-wide v14

    .line 112
    .local v14, "newt":D
    invoke-static {v14, v15}, Lnet/sourceforge/zmanim/util/JSuntimeCalculator;->equationOfTime(D)D

    move-result-wide v8

    .line 113
    invoke-static {v14, v15}, Lnet/sourceforge/zmanim/util/JSuntimeCalculator;->sunDeclination(D)D

    move-result-wide v2

    move-wide/from16 v0, p2

    move-wide/from16 v4, p6

    .line 114
    invoke-static/range {v0 .. v5}, Lnet/sourceforge/zmanim/util/JSuntimeCalculator;->hourAngleMorning(DDD)D

    move-result-wide v10

    .line 115
    invoke-static {v10, v11}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    sub-double v6, p4, v0

    .line 116
    const-wide/high16 v0, 0x4010000000000000L    # 4.0

    mul-double v18, v0, v6

    .line 118
    const-wide v0, 0x4086800000000000L    # 720.0

    add-double v0, v0, v18

    sub-double v12, v0, v8

    .line 119
    .local v12, "morning":D
    return-wide v12
.end method

.method private static obliquityCorrection(D)D
    .locals 8
    .param p0, "t"    # D

    .prologue
    .line 273
    invoke-static {p0, p1}, Lnet/sourceforge/zmanim/util/JSuntimeCalculator;->meanObliquityOfEcliptic(D)D

    move-result-wide v0

    const-wide v2, 0x3f64f8b588e368f1L    # 0.00256

    const-wide v4, 0x405f428f5c28f5c3L    # 125.04

    const-wide v6, 0x409e388b43958106L    # 1934.136

    mul-double/2addr v6, p0

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    return-wide v0
.end method

.method private static sunDeclination(D)D
    .locals 10
    .param p0, "t"    # D

    .prologue
    .line 226
    invoke-static {p0, p1}, Lnet/sourceforge/zmanim/util/JSuntimeCalculator;->obliquityCorrection(D)D

    move-result-wide v0

    .line 227
    .local v0, "e":D
    invoke-static {p0, p1}, Lnet/sourceforge/zmanim/util/JSuntimeCalculator;->sunsApparentLongitude(D)D

    move-result-wide v2

    .line 229
    .local v2, "lambda":D
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double v4, v6, v8

    .line 230
    .local v4, "sint":D
    invoke-static {v4, v5}, Ljava/lang/Math;->asin(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    return-wide v6
.end method

.method private static sunsApparentLongitude(D)D
    .locals 8
    .param p0, "t"    # D

    .prologue
    .line 339
    invoke-static {p0, p1}, Lnet/sourceforge/zmanim/util/JSuntimeCalculator;->sunsTrueLongitude(D)D

    move-result-wide v0

    const-wide v2, 0x3f774e65bea0ba1fL    # 0.00569

    sub-double/2addr v0, v2

    const-wide v2, 0x3f7394317acc4ef9L    # 0.00478

    const-wide v4, 0x405f428f5c28f5c3L    # 125.04

    const-wide v6, 0x409e388b43958106L    # 1934.136

    mul-double/2addr v6, p0

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    return-wide v0
.end method

.method private static sunsTrueLongitude(D)D
    .locals 4
    .param p0, "t"    # D

    .prologue
    .line 350
    invoke-static {p0, p1}, Lnet/sourceforge/zmanim/util/JSuntimeCalculator;->geomMeanLongSun(D)D

    move-result-wide v0

    invoke-static {p0, p1}, Lnet/sourceforge/zmanim/util/JSuntimeCalculator;->equationOfCentreForSun(D)D

    move-result-wide v2

    add-double/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public getCalculatorName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lnet/sourceforge/zmanim/util/JSuntimeCalculator;->calculatorName:Ljava/lang/String;

    return-object v0
.end method

.method public getUTCSunrise(Ljava/util/Calendar;Lnet/sourceforge/zmanim/util/GeoLocation;DZ)D
    .locals 15
    .param p1, "calendar"    # Ljava/util/Calendar;
    .param p2, "geoLocation"    # Lnet/sourceforge/zmanim/util/GeoLocation;
    .param p3, "zenith"    # D
    .param p5, "adjustForElevation"    # Z

    .prologue
    .line 62
    if-eqz p5, :cond_0

    invoke-virtual/range {p2 .. p2}, Lnet/sourceforge/zmanim/util/GeoLocation;->getElevation()D

    move-result-wide v10

    .line 63
    .local v10, "elevation":D
    :goto_0
    move-wide/from16 v0, p3

    invoke-virtual {p0, v0, v1, v10, v11}, Lnet/sourceforge/zmanim/util/JSuntimeCalculator;->adjustZenith(DD)D

    move-result-wide v8

    .line 64
    .local v8, "adjustedZenith":D
    invoke-static/range {p1 .. p1}, Lnet/sourceforge/zmanim/util/JSuntimeCalculator;->dateToJulian(Ljava/util/Calendar;)D

    move-result-wide v2

    invoke-virtual/range {p2 .. p2}, Lnet/sourceforge/zmanim/util/GeoLocation;->getLatitude()D

    move-result-wide v4

    .line 65
    invoke-virtual/range {p2 .. p2}, Lnet/sourceforge/zmanim/util/GeoLocation;->getLongitude()D

    move-result-wide v6

    neg-double v6, v6

    .line 64
    invoke-static/range {v2 .. v9}, Lnet/sourceforge/zmanim/util/JSuntimeCalculator;->morningPhenomenon(DDDD)D

    move-result-wide v12

    .line 66
    .local v12, "timeMins":D
    const-wide/high16 v2, 0x404e000000000000L    # 60.0

    div-double v2, v12, v2

    return-wide v2

    .line 62
    .end local v8    # "adjustedZenith":D
    .end local v10    # "elevation":D
    .end local v12    # "timeMins":D
    :cond_0
    const-wide/16 v10, 0x0

    goto :goto_0
.end method

.method public getUTCSunset(Ljava/util/Calendar;Lnet/sourceforge/zmanim/util/GeoLocation;DZ)D
    .locals 15
    .param p1, "calendar"    # Ljava/util/Calendar;
    .param p2, "geoLocation"    # Lnet/sourceforge/zmanim/util/GeoLocation;
    .param p3, "zenith"    # D
    .param p5, "adjustForElevation"    # Z

    .prologue
    .line 80
    if-eqz p5, :cond_0

    invoke-virtual/range {p2 .. p2}, Lnet/sourceforge/zmanim/util/GeoLocation;->getElevation()D

    move-result-wide v10

    .line 81
    .local v10, "elevation":D
    :goto_0
    move-wide/from16 v0, p3

    invoke-virtual {p0, v0, v1, v10, v11}, Lnet/sourceforge/zmanim/util/JSuntimeCalculator;->adjustZenith(DD)D

    move-result-wide v8

    .line 82
    .local v8, "adjustedZenith":D
    invoke-static/range {p1 .. p1}, Lnet/sourceforge/zmanim/util/JSuntimeCalculator;->dateToJulian(Ljava/util/Calendar;)D

    move-result-wide v2

    invoke-virtual/range {p2 .. p2}, Lnet/sourceforge/zmanim/util/GeoLocation;->getLatitude()D

    move-result-wide v4

    .line 83
    invoke-virtual/range {p2 .. p2}, Lnet/sourceforge/zmanim/util/GeoLocation;->getLongitude()D

    move-result-wide v6

    neg-double v6, v6

    .line 82
    invoke-static/range {v2 .. v9}, Lnet/sourceforge/zmanim/util/JSuntimeCalculator;->eveningPhenomenon(DDDD)D

    move-result-wide v12

    .line 84
    .local v12, "timeMins":D
    const-wide/high16 v2, 0x404e000000000000L    # 60.0

    div-double v2, v12, v2

    return-wide v2

    .line 80
    .end local v8    # "adjustedZenith":D
    .end local v10    # "elevation":D
    .end local v12    # "timeMins":D
    :cond_0
    const-wide/16 v10, 0x0

    goto :goto_0
.end method
