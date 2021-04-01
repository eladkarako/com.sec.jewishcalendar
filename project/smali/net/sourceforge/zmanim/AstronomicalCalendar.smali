.class public Lnet/sourceforge/zmanim/AstronomicalCalendar;
.super Ljava/lang/Object;
.source "AstronomicalCalendar.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final ASTRONOMICAL_ZENITH:D = 108.0

.field public static final CIVIL_ZENITH:D = 96.0

.field public static final GEOMETRIC_ZENITH:D = 90.0

.field static final HOUR_MILLIS:J = 0x36ee80L

.field static final MINUTE_MILLIS:J = 0xea60L

.field public static final NAUTICAL_ZENITH:D = 102.0


# instance fields
.field private astronomicalCalculator:Lnet/sourceforge/zmanim/util/AstronomicalCalculator;

.field private calendar:Ljava/util/Calendar;

.field private geoLocation:Lnet/sourceforge/zmanim/util/GeoLocation;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 395
    new-instance v0, Lnet/sourceforge/zmanim/util/GeoLocation;

    invoke-direct {v0}, Lnet/sourceforge/zmanim/util/GeoLocation;-><init>()V

    invoke-direct {p0, v0}, Lnet/sourceforge/zmanim/AstronomicalCalendar;-><init>(Lnet/sourceforge/zmanim/util/GeoLocation;)V

    .line 396
    return-void
.end method

.method public constructor <init>(Lnet/sourceforge/zmanim/util/GeoLocation;)V
    .locals 1
    .param p1, "geoLocation"    # Lnet/sourceforge/zmanim/util/GeoLocation;

    .prologue
    .line 405
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 406
    invoke-virtual {p1}, Lnet/sourceforge/zmanim/util/GeoLocation;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->setCalendar(Ljava/util/Calendar;)V

    .line 407
    invoke-virtual {p0, p1}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->setGeoLocation(Lnet/sourceforge/zmanim/util/GeoLocation;)V

    .line 408
    invoke-static {}, Lnet/sourceforge/zmanim/util/AstronomicalCalculator;->getDefault()Lnet/sourceforge/zmanim/util/AstronomicalCalculator;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->setAstronomicalCalculator(Lnet/sourceforge/zmanim/util/AstronomicalCalculator;)V

    .line 409
    return-void
.end method

.method private getAdjustedSunsetDate(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;
    .locals 3
    .param p1, "sunset"    # Ljava/util/Date;
    .param p2, "sunrise"    # Ljava/util/Date;

    .prologue
    .line 244
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v1

    if-ltz v1, :cond_0

    .line 245
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getCalendar()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 246
    .local v0, "clonedCalendar":Ljava/util/Calendar;
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 247
    const/4 v1, 0x5

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 248
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    .line 250
    .end local v0    # "clonedCalendar":Ljava/util/Calendar;
    .end local p1    # "sunset":Ljava/util/Date;
    :cond_0
    return-object p1
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 735
    const/4 v1, 0x0

    .line 737
    .local v1, "clone":Lnet/sourceforge/zmanim/AstronomicalCalendar;
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lnet/sourceforge/zmanim/AstronomicalCalendar;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 741
    :goto_0
    if-nez v1, :cond_0

    .line 742
    const/4 v1, 0x0

    .line 746
    .end local v1    # "clone":Lnet/sourceforge/zmanim/AstronomicalCalendar;
    :goto_1
    return-object v1

    .line 743
    .restart local v1    # "clone":Lnet/sourceforge/zmanim/AstronomicalCalendar;
    :cond_0
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getGeoLocation()Lnet/sourceforge/zmanim/util/GeoLocation;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sourceforge/zmanim/util/GeoLocation;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sourceforge/zmanim/util/GeoLocation;

    invoke-virtual {v1, v2}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->setGeoLocation(Lnet/sourceforge/zmanim/util/GeoLocation;)V

    .line 744
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getCalendar()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->setCalendar(Ljava/util/Calendar;)V

    .line 745
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getAstronomicalCalculator()Lnet/sourceforge/zmanim/util/AstronomicalCalculator;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sourceforge/zmanim/util/AstronomicalCalculator;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sourceforge/zmanim/util/AstronomicalCalculator;

    invoke-virtual {v1, v2}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->setAstronomicalCalculator(Lnet/sourceforge/zmanim/util/AstronomicalCalculator;)V

    goto :goto_1

    .line 738
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 634
    if-ne p0, p1, :cond_1

    .line 641
    :cond_0
    :goto_0
    return v1

    .line 637
    :cond_1
    instance-of v3, p1, Lnet/sourceforge/zmanim/AstronomicalCalendar;

    if-nez v3, :cond_2

    move v1, v2

    .line 638
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 640
    check-cast v0, Lnet/sourceforge/zmanim/AstronomicalCalendar;

    .line 641
    .local v0, "aCal":Lnet/sourceforge/zmanim/AstronomicalCalendar;
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getCalendar()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v0}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getCalendar()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getGeoLocation()Lnet/sourceforge/zmanim/util/GeoLocation;

    move-result-object v3

    invoke-virtual {v0}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getGeoLocation()Lnet/sourceforge/zmanim/util/GeoLocation;

    move-result-object v4

    invoke-virtual {v3, v4}, Lnet/sourceforge/zmanim/util/GeoLocation;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 642
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getAstronomicalCalculator()Lnet/sourceforge/zmanim/util/AstronomicalCalculator;

    move-result-object v3

    invoke-virtual {v0}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getAstronomicalCalculator()Lnet/sourceforge/zmanim/util/AstronomicalCalculator;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    .line 641
    goto :goto_0
