.class public Lnet/sourceforge/zmanim/util/GeoLocation;
.super Ljava/lang/Object;
.source "GeoLocation.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final DISTANCE:I = 0x0

.field private static final FINAL_BEARING:I = 0x2

.field private static final HOUR_MILLIS:J = 0x36ee80L

.field private static final INITIAL_BEARING:I = 0x1

.field private static final MINUTE_MILLIS:J = 0xea60L


# instance fields
.field private elevation:D

.field private latitude:D

.field private locationName:Ljava/lang/String;

.field private longitude:D

.field private timeZone:Ljava/util/TimeZone;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    const-string v0, "Greenwich, England"

    invoke-virtual {p0, v0}, Lnet/sourceforge/zmanim/util/GeoLocation;->setLocationName(Ljava/lang/String;)V

    .line 120
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/zmanim/util/GeoLocation;->setLongitude(D)V

    .line 121
    const-wide v0, 0x4049bd14e3bcd35bL    # 51.4772

    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/zmanim/util/GeoLocation;->setLatitude(D)V

    .line 122
    const-string v0, "GMT"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sourceforge/zmanim/util/GeoLocation;->setTimeZone(Ljava/util/TimeZone;)V

    .line 123
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;DDDLjava/util/TimeZone;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "latitude"    # D
    .param p4, "longitude"    # D
    .param p6, "elevation"    # D
    .param p8, "timeZone"    # Ljava/util/TimeZone;

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    invoke-virtual {p0, p1}, Lnet/sourceforge/zmanim/util/GeoLocation;->setLocationName(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p0, p2, p3}, Lnet/sourceforge/zmanim/util/GeoLocation;->setLatitude(D)V

    .line 108
    invoke-virtual {p0, p4, p5}, Lnet/sourceforge/zmanim/util/GeoLocation;->setLongitude(D)V

    .line 109
    invoke-virtual {p0, p6, p7}, Lnet/sourceforge/zmanim/util/GeoLocation;->setElevation(D)V

    .line 110
    invoke-virtual {p0, p8}, Lnet/sourceforge/zmanim/util/GeoLocation;->setTimeZone(Ljava/util/TimeZone;)V

    .line 111
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;DDLjava/util/TimeZone;)V
    .locals 10
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "latitude"    # D
    .param p4, "longitude"    # D
    .param p6, "timeZone"    # Ljava/util/TimeZone;

    .prologue
    .line 84
    const-wide/16 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lnet/sourceforge/zmanim/util/GeoLocation;-><init>(Ljava/lang/String;DDDLjava/util/TimeZone;)V

    .line 85
    return-void
.end method

