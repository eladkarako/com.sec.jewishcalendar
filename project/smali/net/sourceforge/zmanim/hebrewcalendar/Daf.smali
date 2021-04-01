.class public Lnet/sourceforge/zmanim/hebrewcalendar/Daf;
.super Ljava/lang/Object;
.source "Daf.java"


# static fields
.field private static masechtosBavli:[Ljava/lang/String;

.field private static masechtosBavliTransliterated:[Ljava/lang/String;


# instance fields
.field private daf:I

.field private masechtaNumber:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 29
    const/16 v0, 0x28

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Berachos"

    aput-object v1, v0, v3

    const-string v1, "Shabbos"

    aput-object v1, v0, v4

    const-string v1, "Eruvin"

    aput-object v1, v0, v5

    const-string v1, "Pesachim"

    aput-object v1, v0, v6

    const-string v1, "Shekalim"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    .line 30
    const-string v2, "Yoma"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Sukkah"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Beitzah"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Rosh Hashana"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Taanis"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Megillah"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Moed Katan"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "Chagigah"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "Yevamos"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    .line 31
    const-string v2, "Kesubos"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "Nedarim"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "Nazir"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "Sotah"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "Gitin"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "Kiddushin"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "Bava Kamma"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "Bava Metzia"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "Bava Basra"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    .line 32
    const-string v2, "Sanhedrin"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "Makkos"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "Shevuos"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "Avodah Zarah"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "Horiyos"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "Zevachim"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "Menachos"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "Chullin"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "Bechoros"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    .line 33
    const-string v2, "Arachin"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "Temurah"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "Kerisos"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "Meilah"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "Kinnim"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "Tamid"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "Midos"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "Niddah"

    aput-object v2, v0, v1

    .line 29
    sput-object v0, Lnet/sourceforge/zmanim/hebrewcalendar/Daf;->masechtosBavliTransliterated:[Ljava/lang/String;

    .line 35
    const/16 v0, 0x28

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u05d1\u05e8\u05db\u05d5\u05ea"

    aput-object v1, v0, v3

    const-string v1, "\u05e9\u05d1\u05ea"

    aput-object v1, v0, v4

    .line 36
    const-string v1, "\u05e2\u05d9\u05e8\u05d5\u05d1\u05d9\u05df"

    aput-object v1, v0, v5

    const-string v1, "\u05e4\u05e1\u05d7\u05d9\u05dd"

    aput-object v1, v0, v6

    .line 37
    const-string v1, "\u05e9\u05e7\u05dc\u05d9\u05dd"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "\u05d9\u05d5\u05de\u05d0"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u05e1\u05d5\u05db\u05d4"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 38
    const-string v2, "\u05d1\u05d9\u05e6\u05d4"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\u05e8\u05d0\u05e9 \u05d4\u05e9\u05e0\u05d4"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 39
    const-string v2, "\u05ea\u05e2\u05e0\u05d9\u05ea"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\u05de\u05d2\u05d9\u05dc\u05d4"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 40
    const-string v2, "\u05de\u05d5\u05e2\u05d3 \u05e7\u05d8\u05df"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "\u05d7\u05d2\u05d9\u05d2\u05d4"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    .line 41
    const-string v2, "\u05d9\u05d1\u05de\u05d5\u05ea"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "\u05db\u05ea\u05d5\u05d1\u05d5\u05ea"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "\u05e0\u05d3\u05e8\u05d9\u05dd"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    .line 42
    const-string v2, "\u05e0\u05d6\u05d9\u05e8"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "\u05e1\u05d5\u05d8\u05d4"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "\u05d2\u05d9\u05d8\u05d9\u05df"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    .line 43
    const-string v2, "\u05e7\u05d9\u05d3\u05d5\u05e9\u05d9\u05df"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "\u05d1\u05d1\u05d0 \u05e7\u05de\u05d0"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    .line 44
    const-string v2, "\u05d1\u05d1\u05d0 \u05de\u05e6\u05d9\u05e2\u05d0"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "\u05d1\u05d1\u05d0 \u05d1\u05ea\u05e8\u05d0"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    .line 45
    const-string v2, "\u05e1\u05e0\u05d4\u05d3\u05e8\u05d9\u05df"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "\u05de\u05db\u05d5\u05ea"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    .line 46
    const-string v2, "\u05e9\u05d1\u05d5\u05e2\u05d5\u05ea"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "\u05e2\u05d1\u05d5\u05d3\u05d4 \u05d6\u05e8\u05d4"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    .line 47
    const-string v2, "\u05d4\u05d5\u05e8\u05d9\u05d5\u05ea"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "\u05d6\u05d1\u05d7\u05d9\u05dd"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "\u05de\u05e0\u05d7\u05d5\u05ea"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    .line 48
    const-string v2, "\u05d7\u05d5\u05dc\u05d9\u05df"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "\u05d1\u05db\u05d5\u05e8\u05d5\u05ea"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "\u05e2\u05e8\u05db\u05d9\u05df"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    .line 49
    const-string v2, "\u05ea\u05de\u05d5\u05e8\u05d4"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "\u05db\u05e8\u05d9\u05ea\u05d5\u05ea"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "\u05de\u05e2\u05d9\u05dc\u05d4"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    .line 50
    const-string v2, "\u05ea\u05de\u05d9\u05d3"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "\u05e7\u05d9\u05e0\u05d9\u05dd"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "\u05de\u05d9\u05d3\u05d5\u05ea"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    .line 51
    const-string v2, "\u05e0\u05d3\u05d4"

    aput-object v2, v0, v1

    .line 35
    sput-object v0, Lnet/sourceforge/zmanim/hebrewcalendar/Daf;->masechtosBavli:[Ljava/lang/String;

    .line 51
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1, "masechtaNumber"    # I
    .param p2, "daf"    # I

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput p1, p0, Lnet/sourceforge/zmanim/hebrewcalendar/Daf;->masechtaNumber:I

    .line 83
    iput p2, p0, Lnet/sourceforge/zmanim/hebrewcalendar/Daf;->daf:I

    .line 84
    return-void
.end method


# virtual methods
.method public getDaf()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lnet/sourceforge/zmanim/hebrewcalendar/Daf;->daf:I

    return v0
.end method

.method public getMasechta()Ljava/lang/String;
    .locals 2

    .prologue
    .line 123
    sget-object v0, Lnet/sourceforge/zmanim/hebrewcalendar/Daf;->masechtosBavli:[Ljava/lang/String;

    iget v1, p0, Lnet/sourceforge/zmanim/hebrewcalendar/Daf;->masechtaNumber:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getMasechtaNumber()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lnet/sourceforge/zmanim/hebrewcalendar/Daf;->masechtaNumber:I

    return v0
.end method

.method public getMasechtaTransliterated()Ljava/lang/String;
    .locals 2

    .prologue
    .line 112
    sget-object v0, Lnet/sourceforge/zmanim/hebrewcalendar/Daf;->masechtosBavliTransliterated:[Ljava/lang/String;

    iget v1, p0, Lnet/sourceforge/zmanim/hebrewcalendar/Daf;->masechtaNumber:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public setDaf(I)V
    .locals 0
    .param p1, "daf"    # I

    .prologue
    .line 99
    iput p1, p0, Lnet/sourceforge/zmanim/hebrewcalendar/Daf;->daf:I

    .line 100
    return-void
.end method

.method public setMasechtaNumber(I)V
    .locals 0
    .param p1, "masechtaNumber"    # I

    .prologue
    .line 71
    iput p1, p0, Lnet/sourceforge/zmanim/hebrewcalendar/Daf;->masechtaNumber:I

    .line 72
    return-void
.end method
