.class Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$4;
.super Landroid/widget/FrameLayout;
.source "AlarmSlidingTab.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->reInit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;


# direct methods
.method constructor <init>(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;Landroid/content/Context;)V
    .locals 0
    .param p2, "$anonymous0"    # Landroid/content/Context;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$4;->this$1:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;

    .line 644
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onWindowVisibilityChanged(I)V
    .locals 2
    .param p1, "visibility"    # I

    .prologue
    .line 646
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowVisibilityChanged(I)V

    .line 648
    packed-switch p1, :pswitch_data_0

    .line 653
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$4;->this$1:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;

    invoke-static {v0}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->access$12(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;)V

    .line 656
    :goto_0
    return-void

    .line 650
    :pswitch_0
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$4;->this$1:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->access$11(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;Z)V

    goto :goto_0

    .line 648
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
