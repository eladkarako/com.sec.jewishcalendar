.class public final Lcom/sec/jewishcalendar/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/jewishcalendar/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final AlarmSlidingTab:[I

.field public static final AlarmSlidingTab_isBriefing_800dp:I = 0x0

.field public static final CircleView:[I

.field public static final CircleView_circleGap:I = 0x4

.field public static final CircleView_circleRadius:I = 0x3

.field public static final CircleView_fillColor:I = 0x2

.field public static final CircleView_strokeColor:I = 0x1

.field public static final CircleView_strokeWidth:I = 0x0

.field public static final JewishDatePicker:[I

.field public static final JewishDatePicker_endYear:I = 0x1

.field public static final JewishDatePicker_startYear:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1399
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 1400
    const v2, 0x7f010002

    aput v2, v0, v1

    .line 1399
    sput-object v0, Lcom/sec/jewishcalendar/R$styleable;->AlarmSlidingTab:[I

    .line 1434
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sec/jewishcalendar/R$styleable;->CircleView:[I

    .line 1522
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/sec/jewishcalendar/R$styleable;->JewishDatePicker:[I

    .line 1556
    return-void

    .line 1434
    :array_0
    .array-data 4
        0x7f010003
        0x7f010004
        0x7f010005
        0x7f010006
        0x7f010007
    .end array-data

    .line 1522
    :array_1
    .array-data 4
        0x7f010000
        0x7f010001
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1388
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
