.class public Lcom/sec/jewishcalendar/events/EventInfoScrollView;
.super Landroid/widget/ScrollView;
.source "EventInfoScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/jewishcalendar/events/EventInfoScrollView$OnFlingListener;
    }
.end annotation


# static fields
.field private static HORIZONTAL_FLING_THRESHOLD:I


# instance fields
.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mOnFlingListener:Lcom/sec/jewishcalendar/events/EventInfoScrollView$OnFlingListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/16 v0, 0x32

    sput v0, Lcom/sec/jewishcalendar/events/EventInfoScrollView;->HORIZONTAL_FLING_THRESHOLD:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/jewishcalendar/events/EventInfoScrollView;->mOnFlingListener:Lcom/sec/jewishcalendar/events/EventInfoScrollView$OnFlingListener;

    .line 21
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/sec/jewishcalendar/events/EventInfoScrollView$1;

    invoke-direct {v1, p0}, Lcom/sec/jewishcalendar/events/EventInfoScrollView$1;-><init>(Lcom/sec/jewishcalendar/events/EventInfoScrollView;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/sec/jewishcalendar/events/EventInfoScrollView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 43
    return-void
.end method

.method static synthetic access$0()I
    .locals 1

    .prologue
    .line 15
    sget v0, Lcom/sec/jewishcalendar/events/EventInfoScrollView;->HORIZONTAL_FLING_THRESHOLD:I

    return v0
.end method

.method static synthetic access$1(Lcom/sec/jewishcalendar/events/EventInfoScrollView;)Lcom/sec/jewishcalendar/events/EventInfoScrollView$OnFlingListener;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/EventInfoScrollView;->mOnFlingListener:Lcom/sec/jewishcalendar/events/EventInfoScrollView$OnFlingListener;

    return-object v0
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/EventInfoScrollView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 49
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/EventInfoScrollView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 54
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setOnFlingListener(Lcom/sec/jewishcalendar/events/EventInfoScrollView$OnFlingListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sec/jewishcalendar/events/EventInfoScrollView$OnFlingListener;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/sec/jewishcalendar/events/EventInfoScrollView;->mOnFlingListener:Lcom/sec/jewishcalendar/events/EventInfoScrollView$OnFlingListener;

    .line 59
    return-void
.end method
