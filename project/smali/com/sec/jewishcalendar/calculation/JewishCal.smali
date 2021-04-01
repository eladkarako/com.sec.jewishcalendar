.class public Lcom/sec/jewishcalendar/calculation/JewishCal;
.super Ljava/lang/Object;
.source "JewishCal.java"


# static fields
.field public static final DAY:I = 0x6540

.field public static final HOUR:I = 0x438

.field public static final LH_GIMATRIA_OFFSET:I = 0x9

.field public static final LH_TAF:I = 0x16

.field public static final LH_TET:I = 0x9

.field public static final LH_VAV:I = 0x7

.field public static final LH_ZAIN:I = 0x8

.field public static final MAX_HOLIDAY:I = 0x35

.field public static final ORG_GREG_YEAR_MAX:I = 0x834

.field public static final ORG_GREG_YEAR_MIN:I = 0x76c

.field public static final ORG_JEWISH_YEAR_MAX:I = 0x16e4

.field public static final ORG_JEWISH_YEAR_MIN:I = 0x161d

.field public static final ORG_JEWISH_YEAR_MONTH_MAX:I = 0xc

.field public static final ORG_JEWISH_YEAR_MONTH_MIN:I = 0x1

.field public static final WEEK:I = 0x2c4c0

.field private static final holydays_table:[[I

.field private static final year_types:[I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/16 v9, 0x1d

    const/16 v8, 0x11

    const/16 v7, 0xe

    const/16 v6, 0x1e

    const/4 v5, 0x0

    .line 38
    const/16 v0, 0x18

    new-array v0, v0, [I

    const/4 v1, 0x1

    aput v1, v0, v5

    const/4 v1, 0x3

    const/4 v2, 0x2

    aput v2, v0, v1

    const/4 v1, 0x5

    const/4 v2, 0x3

    aput v2, v0, v1

    const/4 v1, 0x6

    const/4 v2, 0x4

    aput v2, v0, v1

    const/16 v1, 0x8

    const/4 v2, 0x5

    aput v2, v0, v1

    const/16 v1, 0xa

    const/4 v2, 0x6

    aput v2, v0, v1

    const/16 v1, 0xb

    const/4 v2, 0x7

    aput v2, v0, v1

    const/16 v1, 0xc

    .line 39
    const/16 v2, 0x8

    aput v2, v0, v1

    const/16 v1, 0x9

    aput v1, v0, v7

    const/16 v1, 0xf

    const/16 v2, 0xa

    aput v2, v0, v1

    const/16 v1, 0xb

    aput v1, v0, v8

    const/16 v1, 0x14

    const/16 v2, 0xc

    aput v2, v0, v1

    const/16 v1, 0x16

    const/16 v2, 0xd

    aput v2, v0, v1

    const/16 v1, 0x17

    aput v7, v0, v1

    .line 37
    sput-object v0, Lcom/sec/jewishcalendar/calculation/JewishCal;->year_types:[I

    .line 43
    new-array v0, v7, [[I

    .line 44
    new-array v1, v6, [I

    .line 45
    const/4 v2, 0x1

    aput v2, v1, v5

    const/4 v2, 0x1

    const/4 v3, 0x2

    aput v3, v1, v2

    const/4 v2, 0x2

    const/4 v3, 0x3

    aput v3, v1, v2

    const/4 v2, 0x3

    const/4 v3, 0x3

    aput v3, v1, v2

    const/16 v2, 0x8

    const/16 v3, 0x2b

    aput v3, v1, v2

    const/16 v2, 0x9

    const/4 v3, 0x4

    aput v3, v1, v2

    const/16 v2, 0xd

    .line 46
    const/16 v3, 0x2c

    aput v3, v1, v2

    const/4 v2, 0x5

    aput v2, v1, v7

    const/16 v2, 0xf

    const/16 v3, 0x1f

    aput v3, v1, v2

    const/16 v2, 0x10

    const/4 v3, 0x6

    aput v3, v1, v2

    const/4 v2, 0x6

    aput v2, v1, v8

    const/16 v2, 0x12

    const/4 v3, 0x6

    aput v3, v1, v2

    const/16 v2, 0x13

    const/4 v3, 0x6

    aput v3, v1, v2

    const/16 v2, 0x14

    .line 47
    const/4 v3, 0x7

    aput v3, v1, v2

    const/16 v2, 0x15

    const/16 v3, 0x1b

    aput v3, v1, v2

    const/16 v2, 0x16

    const/16 v3, 0x8

    aput v3, v1, v2

    const/16 v2, 0x24

    aput v2, v1, v9

    aput-object v1, v0, v5

    const/4 v1, 0x1

    .line 48
    new-array v2, v6, [I

    .line 49
    const/16 v3, 0x25

    aput v3, v2, v5

    .line 51
    const/16 v3, 0x24

    aput v3, v2, v9

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 52
    new-array v2, v6, [I

    .line 53
    const/16 v3, 0x25

    aput v3, v2, v5

    const/16 v3, 0x17

    .line 55
    const/16 v4, 0x29

    aput v4, v2, v3

    const/16 v3, 0x18

    const/16 v4, 0x2f

    aput v4, v2, v3

    const/16 v3, 0x19

    const/16 v4, 0x30

    aput v4, v2, v3

    const/16 v3, 0x1a

    const/16 v4, 0x31

    aput v4, v2, v3

    const/16 v3, 0x1b

    const/16 v4, 0x32

    aput v4, v2, v3

    const/16 v3, 0x1c

    const/16 v4, 0x33

    aput v4, v2, v3

    const/16 v3, 0x27

    aput v3, v2, v9

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 56
    new-array v2, v6, [I

    .line 57
    const/16 v3, 0x28

    aput v3, v2, v5

    const/4 v3, 0x1

    const/16 v4, 0x34

    aput v4, v2, v3

    const/4 v3, 0x2

    const/16 v4, 0x35

    aput v4, v2, v3

    const/16 v3, 0x9

    const/16 v4, 0xa

    aput v4, v2, v3

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 60
    new-array v2, v6, [I

    .line 61
    const/16 v3, 0x23

    aput v3, v2, v5

    .line 62
    const/16 v3, 0xb

    aput v3, v2, v7

    .line 63
    const/16 v3, 0x24

    aput v3, v2, v9

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 64
    new-array v2, v6, [I

    .line 65
    const/16 v3, 0x25

    aput v3, v2, v5

    const/16 v3, 0xa

    .line 66
    const/16 v4, 0xc

    aput v4, v2, v3

    const/16 v3, 0xc

    const/16 v4, 0xc

    aput v4, v2, v3

    const/16 v3, 0xd

    const/16 v4, 0xd

    aput v4, v2, v3

    aput v7, v2, v7

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 68
    new-array v2, v6, [I

    .line 69
    const/16 v3, 0x23

    aput v3, v2, v5

    const/16 v3, 0xd

    .line 70
    const/16 v4, 0x2d

    aput v4, v2, v3

    const/16 v3, 0xf

    aput v3, v2, v7

    const/16 v3, 0xf

    const/16 v4, 0x20

    aput v4, v2, v3

    const/16 v3, 0x10

    const/16 v4, 0x10

    aput v4, v2, v3

    const/16 v3, 0x10

    aput v3, v2, v8

    const/16 v3, 0x12

    const/16 v4, 0x10

    aput v4, v2, v3

    const/16 v3, 0x13

    const/16 v4, 0x10

    aput v4, v2, v3

    const/16 v3, 0x14

    .line 71
    const/16 v4, 0x1c

    aput v4, v2, v3

    const/16 v3, 0x15

    aput v9, v2, v3

    const/16 v3, 0x19

    const/16 v4, 0x18

    aput v4, v2, v3

    const/16 v3, 0x1a

    const/16 v4, 0x18

    aput v4, v2, v3

    const/16 v3, 0x1b

    const/16 v4, 0x18

    aput v4, v2, v3

    const/16 v3, 0x24

    aput v3, v2, v9

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 72
    new-array v2, v6, [I

    .line 73
    const/16 v3, 0x25

    aput v3, v2, v5

    const/4 v3, 0x1

    aput v8, v2, v3

    const/4 v3, 0x2

    aput v8, v2, v3

    const/4 v3, 0x3

    aput v8, v2, v3

    const/4 v3, 0x4

    aput v8, v2, v3

    const/4 v3, 0x5

    aput v8, v2, v3

    .line 74
    const/16 v3, 0x12

    aput v3, v2, v8

    const/16 v3, 0x1b

    .line 75
    const/16 v4, 0x1a

    aput v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 76
    new-array v2, v6, [I

    .line 77
    const/16 v3, 0x23

    aput v3, v2, v5

    const/4 v3, 0x4

    const/16 v4, 0x13

    aput v4, v2, v3

    const/4 v3, 0x5

    const/16 v4, 0x14

    aput v4, v2, v3

    const/4 v3, 0x6

    aput v6, v2, v3

    .line 79
    const/16 v3, 0x24

    aput v3, v2, v9

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 80
    new-array v2, v6, [I

    .line 81
    const/16 v3, 0x25

    aput v3, v2, v5

    const/16 v3, 0x10

    .line 82
    const/16 v4, 0x15

    aput v4, v2, v3

    const/16 v3, 0x15

    aput v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 84
    new-array v2, v6, [I

    .line 85
    const/16 v3, 0x23

    aput v3, v2, v5

    const/16 v3, 0x8

    const/16 v4, 0x16

    aput v4, v2, v3

    const/16 v3, 0x9

    const/16 v4, 0x16

    aput v4, v2, v3

    .line 86
    const/16 v3, 0x17

    aput v3, v2, v7

    .line 87
    const/16 v3, 0x24

    aput v3, v2, v9

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 88
    new-array v2, v6, [I

    .line 89
    const/16 v3, 0x25

    aput v3, v2, v5

    const/16 v3, 0x1c

    .line 91
    const/16 v4, 0x2a

    aput v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 92
    new-array v2, v6, [I

    .line 93
    const/16 v3, 0x23

    aput v3, v2, v5

    const/16 v3, 0xd

    .line 94
    const/16 v4, 0x21

    aput v4, v2, v3

    const/16 v3, 0x22

    aput v3, v2, v7

    .line 95
    const/16 v3, 0x24

    aput v3, v2, v9

    aput-object v2, v0, v1

    const/16 v1, 0xd

    .line 96
    new-array v2, v6, [I

    .line 97
    const/16 v3, 0x25

    aput v3, v2, v5

    const/16 v3, 0xa

    .line 98
    const/16 v4, 0xc

    aput v4, v2, v3

    const/16 v3, 0xc

    const/16 v4, 0xc

    aput v4, v2, v3

    const/16 v3, 0xd

    const/16 v4, 0xd

    aput v4, v2, v3

    aput v7, v2, v7

    .line 99
    const/16 v3, 0x24

    aput v3, v2, v9

    aput-object v2, v0, v1

    .line 42
    sput-object v0, Lcom/sec/jewishcalendar/calculation/JewishCal;->holydays_table:[[I

    .line 100
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method public static GMoveToNextMonth(Lcom/sec/jewishcalendar/calculation/HdateClass;)I
    .locals 4
    .param p0, "hdate"    # Lcom/sec/jewishcalendar/calculation/HdateClass;

    .prologue
    const/4 v3, 0x1

    .line 755
    iget v0, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->gmonth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->gmonth:I

    .line 756
    iget v0, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->gmonth:I

    const/16 v1, 0xc

    if-le v0, v1, :cond_0

    .line 758
    iput v3, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->gmonth:I

    .line 759
    iget v0, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->gyear:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->gyear:I

    .line 761
    :cond_0
    iget v0, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->gday:I

    iget v1, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->gmonth:I

    iget v2, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->gyear:I

    invoke-static {p0, v0, v1, v2}, Lcom/sec/jewishcalendar/calculation/JewishCal;->SetGdate(Lcom/sec/jewishcalendar/calculation/HdateClass;III)I

    .line 762
    return v3
.end method

.method public static GMoveToNextYear(Lcom/sec/jewishcalendar/calculation/HdateClass;)I
    .locals 3
    .param p0, "hdate"    # Lcom/sec/jewishcalendar/calculation/HdateClass;

    .prologue
    .line 952
    iget v0, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->gyear:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->gyear:I

    .line 953
    iget v0, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->gday:I

    iget v1, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->gmonth:I

    iget v2, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->gyear:I

    invoke-static {p0, v0, v1, v2}, Lcom/sec/jewishcalendar/calculation/JewishCal;->SetGdate(Lcom/sec/jewishcalendar/calculation/HdateClass;III)I

    .line 954
    const/4 v0, 0x1

    return v0
.end method

.method public static GetDayOfMonth(Lcom/sec/jewishcalendar/calculation/HdateClass;)I
    .locals 7
    .param p0, "hdate"    # Lcom/sec/jewishcalendar/calculation/HdateClass;

    .prologue
    const/4 v6, 0x1

    .line 629
    new-instance v0, Lcom/sec/jewishcalendar/calculation/HdateClass;

    invoke-direct {v0}, Lcom/sec/jewishcalendar/calculation/HdateClass;-><init>()V

    .line 630
    .local v0, "hd_1st":Lcom/sec/jewishcalendar/calculation/HdateClass;
    new-instance v1, Lcom/sec/jewishcalendar/calculation/HdateClass;

    invoke-direct {v1}, Lcom/sec/jewishcalendar/calculation/HdateClass;-><init>()V

    .line 632
    .local v1, "hd_next_1st":Lcom/sec/jewishcalendar/calculation/HdateClass;
    const/4 v3, 0x0

    .line 633
    .local v3, "year":I
    const/4 v2, 0x0

    .line 635
    .local v2, "mon":I
    iget v4, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hmonth:I

    const/16 v5, 0xc

    if-ne v4, v5, :cond_0

    .line 637
    iget v4, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hyear:I

    add-int/lit8 v3, v4, 0x1

    .line 638
    const/4 v2, 0x1

    .line 646
    :goto_0
    iget v4, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hmonth:I

    iget v5, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hyear:I

    invoke-static {v0, v6, v4, v5}, Lcom/sec/jewishcalendar/calculation/JewishCal;->SetHdate(Lcom/sec/jewishcalendar/calculation/HdateClass;III)I

    .line 647
    invoke-static {v1, v6, v2, v3}, Lcom/sec/jewishcalendar/calculation/JewishCal;->SetHdate(Lcom/sec/jewishcalendar/calculation/HdateClass;III)I

    .line 649
    iget v4, v1, Lcom/sec/jewishcalendar/calculation/HdateClass;->hJulianDay:I

    iget v5, v0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hJulianDay:I

    sub-int/2addr v4, v5

    return v4

    .line 642
    :cond_0
    iget v3, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hyear:I

    .line 643
    invoke-static {p0}, Lcom/sec/jewishcalendar/calculation/JewishCal;->hdate_get_next_mon(Lcom/sec/jewishcalendar/calculation/HdateClass;)I

    move-result v2

    goto :goto_0
.end method

.method public static GetHolyday(Lcom/sec/jewishcalendar/calculation/HdateClass;I)I
    .locals 10
    .param p0, "hdate"    # Lcom/sec/jewishcalendar/calculation/HdateClass;
    .param p1, "diaspora"    # I

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x5

    .line 471
    iget v2, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hmonth:I

    if-lt v2, v8, :cond_0

    iget v2, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hmonth:I

    const/16 v3, 0xe

    if-gt v2, v3, :cond_0

    iget v2, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hday:I

    if-ltz v2, :cond_0

    iget v2, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hday:I

    const/16 v3, 0x1e

    if-le v2, v3, :cond_2

    .line 472
    :cond_0
    const/4 v1, 0x0

    .line 601
    :cond_1
    :goto_0
    return v1

    .line 474
    :cond_2
    sget-object v2, Lcom/sec/jewishcalendar/calculation/JewishCal;->holydays_table:[[I

    iget v3, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hmonth:I

    add-int/lit8 v3, v3, -0x1

    aget-object v2, v2, v3

    iget v3, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hday:I

    add-int/lit8 v3, v3, -0x1

    aget v1, v2, v3

    .line 478
    .local v1, "holyday":I
    if-ne v1, v6, :cond_4

    iget v2, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hDayWeek:I

    const/4 v3, 0x7

    if-eq v2, v3, :cond_3

    iget v2, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hday:I

    if-ne v2, v7, :cond_4

    iget v2, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hDayWeek:I

    if-eq v2, v8, :cond_4

    .line 479
    :cond_3
    const/4 v1, 0x0

    .line 481
    :cond_4
    const/16 v2, 0x15

    if-ne v1, v2, :cond_6

    iget v2, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hDayWeek:I

    const/4 v3, 0x7

    if-eq v2, v3, :cond_5

    iget v2, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hday:I

    const/16 v3, 0x12

    if-ne v2, v3, :cond_6

    iget v2, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hDayWeek:I

    if-eq v2, v8, :cond_6

    .line 482
    :cond_5
    const/4 v1, 0x0

    .line 484
    :cond_6
    const/16 v2, 0x16

    if-ne v1, v2, :cond_8

    iget v2, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hDayWeek:I

    const/4 v3, 0x7

    if-eq v2, v3, :cond_7

    iget v2, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hday:I

    const/16 v3, 0xa

    if-ne v2, v3, :cond_8

    iget v2, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hDayWeek:I

    if-eq v2, v8, :cond_8

    .line 485
    :cond_7
    const/4 v1, 0x0

    .line 487
    :cond_8
    new-instance v0, Lcom/sec/jewishcalendar/calculation/HdateClass;

    invoke-direct {v0}, Lcom/sec/jewishcalendar/calculation/HdateClass;-><init>()V

    .line 488
    .local v0, "h_temp":Lcom/sec/jewishcalendar/calculation/HdateClass;
    iget v2, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hday:I

    iget v3, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hmonth:I

    iget v4, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hyear:I

    invoke-static {v0, v2, v3, v4}, Lcom/sec/jewishcalendar/calculation/JewishCal;->SetHdate(Lcom/sec/jewishcalendar/calculation/HdateClass;III)I

    .line 489
    invoke-static {v0}, Lcom/sec/jewishcalendar/calculation/JewishCal;->MoveToPrevMonth(Lcom/sec/jewishcalendar/calculation/HdateClass;)I

    .line 492
    const/16 v2, 0x25

    if-ne v1, v2, :cond_9

    invoke-static {v0}, Lcom/sec/jewishcalendar/calculation/JewishCal;->GetDayOfMonth(Lcom/sec/jewishcalendar/calculation/HdateClass;)I

    move-result v2

    const/16 v3, 0x1e

    if-eq v2, v3, :cond_9

    .line 493
    const/16 v1, 0x23

    .line 496
    :cond_9
    const/16 v2, 0x28

    if-ne v1, v2, :cond_a

    invoke-static {v0}, Lcom/sec/jewishcalendar/calculation/JewishCal;->GetDayOfMonth(Lcom/sec/jewishcalendar/calculation/HdateClass;)I

    move-result v2

    const/16 v3, 0x1e

    if-eq v2, v3, :cond_a

    .line 497
    const/16 v1, 0x26

    .line 501
    :cond_a
    const/16 v2, 0x34

    if-ne v1, v2, :cond_b

    iget v2, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hSizeOfYear:I

    rem-int/lit8 v2, v2, 0xa

    if-eq v2, v6, :cond_b

    iget v2, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hday:I

    if-ne v2, v9, :cond_b

    .line 502
    const/16 v1, 0x35

    .line 504
    :cond_b
    const/16 v2, 0x35

    if-ne v1, v2, :cond_c

    iget v2, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hSizeOfYear:I

    rem-int/lit8 v2, v2, 0xa

    if-eq v2, v6, :cond_c

    iget v2, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hday:I

    if-ne v2, v6, :cond_c

    .line 505
    const/4 v1, 0x0

    .line 508
    :cond_c
    const/16 v2, 0xc

    if-ne v1, v2, :cond_e

    iget v2, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hDayWeek:I

    const/4 v3, 0x7

    if-eq v2, v3, :cond_d

    iget v2, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hday:I

    const/16 v3, 0xb

    if-ne v2, v3, :cond_e

    iget v2, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hDayWeek:I

    if-eq v2, v5, :cond_e

    .line 509
    :cond_d
    const/4 v1, 0x0

    .line 512
    :cond_e
    const/16 v2, 0x1a

    if-ne v1, v2, :cond_f

    .line 514
    iget v2, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->gyear:I

    const/16 v3, 0x7b0

    if-ge v2, v3, :cond_f

    .line 515
    const/4 v1, 0x0

    .line 519
    :cond_f
    const/16 v2, 0x11

    if-ne v1, v2, :cond_10

    .line 521
    iget v2, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->gyear:I

    const/16 v3, 0x79c

    if-ge v2, v3, :cond_16

    .line 522
    const/4 v1, 0x0

    .line 564
    :cond_10
    :goto_1
    const/16 v2, 0x18

    if-ne v1, v2, :cond_11

    .line 566
    iget v2, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->gyear:I

    const/16 v3, 0x7a6

    if-ge v2, v3, :cond_26

    .line 567
    const/4 v1, 0x0

    .line 582
    :cond_11
    :goto_2
    const/16 v2, 0x8

    if-ne v1, v2, :cond_12

    if-nez p1, :cond_12

    .line 583
    const/16 v1, 0x2e

    .line 586
    :cond_12
    const/16 v2, 0x1f

    if-ne v1, v2, :cond_13

    if-nez p1, :cond_13

    .line 587
    const/4 v1, 0x6

    .line 590
    :cond_13
    const/16 v2, 0x20

    if-ne v1, v2, :cond_14

    if-nez p1, :cond_14

    .line 591
    const/16 v1, 0x10

    .line 594
    :cond_14
    const/16 v2, 0x1e

    if-ne v1, v2, :cond_15

    if-nez p1, :cond_15

    .line 595
    const/16 v1, 0x2e

    .line 598
    :cond_15
    const/16 v2, 0x1d

    if-ne v1, v2, :cond_1

    if-nez p1, :cond_1

    .line 599
    const/16 v1, 0x2e

    goto/16 :goto_0

    .line 523
    :cond_16
    iget v2, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->gyear:I

    const/16 v3, 0x7d4

    if-ge v2, v3, :cond_1d

    .line 525
    iget v2, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hday:I

    if-ne v2, v6, :cond_17

    iget v2, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hDayWeek:I

    if-ne v2, v5, :cond_17

    .line 526
    const/16 v1, 0x11

    goto :goto_1

    .line 527
    :cond_17
    iget v2, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hday:I

    if-ne v2, v7, :cond_18

    iget v2, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hDayWeek:I

    if-ne v2, v5, :cond_18

    .line 528
    const/16 v1, 0x11

    goto :goto_1

    .line 529
    :cond_18
    iget v2, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hday:I

    if-ne v2, v5, :cond_19

    iget v2, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hDayWeek:I

    const/4 v3, 0x6

    if-eq v2, v3, :cond_19

    iget v2, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hDayWeek:I

    const/4 v3, 0x7

    if-eq v2, v3, :cond_19

    .line 530
    const/16 v1, 0x11

    goto :goto_1

    .line 531
    :cond_19
    iget v2, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hday:I

    if-ne v2, v9, :cond_1a

    iget v2, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hDayWeek:I

    if-ne v2, v7, :cond_1a

    .line 532
    const/16 v1, 0x19

    goto :goto_1

    .line 533
    :cond_1a
    iget v2, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hday:I

    if-ne v2, v6, :cond_1b

    iget v2, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hDayWeek:I

    if-ne v2, v7, :cond_1b

    .line 534
    const/16 v1, 0x19

    goto :goto_1

    .line 535
    :cond_1b
    iget v2, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hday:I

    if-ne v2, v7, :cond_1c

    iget v2, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hDayWeek:I

    if-eq v2, v5, :cond_1c

    iget v2, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hDayWeek:I

    const/4 v3, 0x6

    if-eq v2, v3, :cond_1c

    .line 536
    const/16 v1, 0x19

    goto/16 :goto_1

    .line 538
    :cond_1c
    const/4 v1, 0x0

    .line 539
    goto/16 :goto_1

    .line 542
    :cond_1d
    iget v2, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hday:I

    if-ne v2, v6, :cond_1e

    iget v2, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hDayWeek:I

    if-ne v2, v5, :cond_1e

    .line 543
    const/16 v1, 0x11

    goto/16 :goto_1

    .line 544
    :cond_1e
    iget v2, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hday:I

    if-ne v2, v7, :cond_1f

    iget v2, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hDayWeek:I

    if-ne v2, v5, :cond_1f

    .line 545
    const/16 v1, 0x11

    goto/16 :goto_1

    .line 546
    :cond_1f
    iget v2, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hday:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_20

    iget v2, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hDayWeek:I

    if-ne v2, v6, :cond_20

    .line 547
    const/16 v1, 0x11

    goto/16 :goto_1

    .line 548
    :cond_20
    iget v2, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hday:I

    if-ne v2, v5, :cond_21

    iget v2, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hDayWeek:I

    const/4 v3, 0x6

    if-eq v2, v3, :cond_21

    iget v2, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hDayWeek:I

    const/4 v3, 0x7

    if-eq v2, v3, :cond_21

    iget v2, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hDayWeek:I

    if-eq v2, v9, :cond_21

    .line 549
    const/16 v1, 0x11

    goto/16 :goto_1

    .line 550
    :cond_21
    iget v2, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hday:I

    if-ne v2, v9, :cond_22

    iget v2, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hDayWeek:I

    if-ne v2, v7, :cond_22

    .line 551
    const/16 v1, 0x19

    goto/16 :goto_1

    .line 552
    :cond_22
    iget v2, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hday:I

    if-ne v2, v6, :cond_23

    iget v2, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hDayWeek:I

    if-ne v2, v7, :cond_23

    .line 553
    const/16 v1, 0x19

    goto/16 :goto_1

    .line 554
    :cond_23
    iget v2, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hday:I

    if-ne v2, v5, :cond_24

    iget v2, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hDayWeek:I

    if-ne v2, v9, :cond_24

    .line 555
    const/16 v1, 0x19

    goto/16 :goto_1

    .line 556
    :cond_24
    iget v2, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hday:I

    if-ne v2, v7, :cond_25

    iget v2, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hDayWeek:I

    if-eq v2, v5, :cond_25

    iget v2, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hDayWeek:I

    const/4 v3, 0x6

    if-eq v2, v3, :cond_25

    iget v2, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hDayWeek:I

    if-eq v2, v8, :cond_25

    .line 557
    const/16 v1, 0x19

    goto/16 :goto_1

    .line 559
    :cond_25
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 570
    :cond_26
    iget v2, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hday:I

    const/16 v3, 0x1a

    if-ne v2, v3, :cond_27

    iget v2, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hDayWeek:I

    if-eq v2, v5, :cond_27

    .line 571
    const/4 v1, 0x0

    .line 572
    :cond_27
    iget v2, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hday:I

    const/16 v3, 0x1c

    if-ne v2, v3, :cond_28

    iget v2, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hDayWeek:I

    if-eq v2, v9, :cond_28

    .line 573
    const/4 v1, 0x0

    .line 574
    :cond_28
    iget v2, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hday:I

    const/16 v3, 0x1b

    if-ne v2, v3, :cond_11

    iget v2, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hDayWeek:I

    const/4 v3, 0x6

    if-eq v2, v3, :cond_29

    iget v2, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hDayWeek:I

    if-ne v2, v8, :cond_11

    .line 575
    :cond_29
    const/4 v1, 0x0

    goto/16 :goto_2
.end method

.method public static GetJewishYearString(I[Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "hd_year"    # I
    .param p1, "JC_LETTERS"    # [Ljava/lang/String;

    .prologue
    const/16 v5, 0x9

    .line 694
    add-int/lit16 v2, p0, -0x1388

    .line 695
    .local v2, "tYear":I
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 697
    .local v0, "strYear":Ljava/lang/String;
    :goto_0
    add-int/lit16 v3, v2, -0x190

    if-gez v3, :cond_0

    .line 702
    if-eqz v2, :cond_3

    .line 704
    const/16 v3, 0x64

    if-lt v2, v3, :cond_2

    .line 706
    div-int/lit8 v3, v2, 0x64

    mul-int/lit8 v3, v3, 0x64

    sub-int v3, v2, v3

    if-nez v3, :cond_1

    .line 708
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 709
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    div-int/lit8 v4, v2, 0x64

    add-int/lit8 v4, v4, 0x12

    aget-object v4, p1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 750
    .end local v0    # "strYear":Ljava/lang/String;
    .local v1, "strYear":Ljava/lang/String;
    :goto_1
    return-object v1

    .line 699
    .end local v1    # "strYear":Ljava/lang/String;
    .restart local v0    # "strYear":Ljava/lang/String;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x16

    aget-object v4, p1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 700
    add-int/lit16 v2, v2, -0x190

    goto :goto_0

    .line 712
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    div-int/lit8 v4, v2, 0x64

    add-int/lit8 v4, v4, 0x12

    aget-object v4, p1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 713
    div-int/lit8 v3, v2, 0x64

    mul-int/lit8 v3, v3, 0x64

    sub-int/2addr v2, v3

    .line 716
    :cond_2
    const/16 v3, 0xa

    if-gt v2, v3, :cond_4

    .line 718
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 719
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v4, p1, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    :goto_2
    move-object v1, v0

    .line 750
    .end local v0    # "strYear":Ljava/lang/String;
    .restart local v1    # "strYear":Ljava/lang/String;
    goto :goto_1

    .line 723
    .end local v1    # "strYear":Ljava/lang/String;
    .restart local v0    # "strYear":Ljava/lang/String;
    :cond_4
    const/16 v3, 0xf

    if-ne v2, v3, :cond_5

    .line 725
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v4, p1, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 726
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 727
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x7

    aget-object v4, p1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 728
    .end local v0    # "strYear":Ljava/lang/String;
    .restart local v1    # "strYear":Ljava/lang/String;
    goto/16 :goto_1

    .line 730
    .end local v1    # "strYear":Ljava/lang/String;
    .restart local v0    # "strYear":Ljava/lang/String;
    :cond_5
    const/16 v3, 0x10

    if-ne v2, v3, :cond_6

    .line 732
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v4, p1, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 733
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 734
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x8

    aget-object v4, p1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 735
    .end local v0    # "strYear":Ljava/lang/String;
    .restart local v1    # "strYear":Ljava/lang/String;
    goto/16 :goto_1

    .line 737
    .end local v1    # "strYear":Ljava/lang/String;
    .restart local v0    # "strYear":Ljava/lang/String;
    :cond_6
    rem-int/lit8 v3, v2, 0xa

    if-nez v3, :cond_7

    .line 739
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 740
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    div-int/lit8 v4, v2, 0xa

    add-int/lit8 v4, v4, 0x9

    aget-object v4, p1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 741
    goto/16 :goto_2

    .line 744
    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    div-int/lit8 v4, v2, 0xa

    add-int/lit8 v4, v4, 0x9

    aget-object v4, p1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 745
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 746
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    rem-int/lit8 v4, v2, 0xa

    aget-object v4, p1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2
.end method

.method public static IsYearLeap(I)I
    .locals 1
    .param p0, "year"    # I

    .prologue
    .line 607
    rem-int/lit8 v0, p0, 0x13

    sparse-switch v0, :sswitch_data_0

    .line 621
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 618
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 607
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x3 -> :sswitch_0
        0x6 -> :sswitch_0
        0x8 -> :sswitch_0
        0xb -> :sswitch_0
        0xe -> :sswitch_0
        0x11 -> :sswitch_0
    .end sparse-switch
.end method

.method private static M(II)I
    .locals 1
    .param p0, "h"    # I
    .param p1, "p"    # I

    .prologue
    .line 105
    mul-int/lit16 v0, p0, 0x438

    add-int/2addr v0, p1

    return v0
.end method

.method private static MONTH()I
    .locals 2

    .prologue
    .line 110
    const/16 v0, 0xc

    const/16 v1, 0x319

    invoke-static {v0, v1}, Lcom/sec/jewishcalendar/calculation/JewishCal;->M(II)I

    move-result v0

    add-int/lit16 v0, v0, 0x6540

    return v0
.end method

.method public static MoveToNextDay(Lcom/sec/jewishcalendar/calculation/HdateClass;)I
    .locals 5
    .param p0, "hdate"    # Lcom/sec/jewishcalendar/calculation/HdateClass;

    .prologue
    const/4 v4, 0x1

    .line 866
    invoke-static {p0}, Lcom/sec/jewishcalendar/calculation/JewishCal;->GetDayOfMonth(Lcom/sec/jewishcalendar/calculation/HdateClass;)I

    move-result v0

    .line 867
    .local v0, "numDays":I
    iget v1, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hday:I

    add-int/lit8 v1, v1, 0x1

    if-le v1, v0, :cond_0

    .line 869
    iput v4, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hday:I

    .line 870
    invoke-static {p0}, Lcom/sec/jewishcalendar/calculation/JewishCal;->MoveToNextMonth(Lcom/sec/jewishcalendar/calculation/HdateClass;)I

    .line 877
    :goto_0
    return v4

    .line 874
    :cond_0
    iget v1, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hday:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hday:I

    .line 875
    iget v1, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hday:I

    iget v2, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hmonth:I

    iget v3, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hyear:I

    invoke-static {p0, v1, v2, v3}, Lcom/sec/jewishcalendar/calculation/JewishCal;->SetHdate(Lcom/sec/jewishcalendar/calculation/HdateClass;III)I

    goto :goto_0
.end method

.method public static MoveToNextMonth(Lcom/sec/jewishcalendar/calculation/HdateClass;)I
    .locals 6
    .param p0, "hdate"    # Lcom/sec/jewishcalendar/calculation/HdateClass;

    .prologue
    const/16 v4, 0xc

    const/4 v5, 0x1

    .line 767
    new-instance v1, Lcom/sec/jewishcalendar/calculation/HdateClass;

    invoke-direct {v1}, Lcom/sec/jewishcalendar/calculation/HdateClass;-><init>()V

    .line 768
    .local v1, "temp":Lcom/sec/jewishcalendar/calculation/HdateClass;
    const/4 v0, 0x0

    .line 771
    .local v0, "days":I
    iget v2, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hyear:I

    const/16 v3, 0x16e4

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hmonth:I

    if-le v2, v4, :cond_0

    .line 773
    const/16 v2, 0x161d

    iput v2, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hyear:I

    .line 774
    iput v5, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hmonth:I

    .line 777
    :cond_0
    iget v2, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hmonth:I

    if-ne v2, v4, :cond_2

    .line 779
    iput v5, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hmonth:I

    .line 780
    iget v2, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hyear:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hyear:I

    .line 803
    :goto_0
    iget v2, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hmonth:I

    iget v3, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hyear:I

    invoke-static {v1, v5, v2, v3}, Lcom/sec/jewishcalendar/calculation/JewishCal;->SetHdate(Lcom/sec/jewishcalendar/calculation/HdateClass;III)I

    .line 804
    invoke-static {v1}, Lcom/sec/jewishcalendar/calculation/JewishCal;->GetDayOfMonth(Lcom/sec/jewishcalendar/calculation/HdateClass;)I

    move-result v0

    .line 805
    iget v2, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hday:I

    if-le v2, v0, :cond_1

    .line 807
    iput v0, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hday:I

    .line 809
    :cond_1
    iget v2, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hday:I

    iget v3, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hmonth:I

    iget v4, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hyear:I

    invoke-static {p0, v2, v3, v4}, Lcom/sec/jewishcalendar/calculation/JewishCal;->SetHdate(Lcom/sec/jewishcalendar/calculation/HdateClass;III)I

    .line 811
    return v5

    .line 782
    :cond_2
    iget v2, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hyear:I

    invoke-static {v2}, Lcom/sec/jewishcalendar/calculation/JewishCal;->IsYearLeap(I)I

    move-result v2

    if-ne v2, v5, :cond_3

    .line 785
    iget v2, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hmonth:I

    sparse-switch v2, :sswitch_data_0

    .line 794
    iget v2, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hmonth:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hmonth:I

    goto :goto_0

    .line 788
    :sswitch_0
    const/16 v2, 0xd

    iput v2, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hmonth:I

    goto :goto_0

    .line 791
    :sswitch_1
    const/4 v2, 0x7

    iput v2, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hmonth:I

    goto :goto_0

    .line 800
    :cond_3
    iget v2, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hmonth:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hmonth:I

    goto :goto_0

    .line 785
    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0xe -> :sswitch_1
    .end sparse-switch
.end method

.method public static MoveToNextWeek(Lcom/sec/jewishcalendar/calculation/HdateClass;)I
    .locals 4
    .param p0, "hdate"    # Lcom/sec/jewishcalendar/calculation/HdateClass;

    .prologue
    .line 884
    invoke-static {p0}, Lcom/sec/jewishcalendar/calculation/JewishCal;->GetDayOfMonth(Lcom/sec/jewishcalendar/calculation/HdateClass;)I

    move-result v0

    .line 885
    .local v0, "numDays":I
    iget v1, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hday:I

    add-int/lit8 v1, v1, 0x7

    if-le v1, v0, :cond_0

    .line 887
    iget v1, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hday:I

    sub-int v1, v0, v1

    rsub-int/lit8 v1, v1, 0x7

    iput v1, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hday:I

    .line 888
    invoke-static {p0}, Lcom/sec/jewishcalendar/calculation/JewishCal;->MoveToNextMonth(Lcom/sec/jewishcalendar/calculation/HdateClass;)I

    .line 895
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 892
    :cond_0
    iget v1, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hday:I

    add-int/lit8 v1, v1, 0x7

    iput v1, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hday:I

    .line 893
    iget v1, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hday:I

    iget v2, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hmonth:I

    iget v3, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hyear:I

    invoke-static {p0, v1, v2, v3}, Lcom/sec/jewishcalendar/calculation/JewishCal;->SetHdate(Lcom/sec/jewishcalendar/calculation/HdateClass;III)I

    goto :goto_0
.end method

.method public static MoveToNextYear(Lcom/sec/jewishcalendar/calculation/HdateClass;)I
    .locals 7
    .param p0, "hdate"    # Lcom/sec/jewishcalendar/calculation/HdateClass;

    .prologue
    const/16 v6, 0xd

    const/4 v4, 0x6

    const/4 v5, 0x1

    .line 959
    new-instance v1, Lcom/sec/jewishcalendar/calculation/HdateClass;

    invoke-direct {v1}, Lcom/sec/jewishcalendar/calculation/HdateClass;-><init>()V

    .line 960
    .local v1, "temp":Lcom/sec/jewishcalendar/calculation/HdateClass;
    const/4 v0, 0x0

    .line 967
    .local v0, "days":I
    iget v2, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hyear:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hyear:I

    .line 969
    iget v2, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hmonth:I

    if-eq v2, v6, :cond_0

    iget v2, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hmonth:I

    const/16 v3, 0xe

    if-ne v2, v3, :cond_3

    :cond_0
    iget v2, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hyear:I

    invoke-static {v2}, Lcom/sec/jewishcalendar/calculation/JewishCal;->IsYearLeap(I)I

    move-result v2

    if-nez v2, :cond_3

    .line 971
    iput v4, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hmonth:I

    .line 977
    :cond_1
    :goto_0
    iget v2, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hmonth:I

    iget v3, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hyear:I

    invoke-static {v1, v5, v2, v3}, Lcom/sec/jewishcalendar/calculation/JewishCal;->SetHdate(Lcom/sec/jewishcalendar/calculation/HdateClass;III)I

    .line 978
    invoke-static {v1}, Lcom/sec/jewishcalendar/calculation/JewishCal;->GetDayOfMonth(Lcom/sec/jewishcalendar/calculation/HdateClass;)I

    move-result v0

    .line 979
    iget v2, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hday:I

    if-le v2, v0, :cond_2

    .line 981
    iput v0, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hday:I

    .line 983
    :cond_2
    iget v2, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hday:I

    iget v3, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hmonth:I

    iget v4, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hyear:I

    invoke-static {p0, v2, v3, v4}, Lcom/sec/jewishcalendar/calculation/JewishCal;->SetHdate(Lcom/sec/jewishcalendar/calculation/HdateClass;III)I

    .line 984
    return v5

    .line 973
    :cond_3
    iget v2, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hmonth:I

    if-ne v2, v4, :cond_1

    iget v2, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hyear:I

    invoke-static {v2}, Lcom/sec/jewishcalendar/calculation/JewishCal;->IsYearLeap(I)I

    move-result v2

    if-ne v2, v5, :cond_1

    .line 975
    iput v6, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hmonth:I

    goto :goto_0
.end method

.method public static MoveToPrevDay(Lcom/sec/jewishcalendar/calculation/HdateClass;)I
    .locals 4
    .param p0, "hdate"    # Lcom/sec/jewishcalendar/calculation/HdateClass;

    .prologue
    const/4 v3, 0x1

    .line 901
    iget v0, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hday:I

    add-int/lit8 v0, v0, -0x1

    if-nez v0, :cond_0

    .line 903
    iput v3, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hday:I

    .line 904
    invoke-static {p0}, Lcom/sec/jewishcalendar/calculation/JewishCal;->MoveToPrevMonth(Lcom/sec/jewishcalendar/calculation/HdateClass;)I

    .line 905
    invoke-static {p0}, Lcom/sec/jewishcalendar/calculation/JewishCal;->GetDayOfMonth(Lcom/sec/jewishcalendar/calculation/HdateClass;)I

    move-result v0

    iput v0, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hday:I

    .line 914
    :goto_0
    return v3

    .line 910
    :cond_0
    iget v0, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hday:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hday:I

    .line 911
    iget v0, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hday:I

    iget v1, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hmonth:I

    iget v2, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hyear:I

    invoke-static {p0, v0, v1, v2}, Lcom/sec/jewishcalendar/calculation/JewishCal;->SetHdate(Lcom/sec/jewishcalendar/calculation/HdateClass;III)I

    goto :goto_0
.end method

.method public static MoveToPrevMonth(Lcom/sec/jewishcalendar/calculation/HdateClass;)I
    .locals 6
    .param p0, "hdate"    # Lcom/sec/jewishcalendar/calculation/HdateClass;

    .prologue
    const/16 v4, 0xc

    const/4 v5, 0x1

    .line 816
    new-instance v1, Lcom/sec/jewishcalendar/calculation/HdateClass;

    invoke-direct {v1}, Lcom/sec/jewishcalendar/calculation/HdateClass;-><init>()V

    .line 817
    .local v1, "temp":Lcom/sec/jewishcalendar/calculation/HdateClass;
    const/4 v0, 0x0

    .line 820
    .local v0, "days":I
    iget v2, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hyear:I

    invoke-static {v2}, Lcom/sec/jewishcalendar/calculation/JewishCal;->IsYearLeap(I)I

    move-result v2

    if-ne v2, v5, :cond_3

    .line 823
    iget v2, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hmonth:I

    sparse-switch v2, :sswitch_data_0

    .line 832
    iget v2, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hmonth:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hmonth:I

    .line 840
    :goto_0
    iget v2, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hmonth:I

    if-ge v2, v5, :cond_0

    .line 842
    iput v4, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hmonth:I

    .line 843
    iget v2, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hyear:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hyear:I

    .line 845
    :cond_0
    iget v2, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hyear:I

    const/16 v3, 0x161d

    if-ne v2, v3, :cond_1

    iget v2, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hmonth:I

    if-ge v2, v5, :cond_1

    .line 847
    const/16 v2, 0x16e4

    iput v2, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hyear:I

    .line 848
    iput v4, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hmonth:I

    .line 850
    :cond_1
    iget v2, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hmonth:I

    iget v3, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hyear:I

    invoke-static {v1, v5, v2, v3}, Lcom/sec/jewishcalendar/calculation/JewishCal;->SetHdate(Lcom/sec/jewishcalendar/calculation/HdateClass;III)I

    .line 851
    invoke-static {v1}, Lcom/sec/jewishcalendar/calculation/JewishCal;->GetDayOfMonth(Lcom/sec/jewishcalendar/calculation/HdateClass;)I

    move-result v0

    .line 852
    iget v2, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hday:I

    if-le v2, v0, :cond_2

    .line 854
    iput v0, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hday:I

    .line 856
    :cond_2
    iget v2, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hday:I

    iget v3, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hmonth:I

    iget v4, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hyear:I

    invoke-static {p0, v2, v3, v4}, Lcom/sec/jewishcalendar/calculation/JewishCal;->SetHdate(Lcom/sec/jewishcalendar/calculation/HdateClass;III)I

    .line 858
    return v5

    .line 826
    :sswitch_0
    const/4 v2, 0x5

    iput v2, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hmonth:I

    goto :goto_0

    .line 829
    :sswitch_1
    const/16 v2, 0xe

    iput v2, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hmonth:I

    goto :goto_0

    .line 838
    :cond_3
    iget v2, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hmonth:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hmonth:I

    goto :goto_0

    .line 823
    nop

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_1
        0xd -> :sswitch_0
    .end sparse-switch
.end method

.method public static MoveToPrevYear(Lcom/sec/jewishcalendar/calculation/HdateClass;)I
    .locals 7
    .param p0, "hdate"    # Lcom/sec/jewishcalendar/calculation/HdateClass;

    .prologue
    const/16 v6, 0xd

    const/4 v4, 0x6

    const/4 v5, 0x1

    .line 920
    new-instance v1, Lcom/sec/jewishcalendar/calculation/HdateClass;

    invoke-direct {v1}, Lcom/sec/jewishcalendar/calculation/HdateClass;-><init>()V

    .line 921
    .local v1, "temp":Lcom/sec/jewishcalendar/calculation/HdateClass;
    const/4 v0, 0x0

    .line 929
    .local v0, "days":I
    iget v2, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hyear:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hyear:I

    .line 931
    iget v2, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hmonth:I

    if-eq v2, v6, :cond_0

    iget v2, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hmonth:I

    const/16 v3, 0xe

    if-ne v2, v3, :cond_3

    :cond_0
    iget v2, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hyear:I

    invoke-static {v2}, Lcom/sec/jewishcalendar/calculation/JewishCal;->IsYearLeap(I)I

    move-result v2

    if-nez v2, :cond_3

    .line 933
    iput v4, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hmonth:I

    .line 939
    :cond_1
    :goto_0
    iget v2, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hmonth:I

    iget v3, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hyear:I

    invoke-static {v1, v5, v2, v3}, Lcom/sec/jewishcalendar/calculation/JewishCal;->SetHdate(Lcom/sec/jewishcalendar/calculation/HdateClass;III)I

    .line 940
    invoke-static {v1}, Lcom/sec/jewishcalendar/calculation/JewishCal;->GetDayOfMonth(Lcom/sec/jewishcalendar/calculation/HdateClass;)I

    move-result v0

    .line 941
    iget v2, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hday:I

    if-le v2, v0, :cond_2

    .line 943
    iput v0, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hday:I

    .line 946
    :cond_2
    iget v2, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hday:I

    iget v3, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hmonth:I

    iget v4, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hyear:I

    invoke-static {p0, v2, v3, v4}, Lcom/sec/jewishcalendar/calculation/JewishCal;->SetHdate(Lcom/sec/jewishcalendar/calculation/HdateClass;III)I

    .line 947
    return v5

    .line 935
    :cond_3
    iget v2, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hmonth:I

    if-ne v2, v4, :cond_1

    iget v2, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hyear:I

    invoke-static {v2}, Lcom/sec/jewishcalendar/calculation/JewishCal;->IsYearLeap(I)I

    move-result v2

    if-ne v2, v5, :cond_1

    .line 937
    iput v6, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hmonth:I

    goto :goto_0
.end method

.method public static SetGdate(Lcom/sec/jewishcalendar/calculation/HdateClass;III)I
    .locals 6
    .param p0, "hdate"    # Lcom/sec/jewishcalendar/calculation/HdateClass;
    .param p1, "d"    # I
    .param p2, "m"    # I
    .param p3, "y"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 401
    const/4 v4, 0x2

    new-array v1, v4, [I

    .line 403
    .local v1, "jd_tishrey1_2":[I
    if-nez p0, :cond_0

    .line 433
    :goto_0
    return v2

    .line 406
    :cond_0
    if-nez p1, :cond_1

    .line 408
    const/4 p1, 0x1

    .line 410
    :cond_1
    if-nez p2, :cond_2

    .line 412
    const/4 p2, 0x1

    .line 414
    :cond_2
    if-nez p3, :cond_3

    .line 416
    const/16 p3, 0x7b2

    .line 419
    :cond_3
    iput p1, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->gday:I

    .line 420
    iput p2, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->gmonth:I

    .line 421
    iput p3, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->gyear:I

    .line 423
    invoke-static {p1, p2, p3}, Lcom/sec/jewishcalendar/calculation/JewishCal;->hdate_gdate_to_jd(III)I

    move-result v0

    .line 424
    .local v0, "jd":I
    invoke-static {v0, p0, v1}, Lcom/sec/jewishcalendar/calculation/JewishCal;->hdate_jd_to_hdate(ILcom/sec/jewishcalendar/calculation/HdateClass;[I)V

    .line 426
    add-int/lit8 v4, v0, 0x1

    rem-int/lit8 v4, v4, 0x7

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hDayWeek:I

    .line 427
    aget v4, v1, v3

    aget v5, v1, v2

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hSizeOfYear:I

    .line 428
    aget v4, v1, v2

    add-int/lit8 v4, v4, 0x1

    rem-int/lit8 v4, v4, 0x7

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hNewYearDayWeek:I

    .line 429
    iget v4, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hSizeOfYear:I

    iget v5, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hNewYearDayWeek:I

    invoke-static {v4, v5}, Lcom/sec/jewishcalendar/calculation/JewishCal;->hdate_get_year_type(II)I

    move-result v4

    iput v4, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hYearType:I

    .line 430
    iput v0, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hJulianDay:I

    .line 431
    aget v2, v1, v2

    sub-int v2, v0, v2

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hDays:I

    .line 432
    iget v2, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hday:I

    add-int/lit8 v2, v2, -0x1

    iget v4, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hNewYearDayWeek:I

    add-int/lit8 v4, v4, -0x1

    add-int/2addr v2, v4

    div-int/lit8 v2, v2, 0x7

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hWeeks:I

    move v2, v3

    .line 433
    goto :goto_0
.end method

.method public static SetHdate(Lcom/sec/jewishcalendar/calculation/HdateClass;III)I
    .locals 6
    .param p0, "hdate"    # Lcom/sec/jewishcalendar/calculation/HdateClass;
    .param p1, "d"    # I
    .param p2, "m"    # I
    .param p3, "y"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 440
    const/4 v4, 0x2

    new-array v1, v4, [I

    .line 442
    .local v1, "jd_tishrey1_2":[I
    if-nez p0, :cond_0

    .line 459
    :goto_0
    return v2

    .line 444
    :cond_0
    iput p1, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hday:I

    .line 445
    iput p2, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hmonth:I

    .line 446
    iput p3, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hyear:I

    .line 448
    invoke-static {p1, p2, p3, v1}, Lcom/sec/jewishcalendar/calculation/JewishCal;->hdate_hdate_to_jd(III[I)I

    move-result v0

    .line 449
    .local v0, "jd":I
    invoke-static {v0, p0}, Lcom/sec/jewishcalendar/calculation/JewishCal;->hdate_jd_to_gdate(ILcom/sec/jewishcalendar/calculation/HdateClass;)V

    .line 451
    add-int/lit8 v4, v0, 0x1

    rem-int/lit8 v4, v4, 0x7

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hDayWeek:I

    .line 452
    aget v4, v1, v3

    aget v5, v1, v2

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hSizeOfYear:I

    .line 453
    aget v4, v1, v2

    add-int/lit8 v4, v4, 0x1

    rem-int/lit8 v4, v4, 0x7

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hNewYearDayWeek:I

    .line 454
    iget v4, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hSizeOfYear:I

    iget v5, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hNewYearDayWeek:I

    invoke-static {v4, v5}, Lcom/sec/jewishcalendar/calculation/JewishCal;->hdate_get_year_type(II)I

    move-result v4

    iput v4, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hYearType:I

    .line 455
    iput v0, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hJulianDay:I

    .line 456
    aget v2, v1, v2

    sub-int v2, v0, v2

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hDays:I

    .line 457
    iget v2, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hDays:I

    add-int/lit8 v2, v2, -0x1

    iget v4, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hNewYearDayWeek:I

    add-int/lit8 v4, v4, -0x1

    add-int/2addr v2, v4

    div-int/lit8 v2, v2, 0x7

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hWeeks:I

    move v2, v3

    .line 459
    goto :goto_0
.end method

.method private static hdate_days_from_3744(I)I
    .locals 13
    .param p0, "hebrew_year"    # I

    .prologue
    const/4 v12, 0x7

    .line 186
    add-int/lit16 v9, p0, -0xea0

    .line 187
    .local v9, "years_from_3744":I
    const/16 v10, 0x30b

    invoke-static {v12, v10}, Lcom/sec/jewishcalendar/calculation/JewishCal;->M(II)I

    move-result v3

    .line 190
    .local v3, "molad_3744":I
    mul-int/lit8 v10, v9, 0x7

    add-int/lit8 v10, v10, 0x1

    div-int/lit8 v2, v10, 0x13

    .line 191
    .local v2, "leap_months":I
    mul-int/lit8 v10, v9, 0x7

    add-int/lit8 v10, v10, 0x1

    rem-int/lit8 v1, v10, 0x13

    .line 192
    .local v1, "leap_left":I
    mul-int/lit8 v10, v9, 0xc

    add-int v4, v10, v2

    .line 195
    .local v4, "months":I
    invoke-static {}, Lcom/sec/jewishcalendar/calculation/JewishCal;->MONTH()I

    move-result v10

    mul-int/2addr v10, v4

    add-int v5, v10, v3

    .line 196
    .local v5, "parts":I
    mul-int/lit8 v10, v4, 0x1c

    div-int/lit16 v11, v5, 0x6540

    add-int/2addr v10, v11

    add-int/lit8 v0, v10, -0x2

    .line 199
    .local v0, "days":I
    const v10, 0x2c4c0

    rem-int v7, v5, v10

    .line 200
    .local v7, "parts_left_in_week":I
    rem-int/lit16 v6, v5, 0x6540

    .line 201
    .local v6, "parts_left_in_day":I
    div-int/lit16 v8, v7, 0x6540

    .line 204
    .local v8, "week_day":I
    const/16 v10, 0xc

    if-ge v1, v10, :cond_0

    const/4 v10, 0x3

    if-ne v8, v10, :cond_0

    .line 205
    const/16 v10, 0xf

    const/16 v11, 0xcc

    invoke-static {v10, v11}, Lcom/sec/jewishcalendar/calculation/JewishCal;->M(II)I

    move-result v10

    if-ge v6, v10, :cond_1

    .line 206
    :cond_0
    if-ge v1, v12, :cond_2

    const/4 v10, 0x2

    if-ne v8, v10, :cond_2

    .line 207
    const/16 v10, 0x15

    const/16 v11, 0x24d

    invoke-static {v10, v11}, Lcom/sec/jewishcalendar/calculation/JewishCal;->M(II)I

    move-result v10

    if-lt v6, v10, :cond_2

    .line 209
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 210
    add-int/lit8 v8, v8, 0x1

    .line 214
    :cond_2
    const/4 v10, 0x1

    if-eq v8, v10, :cond_3

    const/4 v10, 0x4

    if-eq v8, v10, :cond_3

    const/4 v10, 0x6

    if-ne v8, v10, :cond_4

    .line 216
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 219
    :cond_4
    return v0
.end method

.method private static hdate_gdate_to_jd(III)I
    .locals 4
    .param p0, "day"    # I
    .param p1, "month"    # I
    .param p2, "year"    # I

    .prologue
    .line 116
    add-int/lit16 v1, p2, 0x12c0

    add-int/lit8 v2, p1, -0xe

    div-int/lit8 v2, v2, 0xc

    add-int/2addr v1, v2

    mul-int/lit16 v1, v1, 0x5b5

    div-int/lit8 v1, v1, 0x4

    .line 117
    add-int/lit8 v2, p1, -0x2

    add-int/lit8 v3, p1, -0xe

    div-int/lit8 v3, v3, 0xc

    mul-int/lit8 v3, v3, 0xc

    sub-int/2addr v2, v3

    mul-int/lit16 v2, v2, 0x16f

    div-int/lit8 v2, v2, 0xc

    .line 116
    add-int/2addr v1, v2

    .line 118
    add-int/lit16 v2, p2, 0x1324

    add-int/lit8 v3, p1, -0xe

    div-int/lit8 v3, v3, 0xc

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x64

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x4

    .line 116
    sub-int/2addr v1, v2

    add-int/2addr v1, p0

    add-int/lit16 v0, v1, -0x7d4b

    .line 120
    .local v0, "jd":I
    return v0
.end method

.method public static hdate_get_next_mon(Lcom/sec/jewishcalendar/calculation/HdateClass;)I
    .locals 3
    .param p0, "hdate"    # Lcom/sec/jewishcalendar/calculation/HdateClass;

    .prologue
    .line 656
    const/4 v0, 0x0

    .line 658
    .local v0, "next_mon":I
    iget v1, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hmonth:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 659
    iget v1, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hYearType:I

    const/16 v2, 0x8

    if-ge v1, v2, :cond_0

    .line 660
    const/4 v0, 0x6

    .line 670
    :goto_0
    return v0

    .line 662
    :cond_0
    const/16 v0, 0xd

    goto :goto_0

    .line 663
    :cond_1
    iget v1, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hmonth:I

    const/16 v2, 0xd

    if-ne v1, v2, :cond_2

    .line 664
    const/16 v0, 0xe

    goto :goto_0

    .line 665
    :cond_2
    iget v1, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hmonth:I

    const/16 v2, 0xe

    if-ne v1, v2, :cond_3

    .line 666
    const/4 v0, 0x7

    goto :goto_0

    .line 668
    :cond_3
    iget v1, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hmonth:I

    add-int/lit8 v0, v1, 0x1

    goto :goto_0
.end method

.method public static hdate_get_prev_mon(Lcom/sec/jewishcalendar/calculation/HdateClass;)I
    .locals 3
    .param p0, "hdate"    # Lcom/sec/jewishcalendar/calculation/HdateClass;

    .prologue
    .line 675
    const/4 v0, 0x0

    .line 677
    .local v0, "prev_mon":I
    iget v1, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hmonth:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_1

    .line 678
    iget v1, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hYearType:I

    const/16 v2, 0x8

    if-ge v1, v2, :cond_0

    .line 679
    const/4 v0, 0x6

    .line 689
    :goto_0
    return v0

    .line 681
    :cond_0
    const/16 v0, 0xe

    goto :goto_0

    .line 682
    :cond_1
    iget v1, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hmonth:I

    const/16 v2, 0xe

    if-ne v1, v2, :cond_2

    .line 683
    const/16 v0, 0xd

    goto :goto_0

    .line 684
    :cond_2
    iget v1, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hmonth:I

    const/16 v2, 0xd

    if-ne v1, v2, :cond_3

    .line 685
    const/4 v0, 0x5

    goto :goto_0

    .line 687
    :cond_3
    iget v1, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hmonth:I

    add-int/lit8 v0, v1, -0x1

    goto :goto_0
.end method

.method private static hdate_get_year_type(II)I
    .locals 3
    .param p0, "size_of_year"    # I
    .param p1, "new_year_dw"    # I

    .prologue
    .line 156
    add-int/lit8 v1, p1, 0x1

    div-int/lit8 v0, v1, 0x2

    .line 157
    .local v0, "offset":I
    rem-int/lit8 v1, p0, 0xa

    add-int/lit8 v1, v1, -0x3

    div-int/lit8 v2, p0, 0xa

    add-int/lit8 v2, v2, -0x23

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    .line 160
    sget-object v1, Lcom/sec/jewishcalendar/calculation/JewishCal;->year_types:[I

    add-int/lit8 v2, v0, -0x1

    aget v1, v1, v2

    return v1
.end method

.method private static hdate_hdate_to_jd(III[I)I
    .locals 6
    .param p0, "day"    # I
    .param p1, "month"    # I
    .param p2, "year"    # I
    .param p3, "jd_tishrey1_2"    # [I

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 357
    const/16 v3, 0xd

    if-ne p1, v3, :cond_0

    .line 359
    const/4 p1, 0x6

    .line 361
    :cond_0
    const/16 v3, 0xe

    if-ne p1, v3, :cond_1

    .line 363
    const/4 p1, 0x6

    .line 364
    add-int/lit8 p0, p0, 0x1e

    .line 368
    :cond_1
    invoke-static {p2}, Lcom/sec/jewishcalendar/calculation/JewishCal;->hdate_days_from_3744(I)I

    move-result v0

    .line 369
    .local v0, "days_from_3744":I
    add-int/lit8 v3, p1, -0x1

    mul-int/lit8 v3, v3, 0x3b

    add-int/lit8 v3, v3, 0x1

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v0

    add-int/2addr p0, v3

    .line 372
    add-int/lit8 v3, p2, 0x1

    invoke-static {v3}, Lcom/sec/jewishcalendar/calculation/JewishCal;->hdate_days_from_3744(I)I

    move-result v3

    sub-int v2, v3, v0

    .line 375
    .local v2, "length_of_year":I
    rem-int/lit8 v3, v2, 0xa

    if-le v3, v5, :cond_2

    const/4 v3, 0x2

    if-le p1, v3, :cond_2

    .line 376
    add-int/lit8 p0, p0, 0x1

    .line 377
    :cond_2
    rem-int/lit8 v3, v2, 0xa

    if-ge v3, v5, :cond_3

    const/4 v3, 0x3

    if-le p1, v3, :cond_3

    .line 378
    add-int/lit8 p0, p0, -0x1

    .line 379
    :cond_3
    const/16 v3, 0x16d

    if-le v2, v3, :cond_4

    const/4 v3, 0x6

    if-le p1, v3, :cond_4

    .line 380
    add-int/lit8 p0, p0, 0x1e

    .line 383
    :cond_4
    const v3, 0x1a2bae

    add-int v1, p0, v3

    .line 386
    .local v1, "jd":I
    if-eqz p3, :cond_5

    .line 388
    const v3, 0x1a2baf

    add-int/2addr v3, v0

    aput v3, p3, v4

    .line 389
    const/4 v3, 0x1

    aget v4, p3, v4

    add-int/2addr v4, v2

    aput v4, p3, v3

    .line 392
    :cond_5
    return v1
.end method

.method private static hdate_jd_to_gdate(ILcom/sec/jewishcalendar/calculation/HdateClass;)V
    .locals 6
    .param p0, "jd"    # I
    .param p1, "hd"    # Lcom/sec/jewishcalendar/calculation/HdateClass;

    .prologue
    const v5, 0x23ab1

    .line 238
    const v4, 0x10bd9

    add-int v2, p0, v4

    .line 239
    .local v2, "l":I
    mul-int/lit8 v4, v2, 0x4

    div-int v3, v4, v5

    .line 240
    .local v3, "n":I
    mul-int v4, v5, v3

    add-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x4

    sub-int/2addr v2, v4

    .line 241
    add-int/lit8 v4, v2, 0x1

    mul-int/lit16 v4, v4, 0xfa0

    const v5, 0x164b09

    div-int v0, v4, v5

    .line 242
    .local v0, "i":I
    mul-int/lit16 v4, v0, 0x5b5

    div-int/lit8 v4, v4, 0x4

    sub-int v4, v2, v4

    add-int/lit8 v2, v4, 0x1f

    .line 243
    mul-int/lit8 v4, v2, 0x50

    div-int/lit16 v1, v4, 0x98f

    .line 244
    .local v1, "j":I
    mul-int/lit16 v4, v1, 0x98f

    div-int/lit8 v4, v4, 0x50

    sub-int v4, v2, v4

    iput v4, p1, Lcom/sec/jewishcalendar/calculation/HdateClass;->gday:I

    .line 245
    div-int/lit8 v2, v1, 0xb

    .line 246
    add-int/lit8 v4, v1, 0x2

    mul-int/lit8 v5, v2, 0xc

    sub-int/2addr v4, v5

    iput v4, p1, Lcom/sec/jewishcalendar/calculation/HdateClass;->gmonth:I

    .line 247
    add-int/lit8 v4, v3, -0x31

    mul-int/lit8 v4, v4, 0x64

    add-int/2addr v4, v0

    add-int/2addr v4, v2

    iput v4, p1, Lcom/sec/jewishcalendar/calculation/HdateClass;->gyear:I

    .line 249
    return-void
.end method

.method private static hdate_jd_to_hdate(ILcom/sec/jewishcalendar/calculation/HdateClass;[I)V
    .locals 7
    .param p0, "jd"    # I
    .param p1, "hd"    # Lcom/sec/jewishcalendar/calculation/HdateClass;
    .param p2, "jd_tishrey1_2"    # [I

    .prologue
    const v6, 0x1a2baf

    const/4 v5, 0x4

    .line 269
    invoke-static {p0, p1}, Lcom/sec/jewishcalendar/calculation/JewishCal;->hdate_jd_to_gdate(ILcom/sec/jewishcalendar/calculation/HdateClass;)V

    .line 272
    iget v4, p1, Lcom/sec/jewishcalendar/calculation/HdateClass;->gyear:I

    add-int/lit16 v4, v4, 0xeb0

    iput v4, p1, Lcom/sec/jewishcalendar/calculation/HdateClass;->hyear:I

    .line 274
    iget v4, p1, Lcom/sec/jewishcalendar/calculation/HdateClass;->hyear:I

    invoke-static {v4}, Lcom/sec/jewishcalendar/calculation/JewishCal;->hdate_days_from_3744(I)I

    move-result v4

    add-int v1, v4, v6

    .line 275
    .local v1, "internal_jd_tishrey1":I
    iget v4, p1, Lcom/sec/jewishcalendar/calculation/HdateClass;->hyear:I

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Lcom/sec/jewishcalendar/calculation/JewishCal;->hdate_days_from_3744(I)I

    move-result v4

    add-int v2, v4, v6

    .line 278
    .local v2, "internal_jd_tishrey1_next_year":I
    if-gt v2, p0, :cond_0

    .line 280
    iget v4, p1, Lcom/sec/jewishcalendar/calculation/HdateClass;->hyear:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p1, Lcom/sec/jewishcalendar/calculation/HdateClass;->hyear:I

    .line 281
    move v1, v2

    .line 282
    iget v4, p1, Lcom/sec/jewishcalendar/calculation/HdateClass;->hyear:I

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Lcom/sec/jewishcalendar/calculation/JewishCal;->hdate_days_from_3744(I)I

    move-result v4

    add-int v2, v4, v6

    .line 285
    :cond_0
    sub-int v3, v2, v1

    .line 288
    .local v3, "size_of_year":I
    sub-int v0, p0, v1

    .line 291
    .local v0, "days":I
    add-int/lit16 v4, v3, -0xec

    if-lt v0, v4, :cond_3

    .line 293
    add-int/lit16 v4, v3, -0xec

    sub-int/2addr v0, v4

    .line 294
    mul-int/lit8 v4, v0, 0x2

    div-int/lit8 v4, v4, 0x3b

    iput v4, p1, Lcom/sec/jewishcalendar/calculation/HdateClass;->hmonth:I

    .line 295
    iget v4, p1, Lcom/sec/jewishcalendar/calculation/HdateClass;->hmonth:I

    mul-int/lit8 v4, v4, 0x3b

    add-int/lit8 v4, v4, 0x1

    div-int/lit8 v4, v4, 0x2

    sub-int v4, v0, v4

    add-int/lit8 v4, v4, 0x1

    iput v4, p1, Lcom/sec/jewishcalendar/calculation/HdateClass;->hday:I

    .line 297
    iget v4, p1, Lcom/sec/jewishcalendar/calculation/HdateClass;->hmonth:I

    add-int/lit8 v4, v4, 0x4

    add-int/lit8 v4, v4, 0x1

    iput v4, p1, Lcom/sec/jewishcalendar/calculation/HdateClass;->hmonth:I

    .line 300
    const/16 v4, 0x163

    if-le v3, v4, :cond_1

    iget v4, p1, Lcom/sec/jewishcalendar/calculation/HdateClass;->hmonth:I

    const/4 v5, 0x6

    if-gt v4, v5, :cond_1

    .line 301
    iget v4, p1, Lcom/sec/jewishcalendar/calculation/HdateClass;->hmonth:I

    add-int/lit8 v4, v4, 0x8

    iput v4, p1, Lcom/sec/jewishcalendar/calculation/HdateClass;->hmonth:I

    .line 331
    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    .line 333
    const/4 v4, 0x0

    aput v1, p2, v4

    .line 334
    const/4 v4, 0x1

    aput v2, p2, v4

    .line 337
    :cond_2
    return-void

    .line 306
    :cond_3
    rem-int/lit8 v4, v3, 0xa

    if-le v4, v5, :cond_4

    const/16 v4, 0x3b

    if-ne v0, v4, :cond_4

    .line 308
    add-int/lit8 v4, v0, -0x1

    mul-int/lit8 v4, v4, 0x2

    div-int/lit8 v4, v4, 0x3b

    iput v4, p1, Lcom/sec/jewishcalendar/calculation/HdateClass;->hmonth:I

    .line 309
    iget v4, p1, Lcom/sec/jewishcalendar/calculation/HdateClass;->hmonth:I

    mul-int/lit8 v4, v4, 0x3b

    add-int/lit8 v4, v4, 0x1

    div-int/lit8 v4, v4, 0x2

    sub-int v4, v0, v4

    add-int/lit8 v4, v4, 0x1

    iput v4, p1, Lcom/sec/jewishcalendar/calculation/HdateClass;->hday:I

    .line 327
    :goto_1
    iget v4, p1, Lcom/sec/jewishcalendar/calculation/HdateClass;->hmonth:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p1, Lcom/sec/jewishcalendar/calculation/HdateClass;->hmonth:I

    goto :goto_0

    .line 311
    :cond_4
    rem-int/lit8 v4, v3, 0xa

    if-le v4, v5, :cond_5

    const/16 v4, 0x3a

    if-le v0, v4, :cond_5

    .line 313
    add-int/lit8 v4, v0, -0x1

    mul-int/lit8 v4, v4, 0x2

    div-int/lit8 v4, v4, 0x3b

    iput v4, p1, Lcom/sec/jewishcalendar/calculation/HdateClass;->hmonth:I

    .line 314
    iget v4, p1, Lcom/sec/jewishcalendar/calculation/HdateClass;->hmonth:I

    mul-int/lit8 v4, v4, 0x3b

    add-int/lit8 v4, v4, 0x1

    div-int/lit8 v4, v4, 0x2

    sub-int v4, v0, v4

    iput v4, p1, Lcom/sec/jewishcalendar/calculation/HdateClass;->hday:I

    goto :goto_1

    .line 316
    :cond_5
    rem-int/lit8 v4, v3, 0xa

    if-ge v4, v5, :cond_6

    const/16 v4, 0x57

    if-le v0, v4, :cond_6

    .line 318
    add-int/lit8 v4, v0, 0x1

    mul-int/lit8 v4, v4, 0x2

    div-int/lit8 v4, v4, 0x3b

    iput v4, p1, Lcom/sec/jewishcalendar/calculation/HdateClass;->hmonth:I

    .line 319
    iget v4, p1, Lcom/sec/jewishcalendar/calculation/HdateClass;->hmonth:I

    mul-int/lit8 v4, v4, 0x3b

    add-int/lit8 v4, v4, 0x1

    div-int/lit8 v4, v4, 0x2

    sub-int v4, v0, v4

    add-int/lit8 v4, v4, 0x2

    iput v4, p1, Lcom/sec/jewishcalendar/calculation/HdateClass;->hday:I

    goto :goto_1

    .line 323
    :cond_6
    mul-int/lit8 v4, v0, 0x2

    div-int/lit8 v4, v4, 0x3b

    iput v4, p1, Lcom/sec/jewishcalendar/calculation/HdateClass;->hmonth:I

    .line 324
    iget v4, p1, Lcom/sec/jewishcalendar/calculation/HdateClass;->hmonth:I

    mul-int/lit8 v4, v4, 0x3b

    add-int/lit8 v4, v4, 0x1

    div-int/lit8 v4, v4, 0x2

    sub-int v4, v0, v4

    add-int/lit8 v4, v4, 0x1

    iput v4, p1, Lcom/sec/jewishcalendar/calculation/HdateClass;->hday:I

    goto :goto_1
.end method
