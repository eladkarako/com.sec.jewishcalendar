.class public Lnet/sourceforge/zmanim/hebrewcalendar/HebrewDateFormatter;
.super Ljava/lang/Object;
.source "HebrewDateFormatter.java"


# static fields
.field private static final GERESH:Ljava/lang/String; = "\'"

.field private static final GERSHAYIM:Ljava/lang/String; = "\""

.field private static final hebrewDaysOfWeek:[Ljava/lang/String;

.field private static final hebrewMonths:[Ljava/lang/String;

.field private static final hebrewParshiyos:[Ljava/lang/String;


# instance fields
.field private hebrewFormat:Z

.field private hebrewHolidays:[Ljava/lang/String;

.field private hebrewOmerPrefix:Ljava/lang/String;

.field private longWeekFormat:Z

.field private transliteratedHolidays:[Ljava/lang/String;

.field private transliteratedMonths:[Ljava/lang/String;

.field private transliteratedParshios:[Ljava/lang/String;

.field private transliteratedShabbosDayOfweek:Ljava/lang/String;

.field private useGershGershayim:Z

.field private useLonghebrewYears:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 297
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u05e0\u05d9\u05e1\u05df"

    aput-object v1, v0, v3

    const-string v1, "\u05d0\u05d9\u05d9\u05e8"

    aput-object v1, v0, v4

    .line 298
    const-string v1, "\u05e1\u05d9\u05d5\u05d5\u05df"

    aput-object v1, v0, v5

    const-string v1, "\u05ea\u05de\u05d5\u05d6"

    aput-object v1, v0, v6

    const-string v1, "\u05d0\u05d1"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "\u05d0\u05dc\u05d5\u05dc"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 299
    const-string v2, "\u05ea\u05e9\u05e8\u05d9"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\u05d7\u05e9\u05d5\u05d5\u05df"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\u05db\u05e1\u05dc\u05d5"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 300
    const-string v2, "\u05d8\u05d1\u05ea"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\u05e9\u05d1\u05d8"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "\u05d0\u05d3\u05e8"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "\u05d0\u05d3\u05e8 \u05d1"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    .line 301
    const-string v2, "\u05d0\u05d3\u05e8 \u05d0"

    aput-object v2, v0, v1

    .line 297
    sput-object v0, Lnet/sourceforge/zmanim/hebrewcalendar/HebrewDateFormatter;->hebrewMonths:[Ljava/lang/String;

    .line 343
    const/16 v0, 0x3c

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u05d1\u05e8\u05d0\u05e9\u05d9\u05ea"

    aput-object v1, v0, v3

    const-string v1, "\u05e0\u05d7"

    aput-object v1, v0, v4

    .line 344
    const-string v1, "\u05dc\u05da \u05dc\u05da"

    aput-object v1, v0, v5

    const-string v1, "\u05d5\u05d9\u05e8\u05d0"

    aput-object v1, v0, v6

    const-string v1, "\u05d7\u05d9\u05d9 \u05e9\u05e8\u05d4"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    .line 345
    const-string v2, "\u05ea\u05d5\u05dc\u05d3\u05d5\u05ea"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u05d5\u05d9\u05e6\u05d0"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\u05d5\u05d9\u05e9\u05dc\u05d7"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 346
    const-string v2, "\u05d5\u05d9\u05e9\u05d1"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\u05de\u05e7\u05e5"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\u05d5\u05d9\u05d2\u05e9"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "\u05d5\u05d9\u05d7\u05d9"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 348
    const-string v2, "\u05e9\u05de\u05d5\u05ea"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "\u05d5\u05d0\u05e8\u05d0"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "\u05d1\u05d0"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "\u05d1\u05e9\u05dc\u05d7"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    .line 349
    const-string v2, "\u05d9\u05ea\u05e8\u05d5"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "\u05de\u05e9\u05e4\u05d8\u05d9\u05dd"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "\u05ea\u05e8\u05d5\u05de\u05d4"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    .line 350
    const-string v2, "\u05ea\u05e6\u05d5\u05d4"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "\u05db\u05d9 \u05ea\u05e9\u05d0"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "\u05d5\u05d9\u05e7\u05d4\u05dc"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    .line 351
    const-string v2, "\u05e4\u05e7\u05d5\u05d3\u05d9"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    .line 353
    const-string v2, "\u05d5\u05d9\u05e7\u05e8\u05d0"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "\u05e6\u05d5"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "\u05e9\u05de\u05d9\u05e0\u05d9"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    .line 354
    const-string v2, "\u05ea\u05d6\u05e8\u05d9\u05e2"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "\u05de\u05e6\u05e8\u05e2"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    .line 355
    const-string v2, "\u05d0\u05d7\u05e8\u05d9 \u05de\u05d5\u05ea"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "\u05e7\u05d3\u05d5\u05e9\u05d9\u05dd"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    .line 356
    const-string v2, "\u05d0\u05de\u05d5\u05e8"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "\u05d1\u05d4\u05e8"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "\u05d1\u05d7\u05e7\u05ea\u05d9"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    .line 358
    const-string v2, "\u05d1\u05de\u05d3\u05d1\u05e8"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "\u05e0\u05e9\u05d0"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "\u05d1\u05d4\u05e2\u05dc\u05ea\u05da"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    .line 359
    const-string v2, "\u05e9\u05dc\u05d7 \u05dc\u05da"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "\u05e7\u05e8\u05d7"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "\u05d7\u05d5\u05e7\u05ea"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "\u05d1\u05dc\u05e7"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    .line 360
    const-string v2, "\u05e4\u05d9\u05e0\u05d7\u05e1"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "\u05de\u05d8\u05d5\u05ea"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "\u05de\u05e1\u05e2\u05d9"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    .line 362
    const-string v2, "\u05d3\u05d1\u05e8\u05d9\u05dd"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "\u05d5\u05d0\u05ea\u05d7\u05e0\u05df"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "\u05e2\u05e7\u05d1"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    .line 363
    const-string v2, "\u05e8\u05d0\u05d4"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "\u05e9\u05d5\u05e4\u05d8\u05d9\u05dd"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "\u05db\u05d9 \u05ea\u05e6\u05d0"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    .line 364
    const-string v2, "\u05db\u05d9 \u05ea\u05d1\u05d5\u05d0"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "\u05e0\u05d9\u05e6\u05d1\u05d9\u05dd"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    .line 365
    const-string v2, "\u05d5\u05d9\u05dc\u05da"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "\u05d4\u05d0\u05d6\u05d9\u05e0\u05d5"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    .line 367
    const-string v2, "\u05d5\u05d9\u05e7\u05d4\u05dc \u05e4\u05e7\u05d5\u05d3\u05d9"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    .line 368
    const-string v2, "\u05ea\u05d6\u05e8\u05d9\u05e2 \u05de\u05e6\u05e8\u05e2"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    .line 369
    const-string v2, "\u05d0\u05d7\u05e8\u05d9 \u05de\u05d5\u05ea \u05e7\u05d3\u05d5\u05e9\u05d9\u05dd"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    .line 370
    const-string v2, "\u05d1\u05d4\u05e8 \u05d1\u05d7\u05e7\u05ea\u05d9"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "\u05d7\u05d5\u05e7\u05ea \u05d1\u05dc\u05e7"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    .line 371
    const-string v2, "\u05de\u05d8\u05d5\u05ea \u05de\u05e1\u05e2\u05d9"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    .line 372
    const-string v2, "\u05e0\u05d9\u05e6\u05d1\u05d9\u05dd \u05d5\u05d9\u05dc\u05da"

    aput-object v2, v0, v1

    .line 343
    sput-object v0, Lnet/sourceforge/zmanim/hebrewcalendar/HebrewDateFormatter;->hebrewParshiyos:[Ljava/lang/String;

    .line 377
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u05e8\u05d0\u05e9\u05d5\u05df"

    aput-object v1, v0, v3

    const-string v1, "\u05e9\u05e0\u05d9"

    aput-object v1, v0, v4

    .line 378
    const-string v1, "\u05e9\u05dc\u05d9\u05e9\u05d9"

    aput-object v1, v0, v5

    const-string v1, "\u05e8\u05d1\u05d9\u05e2\u05d9"

    aput-object v1, v0, v6

    const-string v1, "\u05d7\u05de\u05d9\u05e9\u05d9"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    .line 379
    const-string v2, "\u05e9\u05e9\u05d9"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u05e9\u05d1\u05ea"

    aput-object v2, v0, v1

    .line 377
    sput-object v0, Lnet/sourceforge/zmanim/hebrewcalendar/HebrewDateFormatter;->hebrewDaysOfWeek:[Ljava/lang/String;

    .line 379
    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-boolean v3, p0, Lnet/sourceforge/zmanim/hebrewcalendar/HebrewDateFormatter;->hebrewFormat:Z

    .line 41
    iput-boolean v3, p0, Lnet/sourceforge/zmanim/hebrewcalendar/HebrewDateFormatter;->useLonghebrewYears:Z

    .line 42
    iput-boolean v4, p0, Lnet/sourceforge/zmanim/hebrewcalendar/HebrewDateFormatter;->useGershGershayim:Z

    .line 43
    iput-boolean v4, p0, Lnet/sourceforge/zmanim/hebrewcalendar/HebrewDateFormatter;->longWeekFormat:Z

    .line 72
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Nissan"

    aput-object v1, v0, v3

    const-string v1, "Iyar"

    aput-object v1, v0, v4

    const-string v1, "Sivan"

    aput-object v1, v0, v5

    const-string v1, "Tammuz"

    aput-object v1, v0, v6

    const-string v1, "Av"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "Elul"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Tishrei"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Cheshvan"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 73
    const-string v2, "Kislev"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Teves"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Shevat"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Adar"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "Adar II"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "Adar I"

    aput-object v2, v0, v1

    iput-object v0, p0, Lnet/sourceforge/zmanim/hebrewcalendar/HebrewDateFormatter;->transliteratedMonths:[Ljava/lang/String;

    .line 74
    const-string v0, "\u05d1"

    iput-object v0, p0, Lnet/sourceforge/zmanim/hebrewcalendar/HebrewDateFormatter;->hebrewOmerPrefix:Ljava/lang/String;

    .line 76
    const-string v0, "Shabbos"

    iput-object v0, p0, Lnet/sourceforge/zmanim/hebrewcalendar/HebrewDateFormatter;->transliteratedShabbosDayOfweek:Ljava/lang/String;

    .line 104
    const/16 v0, 0x21

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Erev Pesach"

    aput-object v1, v0, v3

    const-string v1, "Pesach"

    aput-object v1, v0, v4

    const-string v1, "Chol Hamoed Pesach"

    aput-object v1, v0, v5

    const-string v1, "Pesach Sheni"

    aput-object v1, v0, v6

    .line 105
    const-string v1, "Erev Shavuos"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "Shavuos"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Seventeenth of Tammuz"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Tishah B\'Av"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Tu B\'Av"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Erev Rosh Hashana"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 106
    const-string v2, "Rosh Hashana"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Fast of Gedalyah"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "Erev Yom Kippur"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "Yom Kippur"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "Erev Succos"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "Succos"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    .line 107
    const-string v2, "Chol Hamoed Succos"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "Hoshana Rabbah"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "Shemini Atzeres"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "Simchas Torah"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "Erev Chanukah"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "Chanukah"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    .line 108
    const-string v2, "Tenth of Teves"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "Tu B\'Shvat"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "Fast of Esther"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "Purim"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "Shushan Purim"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "Purim Katan"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "Rosh Chodesh"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    .line 109
    const-string v2, "Yom HaShoah"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "Yom Hazikaron"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "Yom Ha\'atzmaut"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "Yom Yerushalayim"

    aput-object v2, v0, v1

    iput-object v0, p0, Lnet/sourceforge/zmanim/hebrewcalendar/HebrewDateFormatter;->transliteratedHolidays:[Ljava/lang/String;

    .line 146
    const/16 v0, 0x21

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u05e2\u05e8\u05d1 \u05e4\u05e1\u05d7"

    aput-object v1, v0, v3

    const-string v1, "\u05e4\u05e1\u05d7"

    aput-object v1, v0, v4

    .line 147
    const-string v1, "\u05d7\u05d5\u05dc \u05d4\u05de\u05d5\u05e2\u05d3 \u05e4\u05e1\u05d7"

    aput-object v1, v0, v5

    .line 148
    const-string v1, "\u05e4\u05e1\u05d7 \u05e9\u05e0\u05d9"

    aput-object v1, v0, v6

    const-string v1, "\u05e2\u05e8\u05d1 \u05e9\u05d1\u05d5\u05e2\u05d5\u05ea"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    .line 149
    const-string v2, "\u05e9\u05d1\u05d5\u05e2\u05d5\u05ea"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 150
    const-string v2, "\u05e9\u05d1\u05e2\u05d4 \u05e2\u05e9\u05e8 \u05d1\u05ea\u05de\u05d5\u05d6"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 151
    const-string v2, "\u05ea\u05e9\u05e2\u05d4 \u05d1\u05d0\u05d1"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\u05d8\u05f4\u05d5 \u05d1\u05d0\u05d1"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 152
    const-string v2, "\u05e2\u05e8\u05d1 \u05e8\u05d0\u05e9 \u05d4\u05e9\u05e0\u05d4"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 153
    const-string v2, "\u05e8\u05d0\u05e9 \u05d4\u05e9\u05e0\u05d4"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "\u05e6\u05d5\u05dd \u05d2\u05d3\u05dc\u05d9\u05d4"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 154
    const-string v2, "\u05e2\u05e8\u05d1 \u05d9\u05d5\u05dd \u05db\u05d9\u05e4\u05d5\u05e8"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    .line 155
    const-string v2, "\u05d9\u05d5\u05dd \u05db\u05d9\u05e4\u05d5\u05e8"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "\u05e2\u05e8\u05d1 \u05e1\u05d5\u05db\u05d5\u05ea"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    .line 156
    const-string v2, "\u05e1\u05d5\u05db\u05d5\u05ea"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    .line 157
    const-string v2, "\u05d7\u05d5\u05dc \u05d4\u05de\u05d5\u05e2\u05d3 \u05e1\u05d5\u05db\u05d5\u05ea"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    .line 158
    const-string v2, "\u05d4\u05d5\u05e9\u05e2\u05e0\u05d0 \u05e8\u05d1\u05d4"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    .line 159
    const-string v2, "\u05e9\u05de\u05d9\u05e0\u05d9 \u05e2\u05e6\u05e8\u05ea"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    .line 160
    const-string v2, "\u05e9\u05de\u05d7\u05ea \u05ea\u05d5\u05e8\u05d4"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "\u05e2\u05e8\u05d1 \u05d7\u05e0\u05d5\u05db\u05d4"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    .line 161
    const-string v2, "\u05d7\u05e0\u05d5\u05db\u05d4"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "\u05e2\u05e9\u05e8\u05d4 \u05d1\u05d8\u05d1\u05ea"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    .line 162
    const-string v2, "\u05d8\u05f4\u05d5 \u05d1\u05e9\u05d1\u05d8"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "\u05ea\u05e2\u05e0\u05d9\u05ea \u05d0\u05e1\u05ea\u05e8"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    .line 163
    const-string v2, "\u05e4\u05d5\u05e8\u05d9\u05dd"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "\u05e4\u05d5\u05e8\u05d9\u05dd \u05e9\u05d5\u05e9\u05df"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    .line 164
    const-string v2, "\u05e4\u05d5\u05e8\u05d9\u05dd \u05e7\u05d8\u05df"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "\u05e8\u05d0\u05e9 \u05d7\u05d5\u05d3\u05e9"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    .line 165
    const-string v2, "\u05d9\u05d5\u05dd \u05d4\u05e9\u05d5\u05d0\u05d4"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    .line 166
    const-string v2, "\u05d9\u05d5\u05dd \u05d4\u05d6\u05d9\u05db\u05e8\u05d5\u05df"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    .line 167
    const-string v2, "\u05d9\u05d5\u05dd \u05d4\u05e2\u05e6\u05de\u05d0\u05d5\u05ea"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    .line 168
    const-string v2, "\u05d9\u05d5\u05dd \u05d9\u05e8\u05d5\u05e9\u05dc\u05d9\u05dd"

    aput-object v2, v0, v1

    iput-object v0, p0, Lnet/sourceforge/zmanim/hebrewcalendar/HebrewDateFormatter;->hebrewHolidays:[Ljava/lang/String;

    .line 310
    const/16 v0, 0x3c

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Bereshis"

    aput-object v1, v0, v3

    const-string v1, "Noach"

    aput-object v1, v0, v4

    const-string v1, "Lech Lecha"

    aput-object v1, v0, v5

    const-string v1, "Vayera"

    aput-object v1, v0, v6

    const-string v1, "Chayei Sara"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "Toldos"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 311
    const-string v2, "Vayetzei"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Vayishlach"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Vayeshev"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Miketz"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Vayigash"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Vayechi"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "Shemos"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "Vaera"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "Bo"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    .line 312
    const-string v2, "Beshalach"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "Yisro"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "Mishpatim"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "Terumah"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "Tetzaveh"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "Ki Sisa"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "Vayakhel"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "Pekudei"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "Vayikra"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    .line 313
    const-string v2, "Tzav"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "Shmini"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "Tazria"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "Metzora"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "Achrei Mos"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "Kedoshim"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "Emor"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "Behar"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "Bechukosai"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "Bamidbar"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    .line 314
    const-string v2, "Nasso"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "Beha\'aloscha"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "Sh\'lach"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "Korach"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "Chukas"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "Balak"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "Pinchas"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "Matos"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "Masei"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "Devarim"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    .line 315
    const-string v2, "Vaeschanan"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "Eikev"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "Re\'eh"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "Shoftim"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "Ki Seitzei"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "Ki Savo"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "Nitzavim"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "Vayeilech"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "Ha\'Azinu"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    .line 316
    const-string v2, "Vayakhel Pekudei"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "Tazria Metzora"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "Achrei Mos Kedoshim"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "Behar Bechukosai"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "Chukas Balak"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    .line 317
    const-string v2, "Matos Masei"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "Nitzavim Vayeilech"

    aput-object v2, v0, v1

    iput-object v0, p0, Lnet/sourceforge/zmanim/hebrewcalendar/HebrewDateFormatter;->transliteratedParshios:[Ljava/lang/String;

    .line 39
    return-void
.end method

.method private formatMonth(II)Ljava/lang/String;
    .locals 4
    .param p1, "year"    # I
    .param p2, "month"    # I

    .prologue
    const/16 v3, 0xd

    const/16 v2, 0xc

    .line 539
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/hebrewcalendar/HebrewDateFormatter;->isHebrewFormat()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 540
    invoke-static {p1}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->isJewishLeapYear(I)Z

    move-result v0

    if-eqz v0, :cond_1

    if-ne p2, v2, :cond_1

    .line 541
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v0, Lnet/sourceforge/zmanim/hebrewcalendar/HebrewDateFormatter;->hebrewMonths:[Ljava/lang/String;

    aget-object v0, v0, v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lnet/sourceforge/zmanim/hebrewcalendar/HebrewDateFormatter;->useGershGershayim:Z

    if-eqz v0, :cond_0

    const-string v0, "\'"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 551
    :goto_1
    return-object v0

    .line 541
    :cond_0
    const-string v0, ""

    goto :goto_0

    .line 542
    :cond_1
    invoke-static {p1}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->isJewishLeapYear(I)Z

    move-result v0

    if-eqz v0, :cond_3

    if-ne p2, v3, :cond_3

    .line 543
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v0, Lnet/sourceforge/zmanim/hebrewcalendar/HebrewDateFormatter;->hebrewMonths:[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lnet/sourceforge/zmanim/hebrewcalendar/HebrewDateFormatter;->useGershGershayim:Z

    if-eqz v0, :cond_2

    const-string v0, "\'"

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    const-string v0, ""

    goto :goto_2

    .line 545
    :cond_3
    sget-object v0, Lnet/sourceforge/zmanim/hebrewcalendar/HebrewDateFormatter;->hebrewMonths:[Ljava/lang/String;

    add-int/lit8 v1, p2, -0x1

    aget-object v0, v0, v1

    goto :goto_1

    .line 548
    :cond_4
    invoke-static {p1}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->isJewishLeapYear(I)Z

    move-result v0

    if-eqz v0, :cond_5

    if-ne p2, v2, :cond_5

    .line 549
    iget-object v0, p0, Lnet/sourceforge/zmanim/hebrewcalendar/HebrewDateFormatter;->transliteratedMonths:[Ljava/lang/String;

    aget-object v0, v0, v3

    goto :goto_1

    .line 551
    :cond_5
    iget-object v0, p0, Lnet/sourceforge/zmanim/hebrewcalendar/HebrewDateFormatter;->transliteratedMonths:[Ljava/lang/String;

    add-int/lit8 v1, p2, -0x1

    aget-object v0, v0, v1

    goto :goto_1
.end method


# virtual methods
.method public format(Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;)Ljava/lang/String;
    .locals 2
    .param p1, "jewishDate"    # Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;

    .prologue
    .line 499
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/hebrewcalendar/HebrewDateFormatter;->isHebrewFormat()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 500
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->getJewishDayOfMonth()I

    move-result v1

    invoke-virtual {p0, v1}, Lnet/sourceforge/zmanim/hebrewcalendar/HebrewDateFormatter;->formatHebrewNumber(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, p1}, Lnet/sourceforge/zmanim/hebrewcalendar/HebrewDateFormatter;->formatMonth(Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 501
    invoke-virtual {p1}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->getJewishYear()I

    move-result v1

    invoke-virtual {p0, v1}, Lnet/sourceforge/zmanim/hebrewcalendar/HebrewDateFormatter;->formatHebrewNumber(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 500
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 503
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->getJewishDayOfMonth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, p1}, Lnet/sourceforge/zmanim/hebrewcalendar/HebrewDateFormatter;->formatMonth(Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->getJewishYear()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public formatDafYomiBavli(Lnet/sourceforge/zmanim/hebrewcalendar/Daf;)Ljava/lang/String;
    .locals 2
    .param p1, "daf"    # Lnet/sourceforge/zmanim/hebrewcalendar/Daf;

    .prologue
    .line 640
    iget-boolean v0, p0, Lnet/sourceforge/zmanim/hebrewcalendar/HebrewDateFormatter;->hebrewFormat:Z

    if-eqz v0, :cond_0

    .line 641
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lnet/sourceforge/zmanim/hebrewcalendar/Daf;->getMasechta()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lnet/sourceforge/zmanim/hebrewcalendar/Daf;->getDaf()I

    move-result v1

    invoke-virtual {p0, v1}, Lnet/sourceforge/zmanim/hebrewcalendar/HebrewDateFormatter;->formatHebrewNumber(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 643
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lnet/sourceforge/zmanim/hebrewcalendar/Daf;->getMasechtaTransliterated()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lnet/sourceforge/zmanim/hebrewcalendar/Daf;->getDaf()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public formatDayOfWeek(Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;)Ljava/lang/String;
    .locals 3
    .param p1, "jewishDate"    # Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;

    .prologue
    .line 392
    iget-boolean v1, p0, Lnet/sourceforge/zmanim/hebrewcalendar/HebrewDateFormatter;->hebrewFormat:Z

    if-eqz v1, :cond_1

    .line 393
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 394
    .local v0, "sb":Ljava/lang/StringBuffer;
    iget-boolean v1, p0, Lnet/sourceforge/zmanim/hebrewcalendar/HebrewDateFormatter;->longWeekFormat:Z

    if-eqz v1, :cond_0

    sget-object v1, Lnet/sourceforge/zmanim/hebrewcalendar/HebrewDateFormatter;->hebrewDaysOfWeek:[Ljava/lang/String;

    invoke-virtual {p1}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->getDayOfWeek()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 396
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 398
    .end local v0    # "sb":Ljava/lang/StringBuffer;
    :goto_1
    return-object v1

    .line 395
    .restart local v0    # "sb":Ljava/lang/StringBuffer;
    :cond_0
    invoke-virtual {p1}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->getDayOfWeek()I

    move-result v1

    .line 394
    invoke-virtual {p0, v1}, Lnet/sourceforge/zmanim/hebrewcalendar/HebrewDateFormatter;->formatHebrewNumber(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 398
    .end local v0    # "sb":Ljava/lang/StringBuffer;
    :cond_1
    invoke-virtual {p1}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->getDayOfWeek()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_2

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/hebrewcalendar/HebrewDateFormatter;->getTransliteratedShabbosDayOfWeek()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "EEEE"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 399
    invoke-virtual {p1}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public formatHebrewNumber(I)Ljava/lang/String;
    .locals 16
    .param p1, "number"    # I

    .prologue
    .line 668
    if-gez p1, :cond_0

    .line 669
    new-instance v14, Ljava/lang/IllegalArgumentException;

    const-string v15, "negative numbers can\'t be formatted"

    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 670
    :cond_0
    const/16 v14, 0x270f

    move/from16 v0, p1

    if-le v0, v14, :cond_1

    .line 671
    new-instance v14, Ljava/lang/IllegalArgumentException;

    const-string v15, "numbers > 9999 can\'t be formatted"

    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 674
    :cond_1
    const-string v1, "\u05d0\u05dc\u05e4\u05d9\u05dd"

    .line 675
    .local v1, "ALAFIM":Ljava/lang/String;
    const-string v2, "\u05d0\u05e4\u05e1"

    .line 677
    .local v2, "EFES":Ljava/lang/String;
    const/16 v14, 0xa

    new-array v4, v14, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string v15, ""

    aput-object v15, v4, v14

    const/4 v14, 0x1

    const-string v15, "\u05e7"

    aput-object v15, v4, v14

    const/4 v14, 0x2

    const-string v15, "\u05e8"

    aput-object v15, v4, v14

    const/4 v14, 0x3

    const-string v15, "\u05e9"

    aput-object v15, v4, v14

    const/4 v14, 0x4

    const-string v15, "\u05ea"

    aput-object v15, v4, v14

    const/4 v14, 0x5

    const-string v15, "\u05ea\u05e7"

    aput-object v15, v4, v14

    const/4 v14, 0x6

    const-string v15, "\u05ea\u05e8"

    aput-object v15, v4, v14

    const/4 v14, 0x7

    .line 678
    const-string v15, "\u05ea\u05e9"

    aput-object v15, v4, v14

    const/16 v14, 0x8

    const-string v15, "\u05ea\u05ea"

    aput-object v15, v4, v14

    const/16 v14, 0x9

    const-string v15, "\u05ea\u05ea\u05e7"

    aput-object v15, v4, v14

    .line 679
    .local v4, "jHundreds":[Ljava/lang/String;
    const/16 v14, 0xa

    new-array v7, v14, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string v15, ""

    aput-object v15, v7, v14

    const/4 v14, 0x1

    const-string v15, "\u05d9"

    aput-object v15, v7, v14

    const/4 v14, 0x2

    const-string v15, "\u05db"

    aput-object v15, v7, v14

    const/4 v14, 0x3

    const-string v15, "\u05dc"

    aput-object v15, v7, v14

    const/4 v14, 0x4

    const-string v15, "\u05de"

    aput-object v15, v7, v14

    const/4 v14, 0x5

    const-string v15, "\u05e0"

    aput-object v15, v7, v14

    const/4 v14, 0x6

    const-string v15, "\u05e1"

    aput-object v15, v7, v14

    const/4 v14, 0x7

    const-string v15, "\u05e2"

    aput-object v15, v7, v14

    const/16 v14, 0x8

    .line 680
    const-string v15, "\u05e4"

    aput-object v15, v7, v14

    const/16 v14, 0x9

    const-string v15, "\u05e6"

    aput-object v15, v7, v14

    .line 681
    .local v7, "jTens":[Ljava/lang/String;
    const/16 v14, 0xa

    new-array v6, v14, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string v15, ""

    aput-object v15, v6, v14

    const/4 v14, 0x1

    const-string v15, "\u05d9"

    aput-object v15, v6, v14

    const/4 v14, 0x2

    const-string v15, "\u05da"

    aput-object v15, v6, v14

    const/4 v14, 0x3

    const-string v15, "\u05dc"

    aput-object v15, v6, v14

    const/4 v14, 0x4

    const-string v15, "\u05dd"

    aput-object v15, v6, v14

    const/4 v14, 0x5

    const-string v15, "\u05df"

    aput-object v15, v6, v14

    const/4 v14, 0x6

    const-string v15, "\u05e1"

    aput-object v15, v6, v14

    const/4 v14, 0x7

    const-string v15, "\u05e2"

    aput-object v15, v6, v14

    const/16 v14, 0x8

    .line 682
    const-string v15, "\u05e3"

    aput-object v15, v6, v14

    const/16 v14, 0x9

    const-string v15, "\u05e5"

    aput-object v15, v6, v14

    .line 683
    .local v6, "jTenEnds":[Ljava/lang/String;
    const/4 v14, 0x2

    new-array v11, v14, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string v15, "\u05d8\u05d5"

    aput-object v15, v11, v14

    const/4 v14, 0x1

    const-string v15, "\u05d8\u05d6"

    aput-object v15, v11, v14

    .line 684
    .local v11, "tavTaz":[Ljava/lang/String;
    const/16 v14, 0xa

    new-array v5, v14, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string v15, ""

    aput-object v15, v5, v14

    const/4 v14, 0x1

    const-string v15, "\u05d0"

    aput-object v15, v5, v14

    const/4 v14, 0x2

    const-string v15, "\u05d1"

    aput-object v15, v5, v14

    const/4 v14, 0x3

    const-string v15, "\u05d2"

    aput-object v15, v5, v14

    const/4 v14, 0x4

    const-string v15, "\u05d3"

    aput-object v15, v5, v14

    const/4 v14, 0x5

    const-string v15, "\u05d4"

    aput-object v15, v5, v14

    const/4 v14, 0x6

    const-string v15, "\u05d5"

    aput-object v15, v5, v14

    const/4 v14, 0x7

    const-string v15, "\u05d6"

    aput-object v15, v5, v14

    const/16 v14, 0x8

    .line 685
    const-string v15, "\u05d7"

    aput-object v15, v5, v14

    const/16 v14, 0x9

    const-string v15, "\u05d8"

    aput-object v15, v5, v14

    .line 687
    .local v5, "jOnes":[Ljava/lang/String;
    if-nez p1, :cond_2

    .line 740
    .end local v2    # "EFES":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 690
    .restart local v2    # "EFES":Ljava/lang/String;
    :cond_2
    move/from16 v0, p1

    rem-int/lit16 v9, v0, 0x3e8

    .line 692
    .local v9, "shortNumber":I
    const/16 v14, 0xb

    if-lt v9, v14, :cond_6

    const/16 v14, 0x64

    if-ge v9, v14, :cond_3

    rem-int/lit8 v14, v9, 0xa

    if-eqz v14, :cond_6

    :cond_3
    const/16 v14, 0x190

    if-gt v9, v14, :cond_4

    rem-int/lit8 v14, v9, 0x64

    if-eqz v14, :cond_6

    :cond_4
    const/4 v10, 0x0

    .line 693
    .local v10, "singleDigitNumber":Z
    :goto_1
    move/from16 v0, p1

    div-int/lit16 v13, v0, 0x3e8

    .line 694
    .local v13, "thousands":I
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 696
    .local v8, "returnBuffer":Ljava/lang/StringBuffer;
    move/from16 v0, p1

    rem-int/lit16 v14, v0, 0x3e8

    if-nez v14, :cond_7

    .line 697
    aget-object v14, v5, v13

    invoke-virtual {v8, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 698
    invoke-virtual/range {p0 .. p0}, Lnet/sourceforge/zmanim/hebrewcalendar/HebrewDateFormatter;->isUseGershGershayim()Z

    move-result v14

    if-eqz v14, :cond_5

    .line 699
    const-string v14, "\'"

    invoke-virtual {v8, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 701
    :cond_5
    const-string v14, " "

    invoke-virtual {v8, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 702
    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 703
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 692
    .end local v8    # "returnBuffer":Ljava/lang/StringBuffer;
    .end local v10    # "singleDigitNumber":Z
    .end local v13    # "thousands":I
    :cond_6
    const/4 v10, 0x1

    goto :goto_1

    .line 704
    .restart local v8    # "returnBuffer":Ljava/lang/StringBuffer;
    .restart local v10    # "singleDigitNumber":Z
    .restart local v13    # "thousands":I
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lnet/sourceforge/zmanim/hebrewcalendar/HebrewDateFormatter;->useLonghebrewYears:Z

    if-eqz v14, :cond_9

    const/16 v14, 0x3e8

    move/from16 v0, p1

    if-lt v0, v14, :cond_9

    .line 705
    aget-object v14, v5, v13

    invoke-virtual {v8, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 706
    invoke-virtual/range {p0 .. p0}, Lnet/sourceforge/zmanim/hebrewcalendar/HebrewDateFormatter;->isUseGershGershayim()Z

    move-result v14

    if-eqz v14, :cond_8

    .line 707
    const-string v14, "\'"

    invoke-virtual {v8, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 709
    :cond_8
    const-string v14, " "

    invoke-virtual {v8, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 711
    :cond_9
    move/from16 v0, p1

    rem-int/lit16 v0, v0, 0x3e8

    move/from16 p1, v0

    .line 712
    div-int/lit8 v3, p1, 0x64

    .line 713
    .local v3, "hundreds":I
    aget-object v14, v4, v3

    invoke-virtual {v8, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 714
    rem-int/lit8 p1, p1, 0x64

    .line 715
    const/16 v14, 0xf

    move/from16 v0, p1

    if-ne v0, v14, :cond_b

    .line 716
    const/4 v14, 0x0

    aget-object v14, v11, v14

    invoke-virtual {v8, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 733
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lnet/sourceforge/zmanim/hebrewcalendar/HebrewDateFormatter;->isUseGershGershayim()Z

    move-result v14

    if-eqz v14, :cond_a

    .line 734
    if-eqz v10, :cond_f

    .line 735
    const-string v14, "\'"

    invoke-virtual {v8, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 740
    :cond_a
    :goto_3
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 717
    :cond_b
    const/16 v14, 0x10

    move/from16 v0, p1

    if-ne v0, v14, :cond_c

    .line 718
    const/4 v14, 0x1

    aget-object v14, v11, v14

    invoke-virtual {v8, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 720
    :cond_c
    div-int/lit8 v12, p1, 0xa

    .line 721
    .local v12, "tens":I
    rem-int/lit8 v14, p1, 0xa

    if-nez v14, :cond_e

    .line 722
    if-nez v10, :cond_d

    .line 723
    aget-object v14, v6, v12

    invoke-virtual {v8, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 725
    :cond_d
    aget-object v14, v7, v12

    invoke-virtual {v8, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 728
    :cond_e
    aget-object v14, v7, v12

    invoke-virtual {v8, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 729
    rem-int/lit8 p1, p1, 0xa

    .line 730
    aget-object v14, v5, p1

    invoke-virtual {v8, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 737
    .end local v12    # "tens":I
    :cond_f
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->length()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    const-string v15, "\""

    invoke-virtual {v8, v14, v15}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3
.end method

.method protected formatMolad(J)Ljava/lang/String;
    .locals 13
    .param p1, "moladChalakim"    # J

    .prologue
    .line 591
    move-wide v4, p1

    .line 592
    .local v4, "adjustedChalakim":J
    const/16 v2, 0x12

    .line 593
    .local v2, "MINUTE_CHALAKIM":I
    const/16 v1, 0x438

    .line 594
    .local v1, "HOUR_CHALAKIM":I
    mul-int/lit8 v0, v1, 0x18

    .line 596
    .local v0, "DAY_CHALAKIM":I
    int-to-long v10, v0

    div-long v6, v4, v10

    .line 597
    .local v6, "days":J
    int-to-long v10, v0

    mul-long/2addr v10, v6

    sub-long/2addr v4, v10

    .line 598
    int-to-long v10, v1

    div-long v10, v4, v10

    long-to-int v3, v10

    .line 599
    .local v3, "hours":I
    const/4 v9, 0x6

    if-lt v3, v9, :cond_0

    .line 600
    const-wide/16 v10, 0x1

    add-long/2addr v6, v10

    .line 602
    :cond_0
    mul-int v9, v3, v1

    int-to-long v10, v9

    sub-long/2addr v4, v10

    .line 603
    int-to-long v10, v2

    div-long v10, v4, v10

    long-to-int v8, v10

    .line 604
    .local v8, "minutes":I
    mul-int v9, v8, v2

    int-to-long v10, v9

    sub-long/2addr v4, v10

    .line 605
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Day: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-wide/16 v10, 0x7

    rem-long v10, v6, v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " hours: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", minutes "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", chalakim: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    return-object v9
.end method

.method public formatMonth(Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;)Ljava/lang/String;
    .locals 2
    .param p1, "jewishDate"    # Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;

    .prologue
    .line 535
    invoke-virtual {p1}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->getJewishYear()I

    move-result v0

    invoke-virtual {p1}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->getJewishMonth()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lnet/sourceforge/zmanim/hebrewcalendar/HebrewDateFormatter;->formatMonth(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public formatOmer(Lnet/sourceforge/zmanim/hebrewcalendar/JewishCalendar;)Ljava/lang/String;
    .locals 3
    .param p1, "jewishCalendar"    # Lnet/sourceforge/zmanim/hebrewcalendar/JewishCalendar;

    .prologue
    .line 569
    invoke-virtual {p1}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishCalendar;->getDayOfOmer()I

    move-result v0

    .line 570
    .local v0, "omer":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 571
    const-string v1, ""

    .line 579
    :goto_0
    return-object v1

    .line 573
    :cond_0
    iget-boolean v1, p0, Lnet/sourceforge/zmanim/hebrewcalendar/HebrewDateFormatter;->hebrewFormat:Z

    if-eqz v1, :cond_1

    .line 574
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lnet/sourceforge/zmanim/hebrewcalendar/HebrewDateFormatter;->formatHebrewNumber(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnet/sourceforge/zmanim/hebrewcalendar/HebrewDateFormatter;->hebrewOmerPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u05e2\u05d5\u05de\u05e8"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 576
    :cond_1
    const/16 v1, 0x21

    if-ne v0, v1, :cond_2

    .line 577
    const-string v1, "Lag BaOmer"

    goto :goto_0

    .line 579
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Omer "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public formatParsha(Lnet/sourceforge/zmanim/hebrewcalendar/JewishCalendar;)Ljava/lang/String;
    .locals 2
    .param p1, "jewishCalendar"    # Lnet/sourceforge/zmanim/hebrewcalendar/JewishCalendar;

    .prologue
    .line 419
    invoke-virtual {p1}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishCalendar;->getParshaIndex()I

    move-result v0

    .line 420
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const-string v1, ""

    :goto_0
    return-object v1

    :cond_0
    iget-boolean v1, p0, Lnet/sourceforge/zmanim/hebrewcalendar/HebrewDateFormatter;->hebrewFormat:Z

    if-eqz v1, :cond_1

    sget-object v1, Lnet/sourceforge/zmanim/hebrewcalendar/HebrewDateFormatter;->hebrewParshiyos:[Ljava/lang/String;

    aget-object v1, v1, v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lnet/sourceforge/zmanim/hebrewcalendar/HebrewDateFormatter;->transliteratedParshios:[Ljava/lang/String;

    aget-object v1, v1, v0

    goto :goto_0
.end method

.method public formatRoshChodesh(Lnet/sourceforge/zmanim/hebrewcalendar/JewishCalendar;)Ljava/lang/String;
    .locals 6
    .param p1, "jewishCalendar"    # Lnet/sourceforge/zmanim/hebrewcalendar/JewishCalendar;

    .prologue
    const/16 v5, 0x1c

    const/16 v4, 0xc

    .line 188
    invoke-virtual {p1}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishCalendar;->isRoshChodesh()Z

    move-result v2

    if-nez v2, :cond_0

    .line 189
    const-string v0, ""

    .line 203
    :goto_0
    return-object v0

    .line 191
    :cond_0
    const-string v0, ""

    .line 192
    .local v0, "formattedRoshChodesh":Ljava/lang/String;
    invoke-virtual {p1}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishCalendar;->getJewishMonth()I

    move-result v1

    .line 193
    .local v1, "month":I
    invoke-virtual {p1}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishCalendar;->getJewishDayOfMonth()I

    move-result v2

    const/16 v3, 0x1e

    if-ne v2, v3, :cond_2

    .line 194
    if-lt v1, v4, :cond_1

    if-ne v1, v4, :cond_3

    invoke-virtual {p1}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishCalendar;->isJewishLeapYear()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 195
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 200
    :cond_2
    :goto_1
    iget-boolean v2, p0, Lnet/sourceforge/zmanim/hebrewcalendar/HebrewDateFormatter;->hebrewFormat:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lnet/sourceforge/zmanim/hebrewcalendar/HebrewDateFormatter;->hebrewHolidays:[Ljava/lang/String;

    aget-object v0, v2, v5

    .line 202
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishCalendar;->getJewishYear()I

    move-result v3

    invoke-direct {p0, v3, v1}, Lnet/sourceforge/zmanim/hebrewcalendar/HebrewDateFormatter;->formatMonth(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 203
    goto :goto_0

    .line 197
    :cond_3
    const/4 v1, 0x1

    goto :goto_1

    .line 201
    :cond_4
    iget-object v2, p0, Lnet/sourceforge/zmanim/hebrewcalendar/HebrewDateFormatter;->transliteratedHolidays:[Ljava/lang/String;

    aget-object v0, v2, v5

    goto :goto_2
.end method

.method public formatYomTov(Lnet/sourceforge/zmanim/hebrewcalendar/JewishCalendar;)Ljava/lang/String;
    .locals 4
    .param p1, "jewishCalendar"    # Lnet/sourceforge/zmanim/hebrewcalendar/JewishCalendar;

    .prologue
    .line 178
    invoke-virtual {p1}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishCalendar;->getYomTovIndex()I

    move-result v1

    .line 179
    .local v1, "index":I
    const/16 v2, 0x15

    if-ne v1, v2, :cond_1

    .line 180
    invoke-virtual {p1}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishCalendar;->getDayOfChanukah()I

    move-result v0

    .line 181
    .local v0, "dayOfChanukah":I
    iget-boolean v2, p0, Lnet/sourceforge/zmanim/hebrewcalendar/HebrewDateFormatter;->hebrewFormat:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lnet/sourceforge/zmanim/hebrewcalendar/HebrewDateFormatter;->formatHebrewNumber(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lnet/sourceforge/zmanim/hebrewcalendar/HebrewDateFormatter;->hebrewHolidays:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 184
    .end local v0    # "dayOfChanukah":I
    :goto_0
    return-object v2

    .line 182
    .restart local v0    # "dayOfChanukah":I
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lnet/sourceforge/zmanim/hebrewcalendar/HebrewDateFormatter;->transliteratedHolidays:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 184
    .end local v0    # "dayOfChanukah":I
    :cond_1
    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    const-string v2, ""

    goto :goto_0

    :cond_2
    iget-boolean v2, p0, Lnet/sourceforge/zmanim/hebrewcalendar/HebrewDateFormatter;->hebrewFormat:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lnet/sourceforge/zmanim/hebrewcalendar/HebrewDateFormatter;->hebrewHolidays:[Ljava/lang/String;

    aget-object v2, v2, v1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lnet/sourceforge/zmanim/hebrewcalendar/HebrewDateFormatter;->transliteratedHolidays:[Ljava/lang/String;

    aget-object v2, v2, v1

    goto :goto_0
.end method

.method public getFormattedKviah(I)Ljava/lang/String;
    .locals 8
    .param p1, "jewishYear"    # I

    .prologue
    const/4 v7, 0x1

    .line 622
    new-instance v0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;

    const/4 v5, 0x7

    invoke-direct {v0, p1, v5, v7}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;-><init>(III)V

    .line 623
    .local v0, "jewishDate":Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;
    invoke-static {p1}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->getCheshvanKislevKviah(I)I

    move-result v1

    .line 624
    .local v1, "kviah":I
    invoke-virtual {v0}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->getDayOfWeek()I

    move-result v4

    .line 625
    .local v4, "roshHashanaDayOfweek":I
    invoke-virtual {p0, v4}, Lnet/sourceforge/zmanim/hebrewcalendar/HebrewDateFormatter;->formatHebrewNumber(I)Ljava/lang/String;

    move-result-object v3

    .line 626
    .local v3, "returnValue":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v1, :cond_0

    const-string v5, "\u05d7"

    .line 627
    :goto_0
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 626
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 628
    const/16 v5, 0xf

    invoke-virtual {v0, p1, v7, v5}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->setJewishDate(III)V

    .line 629
    invoke-virtual {v0}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->getDayOfWeek()I

    move-result v2

    .line 630
    .local v2, "pesachDayOfweek":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lnet/sourceforge/zmanim/hebrewcalendar/HebrewDateFormatter;->formatHebrewNumber(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 631
    const-string v5, "\'"

    const-string v6, ""

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 636
    return-object v3

    .line 626
    .end local v2    # "pesachDayOfweek":I
    :cond_0
    const/4 v5, 0x2

    if-ne v1, v5, :cond_1

    const-string v5, "\u05e9"

    goto :goto_0

    .line 627
    :cond_1
    const-string v5, "\u05db"

    goto :goto_0
.end method

.method public getHebrewOmerPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lnet/sourceforge/zmanim/hebrewcalendar/HebrewDateFormatter;->hebrewOmerPrefix:Ljava/lang/String;

    return-object v0
.end method

.method public getTransliteratedHolidayList()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lnet/sourceforge/zmanim/hebrewcalendar/HebrewDateFormatter;->transliteratedHolidays:[Ljava/lang/String;

    return-object v0
.end method

.method public getTransliteratedMonthList()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lnet/sourceforge/zmanim/hebrewcalendar/HebrewDateFormatter;->transliteratedMonths:[Ljava/lang/String;

    return-object v0
.end method

.method public getTransliteratedParshiosList()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lnet/sourceforge/zmanim/hebrewcalendar/HebrewDateFormatter;->transliteratedParshios:[Ljava/lang/String;

    return-object v0
.end method

.method public getTransliteratedShabbosDayOfWeek()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lnet/sourceforge/zmanim/hebrewcalendar/HebrewDateFormatter;->transliteratedShabbosDayOfweek:Ljava/lang/String;

    return-object v0
.end method

.method public isHebrewFormat()Z
    .locals 1

    .prologue
    .line 219
    iget-boolean v0, p0, Lnet/sourceforge/zmanim/hebrewcalendar/HebrewDateFormatter;->hebrewFormat:Z

    return v0
.end method

.method public isLongWeekFormat()Z
    .locals 1

    .prologue
    .line 55
    iget-boolean v0, p0, Lnet/sourceforge/zmanim/hebrewcalendar/HebrewDateFormatter;->longWeekFormat:Z

    return v0
.end method

.method public isUseGershGershayim()Z
    .locals 1

    .prologue
    .line 446
    iget-boolean v0, p0, Lnet/sourceforge/zmanim/hebrewcalendar/HebrewDateFormatter;->useGershGershayim:Z

    return v0
.end method

.method public isUseLongHebrewYears()Z
    .locals 1

    .prologue
    .line 471
    iget-boolean v0, p0, Lnet/sourceforge/zmanim/hebrewcalendar/HebrewDateFormatter;->useLonghebrewYears:Z

    return v0
.end method

.method public setHebrewFormat(Z)V
    .locals 0
    .param p1, "hebrewFormat"    # Z

    .prologue
    .line 236
    iput-boolean p1, p0, Lnet/sourceforge/zmanim/hebrewcalendar/HebrewDateFormatter;->hebrewFormat:Z

    .line 237
    return-void
.end method

.method public setHebrewOmerPrefix(Ljava/lang/String;)V
    .locals 0
    .param p1, "hebrewOmerPrefix"    # Ljava/lang/String;

    .prologue
    .line 262
    iput-object p1, p0, Lnet/sourceforge/zmanim/hebrewcalendar/HebrewDateFormatter;->hebrewOmerPrefix:Ljava/lang/String;

    .line 263
    return-void
.end method

.method public setLongWeekFormat(Z)V
    .locals 0
    .param p1, "longWeekFormat"    # Z

    .prologue
    .line 67
    iput-boolean p1, p0, Lnet/sourceforge/zmanim/hebrewcalendar/HebrewDateFormatter;->longWeekFormat:Z

    .line 68
    return-void
.end method

.method public setTransliteratedHolidayList([Ljava/lang/String;)V
    .locals 0
    .param p1, "transliteratedHolidays"    # [Ljava/lang/String;

    .prologue
    .line 140
    iput-object p1, p0, Lnet/sourceforge/zmanim/hebrewcalendar/HebrewDateFormatter;->transliteratedHolidays:[Ljava/lang/String;

    .line 141
    return-void
.end method

.method public setTransliteratedMonthList([Ljava/lang/String;)V
    .locals 0
    .param p1, "transliteratedMonths"    # [Ljava/lang/String;

    .prologue
    .line 289
    iput-object p1, p0, Lnet/sourceforge/zmanim/hebrewcalendar/HebrewDateFormatter;->transliteratedMonths:[Ljava/lang/String;

    .line 290
    return-void
.end method

.method public setTransliteratedParshiosList([Ljava/lang/String;)V
    .locals 0
    .param p1, "transliteratedParshios"    # [Ljava/lang/String;

    .prologue
    .line 337
    iput-object p1, p0, Lnet/sourceforge/zmanim/hebrewcalendar/HebrewDateFormatter;->transliteratedParshios:[Ljava/lang/String;

    .line 338
    return-void
.end method

.method public setTransliteratedShabbosDayOfWeek(Ljava/lang/String;)V
    .locals 0
    .param p1, "transliteratedShabbos"    # Ljava/lang/String;

    .prologue
    .line 101
    iput-object p1, p0, Lnet/sourceforge/zmanim/hebrewcalendar/HebrewDateFormatter;->transliteratedShabbosDayOfweek:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public setUseGershGershayim(Z)V
    .locals 0
    .param p1, "useGershGershayim"    # Z

    .prologue
    .line 459
    iput-boolean p1, p0, Lnet/sourceforge/zmanim/hebrewcalendar/HebrewDateFormatter;->useGershGershayim:Z

    .line 460
    return-void
.end method

.method public setUseLongHebrewYears(Z)V
    .locals 0
    .param p1, "useLongHebrewYears"    # Z

    .prologue
    .line 484
    iput-boolean p1, p0, Lnet/sourceforge/zmanim/hebrewcalendar/HebrewDateFormatter;->useLonghebrewYears:Z

    .line 485
    return-void
.end method