.end method

.method public getAstronomicalCalculator()Lnet/sourceforge/zmanim/util/AstronomicalCalculator;
    .locals 1

    .prologue
    .line 685
    iget-object v0, p0, Lnet/sourceforge/zmanim/AstronomicalCalendar;->astronomicalCalculator:Lnet/sourceforge/zmanim/util/AstronomicalCalculator;

    return-object v0
.end method

.method public getBeginAstronomicalTwilight()Ljava/util/Date;
    .locals 2

    .prologue
    .line 194
    const-wide/high16 v0, 0x405b000000000000L    # 108.0

    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getSunriseOffsetByDegrees(D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getBeginCivilTwilight()Ljava/util/Date;
    .locals 2

    .prologue
    .line 171
    const-wide/high16 v0, 0x4058000000000000L    # 96.0

    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getSunriseOffsetByDegrees(D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getBeginNauticalTwilight()Ljava/util/Date;
    .locals 2

    .prologue
    .line 182
    const-wide v0, 0x4059800000000000L    # 102.0

    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getSunriseOffsetByDegrees(D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getCalendar()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 709
    iget-object v0, p0, Lnet/sourceforge/zmanim/AstronomicalCalendar;->calendar:Ljava/util/Calendar;

    return-object v0
.end method

.method protected getDateFromTime(D)Ljava/util/Date;
    .locals 13
    .param p1, "time"    # D

    .prologue
    .line 538
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 539
    const/4 v8, 0x0

    .line 569
    :goto_0
    return-object v8

    .line 541
    :cond_0
    move-wide v2, p1

    .line 543
    .local v2, "calculatedTime":D
    const-string v8, "UTC"

    invoke-static {v8}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 544
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 545
    const/4 v8, 0x1

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getCalendar()Ljava/util/Calendar;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ljava/util/Calendar;->get(I)I

    move-result v9

    invoke-virtual {v0, v8, v9}, Ljava/util/Calendar;->set(II)V

    .line 546
    const/4 v8, 0x2

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getCalendar()Ljava/util/Calendar;

    move-result-object v9

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Ljava/util/Calendar;->get(I)I

    move-result v9

    invoke-virtual {v0, v8, v9}, Ljava/util/Calendar;->set(II)V

    .line 547
    const/4 v8, 0x5

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getCalendar()Ljava/util/Calendar;

    move-result-object v9

    const/4 v10, 0x5

    invoke-virtual {v9, v10}, Ljava/util/Calendar;->get(I)I

    move-result v9

    invoke-virtual {v0, v8, v9}, Ljava/util/Calendar;->set(II)V

    .line 548
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getCalendar()Ljava/util/Calendar;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v8

    int-to-double v8, v8

    const-wide v10, 0x414b774000000000L    # 3600000.0

    div-double v4, v8, v10

    .line 552
    .local v4, "gmtOffset":D
    add-double v8, p1, v4

    const-wide/high16 v10, 0x4038000000000000L    # 24.0

    cmpl-double v8, v8, v10

    if-lez v8, :cond_2

    .line 553
    const/4 v8, 0x5

    const/4 v9, -0x1

    invoke-virtual {v0, v8, v9}, Ljava/util/Calendar;->add(II)V

    .line 558
    :cond_1
    :goto_1
    double-to-int v1, v2

    .line 559
    .local v1, "hours":I
    int-to-double v8, v1

    sub-double/2addr v2, v8

    .line 560
    const-wide/high16 v8, 0x404e000000000000L    # 60.0

    mul-double/2addr v2, v8

    double-to-int v6, v2

    .line 561
    .local v6, "minutes":I
    int-to-double v8, v6

    sub-double/2addr v2, v8

    .line 562
    const-wide/high16 v8, 0x404e000000000000L    # 60.0

    mul-double/2addr v2, v8

    double-to-int v7, v2

    .line 563
    .local v7, "seconds":I
    int-to-double v8, v7

    sub-double/2addr v2, v8

    .line 565
    const/16 v8, 0xb

    invoke-virtual {v0, v8, v1}, Ljava/util/Calendar;->set(II)V

    .line 566
    const/16 v8, 0xc

    invoke-virtual {v0, v8, v6}, Ljava/util/Calendar;->set(II)V

    .line 567
    const/16 v8, 0xd

    invoke-virtual {v0, v8, v7}, Ljava/util/Calendar;->set(II)V

    .line 568
    const/16 v8, 0xe

    const-wide v10, 0x408f400000000000L    # 1000.0

    mul-double/2addr v10, v2

    double-to-int v9, v10

    invoke-virtual {v0, v8, v9}, Ljava/util/Calendar;->set(II)V

    .line 569
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    goto/16 :goto_0

    .line 554
    .end local v1    # "hours":I
    .end local v6    # "minutes":I
    .end local v7    # "seconds":I
    :cond_2
    add-double v8, p1, v4

    const-wide/16 v10, 0x0

    cmpg-double v8, v8, v10

    if-gez v8, :cond_1

    .line 555
    const/4 v8, 0x5

    const/4 v9, 0x1

    invoke-virtual {v0, v8, v9}, Ljava/util/Calendar;->add(II)V

    goto :goto_1
.end method

.method public getEndAstronomicalTwilight()Ljava/util/Date;
    .locals 2

    .prologue
    .line 307
    const-wide/high16 v0, 0x405b000000000000L    # 108.0

    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getSunsetOffsetByDegrees(D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getEndCivilTwilight()Ljava/util/Date;
    .locals 2

    .prologue
    .line 283
    const-wide/high16 v0, 0x4058000000000000L    # 96.0

    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getSunsetOffsetByDegrees(D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getEndNauticalTwilight()Ljava/util/Date;
    .locals 2

    .prologue
    .line 295
    const-wide v0, 0x4059800000000000L    # 102.0

    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getSunsetOffsetByDegrees(D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getGeoLocation()Lnet/sourceforge/zmanim/util/GeoLocation;
    .locals 1

    .prologue
    .line 664
    iget-object v0, p0, Lnet/sourceforge/zmanim/AstronomicalCalendar;->geoLocation:Lnet/sourceforge/zmanim/util/GeoLocation;

    return-object v0
.end method

.method public getSeaLevelSunrise()Ljava/util/Date;
    .locals 4

    .prologue
    .line 155
    const-wide v2, 0x4056800000000000L    # 90.0

    invoke-virtual {p0, v2, v3}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getUTCSeaLevelSunrise(D)D

    move-result-wide v0

    .line 156
    .local v0, "sunrise":D
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 157
    const/4 v2, 0x0

    .line 159
    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getDateFromTime(D)Ljava/util/Date;

    move-result-object v2

    goto :goto_0
.end method

.method public getSeaLevelSunset()Ljava/util/Date;
    .locals 4

    .prologue
    .line 267
    const-wide v2, 0x4056800000000000L    # 90.0

    invoke-virtual {p0, v2, v3}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getUTCSeaLevelSunset(D)D

    move-result-wide v0

    .line 268
    .local v0, "sunset":D
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 269
    const/4 v2, 0x0

    .line 271
    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getDateFromTime(D)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getSeaLevelSunrise()Ljava/util/Date;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getAdjustedSunsetDate(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v2

    goto :goto_0
.end method

.method public getSunTransit()Ljava/util/Date;
    .locals 6

    .prologue
    .line 526
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getSunrise()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getTemporalHour()J

    move-result-wide v2

    const-wide/16 v4, 0x6

    mul-long/2addr v2, v4

    invoke-virtual {p0, v0, v2, v3}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getTimeOffset(Ljava/util/Date;J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getSunrise()Ljava/util/Date;
    .locals 4

    .prologue
    .line 133
    const-wide v2, 0x4056800000000000L    # 90.0

    invoke-virtual {p0, v2, v3}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getUTCSunrise(D)D

    move-result-wide v0

    .line 134
    .local v0, "sunrise":D
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 135
    const/4 v2, 0x0

    .line 137
    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getDateFromTime(D)Ljava/util/Date;

    move-result-object v2

    goto :goto_0
.end method

.method public getSunriseOffsetByDegrees(D)Ljava/util/Date;
    .locals 3
    .param p1, "offsetZenith"    # D

    .prologue
    .line 359
    invoke-virtual {p0, p1, p2}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getUTCSunrise(D)D

    move-result-wide v0

    .line 360
    .local v0, "dawn":D
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 361
    const/4 v2, 0x0

    .line 363
    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getDateFromTime(D)Ljava/util/Date;

    move-result-object v2

    goto :goto_0
.end method

.method public getSunriseSolarDipFromOffset(D)D
    .locals 9
    .param p1, "minutes"    # D

    .prologue
    .line 584
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getSeaLevelSunrise()Ljava/util/Date;

    move-result-object v2

    .line 585
    .local v2, "offsetByDegrees":Ljava/util/Date;
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getSeaLevelSunrise()Ljava/util/Date;

    move-result-object v4

    const-wide v6, 0x40ed4c0000000000L    # 60000.0

    mul-double/2addr v6, p1

    neg-double v6, v6

    invoke-virtual {p0, v4, v6, v7}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getTimeOffset(Ljava/util/Date;D)Ljava/util/Date;

    move-result-object v3

    .line 587
    .local v3, "offsetByTime":Ljava/util/Date;
    new-instance v0, Ljava/math/BigDecimal;

    const/4 v4, 0x0

    invoke-direct {v0, v4}, Ljava/math/BigDecimal;-><init>(I)V

    .line 588
    .local v0, "degrees":Ljava/math/BigDecimal;
    new-instance v1, Ljava/math/BigDecimal;

    const-string v4, "0.0001"

    invoke-direct {v1, v4}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 589
    .local v1, "incrementor":Ljava/math/BigDecimal;
    :goto_0
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gtz v4, :cond_0

    .line 593
    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v4

    return-wide v4

    .line 590
    :cond_0
    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 591
    const-wide v4, 0x4056800000000000L    # 90.0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v6

    add-double/2addr v4, v6

    invoke-virtual {p0, v4, v5}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getSunriseOffsetByDegrees(D)Ljava/util/Date;

    move-result-object v2

    goto :goto_0
.end method

.method public getSunset()Ljava/util/Date;
    .locals 4

    .prologue
    .line 217
    const-wide v2, 0x4056800000000000L    # 90.0

    invoke-virtual {p0, v2, v3}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getUTCSunset(D)D

    move-result-wide v0

    .line 218
    .local v0, "sunset":D
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 219
    const/4 v2, 0x0

    .line 221
    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getDateFromTime(D)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getSunrise()Ljava/util/Date;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getAdjustedSunsetDate(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v2

    goto :goto_0
.end method

.method public getSunsetOffsetByDegrees(D)Ljava/util/Date;
    .locals 5
    .param p1, "offsetZenith"    # D

    .prologue
    .line 382
    invoke-virtual {p0, p1, p2}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getUTCSunset(D)D

    move-result-wide v0

    .line 383
    .local v0, "sunset":D
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 384
    const/4 v2, 0x0

    .line 386
    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getDateFromTime(D)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {p0, p1, p2}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getSunriseOffsetByDegrees(D)Ljava/util/Date;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getAdjustedSunsetDate(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v2

    goto :goto_0
.end method

.method public getSunsetSolarDipFromOffset(D)D
    .locals 9
    .param p1, "minutes"    # D

    .prologue
    .line 608
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getSeaLevelSunset()Ljava/util/Date;

    move-result-object v2

    .line 609
    .local v2, "offsetByDegrees":Ljava/util/Date;
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getSeaLevelSunset()Ljava/util/Date;

    move-result-object v4

    const-wide v6, 0x40ed4c0000000000L    # 60000.0

    mul-double/2addr v6, p1

    invoke-virtual {p0, v4, v6, v7}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getTimeOffset(Ljava/util/Date;D)Ljava/util/Date;

    move-result-object v3

    .line 611
    .local v3, "offsetByTime":Ljava/util/Date;
    new-instance v0, Ljava/math/BigDecimal;

    const/4 v4, 0x0

    invoke-direct {v0, v4}, Ljava/math/BigDecimal;-><init>(I)V

    .line 612
    .local v0, "degrees":Ljava/math/BigDecimal;
    new-instance v1, Ljava/math/BigDecimal;

    const-string v4, "0.0001"

    invoke-direct {v1, v4}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 613
    .local v1, "incrementor":Ljava/math/BigDecimal;
    :goto_0
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-ltz v4, :cond_0

    .line 617
    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v4

    return-wide v4

    .line 614
    :cond_0
    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 615
    const-wide v4, 0x4056800000000000L    # 90.0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v6

    add-double/2addr v4, v6

    invoke-virtual {p0, v4, v5}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getSunsetOffsetByDegrees(D)Ljava/util/Date;

    move-result-object v2

    goto :goto_0
.end method

.method public getTemporalHour()J
    .locals 2

    .prologue
    .line 490
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getSunrise()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getSunset()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getTemporalHour(Ljava/util/Date;Ljava/util/Date;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTemporalHour(Ljava/util/Date;Ljava/util/Date;)J
    .locals 4
    .param p1, "sunrise"    # Ljava/util/Date;
    .param p2, "sunset"    # Ljava/util/Date;

    .prologue
    .line 508
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 509
    :cond_0
    const-wide/high16 v0, -0x8000000000000000L

    .line 511
    :goto_0
    return-wide v0

    :cond_1
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xc

    div-long/2addr v0, v2

    goto :goto_0
.end method

.method public getTimeOffset(Ljava/util/Date;D)Ljava/util/Date;
    .locals 2
    .param p1, "time"    # Ljava/util/Date;
    .param p2, "offset"    # D

    .prologue
    .line 321
    double-to-long v0, p2

    invoke-virtual {p0, p1, v0, v1}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getTimeOffset(Ljava/util/Date;J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getTimeOffset(Ljava/util/Date;J)Ljava/util/Date;
    .locals 4
    .param p1, "time"    # Ljava/util/Date;
    .param p2, "offset"    # J

    .prologue
    .line 337
    if-eqz p1, :cond_0

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p2, v0

    if-nez v0, :cond_1

    .line 338
    :cond_0
    const/4 v0, 0x0

    .line 340
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    add-long/2addr v2, p2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    goto :goto_0
.end method

.method public getUTCSeaLevelSunrise(D)D
    .locals 7
    .param p1, "zenith"    # D

    .prologue
    .line 440
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getAstronomicalCalculator()Lnet/sourceforge/zmanim/util/AstronomicalCalculator;

    move-result-object v1

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getCalendar()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getGeoLocation()Lnet/sourceforge/zmanim/util/GeoLocation;

    move-result-object v3

    const/4 v6, 0x0

    move-wide v4, p1

    invoke-virtual/range {v1 .. v6}, Lnet/sourceforge/zmanim/util/AstronomicalCalculator;->getUTCSunrise(Ljava/util/Calendar;Lnet/sourceforge/zmanim/util/GeoLocation;DZ)D

    move-result-wide v0

    return-wide v0
.end method

.method public getUTCSeaLevelSunset(D)D
    .locals 7
    .param p1, "zenith"    # D

    .prologue
    .line 474
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getAstronomicalCalculator()Lnet/sourceforge/zmanim/util/AstronomicalCalculator;

    move-result-object v1

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getCalendar()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getGeoLocation()Lnet/sourceforge/zmanim/util/GeoLocation;

    move-result-object v3

    const/4 v6, 0x0

    move-wide v4, p1

    invoke-virtual/range {v1 .. v6}, Lnet/sourceforge/zmanim/util/AstronomicalCalculator;->getUTCSunset(Ljava/util/Calendar;Lnet/sourceforge/zmanim/util/GeoLocation;DZ)D

    move-result-wide v0

    return-wide v0
.end method

.method public getUTCSunrise(D)D
    .locals 7
    .param p1, "zenith"    # D

    .prologue
    .line 422
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getAstronomicalCalculator()Lnet/sourceforge/zmanim/util/AstronomicalCalculator;

    move-result-object v1

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getCalendar()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getGeoLocation()Lnet/sourceforge/zmanim/util/GeoLocation;

    move-result-object v3

    const/4 v6, 0x1

    move-wide v4, p1

    invoke-virtual/range {v1 .. v6}, Lnet/sourceforge/zmanim/util/AstronomicalCalculator;->getUTCSunrise(Ljava/util/Calendar;Lnet/sourceforge/zmanim/util/GeoLocation;DZ)D

    move-result-wide v0

    return-wide v0
.end method

.method public getUTCSunset(D)D
    .locals 7
    .param p1, "zenith"    # D

    .prologue
    .line 455
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getAstronomicalCalculator()Lnet/sourceforge/zmanim/util/AstronomicalCalculator;

    move-result-object v1

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getCalendar()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getGeoLocation()Lnet/sourceforge/zmanim/util/GeoLocation;

    move-result-object v3

    const/4 v6, 0x1

    move-wide v4, p1

    invoke-virtual/range {v1 .. v6}, Lnet/sourceforge/zmanim/util/AstronomicalCalculator;->getUTCSunset(Ljava/util/Calendar;Lnet/sourceforge/zmanim/util/GeoLocation;DZ)D

    move-result-wide v0

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 649
    const/16 v0, 0x11

    .line 650
    .local v0, "result":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x275

    .line 651
    mul-int/lit8 v1, v0, 0x25

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getCalendar()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 652
    mul-int/lit8 v1, v0, 0x25

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getGeoLocation()Lnet/sourceforge/zmanim/util/GeoLocation;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sourceforge/zmanim/util/GeoLocation;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 653
    mul-int/lit8 v1, v0, 0x25

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getAstronomicalCalculator()Lnet/sourceforge/zmanim/util/AstronomicalCalculator;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 654
    return v0
.end method

.method public setAstronomicalCalculator(Lnet/sourceforge/zmanim/util/AstronomicalCalculator;)V
    .locals 0
    .param p1, "astronomicalCalculator"    # Lnet/sourceforge/zmanim/util/AstronomicalCalculator;

    .prologue
    .line 700
    iput-object p1, p0, Lnet/sourceforge/zmanim/AstronomicalCalendar;->astronomicalCalculator:Lnet/sourceforge/zmanim/util/AstronomicalCalculator;

    .line 701
    return-void
.end method

.method public setCalendar(Ljava/util/Calendar;)V
    .locals 2
    .param p1, "calendar"    # Ljava/util/Calendar;

    .prologue
    .line 717
    iput-object p1, p0, Lnet/sourceforge/zmanim/AstronomicalCalendar;->calendar:Ljava/util/Calendar;

    .line 718
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getGeoLocation()Lnet/sourceforge/zmanim/util/GeoLocation;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 719
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getCalendar()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getGeoLocation()Lnet/sourceforge/zmanim/util/GeoLocation;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sourceforge/zmanim/util/GeoLocation;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 721
    :cond_0
    return-void
.end method

.method public setGeoLocation(Lnet/sourceforge/zmanim/util/GeoLocation;)V
    .locals 2
    .param p1, "geoLocation"    # Lnet/sourceforge/zmanim/util/GeoLocation;

    .prologue
    .line 674
    iput-object p1, p0, Lnet/sourceforge/zmanim/AstronomicalCalendar;->geoLocation:Lnet/sourceforge/zmanim/util/GeoLocation;

    .line 675
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getCalendar()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {p1}, Lnet/sourceforge/zmanim/util/GeoLocation;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 676
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 627
    invoke-static {p0}, Lnet/sourceforge/zmanim/util/ZmanimFormatter;->toXML(Lnet/sourceforge/zmanim/AstronomicalCalendar;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
