.class public Lnet/sourceforge/zmanim/util/GeoLocationUtils;
.super Ljava/lang/Object;
.source "GeoLocationUtils.java"


# static fields
.field private static DISTANCE:I

.field private static FINAL_BEARING:I

.field private static INITIAL_BEARING:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    sput v0, Lnet/sourceforge/zmanim/util/GeoLocationUtils;->DISTANCE:I

    .line 28
    const/4 v0, 0x1

    sput v0, Lnet/sourceforge/zmanim/util/GeoLocationUtils;->INITIAL_BEARING:I

    .line 29
    const/4 v0, 0x2

    sput v0, Lnet/sourceforge/zmanim/util/GeoLocationUtils;->FINAL_BEARING:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getGeodesicDistance(Lnet/sourceforge/zmanim/util/GeoLocation;Lnet/sourceforge/zmanim/util/GeoLocation;)D
    .locals 2
    .param p0, "location"    # Lnet/sourceforge/zmanim/util/GeoLocation;
    .param p1, "destination"    # Lnet/sourceforge/zmanim/util/GeoLocation;

    .prologue
    .line 80
    sget v0, Lnet/sourceforge/zmanim/util/GeoLocationUtils;->DISTANCE:I

    invoke-static {p0, p1, v0}, Lnet/sourceforge/zmanim/util/GeoLocationUtils;->vincentyFormula(Lnet/sourceforge/zmanim/util/GeoLocation;Lnet/sourceforge/zmanim/util/GeoLocation;I)D

    move-result-wide v0

    return-wide v0
.end method

.method public static getGeodesicFinalBearing(Lnet/sourceforge/zmanim/util/GeoLocation;Lnet/sourceforge/zmanim/util/GeoLocation;)D
    .locals 2
    .param p0, "location"    # Lnet/sourceforge/zmanim/util/GeoLocation;
    .param p1, "destination"    # Lnet/sourceforge/zmanim/util/GeoLocation;

    .prologue
    .line 62
    sget v0, Lnet/sourceforge/zmanim/util/GeoLocationUtils;->FINAL_BEARING:I

    invoke-static {p0, p1, v0}, Lnet/sourceforge/zmanim/util/GeoLocationUtils;->vincentyFormula(Lnet/sourceforge/zmanim/util/GeoLocation;Lnet/sourceforge/zmanim/util/GeoLocation;I)D

    move-result-wide v0

    return-wide v0
.end method

.method public static getGeodesicInitialBearing(Lnet/sourceforge/zmanim/util/GeoLocation;Lnet/sourceforge/zmanim/util/GeoLocation;)D
    .locals 2
    .param p0, "location"    # Lnet/sourceforge/zmanim/util/GeoLocation;
    .param p1, "destination"    # Lnet/sourceforge/zmanim/util/GeoLocation;

    .prologue
    .line 45
    sget v0, Lnet/sourceforge/zmanim/util/GeoLocationUtils;->INITIAL_BEARING:I

    invoke-static {p0, p1, v0}, Lnet/sourceforge/zmanim/util/GeoLocationUtils;->vincentyFormula(Lnet/sourceforge/zmanim/util/GeoLocation;Lnet/sourceforge/zmanim/util/GeoLocation;I)D

    move-result-wide v0

    return-wide v0
.end method

.method public static getRhumbLineBearing(Lnet/sourceforge/zmanim/util/GeoLocation;Lnet/sourceforge/zmanim/util/GeoLocation;)D
    .locals 14
    .param p0, "location"    # Lnet/sourceforge/zmanim/util/GeoLocation;
    .param p1, "destination"    # Lnet/sourceforge/zmanim/util/GeoLocation;

    .prologue
    const-wide v12, 0x401921fb54442d18L    # 6.283185307179586

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    const-wide v8, 0x3fe921fb54442d18L    # 0.7853981633974483

    .line 193
    invoke-virtual {p1}, Lnet/sourceforge/zmanim/util/GeoLocation;->getLongitude()D

    move-result-wide v4

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/util/GeoLocation;->getLongitude()D

    move-result-wide v6

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    .line 194
    .local v0, "dLon":D
    invoke-virtual {p1}, Lnet/sourceforge/zmanim/util/GeoLocation;->getLatitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    div-double/2addr v4, v10

    add-double/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->tan(D)D

    move-result-wide v4

    .line 196
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/util/GeoLocation;->getLatitude()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    div-double/2addr v6, v10

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->tan(D)D

    move-result-wide v6

    .line 194
    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    .line 197
    .local v2, "dPhi":D
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    cmpl-double v4, v4, v6

    if-lez v4, :cond_0

    .line 198
    const-wide/16 v4, 0x0

    cmpl-double v4, v0, v4

    if-lez v4, :cond_1

    sub-double v4, v12, v0

    neg-double v0, v4

    .line 199
    :cond_0
    :goto_0
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    return-wide v4

    .line 198
    :cond_1
    add-double/2addr v0, v12

    goto :goto_0
