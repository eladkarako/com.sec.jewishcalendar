.class public Lcom/sec/jewishcalendar/ZmanimActivity;
.super Landroid/app/Activity;
.source "ZmanimActivity.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/jewishcalendar/ZmanimActivity$Populater;
    }
.end annotation


# static fields
.field private static final CANDLES_FESTIVAL:I = 0x2

.field private static final CANDLES_SHABBAT:I = 0x2

.field private static final CANDLES_YOM_KIPPUR:I = 0x1

.field public static final DATE:Ljava/lang/String; = "date"

.field private static final DIALOG_POPULATING:I = 0x1

.field private static final FIVE_MINUTES:J = 0x493e0L

.field private static final ISRAEL_EAST:D = 35.891876

.field private static final ISRAEL_NORTH:D = 33.289212

.field private static final ISRAEL_SOUTH:D = 29.489218

.field private static final ISRAEL_WEST:D = 34.215317

.field private static final KEY_EXTRA_FORMATTED:Ljava/lang/String; = "formatted_address"

.field private static final KEY_LOCATION_ALTITUDE:Ljava/lang/String; = "location.altitude"

.field private static final KEY_LOCATION_LABEL:Ljava/lang/String; = "location.name"

.field private static final KEY_LOCATION_LATITUDE:Ljava/lang/String; = "location.latitude"

.field private static final KEY_LOCATION_LONGITUDE:Ljava/lang/String; = "location.longitude"

.field private static final KEY_LOCATION_PROVIDER:Ljava/lang/String; = "location.provider"

.field private static final KEY_LOCATION_TIME:Ljava/lang/String; = "location.time"

.field private static final KEY_LOCATION_ZONE:Ljava/lang/String; = "location.tz"

.field private static final MASK_CANDLES_COUNT:I = 0xffff

.field private static final MASK_CANDLES_DAY:I = 0xffff

.field private static final MAX_NORTH:D = 83.4

.field public static final MAX_RESULTS:I = 0xa

.field private static final MAX_SOUTH:D = -68.0

.field private static final ONE_HOUR:J = 0x36ee80L

.field private static final ONE_KM:I = 0x3e8

.field private static final ONE_MINUTE:J = 0xea60L

.field private static final ONE_SECOND:J = 0x3e8L

.field private static final PROVIDER_TIMEZONE:Ljava/lang/String; = "timezone"

.field private static final SEPARATOR:Ljava/lang/String; = ", "

.field private static final SHABBAT:I = -0x1

.field private static final TAG:Ljava/lang/String; = "ZmanimActivity"

.field private static final TWELVE_HOURS:J = 0x2932e00L

.field private static final TZ_DELTA:D = 7.5

.field private static final TZ_HOUR:D = 15.0

.field private static final ZENITH_TALLIS:D = 101.5

.field private static mGetSubLocality:Ljava/lang/reflect/Method;

