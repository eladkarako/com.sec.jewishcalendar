.class public Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;
.super Landroid/widget/RelativeLayout;
.source "AlarmSlidingTab.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ClickableViewAccessibility",
        "RtlHardcoded",
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;,
        Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$OnTriggerListener;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final VIBRATE_LONG:J

.field private final VIBRATE_SHORT:J

.field private bMakeAlarmArrowView:Z

.field handler:Landroid/os/Handler;

.field private layout_width:I

.field private mContext:Landroid/content/Context;

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mGrabbedState:I

.field private mIsEnableMultiWindow:Z

.field private mIsMultiWindow:Z

.field private mIsSnooze:Z

.field private mIsTracking:Z

.field private mLeftHandle:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;

.field private mOnTriggerListener:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$OnTriggerListener;

.field private mRightHandle:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 105
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 72
    const-string v0, "AlarmSlidingTab"

    iput-object v0, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->TAG:Ljava/lang/String;

    .line 74
    const-wide/16 v0, 0x1e

    iput-wide v0, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->VIBRATE_SHORT:J

    .line 76
    const-wide/16 v0, 0x28

    iput-wide v0, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->VIBRATE_LONG:J

    .line 82
    iput-object v3, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->mLeftHandle:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;

    .line 84
    iput-object v3, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->mRightHandle:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;

    .line 86
    iput-object v3, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->mContext:Landroid/content/Context;

    .line 90
    iput v2, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->mGrabbedState:I

    .line 94
    iput-object v3, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 96
    iput-boolean v2, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->bMakeAlarmArrowView:Z

    .line 98
    iput-boolean v2, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->mIsEnableMultiWindow:Z

    .line 100
    iput v2, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->layout_width:I

    .line 102
    iput-boolean v2, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->mIsMultiWindow:Z

    .line 248
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$1;

    invoke-direct {v1, p0}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$1;-><init>(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->handler:Landroid/os/Handler;

    .line 106
    iput-object p1, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->mContext:Landroid/content/Context;

    .line 107
    invoke-direct {p0}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->init()V

    .line 108
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 111
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 72
    const-string v1, "AlarmSlidingTab"

    iput-object v1, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->TAG:Ljava/lang/String;

    .line 74
    const-wide/16 v2, 0x1e

    iput-wide v2, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->VIBRATE_SHORT:J

    .line 76
    const-wide/16 v2, 0x28

    iput-wide v2, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->VIBRATE_LONG:J

    .line 82
    iput-object v5, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->mLeftHandle:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;

    .line 84
    iput-object v5, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->mRightHandle:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;

    .line 86
    iput-object v5, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->mContext:Landroid/content/Context;

    .line 90
    iput v4, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->mGrabbedState:I

    .line 94
    iput-object v5, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 96
    iput-boolean v4, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->bMakeAlarmArrowView:Z

    .line 98
    iput-boolean v4, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->mIsEnableMultiWindow:Z

    .line 100
    iput v4, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->layout_width:I

    .line 102
    iput-boolean v4, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->mIsMultiWindow:Z

    .line 248
    new-instance v1, Landroid/os/Handler;

    new-instance v2, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$1;

    invoke-direct {v2, p0}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$1;-><init>(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;)V

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->handler:Landroid/os/Handler;

    .line 112
    sget-object v1, Lcom/sec/jewishcalendar/R$styleable;->AlarmSlidingTab:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 113
    .local v0, "a":Landroid/content/res/TypedArray;
    iput-object p1, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->mContext:Landroid/content/Context;

    .line 114
    invoke-direct {p0}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->init()V

    .line 115
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 116
    return-void
.end method

.method static synthetic access$0(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;)Z
    .locals 1

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->mIsEnableMultiWindow:Z

    return v0
.end method

.method static synthetic access$1(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;)Z
    .locals 1

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->mIsMultiWindow:Z

    return v0
.end method

.method static synthetic access$10(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;I)V
    .locals 0

    .prologue
    .line 212
    invoke-direct {p0, p1}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->dispatchTriggerEvent(I)V

    return-void
.end method

.method static synthetic access$11(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;Z)V
    .locals 0

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->mIsTracking:Z

    return-void
.end method

.method static synthetic access$12(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;I)V
    .locals 0

    .prologue
    .line 225
    invoke-direct {p0, p1}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->setGrabbedState(I)V

    return-void
.end method

.method static synthetic access$2(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;)Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->mLeftHandle:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;

    return-object v0
.end method

.method static synthetic access$3(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;)Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->mRightHandle:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;

    return-object v0
.end method

.method static synthetic access$4(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;)Z
    .locals 1

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->bMakeAlarmArrowView:Z

    return v0
.end method

.method static synthetic access$5(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;)Landroid/util/DisplayMetrics;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    return-object v0
.end method

.method static synthetic access$6(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$7(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;)I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->layout_width:I

    return v0
.end method

.method static synthetic access$8(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;)Z
    .locals 1

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->mIsSnooze:Z

    return v0
.end method

.method static synthetic access$9(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;)Z
    .locals 1

    .prologue
    .line 407
    invoke-direct {p0}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->shouldAcceptByTapping()Z

    move-result v0

    return v0
.end method

.method private dispatchTriggerEvent(I)V
    .locals 2
    .param p1, "whichHandle"    # I

    .prologue
    .line 213
    const-wide/16 v0, 0x28

    invoke-direct {p0, v0, v1}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->vibrate(J)V

    .line 215
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->mOnTriggerListener:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$OnTriggerListener;

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->mOnTriggerListener:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$OnTriggerListener;

    invoke-interface {v0, p0, p1}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$OnTriggerListener;->onTrigger(Landroid/view/View;I)V

    .line 218
    :cond_0
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    .line 124
    const-string v0, "AlarmSlidingTab"

    const-string v1, "init()"

    invoke-static {v0, v1}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 126
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 127
    new-instance v0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;

    iget-object v1, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, p0, v2}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;-><init>(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;Landroid/content/Context;Landroid/view/ViewGroup;I)V

    iput-object v0, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->mLeftHandle:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;

    .line 128
    new-instance v0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;

    iget-object v1, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->mContext:Landroid/content/Context;

    const/4 v2, 0x2

    invoke-direct {v0, p0, v1, p0, v2}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;-><init>(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;Landroid/content/Context;Landroid/view/ViewGroup;I)V

    iput-object v0, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->mRightHandle:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;

    .line 129
    return-void
.end method

.method private setGrabbedState(I)V
    .locals 2
    .param p1, "newState"    # I

    .prologue
    .line 226
    iget v0, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->mGrabbedState:I

    if-eq p1, v0, :cond_0

    .line 227
    iput p1, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->mGrabbedState:I

    .line 229
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->mOnTriggerListener:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$OnTriggerListener;

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->mOnTriggerListener:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$OnTriggerListener;

    iget v1, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->mGrabbedState:I

    invoke-interface {v0, p0, v1}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$OnTriggerListener;->onGrabbedStateChange(Landroid/view/View;I)V

    .line 233
    :cond_0
    return-void
.end method

.method private shouldAcceptByTapping()Z
    .locals 3

    .prologue
    .line 408
    const-string v1, "AlarmSlidingTab"

    const-string v2, "shouldAcceptByTapping()"

    invoke-static {v1, v2}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    const/4 v0, 0x0

    .line 412
    .local v0, "result":Z
    return v0
.end method

.method private declared-synchronized vibrate(J)V
    .locals 3
    .param p1, "duration"    # J

    .prologue
    .line 454
    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/sec/shabbatmode/Globals;->mInLightMode:Z

    if-nez v0, :cond_1

    .line 455
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->mVibrator:Landroid/os/Vibrator;

    if-nez v0, :cond_0

    .line 456
    invoke-virtual {p0}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 457
    const-string v1, "vibrator"

    .line 456
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->mVibrator:Landroid/os/Vibrator;

    .line 460
    :cond_0
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0, p1, p2}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 462
    :cond_1
    monitor-exit p0

    return-void

    .line 454
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public activeHandle()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2048
    const-string v0, "AlarmSlidingTab"

    const-string v1, " activeHandle() "

    invoke-static {v0, v1}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 2049
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->mLeftHandle:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;

    invoke-virtual {v0, v2}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->setState(I)V

    .line 2050
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->mRightHandle:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;

    invoke-virtual {v0, v2}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->setState(I)V

    .line 2051
    return-void
