.class public Lnet/sourceforge/zmanim/util/ZmanimCalculator;
.super Lnet/sourceforge/zmanim/util/AstronomicalCalculator;
.source "ZmanimCalculator.java"


# instance fields
.field private calculatorName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lnet/sourceforge/zmanim/util/AstronomicalCalculator;-><init>()V

    .line 32
    const-string v0, "US Naval Almanac Algorithm"

    iput-object v0, p0, Lnet/sourceforge/zmanim/util/ZmanimCalculator;->calculatorName:Ljava/lang/String;

    .line 31
    return-void
.end method


# virtual methods
.method public getCalculatorName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lnet/sourceforge/zmanim/util/ZmanimCalculator;->calculatorName:Ljava/lang/String;

    return-object v0
.end method

.method public getUTCSunrise(Ljava/util/Calendar;Lnet/sourceforge/zmanim/util/GeoLocation;DZ)D
    .locals 45
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

    invoke-virtual {v0, v1, v2, v3, v4}, Lnet/sourceforge/zmanim/util/ZmanimCalculator;->adjustZenith(DD)D

    move-result-wide v14

    .line 49
    .local v14, "adjustedZenith":D
    const/16 v31, 0x6

    move-object/from16 v0, p1

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v30

    .line 52
    .local v30, "n":I
    invoke-virtual/range {p2 .. p2}, Lnet/sourceforge/zmanim/util/GeoLocation;->getLongitude()D

    move-result-wide v38

    const-wide/high16 v40, 0x402e000000000000L    # 15.0

    div-double v26, v38, v40

    .line 54
    .local v26, "lngHour":D
    move/from16 v0, v30

    int-to-double v0, v0

    move-wide/from16 v38, v0

    const-wide/high16 v40, 0x4018000000000000L    # 6.0

    sub-double v40, v40, v26

    const-wide/high16 v42, 0x4038000000000000L    # 24.0

    div-double v40, v40, v42

    add-double v36, v38, v40

    .line 57
    .local v36, "t":D
    const-wide v38, 0x3fef8a0902de00d2L    # 0.9856

    mul-double v38, v38, v36

    const-wide v40, 0x400a4fdf3b645a1dL    # 3.289

    sub-double v28, v38, v40

    .line 60
    .local v28, "m":D
    const-wide v38, 0x3ffea7ef9db22d0eL    # 1.916

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v40

    invoke-static/range {v40 .. v41}, Ljava/lang/Math;->sin(D)D

    move-result-wide v40

    mul-double v38, v38, v40

    add-double v38, v38, v28

    const-wide v40, 0x3f947ae147ae147bL    # 0.02

    const-wide/high16 v42, 0x4000000000000000L    # 2.0

    mul-double v42, v42, v28

    invoke-static/range {v42 .. v43}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v42

    invoke-static/range {v42 .. v43}, Ljava/lang/Math;->sin(D)D

    move-result-wide v42

    mul-double v40, v40, v42

    add-double v38, v38, v40

    const-wide v40, 0x4071aa24dd2f1aa0L    # 282.634

    add-double v22, v38, v40

    .line 61
    .local v22, "l":D
    :goto_1
    const-wide/16 v38, 0x0

    cmpg-double v31, v22, v38

    if-ltz v31, :cond_1

    .line 64
    :goto_2
    const-wide v38, 0x4076800000000000L    # 360.0

    cmpl-double v31, v22, v38

    if-gez v31, :cond_2

    .line 69
    const-wide v38, 0x3fed5d4e8fb00bccL    # 0.91764

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v40

    invoke-static/range {v40 .. v41}, Ljava/lang/Math;->tan(D)D

    move-result-wide v40

    mul-double v38, v38, v40

    invoke-static/range {v38 .. v39}, Ljava/lang/Math;->atan(D)D

    move-result-wide v38

    invoke-static/range {v38 .. v39}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v8

    .line 70
    .local v8, "RA":D
    :goto_3
    const-wide/16 v38, 0x0

    cmpg-double v31, v8, v38

    if-ltz v31, :cond_3

    .line 73
    :goto_4
    const-wide v38, 0x4076800000000000L    # 360.0

    cmpl-double v31, v8, v38

    if-gez v31, :cond_4

    .line 78
    const-wide v38, 0x4056800000000000L    # 90.0

    div-double v38, v22, v38

    invoke-static/range {v38 .. v39}, Ljava/lang/Math;->floor(D)D

    move-result-wide v38

    const-wide v40, 0x4056800000000000L    # 90.0

    mul-double v24, v38, v40

    .line 79
    .local v24, "lQuadrant":D
    const-wide v38, 0x4056800000000000L    # 90.0

    div-double v38, v8, v38

    invoke-static/range {v38 .. v39}, Ljava/lang/Math;->floor(D)D

    move-result-wide v38

    const-wide v40, 0x4056800000000000L    # 90.0

    mul-double v32, v38, v40

    .line 80
    .local v32, "raQuadrant":D
    sub-double v38, v24, v32

    add-double v8, v8, v38

    .line 83
    const-wide/high16 v38, 0x402e000000000000L    # 15.0

    div-double v8, v8, v38

    .line 86
    const-wide v38, 0x3fd975e2046c764bL    # 0.39782

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v40

    invoke-static/range {v40 .. v41}, Ljava/lang/Math;->sin(D)D

    move-result-wide v40

    mul-double v34, v38, v40

    .line 87
    .local v34, "sinDec":D
    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->asin(D)D

    move-result-wide v38

    invoke-static/range {v38 .. v39}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    .line 90
    .local v16, "cosDec":D
    invoke-static {v14, v15}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v38

    invoke-static/range {v38 .. v39}, Ljava/lang/Math;->cos(D)D

    move-result-wide v38

    .line 91
    invoke-virtual/range {p2 .. p2}, Lnet/sourceforge/zmanim/util/GeoLocation;->getLatitude()D

    move-result-wide v40

    .line 90
    invoke-static/range {v40 .. v41}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v40

    invoke-static/range {v40 .. v41}, Ljava/lang/Math;->sin(D)D

    move-result-wide v40

    mul-double v40, v40, v34

    sub-double v38, v38, v40

    .line 91
    invoke-virtual/range {p2 .. p2}, Lnet/sourceforge/zmanim/util/GeoLocation;->getLatitude()D

    move-result-wide v40

    invoke-static/range {v40 .. v41}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v40

    invoke-static/range {v40 .. v41}, Ljava/lang/Math;->cos(D)D

    move-result-wide v40

    mul-double v40, v40, v16

    .line 90
    div-double v18, v38, v40

    .line 94
    .local v18, "cosH":D
    const-wide v38, 0x4076800000000000L    # 360.0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->acos(D)D

    move-result-wide v40

    invoke-static/range {v40 .. v41}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v40

    sub-double v6, v38, v40

    .line 98
    .local v6, "H":D
    const-wide/high16 v38, 0x402e000000000000L    # 15.0

    div-double v6, v6, v38

    .line 102
    add-double v38, v6, v8

    const-wide v40, 0x3fb0d25edd052935L    # 0.06571

    mul-double v40, v40, v36

    sub-double v38, v38, v40

    const-wide v40, 0x401a7ced916872b0L    # 6.622

    sub-double v10, v38, v40

    .line 105
    .local v10, "T":D
    sub-double v12, v10, v26

    .line 106
    .local v12, "UT":D
    :goto_5
    const-wide/16 v38, 0x0

    cmpg-double v31, v12, v38

    if-ltz v31, :cond_5

    .line 109
    :goto_6
    const-wide/high16 v38, 0x4038000000000000L    # 24.0

    cmpl-double v31, v12, v38

    if-gez v31, :cond_6

    .line 112
    return-wide v12

    .line 45
    .end local v6    # "H":D
    .end local v8    # "RA":D
    .end local v10    # "T":D
    .end local v12    # "UT":D
    .end local v14    # "adjustedZenith":D
    .end local v16    # "cosDec":D
    .end local v18    # "cosH":D
    .end local v20    # "elevation":D
    .end local v22    # "l":D
    .end local v24    # "lQuadrant":D
    .end local v26    # "lngHour":D
    .end local v28    # "m":D
    .end local v30    # "n":I
    .end local v32    # "raQuadrant":D
    .end local v34    # "sinDec":D
    .end local v36    # "t":D
    :cond_0
    const-wide/16 v20, 0x0

    goto/16 :goto_0

    .line 62
    .restart local v14    # "adjustedZenith":D
    .restart local v20    # "elevation":D
    .restart local v22    # "l":D
    .restart local v26    # "lngHour":D
    .restart local v28    # "m":D
    .restart local v30    # "n":I
    .restart local v36    # "t":D
    :cond_1
    const-wide v38, 0x4076800000000000L    # 360.0

    add-double v22, v22, v38

    goto/16 :goto_1

    .line 65
    :cond_2
    const-wide v38, 0x4076800000000000L    # 360.0

    sub-double v22, v22, v38

    goto/16 :goto_2

    .line 71
    .restart local v8    # "RA":D
    :cond_3
    const-wide v38, 0x4076800000000000L    # 360.0

    add-double v8, v8, v38

    goto/16 :goto_3

    .line 74
    :cond_4
    const-wide v38, 0x4076800000000000L    # 360.0

    sub-double v8, v8, v38

    goto/16 :goto_4

    .line 107
    .restart local v6    # "H":D
    .restart local v10    # "T":D
    .restart local v12    # "UT":D
    .restart local v16    # "cosDec":D
    .restart local v18    # "cosH":D
    .restart local v24    # "lQuadrant":D
    .restart local v32    # "raQuadrant":D
    .restart local v34    # "sinDec":D
    :cond_5
    const-wide/high16 v38, 0x4038000000000000L    # 24.0

    add-double v12, v12, v38

    goto :goto_5

    .line 110
    :cond_6
    const-wide/high16 v38, 0x4038000000000000L    # 24.0

    sub-double v12, v12, v38

    goto :goto_6