.field private static mLatitudes:[D

.field private static mLocation:Landroid/location/Location;

.field private static mLongitudes:[D

.field private static mZones:[Ljava/lang/String;

.field private static mZonesLocal:[Ljava/lang/String;


# instance fields
.field private mAdapter:Lcom/sec/jewishcalendar/ZmanimAdapter;

.field private final mDate:Ljava/util/Calendar;

.field private mHeader:Landroid/view/View;

.field private mList:Landroid/view/ViewGroup;

.field private mLocationManager:Landroid/location/LocationManager;

.field private final mPopulateUI:Ljava/lang/Runnable;

.field private mPopulater:Lcom/sec/jewishcalendar/ZmanimActivity$Populater;

.field private mProgress:Landroid/app/Dialog;

.field private mTimeZone:Ljava/util/TimeZone;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 174
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 145
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/jewishcalendar/ZmanimActivity;->mDate:Ljava/util/Calendar;

    .line 929
    new-instance v0, Lcom/sec/jewishcalendar/ZmanimActivity$1;

    invoke-direct {v0, p0}, Lcom/sec/jewishcalendar/ZmanimActivity$1;-><init>(Lcom/sec/jewishcalendar/ZmanimActivity;)V

    iput-object v0, p0, Lcom/sec/jewishcalendar/ZmanimActivity;->mPopulateUI:Ljava/lang/Runnable;

    .line 175
    return-void
.end method

.method static synthetic access$0()Landroid/location/Location;
    .locals 1

    .prologue
    .line 154
    sget-object v0, Lcom/sec/jewishcalendar/ZmanimActivity;->mLocation:Landroid/location/Location;

    return-object v0
.end method

.method static synthetic access$1(Lcom/sec/jewishcalendar/ZmanimActivity;Landroid/location/Location;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 625
    invoke-direct {p0, p1}, Lcom/sec/jewishcalendar/ZmanimActivity;->formatAddress(Landroid/location/Location;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2(Lcom/sec/jewishcalendar/ZmanimActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/sec/jewishcalendar/ZmanimActivity;->mHeader:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3(Lcom/sec/jewishcalendar/ZmanimActivity;)V
    .locals 0

    .prologue
    .line 783
    invoke-direct {p0}, Lcom/sec/jewishcalendar/ZmanimActivity;->populateTimes()V

    return-void
.end method

.method static synthetic access$4(Lcom/sec/jewishcalendar/ZmanimActivity;Landroid/location/Location;)V
    .locals 0

    .prologue
    .line 310
    invoke-direct {p0, p1}, Lcom/sec/jewishcalendar/ZmanimActivity;->fetchLocation(Landroid/location/Location;)V

    return-void
.end method

.method static synthetic access$5(Lcom/sec/jewishcalendar/ZmanimActivity;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 929
    iget-object v0, p0, Lcom/sec/jewishcalendar/ZmanimActivity;->mPopulateUI:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$6(Lcom/sec/jewishcalendar/ZmanimActivity;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/sec/jewishcalendar/ZmanimActivity;->mProgress:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$7(Lcom/sec/jewishcalendar/ZmanimActivity;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lcom/sec/jewishcalendar/ZmanimActivity;->mProgress:Landroid/app/Dialog;

    return-void
.end method

.method private fetchLocation(Landroid/location/Location;)V
    .locals 20
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 313
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v14

    .line 314
    .local v14, "locale":Ljava/util/Locale;
    const/4 v9, 0x0

    .line 315
    .local v9, "addresses":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    move-object/from16 v12, p1

    .line 316
    .local v12, "loc":Landroid/location/Location;
    invoke-direct/range {p0 .. p0}, Lcom/sec/jewishcalendar/ZmanimActivity;->fetchLocationSaved()Landroid/location/Location;

    move-result-object v13

    .line 317
    .local v13, "locSaved":Landroid/location/Location;
    sget-object v8, Lcom/sec/jewishcalendar/ZmanimActivity;->mLocation:Landroid/location/Location;

    if-nez v8, :cond_b

    const/4 v11, 0x1

    .line 322
    .local v11, "findAddress":Z
    :goto_0
    if-nez v12, :cond_0

    .line 323
    invoke-direct/range {p0 .. p0}, Lcom/sec/jewishcalendar/ZmanimActivity;->fetchLocationGps()Landroid/location/Location;

    move-result-object v12

    .line 326
    :cond_0
    if-nez v12, :cond_1

    .line 327
    invoke-direct/range {p0 .. p0}, Lcom/sec/jewishcalendar/ZmanimActivity;->fetchLocationNetwork()Landroid/location/Location;

    move-result-object v12

    .line 330
    :cond_1
    if-nez v12, :cond_2

    .line 331
    move-object v12, v13

    .line 334
    :cond_2
    if-eqz v12, :cond_3

    .line 335
    const-string v8, "timezone"

    invoke-virtual {v12}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 336
    const/4 v12, 0x0

    .line 340
    :cond_3
    if-nez v12, :cond_4

    .line 341
    invoke-direct/range {p0 .. p0}, Lcom/sec/jewishcalendar/ZmanimActivity;->fetchLocationZone()Landroid/location/Location;

    move-result-object v12

    .line 342
    invoke-virtual {v12}, Landroid/location/Location;->hasAltitude()Z

    move-result v11

    .line 347
    :cond_4
    if-eqz v12, :cond_5

    if-eqz v13, :cond_5

    .line 348
    invoke-virtual {v12}, Landroid/location/Location;->getLatitude()D

    move-result-wide v16

    invoke-virtual {v13}, Landroid/location/Location;->getLatitude()D

    move-result-wide v18

    cmpl-double v8, v16, v18

    if-nez v8, :cond_5

    .line 349
    invoke-virtual {v12}, Landroid/location/Location;->getLongitude()D

    move-result-wide v16

    invoke-virtual {v13}, Landroid/location/Location;->getLongitude()D

    move-result-wide v18

    cmpl-double v8, v16, v18

    if-nez v8, :cond_5

    .line 350
    move-object v12, v13

    .line 351
    const/4 v11, 0x0

    .line 354
    :cond_5
    if-eqz v11, :cond_a

    .line 355
    invoke-virtual {v12}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    .line 356
    .local v4, "latitude":D
    invoke-virtual {v12}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    .line 358
    .local v6, "longitude":D
    if-eqz v9, :cond_6

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 359
    :cond_6
    new-instance v3, Landroid/location/Geocoder;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v14}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    .line 362
    .local v3, "geocoder":Landroid/location/Geocoder;
    const/16 v8, 0xa

    .line 361
    :try_start_0
    invoke-virtual/range {v3 .. v8}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 367
    .end local v3    # "geocoder":Landroid/location/Geocoder;
    :cond_7
    :goto_1
    if-eqz v9, :cond_8

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 368
    :cond_8
    new-instance v3, Lcom/sec/jewishcalendar/location/GoogleGeocoder;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v14}, Lcom/sec/jewishcalendar/location/GoogleGeocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    .line 371
    .local v3, "geocoder":Lcom/sec/jewishcalendar/location/GoogleGeocoder;
    const/16 v8, 0xa

    .line 370
    :try_start_1
    invoke-virtual/range {v3 .. v8}, Lcom/sec/jewishcalendar/location/GoogleGeocoder;->getFromLocation(DDI)Ljava/util/List;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v9

    .line 376
    .end local v3    # "geocoder":Lcom/sec/jewishcalendar/location/GoogleGeocoder;
    :cond_9
    :goto_2
    if-eqz v9, :cond_a

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_a

    .line 377
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/sec/jewishcalendar/ZmanimActivity;->findBestAddress(Ljava/util/List;)Landroid/location/Address;

    move-result-object v2

    .line 378
    .local v2, "addr":Landroid/location/Address;
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sec/jewishcalendar/ZmanimActivity;->formatAddress(Landroid/location/Address;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v8}, Lcom/sec/jewishcalendar/ZmanimActivity;->setLocationName(Landroid/location/Location;Ljava/lang/String;)V

    .line 382
    .end local v2    # "addr":Landroid/location/Address;
    .end local v4    # "latitude":D
    .end local v6    # "longitude":D
    :cond_a
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/sec/jewishcalendar/ZmanimActivity;->persistAddressToPreferences(Landroid/location/Location;)V

    .line 383
    sput-object v12, Lcom/sec/jewishcalendar/ZmanimActivity;->mLocation:Landroid/location/Location;

    .line 384
    return-void

    .line 317
    .end local v11    # "findAddress":Z
    :cond_b
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 363
    .local v3, "geocoder":Landroid/location/Geocoder;
    .restart local v4    # "latitude":D
    .restart local v6    # "longitude":D
    .restart local v11    # "findAddress":Z
    :catch_0
    move-exception v10

    .line 364
    .local v10, "e":Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 372
    .end local v10    # "e":Ljava/io/IOException;
    .local v3, "geocoder":Lcom/sec/jewishcalendar/location/GoogleGeocoder;
    :catch_1
    move-exception v10

    .line 373
    .restart local v10    # "e":Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method private fetchLocationGps()Landroid/location/Location;
    .locals 3

    .prologue
    .line 393
    iget-object v1, p0, Lcom/sec/jewishcalendar/ZmanimActivity;->mLocationManager:Landroid/location/LocationManager;

    if-nez v1, :cond_0

    .line 394
    const/4 v0, 0x0

    .line 398
    :goto_0
    return-object v0

    .line 395
    :cond_0
    iget-object v1, p0, Lcom/sec/jewishcalendar/ZmanimActivity;->mLocationManager:Landroid/location/LocationManager;

    .line 396
    const-string v2, "gps"

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 398
    .local v0, "loc":Landroid/location/Location;
    goto :goto_0
.end method

.method private fetchLocationNetwork()Landroid/location/Location;
    .locals 3

    .prologue
    .line 408
    iget-object v1, p0, Lcom/sec/jewishcalendar/ZmanimActivity;->mLocationManager:Landroid/location/LocationManager;

    if-nez v1, :cond_0

    .line 409
    const/4 v0, 0x0

    .line 413
    :goto_0
    return-object v0

    .line 410
    :cond_0
    iget-object v1, p0, Lcom/sec/jewishcalendar/ZmanimActivity;->mLocationManager:Landroid/location/LocationManager;

    .line 411
    const-string v2, "network"

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 413
    .local v0, "loc":Landroid/location/Location;
    goto :goto_0
.end method

.method private fetchLocationSaved()Landroid/location/Location;
    .locals 4

    .prologue
    .line 422
    invoke-direct {p0}, Lcom/sec/jewishcalendar/ZmanimActivity;->parseAddressFromPreferences()Landroid/location/Location;

    move-result-object v0

    .line 423
    .local v0, "loc":Landroid/location/Location;
    if-eqz v0, :cond_1

    const-string v2, "timezone"

    invoke-virtual {v0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 425
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    .line 426
    .local v1, "tz":Ljava/util/TimeZone;
    iget-object v2, p0, Lcom/sec/jewishcalendar/ZmanimActivity;->mTimeZone:Ljava/util/TimeZone;

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/jewishcalendar/ZmanimActivity;->mTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v3}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 427
    :cond_0
    const/4 v0, 0x0

    .line 431
    .end local v1    # "tz":Ljava/util/TimeZone;
    :cond_1
    return-object v0
.end method

.method private fetchLocationZone()Landroid/location/Location;
    .locals 28

    .prologue
    .line 440
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v22

    .line 441
    .local v22, "tz":Ljava/util/TimeZone;
    invoke-virtual/range {v22 .. v22}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v23

    .line 442
    .local v23, "tzId":Ljava/lang/String;
    const-wide/high16 v6, 0x402e000000000000L    # 15.0

    invoke-virtual/range {v22 .. v22}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v5

    int-to-double v10, v5

    mul-double/2addr v6, v10

    const-wide v10, 0x414b774000000000L    # 3600000.0

    div-double v18, v6, v10

    .line 444
    .local v18, "lng":D
    new-instance v17, Landroid/location/Location;

    const-string v5, "timezone"

    move-object/from16 v0, v17

    invoke-direct {v0, v5}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 445
    .local v17, "loc":Landroid/location/Location;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/32 v10, 0x493e0

    sub-long/2addr v6, v10

    move-object/from16 v0, v17

    invoke-virtual {v0, v6, v7}, Landroid/location/Location;->setTime(J)V

    .line 446
    invoke-virtual/range {v17 .. v19}, Landroid/location/Location;->setLongitude(D)V

    .line 449
    sget-object v5, Lcom/sec/jewishcalendar/ZmanimActivity;->mZones:[Ljava/lang/String;

    if-nez v5, :cond_0

    .line 450
    invoke-virtual/range {p0 .. p0}, Lcom/sec/jewishcalendar/ZmanimActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f06000c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/sec/jewishcalendar/ZmanimActivity;->mZones:[Ljava/lang/String;

    .line 451
    invoke-virtual/range {p0 .. p0}, Lcom/sec/jewishcalendar/ZmanimActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f06000d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/sec/jewishcalendar/ZmanimActivity;->mZonesLocal:[Ljava/lang/String;

    .line 453
    :cond_0
    sget-object v5, Lcom/sec/jewishcalendar/ZmanimActivity;->mZones:[Ljava/lang/String;

    array-length v0, v5

    move/from16 v27, v0

    .line 454
    .local v27, "zonesSize":I
    sget-object v5, Lcom/sec/jewishcalendar/ZmanimActivity;->mLatitudes:[D

    if-nez v5, :cond_1

    .line 455
    invoke-virtual/range {p0 .. p0}, Lcom/sec/jewishcalendar/ZmanimActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 456
    const v6, 0x7f06000e

    .line 455
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v24

    .line 457
    .local v24, "x_coordinate":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/jewishcalendar/ZmanimActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 458
    const v6, 0x7f06000f

    .line 457
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v25

    .line 459
    .local v25, "y_coordinate":[Ljava/lang/String;
    move/from16 v0, v27

    new-array v5, v0, [D

    sput-object v5, Lcom/sec/jewishcalendar/ZmanimActivity;->mLatitudes:[D

    .line 460
    move/from16 v0, v27

    new-array v5, v0, [D

    sput-object v5, Lcom/sec/jewishcalendar/ZmanimActivity;->mLongitudes:[D

    .line 461
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_0
    move/from16 v0, v16

    move/from16 v1, v27

    if-lt v0, v1, :cond_8

    .line 466
    .end local v16    # "i":I
    .end local v24    # "x_coordinate":[Ljava/lang/String;
    .end local v25    # "y_coordinate":[Ljava/lang/String;
    :cond_1
    const/16 v26, -0x1

    .line 467
    .local v26, "zoneIndex":I
    const/16 v16, 0x0

    .restart local v16    # "i":I
    :goto_1
    move/from16 v0, v16

    move/from16 v1, v27

    if-lt v0, v1, :cond_9

    .line 477
    :goto_2
    const-string v5, "/"

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v21

    .line 479
    .local v21, "parts":[Ljava/lang/String;
    const/4 v5, -0x1

    move/from16 v0, v26

    if-eq v0, v5, :cond_2

    .line 480
    sget-object v5, Lcom/sec/jewishcalendar/ZmanimActivity;->mZonesLocal:[Ljava/lang/String;

    aget-object v5, v5, v26

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v21

    .line 483
    :cond_2
    move-object/from16 v0, v21

    array-length v5, v0

    const/4 v6, 0x2

    if-ne v5, v6, :cond_7

    .line 484
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v20

    .line 485
    .local v20, "locale":Ljava/util/Locale;
    new-instance v5, Ljava/lang/StringBuilder;

    const/4 v6, 0x1

    aget-object v6, v21, v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v6, v21, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 486
    .local v4, "locationName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v4}, Lcom/sec/jewishcalendar/ZmanimActivity;->setLocationName(Landroid/location/Location;Ljava/lang/String;)V

    .line 489
    const/4 v5, -0x1

    move/from16 v0, v26

    if-ne v0, v5, :cond_7

    .line 490
    const-wide/high16 v6, 0x401e000000000000L    # 7.5

    sub-double v8, v18, v6

    .line 491
    .local v8, "lngEast":D
    const-wide/high16 v6, 0x401e000000000000L    # 7.5

    add-double v12, v18, v6

    .line 492
    .local v12, "lngWest":D
    const/4 v14, 0x0

    .line 494
    .local v14, "addresses":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    if-eqz v14, :cond_3

    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 495
    :cond_3
    new-instance v3, Landroid/location/Geocoder;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v3, v0, v1}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    .line 498
    .local v3, "geocoder":Landroid/location/Geocoder;
    const/16 v5, 0xa

    const-wide/high16 v6, -0x3faf000000000000L    # -68.0

    const-wide v10, 0x4054d9999999999aL    # 83.4

    .line 497
    :try_start_0
    invoke-virtual/range {v3 .. v13}, Landroid/location/Geocoder;->getFromLocationName(Ljava/lang/String;IDDDD)Ljava/util/List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    .line 504
    .end local v3    # "geocoder":Landroid/location/Geocoder;
    :cond_4
    :goto_3
    if-eqz v14, :cond_5

    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 505
    :cond_5
    new-instance v3, Lcom/sec/jewishcalendar/location/GoogleGeocoder;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v3, v0, v1}, Lcom/sec/jewishcalendar/location/GoogleGeocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    .line 508
    .local v3, "geocoder":Lcom/sec/jewishcalendar/location/GoogleGeocoder;
    const/16 v5, 0xa

    const-wide/high16 v6, -0x3faf000000000000L    # -68.0

    const-wide v10, 0x4054d9999999999aL    # 83.4

    .line 507
    :try_start_1
    invoke-virtual/range {v3 .. v13}, Lcom/sec/jewishcalendar/location/GoogleGeocoder;->getFromLocationName(Ljava/lang/String;IDDDD)Ljava/util/List;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v14

    .line 514
    .end local v3    # "geocoder":Lcom/sec/jewishcalendar/location/GoogleGeocoder;
    :cond_6
    :goto_4
    if-eqz v14, :cond_7

    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_7

    .line 515
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/sec/jewishcalendar/ZmanimActivity;->findBestAddress(Ljava/util/List;)Landroid/location/Address;

    move-result-object v2

    .line 516
    .local v2, "addr":Landroid/location/Address;
    if-eqz v2, :cond_7

    .line 517
    invoke-virtual {v2}, Landroid/location/Address;->getLatitude()D

    move-result-wide v6

    move-object/from16 v0, v17

    invoke-virtual {v0, v6, v7}, Landroid/location/Location;->setLatitude(D)V

    .line 518
    invoke-virtual {v2}, Landroid/location/Address;->getLongitude()D

    move-result-wide v6

    move-object/from16 v0, v17

    invoke-virtual {v0, v6, v7}, Landroid/location/Location;->setLongitude(D)V

    .line 519
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sec/jewishcalendar/ZmanimActivity;->formatAddress(Landroid/location/Address;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v5}, Lcom/sec/jewishcalendar/ZmanimActivity;->setLocationName(Landroid/location/Location;Ljava/lang/String;)V

    .line 525
    .end local v2    # "addr":Landroid/location/Address;
    .end local v4    # "locationName":Ljava/lang/String;
    .end local v8    # "lngEast":D
    .end local v12    # "lngWest":D
    .end local v14    # "addresses":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    .end local v20    # "locale":Ljava/util/Locale;
    :cond_7
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/jewishcalendar/ZmanimActivity;->mTimeZone:Ljava/util/TimeZone;

    .line 528
    return-object v17

    .line 462
    .end local v21    # "parts":[Ljava/lang/String;
    .end local v26    # "zoneIndex":I
    .restart local v24    # "x_coordinate":[Ljava/lang/String;
    .restart local v25    # "y_coordinate":[Ljava/lang/String;
    :cond_8
    sget-object v5, Lcom/sec/jewishcalendar/ZmanimActivity;->mLatitudes:[D

    aget-object v6, v24, v16

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    aput-wide v6, v5, v16

    .line 463
    sget-object v5, Lcom/sec/jewishcalendar/ZmanimActivity;->mLongitudes:[D

    aget-object v6, v25, v16

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    aput-wide v6, v5, v16

    .line 461
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_0

    .line 468
    .end local v24    # "x_coordinate":[Ljava/lang/String;
    .end local v25    # "y_coordinate":[Ljava/lang/String;
    .restart local v26    # "zoneIndex":I
    :cond_9
    sget-object v5, Lcom/sec/jewishcalendar/ZmanimActivity;->mZones:[Ljava/lang/String;

    aget-object v5, v5, v16

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 469
    move/from16 v26, v16

    .line 470
    sget-object v5, Lcom/sec/jewishcalendar/ZmanimActivity;->mLatitudes:[D

    aget-wide v6, v5, v16

    move-object/from16 v0, v17

    invoke-virtual {v0, v6, v7}, Landroid/location/Location;->setLatitude(D)V

    .line 471
    sget-object v5, Lcom/sec/jewishcalendar/ZmanimActivity;->mLongitudes:[D

    aget-wide v6, v5, v16

    move-object/from16 v0, v17

    invoke-virtual {v0, v6, v7}, Landroid/location/Location;->setLongitude(D)V

    .line 472
    const-wide/16 v6, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6, v7}, Landroid/location/Location;->setAltitude(D)V

    goto/16 :goto_2

    .line 467
    :cond_a
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_1

    .line 500
    .local v3, "geocoder":Landroid/location/Geocoder;
    .restart local v4    # "locationName":Ljava/lang/String;
    .restart local v8    # "lngEast":D
    .restart local v12    # "lngWest":D
    .restart local v14    # "addresses":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    .restart local v20    # "locale":Ljava/util/Locale;
    .restart local v21    # "parts":[Ljava/lang/String;
    :catch_0
    move-exception v15

    .line 501
    .local v15, "e":Ljava/io/IOException;
    invoke-virtual {v15}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 510
    .end local v15    # "e":Ljava/io/IOException;
    .local v3, "geocoder":Lcom/sec/jewishcalendar/location/GoogleGeocoder;
    :catch_1
    move-exception v15

    .line 511
    .restart local v15    # "e":Ljava/io/IOException;
    invoke-virtual {v15}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_4
.end method

.method private findBestAddress(Ljava/util/List;)Landroid/location/Address;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/location/Address;",
            ">;)",
            "Landroid/location/Address;"
        }
    .end annotation

    .prologue
    .line 751
    .local p1, "addresses":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 752
    :cond_0
    const/4 v0, 0x0

    .line 779
    :goto_0
    return-object v0

    .line 754
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_7

    .line 759
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_8

    .line 764
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_9

    .line 769
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_a

    .line 774
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_b

    .line 779
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Address;

    move-object v0, v1

    goto :goto_0

    .line 754
    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Address;

    .line 755
    .local v0, "a":Landroid/location/Address;
    invoke-virtual {v0}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 759
    .end local v0    # "a":Landroid/location/Address;
    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Address;

    .line 760
    .restart local v0    # "a":Landroid/location/Address;
    invoke-direct {p0, v0}, Lcom/sec/jewishcalendar/ZmanimActivity;->getSubLocality(Landroid/location/Address;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    goto :goto_0

    .line 764
    .end local v0    # "a":Landroid/location/Address;
    :cond_9
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Address;

    .line 765
    .restart local v0    # "a":Landroid/location/Address;
    invoke-virtual {v0}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    goto :goto_0

    .line 769
    .end local v0    # "a":Landroid/location/Address;
    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Address;

    .line 770
    .restart local v0    # "a":Landroid/location/Address;
    invoke-virtual {v0}, Landroid/location/Address;->getSubAdminArea()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    goto :goto_0

    .line 774
    .end local v0    # "a":Landroid/location/Address;
    :cond_b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Address;

    .line 775
    .restart local v0    # "a":Landroid/location/Address;
    invoke-virtual {v0}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    goto :goto_0
.end method

.method private formatAddress(Landroid/location/Address;)Ljava/lang/String;
    .locals 13
    .param p1, "a"    # Landroid/location/Address;

    .prologue
    .line 541
    const-string v9, "Unnamed Rd"

    .line 542
    .local v9, "unnamed":Ljava/lang/String;
    const-string v10, "Unnamed Road"

    .line 544
    .local v10, "unnamedRoad":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/location/Address;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 545
    .local v3, "extras":Landroid/os/Bundle;
    if-nez v3, :cond_2

    const/4 v5, 0x0

    .line 548
    .local v5, "formatted":Ljava/lang/String;
    :goto_0
    if-eqz v5, :cond_3

    .line 549
    invoke-virtual {v5, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    invoke-virtual {v5, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 550
    :cond_0
    const-string v11, ","

    const/4 v12, 0x0

    invoke-virtual {v5, v11, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v11

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v5, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    :cond_1
    move-object v11, v5

    .line 599
    :goto_1
    return-object v11

    .line 546
    .end local v5    # "formatted":Ljava/lang/String;
    :cond_2
    const-string v11, "formatted_address"

    invoke-virtual {v3, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 555
    .restart local v5    # "formatted":Ljava/lang/String;
    :cond_3
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 556
    .local v1, "buf":Ljava/lang/StringBuffer;
    invoke-virtual {p1}, Landroid/location/Address;->getFeatureName()Ljava/lang/String;

    move-result-object v4

    .line 557
    .local v4, "feature":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/sec/jewishcalendar/ZmanimActivity;->getSubLocality(Landroid/location/Address;)Ljava/lang/String;

    move-result-object v8

    .line 558
    .local v8, "subloc":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v6

    .line 559
    .local v6, "locality":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/location/Address;->getSubAdminArea()Ljava/lang/String;

    move-result-object v7

    .line 560
    .local v7, "subadmin":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v0

    .line 561
    .local v0, "admin":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v2

    .line 563
    .local v2, "country":Ljava/lang/String;
    if-eqz v4, :cond_5

    invoke-virtual {v4, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 564
    invoke-virtual {v4, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 565
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v11

    if-lez v11, :cond_4

    .line 566
    const-string v11, ", "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 567
    :cond_4
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 569
    :cond_5
    if-eqz v8, :cond_7

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_7

    .line 570
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v11

    if-lez v11, :cond_6

    .line 571
    const-string v11, ", "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 572
    :cond_6
    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 574
    :cond_7
    if-eqz v6, :cond_9

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_9

    .line 575
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_9

    .line 576
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v11

    if-lez v11, :cond_8

    .line 577
    const-string v11, ", "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 578
    :cond_8
    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 580
    :cond_9
    if-eqz v7, :cond_b

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_b

    .line 581
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_b

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_b

    .line 582
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v11

    if-lez v11, :cond_a

    .line 583
    const-string v11, ", "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 584
    :cond_a
    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 586
    :cond_b
    if-eqz v0, :cond_d

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_d

    .line 587
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_d

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_d

    .line 588
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_d

    .line 589
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v11

    if-lez v11, :cond_c

    .line 590
    const-string v11, ", "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 591
    :cond_c
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 593
    :cond_d
    if-eqz v2, :cond_f

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_f

    .line 594
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v11

    if-lez v11, :cond_e

    .line 595
    const-string v11, ", "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 596
    :cond_e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 599
    :cond_f
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_1
.end method

.method private formatAddress(Landroid/location/Location;)Ljava/lang/String;
    .locals 3
    .param p1, "loc"    # Landroid/location/Location;

    .prologue
    .line 627
    invoke-virtual {p1}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 628
    .local v0, "extras":Landroid/os/Bundle;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 630
    .local v1, "formatted":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 629
    .end local v1    # "formatted":Ljava/lang/String;
    :cond_0
    const-string v2, "formatted_address"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getCandlesIcon(II)I
    .locals 2
    .param p1, "holiday"    # I
    .param p2, "count"    # I

    .prologue
    .line 1092
    if-gtz p2, :cond_1

    .line 1093
    const/4 v0, 0x0

    .line 1125
    :cond_0
    :goto_0
    return v0

    .line 1094
    :cond_1
    const v0, 0x7f020026

    .line 1095
    .local v0, "iconId":I
    const/16 v1, 0x15

    if-ne p1, v1, :cond_2

    .line 1096
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 1098
    :pswitch_0
    const v0, 0x7f020028

    .line 1099
    goto :goto_0

    .line 1101
    :pswitch_1
    const v0, 0x7f020029

    .line 1102
    goto :goto_0

    .line 1104
    :pswitch_2
    const v0, 0x7f02002a

    .line 1105
    goto :goto_0

    .line 1107
    :pswitch_3
    const v0, 0x7f02002b

    .line 1108
    goto :goto_0

    .line 1110
    :pswitch_4
    const v0, 0x7f02002c

    .line 1111
    goto :goto_0

    .line 1113
    :pswitch_5
    const v0, 0x7f02002d

    .line 1114
    goto :goto_0

    .line 1116
    :pswitch_6
    const v0, 0x7f02002e

    .line 1117
    goto :goto_0

    .line 1119
    :pswitch_7
    const v0, 0x7f02002f

    goto :goto_0

    .line 1122
    :cond_2
    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 1123
    const v0, 0x7f020027

    goto :goto_0

    .line 1096
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private getLightCandles(Ljava/util/Calendar;)I
    .locals 11
    .param p1, "date"    # Ljava/util/Calendar;

    .prologue
    const v10, 0xffff

    const/4 v7, 0x7

    const/4 v9, 0x5

    const/4 v6, 0x1

    .line 1008
    invoke-virtual {p1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 1009
    .local v1, "dayOfWeek":I
    if-ne v1, v7, :cond_2

    move v4, v6

    .line 1010
    .local v4, "isShabbat":Z
    :goto_0
    sget-object v7, Lcom/sec/jewishcalendar/ZmanimActivity;->mLocation:Landroid/location/Location;

    iget-object v8, p0, Lcom/sec/jewishcalendar/ZmanimActivity;->mTimeZone:Ljava/util/TimeZone;

    invoke-direct {p0, v7, v8}, Lcom/sec/jewishcalendar/ZmanimActivity;->isIsrael(Landroid/location/Location;Ljava/util/TimeZone;)Z

    move-result v3

    .line 1015
    .local v3, "inIsrael":Z
    invoke-virtual {p1, v9, v6}, Ljava/util/Calendar;->add(II)V

    .line 1016
    new-instance v5, Lnet/sourceforge/zmanim/hebrewcalendar/JewishCalendar;

    invoke-direct {v5, p1}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishCalendar;-><init>(Ljava/util/Calendar;)V

    .line 1017
    .local v5, "jcal":Lnet/sourceforge/zmanim/hebrewcalendar/JewishCalendar;
    invoke-virtual {v5, v3}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishCalendar;->setInIsrael(Z)V

    .line 1018
    const/4 v6, -0x1

    invoke-virtual {p1, v9, v6}, Ljava/util/Calendar;->add(II)V

    .line 1020
    invoke-virtual {v5}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishCalendar;->getYomTovIndex()I

    move-result v2

    .line 1022
    .local v2, "holiday":I
    const/4 v0, 0x0

    .line 1024
    .local v0, "candles":I
    sparse-switch v2, :sswitch_data_0

    .line 1040
    const/4 v6, 0x6

    if-ne v1, v6, :cond_0

    .line 1041
    const/4 v2, -0x1

    .line 1042
    const/4 v0, 0x2

    .line 1047
    :cond_0
    :goto_1
    if-eqz v4, :cond_1

    neg-int v0, v0

    .line 1050
    :cond_1
    and-int v6, v2, v10

    shl-int/lit8 v6, v6, 0x10

    .line 1051
    and-int v7, v0, v10

    .line 1050
    or-int/2addr v6, v7

    return v6

    .line 1009
    .end local v0    # "candles":I
    .end local v2    # "holiday":I
    .end local v3    # "inIsrael":Z
    .end local v4    # "isShabbat":Z
    .end local v5    # "jcal":Lnet/sourceforge/zmanim/hebrewcalendar/JewishCalendar;
    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    .line 1031
    .restart local v0    # "candles":I
    .restart local v2    # "holiday":I
    .restart local v3    # "inIsrael":Z
    .restart local v4    # "isShabbat":Z
    .restart local v5    # "jcal":Lnet/sourceforge/zmanim/hebrewcalendar/JewishCalendar;
    :sswitch_0
    const/4 v0, 0x2

    .line 1032
    goto :goto_1

    .line 1034
    :sswitch_1
    const/4 v0, 0x1

    .line 1035
    goto :goto_1

    .line 1037
    :sswitch_2
    invoke-virtual {v5}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishCalendar;->getDayOfChanukah()I

    move-result v0

    .line 1038
    goto :goto_1

    .line 1024
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_0
        0xa -> :sswitch_0
        0xd -> :sswitch_1
        0xf -> :sswitch_0
        0x12 -> :sswitch_0
        0x13 -> :sswitch_0
        0x15 -> :sswitch_2
    .end sparse-switch
.end method

.method private getSubLocality(Landroid/location/Address;)Ljava/lang/String;
    .locals 4
    .param p1, "a"    # Landroid/location/Address;

    .prologue
    .line 979
    sget-object v1, Lcom/sec/jewishcalendar/ZmanimActivity;->mGetSubLocality:Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/sec/os/Build$VERSION;->SDK_INT()I

    move-result v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    .line 981
    :try_start_0
    const-class v1, Landroid/location/Address;

    const-string v2, "getSubLocality"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/sec/jewishcalendar/ZmanimActivity;->mGetSubLocality:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    .line 986
    :cond_0
    :goto_0
    sget-object v1, Lcom/sec/jewishcalendar/ZmanimActivity;->mGetSubLocality:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_1

    .line 988
    :try_start_1
    sget-object v1, Lcom/sec/jewishcalendar/ZmanimActivity;->mGetSubLocality:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 993
    :goto_1
    return-object v1

    .line 989
    :catch_0
    move-exception v0

    .line 990
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 993
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 983
    :catch_1
    move-exception v1

    goto :goto_0

    .line 982
    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method private initLocation()V
    .locals 6

    .prologue
    const-wide/32 v2, 0x493e0

    const/high16 v4, 0x447a0000    # 1000.0f

    .line 294
    iget-object v0, p0, Lcom/sec/jewishcalendar/ZmanimActivity;->mLocationManager:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    .line 295
    const-string v0, "location"

    invoke-virtual {p0, v0}, Lcom/sec/jewishcalendar/ZmanimActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/sec/jewishcalendar/ZmanimActivity;->mLocationManager:Landroid/location/LocationManager;

    .line 296
    iget-object v0, p0, Lcom/sec/jewishcalendar/ZmanimActivity;->mLocationManager:Landroid/location/LocationManager;

    .line 297
    const-string v1, "gps"

    move-object v5, p0

    .line 296
    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 298
    iget-object v0, p0, Lcom/sec/jewishcalendar/ZmanimActivity;->mLocationManager:Landroid/location/LocationManager;

    .line 299
    const-string v1, "network"

    move-object v5, p0

    .line 298
    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 302
    :cond_0
    return-void
.end method

.method private isIsrael(Landroid/location/Location;Ljava/util/TimeZone;)Z
    .locals 10
    .param p1, "loc"    # Landroid/location/Location;
    .param p2, "timeZone"    # Ljava/util/TimeZone;

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 1066
    if-nez p1, :cond_3

    .line 1067
    if-nez p2, :cond_0

    .line 1068
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p2

    .line 1069
    :cond_0
    invoke-virtual {p2}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    .line 1070
    .local v0, "id":Ljava/lang/String;
    const-string v7, "Asia/Jerusalem"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "IST"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_1
    move v1, v6

    .line 1077
    .end local v0    # "id":Ljava/lang/String;
    :cond_2
    :goto_0
    return v1

    .line 1075
    :cond_3
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    .line 1076
    .local v2, "latitude":D
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    .line 1077
    .local v4, "longitude":D
    const-wide v8, 0x4040a504e618ce2dL    # 33.289212

    cmpg-double v7, v2, v8

    if-gtz v7, :cond_2

    const-wide v8, 0x403d7d3d640e9d52L    # 29.489218

    cmpl-double v7, v2, v8

    if-ltz v7, :cond_2

    .line 1078
    const-wide v8, 0x40411b8f81e8a2ecL    # 34.215317

    cmpl-double v7, v4, v8

    if-ltz v7, :cond_2

    const-wide v8, 0x4041f228fe260b2dL    # 35.891876

    .line 1077
    cmpg-double v7, v4, v8

    if-gtz v7, :cond_2

    move v1, v6

    goto :goto_0
.end method

.method private parseAddressFromPreferences()Landroid/location/Location;
    .locals 22

    .prologue
    .line 715
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sec/jewishcalendar/ZmanimActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v11

    .line 716
    .local v11, "prefs":Landroid/content/SharedPreferences;
    const-string v18, "location.name"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 717
    .local v7, "label":Ljava/lang/String;
    if-nez v7, :cond_0

    .line 718
    const/4 v10, 0x0

    .line 740
    :goto_0
    return-object v10

    .line 720
    :cond_0
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 721
    .local v6, "extras":Landroid/os/Bundle;
    const-string v18, "formatted_address"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    const-string v18, "location.latitude"

    const-string v19, "0"

    .line 722
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    .line 725
    .local v8, "latitude":D
    const-string v18, "location.longitude"

    const-string v19, "0"

    .line 724
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v12

    .line 727
    .local v12, "longitude":D
    const-string v18, "location.altitude"

    const-string v19, "0"

    .line 726
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    .line 728
    .local v4, "altitude":D
    const-string v18, "location.provider"

    .line 729
    const-string v19, "gps"

    .line 728
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 730
    .local v14, "provider":Ljava/lang/String;
    const-string v18, "location.tz"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 731
    .local v15, "tzId":Ljava/lang/String;
    if-nez v15, :cond_1

    const/16 v18, 0x0

    :goto_1
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/jewishcalendar/ZmanimActivity;->mTimeZone:Ljava/util/TimeZone;

    .line 732
    const-string v18, "location.time"

    const-wide/16 v20, 0x0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-interface {v11, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v16

    .line 734
    .local v16, "time":J
    new-instance v10, Landroid/location/Location;

    invoke-direct {v10, v14}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 735
    .local v10, "loc":Landroid/location/Location;
    invoke-virtual {v10, v6}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V

    .line 736
    invoke-virtual {v10, v8, v9}, Landroid/location/Location;->setLatitude(D)V

    .line 737
    invoke-virtual {v10, v12, v13}, Landroid/location/Location;->setLongitude(D)V

    .line 738
    invoke-virtual {v10, v4, v5}, Landroid/location/Location;->setAltitude(D)V

    .line 739
    move-wide/from16 v0, v16

    invoke-virtual {v10, v0, v1}, Landroid/location/Location;->setTime(J)V

    goto/16 :goto_0

    .line 731
    .end local v10    # "loc":Landroid/location/Location;
    .end local v16    # "time":J
    :cond_1
    invoke-static {v15}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v18

    goto :goto_1
.end method

.method private persistAddressToPreferences(Landroid/location/Location;)V
    .locals 6
    .param p1, "loc"    # Landroid/location/Location;

    .prologue
    .line 690
    if-nez p1, :cond_0

    .line 707
    :goto_0
    return-void

    .line 693
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/sec/jewishcalendar/ZmanimActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 694
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 695
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "location.name"

    invoke-direct {p0, p1}, Lcom/sec/jewishcalendar/ZmanimActivity;->formatAddress(Landroid/location/Location;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 696
    const-string v2, "location.latitude"

    .line 697
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v3

    .line 696
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 698
    const-string v2, "location.longitude"

    .line 699
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v3

    .line 698
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 700
    const-string v2, "location.altitude"

    .line 701
    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v3

    .line 700
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 702
    const-string v2, "location.provider"

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 703
    const-string v3, "location.tz"

    iget-object v2, p0, Lcom/sec/jewishcalendar/ZmanimActivity;->mTimeZone:Ljava/util/TimeZone;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    :goto_1
    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 705
    const-string v2, "location.time"

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 706
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 704
    :cond_1
    iget-object v2, p0, Lcom/sec/jewishcalendar/ZmanimActivity;->mTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v2}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private populateTimes()V
    .locals 33

    .prologue
    .line 787
    sget-object v32, Lcom/sec/jewishcalendar/ZmanimActivity;->mLocation:Landroid/location/Location;

    .line 788
    .local v32, "loc":Landroid/location/Location;
    if-nez v32, :cond_1

    .line 882
    :cond_0
    return-void

    .line 790
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/sec/jewishcalendar/ZmanimActivity;->formatAddress(Landroid/location/Location;)Ljava/lang/String;

    move-result-object v5

    .line 791
    .local v5, "locationName":Ljava/lang/String;
    invoke-virtual/range {v32 .. v32}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    .line 792
    .local v6, "latitude":D
    invoke-virtual/range {v32 .. v32}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    .line 793
    .local v8, "longitude":D
    invoke-virtual/range {v32 .. v32}, Landroid/location/Location;->getAltitude()D

    move-result-wide v10

    .line 795
    .local v10, "altitude":D
    new-instance v4, Lnet/sourceforge/zmanim/util/GeoLocation;

    .line 796
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v12

    .line 795
    invoke-direct/range {v4 .. v12}, Lnet/sourceforge/zmanim/util/GeoLocation;-><init>(Ljava/lang/String;DDDLjava/util/TimeZone;)V

    .line 797
    .local v4, "gloc":Lnet/sourceforge/zmanim/util/GeoLocation;
    new-instance v18, Lnet/sourceforge/zmanim/ZmanimCalendar;

    move-object/from16 v0, v18

    invoke-direct {v0, v4}, Lnet/sourceforge/zmanim/ZmanimCalendar;-><init>(Lnet/sourceforge/zmanim/util/GeoLocation;)V

    .line 798
    .local v18, "cal":Lnet/sourceforge/zmanim/ZmanimCalendar;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/jewishcalendar/ZmanimActivity;->mDate:Ljava/util/Calendar;

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Lnet/sourceforge/zmanim/ZmanimCalendar;->setCalendar(Ljava/util/Calendar;)V

    .line 800
    const/16 v30, 0x0

    .line 801
    .local v30, "lightCandles":I
    const/16 v27, 0x0

    .line 802
    .local v27, "candlesDay":I
    const/16 v26, 0x0

    .line 803
    .local v26, "candlesCount":I
    invoke-virtual/range {v18 .. v18}, Lnet/sourceforge/zmanim/ZmanimCalendar;->getCandleLighting()Ljava/util/Date;

    move-result-object v25

    .line 804
    .local v25, "candles":Ljava/util/Date;
    if-eqz v25, :cond_2

    .line 805
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/jewishcalendar/ZmanimActivity;->mDate:Ljava/util/Calendar;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/sec/jewishcalendar/ZmanimActivity;->getLightCandles(Ljava/util/Calendar;)I

    move-result v30

    .line 806
    shr-int/lit8 v13, v30, 0x10

    const v14, 0xffff

    and-int/2addr v13, v14

    int-to-short v0, v13

    move/from16 v27, v0

    .line 807
    const v13, 0xffff

    and-int v13, v13, v30

    int-to-short v0, v13

    move/from16 v26, v0

    .line 811
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/jewishcalendar/ZmanimActivity;->mAdapter:Lcom/sec/jewishcalendar/ZmanimAdapter;

    .line 812
    .local v12, "adapter":Lcom/sec/jewishcalendar/ZmanimAdapter;
    if-eqz v12, :cond_0

    .line 814
    monitor-enter v12

    .line 815
    :try_start_0
    invoke-virtual {v12}, Lcom/sec/jewishcalendar/ZmanimAdapter;->clear()V

    .line 817
    const v13, 0x7f0a004d

    .line 818
    const v14, 0x7f0a005e

    invoke-virtual/range {v18 .. v18}, Lnet/sourceforge/zmanim/ZmanimCalendar;->getAlosHashachar()Ljava/util/Date;

    move-result-object v15

    .line 819
    const v16, 0x7f0700da

    .line 817
    invoke-virtual/range {v12 .. v16}, Lcom/sec/jewishcalendar/ZmanimAdapter;->add(IILjava/util/Date;I)V

    .line 820
    const v13, 0x7f0a004e

    .line 821
    const v14, 0x7f0a005f

    invoke-virtual/range {v18 .. v18}, Lnet/sourceforge/zmanim/ZmanimCalendar;->getAlos72()Ljava/util/Date;

    move-result-object v15

    .line 822
    const v16, 0x7f0700db

    .line 820
    invoke-virtual/range {v12 .. v16}, Lcom/sec/jewishcalendar/ZmanimAdapter;->add(IILjava/util/Date;I)V

    .line 823
    const v13, 0x7f0a004f

    const v14, 0x7f0a0060

    .line 824
    const-wide v20, 0x4059600000000000L    # 101.5

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lnet/sourceforge/zmanim/ZmanimCalendar;->getSunriseOffsetByDegrees(D)Ljava/util/Date;

    move-result-object v15

    .line 825
    const v16, 0x7f0700dc

    .line 823
    invoke-virtual/range {v12 .. v16}, Lcom/sec/jewishcalendar/ZmanimAdapter;->add(IILjava/util/Date;I)V

    .line 826
    const v13, 0x7f0a0050

    const v14, 0x7f0a0061

    .line 827
    invoke-virtual/range {v18 .. v18}, Lnet/sourceforge/zmanim/ZmanimCalendar;->getSunrise()Ljava/util/Date;

    move-result-object v15

    const v16, 0x7f0700dd

    .line 826
    invoke-virtual/range {v12 .. v16}, Lcom/sec/jewishcalendar/ZmanimAdapter;->add(IILjava/util/Date;I)V

    .line 828
    const v13, 0x7f0a0051

    const v14, 0x7f0a0062

    .line 829
    invoke-virtual/range {v18 .. v18}, Lnet/sourceforge/zmanim/ZmanimCalendar;->getSofZmanShmaMGA()Ljava/util/Date;

    move-result-object v15

    const v16, 0x7f0700de

    .line 828
    invoke-virtual/range {v12 .. v16}, Lcom/sec/jewishcalendar/ZmanimAdapter;->add(IILjava/util/Date;I)V

    .line 830
    const v13, 0x7f0a0052

    const v14, 0x7f0a0063

    .line 831
    invoke-virtual/range {v18 .. v18}, Lnet/sourceforge/zmanim/ZmanimCalendar;->getSofZmanShmaGRA()Ljava/util/Date;

    move-result-object v15

    const v16, 0x7f0700df

    .line 830
    invoke-virtual/range {v12 .. v16}, Lcom/sec/jewishcalendar/ZmanimAdapter;->add(IILjava/util/Date;I)V

    .line 832
    const v13, 0x7f0a0053

    .line 833
    const v14, 0x7f0a0064

    invoke-virtual/range {v18 .. v18}, Lnet/sourceforge/zmanim/ZmanimCalendar;->getSofZmanTfilaMGA()Ljava/util/Date;

    move-result-object v15

    .line 834
    const v16, 0x7f0700e0

    .line 832
    invoke-virtual/range {v12 .. v16}, Lcom/sec/jewishcalendar/ZmanimAdapter;->add(IILjava/util/Date;I)V

    .line 835
    const v13, 0x7f0a0054

    .line 836
    const v14, 0x7f0a0065

    invoke-virtual/range {v18 .. v18}, Lnet/sourceforge/zmanim/ZmanimCalendar;->getSofZmanTfilaGRA()Ljava/util/Date;

    move-result-object v15

    .line 837
    const v16, 0x7f0700e1

    .line 835
    invoke-virtual/range {v12 .. v16}, Lcom/sec/jewishcalendar/ZmanimAdapter;->add(IILjava/util/Date;I)V

    .line 838
    const v13, 0x7f0a0055

    const v14, 0x7f0a0066

    .line 839
    invoke-virtual/range {v18 .. v18}, Lnet/sourceforge/zmanim/ZmanimCalendar;->getChatzos()Ljava/util/Date;

    move-result-object v15

    const v16, 0x7f0700e2

    .line 838
    invoke-virtual/range {v12 .. v16}, Lcom/sec/jewishcalendar/ZmanimAdapter;->add(IILjava/util/Date;I)V

    .line 840
    const v13, 0x7f0a0056

    .line 841
    const v14, 0x7f0a0067

    invoke-virtual/range {v18 .. v18}, Lnet/sourceforge/zmanim/ZmanimCalendar;->getMinchaGedola()Ljava/util/Date;

    move-result-object v15

    .line 842
    const v16, 0x7f0700e3

    .line 840
    invoke-virtual/range {v12 .. v16}, Lcom/sec/jewishcalendar/ZmanimAdapter;->add(IILjava/util/Date;I)V

    .line 843
    const v13, 0x7f0a0057

    const v14, 0x7f0a0068

    .line 844
    invoke-virtual/range {v18 .. v18}, Lnet/sourceforge/zmanim/ZmanimCalendar;->getMinchaKetana()Ljava/util/Date;

    move-result-object v15

    const v16, 0x7f0700e3

    .line 843
    invoke-virtual/range {v12 .. v16}, Lcom/sec/jewishcalendar/ZmanimAdapter;->add(IILjava/util/Date;I)V

    .line 845
    const v13, 0x7f0a0058

    .line 846
    const v14, 0x7f0a0069

    invoke-virtual/range {v18 .. v18}, Lnet/sourceforge/zmanim/ZmanimCalendar;->getPlagHamincha()Ljava/util/Date;

    move-result-object v15

    .line 847
    const v16, 0x7f0700e5

    .line 845
    invoke-virtual/range {v12 .. v16}, Lcom/sec/jewishcalendar/ZmanimAdapter;->add(IILjava/util/Date;I)V

    .line 848
    if-lez v26, :cond_3

    .line 849
    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/sec/jewishcalendar/ZmanimActivity;->getCandlesIcon(II)I

    move-result v17

    .line 850
    .local v17, "iconId":I
    const v13, 0x7f0a0059

    const v14, 0x7f0a006a

    .line 851
    invoke-virtual/range {v18 .. v18}, Lnet/sourceforge/zmanim/ZmanimCalendar;->getCandleLighting()Ljava/util/Date;

    move-result-object v15

    const v16, 0x7f0700e6

    .line 850
    invoke-virtual/range {v12 .. v17}, Lcom/sec/jewishcalendar/ZmanimAdapter;->add(IILjava/util/Date;II)V

    .line 853
    .end local v17    # "iconId":I
    :cond_3
    const v13, 0x7f0a005a

    const v14, 0x7f0a006b

    .line 854
    invoke-virtual/range {v18 .. v18}, Lnet/sourceforge/zmanim/ZmanimCalendar;->getSunset()Ljava/util/Date;

    move-result-object v15

    const v16, 0x7f0700e7

    .line 853
    invoke-virtual/range {v12 .. v16}, Lcom/sec/jewishcalendar/ZmanimAdapter;->add(IILjava/util/Date;I)V

    .line 855
    if-gez v26, :cond_4

    .line 856
    move/from16 v0, v26

    neg-int v13, v0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1, v13}, Lcom/sec/jewishcalendar/ZmanimActivity;->getCandlesIcon(II)I

    move-result v17

    .line 857
    .restart local v17    # "iconId":I
    const v13, 0x7f0a0059

    .line 858
    const v14, 0x7f0a006c

    invoke-virtual/range {v18 .. v18}, Lnet/sourceforge/zmanim/ZmanimCalendar;->getTzais()Ljava/util/Date;

    move-result-object v15

    .line 859
    const v16, 0x7f070108

    .line 857
    invoke-virtual/range {v12 .. v17}, Lcom/sec/jewishcalendar/ZmanimAdapter;->add(IILjava/util/Date;II)V

    .line 861
    .end local v17    # "iconId":I
    :cond_4
    const v13, 0x7f0a005b

    .line 862
    const v14, 0x7f0a006c

    invoke-virtual/range {v18 .. v18}, Lnet/sourceforge/zmanim/ZmanimCalendar;->getTzais()Ljava/util/Date;

    move-result-object v15

    .line 863
    const v16, 0x7f070108

    .line 861
    invoke-virtual/range {v12 .. v16}, Lcom/sec/jewishcalendar/ZmanimAdapter;->add(IILjava/util/Date;I)V

    .line 864
    const v13, 0x7f0a005c

    .line 865
    const v14, 0x7f0a006d

    invoke-virtual/range {v18 .. v18}, Lnet/sourceforge/zmanim/ZmanimCalendar;->getTzais72()Ljava/util/Date;

    move-result-object v15

    .line 866
    const v16, 0x7f070107

    .line 864
    invoke-virtual/range {v12 .. v16}, Lcom/sec/jewishcalendar/ZmanimAdapter;->add(IILjava/util/Date;I)V

    .line 867
    const v20, 0x7f0a005d

    const v21, 0x7f0a006e

    .line 868
    invoke-virtual/range {v18 .. v18}, Lnet/sourceforge/zmanim/ZmanimCalendar;->getChatzos()Ljava/util/Date;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/Date;->getTime()J

    move-result-wide v14

    const-wide/32 v22, 0x2932e00

    add-long v22, v22, v14

    .line 869
    const v24, 0x7f070106

    move-object/from16 v19, v12

    .line 867
    invoke-virtual/range {v19 .. v24}, Lcom/sec/jewishcalendar/ZmanimAdapter;->add(IIJI)V

    .line 814
    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 872
    invoke-virtual {v12}, Lcom/sec/jewishcalendar/ZmanimAdapter;->getCount()I

    move-result v28

    .line 873
    .local v28, "count":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/jewishcalendar/ZmanimActivity;->mList:Landroid/view/ViewGroup;

    if-eqz v13, :cond_0

    .line 875
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/jewishcalendar/ZmanimActivity;->mList:Landroid/view/ViewGroup;

    const v14, 0x7f0e00a7

    invoke-virtual {v13, v14}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v31

    check-cast v31, Landroid/view/ViewGroup;

    .line 876
    .local v31, "list":Landroid/view/ViewGroup;
    if-eqz v31, :cond_0

    .line 878
    invoke-virtual/range {v31 .. v31}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 879
    const/16 v29, 0x0

    .local v29, "i":I
    :goto_0
    move/from16 v0, v29

    move/from16 v1, v28

    if-ge v0, v1, :cond_0

    .line 880
    const/4 v13, 0x0

    move/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v12, v0, v13, v1}, Lcom/sec/jewishcalendar/ZmanimAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    move-object/from16 v0, v31

    invoke-virtual {v0, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 879
    add-int/lit8 v29, v29, 0x1

    goto :goto_0

    .line 814
    .end local v28    # "count":I
    .end local v29    # "i":I
    .end local v31    # "list":Landroid/view/ViewGroup;
    :catchall_0
    move-exception v13

    :try_start_1
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v13
.end method

.method private setLocationName(Landroid/location/Location;Ljava/lang/String;)V
    .locals 2
    .param p1, "loc"    # Landroid/location/Location;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 611
    invoke-virtual {p1}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 612
    .local v0, "extras":Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 613
    new-instance v0, Landroid/os/Bundle;

    .end local v0    # "extras":Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 614
    .restart local v0    # "extras":Landroid/os/Bundle;
    :cond_0
    const-string v1, "formatted_address"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    invoke-virtual {p1, v0}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V

    .line 616
    return-void
.end method


# virtual methods
.method init()V
    .locals 3

    .prologue
    .line 280
    invoke-direct {p0}, Lcom/sec/jewishcalendar/ZmanimActivity;->initLocation()V

    .line 282
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 283
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f030023

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/sec/jewishcalendar/ZmanimActivity;->mList:Landroid/view/ViewGroup;

    .line 284
    iget-object v1, p0, Lcom/sec/jewishcalendar/ZmanimActivity;->mList:Landroid/view/ViewGroup;

    const v2, 0x7f0e00a6

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/jewishcalendar/ZmanimActivity;->mHeader:Landroid/view/View;

    .line 286
    new-instance v1, Lcom/sec/jewishcalendar/ZmanimAdapter;

    invoke-direct {v1, p0}, Lcom/sec/jewishcalendar/ZmanimAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/jewishcalendar/ZmanimActivity;->mAdapter:Lcom/sec/jewishcalendar/ZmanimAdapter;

    .line 288
    iget-object v1, p0, Lcom/sec/jewishcalendar/ZmanimActivity;->mList:Landroid/view/ViewGroup;

    invoke-virtual {p0, v1}, Lcom/sec/jewishcalendar/ZmanimActivity;->setContentView(Landroid/view/View;)V

    .line 289
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v6, 0x400

    .line 184
    const-string v3, "ZmanimActivity"

    const-string v4, "onCreate"

    invoke-static {v3, v4}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 186
    invoke-virtual {p0}, Lcom/sec/jewishcalendar/ZmanimActivity;->init()V

    .line 188
    invoke-virtual {p0}, Lcom/sec/jewishcalendar/ZmanimActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 189
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 190
    .local v0, "date":J
    invoke-virtual {p0, v0, v1}, Lcom/sec/jewishcalendar/ZmanimActivity;->setDate(J)V

    .line 192
    invoke-virtual {p0}, Lcom/sec/jewishcalendar/ZmanimActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 193
    invoke-virtual {p0}, Lcom/sec/jewishcalendar/ZmanimActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/Window;->addFlags(I)V

    .line 198
    :goto_0
    return-void

    .line 196
    :cond_0
    invoke-virtual {p0}, Lcom/sec/jewishcalendar/ZmanimActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .param p1, "id"    # I

    .prologue
    const/4 v3, 0x1

    .line 1133
    if-ne p1, v3, :cond_0

    .line 1134
    const v2, 0x7f0a004a

    invoke-virtual {p0, v2}, Lcom/sec/jewishcalendar/ZmanimActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1135
    .local v0, "desc":Ljava/lang/CharSequence;
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 1136
    .local v1, "progress":Landroid/app/ProgressDialog;
    const v2, 0x7f0a0049

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 1137
    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1138
    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 1139
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1142
    .end local v0    # "desc":Ljava/lang/CharSequence;
    .end local v1    # "progress":Landroid/app/ProgressDialog;
    :goto_0
    return-object v1

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v1

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 260
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 262
    iget-object v0, p0, Lcom/sec/jewishcalendar/ZmanimActivity;->mPopulater:Lcom/sec/jewishcalendar/ZmanimActivity$Populater;

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/sec/jewishcalendar/ZmanimActivity;->mPopulater:Lcom/sec/jewishcalendar/ZmanimActivity$Populater;

    invoke-virtual {v0}, Lcom/sec/jewishcalendar/ZmanimActivity$Populater;->cancel()V

    .line 264
    iput-object v1, p0, Lcom/sec/jewishcalendar/ZmanimActivity;->mPopulater:Lcom/sec/jewishcalendar/ZmanimActivity$Populater;

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/sec/jewishcalendar/ZmanimActivity;->mLocationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_1

    .line 267
    iget-object v0, p0, Lcom/sec/jewishcalendar/ZmanimActivity;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 268
    iput-object v1, p0, Lcom/sec/jewishcalendar/ZmanimActivity;->mLocationManager:Landroid/location/LocationManager;

    .line 270
    :cond_1
    iput-object v1, p0, Lcom/sec/jewishcalendar/ZmanimActivity;->mHeader:Landroid/view/View;

    .line 271
    iget-object v0, p0, Lcom/sec/jewishcalendar/ZmanimActivity;->mAdapter:Lcom/sec/jewishcalendar/ZmanimAdapter;

    if-eqz v0, :cond_2

    .line 272
    iget-object v0, p0, Lcom/sec/jewishcalendar/ZmanimActivity;->mAdapter:Lcom/sec/jewishcalendar/ZmanimAdapter;

    invoke-virtual {v0}, Lcom/sec/jewishcalendar/ZmanimAdapter;->clear()V

    .line 273
    iput-object v1, p0, Lcom/sec/jewishcalendar/ZmanimActivity;->mAdapter:Lcom/sec/jewishcalendar/ZmanimAdapter;

    .line 275
    :cond_2
    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 4
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 643
    sget-object v0, Lcom/sec/jewishcalendar/ZmanimActivity;->mLocation:Landroid/location/Location;

    if-eqz v0, :cond_0

    .line 644
    sget-object v0, Lcom/sec/jewishcalendar/ZmanimActivity;->mLocation:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 653
    :goto_0
    return-void

    .line 647
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/jewishcalendar/ZmanimActivity;->mLocation:Landroid/location/Location;

    .line 648
    iget-object v0, p0, Lcom/sec/jewishcalendar/ZmanimActivity;->mPopulater:Lcom/sec/jewishcalendar/ZmanimActivity$Populater;

    if-eqz v0, :cond_1

    .line 649
    iget-object v0, p0, Lcom/sec/jewishcalendar/ZmanimActivity;->mPopulater:Lcom/sec/jewishcalendar/ZmanimActivity$Populater;

    invoke-virtual {v0}, Lcom/sec/jewishcalendar/ZmanimActivity$Populater;->cancel()V

    .line 651
    :cond_1
    new-instance v0, Lcom/sec/jewishcalendar/ZmanimActivity$Populater;

    invoke-direct {v0, p0, p1}, Lcom/sec/jewishcalendar/ZmanimActivity$Populater;-><init>(Lcom/sec/jewishcalendar/ZmanimActivity;Landroid/location/Location;)V

    iput-object v0, p0, Lcom/sec/jewishcalendar/ZmanimActivity;->mPopulater:Lcom/sec/jewishcalendar/ZmanimActivity$Populater;

    .line 652
    iget-object v0, p0, Lcom/sec/jewishcalendar/ZmanimActivity;->mPopulater:Lcom/sec/jewishcalendar/ZmanimActivity$Populater;

    invoke-virtual {v0}, Lcom/sec/jewishcalendar/ZmanimActivity$Populater;->start()V

    goto :goto_0
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 1149
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1150
    iput-object p2, p0, Lcom/sec/jewishcalendar/ZmanimActivity;->mProgress:Landroid/app/Dialog;

    .line 1152
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 1153
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 662
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 671
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 241
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 243
    iget-object v0, p0, Lcom/sec/jewishcalendar/ZmanimActivity;->mPopulater:Lcom/sec/jewishcalendar/ZmanimActivity$Populater;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/sec/jewishcalendar/ZmanimActivity;->mPopulater:Lcom/sec/jewishcalendar/ZmanimActivity$Populater;

    invoke-virtual {v0}, Lcom/sec/jewishcalendar/ZmanimActivity$Populater;->cancel()V

    .line 246
    :cond_0
    sget-object v0, Lcom/sec/jewishcalendar/ZmanimActivity;->mLocation:Landroid/location/Location;

    if-nez v0, :cond_1

    .line 247
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/jewishcalendar/ZmanimActivity;->showDialog(I)V

    .line 248
    :cond_1
    new-instance v0, Lcom/sec/jewishcalendar/ZmanimActivity$Populater;

    sget-object v1, Lcom/sec/jewishcalendar/ZmanimActivity;->mLocation:Landroid/location/Location;

    invoke-direct {v0, p0, v1}, Lcom/sec/jewishcalendar/ZmanimActivity$Populater;-><init>(Lcom/sec/jewishcalendar/ZmanimActivity;Landroid/location/Location;)V

    iput-object v0, p0, Lcom/sec/jewishcalendar/ZmanimActivity;->mPopulater:Lcom/sec/jewishcalendar/ZmanimActivity$Populater;

    .line 249
    iget-object v0, p0, Lcom/sec/jewishcalendar/ZmanimActivity;->mPopulater:Lcom/sec/jewishcalendar/ZmanimActivity$Populater;

    invoke-virtual {v0}, Lcom/sec/jewishcalendar/ZmanimActivity$Populater;->start()V

    .line 250
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 680
    return-void
.end method

.method setDate(J)V
    .locals 11
    .param p1, "date"    # J

    .prologue
    .line 208
    iget-object v7, p0, Lcom/sec/jewishcalendar/ZmanimActivity;->mDate:Ljava/util/Calendar;

    invoke-virtual {v7, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 210
    iget-object v3, p0, Lcom/sec/jewishcalendar/ZmanimActivity;->mHeader:Landroid/view/View;

    .line 212
    .local v3, "header":Landroid/view/View;
    if-nez v3, :cond_0

    .line 230
    :goto_0
    return-void

    .line 215
    :cond_0
    iget-object v7, p0, Lcom/sec/jewishcalendar/ZmanimActivity;->mDate:Ljava/util/Calendar;

    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    const/16 v7, 0x16

    .line 214
    invoke-static {p0, v8, v9, v7}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    .line 219
    .local v0, "dateGregorian":Ljava/lang/CharSequence;
    const v7, 0x7f0e00a8

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 218
    check-cast v5, Landroid/widget/TextView;

    .line 220
    .local v5, "textGregorian":Landroid/widget/TextView;
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    new-instance v4, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;

    iget-object v7, p0, Lcom/sec/jewishcalendar/ZmanimActivity;->mDate:Ljava/util/Calendar;

    invoke-direct {v4, v7}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;-><init>(Ljava/util/Calendar;)V

    .line 223
    .local v4, "jewishDate":Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;
    const v7, 0x7f0e00a9

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 224
    .local v6, "textHebrew":Landroid/widget/TextView;
    new-instance v2, Lnet/sourceforge/zmanim/hebrewcalendar/HebrewDateFormatter;

    invoke-direct {v2}, Lnet/sourceforge/zmanim/hebrewcalendar/HebrewDateFormatter;-><init>()V

    .line 225
    .local v2, "formatter":Lnet/sourceforge/zmanim/hebrewcalendar/HebrewDateFormatter;
    invoke-static {}, Lcom/samsung/android/text/Semitic;->isLocaleRTL()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 226
    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Lnet/sourceforge/zmanim/hebrewcalendar/HebrewDateFormatter;->setHebrewFormat(Z)V

    .line 228
    :cond_1
    invoke-virtual {v2, v4}, Lnet/sourceforge/zmanim/hebrewcalendar/HebrewDateFormatter;->format(Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;)Ljava/lang/String;

    move-result-object v1

    .line 229
    .local v1, "dateHebrew":Ljava/lang/CharSequence;
    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
