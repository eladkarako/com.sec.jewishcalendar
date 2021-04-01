.class public Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;
.super Ljava/lang/Object;
.source "JewishDate.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field public static final ADAR:I = 0xc

.field public static final ADAR_II:I = 0xd

.field public static final AV:I = 0x5

.field private static final CHALAKIM_MOLAD_TOHU:I = 0x7b24

.field private static final CHALAKIM_PER_DAY:I = 0x6540

.field private static final CHALAKIM_PER_HOUR:I = 0x438

.field private static final CHALAKIM_PER_MINUTE:I = 0x12

.field private static final CHALAKIM_PER_MONTH:J = 0xbadf9L

.field public static final CHASERIM:I = 0x0

.field public static final CHESHVAN:I = 0x8

.field public static final ELUL:I = 0x6

.field public static final IYAR:I = 0x2

.field private static final JEWISH_EPOCH:I = -0x14f4f5

.field public static final KESIDRAN:I = 0x1

.field public static final KISLEV:I = 0x9

.field public static final NISSAN:I = 0x1

.field public static final SHELAIMIM:I = 0x2

.field public static final SHEVAT:I = 0xb

.field public static final SIVAN:I = 0x3

.field public static final TAMMUZ:I = 0x4

.field public static final TEVES:I = 0xa

.field public static final TISHREI:I = 0x7


# instance fields
.field private dayOfWeek:I

.field private gregorianAbsDate:I

.field private gregorianDayOfMonth:I

.field private gregorianMonth:I

.field private gregorianYear:I

.field private jewishDay:I

.field private jewishMonth:I

.field private jewishYear:I

.field private moladChalakim:I

.field private moladHours:I

.field private moladMinutes:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 937
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 938
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->resetDate()V

    .line 939
    return-void
.end method

.method public constructor <init>(III)V
    .locals 0
    .param p1, "jewishYear"    # I
    .param p2, "jewishMonth"    # I
    .param p3, "jewishDayOfMonth"    # I

    .prologue
    .line 930
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 931
    invoke-virtual {p0, p1, p2, p3}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->setJewishDate(III)V

    .line 932
    return-void
.end method

.method public constructor <init>(J)V
    .locals 5
    .param p1, "molad"    # J

    .prologue
    .line 862
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 863
    invoke-static {p1, p2}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->moladToAbsDate(J)I

    move-result v2

    invoke-direct {p0, v2}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->absDateToDate(I)V

    .line 865
    const-wide/16 v2, 0x6540

    div-long v2, p1, v2

    long-to-int v0, v2

    .line 866
    .local v0, "conjunctionDay":I
    mul-int/lit16 v2, v0, 0x6540

    int-to-long v2, v2

    sub-long v2, p1, v2

    long-to-int v1, v2

    .line 867
    .local v1, "conjunctionParts":I
    invoke-direct {p0, v1}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->setMoladTime(I)V

    .line 868
    return-void
.end method

.method public constructor <init>(Ljava/util/Calendar;)V
    .locals 0
    .param p1, "calendar"    # Ljava/util/Calendar;

    .prologue
    .line 961
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 962
    invoke-virtual {p0, p1}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->setDate(Ljava/util/Calendar;)V

    .line 963
    return-void
.end method

.method public constructor <init>(Ljava/util/Date;)V
    .locals 0
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 949
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 950
    invoke-virtual {p0, p1}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->setDate(Ljava/util/Date;)V

    .line 951
    return-void
.end method

.method private absDateToDate(I)V
    .locals 5
    .param p1, "absDate"    # I

    .prologue
    const/4 v4, 0x1

    .line 327
    div-int/lit16 v2, p1, 0x16e

    .line 328
    .local v2, "year":I
    :goto_0
    add-int/lit8 v3, v2, 0x1

    invoke-static {v3, v4, v4}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->gregorianDateToAbsDate(III)I

    move-result v3

    if-ge p1, v3, :cond_0

    .line 332
    const/4 v1, 0x1

    .line 333
    .local v1, "month":I
    :goto_1
    invoke-static {v1, v2}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->getLastDayOfGregorianMonth(II)I

    move-result v3

    invoke-static {v2, v1, v3}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->gregorianDateToAbsDate(III)I

    move-result v3

    if-gt p1, v3, :cond_1

    .line 337
    invoke-static {v2, v1, v4}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->gregorianDateToAbsDate(III)I

    move-result v3

    sub-int v3, p1, v3

    add-int/lit8 v0, v3, 0x1

    .line 338
    .local v0, "dayOfMonth":I
    invoke-direct {p0, v2, v1, v0}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->setInternalGregorianDate(III)V

    .line 339
    return-void

    .line 329
    .end local v0    # "dayOfMonth":I
    .end local v1    # "month":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 334
    .restart local v1    # "month":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private absDateToJewishDate()V
    .locals 6

    .prologue
    const/4 v2, 0x7

    const/4 v5, 0x1

    .line 781
    iget v0, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->gregorianAbsDate:I

    const v1, -0x14f4f5

    add-int/2addr v0, v1

    div-int/lit16 v0, v0, 0x16e

    iput v0, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->jewishYear:I

    .line 783
    :goto_0
    iget v0, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->gregorianAbsDate:I

    iget v1, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->jewishYear:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1, v2, v5}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->jewishDateToAbsDate(III)I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 787
    iget v0, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->gregorianAbsDate:I

    iget v1, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->jewishYear:I

    invoke-static {v1, v5, v5}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->jewishDateToAbsDate(III)I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 788
    iput v2, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->jewishMonth:I

    .line 792
    :goto_1
    iget v0, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->gregorianAbsDate:I

    iget v1, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->jewishYear:I

    iget v2, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->jewishMonth:I

    .line 793
    iget v3, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->jewishMonth:I

    iget v4, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->jewishYear:I

    invoke-static {v3, v4}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->getDaysInJewishMonth(II)I

    move-result v3

    .line 792
    invoke-static {v1, v2, v3}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->jewishDateToAbsDate(III)I

    move-result v1

    if-gt v0, v1, :cond_2

    .line 797
    iget v0, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->gregorianAbsDate:I

    iget v1, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->jewishYear:I

    iget v2, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->jewishMonth:I

    invoke-static {v1, v2, v5}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->jewishDateToAbsDate(III)I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->jewishDay:I

    .line 798
    return-void

    .line 784
    :cond_0
    iget v0, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->jewishYear:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->jewishYear:I

    goto :goto_0

    .line 790
    :cond_1
    iput v5, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->jewishMonth:I

    goto :goto_1

    .line 794
    :cond_2
    iget v0, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->jewishMonth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->jewishMonth:I

    goto :goto_1
