.class Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$5;
.super Ljava/lang/Object;
.source "AlarmSlidingTab.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->processMoveEvent(Landroid/view/MotionEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;


# direct methods
.method constructor <init>(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$5;->this$1:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;

    .line 1763
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 1766
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$5;->this$1:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;

    invoke-static {v0}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->access$17(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;)Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->access$2(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;)Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->setState(I)V

    .line 1767
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$5;->this$1:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;

    invoke-static {v0}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->access$17(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;)Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->access$3(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;)Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->setState(I)V

    .line 1768
    return-void
.end method