.end method

.method public getUTCSunset(Ljava/util/Calendar;Lnet/sourceforge/zmanim/util/GeoLocation;DZ)D
    .locals 45
    .param p1, "calendar"    # Ljava/util/Calendar;
    .param p2, "geoLocation"    # Lnet/sourceforge/zmanim/util/GeoLocation;
    .param p3, "zenith"    # D
    .param p5, "adjustForElevation"    # Z

    .prologue
    .line 119
    if-eqz p5, :cond_0

    invoke-virtual/range {p2 .. p2}, Lnet/sourceforge/zmanim/util/GeoLocation;->getElevation()D

    move-result-wide v24

    .line 120
    .local v24, "elevation":D
    :goto_0
    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    move-wide/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Lnet/sourceforge/zmanim/util/ZmanimCalculator;->adjustZenith(DD)D

    move-result-wide v18

    .line 123
    .local v18, "adjustedZenith":D
    const/16 v33, 0x6

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v32

    .line 126
    .local v32, "n":I
    invoke-virtual/range {p2 .. p2}, Lnet/sourceforge/zmanim/util/GeoLocation;->getLongitude()D

    move-result-wide v38

    const-wide/high16 v40, 0x402e000000000000L    # 15.0

    div-double v28, v38, v40

    .line 128
    .local v28, "lngHour":D
    move/from16 v0, v32

    int-to-double v0, v0

    move-wide/from16 v38, v0

    const-wide/high16 v40, 0x4032000000000000L    # 18.0

    sub-double v40, v40, v28

    const-wide/high16 v42, 0x4038000000000000L    # 24.0

    div-double v40, v40, v42

    add-double v36, v38, v40

    .line 131
    .local v36, "t":D
    const-wide v38, 0x3fef8a0902de00d2L    # 0.9856

    mul-double v38, v38, v36

    const-wide v40, 0x400a4fdf3b645a1dL    # 3.289

    sub-double v30, v38, v40

    .line 134
    .local v30, "m":D
    const-wide v38, 0x3ffea7ef9db22d0eL    # 1.916

    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v40

    invoke-static/range {v40 .. v41}, Ljava/lang/Math;->sin(D)D

    move-result-wide v40

    mul-double v38, v38, v40

    add-double v38, v38, v30

    const-wide v40, 0x3f947ae147ae147bL    # 0.02

    const-wide/high16 v42, 0x4000000000000000L    # 2.0

    mul-double v42, v42, v30

    invoke-static/range {v42 .. v43}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v42

    invoke-static/range {v42 .. v43}, Ljava/lang/Math;->sin(D)D

    move-result-wide v42

    mul-double v40, v40, v42

    add-double v38, v38, v40

    const-wide v40, 0x4071aa24dd2f1aa0L    # 282.634

    add-double v26, v38, v40

    .line 135
    .local v26, "l":D
    :goto_1
    const-wide/16 v38, 0x0

    cmpg-double v33, v26, v38

    if-ltz v33, :cond_1

    .line 138
    :goto_2
    const-wide v38, 0x4076800000000000L    # 360.0

    cmpl-double v33, v26, v38

    if-gez v33, :cond_2

    .line 143
    const-wide v38, 0x3fed5d4e8fb00bccL    # 0.91764

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v40

    invoke-static/range {v40 .. v41}, Ljava/lang/Math;->tan(D)D

    move-result-wide v40

    mul-double v38, v38, v40

    invoke-static/range {v38 .. v39}, Ljava/lang/Math;->atan(D)D

    move-result-wide v38

    invoke-static/range {v38 .. v39}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v10

    .line 144
    .local v10, "RA":D
    :goto_3
    const-wide/16 v38, 0x0

    cmpg-double v33, v10, v38

    if-ltz v33, :cond_3

    .line 147
    :goto_4
    const-wide v38, 0x4076800000000000L    # 360.0

    cmpl-double v33, v10, v38

    if-gez v33, :cond_4

    .line 152
    const-wide v38, 0x4056800000000000L    # 90.0

    div-double v38, v26, v38

    invoke-static/range {v38 .. v39}, Ljava/lang/Math;->floor(D)D

    move-result-wide v38

    const-wide v40, 0x4056800000000000L    # 90.0

    mul-double v8, v38, v40

    .line 153
    .local v8, "Lquadrant":D
    const-wide v38, 0x4056800000000000L    # 90.0

    div-double v38, v10, v38

    invoke-static/range {v38 .. v39}, Ljava/lang/Math;->floor(D)D

    move-result-wide v38

    const-wide v40, 0x4056800000000000L    # 90.0

    mul-double v12, v38, v40

    .line 154
    .local v12, "RAquadrant":D
    sub-double v38, v8, v12

    add-double v10, v10, v38

    .line 157
    const-wide/high16 v38, 0x402e000000000000L    # 15.0

    div-double v10, v10, v38

    .line 160
    const-wide v38, 0x3fd975e2046c764bL    # 0.39782

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v40

    invoke-static/range {v40 .. v41}, Ljava/lang/Math;->sin(D)D

    move-result-wide v40

    mul-double v34, v38, v40

    .line 161
    .local v34, "sinDec":D
    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->asin(D)D

    move-result-wide v38

    invoke-static/range {v38 .. v39}, Ljava/lang/Math;->cos(D)D

    move-result-wide v20

    .line 164
    .local v20, "cosDec":D
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v38

    invoke-static/range {v38 .. v39}, Ljava/lang/Math;->cos(D)D

    move-result-wide v38

    .line 165
    invoke-virtual/range {p2 .. p2}, Lnet/sourceforge/zmanim/util/GeoLocation;->getLatitude()D

    move-result-wide v40

    .line 164
    invoke-static/range {v40 .. v41}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v40

    invoke-static/range {v40 .. v41}, Ljava/lang/Math;->sin(D)D

    move-result-wide v40

    mul-double v40, v40, v34

    sub-double v38, v38, v40

    .line 165
    invoke-virtual/range {p2 .. p2}, Lnet/sourceforge/zmanim/util/GeoLocation;->getLatitude()D

    move-result-wide v40

    invoke-static/range {v40 .. v41}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v40

    invoke-static/range {v40 .. v41}, Ljava/lang/Math;->cos(D)D

    move-result-wide v40

    mul-double v40, v40, v20

    .line 164
    div-double v22, v38, v40

    .line 168
    .local v22, "cosH":D
    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->acos(D)D

    move-result-wide v38

    invoke-static/range {v38 .. v39}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    .line 169
    .local v6, "H":D
    const-wide/high16 v38, 0x402e000000000000L    # 15.0

    div-double v6, v6, v38

    .line 173
    add-double v38, v6, v10

    const-wide v40, 0x3fb0d25edd052935L    # 0.06571

    mul-double v40, v40, v36

    sub-double v38, v38, v40

    const-wide v40, 0x401a7ced916872b0L    # 6.622

    sub-double v14, v38, v40

    .line 176
    .local v14, "T":D
    sub-double v16, v14, v28

    .line 177
    .local v16, "UT":D
    :goto_5
    const-wide/16 v38, 0x0

    cmpg-double v33, v16, v38

    if-ltz v33, :cond_5

    .line 180
    :goto_6
    const-wide/high16 v38, 0x4038000000000000L    # 24.0

    cmpl-double v33, v16, v38

    if-gez v33, :cond_6

    .line 183
    return-wide v16

    .line 119
    .end local v6    # "H":D
    .end local v8    # "Lquadrant":D
    .end local v10    # "RA":D
    .end local v12    # "RAquadrant":D
    .end local v14    # "T":D
    .end local v16    # "UT":D
    .end local v18    # "adjustedZenith":D
    .end local v20    # "cosDec":D
    .end local v22    # "cosH":D
    .end local v24    # "elevation":D
    .end local v26    # "l":D
    .end local v28    # "lngHour":D
    .end local v30    # "m":D
    .end local v32    # "n":I
    .end local v34    # "sinDec":D
    .end local v36    # "t":D
    :cond_0
    const-wide/16 v24, 0x0

    goto/16 :goto_0

    .line 136
    .restart local v18    # "adjustedZenith":D
    .restart local v24    # "elevation":D
    .restart local v26    # "l":D
    .restart local v28    # "lngHour":D
    .restart local v30    # "m":D
    .restart local v32    # "n":I
    .restart local v36    # "t":D
    :cond_1
    const-wide v38, 0x4076800000000000L    # 360.0

    add-double v26, v26, v38

    goto/16 :goto_1

    .line 139
    :cond_2
    const-wide v38, 0x4076800000000000L    # 360.0

    sub-double v26, v26, v38

    goto/16 :goto_2

    .line 145
    .restart local v10    # "RA":D
    :cond_3
    const-wide v38, 0x4076800000000000L    # 360.0

    add-double v10, v10, v38

    goto/16 :goto_3

    .line 148
    :cond_4
    const-wide v38, 0x4076800000000000L    # 360.0

    sub-double v10, v10, v38

    goto/16 :goto_4

    .line 178
    .restart local v6    # "H":D
    .restart local v8    # "Lquadrant":D
    .restart local v12    # "RAquadrant":D
    .restart local v14    # "T":D
    .restart local v16    # "UT":D
    .restart local v20    # "cosDec":D
    .restart local v22    # "cosH":D
    .restart local v34    # "sinDec":D
    :cond_5
    const-wide/high16 v38, 0x4038000000000000L    # 24.0

    add-double v16, v16, v38

    goto :goto_5

    .line 181
    :cond_6
    const-wide/high16 v38, 0x4038000000000000L    # 24.0

    sub-double v16, v16, v38

    goto :goto_6
.end method
