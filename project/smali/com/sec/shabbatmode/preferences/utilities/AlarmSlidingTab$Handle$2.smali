.class Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$2;
.super Landroid/os/Handler;
.source "AlarmSlidingTab.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;
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
    iput-object p1, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$2;->this$1:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;

    .line 1134
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v7, 0x64

    const/4 v6, 0x4

    .line 1136
    iget-object v3, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$2;->this$1:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;

    invoke-static {v3}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->access$17(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;)Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->access$4(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$2;->this$1:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;

    invoke-static {v3}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->access$7(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;)[Landroid/widget/ImageView;

    move-result-object v3

    if-nez v3, :cond_1

    .line 1180
    :cond_0
    :goto_0
    return-void

    .line 1140
    :cond_1
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 1177
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 1142
    :pswitch_0
    iget-object v3, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$2;->this$1:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;

    invoke-static {v3, v6}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->access$0(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;I)V

    .line 1144
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v3, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$2;->this$1:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;

    invoke-static {v3}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->access$1(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;)I

    move-result v3

    if-lt v1, v3, :cond_2

    .line 1162
    :goto_2
    iget-object v3, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$2;->this$1:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;

    invoke-static {v3}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->access$4(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;)Landroid/widget/ImageView;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1163
    iget-object v3, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$2;->this$1:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;

    invoke-static {v3}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->access$5(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;)Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TabCircle;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TabCircle;->setVisibility(I)V

    .line 1165
    iget-object v3, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$2;->this$1:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;

    iget-object v3, v3, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->arrowImage_left:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$2;->this$1:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;

    invoke-static {v4}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->access$6(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;)Landroid/view/animation/AlphaAnimation;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 1145
    :cond_2
    iget-object v3, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$2;->this$1:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;

    invoke-static {v3}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->access$1(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;)I

    move-result v3

    sub-int/2addr v3, v1

    add-int/lit8 v2, v3, -0x1

    .line 1146
    .local v2, "index":I
    iget-object v3, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$2;->this$1:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;

    iget-object v4, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$2;->this$1:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;

    invoke-static {v4}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->access$7(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;)[Landroid/widget/ImageView;

    move-result-object v4

    aget-object v4, v4, v2

    iput-object v4, v3, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->arrowImage_left:Landroid/widget/ImageView;

    .line 1147
    iget-object v3, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$2;->this$1:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;

    iget-object v3, v3, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->arrowImage_left:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 1149
    .local v0, "ani":Landroid/view/animation/Animation;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v3

    if-nez v3, :cond_5

    .line 1150
    :cond_3
    iget-object v3, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$2;->this$1:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;

    invoke-static {v3}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->access$1(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;)I

    move-result v3

    add-int/lit8 v4, v1, 0x1

    if-eq v3, v4, :cond_4

    .line 1151
    const-wide/16 v4, 0x96

    invoke-virtual {p0, v7, v4, v5}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$2;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_2

    .line 1154
    :cond_4
    const-wide/16 v4, 0x384

    invoke-virtual {p0, v7, v4, v5}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$2;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_2

    .line 1144
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1170
    .end local v0    # "ani":Landroid/view/animation/Animation;
    .end local v1    # "i":I
    .end local v2    # "index":I
    :pswitch_1
    iget-object v3, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$2;->this$1:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;

    iget-object v3, v3, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->arrowImage_left:Landroid/widget/ImageView;

    if-eqz v3, :cond_0

    .line 1171
    iget-object v3, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$2;->this$1:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;

    iget-object v3, v3, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->arrowImage_left:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->clearAnimation()V

    .line 1172
    iget-object v3, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$2;->this$1:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->arrowImage_left:Landroid/widget/ImageView;

    goto/16 :goto_0

    .line 1140
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
