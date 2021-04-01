.class Lcom/sec/shabbatmode/receivers/IncomingCallReceiver$1;
.super Landroid/telephony/PhoneStateListener;
.source "IncomingCallReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/shabbatmode/receivers/IncomingCallReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/shabbatmode/receivers/IncomingCallReceiver;


# direct methods
.method constructor <init>(Lcom/sec/shabbatmode/receivers/IncomingCallReceiver;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/shabbatmode/receivers/IncomingCallReceiver$1;->this$0:Lcom/sec/shabbatmode/receivers/IncomingCallReceiver;

    .line 57
    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 4
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 60
    iget-object v0, p0, Lcom/sec/shabbatmode/receivers/IncomingCallReceiver$1;->this$0:Lcom/sec/shabbatmode/receivers/IncomingCallReceiver;

    iget-object v0, v0, Lcom/sec/shabbatmode/receivers/IncomingCallReceiver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUserPrefsUtils;->getShabbatModeOn(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    invoke-static {}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUtilities;->isOSLollipopOrUp()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 62
    packed-switch p1, :pswitch_data_0

    .line 114
    :cond_0
    :goto_0
    const-string v0, "Shabbat IncomingCallReceiver"

    .line 115
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onCallStateChanged "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 114
    invoke-static {v0, v1}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-super {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    .line 117
    return-void

    .line 67
    :pswitch_0
    iget-object v0, p0, Lcom/sec/shabbatmode/receivers/IncomingCallReceiver$1;->this$0:Lcom/sec/shabbatmode/receivers/IncomingCallReceiver;

    invoke-static {v0}, Lcom/sec/shabbatmode/receivers/IncomingCallReceiver;->access$0(Lcom/sec/shabbatmode/receivers/IncomingCallReceiver;)V

    goto :goto_0

    .line 70
    :pswitch_1
    iget-object v0, p0, Lcom/sec/shabbatmode/receivers/IncomingCallReceiver$1;->this$0:Lcom/sec/shabbatmode/receivers/IncomingCallReceiver;

    invoke-static {v0, p2}, Lcom/sec/shabbatmode/receivers/IncomingCallReceiver;->access$1(Lcom/sec/shabbatmode/receivers/IncomingCallReceiver;Ljava/lang/String;)V

    goto :goto_0

    .line 73
    :pswitch_2
    iget-object v0, p0, Lcom/sec/shabbatmode/receivers/IncomingCallReceiver$1;->this$0:Lcom/sec/shabbatmode/receivers/IncomingCallReceiver;

    invoke-static {v0, p2}, Lcom/sec/shabbatmode/receivers/IncomingCallReceiver;->access$1(Lcom/sec/shabbatmode/receivers/IncomingCallReceiver;Ljava/lang/String;)V

    goto :goto_0

    .line 79
    :cond_1
    packed-switch p1, :pswitch_data_1

    goto :goto_0

    .line 81
    :pswitch_3
    iget-object v0, p0, Lcom/sec/shabbatmode/receivers/IncomingCallReceiver$1;->this$0:Lcom/sec/shabbatmode/receivers/IncomingCallReceiver;

    iget v0, v0, Lcom/sec/shabbatmode/receivers/IncomingCallReceiver;->previousState:I

    if-eqz v0, :cond_4

    .line 84
    iget-object v0, p0, Lcom/sec/shabbatmode/receivers/IncomingCallReceiver$1;->this$0:Lcom/sec/shabbatmode/receivers/IncomingCallReceiver;

    iget v0, v0, Lcom/sec/shabbatmode/receivers/IncomingCallReceiver;->previousState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    .line 85
    iget-object v0, p0, Lcom/sec/shabbatmode/receivers/IncomingCallReceiver$1;->this$0:Lcom/sec/shabbatmode/receivers/IncomingCallReceiver;

    iget-object v0, v0, Lcom/sec/shabbatmode/receivers/IncomingCallReceiver;->mIsAllowedNum:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/shabbatmode/receivers/IncomingCallReceiver$1;->this$0:Lcom/sec/shabbatmode/receivers/IncomingCallReceiver;

    iget v0, v0, Lcom/sec/shabbatmode/receivers/IncomingCallReceiver;->previousState:I

    if-ne v0, v3, :cond_3

    .line 86
    :cond_2
    iget-object v0, p0, Lcom/sec/shabbatmode/receivers/IncomingCallReceiver$1;->this$0:Lcom/sec/shabbatmode/receivers/IncomingCallReceiver;

    invoke-static {v0}, Lcom/sec/shabbatmode/receivers/IncomingCallReceiver;->access$0(Lcom/sec/shabbatmode/receivers/IncomingCallReceiver;)V

    .line 97
    :goto_1
    iget-object v0, p0, Lcom/sec/shabbatmode/receivers/IncomingCallReceiver$1;->this$0:Lcom/sec/shabbatmode/receivers/IncomingCallReceiver;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/shabbatmode/receivers/IncomingCallReceiver;->mIsAllowedNum:Ljava/lang/Boolean;

    .line 98
    iget-object v0, p0, Lcom/sec/shabbatmode/receivers/IncomingCallReceiver$1;->this$0:Lcom/sec/shabbatmode/receivers/IncomingCallReceiver;

    iput p1, v0, Lcom/sec/shabbatmode/receivers/IncomingCallReceiver;->previousState:I

    goto :goto_0

    .line 89
    :cond_3
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sec/shabbatmode/ShabbatModeApplication;->mInCallBoolean:Ljava/lang/Boolean;

    .line 90
    iget-object v0, p0, Lcom/sec/shabbatmode/receivers/IncomingCallReceiver$1;->this$0:Lcom/sec/shabbatmode/receivers/IncomingCallReceiver;

    iget-object v0, v0, Lcom/sec/shabbatmode/receivers/IncomingCallReceiver;->mContext:Landroid/content/Context;

    const/16 v1, 0x7d0

    invoke-static {v0, v1}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUtilities;->putTheDeviceToSleep(Landroid/content/Context;I)V

    goto :goto_1

    .line 94
    :cond_4
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sec/shabbatmode/ShabbatModeApplication;->mInCallBoolean:Ljava/lang/Boolean;

    goto :goto_1

    .line 101
    :pswitch_4
    iget-object v0, p0, Lcom/sec/shabbatmode/receivers/IncomingCallReceiver$1;->this$0:Lcom/sec/shabbatmode/receivers/IncomingCallReceiver;

    iget v0, v0, Lcom/sec/shabbatmode/receivers/IncomingCallReceiver;->previousState:I

    if-eq v0, v3, :cond_5

    .line 102
    iget-object v0, p0, Lcom/sec/shabbatmode/receivers/IncomingCallReceiver$1;->this$0:Lcom/sec/shabbatmode/receivers/IncomingCallReceiver;

    invoke-static {v0, p2}, Lcom/sec/shabbatmode/receivers/IncomingCallReceiver;->access$1(Lcom/sec/shabbatmode/receivers/IncomingCallReceiver;Ljava/lang/String;)V

    .line 104
    :cond_5
    iget-object v0, p0, Lcom/sec/shabbatmode/receivers/IncomingCallReceiver$1;->this$0:Lcom/sec/shabbatmode/receivers/IncomingCallReceiver;

    iput p1, v0, Lcom/sec/shabbatmode/receivers/IncomingCallReceiver;->previousState:I

    goto/16 :goto_0

    .line 107
    :pswitch_5
    iget-object v0, p0, Lcom/sec/shabbatmode/receivers/IncomingCallReceiver$1;->this$0:Lcom/sec/shabbatmode/receivers/IncomingCallReceiver;

    iget v0, v0, Lcom/sec/shabbatmode/receivers/IncomingCallReceiver;->previousState:I

    if-nez v0, :cond_6

    .line 108
    iget-object v0, p0, Lcom/sec/shabbatmode/receivers/IncomingCallReceiver$1;->this$0:Lcom/sec/shabbatmode/receivers/IncomingCallReceiver;

    invoke-static {v0, p2}, Lcom/sec/shabbatmode/receivers/IncomingCallReceiver;->access$1(Lcom/sec/shabbatmode/receivers/IncomingCallReceiver;Ljava/lang/String;)V

    .line 110
    :cond_6
    iget-object v0, p0, Lcom/sec/shabbatmode/receivers/IncomingCallReceiver$1;->this$0:Lcom/sec/shabbatmode/receivers/IncomingCallReceiver;

    iput p1, v0, Lcom/sec/shabbatmode/receivers/IncomingCallReceiver;->previousState:I

    goto/16 :goto_0

    .line 62
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 79
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
