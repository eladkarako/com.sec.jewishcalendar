.class public Lcom/sec/shabbatmode/receivers/IncomingTextReceiver;
.super Landroid/content/BroadcastReceiver;
.source "IncomingTextReceiver.java"

# interfaces
.implements Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUtilities$WantToExitDialogListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "Shabbat IncomingTextReceiver"

.field static mAlertDialog:Landroid/app/AlertDialog;

.field static mContext:Landroid/content/Context;

.field static mIsAllowedNum:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sec/shabbatmode/receivers/IncomingTextReceiver;->mIsAllowedNum:Ljava/lang/Boolean;

    .line 38
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static dismissAlertDialog()V
    .locals 2

    .prologue
    .line 128
    sget-object v0, Lcom/sec/shabbatmode/receivers/IncomingTextReceiver;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/shabbatmode/receivers/IncomingTextReceiver;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    const-string v0, "Shabbat IncomingTextReceiver"

    const-string v1, "dismissAlertDialog"

    invoke-static {v0, v1}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    sget-object v0, Lcom/sec/shabbatmode/receivers/IncomingTextReceiver;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 132
    :cond_0
    return-void
.end method

.method private getNumber(Landroid/content/Intent;)Ljava/lang/String;
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 72
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 73
    .local v0, "bundle":Landroid/os/Bundle;
    const/4 v4, 0x0

    .line 74
    .local v4, "msgs":[Landroid/telephony/SmsMessage;
    const-string v3, ""

    .line 75
    .local v3, "msg_from":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 77
    :try_start_0
    const-string v6, "pdus"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Object;

    .line 78
    .local v5, "pdus":[Ljava/lang/Object;
    array-length v6, v5

    new-array v4, v6, [Landroid/telephony/SmsMessage;

    .line 79
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v6, v4

    if-lt v2, v6, :cond_1

    .line 88
    .end local v2    # "i":I
    .end local v5    # "pdus":[Ljava/lang/Object;
    :cond_0
    :goto_1
    return-object v3

    .line 80
    .restart local v2    # "i":I
    .restart local v5    # "pdus":[Ljava/lang/Object;
    :cond_1
    aget-object v6, v5, v2

    check-cast v6, [B

    invoke-static {v6}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v6

    aput-object v6, v4, v2

    .line 81
    aget-object v6, v4, v2

    invoke-virtual {v6}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v3

    .line 82
    const-string v6, "Shabbat IncomingTextReceiver"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Text from: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 84
    .end local v2    # "i":I
    .end local v5    # "pdus":[Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 85
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "Shabbat IncomingTextReceiver"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static isAlertShowing()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 134
    sget-object v0, Lcom/sec/shabbatmode/receivers/IncomingTextReceiver;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/shabbatmode/receivers/IncomingTextReceiver;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method private static playSound()V
    .locals 4

    .prologue
    .line 119
    const/4 v3, 0x2

    :try_start_0
    invoke-static {v3}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v1

    .line 120
    .local v1, "notification":Landroid/net/Uri;
    sget-object v3, Lcom/sec/shabbatmode/receivers/IncomingTextReceiver;->mContext:Landroid/content/Context;

    invoke-static {v3, v1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v2

    .line 121
    .local v2, "r":Landroid/media/Ringtone;
    invoke-virtual {v2}, Landroid/media/Ringtone;->play()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    .end local v2    # "r":Landroid/media/Ringtone;
    :goto_0
    return-void

    .line 122
    :catch_0
    move-exception v0

    .line 123
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private resetBooleansWithDelay()V
    .locals 4

    .prologue
    .line 106
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 107
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/sec/shabbatmode/receivers/IncomingTextReceiver$1;

    invoke-direct {v1, p0}, Lcom/sec/shabbatmode/receivers/IncomingTextReceiver$1;-><init>(Lcom/sec/shabbatmode/receivers/IncomingTextReceiver;)V

    .line 114
    const-wide/16 v2, 0x2710

    .line 107
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 115
    return-void
.end method

.method public static setmAlertDialog(Landroid/app/AlertDialog;)V
    .locals 1
    .param p0, "mAlertDialog"    # Landroid/app/AlertDialog;

    .prologue
    .line 41
    sget-object v0, Lcom/sec/shabbatmode/receivers/IncomingTextReceiver;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 42
    sget-object v0, Lcom/sec/shabbatmode/receivers/IncomingTextReceiver;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 44
    :cond_0
    sput-object p0, Lcom/sec/shabbatmode/receivers/IncomingTextReceiver;->mAlertDialog:Landroid/app/AlertDialog;

    .line 45
    return-void
.end method

.method public static showAlertDialog()V
    .locals 2

    .prologue
    .line 92
    sget-object v0, Lcom/sec/shabbatmode/receivers/IncomingTextReceiver;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/shabbatmode/receivers/IncomingTextReceiver;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    const-string v0, "Shabbat IncomingTextReceiver"

    const-string v1, "mAlertDialog.show"

    invoke-static {v0, v1}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    sget-object v0, Lcom/sec/shabbatmode/receivers/IncomingTextReceiver;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/shabbatmode/receivers/IncomingTextReceiver;->mIsAllowedNum:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUtilities;->setRingerToAllowCallIn(Landroid/content/Context;Ljava/lang/Boolean;)V

    .line 95
    sget-object v0, Lcom/sec/shabbatmode/receivers/IncomingTextReceiver;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 96
    invoke-static {}, Lcom/sec/shabbatmode/receivers/IncomingTextReceiver;->playSound()V

    .line 98
    :cond_0
    return-void
.end method


# virtual methods
.method public onDismissAlert()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 140
    sget-object v0, Lcom/sec/shabbatmode/receivers/IncomingTextReceiver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUserPrefsUtils;->getShabbatModeOn(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    sget-object v0, Lcom/sec/shabbatmode/receivers/IncomingTextReceiver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatPrefMethods;->silenceRinger(Landroid/content/Context;)V

    .line 143
    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sec/shabbatmode/ShabbatModeApplication;->mReceiveSMSBoolean:Ljava/lang/Boolean;

    .line 144
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sec/shabbatmode/ShabbatModeApplication;->mReceiveAllowedSMSBoolean:Ljava/lang/Boolean;

    .line 145
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    .line 49
    sput-object p1, Lcom/sec/shabbatmode/receivers/IncomingTextReceiver;->mContext:Landroid/content/Context;

    .line 50
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, "intentAction":Ljava/lang/String;
    const-string v1, "Shabbat IncomingTextReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "IncomingSMSReceiver = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const-string v1, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 54
    invoke-direct {p0, p2}, Lcom/sec/shabbatmode/receivers/IncomingTextReceiver;->getNumber(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUtilities;->numberIsOnAllowedList(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/sec/shabbatmode/receivers/IncomingTextReceiver;->mIsAllowedNum:Ljava/lang/Boolean;

    .line 56
    sget-object v1, Lcom/sec/shabbatmode/receivers/IncomingTextReceiver;->mIsAllowedNum:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    const v2, 0x7f0a0072

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 59
    const v2, 0x7f0a0071

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 58
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 57
    invoke-static {p1, p0, v1}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUtilities;->getWantToExitDialog(Landroid/content/Context;Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUtilities$WantToExitDialogListener;Ljava/lang/String;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/shabbatmode/receivers/IncomingTextReceiver;->setmAlertDialog(Landroid/app/AlertDialog;)V

    .line 60
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/sec/shabbatmode/ShabbatModeApplication;->mReceiveAllowedSMSBoolean:Ljava/lang/Boolean;

    .line 66
    :goto_0
    invoke-direct {p0}, Lcom/sec/shabbatmode/receivers/IncomingTextReceiver;->resetBooleansWithDelay()V

    .line 69
    :cond_0
    return-void

    .line 63
    :cond_1
    invoke-static {p1}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUtilities;->lockDevice(Landroid/content/Context;)V

    .line 64
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/sec/shabbatmode/ShabbatModeApplication;->mReceiveSMSBoolean:Ljava/lang/Boolean;

    goto :goto_0
.end method
