.class Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$1;
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
    iput-object p1, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$1;->this$1:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;

    .line 1080
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

    .line 1082
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 1126
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 1129
    :cond_0
    :goto_0
    return-void

    .line 1084
    :pswitch_0
    iget-object v3, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$1;->this$1:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;

    invoke-static {v3, v6}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->access$0(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;I)V

    .line 1086
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v3, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$1;->this$1:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;

    invoke-static {v3}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->access$1(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;)I

    move-result v3

    if-lt v1, v3, :cond_1

    .line 1111
    :goto_2
    iget-object v3, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$1;->this$1:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;

    invoke-static {v3}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->access$4(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;)Landroid/widget/ImageView;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1112
    iget-object v3, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$1;->this$1:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;

    invoke-static {v3}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->access$5(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;)Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TabCircle;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TabCircle;->setVisibility(I)V

    .line 1114
    iget-object v3, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$1;->this$1:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;

    iget-object v3, v3, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->arrowImage_right:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$1;->this$1:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;

    invoke-static {v4}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->access$6(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;)Landroid/view/animation/AlphaAnimation;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 1087
    :cond_1
    const/4 v2, 0x0

    .line 1089
    .local v2, "index":I
    iget-object v3, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$1;->this$1:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;

    invoke-static {v3}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->access$2(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 1090
    move v2, v1

    .line 1095
    :goto_3
    iget-object v3, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$1;->this$1:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;

    iget-object v4, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$1;->this$1:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;

    invoke-static {v4}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->access$3(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;)[Landroid/widget/ImageView;

    move-result-object v4

    aget-object v4, v4, v2

    iput-object v4, v3, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->arrowImage_right:Landroid/widget/ImageView;

    .line 1096
    iget-object v3, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$1;->this$1:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;

    iget-object v3, v3, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->arrowImage_right:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 1098
    .local v0, "ani":Landroid/view/animation/Animation;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v3

    if-nez v3, :cond_5

    .line 1099
    :cond_2
    iget-object v3, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$1;->this$1:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;

    invoke-static {v3}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->access$1(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;)I

    move-result v3

    add-int/lit8 v4, v1, 0x1

    if-eq v3, v4, :cond_4

    .line 1100
    const-wide/16 v4, 0x96

    invoke-virtual {p0, v7, v4, v5}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$1;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_2

    .line 1092
    .end local v0    # "ani":Landroid/view/animation/Animation;
    :cond_3
    iget-object v3, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$1;->this$1:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;

    invoke-static {v3}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->access$1(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;)I

    move-result v3

    sub-int/2addr v3, v1

    add-int/lit8 v2, v3, -0x1

    goto :goto_3

    .line 1103
    .restart local v0    # "ani":Landroid/view/animation/Animation;
    :cond_4
    const-wide/16 v4, 0x384

    invoke-virtual {p0, v7, v4, v5}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$1;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_2

    .line 1086
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1119
    .end local v0    # "ani":Landroid/view/animation/Animation;
    .end local v1    # "i":I
    .end local v2    # "index":I
    :pswitch_1
    iget-object v3, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$1;->this$1:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;

    iget-object v3, v3, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->arrowImage_right:Landroid/widget/ImageView;

    if-eqz v3, :cond_0

    .line 1120
    iget-object v3, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$1;->this$1:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;

    iget-object v3, v3, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->arrowImage_right:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->clearAnimation()V

    .line 1121
    iget-object v3, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$1;->this$1:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->arrowImage_right:Landroid/widget/ImageView;

    goto/16 :goto_0

    .line 1082
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
