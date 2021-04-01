.class Lcom/sec/jewishcalendar/JewishCalendarView$9;
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
    iput-object p1, p0, Lcom/sec/jewishcalendar/JewishCalendarView$9;->this$0:Lcom/sec/jewishcalendar/JewishCalendarView;

    .line 1047
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1048
    const v0, 0x7f0e007a

    invoke-virtual {p1, v0}, Lcom/sec/jewishcalendar/JewishCalendarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewFlipper;

    iput-object v0, p0, Lcom/sec/jewishcalendar/JewishCalendarView$9;->vf:Landroid/widget/ViewFlipper;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x4

    .line 1050
    sget-object v1, Lcom/sec/jewishcalendar/JewishCalendarView;->mViewCalendar:Landroid/text/format/Time;

    iget v0, v1, Landroid/text/format/Time;->monthDay:I

    .line 1051
    .local v0, "selectedDayInMonth":I
    invoke-static {}, Lcom/sec/jewishcalendar/JewishCalendarView;->access$0()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1053
    iget-object v1, p0, Lcom/sec/jewishcalendar/JewishCalendarView$9;->this$0:Lcom/sec/jewishcalendar/JewishCalendarView;

    invoke-static {v1}, Lcom/sec/jewishcalendar/JewishCalendarView;->access$1(Lcom/sec/jewishcalendar/JewishCalendarView;)Lcom/sec/jewishcalendar/calculation/HdateClass;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/jewishcalendar/calculation/JewishCal;->MoveToPrevYear(Lcom/sec/jewishcalendar/calculation/HdateClass;)I

    .line 1054
    iget-object v1, p0, Lcom/sec/jewishcalendar/JewishCalendarView$9;->vf:Landroid/widget/ViewFlipper;

    iget-object v2, p0, Lcom/sec/jewishcalendar/JewishCalendarView$9;->this$0:Lcom/sec/jewishcalendar/JewishCalendarView;

    const v3, 0x7f040006

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 1055
    iget-object v1, p0, Lcom/sec/jewishcalendar/JewishCalendarView$9;->vf:Landroid/widget/ViewFlipper;

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->showPrevious()V

    .line 1056
    iget-object v1, p0, Lcom/sec/jewishcalendar/JewishCalendarView$9;->this$0:Lcom/sec/jewishcalendar/JewishCalendarView;

    invoke-virtual {v1}, Lcom/sec/jewishcalendar/JewishCalendarView;->setCursor()V

    .line 1057
    iget-object v1, p0, Lcom/sec/jewishcalendar/JewishCalendarView$9;->this$0:Lcom/sec/jewishcalendar/JewishCalendarView;

    invoke-virtual {v1}, Lcom/sec/jewishcalendar/JewishCalendarView;->draw()V

    .line 1071
    :goto_0
    return-void

    .line 1061
    :cond_0
    sget-object v1, Lcom/sec/jewishcalendar/JewishCalendarView;->mViewCalendar:Landroid/text/format/Time;

    iget v2, v1, Landroid/text/format/Time;->year:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Landroid/text/format/Time;->year:I

    .line 1062
    sget-object v1, Lcom/sec/jewishcalendar/JewishCalendarView;->mViewCalendar:Landroid/text/format/Time;

    invoke-virtual {v1, v3}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v1

    if-le v0, v1, :cond_1

    .line 1063
    sget-object v1, Lcom/sec/jewishcalendar/JewishCalendarView;->mViewCalendar:Landroid/text/format/Time;

    sget-object v2, Lcom/sec/jewishcalendar/JewishCalendarView;->mViewCalendar:Landroid/text/format/Time;

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v2

    iput v2, v1, Landroid/text/format/Time;->monthDay:I

    .line 1065
    :cond_1
    iget-object v1, p0, Lcom/sec/jewishcalendar/JewishCalendarView$9;->vf:Landroid/widget/ViewFlipper;

    iget-object v2, p0, Lcom/sec/jewishcalendar/JewishCalendarView$9;->this$0:Lcom/sec/jewishcalendar/JewishCalendarView;

    const/high16 v3, 0x7f040000

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 1066
    iget-object v1, p0, Lcom/sec/jewishcalendar/JewishCalendarView$9;->vf:Landroid/widget/ViewFlipper;

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->showPrevious()V

    .line 1067
    iget-object v1, p0, Lcom/sec/jewishcalendar/JewishCalendarView$9;->this$0:Lcom/sec/jewishcalendar/JewishCalendarView;

    invoke-virtual {v1}, Lcom/sec/jewishcalendar/JewishCalendarView;->setCursor()V

    .line 1068
    iget-object v1, p0, Lcom/sec/jewishcalendar/JewishCalendarView$9;->this$0:Lcom/sec/jewishcalendar/JewishCalendarView;

    invoke-static {v1}, Lcom/sec/jewishcalendar/JewishCalendarView;->access$1(Lcom/sec/jewishcalendar/JewishCalendarView;)Lcom/sec/jewishcalendar/calculation/HdateClass;

    move-result-object v1

    sget-object v2, Lcom/sec/jewishcalendar/JewishCalendarView;->mViewCalendar:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->monthDay:I

    sget-object v3, Lcom/sec/jewishcalendar/JewishCalendarView;->mViewCalendar:Landroid/text/format/Time;

    iget v3, v3, Landroid/text/format/Time;->month:I

    add-int/lit8 v3, v3, 0x1

    sget-object v4, Lcom/sec/jewishcalendar/JewishCalendarView;->mViewCalendar:Landroid/text/format/Time;

    iget v4, v4, Landroid/text/format/Time;->year:I

    invoke-static {v1, v2, v3, v4}, Lcom/sec/jewishcalendar/calculation/JewishCal;->SetGdate(Lcom/sec/jewishcalendar/calculation/HdateClass;III)I

    .line 1069
    iget-object v1, p0, Lcom/sec/jewishcalendar/JewishCalendarView$9;->this$0:Lcom/sec/jewishcalendar/JewishCalendarView;

    invoke-virtual {v1}, Lcom/sec/jewishcalendar/JewishCalendarView;->drawG()V

    goto :goto_0
.end method
