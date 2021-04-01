.class Lcom/sec/jewishcalendar/JewishCalendarView$7;
.super Ljava/lang/Object;
.source "JewishCalendarView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/jewishcalendar/JewishCalendarView;->initButtons()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/jewishcalendar/JewishCalendarView;

.field vf:Landroid/widget/ViewFlipper;


# direct methods
.method constructor <init>(Lcom/sec/jewishcalendar/JewishCalendarView;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/jewishcalendar/JewishCalendarView$7;->this$0:Lcom/sec/jewishcalendar/JewishCalendarView;

    .line 999
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1000
    const v0, 0x7f0e007a

    invoke-virtual {p1, v0}, Lcom/sec/jewishcalendar/JewishCalendarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewFlipper;

    iput-object v0, p0, Lcom/sec/jewishcalendar/JewishCalendarView$7;->vf:Landroid/widget/ViewFlipper;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v2, 0x7f040002

    .line 1002
    invoke-static {}, Lcom/sec/jewishcalendar/JewishCalendarView;->access$0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1003
    iget-object v0, p0, Lcom/sec/jewishcalendar/JewishCalendarView$7;->this$0:Lcom/sec/jewishcalendar/JewishCalendarView;

    invoke-static {v0}, Lcom/sec/jewishcalendar/JewishCalendarView;->access$1(Lcom/sec/jewishcalendar/JewishCalendarView;)Lcom/sec/jewishcalendar/calculation/HdateClass;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/jewishcalendar/calculation/JewishCal;->MoveToPrevMonth(Lcom/sec/jewishcalendar/calculation/HdateClass;)I

    .line 1004
    iget-object v0, p0, Lcom/sec/jewishcalendar/JewishCalendarView$7;->vf:Landroid/widget/ViewFlipper;

    iget-object v1, p0, Lcom/sec/jewishcalendar/JewishCalendarView$7;->this$0:Lcom/sec/jewishcalendar/JewishCalendarView;

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 1005
    iget-object v0, p0, Lcom/sec/jewishcalendar/JewishCalendarView$7;->vf:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->showPrevious()V

    .line 1006
    iget-object v0, p0, Lcom/sec/jewishcalendar/JewishCalendarView$7;->this$0:Lcom/sec/jewishcalendar/JewishCalendarView;

    invoke-virtual {v0}, Lcom/sec/jewishcalendar/JewishCalendarView;->setCursor()V

    .line 1007
    iget-object v0, p0, Lcom/sec/jewishcalendar/JewishCalendarView$7;->this$0:Lcom/sec/jewishcalendar/JewishCalendarView;

    invoke-virtual {v0}, Lcom/sec/jewishcalendar/JewishCalendarView;->draw()V

    .line 1018
    :goto_0
    return-void

    .line 1011
    :cond_0
    iget-object v0, p0, Lcom/sec/jewishcalendar/JewishCalendarView$7;->this$0:Lcom/sec/jewishcalendar/JewishCalendarView;

    invoke-virtual {v0}, Lcom/sec/jewishcalendar/JewishCalendarView;->GMoveToNextMonth()V

    .line 1012
    iget-object v0, p0, Lcom/sec/jewishcalendar/JewishCalendarView$7;->vf:Landroid/widget/ViewFlipper;

    iget-object v1, p0, Lcom/sec/jewishcalendar/JewishCalendarView$7;->this$0:Lcom/sec/jewishcalendar/JewishCalendarView;

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 1013
    iget-object v0, p0, Lcom/sec/jewishcalendar/JewishCalendarView$7;->vf:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->showPrevious()V

    .line 1014
    iget-object v0, p0, Lcom/sec/jewishcalendar/JewishCalendarView$7;->this$0:Lcom/sec/jewishcalendar/JewishCalendarView;

    invoke-virtual {v0}, Lcom/sec/jewishcalendar/JewishCalendarView;->setCursor()V

    .line 1015
    iget-object v0, p0, Lcom/sec/jewishcalendar/JewishCalendarView$7;->this$0:Lcom/sec/jewishcalendar/JewishCalendarView;

    invoke-static {v0}, Lcom/sec/jewishcalendar/JewishCalendarView;->access$1(Lcom/sec/jewishcalendar/JewishCalendarView;)Lcom/sec/jewishcalendar/calculation/HdateClass;

    move-result-object v0

    sget-object v1, Lcom/sec/jewishcalendar/JewishCalendarView;->mViewCalendar:Landroid/text/format/Time;

    iget v1, v1, Landroid/text/format/Time;->monthDay:I

    sget-object v2, Lcom/sec/jewishcalendar/JewishCalendarView;->mViewCalendar:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->month:I

    add-int/lit8 v2, v2, 0x1

    sget-object v3, Lcom/sec/jewishcalendar/JewishCalendarView;->mViewCalendar:Landroid/text/format/Time;

    iget v3, v3, Landroid/text/format/Time;->year:I

    invoke-static {v0, v1, v2, v3}, Lcom/sec/jewishcalendar/calculation/JewishCal;->SetGdate(Lcom/sec/jewishcalendar/calculation/HdateClass;III)I

    .line 1016
    iget-object v0, p0, Lcom/sec/jewishcalendar/JewishCalendarView$7;->this$0:Lcom/sec/jewishcalendar/JewishCalendarView;

    invoke-virtual {v0}, Lcom/sec/jewishcalendar/JewishCalendarView;->drawG()V

    goto :goto_0
.end method
