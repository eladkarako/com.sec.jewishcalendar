.class public Lcom/sec/shabbatmode/receivers/IncomingCallReceiver;
.super Landroid/content/BroadcastReceiver;
.source "IncomingCallReceiver.java"

# interfaces
.implements Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUtilities$WantToExitDialogListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "Shabbat IncomingCallReceiver"

.field static mAlertDialog:Landroid/app/AlertDialog;


# instance fields
.field mContext:Landroid/content/Context;

.field mIsAllowedNum:Ljava/lang/Boolean;

.field private final phoneStateListener:Landroid/telephony/PhoneStateListener;

.field previousState:I

.field showToast:Ljava/lang/Boolean;

.field tm:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 21
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 27
    iput v1, p0, Lcom/sec/shabbatmode/receivers/IncomingCallReceiver;->previousState:I

    .line 28
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/shabbatmode/receivers/IncomingCallReceiver;->mIsAllowedNum:Ljava/lang/Boolean;

    .line 41
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/shabbatmode/receivers/IncomingCallReceiver;->showToast:Ljava/lang/Boolean;

    .line 57
    new-instance v0, Lcom/sec/shabbatmode/receivers/IncomingCallReceiver$1;

    invoke-direct {v0, p0}, Lcom/sec/shabbatmode/receivers/IncomingCallReceiver$1;-><init>(Lcom/sec/shabbatmode/receivers/IncomingCallReceiver;)V

    iput-object v0, p0, Lcom/sec/shabbatmode/receivers/IncomingCallReceiver;->phoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 21
    return-void
.end method

.method static synthetic access$0(Lcom/sec/shabbatmode/receivers/IncomingCallReceiver;)V
    .locals 0

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/sec/shabbatmode/receivers/IncomingCallReceiver;->enterSleep()V

    return-void
.end method

