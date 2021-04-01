.class public Lnet/sourceforge/zmanim/hebrewcalendar/YomiCalculator;
.super Ljava/lang/Object;
.source "YomiCalculator.java"


# static fields
.field private static dafYomiJulianStartDay:I

.field private static dafYomiStartDate:Ljava/util/Date;

.field private static shekalimChangeDate:Ljava/util/Date;

.field private static shekalimJulianChangeDay:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 33
    new-instance v0, Ljava/util/GregorianCalendar;

    const/16 v1, 0x783

    const/16 v2, 0x8

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3}, Ljava/util/GregorianCalendar;-><init>(III)V

    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v0

    sput-object v0, Lnet/sourceforge/zmanim/hebrewcalendar/YomiCalculator;->dafYomiStartDate:Ljava/util/Date;

    .line 34
    sget-object v0, Lnet/sourceforge/zmanim/hebrewcalendar/YomiCalculator;->dafYomiStartDate:Ljava/util/Date;

    invoke-static {v0}, Lnet/sourceforge/zmanim/hebrewcalendar/YomiCalculator;->getJulianDay(Ljava/util/Date;)I

    move-result v0

    sput v0, Lnet/sourceforge/zmanim/hebrewcalendar/YomiCalculator;->dafYomiJulianStartDay:I

    .line 35
    new-instance v0, Ljava/util/GregorianCalendar;

    const/16 v1, 0x7b7

    const/4 v2, 0x5

    const/16 v3, 0x18

    invoke-direct {v0, v1, v2, v3}, Ljava/util/GregorianCalendar;-><init>(III)V

    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v0

    sput-object v0, Lnet/sourceforge/zmanim/hebrewcalendar/YomiCalculator;->shekalimChangeDate:Ljava/util/Date;

    .line 36
    sget-object v0, Lnet/sourceforge/zmanim/hebrewcalendar/YomiCalculator;->shekalimChangeDate:Ljava/util/Date;

    invoke-static {v0}, Lnet/sourceforge/zmanim/hebrewcalendar/YomiCalculator;->getJulianDay(Ljava/util/Date;)I

    move-result v0

    sput v0, Lnet/sourceforge/zmanim/hebrewcalendar/YomiCalculator;->shekalimJulianChangeDay:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDafYomiBavli(Ljava/util/Date;)Lnet/sourceforge/zmanim/hebrewcalendar/Daf;
    .locals 12
    .param p0, "date"    # Ljava/util/Date;

    .prologue
    .line 65
    const/16 v9, 0x28

    new-array v1, v9, [I

    fill-array-data v1, :array_0

    .line 67
    .local v1, "blattPerMasechta":[I
    const/4 v4, 0x0

    .line 68
    .local v4, "dafYomi":Lnet/sourceforge/zmanim/hebrewcalendar/Daf;
    invoke-static {p0}, Lnet/sourceforge/zmanim/hebrewcalendar/YomiCalculator;->getJulianDay(Ljava/util/Date;)I

    move-result v6

    .line 69
    .local v6, "julianDay":I
    const/4 v2, 0x0

    .line 70
    .local v2, "cycleNo":I
    const/4 v3, 0x0

    .line 71
    .local v3, "dafNo":I
    sget-object v9, Lnet/sourceforge/zmanim/hebrewcalendar/YomiCalculator;->dafYomiStartDate:Ljava/util/Date;

    invoke-virtual {p0, v9}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 73
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " is prior to organized Daf Yomi Bavli cycles that started on "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 74
    sget-object v11, Lnet/sourceforge/zmanim/hebrewcalendar/YomiCalculator;->dafYomiStartDate:Ljava/util/Date;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 73
    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 76
    :cond_0
    sget-object v9, Lnet/sourceforge/zmanim/hebrewcalendar/YomiCalculator;->shekalimChangeDate:Ljava/util/Date;

    invoke-virtual {p0, v9}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    sget-object v9, Lnet/sourceforge/zmanim/hebrewcalendar/YomiCalculator;->shekalimChangeDate:Ljava/util/Date;

    invoke-virtual {p0, v9}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 77
    :cond_1
    sget v9, Lnet/sourceforge/zmanim/hebrewcalendar/YomiCalculator;->shekalimJulianChangeDay:I

    sub-int v9, v6, v9

    div-int/lit16 v9, v9, 0xa97

    add-int/lit8 v2, v9, 0x8

    .line 78
    sget v9, Lnet/sourceforge/zmanim/hebrewcalendar/YomiCalculator;->shekalimJulianChangeDay:I

    sub-int v9, v6, v9

    rem-int/lit16 v3, v9, 0xa97

    .line 84
    :goto_0
    const/4 v8, 0x0

    .line 85
    .local v8, "total":I
    const/4 v7, -0x1

    .line 86
    .local v7, "masechta":I
    const/4 v0, 0x0

    .line 89
    .local v0, "blatt":I
    const/4 v9, 0x7

    if-gt v2, v9, :cond_2

    .line 90
    const/4 v9, 0x4

    const/16 v10, 0xd

    aput v10, v1, v9

    .line 93
    :cond_2
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    array-length v9, v1

    if-lt v5, v9, :cond_4

    .line 111
    :goto_2
    return-object v4

    .line 80
    .end local v0    # "blatt":I
    .end local v5    # "j":I
    .end local v7    # "masechta":I
    .end local v8    # "total":I
    :cond_3
    sget v9, Lnet/sourceforge/zmanim/hebrewcalendar/YomiCalculator;->dafYomiJulianStartDay:I

    sub-int v9, v6, v9

    div-int/lit16 v9, v9, 0xa8e

    add-int/lit8 v2, v9, 0x1

    .line 81
    sget v9, Lnet/sourceforge/zmanim/hebrewcalendar/YomiCalculator;->dafYomiJulianStartDay:I

    sub-int v9, v6, v9

    rem-int/lit16 v3, v9, 0xa8e

    goto :goto_0

    .line 94
    .restart local v0    # "blatt":I
    .restart local v5    # "j":I
    .restart local v7    # "masechta":I
    .restart local v8    # "total":I
    :cond_4
    add-int/lit8 v7, v7, 0x1

    .line 95
    aget v9, v1, v5

    add-int/2addr v9, v8

    add-int/lit8 v8, v9, -0x1

    .line 96
    if-ge v3, v8, :cond_8

    .line 97
    aget v9, v1, v5

    add-int/lit8 v9, v9, 0x1

    sub-int v10, v8, v3

    sub-int v0, v9, v10

    .line 99
    const/16 v9, 0x24

    if-ne v7, v9, :cond_6

    .line 100
    add-int/lit8 v0, v0, 0x15

    .line 106
    :cond_5
    :goto_3
    new-instance v4, Lnet/sourceforge/zmanim/hebrewcalendar/Daf;

    .end local v4    # "dafYomi":Lnet/sourceforge/zmanim/hebrewcalendar/Daf;
    invoke-direct {v4, v7, v0}, Lnet/sourceforge/zmanim/hebrewcalendar/Daf;-><init>(II)V

    .line 107
    .restart local v4    # "dafYomi":Lnet/sourceforge/zmanim/hebrewcalendar/Daf;
    goto :goto_2

    .line 101
    :cond_6
    const/16 v9, 0x25

    if-ne v7, v9, :cond_7

    .line 102
    add-int/lit8 v0, v0, 0x18

    .line 103
    goto :goto_3

    :cond_7
    const/16 v9, 0x26

    if-ne v7, v9, :cond_5

    .line 104
    add-int/lit8 v0, v0, 0x21

    goto :goto_3

    .line 93
    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 65
    :array_0
    .array-data 4
        0x40
        0x9d
        0x69
        0x79
        0x16
        0x58
        0x38
        0x28
        0x23
        0x1f
        0x20
        0x1d
        0x1b
        0x7a
        0x70
        0x5b
        0x42
        0x31
        0x5a
        0x52
        0x77
        0x77
        0xb0
        0x71
        0x18
        0x31
        0x4c
        0xe
        0x78
        0x6e
        0x8e
        0x3d
        0x22
        0x22
        0x1c
        0x16
        0x4
        0xa
        0x4
        0x49
    .end array-data
.end method

.method private static getJulianDay(Ljava/util/Date;)I
    .locals 12
    .param p0, "date"    # Ljava/util/Date;

    .prologue
    const/4 v7, 0x2

    .line 122
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 123
    .local v2, "calendar":Ljava/util/Calendar;
    invoke-virtual {v2, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 124
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 125
    .local v5, "year":I
    invoke-virtual {v2, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/lit8 v4, v6, 0x1

    .line 126
    .local v4, "month":I
    const/4 v6, 0x5

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 127
    .local v3, "day":I
    if-gt v4, v7, :cond_0

    .line 128
    add-int/lit8 v5, v5, -0x1

    .line 129
    add-int/lit8 v4, v4, 0xc

    .line 131
    :cond_0
    div-int/lit8 v0, v5, 0x64

    .line 132
    .local v0, "a":I
    rsub-int/lit8 v6, v0, 0x2

    div-int/lit8 v7, v0, 0x4

    add-int v1, v6, v7

    .line 133
    .local v1, "b":I
    const-wide v6, 0x4076d40000000000L    # 365.25

    add-int/lit16 v8, v5, 0x126c

    int-to-double v8, v8

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    const-wide v8, 0x403e99a027525461L    # 30.6001

    add-int/lit8 v10, v4, 0x1

    int-to-double v10, v10

    mul-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    add-double/2addr v6, v8

    int-to-double v8, v3

    add-double/2addr v6, v8

    int-to-double v8, v1

    add-double/2addr v6, v8

    const-wide v8, 0x4097d20000000000L    # 1524.5

    sub-double/2addr v6, v8

    double-to-int v6, v6

    return v6
.end method