.end method

.method public clearDrawable()V
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->mLeftHandle:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->mLeftHandle:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;

    invoke-static {v0}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->access$13(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;)V

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->mRightHandle:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;

    if-eqz v0, :cond_1

    .line 141
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->mRightHandle:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;

    invoke-static {v0}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->access$13(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;)V

    .line 143
    :cond_1
    return-void
.end method

.method public inactiveHandle()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 2040
    const-string v0, "AlarmSlidingTab"

    const-string v1, " inactiveHandle() "

    invoke-static {v0, v1}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 2041
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->mLeftHandle:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;

    invoke-virtual {v0, v2}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->setState(I)V

    .line 2042
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->mRightHandle:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;

    invoke-virtual {v0, v2}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->setState(I)V

    .line 2043
    return-void
.end method

.method public isMultiWindowShow()Z
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x0

    return v0
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 272
    invoke-virtual {p0}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 273
    const-string v3, "accessibility"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 272
    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 275
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 276
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 278
    .local v1, "action":I
    packed-switch v1, :pswitch_data_0

    .line 292
    :goto_0
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 293
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 296
    .end local v1    # "action":I
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    return v2

    .line 283
    .restart local v1    # "action":I
    :pswitch_1
    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 286
    :pswitch_2
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 278
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onInterceptHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 301
    invoke-virtual {p0}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 302
    const-string v3, "accessibility"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 301
    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 304
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 305
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 311
    .local v1, "action":I
    invoke-virtual {p0, p1}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 312
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 315
    .end local v1    # "action":I
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onInterceptHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    return v2
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const-wide/16 v10, 0x1e

    const/4 v9, 0x2

    const/4 v6, 0x1

    .line 327
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 328
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 329
    .local v4, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 330
    .local v5, "y":F
    const/4 v1, 0x0

    .line 331
    .local v1, "leftHit":Z
    const/4 v3, 0x0

    .line 333
    .local v3, "rightHit":Z
    iget-boolean v7, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->mIsEnableMultiWindow:Z

    if-eqz v7, :cond_2

    .line 334
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 335
    .local v2, "mRect":Landroid/graphics/Rect;
    invoke-virtual {p0, v2}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 336
    iget-object v7, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->mLeftHandle:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;

    iget v8, v2, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    add-float/2addr v8, v5

    invoke-virtual {v7, v4, v8}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->isHandleSelected(FF)Z

    move-result v1

    .line 337
    iget-object v7, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->mRightHandle:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;

    iget v8, v2, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    add-float/2addr v8, v5

    invoke-virtual {v7, v4, v8}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->isHandleSelected(FF)Z

    move-result v3

    .line 343
    .end local v2    # "mRect":Landroid/graphics/Rect;
    :goto_0
    iget-boolean v7, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->mIsTracking:Z

    if-nez v7, :cond_3

    if-nez v1, :cond_3

    if-eqz v3, :cond_0

    iget-boolean v7, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->mIsSnooze:Z

    if-nez v7, :cond_3

    .line 344
    :cond_0
    const/4 v6, 0x0

    .line 398
    :cond_1
    :goto_1
    return v6

    .line 339
    :cond_2
    iget-object v7, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->mLeftHandle:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;

    invoke-virtual {v7, v4, v5}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->isHandleSelected(FF)Z

    move-result v1

    .line 340
    iget-object v7, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->mRightHandle:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;

    invoke-virtual {v7, v4, v5}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->isHandleSelected(FF)Z

    move-result v3

    goto :goto_0

    .line 347
    :cond_3
    sparse-switch v0, :sswitch_data_0

    goto :goto_1

    .line 349
    :sswitch_0
    invoke-direct {p0, v10, v11}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->vibrate(J)V

    .line 350
    iput-boolean v6, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->mIsTracking:Z

    .line 352
    if-eqz v1, :cond_4

    .line 353
    iget-object v7, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->mLeftHandle:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;

    invoke-virtual {v7, v6}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->setState(I)V

    .line 354
    iget-object v7, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->mRightHandle:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;

    invoke-virtual {v7, v9}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->setState(I)V

    .line 355
    invoke-direct {p0, v6}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->setGrabbedState(I)V

    .line 359
    invoke-direct {p0}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->shouldAcceptByTapping()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 360
    invoke-direct {p0, v6}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->dispatchTriggerEvent(I)V

    goto :goto_1

    .line 364
    :cond_4
    if-eqz v3, :cond_1

    .line 365
    iget-object v7, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->mRightHandle:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;

    invoke-virtual {v7, v6}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->setState(I)V

    .line 366
    iget-object v7, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->mLeftHandle:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;

    invoke-virtual {v7, v9}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->setState(I)V

    .line 367
    invoke-direct {p0, v9}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->setGrabbedState(I)V

    .line 371
    invoke-direct {p0}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->shouldAcceptByTapping()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 372
    invoke-direct {p0, v9}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->dispatchTriggerEvent(I)V

    goto :goto_1

    .line 380
    :sswitch_1
    invoke-direct {p0, v10, v11}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->vibrate(J)V

    .line 381
    iput-boolean v6, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->mIsTracking:Z

    .line 383
    if-eqz v1, :cond_5

    .line 384
    iget-object v7, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->mLeftHandle:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;

    invoke-virtual {v7, v6}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->setState(I)V

    .line 385
    iget-object v7, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->mRightHandle:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;

    invoke-virtual {v7, v9}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->setState(I)V

    .line 386
    invoke-direct {p0, v6}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->setGrabbedState(I)V

    goto :goto_1

    .line 387
    :cond_5
    if-eqz v3, :cond_1

    .line 388
    iget-object v7, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->mRightHandle:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;

    invoke-virtual {v7, v6}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->setState(I)V

    .line 389
    iget-object v7, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->mLeftHandle:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;

    invoke-virtual {v7, v9}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->setState(I)V

    .line 390
    invoke-direct {p0, v9}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->setGrabbedState(I)V

    goto :goto_1

    .line 347
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x9 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 237
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 239
    invoke-virtual {p0}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->isMultiWindowShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->mLeftHandle:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;

    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->makeMWLayout(IIII)V

    .line 241
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->mRightHandle:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;

    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->makeMWLayout(IIII)V

    .line 246
    :goto_0
    return-void

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->mLeftHandle:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;

    invoke-virtual {v0}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->makeLayout()V

    .line 244
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->mRightHandle:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;

    invoke-virtual {v0}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->makeLayout()V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 418
    iget-boolean v3, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->mIsTracking:Z

    if-eqz v3, :cond_0

    .line 419
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 421
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 446
    .end local v0    # "action":I
    :cond_0
    :pswitch_0
    iget-boolean v3, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->mIsTracking:Z

    if-nez v3, :cond_1

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-nez v3, :cond_1

    move v1, v2

    :cond_1
    :goto_0
    return v1

    .line 424
    .restart local v0    # "action":I
    :pswitch_1
    iget-object v2, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->mLeftHandle:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;

    invoke-virtual {v2}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->getState()I

    move-result v2

    if-ne v2, v1, :cond_2

    .line 425
    iget-object v2, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->mLeftHandle:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;

    invoke-virtual {v2, p1}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->processMoveEvent(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 426
    :cond_2
    iget-object v2, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->mRightHandle:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;

    invoke-virtual {v2}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->getState()I

    move-result v2

    if-ne v2, v1, :cond_1

    .line 427
    iget-object v2, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->mRightHandle:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;

    invoke-virtual {v2, p1}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->processMoveEvent(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 434
    :pswitch_2
    iput-boolean v2, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->mIsTracking:Z

    .line 435
    iget-object v3, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->mLeftHandle:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;

    invoke-virtual {v3, v2}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->setState(I)V

    .line 436
    iget-object v3, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->mLeftHandle:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;

    invoke-static {v3}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->access$14(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;)V

    .line 437
    iget-object v3, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->mRightHandle:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;

    invoke-virtual {v3, v2}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->setState(I)V

    .line 438
    iget-object v3, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->mRightHandle:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;

    invoke-static {v3}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->access$14(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;)V

    .line 439
    invoke-direct {p0, v2}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->setGrabbedState(I)V

    goto :goto_0

    .line 421
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public resetContext()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 193
    const-string v0, "AlarmSlidingTab"

    const-string v1, "resetContext()"

    invoke-static {v0, v1}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->mLeftHandle:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->mLeftHandle:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;

    invoke-virtual {v0, v2}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->setState(I)V

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->mRightHandle:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;

    if-eqz v0, :cond_1

    .line 200
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->mRightHandle:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;

    invoke-virtual {v0, v2}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->setState(I)V

    .line 203
    :cond_1
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_2

    .line 204
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->mContext:Landroid/content/Context;

    .line 206
    :cond_2
    return-void
.end method

.method public setOnTriggerListener(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$OnTriggerListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$OnTriggerListener;

    .prologue
    .line 189
    iput-object p1, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->mOnTriggerListener:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$OnTriggerListener;

    .line 190
    return-void
.end method

.method public setSnooze(Z)V
    .locals 2
    .param p1, "b"    # Z

    .prologue
    .line 2024
    iput-boolean p1, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->mIsSnooze:Z

    .line 2025
    iget-boolean v0, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->mIsSnooze:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->bMakeAlarmArrowView:Z

    .line 2027
    iget-boolean v0, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->bMakeAlarmArrowView:Z

    if-eqz v0, :cond_0

    .line 2028
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->mLeftHandle:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;

    invoke-static {v0}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->access$15(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;)V

    .line 2031
    :cond_0
    iget-boolean v0, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->mIsSnooze:Z

    if-nez v0, :cond_1

    .line 2032
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->mRightHandle:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;

    invoke-static {v0}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->access$16(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2036
    :cond_1
    return-void

    .line 2025
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method
