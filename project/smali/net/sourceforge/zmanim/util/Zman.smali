.class public Lnet/sourceforge/zmanim/util/Zman;
.super Ljava/lang/Object;
.source "Zman.java"


# static fields
.field public static final DATE_ORDER:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lnet/sourceforge/zmanim/util/Zman;",
            ">;"
        }
    .end annotation
.end field

.field public static final DURATION_ORDER:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lnet/sourceforge/zmanim/util/Zman;",
            ">;"
        }
    .end annotation
.end field

.field public static final NAME_ORDER:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lnet/sourceforge/zmanim/util/Zman;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private duration:J

.field private zman:Ljava/util/Date;

.field private zmanDescription:Ljava/util/Date;

.field private zmanLabel:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    new-instance v0, Lnet/sourceforge/zmanim/util/Zman$1;

    invoke-direct {v0}, Lnet/sourceforge/zmanim/util/Zman$1;-><init>()V

    sput-object v0, Lnet/sourceforge/zmanim/util/Zman;->DATE_ORDER:Ljava/util/Comparator;

    .line 74
    new-instance v0, Lnet/sourceforge/zmanim/util/Zman$2;

    invoke-direct {v0}, Lnet/sourceforge/zmanim/util/Zman$2;-><init>()V

    sput-object v0, Lnet/sourceforge/zmanim/util/Zman;->NAME_ORDER:Ljava/util/Comparator;

    .line 80
    new-instance v0, Lnet/sourceforge/zmanim/util/Zman$3;

    invoke-direct {v0}, Lnet/sourceforge/zmanim/util/Zman$3;-><init>()V

    sput-object v0, Lnet/sourceforge/zmanim/util/Zman;->DURATION_ORDER:Ljava/util/Comparator;

    .line 85
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;)V
    .locals 1
    .param p1, "duration"    # J
    .param p3, "label"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p3, p0, Lnet/sourceforge/zmanim/util/Zman;->zmanLabel:Ljava/lang/String;

    .line 41
    iput-wide p1, p0, Lnet/sourceforge/zmanim/util/Zman;->duration:J

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/util/Date;Ljava/lang/String;)V
    .locals 0
    .param p1, "date"    # Ljava/util/Date;
    .param p2, "label"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p2, p0, Lnet/sourceforge/zmanim/util/Zman;->zmanLabel:Ljava/lang/String;

    .line 36
    iput-object p1, p0, Lnet/sourceforge/zmanim/util/Zman;->zman:Ljava/util/Date;

    .line 37
    return-void
.end method


# virtual methods
.method public getDuration()J
    .locals 2

    .prologue
    .line 53
    iget-wide v0, p0, Lnet/sourceforge/zmanim/util/Zman;->duration:J

    return-wide v0
.end method

.method public getZman()Ljava/util/Date;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lnet/sourceforge/zmanim/util/Zman;->zman:Ljava/util/Date;

    return-object v0
.end method

.method public getZmanDescription()Ljava/util/Date;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lnet/sourceforge/zmanim/util/Zman;->zmanDescription:Ljava/util/Date;

    return-object v0
.end method

.method public getZmanLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lnet/sourceforge/zmanim/util/Zman;->zmanLabel:Ljava/lang/String;

    return-object v0
.end method

.method public setDuration(J)V
    .locals 1
    .param p1, "duration"    # J

    .prologue
    .line 57
    iput-wide p1, p0, Lnet/sourceforge/zmanim/util/Zman;->duration:J

    .line 58
    return-void
.end method

.method public setZman(Ljava/util/Date;)V
    .locals 0
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 49
    iput-object p1, p0, Lnet/sourceforge/zmanim/util/Zman;->zman:Ljava/util/Date;

    .line 50
    return-void
.end method

.method public setZmanDescription(Ljava/util/Date;)V
    .locals 0
    .param p1, "zmanDescription"    # Ljava/util/Date;

    .prologue
    .line 99
    iput-object p1, p0, Lnet/sourceforge/zmanim/util/Zman;->zmanDescription:Ljava/util/Date;

    .line 100
    return-void
.end method

.method public setZmanLabel(Ljava/lang/String;)V
    .locals 0
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lnet/sourceforge/zmanim/util/Zman;->zmanLabel:Ljava/lang/String;

    .line 66
    return-void
.end method
