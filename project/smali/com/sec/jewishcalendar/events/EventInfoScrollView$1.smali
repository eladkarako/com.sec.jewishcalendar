.class Lcom/sec/jewishcalendar/events/EventInfoScrollView$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "EventInfoScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/jewishcalendar/events/EventInfoScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/jewishcalendar/events/EventInfoScrollView;


# direct methods
.method constructor <init>(Lcom/sec/jewishcalendar/events/EventInfoScrollView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/jewishcalendar/events/EventInfoScrollView$1;->this$0:Lcom/sec/jewishcalendar/events/EventInfoScrollView;

    .line 21
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 6
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 26
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 27
    .local v0, "distanceX":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 29
    .local v1, "distanceY":I
    invoke-static {}, Lcom/sec/jewishcalendar/events/EventInfoScrollView;->access$0()I

    move-result v4

    if-lt v0, v4, :cond_0

    if-ge v0, v1, :cond_2

    :cond_0
    move v3, v2

    .line 38
    :cond_1
    :goto_0
    return v3

    .line 32
    :cond_2
    const/4 v4, 0x0

    cmpg-float v4, p3, v4

    if-gez v4, :cond_3

    move v2, v3

    .line 34
    .local v2, "foward":Z
    :cond_3
    iget-object v4, p0, Lcom/sec/jewishcalendar/events/EventInfoScrollView$1;->this$0:Lcom/sec/jewishcalendar/events/EventInfoScrollView;

    invoke-static {v4}, Lcom/sec/jewishcalendar/events/EventInfoScrollView;->access$1(Lcom/sec/jewishcalendar/events/EventInfoScrollView;)Lcom/sec/jewishcalendar/events/EventInfoScrollView$OnFlingListener;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 35
    iget-object v4, p0, Lcom/sec/jewishcalendar/events/EventInfoScrollView$1;->this$0:Lcom/sec/jewishcalendar/events/EventInfoScrollView;

    invoke-static {v4}, Lcom/sec/jewishcalendar/events/EventInfoScrollView;->access$1(Lcom/sec/jewishcalendar/events/EventInfoScrollView;)Lcom/sec/jewishcalendar/events/EventInfoScrollView$OnFlingListener;

    move-result-object v4

    invoke-interface {v4, v2}, Lcom/sec/jewishcalendar/events/EventInfoScrollView$OnFlingListener;->onFling(Z)V

    goto :goto_0
.end method