.method private vincentyFormula(Lnet/sourceforge/zmanim/util/GeoLocation;I)D
    .locals 74
    .param p1, "location"    # Lnet/sourceforge/zmanim/util/GeoLocation;
    .param p2, "formula"    # I

    .prologue
    .line 342
    const-wide v16, 0x415854a640000000L    # 6378137.0

    .line 343
    .local v16, "a":D
    const-wide v18, 0x41583fc4141bda51L    # 6356752.3142

    .line 344
    .local v18, "b":D
    const-wide v36, 0x3f6b775a84f3e128L    # 0.0033528106647474805

    .line 345
    .local v36, "f":D
    invoke-virtual/range {p1 .. p1}, Lnet/sourceforge/zmanim/util/GeoLocation;->getLongitude()D

    move-result-wide v62

    invoke-virtual/range {p0 .. p0}, Lnet/sourceforge/zmanim/util/GeoLocation;->getLongitude()D

    move-result-wide v64

    sub-double v62, v62, v64

    invoke-static/range {v62 .. v63}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v10

    .line 346
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

    .line 347
    .local v12, "U1":D
    const-wide/high16 v62, 0x3ff0000000000000L    # 1.0

    sub-double v62, v62, v36

    invoke-virtual/range {p1 .. p1}, Lnet/sourceforge/zmanim/util/GeoLocation;->getLatitude()D

    move-result-wide v64

    invoke-static/range {v64 .. v65}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v64

    invoke-static/range {v64 .. v65}, Ljava/lang/Math;->tan(D)D

    move-result-wide v64

    mul-double v62, v62, v64

    invoke-static/range {v62 .. v63}, Ljava/lang/Math;->atan(D)D

    move-result-wide v14

    .line 348
    .local v14, "U2":D
    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v56

    .local v56, "sinU1":D
    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v28

    .line 349
    .local v28, "cosU1":D
    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v58

    .local v58, "sinU2":D
    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v30

    .line 351
    .local v30, "cosU2":D
    move-wide/from16 v42, v10

    .line 352
    .local v42, "lambda":D
    const-wide v44, 0x401921fb54442d18L    # 6.283185307179586

    .line 353
    .local v44, "lambdaP":D
    const-wide/high16 v40, 0x4034000000000000L    # 20.0

    .line 354
    .local v40, "iterLimit":D
    const-wide/16 v52, 0x0

    .line 355
    .local v52, "sinLambda":D
    const-wide/16 v22, 0x0

    .line 356
    .local v22, "cosLambda":D
    const-wide/16 v54, 0x0

    .line 357
    .local v54, "sinSigma":D
    const-wide/16 v24, 0x0

    .line 358
    .local v24, "cosSigma":D
    const-wide/16 v48, 0x0

    .line 359
    .local v48, "sigma":D
    const-wide/16 v50, 0x0

    .line 360
    .local v50, "sinAlpha":D
    const-wide/16 v26, 0x0

    .line 361
    .local v26, "cosSqAlpha":D
    const-wide/16 v20, 0x0

    .line 363
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

    .line 382
    :cond_0
    const-wide/16 v62, 0x0

    cmpl-double v62, v40, v62

    if-nez v62, :cond_5

    .line 383
    const-wide/high16 v34, 0x7ff8000000000000L    # Double.NaN

    .line 407
    :cond_1
    :goto_1
    return-wide v34

    .line 364
    :cond_2
    invoke-static/range {v42 .. v43}, Ljava/lang/Math;->sin(D)D

    move-result-wide v52

    .line 365
    invoke-static/range {v42 .. v43}, Ljava/lang/Math;->cos(D)D

    move-result-wide v22

    .line 366
    mul-double v62, v30, v52

    mul-double v64, v30, v52

    mul-double v62, v62, v64

    .line 367
    mul-double v64, v28, v58

    mul-double v66, v56, v30

    mul-double v66, v66, v22

    sub-double v64, v64, v66

    mul-double v66, v28, v58

    mul-double v68, v56, v30

    mul-double v68, v68, v22

    sub-double v66, v66, v68

    mul-double v64, v64, v66

    .line 366
    add-double v62, v62, v64

    invoke-static/range {v62 .. v63}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v54

    .line 368
    const-wide/16 v62, 0x0

    cmpl-double v62, v54, v62

    if-nez v62, :cond_3

    .line 369
    const-wide/16 v34, 0x0

    goto :goto_1

    .line 370
    :cond_3
    mul-double v62, v56, v58

    mul-double v64, v28, v30

    mul-double v64, v64, v22

    add-double v24, v62, v64

    .line 371
    move-wide/from16 v0, v54

    move-wide/from16 v2, v24

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v48

    .line 372
    mul-double v62, v28, v30

    mul-double v62, v62, v52

    div-double v50, v62, v54

    .line 373
    const-wide/high16 v62, 0x3ff0000000000000L    # 1.0

    mul-double v64, v50, v50

    sub-double v26, v62, v64

    .line 374
    const-wide/high16 v62, 0x4000000000000000L    # 2.0

    mul-double v62, v62, v56

    mul-double v62, v62, v58

    div-double v62, v62, v26

    sub-double v20, v24, v62

    .line 375
    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->isNaN(D)Z

    move-result v62

    if-eqz v62, :cond_4

    .line 376
    const-wide/16 v20, 0x0

    .line 377
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

    .line 378
    .local v8, "C":D
    move-wide/from16 v44, v42

    .line 379
    const-wide/high16 v62, 0x3ff0000000000000L    # 1.0

    sub-double v62, v62, v8

    mul-double v62, v62, v36

    mul-double v62, v62, v50

    .line 380
    mul-double v64, v8, v54

    mul-double v66, v8, v24

    const-wide/high16 v68, -0x4010000000000000L    # -1.0

    const-wide/high16 v70, 0x4000000000000000L    # 2.0

    mul-double v70, v70, v20

    mul-double v70, v70, v20

    add-double v68, v68, v70

    mul-double v66, v66, v68

    add-double v66, v66, v20

    mul-double v64, v64, v66

    add-double v64, v64, v48

    mul-double v62, v62, v64

    .line 379
    add-double v42, v10, v62

    goto/16 :goto_0

    .line 385
    .end local v8    # "C":D
    :cond_5
    mul-double v62, v16, v16

    mul-double v64, v18, v18

    sub-double v62, v62, v64

    mul-double v62, v62, v26

    mul-double v64, v18, v18

    div-double v60, v62, v64

    .line 386
    .local v60, "uSq":D
    const-wide/high16 v62, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v64, 0x40d0000000000000L    # 16384.0

    div-double v64, v60, v64

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

    add-double v4, v62, v64

    .line 387
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

    .line 388
    .local v6, "B":D
    mul-double v62, v6, v54

    .line 391
    const-wide/high16 v64, 0x4010000000000000L    # 4.0

    div-double v64, v6, v64

    .line 392
    const-wide/high16 v66, -0x4010000000000000L    # -1.0

    const-wide/high16 v68, 0x4000000000000000L    # 2.0

    mul-double v68, v68, v20

    mul-double v68, v68, v20

    add-double v66, v66, v68

    mul-double v66, v66, v24

    const-wide/high16 v68, 0x4018000000000000L    # 6.0

    div-double v68, v6, v68

    mul-double v68, v68, v20

    .line 393
    const-wide/high16 v70, -0x3ff8000000000000L    # -3.0

    const-wide/high16 v72, 0x4010000000000000L    # 4.0

    mul-double v72, v72, v54

    mul-double v72, v72, v54

    add-double v70, v70, v72

    mul-double v68, v68, v70

    const-wide/high16 v70, -0x3ff8000000000000L    # -3.0

    const-wide/high16 v72, 0x4010000000000000L    # 4.0

    mul-double v72, v72, v20

    mul-double v72, v72, v20

    add-double v70, v70, v72

    mul-double v68, v68, v70

    .line 392
    sub-double v66, v66, v68

    mul-double v64, v64, v66

    .line 390
    add-double v64, v64, v20

    .line 388
    mul-double v32, v62, v64

    .line 394
    .local v32, "deltaSigma":D
    mul-double v62, v18, v4

    sub-double v64, v48, v32

    mul-double v34, v62, v64

    .line 397
    .local v34, "distance":D
    mul-double v62, v30, v52

    mul-double v64, v28, v58

    mul-double v66, v56, v30

    mul-double v66, v66, v22

    sub-double v64, v64, v66

    invoke-static/range {v62 .. v65}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v62

    invoke-static/range {v62 .. v63}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v38

    .line 399
    .local v38, "fwdAz":D
    mul-double v62, v28, v52

    move-wide/from16 v0, v56

    neg-double v0, v0

    move-wide/from16 v64, v0

    mul-double v64, v64, v30

    mul-double v66, v28, v58

    mul-double v66, v66, v22

    add-double v64, v64, v66

    invoke-static/range {v62 .. v65}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v62

    invoke-static/range {v62 .. v63}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v46

    .line 400
    .local v46, "revAz":D
    if-eqz p2, :cond_1

    .line 402
    const/16 v62, 0x1

    move/from16 v0, p2

    move/from16 v1, v62

    if-ne v0, v1, :cond_6

    move-wide/from16 v34, v38

    .line 403
    goto/16 :goto_1

    .line 404
    :cond_6
    const/16 v62, 0x2

    move/from16 v0, p2

    move/from16 v1, v62

    if-ne v0, v1, :cond_7

    move-wide/from16 v34, v46

    .line 405
    goto/16 :goto_1

    .line 407
    :cond_7
    const-wide/high16 v34, 0x7ff8000000000000L    # Double.NaN

    goto/16 :goto_1
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 554
    const/4 v1, 0x0

    .line 556
    .local v1, "clone":Lnet/sourceforge/zmanim/util/GeoLocation;
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lnet/sourceforge/zmanim/util/GeoLocation;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 560
    :goto_0
    if-nez v1, :cond_0

    .line 561
    const/4 v1, 0x0

    .line 564
    .end local v1    # "clone":Lnet/sourceforge/zmanim/util/GeoLocation;
    :goto_1
    return-object v1

    .line 562
    .restart local v1    # "clone":Lnet/sourceforge/zmanim/util/GeoLocation;
    :cond_0
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/util/GeoLocation;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TimeZone;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/TimeZone;

    iput-object v2, v1, Lnet/sourceforge/zmanim/util/GeoLocation;->timeZone:Ljava/util/TimeZone;

    .line 563
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/util/GeoLocation;->getLocationName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lnet/sourceforge/zmanim/util/GeoLocation;->locationName:Ljava/lang/String;

    goto :goto_1

    .line 557
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 491
    if-ne p0, p1, :cond_1

    .line 496
    :cond_0
    :goto_0
    return v1

    .line 493
    :cond_1
    instance-of v3, p1, Lnet/sourceforge/zmanim/util/GeoLocation;

    if-nez v3, :cond_2

    move v1, v2

    .line 494
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 495
    check-cast v0, Lnet/sourceforge/zmanim/util/GeoLocation;

    .line 496
    .local v0, "geo":Lnet/sourceforge/zmanim/util/GeoLocation;
    iget-wide v4, p0, Lnet/sourceforge/zmanim/util/GeoLocation;->latitude:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    iget-wide v6, v0, Lnet/sourceforge/zmanim/util/GeoLocation;->latitude:D

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-nez v3, :cond_3

    .line 497
    iget-wide v4, p0, Lnet/sourceforge/zmanim/util/GeoLocation;->longitude:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    iget-wide v6, v0, Lnet/sourceforge/zmanim/util/GeoLocation;->longitude:D

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-nez v3, :cond_3

    .line 498
    iget-wide v4, p0, Lnet/sourceforge/zmanim/util/GeoLocation;->elevation:D

    iget-wide v6, v0, Lnet/sourceforge/zmanim/util/GeoLocation;->elevation:D

    cmpl-double v3, v4, v6

    if-nez v3, :cond_3

    .line 499
    iget-object v3, p0, Lnet/sourceforge/zmanim/util/GeoLocation;->locationName:Ljava/lang/String;

    if-nez v3, :cond_4

    iget-object v3, v0, Lnet/sourceforge/zmanim/util/GeoLocation;->locationName:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 500
    :goto_1
    iget-object v3, p0, Lnet/sourceforge/zmanim/util/GeoLocation;->timeZone:Ljava/util/TimeZone;

    if-nez v3, :cond_5

    iget-object v3, v0, Lnet/sourceforge/zmanim/util/GeoLocation;->timeZone:Ljava/util/TimeZone;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    .line 496
    goto :goto_0

    .line 499
    :cond_4
    iget-object v3, p0, Lnet/sourceforge/zmanim/util/GeoLocation;->locationName:Ljava/lang/String;

    iget-object v4, v0, Lnet/sourceforge/zmanim/util/GeoLocation;->locationName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    .line 500
    :cond_5
    iget-object v3, p0, Lnet/sourceforge/zmanim/util/GeoLocation;->timeZone:Ljava/util/TimeZone;

    iget-object v4, v0, Lnet/sourceforge/zmanim/util/GeoLocation;->timeZone:Ljava/util/TimeZone;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0