.end method

.method private static addDechiyos(III)I
    .locals 3
    .param p0, "year"    # I
    .param p1, "moladDay"    # I
    .param p2, "moladParts"    # I

    .prologue
    .line 470
    move v0, p1

    .line 472
    .local v0, "roshHashanaDay":I
    const/16 v1, 0x4bf0

    if-ge p2, v1, :cond_1

    .line 473
    rem-int/lit8 v1, p1, 0x7

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 474
    const/16 v1, 0x26c4

    if-lt p2, v1, :cond_0

    .line 475
    invoke-static {p0}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->isJewishLeapYear(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 476
    :cond_0
    rem-int/lit8 v1, p1, 0x7

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 477
    const/16 v1, 0x4195

    if-lt p2, v1, :cond_2

    .line 478
    add-int/lit8 v1, p0, -0x1

    invoke-static {v1}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->isJewishLeapYear(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 479
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 482
    :cond_2
    rem-int/lit8 v1, v0, 0x7

    if-eqz v1, :cond_3

    .line 483
    rem-int/lit8 v1, v0, 0x7

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    .line 484
    rem-int/lit8 v1, v0, 0x7

    const/4 v2, 0x5

    if-ne v1, v2, :cond_4

    .line 485
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 487
    :cond_4
    return v0
.end method

.method public static getChalakimSinceMoladTohu(II)J
    .locals 8
    .param p0, "jewishYear"    # I
    .param p1, "jewishMonth"    # I

    .prologue
    .line 503
    invoke-static {p0, p1}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->getJewishMonthOfYear(II)I

    move-result v0

    .line 504
    .local v0, "monthOfYear":I
    add-int/lit8 v2, p0, -0x1

    div-int/lit8 v2, v2, 0x13

    mul-int/lit16 v2, v2, 0xeb

    .line 505
    add-int/lit8 v3, p0, -0x1

    rem-int/lit8 v3, v3, 0x13

    mul-int/lit8 v3, v3, 0xc

    .line 504
    add-int/2addr v2, v3

    .line 506
    add-int/lit8 v3, p0, -0x1

    rem-int/lit8 v3, v3, 0x13

    mul-int/lit8 v3, v3, 0x7

    add-int/lit8 v3, v3, 0x1

    div-int/lit8 v3, v3, 0x13

    .line 504
    add-int/2addr v2, v3

    .line 507
    add-int/lit8 v3, v0, -0x1

    .line 504
    add-int v1, v2, v3

    .line 509
    .local v1, "monthsElapsed":I
    const-wide/16 v2, 0x7b24

    const-wide/32 v4, 0xbadf9

    int-to-long v6, v1

    mul-long/2addr v4, v6

    add-long/2addr v2, v4

    return-wide v2
.end method

.method public static getCheshvanKislevKviah(I)I
    .locals 1
    .param p0, "jewishYear"    # I

    .prologue
    .line 739
    invoke-static {p0}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->isCheshvanLong(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->isKislevShort(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 740
    const/4 v0, 0x2

    .line 744
    :goto_0
    return v0

    .line 741
    :cond_0
    invoke-static {p0}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->isCheshvanLong(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->isKislevShort(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 742
    const/4 v0, 0x0

    goto :goto_0

    .line 744
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static getDaysInJewishMonth(II)I
    .locals 1
    .param p0, "month"    # I
    .param p1, "year"    # I

    .prologue
    .line 758
    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x4

    if-eq p0, v0, :cond_3

    const/4 v0, 0x6

    if-eq p0, v0, :cond_3

    const/16 v0, 0x8

    if-ne p0, v0, :cond_0

    invoke-static {p1}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->isCheshvanLong(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 759
    :cond_0
    const/16 v0, 0x9

    if-ne p0, v0, :cond_1

    invoke-static {p1}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->isKislevShort(I)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    const/16 v0, 0xa

    if-eq p0, v0, :cond_3

    .line 760
    const/16 v0, 0xc

    if-ne p0, v0, :cond_2

    invoke-static {p1}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->isJewishLeapYear(I)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/16 v0, 0xd

    if-ne p0, v0, :cond_4

    .line 761
    :cond_3
    const/16 v0, 0x1d

    .line 763
    :goto_0
    return v0

    :cond_4
    const/16 v0, 0x1e

    goto :goto_0
.end method

.method public static getDaysInJewishYear(I)I
    .locals 2
    .param p0, "year"    # I

    .prologue
    .line 662
    add-int/lit8 v0, p0, 0x1

    invoke-static {v0}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->getJewishCalendarElapsedDays(I)I

    move-result v0

    invoke-static {p0}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->getJewishCalendarElapsedDays(I)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private static getDaysSinceStartOfJewishYear(III)I
    .locals 3
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "dayOfMonth"    # I

    .prologue
    .line 896
    move v0, p2

    .line 898
    .local v0, "elapsedDays":I
    const/4 v2, 0x7

    if-ge p1, v2, :cond_3

    .line 900
    const/4 v1, 0x7

    .local v1, "m":I
    :goto_0
    invoke-static {p0}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->getLastMonthOfJewishYear(I)I

    move-result v2

    if-le v1, v2, :cond_1

    .line 903
    const/4 v1, 0x1

    :goto_1
    if-lt v1, p1, :cond_2

    .line 911
    :cond_0
    return v0

    .line 901
    :cond_1
    invoke-static {v1, p0}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->getDaysInJewishMonth(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 900
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 904
    :cond_2
    invoke-static {v1, p0}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->getDaysInJewishMonth(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 903
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 907
    .end local v1    # "m":I
    :cond_3
    const/4 v1, 0x7

    .restart local v1    # "m":I
    :goto_2
    if-ge v1, p1, :cond_0

    .line 908
    invoke-static {v1, p0}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->getDaysInJewishMonth(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 907
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public static getJewishCalendarElapsedDays(I)I
    .locals 6
    .param p0, "year"    # I

    .prologue
    .line 422
    const/4 v4, 0x7

    invoke-static {p0, v4}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->getChalakimSinceMoladTohu(II)J

    move-result-wide v0

    .line 423
    .local v0, "chalakimSince":J
    const-wide/16 v4, 0x6540

    div-long v4, v0, v4

    long-to-int v2, v4

    .line 424
    .local v2, "moladDay":I
    mul-int/lit16 v4, v2, 0x6540

    int-to-long v4, v4

    sub-long v4, v0, v4

    long-to-int v3, v4

    .line 426
    .local v3, "moladParts":I
    invoke-static {p0, v2, v3}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->addDechiyos(III)I

    move-result v4

    return v4
.end method

.method private static getJewishMonthOfYear(II)I
    .locals 3
    .param p0, "jewishYear"    # I
    .param p1, "jewishMonth"    # I

    .prologue
    .line 521
    invoke-static {p0}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->isJewishLeapYear(I)Z

    move-result v0

    .line 522
    .local v0, "isLeapYear":Z
    if-eqz v0, :cond_0

    const/4 v1, 0x6

    :goto_0
    add-int v2, p1, v1

    if-eqz v0, :cond_1

    const/16 v1, 0xd

    :goto_1
    rem-int v1, v2, v1

    add-int/lit8 v1, v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x5

    goto :goto_0

    :cond_1
    const/16 v1, 0xc

    goto :goto_1
.end method

.method private static getLastDayOfGregorianMonth(II)I
    .locals 1
    .param p0, "month"    # I
    .param p1, "year"    # I

    .prologue
    .line 306
    packed-switch p0, :pswitch_data_0

    .line 319
    :pswitch_0
    const/16 v0, 0x1f

    :goto_0
    return v0

    .line 308
    :pswitch_1
    rem-int/lit8 v0, p1, 0x4

    if-nez v0, :cond_0

    rem-int/lit8 v0, p1, 0x64

    if-nez v0, :cond_1

    :cond_0
    rem-int/lit16 v0, p1, 0x190

    if-nez v0, :cond_2

    .line 309
    :cond_1
    const/16 v0, 0x1d

    goto :goto_0

    .line 311
    :cond_2
    const/16 v0, 0x1c

    goto :goto_0

    .line 317
    :pswitch_2
    const/16 v0, 0x1e

    goto :goto_0

    .line 306
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private static getLastMonthOfJewishYear(I)I
    .locals 1
    .param p0, "year"    # I

    .prologue
    .line 407
    invoke-static {p0}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->isJewishLeapYear(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0xc

    goto :goto_0
.end method

.method public static getMolad(II)Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;
    .locals 4
    .param p0, "jewishYear"    # I
    .param p1, "jewishMonth"    # I

    .prologue
    .line 835
    new-instance v0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;

    invoke-static {p0, p1}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->getChalakimSinceMoladTohu(II)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;-><init>(J)V

    .line 836
    .local v0, "moladDate":Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;
    invoke-virtual {v0}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->getMoladHours()I

    move-result v1

    const/4 v2, 0x6

    if-lt v1, v2, :cond_0

    .line 837
    invoke-virtual {v0}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->forward()V

    .line 839
    :cond_0
    invoke-virtual {v0}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->getMoladHours()I

    move-result v1

    add-int/lit8 v1, v1, 0x12

    rem-int/lit8 v1, v1, 0x18

    invoke-virtual {v0, v1}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->setMoladHours(I)V

    .line 840
    return-object v0
.end method

.method private static gregorianDateToAbsDate(III)I
    .locals 4
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "dayOfMonth"    # I

    .prologue
    .line 363
    move v0, p2

    .line 364
    .local v0, "absDate":I
    add-int/lit8 v1, p1, -0x1

    .local v1, "m":I
    :goto_0
    if-gtz v1, :cond_0

    .line 368
    add-int/lit8 v2, p0, -0x1

    mul-int/lit16 v2, v2, 0x16d

    .line 367
    add-int/2addr v2, v0

    .line 369
    add-int/lit8 v3, p0, -0x1

    div-int/lit8 v3, v3, 0x4

    .line 367
    add-int/2addr v2, v3

    .line 370
    add-int/lit8 v3, p0, -0x1

    div-int/lit8 v3, v3, 0x64

    .line 367
    sub-int/2addr v2, v3

    .line 371
    add-int/lit8 v3, p0, -0x1

    div-int/lit16 v3, v3, 0x190

    .line 367
    add-int/2addr v2, v3

    return v2

    .line 365
    :cond_0
    invoke-static {v1, p0}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->getLastDayOfGregorianMonth(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 364
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method public static isCheshvanLong(I)Z
    .locals 2
    .param p0, "year"    # I

    .prologue
    .line 687
    invoke-static {p0}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->getDaysInJewishYear(I)I

    move-result v0

    rem-int/lit8 v0, v0, 0xa

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isJewishLeapYear(I)Z
    .locals 2
    .param p0, "year"    # I

    .prologue
    .line 383
    mul-int/lit8 v0, p0, 0x7

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x13

    const/4 v1, 0x7

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isKislevShort(I)Z
    .locals 2
    .param p0, "year"    # I

    .prologue
    .line 712
    invoke-static {p0}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->getDaysInJewishYear(I)I

    move-result v0

    rem-int/lit8 v0, v0, 0xa

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static jewishDateToAbsDate(III)I
    .locals 3
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "dayOfMonth"    # I

    .prologue
    .line 815
    invoke-static {p0, p1, p2}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->getDaysSinceStartOfJewishYear(III)I

    move-result v0

    .line 817
    .local v0, "elapsed":I
    invoke-static {p0}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->getJewishCalendarElapsedDays(I)I

    move-result v1

    add-int/2addr v1, v0

    const v2, -0x14f4f5

    add-int/2addr v1, v2

    return v1
.end method

.method private static moladToAbsDate(J)I
    .locals 2
    .param p0, "chalakim"    # J

    .prologue
    .line 851
    const-wide/16 v0, 0x6540

    div-long v0, p0, v0

    long-to-int v0, v0

    const v1, -0x14f4f5

    add-int/2addr v0, v1

    return v0
.end method

.method private setInternalGregorianDate(III)V
    .locals 3
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    .prologue
    .line 1033
    invoke-static {p2, p1}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->getLastDayOfGregorianMonth(II)I

    move-result v0

    if-le p3, v0, :cond_0

    .line 1034
    invoke-static {p2, p1}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->getLastDayOfGregorianMonth(II)I

    move-result p3

    .line 1037
    :cond_0
    iput p2, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->gregorianMonth:I

    .line 1038
    iput p3, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->gregorianDayOfMonth:I

    .line 1039
    iput p1, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->gregorianYear:I

    .line 1041
    iget v0, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->gregorianYear:I

    iget v1, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->gregorianMonth:I

    iget v2, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->gregorianDayOfMonth:I

    invoke-static {v0, v1, v2}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->gregorianDateToAbsDate(III)I

    move-result v0

    iput v0, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->gregorianAbsDate:I

    .line 1042
    invoke-direct {p0}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->absDateToJewishDate()V

    .line 1044
    iget v0, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->gregorianAbsDate:I

    rem-int/lit8 v0, v0, 0x7

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->dayOfWeek:I

    .line 1045
    return-void
.end method

.method private setMoladTime(I)V
    .locals 2
    .param p1, "chalakim"    # I

    .prologue
    .line 877
    move v0, p1

    .line 878
    .local v0, "adjustedChalakim":I
    div-int/lit16 v1, v0, 0x438

    invoke-virtual {p0, v1}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->setMoladHours(I)V

    .line 879
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->getMoladHours()I

    move-result v1

    mul-int/lit16 v1, v1, 0x438

    sub-int/2addr v0, v1

    .line 880
    div-int/lit8 v1, v0, 0x12

    invoke-virtual {p0, v1}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->setMoladMinutes(I)V

    .line 881
    iget v1, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->moladMinutes:I

    mul-int/lit8 v1, v1, 0x12

    sub-int v1, v0, v1

    invoke-virtual {p0, v1}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->setMoladChalakim(I)V

    .line 882
    return-void
.end method

.method private static validateGregorianDate(III)V
    .locals 0
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "dayOfMonth"    # I

    .prologue
    .line 607
    invoke-static {p1}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->validateGregorianMonth(I)V

    .line 608
    invoke-static {p2}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->validateGregorianDayOfMonth(I)V

    .line 609
    invoke-static {p0}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->validateGregorianYear(I)V

    .line 610
    return-void
.end method

.method private static validateGregorianDayOfMonth(I)V
    .locals 3
    .param p0, "dayOfMonth"    # I

    .prologue
    .line 635
    if-gtz p0, :cond_0

    .line 636
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The day of month can\'t be less than 1. "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is invalid."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 638
    :cond_0
    return-void
.end method

.method private static validateGregorianMonth(I)V
    .locals 3
    .param p0, "month"    # I

    .prologue
    .line 620
    const/16 v0, 0xb

    if-gt p0, v0, :cond_0

    if-gez p0, :cond_1

    .line 621
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The Gregorian month has to be between 0 - 11. "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 622
    const-string v2, " is invalid."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 621
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 624
    :cond_1
    return-void
.end method

.method private static validateGregorianYear(I)V
    .locals 3
    .param p0, "year"    # I

    .prologue
    .line 647
    const/4 v0, 0x1

    if-ge p0, v0, :cond_0

    .line 648
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Years < 1 can\'t be claculated. "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is invalid."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 650
    :cond_0
    return-void
.end method

.method private static validateJewishDate(IIIIII)V
    .locals 4
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "dayOfMonth"    # I
    .param p3, "hours"    # I
    .param p4, "minutes"    # I
    .param p5, "chalakim"    # I

    .prologue
    const/16 v3, 0xa

    const/4 v2, 0x1

    const/16 v1, 0xeb1

    .line 555
    if-lt p1, v2, :cond_0

    invoke-static {p0}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->getLastMonthOfJewishYear(I)I

    move-result v0

    if-le p1, v0, :cond_1

    .line 556
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The Jewish month has to be between 1 and 12 (or 13 on a leap year). "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 557
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is invalid for the year "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 556
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 559
    :cond_1
    if-lt p2, v2, :cond_2

    const/16 v0, 0x1e

    if-le p2, v0, :cond_3

    .line 560
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The Jewish day of month can\'t be < 1 or > 30.  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 561
    const-string v2, " is invalid."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 560
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 565
    :cond_3
    if-lt p0, v1, :cond_5

    if-ne p0, v1, :cond_4

    const/4 v0, 0x7

    if-lt p1, v0, :cond_4

    if-lt p1, v3, :cond_5

    .line 566
    :cond_4
    if-ne p0, v1, :cond_6

    if-ne p1, v3, :cond_6

    const/16 v0, 0x12

    if-ge p2, v0, :cond_6

    .line 567
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 568
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "A Jewish date earlier than 18 Teves, 3761 (1/1/1 Gregorian) can\'t be set. "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 569
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is invalid."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 568
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 567
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 571
    :cond_6
    if-ltz p3, :cond_7

    const/16 v0, 0x17

    if-le p3, v0, :cond_8

    .line 572
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Hours < 0 > 23 can\'t be set. "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is invalid."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 575
    :cond_8
    if-ltz p4, :cond_9

    const/16 v0, 0x3b

    if-le p4, v0, :cond_a

    .line 576
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Minutes < 0 > 59 can\'t be set. "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is invalid."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 579
    :cond_a
    if-ltz p5, :cond_b

    const/16 v0, 0x11

    if-le p5, v0, :cond_c

    .line 580
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 581
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Chalakim/parts < 0 > 17 can\'t be set. "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 582
    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 583
    const-string v2, " is invalid. For larger numbers such as 793 (TaShTzaG) break the chalakim into minutes (18 chalakim per minutes, so it would be 44 minutes and 1 chelek in the case of 793 (TaShTzaG)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 581
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 580
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 585
    :cond_c
    return-void
.end method


# virtual methods
.method public back()V
    .locals 4

    .prologue
    const/4 v3, 0x7

    const/4 v2, 0x1

    .line 1228
    iget v0, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->gregorianDayOfMonth:I

    if-ne v0, v2, :cond_1

    .line 1229
    iget v0, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->gregorianMonth:I

    if-ne v0, v2, :cond_0

    .line 1230
    const/16 v0, 0xc

    iput v0, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->gregorianMonth:I

    .line 1231
    iget v0, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->gregorianYear:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->gregorianYear:I

    .line 1236
    :goto_0
    iget v0, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->gregorianMonth:I

    iget v1, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->gregorianYear:I

    invoke-static {v0, v1}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->getLastDayOfGregorianMonth(II)I

    move-result v0

    iput v0, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->gregorianDayOfMonth:I

    .line 1241
    :goto_1
    iget v0, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->jewishDay:I

    if-ne v0, v2, :cond_4

    .line 1242
    iget v0, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->jewishMonth:I

    if-ne v0, v2, :cond_2

    .line 1243
    iget v0, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->jewishYear:I

    invoke-static {v0}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->getLastMonthOfJewishYear(I)I

    move-result v0

    iput v0, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->jewishMonth:I

    .line 1250
    :goto_2
    iget v0, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->jewishMonth:I

    iget v1, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->jewishYear:I

    invoke-static {v0, v1}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->getDaysInJewishMonth(II)I

    move-result v0

    iput v0, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->jewishDay:I

    .line 1255
    :goto_3
    iget v0, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->dayOfWeek:I

    if-ne v0, v2, :cond_5

    .line 1256
    iput v3, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->dayOfWeek:I

    .line 1260
    :goto_4
    iget v0, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->gregorianAbsDate:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->gregorianAbsDate:I

    .line 1261
    return-void

    .line 1233
    :cond_0
    iget v0, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->gregorianMonth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->gregorianMonth:I

    goto :goto_0

    .line 1238
    :cond_1
    iget v0, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->gregorianDayOfMonth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->gregorianDayOfMonth:I

    goto :goto_1

    .line 1244
    :cond_2
    iget v0, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->jewishMonth:I

    if-ne v0, v3, :cond_3

    .line 1245
    iget v0, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->jewishYear:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->jewishYear:I

    .line 1246
    iget v0, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->jewishMonth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->jewishMonth:I

    goto :goto_2

    .line 1248
    :cond_3
    iget v0, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->jewishMonth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->jewishMonth:I

    goto :goto_2

    .line 1252
    :cond_4
    iget v0, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->jewishDay:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->jewishDay:I

    goto :goto_3

    .line 1258
    :cond_5
    iget v0, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->dayOfWeek:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->dayOfWeek:I

    goto :goto_4
.end method

.method public clone()Ljava/lang/Object;
    .locals 5

    .prologue
    .line 1436
    const/4 v1, 0x0

    .line 1438
    .local v1, "clone":Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1442
    :goto_0
    if-nez v1, :cond_0

    .line 1443
    const/4 v1, 0x0

    .line 1445
    .end local v1    # "clone":Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;
    :goto_1
    return-object v1

    .line 1444
    .restart local v1    # "clone":Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;
    :cond_0
    iget v2, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->gregorianYear:I

    iget v3, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->gregorianMonth:I

    iget v4, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->gregorianDayOfMonth:I

    invoke-direct {v1, v2, v3, v4}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->setInternalGregorianDate(III)V

    goto :goto_1

    .line 1439
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;

    invoke-virtual {p0, p1}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->compareTo(Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;)I
    .locals 2
    .param p1, "hebDate"    # Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;

    .prologue
    .line 1283
    iget v0, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->gregorianAbsDate:I

    invoke-virtual {p1}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->getAbsDate()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->gregorianAbsDate:I

    invoke-virtual {p1}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->getAbsDate()I

    move-result v1

    if-le v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1267
    if-ne p0, p1, :cond_1

    .line 1274
    :cond_0
    :goto_0
    return v1

    .line 1270
    :cond_1
    instance-of v3, p1, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;

    if-nez v3, :cond_2

    move v1, v2

    .line 1271
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 1273
    check-cast v0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;

    .line 1274
    .local v0, "jewishDate":Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;
    iget v3, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->gregorianAbsDate:I

    invoke-virtual {v0}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->getAbsDate()I

    move-result v4

    if-eq v3, v4, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public forward()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1166
    iget v0, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->gregorianDayOfMonth:I

    iget v1, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->gregorianMonth:I

    iget v2, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->gregorianYear:I

    invoke-static {v1, v2}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->getLastDayOfGregorianMonth(II)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 1168
    iget v0, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->gregorianMonth:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    .line 1169
    iget v0, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->gregorianYear:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->gregorianYear:I

    .line 1170
    iput v3, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->gregorianMonth:I

    .line 1171
    iput v3, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->gregorianDayOfMonth:I

    .line 1181
    :goto_0
    iget v0, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->jewishDay:I

    iget v1, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->jewishMonth:I

    iget v2, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->jewishYear:I

    invoke-static {v1, v2}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->getDaysInJewishMonth(II)I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 1183
    iget v0, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->jewishMonth:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    .line 1184
    iget v0, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->jewishYear:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->jewishYear:I

    .line 1185
    iget v0, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->jewishMonth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->jewishMonth:I

    .line 1186
    iput v3, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->jewishDay:I

    .line 1199
    :goto_1
    iget v0, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->dayOfWeek:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_5

    .line 1200
    iput v3, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->dayOfWeek:I

    .line 1205
    :goto_2
    iget v0, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->gregorianAbsDate:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->gregorianAbsDate:I

    .line 1206
    return-void

    .line 1173
    :cond_0
    iget v0, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->gregorianMonth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->gregorianMonth:I

    .line 1174
    iput v3, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->gregorianDayOfMonth:I

    goto :goto_0

    .line 1177
    :cond_1
    iget v0, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->gregorianDayOfMonth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->gregorianDayOfMonth:I

    goto :goto_0

    .line 1187
    :cond_2
    iget v0, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->jewishMonth:I

    iget v1, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->jewishYear:I

    invoke-static {v1}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->getLastMonthOfJewishYear(I)I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 1189
    iput v3, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->jewishMonth:I

    .line 1190
    iput v3, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->jewishDay:I

    goto :goto_1

    .line 1192
    :cond_3
    iget v0, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->jewishMonth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->jewishMonth:I

    .line 1193
    iput v3, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->jewishDay:I

    goto :goto_1

    .line 1196
    :cond_4
    iget v0, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->jewishDay:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->jewishDay:I

    goto :goto_1

    .line 1202
    :cond_5
    iget v0, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->dayOfWeek:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->dayOfWeek:I

    goto :goto_2
.end method

.method protected getAbsDate()I
    .locals 1

    .prologue
    .line 347
    iget v0, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->gregorianAbsDate:I

    return v0
.end method

.method public getDayOfWeek()I
    .locals 1

    .prologue
    .line 1348
    iget v0, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->dayOfWeek:I

    return v0
.end method

.method public getDaysInJewishMonth()I
    .locals 2

    .prologue
    .line 773
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->getJewishMonth()I

    move-result v0

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->getJewishYear()I

    move-result v1

    invoke-static {v0, v1}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->getDaysInJewishMonth(II)I

    move-result v0

    return v0
.end method

.method public getDaysInJewishYear()I
    .locals 1

    .prologue
    .line 673
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->getJewishYear()I

    move-result v0

    invoke-static {v0}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->getDaysInJewishYear(I)I

    move-result v0

    return v0
.end method

.method public getGregorianDayOfMonth()I
    .locals 1

    .prologue
    .line 1301
    iget v0, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->gregorianDayOfMonth:I

    return v0
.end method

.method public getGregorianMonth()I
    .locals 1

    .prologue
    .line 1292
    iget v0, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->gregorianMonth:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getGregorianYear()I
    .locals 1

    .prologue
    .line 1310
    iget v0, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->gregorianYear:I

    return v0
.end method

.method public getJewishDayOfMonth()I
    .locals 1

    .prologue
    .line 1330
    iget v0, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->jewishDay:I

    return v0
.end method

.method public getJewishMonth()I
    .locals 1

    .prologue
    .line 1321
    iget v0, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->jewishMonth:I

    return v0
.end method

.method public getJewishYear()I
    .locals 1

    .prologue
    .line 1339
    iget v0, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->jewishYear:I

    return v0
.end method

.method public getMoladChalakim()I
    .locals 1

    .prologue
    .line 276
    iget v0, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->moladChalakim:I

    return v0
.end method

.method public getMoladHours()I
    .locals 1

    .prologue
    .line 200
    iget v0, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->moladHours:I

    return v0
.end method

.method public getMoladMinutes()I
    .locals 1

    .prologue
    .line 228
    iget v0, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->moladMinutes:I

    return v0
.end method

.method public getTime()Ljava/util/Date;
    .locals 4

    .prologue
    .line 1122
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1123
    .local v0, "cal":Ljava/util/Calendar;
    iget v1, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->gregorianYear:I

    iget v2, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->gregorianMonth:I

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->gregorianDayOfMonth:I

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Calendar;->set(III)V

    .line 1124
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    return-object v1
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 1452
    const/16 v0, 0x11

    .line 1453
    .local v0, "result":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x275

    .line 1454
    mul-int/lit8 v1, v0, 0x25

    iget v2, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->gregorianAbsDate:I

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 1455
    return v0
.end method

.method public isCheshvanLong()Z
    .locals 1

    .prologue
    .line 698
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->getJewishYear()I

    move-result v0

    invoke-static {v0}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->isCheshvanLong(I)Z

    move-result v0

    return v0
.end method

.method public isJewishLeapYear()Z
    .locals 1

    .prologue
    .line 394
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->getJewishYear()I

    move-result v0

    invoke-static {v0}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->isJewishLeapYear(I)Z

    move-result v0

    return v0
.end method

.method public isKislevShort()Z
    .locals 1

    .prologue
    .line 723
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->getJewishYear()I

    move-result v0

    invoke-static {v0}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->isKislevShort(I)Z

    move-result v0

    return v0
.end method

.method public resetDate()V
    .locals 1

    .prologue
    .line 1131
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1132
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {p0, v0}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->setDate(Ljava/util/Calendar;)V

    .line 1133
    return-void
.end method

.method public setDate(Ljava/util/Calendar;)V
    .locals 4
    .param p1, "calendar"    # Ljava/util/Calendar;

    .prologue
    const/4 v3, 0x1

    .line 974
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 975
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Calendars with a BC era are not supported. The year "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 976
    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " BC is invalid."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 975
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 978
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->gregorianMonth:I

    .line 979
    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->gregorianDayOfMonth:I

    .line 980
    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->gregorianYear:I

    .line 981
    iget v0, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->gregorianYear:I

    iget v1, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->gregorianMonth:I

    iget v2, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->gregorianDayOfMonth:I

    invoke-static {v0, v1, v2}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->gregorianDateToAbsDate(III)I

    move-result v0

    iput v0, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->gregorianAbsDate:I

    .line 982
    invoke-direct {p0}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->absDateToJewishDate()V

    .line 984
    iget v0, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->gregorianAbsDate:I

    rem-int/lit8 v0, v0, 0x7

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->dayOfWeek:I

    .line 985
    return-void
.end method

.method public setDate(Ljava/util/Date;)V
    .locals 1
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 996
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 997
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 998
    invoke-virtual {p0, v0}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->setDate(Ljava/util/Calendar;)V

    .line 999
    return-void
.end method

.method public setGregorianDate(III)V
    .locals 1
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    .prologue
    .line 1016
    invoke-static {p1, p2, p3}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->validateGregorianDate(III)V

    .line 1017
    add-int/lit8 v0, p2, 0x1

    invoke-direct {p0, p1, v0, p3}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->setInternalGregorianDate(III)V

    .line 1018
    return-void
.end method

.method public setGregorianDayOfMonth(I)V
    .locals 2
    .param p1, "dayOfMonth"    # I

    .prologue
    .line 1387
    invoke-static {p1}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->validateGregorianDayOfMonth(I)V

    .line 1388
    iget v0, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->gregorianYear:I

    iget v1, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->gregorianMonth:I

    invoke-direct {p0, v0, v1, p1}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->setInternalGregorianDate(III)V

    .line 1389
    return-void
.end method

.method public setGregorianMonth(I)V
    .locals 3
    .param p1, "month"    # I

    .prologue
    .line 1361
    invoke-static {p1}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->validateGregorianMonth(I)V

    .line 1362
    iget v0, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->gregorianYear:I

    add-int/lit8 v1, p1, 0x1

    iget v2, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->gregorianDayOfMonth:I

    invoke-direct {p0, v0, v1, v2}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->setInternalGregorianDate(III)V

    .line 1363
    return-void
.end method

.method public setGregorianYear(I)V
    .locals 2
    .param p1, "year"    # I

    .prologue
    .line 1374
    invoke-static {p1}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->validateGregorianYear(I)V

    .line 1375
    iget v0, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->gregorianMonth:I

    iget v1, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->gregorianDayOfMonth:I

    invoke-direct {p0, p1, v0, v1}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->setInternalGregorianDate(III)V

    .line 1376
    return-void
.end method

.method public setJewishDate(III)V
    .locals 7
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    .prologue
    const/4 v4, 0x0

    .line 1064
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, v4

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->setJewishDate(IIIIII)V

    .line 1065
    return-void
.end method

.method public setJewishDate(IIIIII)V
    .locals 3
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I
    .param p4, "hours"    # I
    .param p5, "minutes"    # I
    .param p6, "chalakim"    # I

    .prologue
    .line 1095
    invoke-static/range {p1 .. p6}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->validateJewishDate(IIIIII)V

    .line 1099
    invoke-static {p2, p1}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->getDaysInJewishMonth(II)I

    move-result v0

    if-le p3, v0, :cond_0

    .line 1100
    invoke-static {p2, p1}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->getDaysInJewishMonth(II)I

    move-result p3

    .line 1103
    :cond_0
    iput p2, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->jewishMonth:I

    .line 1104
    iput p3, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->jewishDay:I

    .line 1105
    iput p1, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->jewishYear:I

    .line 1106
    iput p4, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->moladHours:I

    .line 1107
    iput p5, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->moladMinutes:I

    .line 1108
    iput p6, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->moladChalakim:I

    .line 1110
    iget v0, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->jewishYear:I

    iget v1, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->jewishMonth:I

    iget v2, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->jewishDay:I

    invoke-static {v0, v1, v2}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->jewishDateToAbsDate(III)I

    move-result v0

    iput v0, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->gregorianAbsDate:I

    .line 1111
    iget v0, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->gregorianAbsDate:I

    invoke-direct {p0, v0}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->absDateToDate(I)V

    .line 1113
    iget v0, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->gregorianAbsDate:I

    rem-int/lit8 v0, v0, 0x7

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->dayOfWeek:I

    .line 1114
    return-void
.end method

.method public setJewishDayOfMonth(I)V
    .locals 2
    .param p1, "dayOfMonth"    # I

    .prologue
    .line 1426
    iget v0, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->jewishYear:I

    iget v1, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->jewishMonth:I

    invoke-virtual {p0, v0, v1, p1}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->setJewishDate(III)V

    .line 1427
    return-void
.end method

.method public setJewishMonth(I)V
    .locals 2
    .param p1, "month"    # I

    .prologue
    .line 1401
    iget v0, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->jewishYear:I

    iget v1, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->jewishDay:I

    invoke-virtual {p0, v0, p1, v1}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->setJewishDate(III)V

    .line 1402
    return-void
.end method

.method public setJewishYear(I)V
    .locals 2
    .param p1, "year"    # I

    .prologue
    .line 1414
    iget v0, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->jewishMonth:I

    iget v1, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->jewishDay:I

    invoke-virtual {p0, p1, v0, v1}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->setJewishDate(III)V

    .line 1415
    return-void
.end method

.method public setMoladChalakim(I)V
    .locals 0
    .param p1, "moladChalakim"    # I

    .prologue
    .line 262
    iput p1, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->moladChalakim:I

    .line 263
    return-void
.end method

.method public setMoladHours(I)V
    .locals 0
    .param p1, "moladHours"    # I

    .prologue
    .line 214
    iput p1, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->moladHours:I

    .line 215
    return-void
.end method

.method public setMoladMinutes(I)V
    .locals 0
    .param p1, "moladMinutes"    # I

    .prologue
    .line 245
    iput p1, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->moladMinutes:I

    .line 246
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1143
    new-instance v0, Lnet/sourceforge/zmanim/hebrewcalendar/HebrewDateFormatter;

    invoke-direct {v0}, Lnet/sourceforge/zmanim/hebrewcalendar/HebrewDateFormatter;-><init>()V

    invoke-virtual {v0, p0}, Lnet/sourceforge/zmanim/hebrewcalendar/HebrewDateFormatter;->format(Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
