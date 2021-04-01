.class public abstract Lnet/sourceforge/zmanim/util/AstronomicalCalculator;
.super Ljava/lang/Object;
.source "AstronomicalCalculator.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final GEOMETRIC_ZENITH:D = 90.0


# instance fields
.field private earthRadius:D

.field private refraction:D

.field private solarRadius:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-wide v0, 0x3fe2222222222222L    # 0.5666666666666667

    iput-wide v0, p0, Lnet/sourceforge/zmanim/util/AstronomicalCalculator;->refraction:D

    .line 43
    const-wide v0, 0x3fd1111111111111L    # 0.26666666666666666

    iput-wide v0, p0, Lnet/sourceforge/zmanim/util/AstronomicalCalculator;->solarRadius:D

    .line 52
    const-wide v0, 0x40b8d4e666666666L    # 6356.9

    iput-wide v0, p0, Lnet/sourceforge/zmanim/util/AstronomicalCalculator;->earthRadius:D

    .line 28
    return-void
.end method

.method public static getDefault()Lnet/sourceforge/zmanim/util/AstronomicalCalculator;
    .locals 1

    .prologue
    .line 85
    new-instance v0, Lnet/sourceforge/zmanim/util/SunTimesCalculator;

    invoke-direct {v0}, Lnet/sourceforge/zmanim/util/SunTimesCalculator;-><init>()V

    return-object v0
.end method


# virtual methods
.method adjustZenith(DD)D
    .locals 7
    .param p1, "zenith"    # D
    .param p3, "elevation"    # D

    .prologue
    .line 199
    move-wide v0, p1

    .line 200
    .local v0, "adjustedZenith":D
    const-wide v2, 0x4056800000000000L    # 90.0

    cmpl-double v2, p1, v2

    if-nez v2, :cond_0

    .line 201
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/util/AstronomicalCalculator;->getSolarRadius()D

    move-result-wide v2

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/util/AstronomicalCalculator;->getRefraction()D

    move-result-wide v4

    add-double/2addr v2, v4

    invoke-virtual {p0, p3, p4}, Lnet/sourceforge/zmanim/util/AstronomicalCalculator;->getElevationAdjustment(D)D

    move-result-wide v4

    add-double/2addr v2, v4

    add-double v0, p1, v2

    .line 203
    :cond_0
    return-wide v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 5

    .prologue
    .line 269
    const/4 v1, 0x0

    .line 271
    .local v1, "clone":Lnet/sourceforge/zmanim/util/AstronomicalCalculator;
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lnet/sourceforge/zmanim/util/AstronomicalCalculator;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    :goto_0
    return-object v1

    .line 272
    :catch_0
    move-exception v2

    .line 273
    .local v2, "cnse":Ljava/lang/CloneNotSupportedException;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "Required by the compiler. Should never be reached since we implement clone()"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public abstract getCalculatorName()Ljava/lang/String;
.end method

.method public getEarthRadius()D
    .locals 2

    .prologue
    .line 60
    iget-wide v0, p0, Lnet/sourceforge/zmanim/util/AstronomicalCalculator;->earthRadius:D

    return-wide v0
.end method

.method getElevationAdjustment(D)D
    .locals 9
    .param p1, "elevation"    # D

    .prologue
    .line 174
    iget-wide v2, p0, Lnet/sourceforge/zmanim/util/AstronomicalCalculator;->earthRadius:D

    iget-wide v4, p0, Lnet/sourceforge/zmanim/util/AstronomicalCalculator;->earthRadius:D

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double v6, p1, v6

    add-double/2addr v4, v6

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->acos(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    .line 175
    .local v0, "elevationAdjustment":D
    return-wide v0
.end method

.method getRefraction()D
    .locals 2

    .prologue
    .line 216
    iget-wide v0, p0, Lnet/sourceforge/zmanim/util/AstronomicalCalculator;->refraction:D

    return-wide v0
.end method

.method getSolarRadius()D
    .locals 2

    .prologue
    .line 250
    iget-wide v0, p0, Lnet/sourceforge/zmanim/util/AstronomicalCalculator;->solarRadius:D

    return-wide v0
.end method

.method public abstract getUTCSunrise(Ljava/util/Calendar;Lnet/sourceforge/zmanim/util/GeoLocation;DZ)D
.end method

.method public abstract getUTCSunset(Ljava/util/Calendar;Lnet/sourceforge/zmanim/util/GeoLocation;DZ)D
.end method

.method public setEarthRadius(D)V
    .locals 1
    .param p1, "earthRadius"    # D

    .prologue
    .line 70
    iput-wide p1, p0, Lnet/sourceforge/zmanim/util/AstronomicalCalculator;->earthRadius:D

    .line 71
    return-void
.end method

.method public setRefraction(D)V
    .locals 1
    .param p1, "refraction"    # D

    .prologue
    .line 229
    iput-wide p1, p0, Lnet/sourceforge/zmanim/util/AstronomicalCalculator;->refraction:D

    .line 230
    return-void
.end method

.method public setSolarRadius(D)V
    .locals 1
    .param p1, "solarRadius"    # D

    .prologue
    .line 261
    iput-wide p1, p0, Lnet/sourceforge/zmanim/util/AstronomicalCalculator;->solarRadius:D

    .line 262
    return-void
.end method
