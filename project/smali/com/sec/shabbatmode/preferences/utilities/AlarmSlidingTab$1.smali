.class Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$1;
.super Ljava/lang/Object;
.source "AlarmSlidingTab.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;


# direct methods
.method constructor <init>(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$1;->this$0:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;

    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 251
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$1;->this$0:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;

    invoke-static {v0}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->access$0(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 265
    :cond_0
    :goto_0
    return v1

    .line 255
    :pswitch_0
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$1;->this$0:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;

    invoke-static {v0}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->access$1(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 256
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$1;->this$0:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;

    invoke-static {v0}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->access$2(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;)Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->remake(Z)V

    .line 257
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$1;->this$0:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;

    invoke-static {v0}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->access$3(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;)Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->remake(Z)V

    goto :goto_0

    .line 259
    :cond_1
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$1;->this$0:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;

    invoke-static {v0}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->access$2(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;)Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->remake(Z)V

    .line 260
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$1;->this$0:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;

    invoke-static {v0}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->access$3(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;)Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->remake(Z)V

    goto :goto_0

    .line 252
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