.end method

.method public static getRhumbLineDistance(Lnet/sourceforge/zmanim/util/GeoLocation;Lnet/sourceforge/zmanim/util/GeoLocation;)D
    .locals 18
    .param p0, "location"    # Lnet/sourceforge/zmanim/util/GeoLocation;
    .param p1, "destination"    # Lnet/sourceforge/zmanim/util/GeoLocation;

    .prologue
    .line 212
    const-wide v0, 0x40b8e30000000000L    # 6371.0

    .line 213
    .local v0, "R":D
    invoke-virtual/range {p1 .. p1}, Lnet/sourceforge/zmanim/util/GeoLocation;->getLatitude()D

    move-result-wide v12

    invoke-virtual/range {p0 .. p0}, Lnet/sourceforge/zmanim/util/GeoLocation;->getLatitude()D

    move-result-wide v14

    sub-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    .line 214
    .local v4, "dLat":D
    invoke-virtual/range {p1 .. p1}, Lnet/sourceforge/zmanim/util/GeoLocation;->getLongitude()D

    move-result-wide v12

    .line 215
    invoke-virtual/range {p0 .. p0}, Lnet/sourceforge/zmanim/util/GeoLocation;->getLongitude()D

    move-result-wide v14

    .line 214
    sub-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    .line 216
    .local v6, "dLon":D
    invoke-virtual/range {p1 .. p1}, Lnet/sourceforge/zmanim/util/GeoLocation;->getLongitude()D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v12

    .line 217
    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    .line 216
    div-double/2addr v12, v14

    .line 217
    const-wide v14, 0x3fe921fb54442d18L    # 0.7853981633974483

    .line 216
    add-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->tan(D)D

    move-result-wide v12

    .line 218
    invoke-virtual/range {p0 .. p0}, Lnet/sourceforge/zmanim/util/GeoLocation;->getLatitude()D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v14

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    div-double v14, v14, v16

    const-wide v16, 0x3fe921fb54442d18L    # 0.7853981633974483

    add-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->tan(D)D

    move-result-wide v14

    .line 216
    div-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->log(D)D

    move-result-wide v8

    .line 219
    .local v8, "dPhi":D
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    const-wide v14, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    cmpl-double v12, v12, v14

    if-lez v12, :cond_1

    div-double v10, v4, v8

    .line 222
    .local v10, "q":D
    :goto_0
    const-wide v12, 0x400921fb54442d18L    # Math.PI

    cmpl-double v12, v6, v12

    if-lez v12, :cond_0

    .line 223
    const-wide v12, 0x401921fb54442d18L    # 6.283185307179586

    sub-double v6, v12, v6

    .line 224
    :cond_0
    mul-double v12, v4, v4

    mul-double v14, v10, v10

    mul-double/2addr v14, v6

    mul-double/2addr v14, v6

    add-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    .line 225
    .local v2, "d":D
    mul-double v12, v2, v0

    return-wide v12

    .line 220
    .end local v2    # "d":D
    .end local v10    # "q":D
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lnet/sourceforge/zmanim/util/GeoLocation;->getLatitude()D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v12

    .line 219
    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    goto :goto_0
.end method

