.class public Lnet/sourceforge/zmanim/hebrewcalendar/JewishCalendar;
.super Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;
.source "JewishCalendar.java"


# static fields
.field public static final CHANUKAH:I = 0x15

.field public static final CHOL_HAMOED_PESACH:I = 0x2

.field public static final CHOL_HAMOED_SUCCOS:I = 0x10

.field public static final EREV_PESACH:I = 0x0

.field public static final EREV_ROSH_HASHANA:I = 0x9

.field public static final EREV_SHAVUOS:I = 0x4

.field public static final EREV_SUCCOS:I = 0xe

.field public static final EREV_YOM_KIPPUR:I = 0xc

.field public static final FAST_OF_ESTHER:I = 0x18

.field public static final FAST_OF_GEDALYAH:I = 0xb

.field public static final HOSHANA_RABBA:I = 0x11

.field private static final Mon_long:[I

.field private static final Mon_long_leap:[I

.field private static final Mon_long_leap_Israel:[I

.field private static final Mon_short:[I

.field private static final Mon_short_leap:[I

.field private static final Mon_short_leap_Israel:[I

.field public static final PESACH:I = 0x1

.field public static final PESACH_SHENI:I = 0x3

.field public static final PURIM:I = 0x19

.field public static final PURIM_KATAN:I = 0x1b

.field public static final ROSH_CHODESH:I = 0x1c

.field public static final ROSH_HASHANA:I = 0xa

.field public static final SEVENTEEN_OF_TAMMUZ:I = 0x6

.field public static final SHAVUOS:I = 0x5

.field public static final SHEMINI_ATZERES:I = 0x12

.field public static final SHUSHAN_PURIM:I = 0x1a

.field public static final SIMCHAS_TORAH:I = 0x13

.field public static final SUCCOS:I = 0xf

.field private static final Sat_long:[I

.field private static final Sat_long_leap:[I

.field private static final Sat_short:[I

.field private static final Sat_short_leap:[I

.field public static final TENTH_OF_TEVES:I = 0x16

.field public static final TISHA_BEAV:I = 0x7

.field public static final TU_BEAV:I = 0x8

.field public static final TU_BESHVAT:I = 0x17

.field private static final Thu_long:[I

.field private static final Thu_long_leap:[I

.field private static final Thu_normal:[I

.field private static final Thu_normal_Israel:[I

.field private static final Thu_short_leap:[I

.field public static final YOM_HAATZMAUT:I = 0x1f

.field public static final YOM_HASHOAH:I = 0x1d

.field public static final YOM_HAZIKARON:I = 0x1e

.field public static final YOM_KIPPUR:I = 0xd

.field public static final YOM_YERUSHALAYIM:I = 0x20


# instance fields
.field private inIsrael:Z

.field private useModernHolidays:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x6

    const/4 v6, 0x5

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 460
    const/16 v0, 0x33

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v3, v0, v1

    const/16 v1, 0x34

    aput v1, v0, v4

    aput v3, v0, v5

    const/4 v1, 0x3

    aput v3, v0, v1

    aput v4, v0, v6

    aput v5, v0, v7

    const/4 v1, 0x7

    const/4 v2, 0x3

    aput v2, v0, v1

    const/16 v1, 0x8

    const/4 v2, 0x4

    aput v2, v0, v1

    const/16 v1, 0x9

    aput v6, v0, v1

    const/16 v1, 0xa

    aput v7, v0, v1

    const/16 v1, 0xb

    const/4 v2, 0x7

    aput v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x8

    aput v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0x9

    aput v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0xa

    aput v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0xb

    aput v2, v0, v1

    const/16 v1, 0x10

    const/16 v2, 0xc

    aput v2, v0, v1

    const/16 v1, 0x11

    const/16 v2, 0xd

    aput v2, v0, v1

    const/16 v1, 0x12

    const/16 v2, 0xe

    aput v2, v0, v1

    const/16 v1, 0x13

    const/16 v2, 0xf

    aput v2, v0, v1

    const/16 v1, 0x14

    const/16 v2, 0x10

    aput v2, v0, v1

    const/16 v1, 0x15

    .line 461
    const/16 v2, 0x11

    aput v2, v0, v1

    const/16 v1, 0x16

    const/16 v2, 0x12

    aput v2, v0, v1

    const/16 v1, 0x17

    const/16 v2, 0x13

    aput v2, v0, v1

    const/16 v1, 0x18

    const/16 v2, 0x14

    aput v2, v0, v1

    const/16 v1, 0x19

    const/16 v2, 0x35

    aput v2, v0, v1

    const/16 v1, 0x1a

    const/16 v2, 0x17

    aput v2, v0, v1

    const/16 v1, 0x1b

    const/16 v2, 0x18

    aput v2, v0, v1

    const/16 v1, 0x1c

    aput v3, v0, v1

    const/16 v1, 0x1d

    const/16 v2, 0x19

    aput v2, v0, v1

    const/16 v1, 0x1e

    const/16 v2, 0x36

    aput v2, v0, v1

    const/16 v1, 0x1f

    const/16 v2, 0x37

    aput v2, v0, v1

    const/16 v1, 0x20

    const/16 v2, 0x1e

    aput v2, v0, v1

    const/16 v1, 0x21

    const/16 v2, 0x38

    aput v2, v0, v1

    const/16 v1, 0x22

    const/16 v2, 0x21

    aput v2, v0, v1

    const/16 v1, 0x23

    const/16 v2, 0x22

    aput v2, v0, v1

    const/16 v1, 0x24

    const/16 v2, 0x23

    aput v2, v0, v1

    const/16 v1, 0x25

    const/16 v2, 0x24

    aput v2, v0, v1

    const/16 v1, 0x26

    const/16 v2, 0x25

    aput v2, v0, v1

    const/16 v1, 0x27

    const/16 v2, 0x26

    aput v2, v0, v1

    const/16 v1, 0x28

    const/16 v2, 0x27

    aput v2, v0, v1

    const/16 v1, 0x29

    const/16 v2, 0x28

    aput v2, v0, v1

    const/16 v1, 0x2a

    const/16 v2, 0x3a

    aput v2, v0, v1

    const/16 v1, 0x2b

    const/16 v2, 0x2b

    aput v2, v0, v1

    const/16 v1, 0x2c

    const/16 v2, 0x2c

    aput v2, v0, v1

    const/16 v1, 0x2d

    const/16 v2, 0x2d

    aput v2, v0, v1

    const/16 v1, 0x2e

    const/16 v2, 0x2e

    aput v2, v0, v1

    const/16 v1, 0x2f

    const/16 v2, 0x2f

    aput v2, v0, v1

    const/16 v1, 0x30

    .line 462
    const/16 v2, 0x30

    aput v2, v0, v1

    const/16 v1, 0x31

    const/16 v2, 0x31

    aput v2, v0, v1

    const/16 v1, 0x32

    const/16 v2, 0x32

    aput v2, v0, v1

    .line 460
    sput-object v0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishCalendar;->Sat_short:[I

    .line 464
    const/16 v0, 0x33

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v3, v0, v1

    const/16 v1, 0x34

    aput v1, v0, v4

    aput v3, v0, v5

    const/4 v1, 0x3

    aput v3, v0, v1

    aput v4, v0, v6

    aput v5, v0, v7

    const/4 v1, 0x7

    const/4 v2, 0x3

    aput v2, v0, v1

    const/16 v1, 0x8

    const/4 v2, 0x4

    aput v2, v0, v1

    const/16 v1, 0x9

    aput v6, v0, v1

    const/16 v1, 0xa

    aput v7, v0, v1

    const/16 v1, 0xb

    const/4 v2, 0x7

    aput v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x8

    aput v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0x9

    aput v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0xa

    aput v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0xb

    aput v2, v0, v1

    const/16 v1, 0x10

    const/16 v2, 0xc

    aput v2, v0, v1

    const/16 v1, 0x11

    const/16 v2, 0xd

    aput v2, v0, v1

    const/16 v1, 0x12

    const/16 v2, 0xe

    aput v2, v0, v1

    const/16 v1, 0x13

    const/16 v2, 0xf

    aput v2, v0, v1

    const/16 v1, 0x14

    const/16 v2, 0x10

    aput v2, v0, v1

    const/16 v1, 0x15

    .line 465
    const/16 v2, 0x11

    aput v2, v0, v1

    const/16 v1, 0x16

    const/16 v2, 0x12

    aput v2, v0, v1

    const/16 v1, 0x17

    const/16 v2, 0x13

    aput v2, v0, v1

    const/16 v1, 0x18

    const/16 v2, 0x14

    aput v2, v0, v1

    const/16 v1, 0x19

    const/16 v2, 0x35

    aput v2, v0, v1

    const/16 v1, 0x1a

    const/16 v2, 0x17

    aput v2, v0, v1

    const/16 v1, 0x1b

    const/16 v2, 0x18

    aput v2, v0, v1

    const/16 v1, 0x1c

    aput v3, v0, v1

    const/16 v1, 0x1d

    const/16 v2, 0x19

    aput v2, v0, v1

    const/16 v1, 0x1e

    const/16 v2, 0x36

    aput v2, v0, v1

    const/16 v1, 0x1f

    const/16 v2, 0x37

    aput v2, v0, v1

    const/16 v1, 0x20

    const/16 v2, 0x1e

    aput v2, v0, v1

    const/16 v1, 0x21

    const/16 v2, 0x38

    aput v2, v0, v1

    const/16 v1, 0x22

    const/16 v2, 0x21

    aput v2, v0, v1

    const/16 v1, 0x23

    const/16 v2, 0x22

    aput v2, v0, v1

    const/16 v1, 0x24

    const/16 v2, 0x23

    aput v2, v0, v1

    const/16 v1, 0x25

    const/16 v2, 0x24

    aput v2, v0, v1

    const/16 v1, 0x26

    const/16 v2, 0x25

    aput v2, v0, v1

    const/16 v1, 0x27

    const/16 v2, 0x26

    aput v2, v0, v1

    const/16 v1, 0x28

    const/16 v2, 0x27

    aput v2, v0, v1

    const/16 v1, 0x29

    const/16 v2, 0x28

    aput v2, v0, v1

    const/16 v1, 0x2a

    const/16 v2, 0x3a

    aput v2, v0, v1

    const/16 v1, 0x2b

    const/16 v2, 0x2b

    aput v2, v0, v1

    const/16 v1, 0x2c

    const/16 v2, 0x2c

    aput v2, v0, v1

    const/16 v1, 0x2d

    const/16 v2, 0x2d

    aput v2, v0, v1

    const/16 v1, 0x2e

    const/16 v2, 0x2e

    aput v2, v0, v1

    const/16 v1, 0x2f

    const/16 v2, 0x2f

    aput v2, v0, v1

    const/16 v1, 0x30

    .line 466
    const/16 v2, 0x30

    aput v2, v0, v1

    const/16 v1, 0x31

    const/16 v2, 0x31

    aput v2, v0, v1

    const/16 v1, 0x32

    const/16 v2, 0x3b

    aput v2, v0, v1

    .line 464
    sput-object v0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishCalendar;->Sat_long:[I

    .line 468
    const/16 v0, 0x32

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x33

    aput v2, v0, v1

    const/16 v1, 0x34

    aput v1, v0, v4

    aput v3, v0, v5

    const/4 v1, 0x4

    aput v4, v0, v1

    aput v5, v0, v6

    const/4 v1, 0x3

    aput v1, v0, v7

    const/4 v1, 0x7

    const/4 v2, 0x4

    aput v2, v0, v1

    const/16 v1, 0x8

    aput v6, v0, v1

    const/16 v1, 0x9

    aput v7, v0, v1

    const/16 v1, 0xa

    const/4 v2, 0x7

    aput v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0x8

    aput v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x9

    aput v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0xa

    aput v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0xb

    aput v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0xc

    aput v2, v0, v1

    const/16 v1, 0x10

    const/16 v2, 0xd

    aput v2, v0, v1

    const/16 v1, 0x11

    const/16 v2, 0xe

    aput v2, v0, v1

    const/16 v1, 0x12

    const/16 v2, 0xf

    aput v2, v0, v1

    const/16 v1, 0x13

    const/16 v2, 0x10

    aput v2, v0, v1

    const/16 v1, 0x14

    const/16 v2, 0x11

    aput v2, v0, v1

    const/16 v1, 0x15

    .line 469
    const/16 v2, 0x12

    aput v2, v0, v1

    const/16 v1, 0x16

    const/16 v2, 0x13

    aput v2, v0, v1

    const/16 v1, 0x17

    const/16 v2, 0x14

    aput v2, v0, v1

    const/16 v1, 0x18

    const/16 v2, 0x35

    aput v2, v0, v1

    const/16 v1, 0x19

    const/16 v2, 0x17

    aput v2, v0, v1

    const/16 v1, 0x1a

    const/16 v2, 0x18

    aput v2, v0, v1

    const/16 v1, 0x1b

    aput v3, v0, v1

    const/16 v1, 0x1c

    const/16 v2, 0x19

    aput v2, v0, v1

    const/16 v1, 0x1d

    const/16 v2, 0x36

    aput v2, v0, v1

    const/16 v1, 0x1e

    const/16 v2, 0x37

    aput v2, v0, v1

    const/16 v1, 0x1f

    const/16 v2, 0x1e

    aput v2, v0, v1

    const/16 v1, 0x20

    const/16 v2, 0x38

    aput v2, v0, v1

    const/16 v1, 0x21

    const/16 v2, 0x21

    aput v2, v0, v1

    const/16 v1, 0x22

    const/16 v2, 0x22

    aput v2, v0, v1

    const/16 v1, 0x23

    const/16 v2, 0x23

    aput v2, v0, v1

    const/16 v1, 0x24

    const/16 v2, 0x24

    aput v2, v0, v1

    const/16 v1, 0x25

    const/16 v2, 0x25

    aput v2, v0, v1

    const/16 v1, 0x26

    const/16 v2, 0x26

    aput v2, v0, v1

    const/16 v1, 0x27

    const/16 v2, 0x27

    aput v2, v0, v1

    const/16 v1, 0x28

    const/16 v2, 0x28

    aput v2, v0, v1

    const/16 v1, 0x29

    const/16 v2, 0x3a

    aput v2, v0, v1

    const/16 v1, 0x2a

    const/16 v2, 0x2b

    aput v2, v0, v1

    const/16 v1, 0x2b

    const/16 v2, 0x2c

    aput v2, v0, v1

    const/16 v1, 0x2c

    const/16 v2, 0x2d

    aput v2, v0, v1

    const/16 v1, 0x2d

    const/16 v2, 0x2e

    aput v2, v0, v1

    const/16 v1, 0x2e

    const/16 v2, 0x2f

    aput v2, v0, v1

    const/16 v1, 0x2f

    const/16 v2, 0x30

    aput v2, v0, v1

    const/16 v1, 0x30

    .line 470
    const/16 v2, 0x31

    aput v2, v0, v1

    const/16 v1, 0x31

    const/16 v2, 0x3b

    aput v2, v0, v1

    .line 468
    sput-object v0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishCalendar;->Mon_short:[I

    .line 473
    const/16 v0, 0x32

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x33

    aput v2, v0, v1

    const/16 v1, 0x34

    aput v1, v0, v4

    aput v3, v0, v5

    const/4 v1, 0x4

    aput v4, v0, v1

    aput v5, v0, v6

    const/4 v1, 0x3

    aput v1, v0, v7

    const/4 v1, 0x7

    const/4 v2, 0x4

    aput v2, v0, v1

    const/16 v1, 0x8

    aput v6, v0, v1

    const/16 v1, 0x9

    aput v7, v0, v1

    const/16 v1, 0xa

    const/4 v2, 0x7

    aput v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0x8

    aput v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x9

    aput v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0xa

    aput v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0xb

    aput v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0xc

    aput v2, v0, v1

    const/16 v1, 0x10

    const/16 v2, 0xd

    aput v2, v0, v1

    const/16 v1, 0x11

    const/16 v2, 0xe

    aput v2, v0, v1

    const/16 v1, 0x12

    const/16 v2, 0xf

    aput v2, v0, v1

    const/16 v1, 0x13

    const/16 v2, 0x10

    aput v2, v0, v1

    const/16 v1, 0x14

    const/16 v2, 0x11

    aput v2, v0, v1

    const/16 v1, 0x15

    const/16 v2, 0x12

    aput v2, v0, v1

    const/16 v1, 0x16

    const/16 v2, 0x13

    aput v2, v0, v1

    const/16 v1, 0x17

    const/16 v2, 0x14

    aput v2, v0, v1

    const/16 v1, 0x18

    const/16 v2, 0x35

    aput v2, v0, v1

    const/16 v1, 0x19

    const/16 v2, 0x17

    aput v2, v0, v1

    const/16 v1, 0x1a

    const/16 v2, 0x18

    aput v2, v0, v1

    const/16 v1, 0x1b

    aput v3, v0, v1

    const/16 v1, 0x1c

    const/16 v2, 0x19

    aput v2, v0, v1

    const/16 v1, 0x1d

    const/16 v2, 0x36

    aput v2, v0, v1

    const/16 v1, 0x1e

    const/16 v2, 0x37

    aput v2, v0, v1

    const/16 v1, 0x1f

    .line 474
    const/16 v2, 0x1e

    aput v2, v0, v1

    const/16 v1, 0x20

    const/16 v2, 0x38

    aput v2, v0, v1

    const/16 v1, 0x21

    const/16 v2, 0x21

    aput v2, v0, v1

    const/16 v1, 0x22

    aput v3, v0, v1

    const/16 v1, 0x23

    const/16 v2, 0x22

    aput v2, v0, v1

    const/16 v1, 0x24

    const/16 v2, 0x23

    aput v2, v0, v1

    const/16 v1, 0x25

    const/16 v2, 0x24

    aput v2, v0, v1

    const/16 v1, 0x26

    const/16 v2, 0x25

    aput v2, v0, v1

    const/16 v1, 0x27

    const/16 v2, 0x39

    aput v2, v0, v1

    const/16 v1, 0x28

    const/16 v2, 0x28

    aput v2, v0, v1

    const/16 v1, 0x29

    const/16 v2, 0x3a

    aput v2, v0, v1

    const/16 v1, 0x2a

    const/16 v2, 0x2b

    aput v2, v0, v1

    const/16 v1, 0x2b

    const/16 v2, 0x2c

    aput v2, v0, v1

    const/16 v1, 0x2c

    const/16 v2, 0x2d

    aput v2, v0, v1

    const/16 v1, 0x2d

    const/16 v2, 0x2e

    aput v2, v0, v1

    const/16 v1, 0x2e

    const/16 v2, 0x2f

    aput v2, v0, v1

    const/16 v1, 0x2f

    const/16 v2, 0x30

    aput v2, v0, v1

    const/16 v1, 0x30

    const/16 v2, 0x31

    aput v2, v0, v1

    const/16 v1, 0x31

    const/16 v2, 0x3b

    aput v2, v0, v1

    .line 472
    sput-object v0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishCalendar;->Mon_long:[I

    .line 476
    const/16 v0, 0x33

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x34

    aput v2, v0, v1

    aput v3, v0, v4

    aput v3, v0, v5

    const/4 v1, 0x4

    aput v4, v0, v1

    aput v5, v0, v6

    const/4 v1, 0x3

    aput v1, v0, v7

    const/4 v1, 0x7

    const/4 v2, 0x4

    aput v2, v0, v1

    const/16 v1, 0x8

    aput v6, v0, v1

    const/16 v1, 0x9

    aput v7, v0, v1

    const/16 v1, 0xa

    const/4 v2, 0x7

    aput v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0x8

    aput v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x9

    aput v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0xa

    aput v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0xb

    aput v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0xc

    aput v2, v0, v1

    const/16 v1, 0x10

    const/16 v2, 0xd

    aput v2, v0, v1

    const/16 v1, 0x11

    const/16 v2, 0xe

    aput v2, v0, v1

    const/16 v1, 0x12

    const/16 v2, 0xf

    aput v2, v0, v1

    const/16 v1, 0x13

    const/16 v2, 0x10

    aput v2, v0, v1

    const/16 v1, 0x14

    const/16 v2, 0x11

    aput v2, v0, v1

    const/16 v1, 0x15

    .line 477
    const/16 v2, 0x12

    aput v2, v0, v1

    const/16 v1, 0x16

    const/16 v2, 0x13

    aput v2, v0, v1

    const/16 v1, 0x17

    const/16 v2, 0x14

    aput v2, v0, v1

    const/16 v1, 0x18

    const/16 v2, 0x35

    aput v2, v0, v1

    const/16 v1, 0x19

    const/16 v2, 0x17

    aput v2, v0, v1

    const/16 v1, 0x1a

    const/16 v2, 0x18

    aput v2, v0, v1

    const/16 v1, 0x1b

    aput v3, v0, v1

    const/16 v1, 0x1c

    aput v3, v0, v1

    const/16 v1, 0x1d

    const/16 v2, 0x19

    aput v2, v0, v1

    const/16 v1, 0x1e

    const/16 v2, 0x36

    aput v2, v0, v1

    const/16 v1, 0x1f

    const/16 v2, 0x37

    aput v2, v0, v1

    const/16 v1, 0x20

    const/16 v2, 0x1e

    aput v2, v0, v1

    const/16 v1, 0x21

    const/16 v2, 0x38

    aput v2, v0, v1

    const/16 v1, 0x22

    const/16 v2, 0x21

    aput v2, v0, v1

    const/16 v1, 0x23

    const/16 v2, 0x22

    aput v2, v0, v1

    const/16 v1, 0x24

    const/16 v2, 0x23

    aput v2, v0, v1

    const/16 v1, 0x25

    const/16 v2, 0x24

    aput v2, v0, v1

    const/16 v1, 0x26

    const/16 v2, 0x25

    aput v2, v0, v1

    const/16 v1, 0x27

    const/16 v2, 0x26

    aput v2, v0, v1

    const/16 v1, 0x28

    const/16 v2, 0x27

    aput v2, v0, v1

    const/16 v1, 0x29

    const/16 v2, 0x28

    aput v2, v0, v1

    const/16 v1, 0x2a

    const/16 v2, 0x3a

    aput v2, v0, v1

    const/16 v1, 0x2b

    const/16 v2, 0x2b

    aput v2, v0, v1

    const/16 v1, 0x2c

    const/16 v2, 0x2c

    aput v2, v0, v1

    const/16 v1, 0x2d

    const/16 v2, 0x2d

    aput v2, v0, v1

    const/16 v1, 0x2e

    const/16 v2, 0x2e

    aput v2, v0, v1

    const/16 v1, 0x2f

    const/16 v2, 0x2f

    aput v2, v0, v1

    const/16 v1, 0x30

    .line 478
    const/16 v2, 0x30

    aput v2, v0, v1

    const/16 v1, 0x31

    const/16 v2, 0x31

    aput v2, v0, v1

    const/16 v1, 0x32

    const/16 v2, 0x32

    aput v2, v0, v1

    .line 476
    sput-object v0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishCalendar;->Thu_normal:[I

    .line 479
    const/16 v0, 0x33

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x34

    aput v2, v0, v1

    aput v3, v0, v4

    aput v3, v0, v5

    const/4 v1, 0x4

    aput v4, v0, v1

    aput v5, v0, v6

    const/4 v1, 0x3

    aput v1, v0, v7

    const/4 v1, 0x7

    const/4 v2, 0x4

    aput v2, v0, v1

    const/16 v1, 0x8

    aput v6, v0, v1

    const/16 v1, 0x9

    aput v7, v0, v1

    const/16 v1, 0xa

    const/4 v2, 0x7

    aput v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0x8

    aput v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x9

    aput v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0xa

    aput v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0xb

    aput v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0xc

    aput v2, v0, v1

    const/16 v1, 0x10

    const/16 v2, 0xd

    aput v2, v0, v1

    const/16 v1, 0x11

    const/16 v2, 0xe

    aput v2, v0, v1

    const/16 v1, 0x12

    const/16 v2, 0xf

    aput v2, v0, v1

    const/16 v1, 0x13

    .line 480
    const/16 v2, 0x10

    aput v2, v0, v1

    const/16 v1, 0x14

    const/16 v2, 0x11

    aput v2, v0, v1

    const/16 v1, 0x15

    const/16 v2, 0x12

    aput v2, v0, v1

    const/16 v1, 0x16

    const/16 v2, 0x13

    aput v2, v0, v1

    const/16 v1, 0x17

    const/16 v2, 0x14

    aput v2, v0, v1

    const/16 v1, 0x18

    const/16 v2, 0x35

    aput v2, v0, v1

    const/16 v1, 0x19

    const/16 v2, 0x17

    aput v2, v0, v1

    const/16 v1, 0x1a

    const/16 v2, 0x18

    aput v2, v0, v1

    const/16 v1, 0x1b

    aput v3, v0, v1

    const/16 v1, 0x1c

    const/16 v2, 0x19

    aput v2, v0, v1

    const/16 v1, 0x1d

    const/16 v2, 0x36

    aput v2, v0, v1

    const/16 v1, 0x1e

    const/16 v2, 0x37

    aput v2, v0, v1

    const/16 v1, 0x1f

    const/16 v2, 0x1e

    aput v2, v0, v1

    const/16 v1, 0x20

    const/16 v2, 0x1f

    aput v2, v0, v1

    const/16 v1, 0x21

    const/16 v2, 0x20

    aput v2, v0, v1

    const/16 v1, 0x22

    const/16 v2, 0x21

    aput v2, v0, v1

    const/16 v1, 0x23

    const/16 v2, 0x22

    aput v2, v0, v1

    const/16 v1, 0x24

    const/16 v2, 0x23

    aput v2, v0, v1

    const/16 v1, 0x25

    const/16 v2, 0x24

    aput v2, v0, v1

    const/16 v1, 0x26

    const/16 v2, 0x25

    aput v2, v0, v1

    const/16 v1, 0x27

    const/16 v2, 0x26

    aput v2, v0, v1

    const/16 v1, 0x28

    const/16 v2, 0x27

    aput v2, v0, v1

    const/16 v1, 0x29

    const/16 v2, 0x28

    aput v2, v0, v1

    const/16 v1, 0x2a

    const/16 v2, 0x3a

    aput v2, v0, v1

    const/16 v1, 0x2b

    const/16 v2, 0x2b

    aput v2, v0, v1

    const/16 v1, 0x2c

    const/16 v2, 0x2c

    aput v2, v0, v1

    const/16 v1, 0x2d

    const/16 v2, 0x2d

    aput v2, v0, v1

    const/16 v1, 0x2e

    .line 481
    const/16 v2, 0x2e

    aput v2, v0, v1

    const/16 v1, 0x2f

    const/16 v2, 0x2f

    aput v2, v0, v1

    const/16 v1, 0x30

    const/16 v2, 0x30

    aput v2, v0, v1

    const/16 v1, 0x31

    const/16 v2, 0x31

    aput v2, v0, v1

    const/16 v1, 0x32

    const/16 v2, 0x32

    aput v2, v0, v1

    .line 479
    sput-object v0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishCalendar;->Thu_normal_Israel:[I

    .line 483
    const/16 v0, 0x33

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x34

    aput v2, v0, v1

    aput v3, v0, v4

    aput v3, v0, v5

    const/4 v1, 0x4

    aput v4, v0, v1

    aput v5, v0, v6

    const/4 v1, 0x3

    aput v1, v0, v7

    const/4 v1, 0x7

    const/4 v2, 0x4

    aput v2, v0, v1

    const/16 v1, 0x8

    aput v6, v0, v1

    const/16 v1, 0x9

    aput v7, v0, v1

    const/16 v1, 0xa

    const/4 v2, 0x7

    aput v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0x8

    aput v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x9

    aput v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0xa

    aput v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0xb

    aput v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0xc

    aput v2, v0, v1

    const/16 v1, 0x10

    const/16 v2, 0xd

    aput v2, v0, v1

    const/16 v1, 0x11

    const/16 v2, 0xe

    aput v2, v0, v1

    const/16 v1, 0x12

    const/16 v2, 0xf

    aput v2, v0, v1

    const/16 v1, 0x13

    const/16 v2, 0x10

    aput v2, v0, v1

    const/16 v1, 0x14

    const/16 v2, 0x11

    aput v2, v0, v1

    const/16 v1, 0x15

    .line 484
    const/16 v2, 0x12

    aput v2, v0, v1

    const/16 v1, 0x16

    const/16 v2, 0x13

    aput v2, v0, v1

    const/16 v1, 0x17

    const/16 v2, 0x14

    aput v2, v0, v1

    const/16 v1, 0x18

    const/16 v2, 0x15

    aput v2, v0, v1

    const/16 v1, 0x19

    const/16 v2, 0x16

    aput v2, v0, v1

    const/16 v1, 0x1a

    const/16 v2, 0x17

    aput v2, v0, v1

    const/16 v1, 0x1b

    const/16 v2, 0x18

    aput v2, v0, v1

    const/16 v1, 0x1c

    aput v3, v0, v1

    const/16 v1, 0x1d

    const/16 v2, 0x19

    aput v2, v0, v1

    const/16 v1, 0x1e

    const/16 v2, 0x36

    aput v2, v0, v1

    const/16 v1, 0x1f

    const/16 v2, 0x37

    aput v2, v0, v1

    const/16 v1, 0x20

    const/16 v2, 0x1e

    aput v2, v0, v1

    const/16 v1, 0x21

    const/16 v2, 0x38

    aput v2, v0, v1

    const/16 v1, 0x22

    const/16 v2, 0x21

    aput v2, v0, v1

    const/16 v1, 0x23

    const/16 v2, 0x22

    aput v2, v0, v1

    const/16 v1, 0x24

    const/16 v2, 0x23

    aput v2, v0, v1

    const/16 v1, 0x25

    const/16 v2, 0x24

    aput v2, v0, v1

    const/16 v1, 0x26

    const/16 v2, 0x25

    aput v2, v0, v1

    const/16 v1, 0x27

    const/16 v2, 0x26

    aput v2, v0, v1

    const/16 v1, 0x28

    const/16 v2, 0x27

    aput v2, v0, v1

    const/16 v1, 0x29

    const/16 v2, 0x28

    aput v2, v0, v1

    const/16 v1, 0x2a

    const/16 v2, 0x3a

    aput v2, v0, v1

    const/16 v1, 0x2b

    const/16 v2, 0x2b

    aput v2, v0, v1

    const/16 v1, 0x2c

    const/16 v2, 0x2c

    aput v2, v0, v1

    const/16 v1, 0x2d

    const/16 v2, 0x2d

    aput v2, v0, v1

    const/16 v1, 0x2e

    const/16 v2, 0x2e

    aput v2, v0, v1

    const/16 v1, 0x2f

    const/16 v2, 0x2f

    aput v2, v0, v1

    const/16 v1, 0x30

    .line 485
    const/16 v2, 0x30

    aput v2, v0, v1

    const/16 v1, 0x31

    const/16 v2, 0x31

    aput v2, v0, v1

    const/16 v1, 0x32

    const/16 v2, 0x32

    aput v2, v0, v1

    .line 483
    sput-object v0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishCalendar;->Thu_long:[I

    .line 487
    const/16 v0, 0x37

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v3, v0, v1

    const/16 v1, 0x34

    aput v1, v0, v4

    aput v3, v0, v5

    const/4 v1, 0x3

    aput v3, v0, v1

    aput v4, v0, v6

    aput v5, v0, v7

    const/4 v1, 0x7

    const/4 v2, 0x3

    aput v2, v0, v1

    const/16 v1, 0x8

    const/4 v2, 0x4

    aput v2, v0, v1

    const/16 v1, 0x9

    aput v6, v0, v1

    const/16 v1, 0xa

    aput v7, v0, v1

    const/16 v1, 0xb

    const/4 v2, 0x7

    aput v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x8

    aput v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0x9

    aput v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0xa

    aput v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0xb

    aput v2, v0, v1

    const/16 v1, 0x10

    const/16 v2, 0xc

    aput v2, v0, v1

    const/16 v1, 0x11

    const/16 v2, 0xd

    aput v2, v0, v1

    const/16 v1, 0x12

    const/16 v2, 0xe

    aput v2, v0, v1

    const/16 v1, 0x13

    const/16 v2, 0xf

    aput v2, v0, v1

    const/16 v1, 0x14

    .line 488
    const/16 v2, 0x10

    aput v2, v0, v1

    const/16 v1, 0x15

    const/16 v2, 0x11

    aput v2, v0, v1

    const/16 v1, 0x16

    const/16 v2, 0x12

    aput v2, v0, v1

    const/16 v1, 0x17

    const/16 v2, 0x13

    aput v2, v0, v1

    const/16 v1, 0x18

    const/16 v2, 0x14

    aput v2, v0, v1

    const/16 v1, 0x19

    const/16 v2, 0x15

    aput v2, v0, v1

    const/16 v1, 0x1a

    const/16 v2, 0x16

    aput v2, v0, v1

    const/16 v1, 0x1b

    const/16 v2, 0x17

    aput v2, v0, v1

    const/16 v1, 0x1c

    const/16 v2, 0x18

    aput v2, v0, v1

    const/16 v1, 0x1d

    const/16 v2, 0x19

    aput v2, v0, v1

    const/16 v1, 0x1e

    const/16 v2, 0x1a

    aput v2, v0, v1

    const/16 v1, 0x1f

    const/16 v2, 0x1b

    aput v2, v0, v1

    const/16 v1, 0x20

    aput v3, v0, v1

    const/16 v1, 0x21

    const/16 v2, 0x1c

    aput v2, v0, v1

    const/16 v1, 0x22

    const/16 v2, 0x1d

    aput v2, v0, v1

    const/16 v1, 0x23

    const/16 v2, 0x1e

    aput v2, v0, v1

    const/16 v1, 0x24

    const/16 v2, 0x1f

    aput v2, v0, v1

    const/16 v1, 0x25

    const/16 v2, 0x20

    aput v2, v0, v1

    const/16 v1, 0x26

    const/16 v2, 0x21

    aput v2, v0, v1

    const/16 v1, 0x27

    const/16 v2, 0x22

    aput v2, v0, v1

    const/16 v1, 0x28

    const/16 v2, 0x23

    aput v2, v0, v1

    const/16 v1, 0x29

    const/16 v2, 0x24

    aput v2, v0, v1

    const/16 v1, 0x2a

    const/16 v2, 0x25

    aput v2, v0, v1

    const/16 v1, 0x2b

    const/16 v2, 0x26

    aput v2, v0, v1

    const/16 v1, 0x2c

    const/16 v2, 0x27

    aput v2, v0, v1

    const/16 v1, 0x2d

    const/16 v2, 0x28

    aput v2, v0, v1

    const/16 v1, 0x2e

    const/16 v2, 0x3a

    aput v2, v0, v1

    const/16 v1, 0x2f

    .line 489
    const/16 v2, 0x2b

    aput v2, v0, v1

    const/16 v1, 0x30

    const/16 v2, 0x2c

    aput v2, v0, v1

    const/16 v1, 0x31

    const/16 v2, 0x2d

    aput v2, v0, v1

    const/16 v1, 0x32

    const/16 v2, 0x2e

    aput v2, v0, v1

    const/16 v1, 0x33

    const/16 v2, 0x2f

    aput v2, v0, v1

    const/16 v1, 0x34

    const/16 v2, 0x30

    aput v2, v0, v1

    const/16 v1, 0x35

    const/16 v2, 0x31

    aput v2, v0, v1

    const/16 v1, 0x36

    const/16 v2, 0x3b

    aput v2, v0, v1

    .line 487
    sput-object v0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishCalendar;->Sat_short_leap:[I

    .line 491
    const/16 v0, 0x37

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v3, v0, v1

    const/16 v1, 0x34

    aput v1, v0, v4

    aput v3, v0, v5

    const/4 v1, 0x3

    aput v3, v0, v1

    aput v4, v0, v6

    aput v5, v0, v7

    const/4 v1, 0x7

    const/4 v2, 0x3

    aput v2, v0, v1

    const/16 v1, 0x8

    const/4 v2, 0x4

    aput v2, v0, v1

    const/16 v1, 0x9

    aput v6, v0, v1

    const/16 v1, 0xa

    aput v7, v0, v1

    const/16 v1, 0xb

    const/4 v2, 0x7

    aput v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x8

    aput v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0x9

    aput v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0xa

    aput v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0xb

    aput v2, v0, v1

    const/16 v1, 0x10

    const/16 v2, 0xc

    aput v2, v0, v1

    const/16 v1, 0x11

    const/16 v2, 0xd

    aput v2, v0, v1

    const/16 v1, 0x12

    const/16 v2, 0xe

    aput v2, v0, v1

    const/16 v1, 0x13

    const/16 v2, 0xf

    aput v2, v0, v1

    const/16 v1, 0x14

    .line 492
    const/16 v2, 0x10

    aput v2, v0, v1

    const/16 v1, 0x15

    const/16 v2, 0x11

    aput v2, v0, v1

    const/16 v1, 0x16

    const/16 v2, 0x12

    aput v2, v0, v1

    const/16 v1, 0x17

    const/16 v2, 0x13

    aput v2, v0, v1

    const/16 v1, 0x18

    const/16 v2, 0x14

    aput v2, v0, v1

    const/16 v1, 0x19

    const/16 v2, 0x15

    aput v2, v0, v1

    const/16 v1, 0x1a

    const/16 v2, 0x16

    aput v2, v0, v1

    const/16 v1, 0x1b

    const/16 v2, 0x17

    aput v2, v0, v1

    const/16 v1, 0x1c

    const/16 v2, 0x18

    aput v2, v0, v1

    const/16 v1, 0x1d

    const/16 v2, 0x19

    aput v2, v0, v1

    const/16 v1, 0x1e

    const/16 v2, 0x1a

    aput v2, v0, v1

    const/16 v1, 0x1f

    const/16 v2, 0x1b

    aput v2, v0, v1

    const/16 v1, 0x20

    aput v3, v0, v1

    const/16 v1, 0x21

    const/16 v2, 0x1c

    aput v2, v0, v1

    const/16 v1, 0x22

    const/16 v2, 0x1d

    aput v2, v0, v1

    const/16 v1, 0x23

    const/16 v2, 0x1e

    aput v2, v0, v1

    const/16 v1, 0x24

    const/16 v2, 0x1f

    aput v2, v0, v1

    const/16 v1, 0x25

    const/16 v2, 0x20

    aput v2, v0, v1

    const/16 v1, 0x26

    const/16 v2, 0x21

    aput v2, v0, v1

    const/16 v1, 0x27

    aput v3, v0, v1

    const/16 v1, 0x28

    const/16 v2, 0x22

    aput v2, v0, v1

    const/16 v1, 0x29

    const/16 v2, 0x23

    aput v2, v0, v1

    const/16 v1, 0x2a

    const/16 v2, 0x24

    aput v2, v0, v1

    const/16 v1, 0x2b

    const/16 v2, 0x25

    aput v2, v0, v1

    const/16 v1, 0x2c

    const/16 v2, 0x39

    aput v2, v0, v1

    const/16 v1, 0x2d

    const/16 v2, 0x28

    aput v2, v0, v1

    const/16 v1, 0x2e

    const/16 v2, 0x3a

    aput v2, v0, v1

    const/16 v1, 0x2f

    .line 493
    const/16 v2, 0x2b

    aput v2, v0, v1

    const/16 v1, 0x30

    const/16 v2, 0x2c

    aput v2, v0, v1

    const/16 v1, 0x31

    const/16 v2, 0x2d

    aput v2, v0, v1

    const/16 v1, 0x32

    const/16 v2, 0x2e

    aput v2, v0, v1

    const/16 v1, 0x33

    const/16 v2, 0x2f

    aput v2, v0, v1

    const/16 v1, 0x34

    const/16 v2, 0x30

    aput v2, v0, v1

    const/16 v1, 0x35

    const/16 v2, 0x31

    aput v2, v0, v1

    const/16 v1, 0x36

    const/16 v2, 0x3b

    aput v2, v0, v1

    .line 491
    sput-object v0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishCalendar;->Sat_long_leap:[I

    .line 495
    const/16 v0, 0x36

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x33

    aput v2, v0, v1

    const/16 v1, 0x34

    aput v1, v0, v4

    aput v3, v0, v5

    const/4 v1, 0x4

    aput v4, v0, v1

    aput v5, v0, v6

    const/4 v1, 0x3

    aput v1, v0, v7

    const/4 v1, 0x7

    const/4 v2, 0x4

    aput v2, v0, v1

    const/16 v1, 0x8

    aput v6, v0, v1

    const/16 v1, 0x9

    aput v7, v0, v1

    const/16 v1, 0xa

    const/4 v2, 0x7

    aput v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0x8

    aput v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x9

    aput v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0xa

    aput v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0xb

    aput v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0xc

    aput v2, v0, v1

    const/16 v1, 0x10

    const/16 v2, 0xd

    aput v2, v0, v1

    const/16 v1, 0x11

    const/16 v2, 0xe

    aput v2, v0, v1

    const/16 v1, 0x12

    const/16 v2, 0xf

    aput v2, v0, v1

    const/16 v1, 0x13

    const/16 v2, 0x10

    aput v2, v0, v1

    const/16 v1, 0x14

    .line 496
    const/16 v2, 0x11

    aput v2, v0, v1

    const/16 v1, 0x15

    const/16 v2, 0x12

    aput v2, v0, v1

    const/16 v1, 0x16

    const/16 v2, 0x13

    aput v2, v0, v1

    const/16 v1, 0x17

    const/16 v2, 0x14

    aput v2, v0, v1

    const/16 v1, 0x18

    const/16 v2, 0x15

    aput v2, v0, v1

    const/16 v1, 0x19

    const/16 v2, 0x16

    aput v2, v0, v1

    const/16 v1, 0x1a

    const/16 v2, 0x17

    aput v2, v0, v1

    const/16 v1, 0x1b

    const/16 v2, 0x18

    aput v2, v0, v1

    const/16 v1, 0x1c

    const/16 v2, 0x19

    aput v2, v0, v1

    const/16 v1, 0x1d

    const/16 v2, 0x1a

    aput v2, v0, v1

    const/16 v1, 0x1e

    const/16 v2, 0x1b

    aput v2, v0, v1

    const/16 v1, 0x1f

    aput v3, v0, v1

    const/16 v1, 0x20

    const/16 v2, 0x1c

    aput v2, v0, v1

    const/16 v1, 0x21

    const/16 v2, 0x1d

    aput v2, v0, v1

    const/16 v1, 0x22

    const/16 v2, 0x1e

    aput v2, v0, v1

    const/16 v1, 0x23

    const/16 v2, 0x1f

    aput v2, v0, v1

    const/16 v1, 0x24

    const/16 v2, 0x20

    aput v2, v0, v1

    const/16 v1, 0x25

    const/16 v2, 0x21

    aput v2, v0, v1

    const/16 v1, 0x26

    aput v3, v0, v1

    const/16 v1, 0x27

    const/16 v2, 0x22

    aput v2, v0, v1

    const/16 v1, 0x28

    const/16 v2, 0x23

    aput v2, v0, v1

    const/16 v1, 0x29

    const/16 v2, 0x24

    aput v2, v0, v1

    const/16 v1, 0x2a

    const/16 v2, 0x25

    aput v2, v0, v1

    const/16 v1, 0x2b

    const/16 v2, 0x39

    aput v2, v0, v1

    const/16 v1, 0x2c

    const/16 v2, 0x28

    aput v2, v0, v1

    const/16 v1, 0x2d

    const/16 v2, 0x3a

    aput v2, v0, v1

    const/16 v1, 0x2e

    const/16 v2, 0x2b

    aput v2, v0, v1

    const/16 v1, 0x2f

    .line 497
    const/16 v2, 0x2c

    aput v2, v0, v1

    const/16 v1, 0x30

    const/16 v2, 0x2d

    aput v2, v0, v1

    const/16 v1, 0x31

    const/16 v2, 0x2e

    aput v2, v0, v1

    const/16 v1, 0x32

    const/16 v2, 0x2f

    aput v2, v0, v1

    const/16 v1, 0x33

    const/16 v2, 0x30

    aput v2, v0, v1

    const/16 v1, 0x34

    const/16 v2, 0x31

    aput v2, v0, v1

    const/16 v1, 0x35

    const/16 v2, 0x3b

    aput v2, v0, v1

    .line 495
    sput-object v0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishCalendar;->Mon_short_leap:[I

    .line 498
    const/16 v0, 0x36

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x33

    aput v2, v0, v1

    const/16 v1, 0x34

    aput v1, v0, v4

    aput v3, v0, v5

    const/4 v1, 0x4

    aput v4, v0, v1

    aput v5, v0, v6

    const/4 v1, 0x3

    aput v1, v0, v7

    const/4 v1, 0x7

    const/4 v2, 0x4

    aput v2, v0, v1

    const/16 v1, 0x8

    aput v6, v0, v1

    const/16 v1, 0x9

    aput v7, v0, v1

    const/16 v1, 0xa

    const/4 v2, 0x7

    aput v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0x8

    aput v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x9

    aput v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0xa

    aput v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0xb

    aput v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0xc

    aput v2, v0, v1

    const/16 v1, 0x10

    const/16 v2, 0xd

    aput v2, v0, v1

    const/16 v1, 0x11

    const/16 v2, 0xe

    aput v2, v0, v1

    const/16 v1, 0x12

    .line 499
    const/16 v2, 0xf

    aput v2, v0, v1

    const/16 v1, 0x13

    const/16 v2, 0x10

    aput v2, v0, v1

    const/16 v1, 0x14

    const/16 v2, 0x11

    aput v2, v0, v1

    const/16 v1, 0x15

    const/16 v2, 0x12

    aput v2, v0, v1

    const/16 v1, 0x16

    const/16 v2, 0x13

    aput v2, v0, v1

    const/16 v1, 0x17

    const/16 v2, 0x14

    aput v2, v0, v1

    const/16 v1, 0x18

    const/16 v2, 0x15

    aput v2, v0, v1

    const/16 v1, 0x19

    const/16 v2, 0x16

    aput v2, v0, v1

    const/16 v1, 0x1a

    const/16 v2, 0x17

    aput v2, v0, v1

    const/16 v1, 0x1b

    const/16 v2, 0x18

    aput v2, v0, v1

    const/16 v1, 0x1c

    const/16 v2, 0x19

    aput v2, v0, v1

    const/16 v1, 0x1d

    const/16 v2, 0x1a

    aput v2, v0, v1

    const/16 v1, 0x1e

    const/16 v2, 0x1b

    aput v2, v0, v1

    const/16 v1, 0x1f

    aput v3, v0, v1

    const/16 v1, 0x20

    const/16 v2, 0x1c

    aput v2, v0, v1

    const/16 v1, 0x21

    const/16 v2, 0x1d

    aput v2, v0, v1

    const/16 v1, 0x22

    const/16 v2, 0x1e

    aput v2, v0, v1

    const/16 v1, 0x23

    const/16 v2, 0x1f

    aput v2, v0, v1

    const/16 v1, 0x24

    const/16 v2, 0x20

    aput v2, v0, v1

    const/16 v1, 0x25

    const/16 v2, 0x21

    aput v2, v0, v1

    const/16 v1, 0x26

    const/16 v2, 0x22

    aput v2, v0, v1

    const/16 v1, 0x27

    const/16 v2, 0x23

    aput v2, v0, v1

    const/16 v1, 0x28

    const/16 v2, 0x24

    aput v2, v0, v1

    const/16 v1, 0x29

    const/16 v2, 0x25

    aput v2, v0, v1

    const/16 v1, 0x2a

    const/16 v2, 0x26

    aput v2, v0, v1

    const/16 v1, 0x2b

    const/16 v2, 0x27

    aput v2, v0, v1

    const/16 v1, 0x2c

    const/16 v2, 0x28

    aput v2, v0, v1

    const/16 v1, 0x2d

    .line 500
    const/16 v2, 0x3a

    aput v2, v0, v1

    const/16 v1, 0x2e

    const/16 v2, 0x2b

    aput v2, v0, v1

    const/16 v1, 0x2f

    const/16 v2, 0x2c

    aput v2, v0, v1

    const/16 v1, 0x30

    const/16 v2, 0x2d

    aput v2, v0, v1

    const/16 v1, 0x31

    const/16 v2, 0x2e

    aput v2, v0, v1

    const/16 v1, 0x32

    const/16 v2, 0x2f

    aput v2, v0, v1

    const/16 v1, 0x33

    const/16 v2, 0x30

    aput v2, v0, v1

    const/16 v1, 0x34

    const/16 v2, 0x31

    aput v2, v0, v1

    const/16 v1, 0x35

    const/16 v2, 0x3b

    aput v2, v0, v1

    .line 498
    sput-object v0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishCalendar;->Mon_short_leap_Israel:[I

    .line 502
    const/16 v0, 0x37

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x33

    aput v2, v0, v1

    const/16 v1, 0x34

    aput v1, v0, v4

    aput v3, v0, v5

    const/4 v1, 0x4

    aput v4, v0, v1

    aput v5, v0, v6

    const/4 v1, 0x3

    aput v1, v0, v7

    const/4 v1, 0x7

    const/4 v2, 0x4

    aput v2, v0, v1

    const/16 v1, 0x8

    aput v6, v0, v1

    const/16 v1, 0x9

    aput v7, v0, v1

    const/16 v1, 0xa

    const/4 v2, 0x7

    aput v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0x8

    aput v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x9

    aput v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0xa

    aput v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0xb

    aput v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0xc

    aput v2, v0, v1

    const/16 v1, 0x10

    const/16 v2, 0xd

    aput v2, v0, v1

    const/16 v1, 0x11

    const/16 v2, 0xe

    aput v2, v0, v1

    const/16 v1, 0x12

    const/16 v2, 0xf

    aput v2, v0, v1

    const/16 v1, 0x13

    const/16 v2, 0x10

    aput v2, v0, v1

    const/16 v1, 0x14

    .line 503
    const/16 v2, 0x11

    aput v2, v0, v1

    const/16 v1, 0x15

    const/16 v2, 0x12

    aput v2, v0, v1

    const/16 v1, 0x16

    const/16 v2, 0x13

    aput v2, v0, v1

    const/16 v1, 0x17

    const/16 v2, 0x14

    aput v2, v0, v1

    const/16 v1, 0x18

    const/16 v2, 0x15

    aput v2, v0, v1

    const/16 v1, 0x19

    const/16 v2, 0x16

    aput v2, v0, v1

    const/16 v1, 0x1a

    const/16 v2, 0x17

    aput v2, v0, v1

    const/16 v1, 0x1b

    const/16 v2, 0x18

    aput v2, v0, v1

    const/16 v1, 0x1c

    const/16 v2, 0x19

    aput v2, v0, v1

    const/16 v1, 0x1d

    const/16 v2, 0x1a

    aput v2, v0, v1

    const/16 v1, 0x1e

    const/16 v2, 0x1b

    aput v2, v0, v1

    const/16 v1, 0x1f

    aput v3, v0, v1

    const/16 v1, 0x20

    aput v3, v0, v1

    const/16 v1, 0x21

    const/16 v2, 0x1c

    aput v2, v0, v1

    const/16 v1, 0x22

    const/16 v2, 0x1d

    aput v2, v0, v1

    const/16 v1, 0x23

    const/16 v2, 0x1e

    aput v2, v0, v1

    const/16 v1, 0x24

    const/16 v2, 0x1f

    aput v2, v0, v1

    const/16 v1, 0x25

    const/16 v2, 0x20

    aput v2, v0, v1

    const/16 v1, 0x26

    const/16 v2, 0x21

    aput v2, v0, v1

    const/16 v1, 0x27

    const/16 v2, 0x22

    aput v2, v0, v1

    const/16 v1, 0x28

    const/16 v2, 0x23

    aput v2, v0, v1

    const/16 v1, 0x29

    const/16 v2, 0x24

    aput v2, v0, v1

    const/16 v1, 0x2a

    const/16 v2, 0x25

    aput v2, v0, v1

    const/16 v1, 0x2b

    const/16 v2, 0x26

    aput v2, v0, v1

    const/16 v1, 0x2c

    const/16 v2, 0x27

    aput v2, v0, v1

    const/16 v1, 0x2d

    const/16 v2, 0x28

    aput v2, v0, v1

    const/16 v1, 0x2e

    const/16 v2, 0x3a

    aput v2, v0, v1

    const/16 v1, 0x2f

    .line 504
    const/16 v2, 0x2b

    aput v2, v0, v1

    const/16 v1, 0x30

    const/16 v2, 0x2c

    aput v2, v0, v1

    const/16 v1, 0x31

    const/16 v2, 0x2d

    aput v2, v0, v1

    const/16 v1, 0x32

    const/16 v2, 0x2e

    aput v2, v0, v1

    const/16 v1, 0x33

    const/16 v2, 0x2f

    aput v2, v0, v1

    const/16 v1, 0x34

    const/16 v2, 0x30

    aput v2, v0, v1

    const/16 v1, 0x35

    const/16 v2, 0x31

    aput v2, v0, v1

    const/16 v1, 0x36

    const/16 v2, 0x32

    aput v2, v0, v1

    .line 502
    sput-object v0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishCalendar;->Mon_long_leap:[I

    .line 505
    const/16 v0, 0x37

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x33

    aput v2, v0, v1

    const/16 v1, 0x34

    aput v1, v0, v4

    aput v3, v0, v5

    const/4 v1, 0x4

    aput v4, v0, v1

    aput v5, v0, v6

    const/4 v1, 0x3

    aput v1, v0, v7

    const/4 v1, 0x7

    const/4 v2, 0x4

    aput v2, v0, v1

    const/16 v1, 0x8

    aput v6, v0, v1

    const/16 v1, 0x9

    aput v7, v0, v1

    const/16 v1, 0xa

    const/4 v2, 0x7

    aput v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0x8

    aput v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x9

    aput v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0xa

    aput v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0xb

    aput v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0xc

    aput v2, v0, v1

    const/16 v1, 0x10

    const/16 v2, 0xd

    aput v2, v0, v1

    const/16 v1, 0x11

    const/16 v2, 0xe

    aput v2, v0, v1

    const/16 v1, 0x12

    .line 506
    const/16 v2, 0xf

    aput v2, v0, v1

    const/16 v1, 0x13

    const/16 v2, 0x10

    aput v2, v0, v1

    const/16 v1, 0x14

    const/16 v2, 0x11

    aput v2, v0, v1

    const/16 v1, 0x15

    const/16 v2, 0x12

    aput v2, v0, v1

    const/16 v1, 0x16

    const/16 v2, 0x13

    aput v2, v0, v1

    const/16 v1, 0x17

    const/16 v2, 0x14

    aput v2, v0, v1

    const/16 v1, 0x18

    const/16 v2, 0x15

    aput v2, v0, v1

    const/16 v1, 0x19

    const/16 v2, 0x16

    aput v2, v0, v1

    const/16 v1, 0x1a

    const/16 v2, 0x17

    aput v2, v0, v1

    const/16 v1, 0x1b

    const/16 v2, 0x18

    aput v2, v0, v1

    const/16 v1, 0x1c

    const/16 v2, 0x19

    aput v2, v0, v1

    const/16 v1, 0x1d

    const/16 v2, 0x1a

    aput v2, v0, v1

    const/16 v1, 0x1e

    const/16 v2, 0x1b

    aput v2, v0, v1

    const/16 v1, 0x1f

    aput v3, v0, v1

    const/16 v1, 0x20

    const/16 v2, 0x1c

    aput v2, v0, v1

    const/16 v1, 0x21

    const/16 v2, 0x1d

    aput v2, v0, v1

    const/16 v1, 0x22

    const/16 v2, 0x1e

    aput v2, v0, v1

    const/16 v1, 0x23

    const/16 v2, 0x1f

    aput v2, v0, v1

    const/16 v1, 0x24

    const/16 v2, 0x20

    aput v2, v0, v1

    const/16 v1, 0x25

    const/16 v2, 0x21

    aput v2, v0, v1

    const/16 v1, 0x26

    const/16 v2, 0x22

    aput v2, v0, v1

    const/16 v1, 0x27

    const/16 v2, 0x23

    aput v2, v0, v1

    const/16 v1, 0x28

    const/16 v2, 0x24

    aput v2, v0, v1

    const/16 v1, 0x29

    const/16 v2, 0x25

    aput v2, v0, v1

    const/16 v1, 0x2a

    const/16 v2, 0x26

    aput v2, v0, v1

    const/16 v1, 0x2b

    const/16 v2, 0x27

    aput v2, v0, v1

    const/16 v1, 0x2c

    const/16 v2, 0x28

    aput v2, v0, v1

    const/16 v1, 0x2d

    .line 507
    const/16 v2, 0x29

    aput v2, v0, v1

    const/16 v1, 0x2e

    const/16 v2, 0x2a

    aput v2, v0, v1

    const/16 v1, 0x2f

    const/16 v2, 0x2b

    aput v2, v0, v1

    const/16 v1, 0x30

    const/16 v2, 0x2c

    aput v2, v0, v1

    const/16 v1, 0x31

    const/16 v2, 0x2d

    aput v2, v0, v1

    const/16 v1, 0x32

    const/16 v2, 0x2e

    aput v2, v0, v1

    const/16 v1, 0x33

    const/16 v2, 0x2f

    aput v2, v0, v1

    const/16 v1, 0x34

    const/16 v2, 0x30

    aput v2, v0, v1

    const/16 v1, 0x35

    const/16 v2, 0x31

    aput v2, v0, v1

    const/16 v1, 0x36

    const/16 v2, 0x32

    aput v2, v0, v1

    .line 505
    sput-object v0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishCalendar;->Mon_long_leap_Israel:[I

    .line 509
    const/16 v0, 0x37

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x34

    aput v2, v0, v1

    aput v3, v0, v4

    aput v3, v0, v5

    const/4 v1, 0x4

    aput v4, v0, v1

    aput v5, v0, v6

    const/4 v1, 0x3

    aput v1, v0, v7

    const/4 v1, 0x7

    const/4 v2, 0x4

    aput v2, v0, v1

    const/16 v1, 0x8

    aput v6, v0, v1

    const/16 v1, 0x9

    aput v7, v0, v1

    const/16 v1, 0xa

    const/4 v2, 0x7

    aput v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0x8

    aput v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x9

    aput v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0xa

    aput v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0xb

    aput v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0xc

    aput v2, v0, v1

    const/16 v1, 0x10

    const/16 v2, 0xd

    aput v2, v0, v1

    const/16 v1, 0x11

    const/16 v2, 0xe

    aput v2, v0, v1

    const/16 v1, 0x12

    const/16 v2, 0xf

    aput v2, v0, v1

    const/16 v1, 0x13

    const/16 v2, 0x10

    aput v2, v0, v1

    const/16 v1, 0x14

    .line 510
    const/16 v2, 0x11

    aput v2, v0, v1

    const/16 v1, 0x15

    const/16 v2, 0x12

    aput v2, v0, v1

    const/16 v1, 0x16

    const/16 v2, 0x13

    aput v2, v0, v1

    const/16 v1, 0x17

    const/16 v2, 0x14

    aput v2, v0, v1

    const/16 v1, 0x18

    const/16 v2, 0x15

    aput v2, v0, v1

    const/16 v1, 0x19

    const/16 v2, 0x16

    aput v2, v0, v1

    const/16 v1, 0x1a

    const/16 v2, 0x17

    aput v2, v0, v1

    const/16 v1, 0x1b

    const/16 v2, 0x18

    aput v2, v0, v1

    const/16 v1, 0x1c

    const/16 v2, 0x19

    aput v2, v0, v1

    const/16 v1, 0x1d

    const/16 v2, 0x1a

    aput v2, v0, v1

    const/16 v1, 0x1e

    const/16 v2, 0x1b

    aput v2, v0, v1

    const/16 v1, 0x1f

    const/16 v2, 0x1c

    aput v2, v0, v1

    const/16 v1, 0x20

    aput v3, v0, v1

    const/16 v1, 0x21

    const/16 v2, 0x1d

    aput v2, v0, v1

    const/16 v1, 0x22

    const/16 v2, 0x1e

    aput v2, v0, v1

    const/16 v1, 0x23

    const/16 v2, 0x1f

    aput v2, v0, v1

    const/16 v1, 0x24

    const/16 v2, 0x20

    aput v2, v0, v1

    const/16 v1, 0x25

    const/16 v2, 0x21

    aput v2, v0, v1

    const/16 v1, 0x26

    const/16 v2, 0x22

    aput v2, v0, v1

    const/16 v1, 0x27

    const/16 v2, 0x23

    aput v2, v0, v1

    const/16 v1, 0x28

    const/16 v2, 0x24

    aput v2, v0, v1

    const/16 v1, 0x29

    const/16 v2, 0x25

    aput v2, v0, v1

    const/16 v1, 0x2a

    const/16 v2, 0x26

    aput v2, v0, v1

    const/16 v1, 0x2b

    const/16 v2, 0x27

    aput v2, v0, v1

    const/16 v1, 0x2c

    const/16 v2, 0x28

    aput v2, v0, v1

    const/16 v1, 0x2d

    const/16 v2, 0x29

    aput v2, v0, v1

    const/16 v1, 0x2e

    const/16 v2, 0x2a

    aput v2, v0, v1

    const/16 v1, 0x2f

    .line 511
    const/16 v2, 0x2b

    aput v2, v0, v1

    const/16 v1, 0x30

    const/16 v2, 0x2c

    aput v2, v0, v1

    const/16 v1, 0x31

    const/16 v2, 0x2d

    aput v2, v0, v1

    const/16 v1, 0x32

    const/16 v2, 0x2e

    aput v2, v0, v1

    const/16 v1, 0x33

    const/16 v2, 0x2f

    aput v2, v0, v1

    const/16 v1, 0x34

    const/16 v2, 0x30

    aput v2, v0, v1

    const/16 v1, 0x35

    const/16 v2, 0x31

    aput v2, v0, v1

    const/16 v1, 0x36

    const/16 v2, 0x32

    aput v2, v0, v1

    .line 509
    sput-object v0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishCalendar;->Thu_short_leap:[I

    .line 513
    const/16 v0, 0x37

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x34

    aput v2, v0, v1

    aput v3, v0, v4

    aput v3, v0, v5

    const/4 v1, 0x4

    aput v4, v0, v1

    aput v5, v0, v6

    const/4 v1, 0x3

    aput v1, v0, v7

    const/4 v1, 0x7

    const/4 v2, 0x4

    aput v2, v0, v1

    const/16 v1, 0x8

    aput v6, v0, v1

    const/16 v1, 0x9

    aput v7, v0, v1

    const/16 v1, 0xa

    const/4 v2, 0x7

    aput v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0x8

    aput v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x9

    aput v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0xa

    aput v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0xb

    aput v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0xc

    aput v2, v0, v1

    const/16 v1, 0x10

    const/16 v2, 0xd

    aput v2, v0, v1

    const/16 v1, 0x11

    const/16 v2, 0xe

    aput v2, v0, v1

    const/16 v1, 0x12

    const/16 v2, 0xf

    aput v2, v0, v1

    const/16 v1, 0x13

    const/16 v2, 0x10

    aput v2, v0, v1

    const/16 v1, 0x14

    .line 514
    const/16 v2, 0x11

    aput v2, v0, v1

    const/16 v1, 0x15

    const/16 v2, 0x12

    aput v2, v0, v1

    const/16 v1, 0x16

    const/16 v2, 0x13

    aput v2, v0, v1

    const/16 v1, 0x17

    const/16 v2, 0x14

    aput v2, v0, v1

    const/16 v1, 0x18

    const/16 v2, 0x15

    aput v2, v0, v1

    const/16 v1, 0x19

    const/16 v2, 0x16

    aput v2, v0, v1

    const/16 v1, 0x1a

    const/16 v2, 0x17

    aput v2, v0, v1

    const/16 v1, 0x1b

    const/16 v2, 0x18

    aput v2, v0, v1

    const/16 v1, 0x1c

    const/16 v2, 0x19

    aput v2, v0, v1

    const/16 v1, 0x1d

    const/16 v2, 0x1a

    aput v2, v0, v1

    const/16 v1, 0x1e

    const/16 v2, 0x1b

    aput v2, v0, v1

    const/16 v1, 0x1f

    const/16 v2, 0x1c

    aput v2, v0, v1

    const/16 v1, 0x20

    aput v3, v0, v1

    const/16 v1, 0x21

    const/16 v2, 0x1d

    aput v2, v0, v1

    const/16 v1, 0x22

    const/16 v2, 0x1e

    aput v2, v0, v1

    const/16 v1, 0x23

    const/16 v2, 0x1f

    aput v2, v0, v1

    const/16 v1, 0x24

    const/16 v2, 0x20

    aput v2, v0, v1

    const/16 v1, 0x25

    const/16 v2, 0x21

    aput v2, v0, v1

    const/16 v1, 0x26

    const/16 v2, 0x22

    aput v2, v0, v1

    const/16 v1, 0x27

    const/16 v2, 0x23

    aput v2, v0, v1

    const/16 v1, 0x28

    const/16 v2, 0x24

    aput v2, v0, v1

    const/16 v1, 0x29

    const/16 v2, 0x25

    aput v2, v0, v1

    const/16 v1, 0x2a

    const/16 v2, 0x26

    aput v2, v0, v1

    const/16 v1, 0x2b

    const/16 v2, 0x27

    aput v2, v0, v1

    const/16 v1, 0x2c

    const/16 v2, 0x28

    aput v2, v0, v1

    const/16 v1, 0x2d

    const/16 v2, 0x29

    aput v2, v0, v1

    const/16 v1, 0x2e

    const/16 v2, 0x2a

    aput v2, v0, v1

    const/16 v1, 0x2f

    .line 515
    const/16 v2, 0x2b

    aput v2, v0, v1

    const/16 v1, 0x30

    const/16 v2, 0x2c

    aput v2, v0, v1

    const/16 v1, 0x31

    const/16 v2, 0x2d

    aput v2, v0, v1

    const/16 v1, 0x32

    const/16 v2, 0x2e

    aput v2, v0, v1

    const/16 v1, 0x33

    const/16 v2, 0x2f

    aput v2, v0, v1

    const/16 v1, 0x34

    const/16 v2, 0x30

    aput v2, v0, v1

    const/16 v1, 0x35

    const/16 v2, 0x31

    aput v2, v0, v1

    const/16 v1, 0x36

    const/16 v2, 0x3b

    aput v2, v0, v1

    .line 513
    sput-object v0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishCalendar;->Thu_long_leap:[I

    .line 515
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 117
    invoke-direct {p0}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;-><init>()V

    .line 89
    iput-boolean v0, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishCalendar;->inIsrael:Z

    .line 90
    iput-boolean v0, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishCalendar;->useModernHolidays:Z

    .line 118
    return-void
.end method

.method public constructor <init>(III)V
    .locals 1
    .param p1, "jewishYear"    # I
    .param p2, "jewishMonth"    # I
    .param p3, "jewishDayOfMonth"    # I

    .prologue
    const/4 v0, 0x0

    .line 157
    invoke-direct {p0, p1, p2, p3}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;-><init>(III)V

    .line 89
    iput-boolean v0, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishCalendar;->inIsrael:Z

    .line 90
    iput-boolean v0, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishCalendar;->useModernHolidays:Z

    .line 158
    return-void
.end method

.method public constructor <init>(IIIZ)V
    .locals 1
    .param p1, "jewishYear"    # I
    .param p2, "jewishMonth"    # I
    .param p3, "jewishDayOfMonth"    # I
    .param p4, "inIsrael"    # Z

    .prologue
    const/4 v0, 0x0

    .line 177
    invoke-direct {p0, p1, p2, p3}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;-><init>(III)V

    .line 89
    iput-boolean v0, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishCalendar;->inIsrael:Z

    .line 90
    iput-boolean v0, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishCalendar;->useModernHolidays:Z

    .line 178
    invoke-virtual {p0, p4}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishCalendar;->setInIsrael(Z)V

    .line 179
    return-void
.end method

.method public constructor <init>(Ljava/util/Calendar;)V
    .locals 1
    .param p1, "calendar"    # Ljava/util/Calendar;

    .prologue
    const/4 v0, 0x0

    .line 137
    invoke-direct {p0, p1}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;-><init>(Ljava/util/Calendar;)V

    .line 89
    iput-boolean v0, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishCalendar;->inIsrael:Z

    .line 90
    iput-boolean v0, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishCalendar;->useModernHolidays:Z

    .line 138
    return-void
.end method

.method public constructor <init>(Ljava/util/Date;)V
    .locals 1
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    const/4 v0, 0x0

    .line 127
    invoke-direct {p0, p1}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;-><init>(Ljava/util/Date;)V

    .line 89
    iput-boolean v0, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishCalendar;->inIsrael:Z

    .line 90
    iput-boolean v0, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishCalendar;->useModernHolidays:Z

    .line 128
    return-void
.end method

.method public static getKviah(I)Ljava/lang/String;
    .locals 1
    .param p0, "jewishYear"    # I

    .prologue
    .line 542
    new-instance v0, Lnet/sourceforge/zmanim/hebrewcalendar/HebrewDateFormatter;

    invoke-direct {v0}, Lnet/sourceforge/zmanim/hebrewcalendar/HebrewDateFormatter;-><init>()V

    invoke-virtual {v0, p0}, Lnet/sourceforge/zmanim/hebrewcalendar/HebrewDateFormatter;->getFormattedKviah(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMoladAsDate(II)Ljava/util/Date;
    .locals 20
    .param p0, "jewishYear"    # I
    .param p1, "jewishMonth"    # I

    .prologue
    .line 723
    invoke-static/range {p0 .. p1}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->getMolad(II)Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;

    move-result-object v16

    .line 724
    .local v16, "molad":Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;
    const-string v3, "Jerusalem, Israel"

    .line 726
    .local v3, "locationName":Ljava/lang/String;
    const-wide v4, 0x403fc72b020c49baL    # 31.778

    .line 727
    .local v4, "latitude":D
    const-wide v6, 0x40419e219652bd3cL    # 35.2354

    .line 731
    .local v6, "longitude":D
    const-string v10, "GMT+2"

    invoke-static {v10}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v8

    .line 732
    .local v8, "yerushalayimStandardTZ":Ljava/util/TimeZone;
    new-instance v2, Lnet/sourceforge/zmanim/util/GeoLocation;

    invoke-direct/range {v2 .. v8}, Lnet/sourceforge/zmanim/util/GeoLocation;-><init>(Ljava/lang/String;DDLjava/util/TimeZone;)V

    .line 733
    .local v2, "geo":Lnet/sourceforge/zmanim/util/GeoLocation;
    invoke-virtual {v2}, Lnet/sourceforge/zmanim/util/GeoLocation;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v10

    invoke-static {v10}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v9

    .line 734
    .local v9, "cal":Ljava/util/Calendar;
    invoke-virtual {v9}, Ljava/util/Calendar;->clear()V

    .line 735
    invoke-virtual/range {v16 .. v16}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->getMoladChalakim()I

    move-result v10

    mul-int/lit8 v10, v10, 0xa

    div-int/lit8 v10, v10, 0x3

    int-to-double v0, v10

    move-wide/from16 v18, v0

    .line 736
    .local v18, "moladSeconds":D
    invoke-virtual/range {v16 .. v16}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->getGregorianYear()I

    move-result v10

    invoke-virtual/range {v16 .. v16}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->getGregorianMonth()I

    move-result v11

    invoke-virtual/range {v16 .. v16}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->getGregorianDayOfMonth()I

    move-result v12

    .line 737
    invoke-virtual/range {v16 .. v16}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->getMoladHours()I

    move-result v13

    invoke-virtual/range {v16 .. v16}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->getMoladMinutes()I

    move-result v14

    move-wide/from16 v0, v18

    double-to-int v15, v0

    .line 736
    invoke-virtual/range {v9 .. v15}, Ljava/util/Calendar;->set(IIIIII)V

    .line 738
    const/16 v10, 0xe

    const-wide v12, 0x408f400000000000L    # 1000.0

    move-wide/from16 v0, v18

    double-to-int v11, v0

    int-to-double v14, v11

    sub-double v14, v18, v14

    mul-double/2addr v12, v14

    double-to-int v11, v12

    invoke-virtual {v9, v10, v11}, Ljava/util/Calendar;->set(II)V

    .line 740
    const/16 v10, 0xe

    invoke-virtual {v2}, Lnet/sourceforge/zmanim/util/GeoLocation;->getLocalMeanTimeOffset()J

    move-result-wide v12

    long-to-int v11, v12

    mul-int/lit8 v11, v11, -0x1

    invoke-virtual {v9, v10, v11}, Ljava/util/Calendar;->add(II)V

    .line 741
    invoke-virtual {v9}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v10

    return-object v10
.end method

.method public static getSofZmanKidushLevana15Days(II)Ljava/util/Date;
    .locals 4
    .param p0, "jewishYear"    # I
    .param p1, "jewishMonth"    # I

    .prologue
    .line 842
    invoke-static {p0, p1}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishCalendar;->getMoladAsDate(II)Ljava/util/Date;

    move-result-object v1

    .line 843
    .local v1, "molad":Ljava/util/Date;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 844
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 845
    const/4 v2, 0x6

    const/16 v3, 0xf

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->add(II)V

    .line 846
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    return-object v2
.end method

.method public static getSofZmanKidushLevanaBetweenMoldos(II)Ljava/util/Date;
    .locals 5
    .param p0, "jewishYear"    # I
    .param p1, "jewishMonth"    # I

    .prologue
    const/16 v4, 0xe

    .line 807
    invoke-static {p0, p1}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishCalendar;->getMoladAsDate(II)Ljava/util/Date;

    move-result-object v1

    .line 808
    .local v1, "molad":Ljava/util/Date;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 809
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 812
    const/4 v2, 0x5

    invoke-virtual {v0, v2, v4}, Ljava/util/Calendar;->add(II)V

    .line 813
    const/16 v2, 0xb

    const/16 v3, 0x12

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->add(II)V

    .line 814
    const/16 v2, 0xc

    const/16 v3, 0x16

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->add(II)V

    .line 815
    const/16 v2, 0xd

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->add(II)V

    .line 816
    const/16 v2, 0x29a

    invoke-virtual {v0, v4, v2}, Ljava/util/Calendar;->add(II)V

    .line 817
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    return-object v2
.end method

.method public static getTchilasZmanKidushLevana3Days(II)Ljava/util/Date;
    .locals 4
    .param p0, "jewishYear"    # I
    .param p1, "jewishMonth"    # I

    .prologue
    .line 759
    invoke-static {p0, p1}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishCalendar;->getMoladAsDate(II)Ljava/util/Date;

    move-result-object v1

    .line 760
    .local v1, "molad":Ljava/util/Date;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 761
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 762
    const/16 v2, 0xa

    const/16 v3, 0x48

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->add(II)V

    .line 763
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    return-object v2
.end method

.method public static getTchilasZmanKidushLevana7Days(II)Ljava/util/Date;
    .locals 4
    .param p0, "jewishYear"    # I
    .param p1, "jewishMonth"    # I

    .prologue
    .line 782
    invoke-static {p0, p1}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishCalendar;->getMoladAsDate(II)Ljava/util/Date;

    move-result-object v1

    .line 783
    .local v1, "molad":Ljava/util/Date;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 784
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 785
    const/16 v2, 0xa

    const/16 v3, 0xa8

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->add(II)V

    .line 786
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 864
    if-ne p0, p1, :cond_1

    .line 871
    :cond_0
    :goto_0
    return v1

    .line 867
    :cond_1
    instance-of v3, p1, Lnet/sourceforge/zmanim/hebrewcalendar/JewishCalendar;

    if-nez v3, :cond_2

    move v1, v2

    .line 868
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 870
    check-cast v0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishCalendar;

    .line 871
    .local v0, "jewishCalendar":Lnet/sourceforge/zmanim/hebrewcalendar/JewishCalendar;
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishCalendar;->getAbsDate()I

    move-result v3

    invoke-virtual {v0}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishCalendar;->getAbsDate()I

    move-result v4

    if-ne v3, v4, :cond_3

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishCalendar;->getInIsrael()Z

    move-result v3

    invoke-virtual {v0}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishCalendar;->getInIsrael()Z

    move-result v4

    if-eq v3, v4, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getDafYomiBavli()Lnet/sourceforge/zmanim/hebrewcalendar/Daf;
    .locals 1

    .prologue
    .line 857
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishCalendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-static {v0}, Lnet/sourceforge/zmanim/hebrewcalendar/YomiCalculator;->getDafYomiBavli(Ljava/util/Date;)Lnet/sourceforge/zmanim/hebrewcalendar/Daf;

    move-result-object v0

    return-object v0
.end method

.method public getDayOfChanukah()I
    .locals 2

    .prologue
    .line 442
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishCalendar;->isChanukah()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 443
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishCalendar;->getJewishMonth()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 444
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishCalendar;->getJewishDayOfMonth()I

    move-result v0

    add-int/lit8 v0, v0, -0x18

    .line 449
    :goto_0
    return v0

    .line 446
    :cond_0
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishCalendar;->isKislevShort()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishCalendar;->getJewishDayOfMonth()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishCalendar;->getJewishDayOfMonth()I

    move-result v0

    add-int/lit8 v0, v0, 0x6

    goto :goto_0

    .line 449
    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getDayOfOmer()I
    .locals 4

    .prologue
    .line 690
    const/4 v2, -0x1

    .line 691
    .local v2, "omer":I
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishCalendar;->getJewishMonth()I

    move-result v1

    .line 692
    .local v1, "month":I
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishCalendar;->getJewishDayOfMonth()I

    move-result v0

    .line 695
    .local v0, "dayOfMonth":I
    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    const/16 v3, 0x10

    if-lt v0, v3, :cond_1

    .line 696
    add-int/lit8 v2, v0, -0xf

    .line 704
    :cond_0
    :goto_0
    return v2

    .line 698
    :cond_1
    const/4 v3, 0x2

    if-ne v1, v3, :cond_2

    .line 699
    add-int/lit8 v2, v0, 0xf

    .line 701
    goto :goto_0

    :cond_2
    const/4 v3, 0x3

    if-ne v1, v3, :cond_0

    const/4 v3, 0x6

    if-ge v0, v3, :cond_0

    .line 702
    add-int/lit8 v2, v0, 0x2c

    goto :goto_0
.end method

.method public getInIsrael()Z
    .locals 1

    .prologue
    .line 197
    iget-boolean v0, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishCalendar;->inIsrael:Z

    return v0
.end method

.method public getParsha()Ljava/lang/String;
    .locals 1

    .prologue
    .line 525
    new-instance v0, Lnet/sourceforge/zmanim/hebrewcalendar/HebrewDateFormatter;

    invoke-direct {v0}, Lnet/sourceforge/zmanim/hebrewcalendar/HebrewDateFormatter;-><init>()V

    invoke-virtual {v0, p0}, Lnet/sourceforge/zmanim/hebrewcalendar/HebrewDateFormatter;->formatParsha(Lnet/sourceforge/zmanim/hebrewcalendar/JewishCalendar;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParshaIndex()I
    .locals 10

    .prologue
    const/4 v7, 0x7

    const/4 v9, 0x1

    const/4 v8, 0x2

    .line 561
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishCalendar;->getDayOfWeek()I

    move-result v6

    if-eq v6, v7, :cond_0

    .line 563
    const/4 v1, -0x1

    .line 670
    :goto_0
    return v1

    .line 572
    :cond_0
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishCalendar;->getJewishYear()I

    move-result v6

    invoke-static {v6}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->getCheshvanKislevKviah(I)I

    move-result v2

    .line 575
    .local v2, "kvia":I
    const/4 v0, 0x0

    .line 578
    .local v0, "array":[I
    new-instance v3, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishCalendar;->getJewishYear()I

    move-result v6

    invoke-direct {v3, v6, v7, v9}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;-><init>(III)V

    .line 581
    .local v3, "roshHashana":Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;
    invoke-virtual {v3}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->getDayOfWeek()I

    move-result v4

    .line 584
    .local v4, "roshHashanaDay":I
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishCalendar;->getAbsDate()I

    move-result v6

    invoke-virtual {v3}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->getAbsDate()I

    move-result v7

    sub-int/2addr v6, v7

    rsub-int/lit8 v7, v4, 0x7

    sub-int/2addr v6, v7

    div-int/lit8 v5, v6, 0x7

    .line 587
    .local v5, "week":I
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishCalendar;->isJewishLeapYear()Z

    move-result v6

    if-nez v6, :cond_8

    .line 588
    packed-switch v4, :pswitch_data_0

    .line 647
    :cond_1
    :goto_1
    :pswitch_0
    if-nez v0, :cond_10

    .line 648
    new-instance v6, Ljava/lang/RuntimeException;

    .line 649
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Unable to claculate the parsha. No index array matched any of the known types for the date: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 650
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishCalendar;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 649
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 648
    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 590
    :pswitch_1
    if-nez v2, :cond_2

    .line 591
    sget-object v0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishCalendar;->Sat_short:[I

    .line 592
    goto :goto_1

    :cond_2
    if-ne v2, v8, :cond_1

    .line 593
    sget-object v0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishCalendar;->Sat_long:[I

    .line 595
    goto :goto_1

    .line 597
    :pswitch_2
    if-nez v2, :cond_3

    .line 598
    sget-object v0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishCalendar;->Mon_short:[I

    .line 599
    goto :goto_1

    :cond_3
    if-ne v2, v8, :cond_1

    .line 600
    iget-boolean v6, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishCalendar;->inIsrael:Z

    if-eqz v6, :cond_4

    sget-object v0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishCalendar;->Mon_short:[I

    .line 602
    :goto_2
    goto :goto_1

    .line 600
    :cond_4
    sget-object v0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishCalendar;->Mon_long:[I

    goto :goto_2

    .line 604
    :pswitch_3
    if-ne v2, v9, :cond_1

    .line 605
    iget-boolean v6, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishCalendar;->inIsrael:Z

    if-eqz v6, :cond_5

    sget-object v0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishCalendar;->Mon_short:[I

    .line 607
    :goto_3
    goto :goto_1

    .line 605
    :cond_5
    sget-object v0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishCalendar;->Mon_long:[I

    goto :goto_3

    .line 609
    :pswitch_4
    if-ne v2, v9, :cond_7

    .line 610
    iget-boolean v6, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishCalendar;->inIsrael:Z

    if-eqz v6, :cond_6

    sget-object v0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishCalendar;->Thu_normal_Israel:[I

    .line 611
    :goto_4
    goto :goto_1

    .line 610
    :cond_6
    sget-object v0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishCalendar;->Thu_normal:[I

    goto :goto_4

    .line 611
    :cond_7
    if-ne v2, v8, :cond_1

    .line 612
    sget-object v0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishCalendar;->Thu_long:[I

    goto :goto_1

    .line 617
    :cond_8
    packed-switch v4, :pswitch_data_1

    :pswitch_5
    goto :goto_1

    .line 626
    :pswitch_6
    if-nez v2, :cond_c

    .line 627
    iget-boolean v6, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishCalendar;->inIsrael:Z

    if-eqz v6, :cond_b

    sget-object v0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishCalendar;->Mon_short_leap_Israel:[I

    .line 628
    :goto_5
    goto :goto_1

    .line 619
    :pswitch_7
    if-nez v2, :cond_9

    .line 620
    sget-object v0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishCalendar;->Sat_short_leap:[I

    .line 621
    goto :goto_1

    :cond_9
    if-ne v2, v8, :cond_1

    .line 622
    iget-boolean v6, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishCalendar;->inIsrael:Z

    if-eqz v6, :cond_a

    sget-object v0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishCalendar;->Sat_short_leap:[I

    .line 624
    :goto_6
    goto :goto_1

    .line 622
    :cond_a
    sget-object v0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishCalendar;->Sat_long_leap:[I

    goto :goto_6

    .line 627
    :cond_b
    sget-object v0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishCalendar;->Mon_short_leap:[I

    goto :goto_5

    .line 628
    :cond_c
    if-ne v2, v8, :cond_1

    .line 629
    iget-boolean v6, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishCalendar;->inIsrael:Z

    if-eqz v6, :cond_d

    sget-object v0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishCalendar;->Mon_long_leap_Israel:[I

    .line 631
    :goto_7
    goto :goto_1

    .line 629
    :cond_d
    sget-object v0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishCalendar;->Mon_long_leap:[I

    goto :goto_7

    .line 633
    :pswitch_8
    if-ne v2, v9, :cond_1

    .line 634
    iget-boolean v6, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishCalendar;->inIsrael:Z

    if-eqz v6, :cond_e

    sget-object v0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishCalendar;->Mon_long_leap_Israel:[I

    .line 636
    :goto_8
    goto/16 :goto_1

    .line 634
    :cond_e
    sget-object v0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishCalendar;->Mon_long_leap:[I

    goto :goto_8

    .line 638
    :pswitch_9
    if-nez v2, :cond_f

    .line 639
    sget-object v0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishCalendar;->Thu_short_leap:[I

    .line 640
    goto/16 :goto_1

    :cond_f
    if-ne v2, v8, :cond_1

    .line 641
    sget-object v0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishCalendar;->Thu_long_leap:[I

    goto/16 :goto_1

    .line 653
    :cond_10
    aget v1, v0, v5

    .line 670
    .local v1, "index":I
    goto/16 :goto_0

    .line 588
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 617
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_6
        :pswitch_8
        :pswitch_5
        :pswitch_9
        :pswitch_5
        :pswitch_7
    .end packed-switch
.end method

.method public getYomTov()Ljava/lang/String;
    .locals 1

    .prologue
    .line 369
    new-instance v0, Lnet/sourceforge/zmanim/hebrewcalendar/HebrewDateFormatter;

    invoke-direct {v0}, Lnet/sourceforge/zmanim/hebrewcalendar/HebrewDateFormatter;-><init>()V

    invoke-virtual {v0, p0}, Lnet/sourceforge/zmanim/hebrewcalendar/HebrewDateFormatter;->formatYomTov(Lnet/sourceforge/zmanim/hebrewcalendar/JewishCalendar;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getYomTovIndex()I
    .locals 8

    .prologue
    const/16 v6, 0xe

    const/4 v5, 0x7

    const/4 v2, 0x1

    const/4 v3, 0x3

    const/4 v4, 0x5

    .line 208
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishCalendar;->getJewishDayOfMonth()I

    move-result v0

    .line 209
    .local v0, "dayOfMonth":I
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishCalendar;->getDayOfWeek()I

    move-result v1

    .line 210
    .local v1, "dayOfWeek":I
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishCalendar;->getJewishMonth()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 359
    :cond_0
    :pswitch_0
    const/4 v2, -0x1

    :cond_1
    :goto_0
    return v2

    .line 212
    :pswitch_1
    if-ne v0, v6, :cond_2

    .line 213
    const/4 v2, 0x0

    goto :goto_0

    .line 214
    :cond_2
    const/16 v5, 0xf

    if-eq v0, v5, :cond_1

    const/16 v5, 0x15

    if-eq v0, v5, :cond_1

    .line 215
    iget-boolean v5, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishCalendar;->inIsrael:Z

    if-nez v5, :cond_3

    const/16 v5, 0x10

    if-eq v0, v5, :cond_1

    const/16 v5, 0x16

    if-eq v0, v5, :cond_1

    .line 217
    :cond_3
    const/16 v5, 0x11

    if-lt v0, v5, :cond_4

    const/16 v5, 0x14

    if-le v0, v5, :cond_5

    .line 218
    :cond_4
    const/16 v5, 0x10

    if-ne v0, v5, :cond_6

    iget-boolean v5, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishCalendar;->inIsrael:Z

    if-eqz v5, :cond_6

    .line 219
    :cond_5
    const/4 v2, 0x2

    goto :goto_0

    .line 221
    :cond_6
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishCalendar;->isUseModernHolidays()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 222
    const/16 v5, 0x1a

    if-ne v0, v5, :cond_7

    if-eq v1, v4, :cond_a

    .line 223
    :cond_7
    const/16 v5, 0x1c

    if-ne v0, v5, :cond_8

    if-eq v1, v2, :cond_a

    .line 224
    :cond_8
    const/16 v2, 0x1b

    if-ne v0, v2, :cond_9

    if-eq v1, v3, :cond_a

    :cond_9
    const/16 v2, 0x1b

    if-ne v0, v2, :cond_0

    if-ne v1, v4, :cond_0

    .line 225
    :cond_a
    const/16 v2, 0x1d

    goto :goto_0

    .line 229
    :pswitch_2
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishCalendar;->isUseModernHolidays()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 230
    const/4 v2, 0x4

    if-ne v0, v2, :cond_b

    if-eq v1, v3, :cond_e

    .line 231
    :cond_b
    if-eq v0, v3, :cond_c

    const/4 v2, 0x2

    if-ne v0, v2, :cond_d

    :cond_c
    const/4 v2, 0x4

    if-eq v1, v2, :cond_e

    :cond_d
    if-ne v0, v4, :cond_f

    const/4 v2, 0x2

    if-ne v1, v2, :cond_f

    .line 232
    :cond_e
    const/16 v2, 0x1e

    goto :goto_0

    .line 236
    :cond_f
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishCalendar;->isUseModernHolidays()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 237
    if-ne v0, v4, :cond_10

    const/4 v2, 0x4

    if-eq v1, v2, :cond_13

    .line 238
    :cond_10
    const/4 v2, 0x4

    if-eq v0, v2, :cond_11

    if-ne v0, v3, :cond_12

    :cond_11
    if-eq v1, v4, :cond_13

    :cond_12
    const/4 v2, 0x6

    if-ne v0, v2, :cond_14

    if-ne v1, v3, :cond_14

    .line 239
    :cond_13
    const/16 v2, 0x1f

    goto :goto_0

    .line 241
    :cond_14
    if-ne v0, v6, :cond_15

    move v2, v3

    .line 242
    goto/16 :goto_0

    .line 244
    :cond_15
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishCalendar;->isUseModernHolidays()Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x1c

    if-ne v0, v2, :cond_0

    .line 245
    const/16 v2, 0x20

    goto/16 :goto_0

    .line 249
    :pswitch_3
    if-ne v0, v4, :cond_16

    .line 250
    const/4 v2, 0x4

    goto/16 :goto_0

    .line 251
    :cond_16
    const/4 v2, 0x6

    if-eq v0, v2, :cond_17

    if-ne v0, v5, :cond_0

    iget-boolean v2, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishCalendar;->inIsrael:Z

    if-nez v2, :cond_0

    :cond_17
    move v2, v4

    .line 252
    goto/16 :goto_0

    .line 257
    :pswitch_4
    const/16 v3, 0x11

    if-ne v0, v3, :cond_18

    if-ne v1, v5, :cond_19

    .line 258
    :cond_18
    const/16 v3, 0x12

    if-ne v0, v3, :cond_0

    if-ne v1, v2, :cond_0

    .line 259
    :cond_19
    const/4 v2, 0x6

    goto/16 :goto_0

    .line 264
    :pswitch_5
    if-ne v1, v2, :cond_1a

    const/16 v2, 0xa

    if-eq v0, v2, :cond_1b

    .line 265
    :cond_1a
    if-eq v1, v5, :cond_1c

    const/16 v2, 0x9

    if-ne v0, v2, :cond_1c

    :cond_1b
    move v2, v5

    .line 266
    goto/16 :goto_0

    .line 267
    :cond_1c
    const/16 v2, 0xf

    if-ne v0, v2, :cond_0

    .line 268
    const/16 v2, 0x8

    goto/16 :goto_0

    .line 272
    :pswitch_6
    const/16 v2, 0x1d

    if-ne v0, v2, :cond_0

    .line 273
    const/16 v2, 0x9

    goto/16 :goto_0

    .line 277
    :pswitch_7
    if-eq v0, v2, :cond_1d

    const/4 v4, 0x2

    if-ne v0, v4, :cond_1e

    .line 278
    :cond_1d
    const/16 v2, 0xa

    goto/16 :goto_0

    .line 279
    :cond_1e
    if-ne v0, v3, :cond_1f

    if-ne v1, v5, :cond_20

    .line 280
    :cond_1f
    const/4 v3, 0x4

    if-ne v0, v3, :cond_21

    if-ne v1, v2, :cond_21

    .line 282
    :cond_20
    const/16 v2, 0xb

    goto/16 :goto_0

    .line 283
    :cond_21
    const/16 v2, 0x9

    if-ne v0, v2, :cond_22

    .line 284
    const/16 v2, 0xc

    goto/16 :goto_0

    .line 285
    :cond_22
    const/16 v2, 0xa

    if-ne v0, v2, :cond_23

    .line 286
    const/16 v2, 0xd

    goto/16 :goto_0

    .line 287
    :cond_23
    if-ne v0, v6, :cond_24

    move v2, v6

    .line 288
    goto/16 :goto_0

    .line 290
    :cond_24
    const/16 v2, 0xf

    if-eq v0, v2, :cond_25

    const/16 v2, 0x10

    if-ne v0, v2, :cond_26

    iget-boolean v2, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishCalendar;->inIsrael:Z

    if-nez v2, :cond_26

    .line 291
    :cond_25
    const/16 v2, 0xf

    goto/16 :goto_0

    .line 293
    :cond_26
    const/16 v2, 0x11

    if-lt v0, v2, :cond_27

    const/16 v2, 0x14

    if-le v0, v2, :cond_28

    :cond_27
    const/16 v2, 0x10

    if-ne v0, v2, :cond_29

    iget-boolean v2, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishCalendar;->inIsrael:Z

    if-eqz v2, :cond_29

    .line 294
    :cond_28
    const/16 v2, 0x10

    goto/16 :goto_0

    .line 296
    :cond_29
    const/16 v2, 0x15

    if-ne v0, v2, :cond_2a

    .line 297
    const/16 v2, 0x11

    goto/16 :goto_0

    .line 299
    :cond_2a
    const/16 v2, 0x16

    if-ne v0, v2, :cond_2b

    .line 300
    const/16 v2, 0x12

    goto/16 :goto_0

    .line 302
    :cond_2b
    const/16 v2, 0x17

    if-ne v0, v2, :cond_0

    iget-boolean v2, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishCalendar;->inIsrael:Z

    if-nez v2, :cond_0

    .line 303
    const/16 v2, 0x13

    goto/16 :goto_0

    .line 310
    :pswitch_8
    const/16 v2, 0x19

    if-lt v0, v2, :cond_0

    .line 311
    const/16 v2, 0x15

    goto/16 :goto_0

    .line 315
    :pswitch_9
    if-eq v0, v2, :cond_2c

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2c

    .line 316
    if-ne v0, v3, :cond_2d

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishCalendar;->isKislevShort()Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 317
    :cond_2c
    const/16 v2, 0x15

    goto/16 :goto_0

    .line 318
    :cond_2d
    const/16 v2, 0xa

    if-ne v0, v2, :cond_0

    .line 319
    const/16 v2, 0x16

    goto/16 :goto_0

    .line 323
    :pswitch_a
    const/16 v2, 0xf

    if-ne v0, v2, :cond_0

    .line 324
    const/16 v2, 0x17

    goto/16 :goto_0

    .line 328
    :pswitch_b
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishCalendar;->isJewishLeapYear()Z

    move-result v2

    if-nez v2, :cond_33

    .line 330
    const/16 v2, 0xb

    if-eq v0, v2, :cond_2e

    const/16 v2, 0xc

    if-ne v0, v2, :cond_2f

    :cond_2e
    if-eq v1, v4, :cond_30

    .line 331
    :cond_2f
    const/16 v2, 0xd

    if-ne v0, v2, :cond_31

    const/4 v2, 0x6

    if-eq v1, v2, :cond_31

    if-eq v1, v5, :cond_31

    .line 332
    :cond_30
    const/16 v2, 0x18

    goto/16 :goto_0

    .line 334
    :cond_31
    if-ne v0, v6, :cond_32

    .line 335
    const/16 v2, 0x19

    goto/16 :goto_0

    .line 336
    :cond_32
    const/16 v2, 0xf

    if-ne v0, v2, :cond_0

    .line 337
    const/16 v2, 0x1a

    goto/16 :goto_0

    .line 340
    :cond_33
    if-ne v0, v6, :cond_0

    .line 341
    const/16 v2, 0x1b

    goto/16 :goto_0

    .line 347
    :pswitch_c
    const/16 v2, 0xb

    if-eq v0, v2, :cond_34

    const/16 v2, 0xc

    if-ne v0, v2, :cond_35

    :cond_34
    if-eq v1, v4, :cond_36

    .line 348
    :cond_35
    const/16 v2, 0xd

    if-ne v0, v2, :cond_37

    const/4 v2, 0x6

    if-eq v1, v2, :cond_37

    if-eq v1, v5, :cond_37

    .line 349
    :cond_36
    const/16 v2, 0x18

    goto/16 :goto_0

    .line 351
    :cond_37
    if-ne v0, v6, :cond_38

    .line 352
    const/16 v2, 0x19

    goto/16 :goto_0

    .line 353
    :cond_38
    const/16 v2, 0xf

    if-ne v0, v2, :cond_0

    .line 354
    const/16 v2, 0x1a

    goto/16 :goto_0

    .line 210
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 878
    const/16 v0, 0x11

    .line 879
    .local v0, "result":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x275

    .line 880
    mul-int/lit8 v1, v0, 0x25

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishCalendar;->getAbsDate()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishCalendar;->getInIsrael()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 881
    return v0

    .line 880
    :cond_0
    const/4 v1, 0x3

    goto :goto_0
.end method

.method public isChanukah()Z
    .locals 2

    .prologue
    .line 454
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishCalendar;->getYomTovIndex()I

    move-result v0

    const/16 v1, 0x15

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCholHamoed()Z
    .locals 2

    .prologue
    .line 396
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishCalendar;->getYomTovIndex()I

    move-result v0

    .line 397
    .local v0, "holidayIndex":I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isErevRoshChodesh()Z
    .locals 2

    .prologue
    .line 421
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishCalendar;->getJewishDayOfMonth()I

    move-result v0

    const/16 v1, 0x1d

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishCalendar;->getJewishMonth()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isErevYomTov()Z
    .locals 2

    .prologue
    .line 408
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishCalendar;->getYomTovIndex()I

    move-result v0

    .line 409
    .local v0, "holidayIndex":I
    if-eqz v0, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    .line 410
    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    const/16 v1, 0xe

    if-eq v0, v1, :cond_0

    .line 409
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isRoshChodesh()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 681
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishCalendar;->getJewishDayOfMonth()I

    move-result v1

    if-ne v1, v0, :cond_0

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishCalendar;->getJewishMonth()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_1

    :cond_0
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishCalendar;->getJewishDayOfMonth()I

    move-result v1

    const/16 v2, 0x1e

    if-eq v1, v2, :cond_1

    const/4 v0, 0x0

    :cond_1
    return v0
.end method

.method public isTaanis()Z
    .locals 2

    .prologue
    .line 431
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishCalendar;->getYomTovIndex()I

    move-result v0

    .line 432
    .local v0, "holidayIndex":I
    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    .line 433
    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    const/16 v1, 0x16

    if-eq v0, v1, :cond_0

    const/16 v1, 0x18

    if-eq v0, v1, :cond_0

    .line 432
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isUseModernHolidays()Z
    .locals 1

    .prologue
    .line 99
    iget-boolean v0, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishCalendar;->useModernHolidays:Z

    return v0
.end method

.method public isYomTov()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 380
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishCalendar;->getYomTovIndex()I

    move-result v0

    .line 381
    .local v0, "holidayIndex":I
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishCalendar;->isErevYomTov()Z

    move-result v2

    if-nez v2, :cond_0

    const/16 v2, 0x15

    if-eq v0, v2, :cond_0

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishCalendar;->isTaanis()Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0xd

    if-eq v0, v2, :cond_1

    .line 384
    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishCalendar;->getYomTovIndex()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public setInIsrael(Z)V
    .locals 0
    .param p1, "inIsrael"    # Z

    .prologue
    .line 188
    iput-boolean p1, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishCalendar;->inIsrael:Z

    .line 189
    return-void
.end method

.method public setUseModernHolidays(Z)V
    .locals 0
    .param p1, "useModernHolidays"    # Z

    .prologue
    .line 110
    iput-boolean p1, p0, Lnet/sourceforge/zmanim/hebrewcalendar/JewishCalendar;->useModernHolidays:Z

    .line 111
    return-void
.end method