.end method

.method public getElevation()D
    .locals 2

    .prologue
    .line 51
    iget-wide v0, p0, Lnet/sourceforge/zmanim/util/GeoLocation;->elevation:D

    return-wide v0
.end method

.method public getGeodesicDistance(Lnet/sourceforge/zmanim/util/GeoLocation;)D
    .locals 2
    .param p1, "location"    # Lnet/sourceforge/zmanim/util/GeoLocation;

    .prologue
    .line 325
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnet/sourceforge/zmanim/util/GeoLocation;->vincentyFormula(Lnet/sourceforge/zmanim/util/GeoLocation;I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getGeodesicFinalBearing(Lnet/sourceforge/zmanim/util/GeoLocation;)D
    .locals 2
    .param p1, "location"    # Lnet/sourceforge/zmanim/util/GeoLocation;

    .prologue
    .line 311
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lnet/sourceforge/zmanim/util/GeoLocation;->vincentyFormula(Lnet/sourceforge/zmanim/util/GeoLocation;I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getGeodesicInitialBearing(Lnet/sourceforge/zmanim/util/GeoLocation;)D
    .locals 2
    .param p1, "location"    # Lnet/sourceforge/zmanim/util/GeoLocation;

    .prologue
    .line 297
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lnet/sourceforge/zmanim/util/GeoLocation;->vincentyFormula(Lnet/sourceforge/zmanim/util/GeoLocation;I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getLatitude()D
    .locals 2

    .prologue
    .line 172
    iget-wide v0, p0, Lnet/sourceforge/zmanim/util/GeoLocation;->latitude:D

    return-wide v0
.end method

.method public getLocalMeanTimeOffset()J
    .locals 4

    .prologue
    .line 283
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/util/GeoLocation;->getLongitude()D

    move-result-wide v0

    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    mul-double/2addr v0, v2

    const-wide v2, 0x40ed4c0000000000L    # 60000.0

    mul-double/2addr v0, v2

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/util/GeoLocation;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v2

    int-to-double v2, v2

    sub-double/2addr v0, v2

    double-to-long v0, v0

    return-wide v0
.end method

.method public getLocationName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lnet/sourceforge/zmanim/util/GeoLocation;->locationName:Ljava/lang/String;

    return-object v0
.end method

.method public getLongitude()D
    .locals 2

    .prologue
    .line 225
    iget-wide v0, p0, Lnet/sourceforge/zmanim/util/GeoLocation;->longitude:D

    return-wide v0
.end method

.method public getRhumbLineBearing(Lnet/sourceforge/zmanim/util/GeoLocation;)D
    .locals 14
    .param p1, "location"    # Lnet/sourceforge/zmanim/util/GeoLocation;

    .prologue
    const-wide v12, 0x401921fb54442d18L    # 6.283185307179586

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    const-wide v8, 0x3fe921fb54442d18L    # 0.7853981633974483

    .line 420
    invoke-virtual {p1}, Lnet/sourceforge/zmanim/util/GeoLocation;->getLongitude()D

    move-result-wide v4

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/util/GeoLocation;->getLongitude()D

    move-result-wide v6

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    .line 421
    .local v0, "dLon":D
    invoke-virtual {p1}, Lnet/sourceforge/zmanim/util/GeoLocation;->getLatitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    div-double/2addr v4, v10

    add-double/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->tan(D)D

    move-result-wide v4

    .line 422
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/util/GeoLocation;->getLatitude()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    div-double/2addr v6, v10

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->tan(D)D

    move-result-wide v6

    .line 421
    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    .line 423
    .local v2, "dPhi":D
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    cmpl-double v4, v4, v6

    if-lez v4, :cond_0

    .line 424
    const-wide/16 v4, 0x0

    cmpl-double v4, v0, v4

    if-lez v4, :cond_1

    sub-double v4, v12, v0

    neg-double v0, v4

    .line 425
    :cond_0
    :goto_0
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    return-wide v4

    .line 424
    :cond_1
    add-double/2addr v0, v12

    goto :goto_0
.end method

.method public getRhumbLineDistance(Lnet/sourceforge/zmanim/util/GeoLocation;)D
    .locals 18
    .param p1, "location"    # Lnet/sourceforge/zmanim/util/GeoLocation;

    .prologue
    .line 437
    const-wide v0, 0x40b8e30000000000L    # 6371.0

    .line 438
    .local v0, "R":D
    invoke-virtual/range {p1 .. p1}, Lnet/sourceforge/zmanim/util/GeoLocation;->getLatitude()D

    move-result-wide v12

    invoke-virtual/range {p0 .. p0}, Lnet/sourceforge/zmanim/util/GeoLocation;->getLatitude()D

    move-result-wide v14

    sub-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    .line 439
    .local v4, "dLat":D
    invoke-virtual/range {p1 .. p1}, Lnet/sourceforge/zmanim/util/GeoLocation;->getLongitude()D

    move-result-wide v12

    invoke-virtual/range {p0 .. p0}, Lnet/sourceforge/zmanim/util/GeoLocation;->getLongitude()D

    move-result-wide v14

    sub-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    .line 440
    .local v6, "dLon":D
    invoke-virtual/range {p1 .. p1}, Lnet/sourceforge/zmanim/util/GeoLocation;->getLongitude()D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v12

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    div-double/2addr v12, v14

    const-wide v14, 0x3fe921fb54442d18L    # 0.7853981633974483

    add-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->tan(D)D

    move-result-wide v12

    .line 441
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

    .line 440
    div-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->log(D)D

    move-result-wide v8

    .line 442
    .local v8, "dPhi":D
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    const-wide v14, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    cmpl-double v12, v12, v14

    if-lez v12, :cond_1

    div-double v10, v4, v8

    .line 444
    .local v10, "q":D
    :goto_0
    const-wide v12, 0x400921fb54442d18L    # Math.PI

    cmpl-double v12, v6, v12

    if-lez v12, :cond_0

    .line 445
    const-wide v12, 0x401921fb54442d18L    # 6.283185307179586

    sub-double v6, v12, v6

    .line 446
    :cond_0
    mul-double v12, v4, v4

    mul-double v14, v10, v10

    mul-double/2addr v14, v6

    mul-double/2addr v14, v6

    add-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    .line 447
    .local v2, "d":D
    mul-double v12, v2, v0

    return-wide v12

    .line 442
    .end local v2    # "d":D
    .end local v10    # "q":D
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lnet/sourceforge/zmanim/util/GeoLocation;->getLatitude()D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    goto :goto_0
.end method

.method public getTimeZone()Ljava/util/TimeZone;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lnet/sourceforge/zmanim/util/GeoLocation;->timeZone:Ljava/util/TimeZone;

    return-object v0
.end method

.method public hashCode()I
    .locals 14

    .prologue
    const/4 v11, 0x0

    const/16 v10, 0x20

    .line 508
    const/16 v7, 0x11

    .line 509
    .local v7, "result":I
    iget-wide v12, p0, Lnet/sourceforge/zmanim/util/GeoLocation;->latitude:D

    invoke-static {v12, v13}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    .line 510
    .local v4, "latLong":J
    iget-wide v12, p0, Lnet/sourceforge/zmanim/util/GeoLocation;->longitude:D

    invoke-static {v12, v13}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v8

    .line 511
    .local v8, "lonLong":J
    iget-wide v12, p0, Lnet/sourceforge/zmanim/util/GeoLocation;->elevation:D

    invoke-static {v12, v13}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 512
    .local v2, "elevLong":J
    ushr-long v12, v4, v10

    xor-long/2addr v12, v4

    long-to-int v1, v12

    .line 513
    .local v1, "latInt":I
    ushr-long v12, v8, v10

    xor-long/2addr v12, v8

    long-to-int v6, v12

    .line 514
    .local v6, "lonInt":I
    ushr-long v12, v2, v10

    xor-long/2addr v12, v2

    long-to-int v0, v12

    .line 515
    .local v0, "elevInt":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->hashCode()I

    move-result v10

    add-int/lit16 v7, v10, 0x275

    .line 516
    mul-int/lit8 v10, v7, 0x25

    add-int/2addr v10, v1

    add-int/2addr v7, v10

    .line 517
    mul-int/lit8 v10, v7, 0x25

    add-int/2addr v10, v6

    add-int/2addr v7, v10

    .line 518
    mul-int/lit8 v10, v7, 0x25

    add-int/2addr v10, v0

    add-int/2addr v7, v10

    .line 519
    mul-int/lit8 v12, v7, 0x25

    iget-object v10, p0, Lnet/sourceforge/zmanim/util/GeoLocation;->locationName:Ljava/lang/String;

    if-nez v10, :cond_0

    move v10, v11

    :goto_0
    add-int/2addr v10, v12

    add-int/2addr v7, v10

    .line 520
    mul-int/lit8 v10, v7, 0x25

    iget-object v12, p0, Lnet/sourceforge/zmanim/util/GeoLocation;->timeZone:Ljava/util/TimeZone;

    if-nez v12, :cond_1

    :goto_1
    add-int/2addr v10, v11

    add-int/2addr v7, v10

    .line 521
    return v7

    .line 519
    :cond_0
    iget-object v10, p0, Lnet/sourceforge/zmanim/util/GeoLocation;->locationName:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v10

    goto :goto_0

    .line 520
    :cond_1
    iget-object v11, p0, Lnet/sourceforge/zmanim/util/GeoLocation;->timeZone:Ljava/util/TimeZone;

    invoke-virtual {v11}, Ljava/lang/Object;->hashCode()I

    move-result v11

    goto :goto_1
.end method

.method public setElevation(D)V
    .locals 3
    .param p1, "elevation"    # D

    .prologue
    .line 61
    const-wide/16 v0, 0x0

    cmpg-double v0, p1, v0

    if-gez v0, :cond_0

    .line 62
    const-wide/16 p1, 0x0

    .line 65
    :cond_0
    iput-wide p1, p0, Lnet/sourceforge/zmanim/util/GeoLocation;->elevation:D

    .line 66
    return-void
.end method

.method public setLatitude(D)V
    .locals 3
    .param p1, "latitude"    # D

    .prologue
    .line 135
    const-wide v0, 0x4056800000000000L    # 90.0

    cmpl-double v0, p1, v0

    if-gtz v0, :cond_0

    const-wide v0, -0x3fa9800000000000L    # -90.0

    cmpg-double v0, p1, v0

    if-gez v0, :cond_1

    .line 136
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Latitude must be between -90 and  90"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :cond_1
    iput-wide p1, p0, Lnet/sourceforge/zmanim/util/GeoLocation;->latitude:D

    .line 139
    return-void
.end method

.method public setLatitude(IIDLjava/lang/String;)V
    .locals 13
    .param p1, "degrees"    # I
    .param p2, "minutes"    # I
    .param p3, "seconds"    # D
    .param p5, "direction"    # Ljava/lang/String;

    .prologue
    const-wide/high16 v10, 0x404e000000000000L    # 60.0

    .line 155
    int-to-double v4, p1

    int-to-double v6, p2

    div-double v8, p3, v10

    add-double/2addr v6, v8

    div-double/2addr v6, v10

    add-double v2, v4, v6

    .line 156
    .local v2, "tempLat":D
    const-wide v4, 0x4056800000000000L    # 90.0

    cmpl-double v4, v2, v4

    if-gtz v4, :cond_0

    const-wide/16 v4, 0x0

    cmpg-double v4, v2, v4

    if-gez v4, :cond_1

    .line 157
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    .line 158
    const-string v5, "Latitude must be between 0 and  90. Use direction of S instead of negative."

    .line 157
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 160
    :cond_1
    const-string v4, "S"

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 161
    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    mul-double/2addr v2, v4

    .line 165
    :cond_2
    iput-wide v2, p0, Lnet/sourceforge/zmanim/util/GeoLocation;->latitude:D

    .line 166
    return-void

    .line 162
    :cond_3
    const-string v4, "N"

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 163
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Latitude direction must be N or S"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public setLocationName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 240
    iput-object p1, p0, Lnet/sourceforge/zmanim/util/GeoLocation;->locationName:Ljava/lang/String;

    .line 241
    return-void
.end method

.method public setLongitude(D)V
    .locals 3
    .param p1, "longitude"    # D

    .prologue
    .line 186
    const-wide v0, 0x4066800000000000L    # 180.0

    cmpl-double v0, p1, v0

    if-gtz v0, :cond_0

    const-wide v0, -0x3f99800000000000L    # -180.0

    cmpg-double v0, p1, v0

    if-gez v0, :cond_1

    .line 187
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Longitude must be between -180 and  180"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 189
    :cond_1
    iput-wide p1, p0, Lnet/sourceforge/zmanim/util/GeoLocation;->longitude:D

    .line 190
    return-void
.end method

.method public setLongitude(IIDLjava/lang/String;)V
    .locals 13
    .param p1, "degrees"    # I
    .param p2, "minutes"    # I
    .param p3, "seconds"    # D
    .param p5, "direction"    # Ljava/lang/String;

    .prologue
    const-wide/high16 v10, 0x404e000000000000L    # 60.0

    .line 209
    int-to-double v4, p1

    int-to-double v6, p2

    div-double v8, p3, v10

    add-double/2addr v6, v8

    div-double/2addr v6, v10

    add-double v2, v4, v6

    .line 210
    .local v2, "longTemp":D
    const-wide v4, 0x4066800000000000L    # 180.0

    cmpl-double v4, v2, v4

    if-gtz v4, :cond_0

    iget-wide v4, p0, Lnet/sourceforge/zmanim/util/GeoLocation;->longitude:D

    const-wide/16 v6, 0x0

    cmpg-double v4, v4, v6

    if-gez v4, :cond_1

    .line 211
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Longitude must be between 0 and  180. Use the "

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 213
    :cond_1
    const-string v4, "W"

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 214
    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    mul-double/2addr v2, v4

    .line 218
    :cond_2
    iput-wide v2, p0, Lnet/sourceforge/zmanim/util/GeoLocation;->longitude:D

    .line 219
    return-void

    .line 215
    :cond_3
    const-string v4, "E"

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 216
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Longitude direction must be E or W"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public setTimeZone(Ljava/util/TimeZone;)V
    .locals 0
    .param p1, "timeZone"    # Ljava/util/TimeZone;

    .prologue
    .line 262
    iput-object p1, p0, Lnet/sourceforge/zmanim/util/GeoLocation;->timeZone:Ljava/util/TimeZone;

    .line 263
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    const-wide/32 v4, 0x36ee80

    .line 528
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 529
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string v1, "\nLocation Name:\t\t\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/util/GeoLocation;->getLocationName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 530
    const-string v1, "\nLatitude:\t\t\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/util/GeoLocation;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "&deg;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 531
    const-string v1, "\nLongitude:\t\t\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/util/GeoLocation;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "&deg;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 532
    const-string v1, "\nElevation:\t\t\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/util/GeoLocation;->getElevation()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " Meters"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 533
    const-string v1, "\nTimezone Name:\t\t\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/util/GeoLocation;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 537
    const-string v1, "\nTimezone GMT Offset:\t\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/util/GeoLocation;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v2

    int-to-long v2, v2

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 538
    const-string v1, "\nTimezone DST Offset:\t\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/util/GeoLocation;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v2

    int-to-long v2, v2

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 539
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toXML()Ljava/lang/String;
    .locals 6

    .prologue
    const-wide/32 v4, 0x36ee80

    .line 471
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 472
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string v1, "<GeoLocation>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 473
    const-string v1, "\t<LocationName>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/util/GeoLocation;->getLocationName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "</LocationName>\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 474
    const-string v1, "\t<Latitude>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/util/GeoLocation;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "&deg;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "</Latitude>\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 475
    const-string v1, "\t<Longitude>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/util/GeoLocation;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "&deg;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "</Longitude>\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 476
    const-string v1, "\t<Elevation>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/util/GeoLocation;->getElevation()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " Meters"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "</Elevation>\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 477
    const-string v1, "\t<TimezoneName>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/util/GeoLocation;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "</TimezoneName>\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 478
    const-string v1, "\t<TimeZoneDisplayName>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/util/GeoLocation;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TimeZone;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "</TimeZoneDisplayName>\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 479
    const-string v1, "\t<TimezoneGMTOffset>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/util/GeoLocation;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v2

    int-to-long v2, v2

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 480
    const-string v2, "</TimezoneGMTOffset>\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 481
    const-string v1, "\t<TimezoneDSTOffset>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/util/GeoLocation;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v2

    int-to-long v2, v2

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 482
    const-string v2, "</TimezoneDSTOffset>\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 483
    const-string v1, "</GeoLocation>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 484
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