.method private static vincentyFormula(Lnet/sourceforge/zmanim/util/GeoLocation;Lnet/sourceforge/zmanim/util/GeoLocation;I)D
    .locals 74
    .param p0, "location"    # Lnet/sourceforge/zmanim/util/GeoLocation;
    .param p1, "destination"    # Lnet/sourceforge/zmanim/util/GeoLocation;
    .param p2, "formula"    # I

    .prologue
    .line 101
    const-wide v16, 0x415854a640000000L    # 6378137.0

    .line 102
    .local v16, "a":D
    const-wide v18, 0x41583fc4141bda51L    # 6356752.3142

    .line 103
    .local v18, "b":D
    const-wide v36, 0x3f6b775a84f3e128L    # 0.0033528106647474805

    .line 104
    .local v36, "f":D
    invoke-virtual/range {p1 .. p1}, Lnet/sourceforge/zmanim/util/GeoLocation;->getLongitude()D

    move-result-wide v62

    invoke-virtual/range {p0 .. p0}, Lnet/sourceforge/zmanim/util/GeoLocation;->getLongitude()D

    move-result-wide v64

    sub-double v62, v62, v64

    invoke-static/range {v62 .. v63}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v10

    .line 106
    .local v10, "L":D
    const-wide/high16 v62, 0x3ff0000000000000L    # 1.0

    sub-double v62, v62, v36

    invoke-virtual/range {p0 .. p0}, Lnet/sourceforge/zmanim/util/GeoLocation;->getLatitude()D

    move-result-wide v64

    invoke-static/range {v64 .. v65}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v64

    invoke-static/range {v64 .. v65}, Ljava/lang/Math;->tan(D)D

    move-result-wide v64

    mul-double v62, v62, v64

    invoke-static/range {v62 .. v63}, Ljava/lang/Math;->atan(D)D

    move-result-wide v12

    .line 107
    .local v12, "U1":D
    const-wide/high16 v62, 0x3ff0000000000000L    # 1.0

    sub-double v62, v62, v36

    .line 108
    invoke-virtual/range {p1 .. p1}, Lnet/sourceforge/zmanim/util/GeoLocation;->getLatitude()D

    move-result-wide v64

    invoke-static/range {v64 .. v65}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v64

    invoke-static/range {v64 .. v65}, Ljava/lang/Math;->tan(D)D

    move-result-wide v64

    .line 107
    mul-double v62, v62, v64

    invoke-static/range {v62 .. v63}, Ljava/lang/Math;->atan(D)D

    move-result-wide v14

    .line 109
    .local v14, "U2":D
    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v56

    .local v56, "sinU1":D
    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v28

    .line 110
    .local v28, "cosU1":D
    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v58

    .local v58, "sinU2":D
    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v30

    .line 112
    .local v30, "cosU2":D
    move-wide/from16 v42, v10

    .line 113
    .local v42, "lambda":D
    const-wide v44, 0x401921fb54442d18L    # 6.283185307179586

    .line 114
    .local v44, "lambdaP":D
    const-wide/high16 v40, 0x4034000000000000L    # 20.0

    .line 115
    .local v40, "iterLimit":D
    const-wide/16 v52, 0x0

    .line 116
    .local v52, "sinLambda":D
    const-wide/16 v22, 0x0

    .line 117
    .local v22, "cosLambda":D
    const-wide/16 v54, 0x0

    .line 118
    .local v54, "sinSigma":D
    const-wide/16 v24, 0x0

    .line 119
    .local v24, "cosSigma":D
    const-wide/16 v48, 0x0

    .line 120
    .local v48, "sigma":D
    const-wide/16 v50, 0x0

    .line 121
    .local v50, "sinAlpha":D
    const-wide/16 v26, 0x0

    .line 122
    .local v26, "cosSqAlpha":D
    const-wide/16 v20, 0x0

    .line 124
    .local v20, "cos2SigmaM":D
    :goto_0
    sub-double v62, v42, v44

    invoke-static/range {v62 .. v63}, Ljava/lang/Math;->abs(D)D

    move-result-wide v62

    const-wide v64, 0x3d719799812dea11L    # 1.0E-12

    cmpl-double v62, v62, v64

    if-lez v62, :cond_0

    const-wide/high16 v62, 0x3ff0000000000000L    # 1.0

    sub-double v40, v40, v62

    const-wide/16 v62, 0x0

    cmpl-double v62, v40, v62

    if-gtz v62, :cond_2

    .line 150
    :cond_0
    const-wide/16 v62, 0x0

    cmpl-double v62, v40, v62

    if-nez v62, :cond_5

    .line 151
    const-wide/high16 v34, 0x7ff8000000000000L    # Double.NaN

    .line 180
    :cond_1
    :goto_1
    return-wide v34

    .line 125
    :cond_2
    invoke-static/range {v42 .. v43}, Ljava/lang/Math;->sin(D)D

    move-result-wide v52

    .line 126
    invoke-static/range {v42 .. v43}, Ljava/lang/Math;->cos(D)D

    move-result-wide v22

    .line 127
    mul-double v62, v30, v52

    mul-double v64, v30, v52

    mul-double v62, v62, v64

    .line 128
    mul-double v64, v28, v58

    mul-double v66, v56, v30

    mul-double v66, v66, v22

    sub-double v64, v64, v66

    .line 129
    mul-double v66, v28, v58

    mul-double v68, v56, v30

    mul-double v68, v68, v22

    sub-double v66, v66, v68

    .line 128
    mul-double v64, v64, v66

    .line 127
    add-double v62, v62, v64

    invoke-static/range {v62 .. v63}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v54

    .line 130
    const-wide/16 v62, 0x0

    cmpl-double v62, v54, v62

    if-nez v62, :cond_3

    .line 131
    const-wide/16 v34, 0x0

    goto :goto_1

    .line 132
    :cond_3
    mul-double v62, v56, v58

    mul-double v64, v28, v30

    mul-double v64, v64, v22

    add-double v24, v62, v64

    .line 133
    move-wide/from16 v0, v54

    move-wide/from16 v2, v24

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v48

    .line 134
    mul-double v62, v28, v30

    mul-double v62, v62, v52

    div-double v50, v62, v54

    .line 135
    const-wide/high16 v62, 0x3ff0000000000000L    # 1.0

    mul-double v64, v50, v50

    sub-double v26, v62, v64

    .line 136
    const-wide/high16 v62, 0x4000000000000000L    # 2.0

    mul-double v62, v62, v56

    mul-double v62, v62, v58

    div-double v62, v62, v26

    sub-double v20, v24, v62

    .line 137
    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->isNaN(D)Z

    move-result v62

    if-eqz v62, :cond_4

    .line 138
    const-wide/16 v20, 0x0

    .line 139
    :cond_4
    const-wide/high16 v62, 0x4030000000000000L    # 16.0

    div-double v62, v36, v62

    mul-double v62, v62, v26

    const-wide/high16 v64, 0x4010000000000000L    # 4.0

    const-wide/high16 v66, 0x4010000000000000L    # 4.0

    const-wide/high16 v68, 0x4008000000000000L    # 3.0

    mul-double v68, v68, v26

    sub-double v66, v66, v68

    mul-double v66, v66, v36

    add-double v64, v64, v66

    mul-double v8, v62, v64

    .line 140
    .local v8, "C":D
    move-wide/from16 v44, v42

    .line 142
    const-wide/high16 v62, 0x3ff0000000000000L    # 1.0

    sub-double v62, v62, v8

    mul-double v62, v62, v36

    mul-double v62, v62, v50

    .line 146
    mul-double v64, v8, v54

    .line 147
    mul-double v66, v8, v24

    .line 148
    const-wide/high16 v68, -0x4010000000000000L    # -1.0

    const-wide/high16 v70, 0x4000000000000000L    # 2.0

    mul-double v70, v70, v20

    mul-double v70, v70, v20

    add-double v68, v68, v70

    mul-double v66, v66, v68

    .line 147
    add-double v66, v66, v20

    mul-double v64, v64, v66

    .line 145
    add-double v64, v64, v48

    .line 142
    mul-double v62, v62, v64

    .line 141
    add-double v42, v10, v62

    goto/16 :goto_0

    .line 153
    .end local v8    # "C":D
    :cond_5
    mul-double v62, v16, v16

    mul-double v64, v18, v18

    sub-double v62, v62, v64

    mul-double v62, v62, v26

    mul-double v64, v18, v18

    div-double v60, v62, v64

    .line 154
    .local v60, "uSq":D
    const-wide/high16 v62, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v64, 0x40d0000000000000L    # 16384.0

    div-double v64, v60, v64

    .line 155
    const-wide/high16 v66, 0x40b0000000000000L    # 4096.0

    const-wide/high16 v68, -0x3f78000000000000L    # -768.0

    const-wide/high16 v70, 0x4074000000000000L    # 320.0

    const-wide v72, 0x4065e00000000000L    # 175.0

    mul-double v72, v72, v60

    sub-double v70, v70, v72

    mul-double v70, v70, v60

    add-double v68, v68, v70

    mul-double v68, v68, v60

    add-double v66, v66, v68

    mul-double v64, v64, v66

    .line 154
    add-double v4, v62, v64

    .line 156
    .local v4, "A":D
    const-wide/high16 v62, 0x4090000000000000L    # 1024.0

    div-double v62, v60, v62

    const-wide/high16 v64, 0x4070000000000000L    # 256.0

    const-wide/high16 v66, -0x3fa0000000000000L    # -128.0

    const-wide v68, 0x4052800000000000L    # 74.0

    const-wide v70, 0x4047800000000000L    # 47.0

    mul-double v70, v70, v60

    sub-double v68, v68, v70

    mul-double v68, v68, v60

    add-double v66, v66, v68

    mul-double v66, v66, v60

    add-double v64, v64, v66

    mul-double v6, v62, v64

    .line 157
    .local v6, "B":D
    mul-double v62, v6, v54

    .line 160
    const-wide/high16 v64, 0x4010000000000000L    # 4.0

    div-double v64, v6, v64

    .line 161
    const-wide/high16 v66, -0x4010000000000000L    # -1.0

    const-wide/high16 v68, 0x4000000000000000L    # 2.0

    mul-double v68, v68, v20

    mul-double v68, v68, v20

    add-double v66, v66, v68

    mul-double v66, v66, v24

    .line 162
    const-wide/high16 v68, 0x4018000000000000L    # 6.0

    div-double v68, v6, v68

    mul-double v68, v68, v20

    .line 163
    const-wide/high16 v70, -0x3ff8000000000000L    # -3.0

    const-wide/high16 v72, 0x4010000000000000L    # 4.0

    mul-double v72, v72, v54

    mul-double v72, v72, v54

    add-double v70, v70, v72

    mul-double v68, v68, v70

    .line 164
    const-wide/high16 v70, -0x3ff8000000000000L    # -3.0

    const-wide/high16 v72, 0x4010000000000000L    # 4.0

    mul-double v72, v72, v20

    mul-double v72, v72, v20

    add-double v70, v70, v72

    mul-double v68, v68, v70

    .line 161
    sub-double v66, v66, v68

    mul-double v64, v64, v66

    .line 159
    add-double v64, v64, v20

    .line 157
    mul-double v32, v62, v64

    .line 165
    .local v32, "deltaSigma":D
    mul-double v62, v18, v4

    sub-double v64, v48, v32

    mul-double v34, v62, v64

    .line 168
    .local v34, "distance":D
    mul-double v62, v30, v52

    .line 169
    mul-double v64, v28, v58

    mul-double v66, v56, v30

    mul-double v66, v66, v22

    sub-double v64, v64, v66

    .line 168
    invoke-static/range {v62 .. v65}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v62

    invoke-static/range {v62 .. v63}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v38

    .line 171
    .local v38, "fwdAz":D
    mul-double v62, v28, v52

    move-wide/from16 v0, v56

    neg-double v0, v0

    move-wide/from16 v64, v0

    .line 172
    mul-double v64, v64, v30

    mul-double v66, v28, v58

    mul-double v66, v66, v22

    add-double v64, v64, v66

    .line 171
    invoke-static/range {v62 .. v65}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v62

    invoke-static/range {v62 .. v63}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v46

    .line 173
    .local v46, "revAz":D
    sget v62, Lnet/sourceforge/zmanim/util/GeoLocationUtils;->DISTANCE:I

    move/from16 v0, p2

    move/from16 v1, v62

    if-eq v0, v1, :cond_1

    .line 175
    sget v62, Lnet/sourceforge/zmanim/util/GeoLocationUtils;->INITIAL_BEARING:I

    move/from16 v0, p2

    move/from16 v1, v62

    if-ne v0, v1, :cond_6

    move-wide/from16 v34, v38

    .line 176
    goto/16 :goto_1

    .line 177
    :cond_6
    sget v62, Lnet/sourceforge/zmanim/util/GeoLocationUtils;->FINAL_BEARING:I

    move/from16 v0, p2

    move/from16 v1, v62

    if-ne v0, v1, :cond_7

    move-wide/from16 v34, v46

    .line 178
    goto/16 :goto_1

    .line 180
    :cond_7
    const-wide/high16 v34, 0x7ff8000000000000L    # Double.NaN

    goto/16 :goto_1
.end method