.method static synthetic access$1(Lcom/sec/shabbatmode/receivers/IncomingCallReceiver;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/sec/shabbatmode/receivers/IncomingCallReceiver;->allowCallIn(Ljava/lang/String;)V

    return-void
.end method

.method private allowCallIn(Ljava/lang/String;)V
    .locals 3
    .param p1, "callingNumber"    # Ljava/lang/String;

    .prologue
    .line 121
    const-string v0, "Shabbat IncomingCallReceiver"

    const-string v1, "allowCallIn"

    invoke-static {v0, v1}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/sec/shabbatmode/receivers/IncomingCallReceiver;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUtilities;->numberIsOnAllowedList(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/shabbatmode/receivers/IncomingCallReceiver;->mIsAllowedNum:Ljava/lang/Boolean;

    .line 123
    invoke-static {}, Lcom/sec/shabbatmode/receivers/IncomingCallReceiver;->dismissAlertDialog()V

    .line 125
    iget-object v0, p0, Lcom/sec/shabbatmode/receivers/IncomingCallReceiver;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/shabbatmode/receivers/IncomingCallReceiver;->mIsAllowedNum:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUtilities;->setRingerToAllowCallIn(Landroid/content/Context;Ljava/lang/Boolean;)V

    .line 130
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sec/shabbatmode/ShabbatModeApplication;->mInCallBoolean:Ljava/lang/Boolean;

    .line 135
    iget-object v0, p0, Lcom/sec/shabbatmode/receivers/IncomingCallReceiver;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "SCREEN_ON_DISMISS_DIALOG"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 137
    return-void
.end method

.method public static dismissAlertDialog()V
    .locals 2

    .prologue
    .line 171
    sget-object v0, Lcom/sec/shabbatmode/receivers/IncomingCallReceiver;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/shabbatmode/receivers/IncomingCallReceiver;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    const-string v0, "Shabbat IncomingCallReceiver"

    const-string v1, "dismissAlertDialog"

    invoke-static {v0, v1}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    sget-object v0, Lcom/sec/shabbatmode/receivers/IncomingCallReceiver;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 175
    :cond_0
    return-void
.end method

.method private enterSleep()V
    .locals 4

    .prologue
    .line 140
    const-string v0, "Shabbat IncomingCallReceiver"

    const-string v1, "enterSleep"

    invoke-static {v0, v1}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    sget-object v0, Lcom/sec/shabbatmode/ShabbatModeApplication;->mInCallBoolean:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/sec/shabbatmode/receivers/IncomingCallReceiver;->showToast:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 144
    iget-object v0, p0, Lcom/sec/shabbatmode/receivers/IncomingCallReceiver;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/shabbatmode/receivers/IncomingCallReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a009d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 145
    const/4 v2, 0x1

    const/16 v3, 0x11

    .line 144
    invoke-static {v0, v1, v2, v3}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUtilities;->showCustomWhiteToast(Landroid/content/Context;Ljava/lang/String;II)V

    .line 146
    iget-object v0, p0, Lcom/sec/shabbatmode/receivers/IncomingCallReceiver;->mContext:Landroid/content/Context;

    const/16 v1, 0x7d0

    invoke-static {v0, v1}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUtilities;->putTheDeviceToSleep(Landroid/content/Context;I)V

    .line 159
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/shabbatmode/receivers/IncomingCallReceiver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/shabbatmode/preferences/utilities/ZenModeUtilities;->setInterruptionsNone(Landroid/content/Context;)V

    .line 160
    iget-object v0, p0, Lcom/sec/shabbatmode/receivers/IncomingCallReceiver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatPrefMethods;->silenceRinger(Landroid/content/Context;)V

    .line 161
    return-void

    .line 154
    :cond_1
    iget-object v0, p0, Lcom/sec/shabbatmode/receivers/IncomingCallReceiver;->mContext:Landroid/content/Context;

    .line 155
    iget-object v1, p0, Lcom/sec/shabbatmode/receivers/IncomingCallReceiver;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0071

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 154
    invoke-static {v0, p0, v1}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUtilities;->getWantToExitDialog(Landroid/content/Context;Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUtilities$WantToExitDialogListener;Ljava/lang/String;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/shabbatmode/receivers/IncomingCallReceiver;->setmAlertDialog(Landroid/app/AlertDialog;)V

    .line 156
    invoke-direct {p0}, Lcom/sec/shabbatmode/receivers/IncomingCallReceiver;->showAlertDialog()V

    goto :goto_0
.end method

.method public static isAlertShowing()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 177
    sget-object v0, Lcom/sec/shabbatmode/receivers/IncomingCallReceiver;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/shabbatmode/receivers/IncomingCallReceiver;->mAlertDialog:Landroid/app/AlertDialog;

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

.method public static setmAlertDialog(Landroid/app/AlertDialog;)V
    .locals 1
    .param p0, "mAlertDialog"    # Landroid/app/AlertDialog;

    .prologue
    .line 31
    sget-object v0, Lcom/sec/shabbatmode/receivers/IncomingCallReceiver;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 32
    sget-object v0, Lcom/sec/shabbatmode/receivers/IncomingCallReceiver;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 34
    :cond_0
    sput-object p0, Lcom/sec/shabbatmode/receivers/IncomingCallReceiver;->mAlertDialog:Landroid/app/AlertDialog;

    .line 35
    return-void
.end method

.method private showAlertDialog()V
    .locals 2

    .prologue
    .line 164
    sget-object v0, Lcom/sec/shabbatmode/receivers/IncomingCallReceiver;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/shabbatmode/receivers/IncomingCallReceiver;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 165
    const-string v0, "Shabbat IncomingCallReceiver"

    const-string v1, "mAlertDialog.show"

    invoke-static {v0, v1}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    sget-object v0, Lcom/sec/shabbatmode/receivers/IncomingCallReceiver;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 168
    :cond_0
    return-void
.end method


# virtual methods
.method public onDismissAlert()V
    .locals 1

    .prologue
    .line 195
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sec/shabbatmode/ShabbatModeApplication;->mInCallBoolean:Ljava/lang/Boolean;

    .line 196
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 45
    iput-object p1, p0, Lcom/sec/shabbatmode/receivers/IncomingCallReceiver;->mContext:Landroid/content/Context;

    .line 46
    const-string v1, "Shabbat IncomingCallReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "IncomingCallReceiver = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-static {p1}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUserPrefsUtils;->getShabbatModeOn(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    const-string v1, "phone"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/sec/shabbatmode/receivers/IncomingCallReceiver;->tm:Landroid/telephony/TelephonyManager;

    .line 50
    const/16 v0, 0x20

    .line 51
    .local v0, "events":I
    iget-object v1, p0, Lcom/sec/shabbatmode/receivers/IncomingCallReceiver;->tm:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/sec/shabbatmode/receivers/IncomingCallReceiver;->phoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v1, v2, v0}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 52
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/sec/shabbatmode/ShabbatModeApplication;->mReceiveSMSBoolean:Ljava/lang/Boolean;

    .line 53
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/sec/shabbatmode/ShabbatModeApplication;->mReceiveAllowedSMSBoolean:Ljava/lang/Boolean;

    .line 55
    .end local v0    # "events":I
    :cond_0
    return-void
.end method

.method public stopPhoneListener()V
    .locals 3

    .prologue
    .line 186
    iget-object v0, p0, Lcom/sec/shabbatmode/receivers/IncomingCallReceiver;->tm:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 187
    const-string v0, "Shabbat "

    const-string v1, "IncomingCallReceiver Stop listening"

    invoke-static {v0, v1}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lcom/sec/shabbatmode/receivers/IncomingCallReceiver;->tm:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/sec/shabbatmode/receivers/IncomingCallReceiver;->phoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 190
    :cond_0
    return-void
.end method
