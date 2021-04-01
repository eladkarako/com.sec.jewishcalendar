.class public Lcom/sec/shabbatmode/services/ScreenOnReceiverWrapperService;
.super Landroid/app/Service;
.source "ScreenOnReceiverWrapperService.java"


# static fields
.field public static mBisRunning:Z


# instance fields
.field private mIncomingCallReceiver:Lcom/sec/shabbatmode/receivers/IncomingCallReceiver;

.field private mIncomingTextReceiver:Lcom/sec/shabbatmode/receivers/IncomingTextReceiver;

.field private mScreenOnReceiver:Lcom/sec/shabbatmode/receivers/ScreenOnReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/shabbatmode/services/ScreenOnReceiverWrapperService;->mBisRunning:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 17
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 19
    iput-object v0, p0, Lcom/sec/shabbatmode/services/ScreenOnReceiverWrapperService;->mScreenOnReceiver:Lcom/sec/shabbatmode/receivers/ScreenOnReceiver;

    .line 20
    iput-object v0, p0, Lcom/sec/shabbatmode/services/ScreenOnReceiverWrapperService;->mIncomingCallReceiver:Lcom/sec/shabbatmode/receivers/IncomingCallReceiver;

    .line 21
    iput-object v0, p0, Lcom/sec/shabbatmode/services/ScreenOnReceiverWrapperService;->mIncomingTextReceiver:Lcom/sec/shabbatmode/receivers/IncomingTextReceiver;

    .line 17
    return-void
.end method


# virtual methods
.method public closeService()V
    .locals 2

    .prologue
    .line 120
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 121
    .local v0, "local1":Landroid/content/Intent;
    const-string v1, "close_lock_activity"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    invoke-virtual {p0}, Lcom/sec/shabbatmode/services/ScreenOnReceiverWrapperService;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 123
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "arg0"    # Landroid/content/Intent;

    .prologue
    .line 91
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 97
    const-string v1, "Shabbat "

    const-string v2, "ScreenOnReceiverWrapperService onDestroy"

    invoke-static {v1, v2}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iget-object v1, p0, Lcom/sec/shabbatmode/services/ScreenOnReceiverWrapperService;->mIncomingCallReceiver:Lcom/sec/shabbatmode/receivers/IncomingCallReceiver;

    invoke-virtual {v1}, Lcom/sec/shabbatmode/receivers/IncomingCallReceiver;->stopPhoneListener()V

    .line 100
    iget-object v1, p0, Lcom/sec/shabbatmode/services/ScreenOnReceiverWrapperService;->mScreenOnReceiver:Lcom/sec/shabbatmode/receivers/ScreenOnReceiver;

    invoke-virtual {p0, v1}, Lcom/sec/shabbatmode/services/ScreenOnReceiverWrapperService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 101
    iget-object v1, p0, Lcom/sec/shabbatmode/services/ScreenOnReceiverWrapperService;->mIncomingCallReceiver:Lcom/sec/shabbatmode/receivers/IncomingCallReceiver;

    invoke-virtual {p0, v1}, Lcom/sec/shabbatmode/services/ScreenOnReceiverWrapperService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 106
    invoke-virtual {p0}, Lcom/sec/shabbatmode/services/ScreenOnReceiverWrapperService;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUserPrefsUtils;->getShabbatModeOn(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 107
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/sec/shabbatmode/services/ScreenOnReceiverWrapperService;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/sec/shabbatmode/services/ScreenOnReceiverWrapperService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 108
    .local v0, "service":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/sec/shabbatmode/services/ScreenOnReceiverWrapperService;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 114
    .end local v0    # "service":Landroid/content/Intent;
    :goto_0
    return-void

    .line 111
    :cond_0
    invoke-virtual {p0}, Lcom/sec/shabbatmode/services/ScreenOnReceiverWrapperService;->closeService()V

    .line 112
    const/4 v1, 0x0

    sput-boolean v1, Lcom/sec/shabbatmode/services/ScreenOnReceiverWrapperService;->mBisRunning:Z

    goto :goto_0
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    .line 29
    const-string v4, "Shabbat "

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "ScreenOnReceiverWrapperService onStart mBisRunning = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    sget-boolean v6, Lcom/sec/shabbatmode/services/ScreenOnReceiverWrapperService;->mBisRunning:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 29
    invoke-static {v4, v5}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    sget-boolean v4, Lcom/sec/shabbatmode/services/ScreenOnReceiverWrapperService;->mBisRunning:Z

    if-eqz v4, :cond_0

    .line 86
    :goto_0
    return-void

    .line 40
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/sec/shabbatmode/services/ScreenOnReceiverWrapperService;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/sec/shabbatmode/activities/ScreenLockActivity;

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 41
    .local v0, "activityIntent":Landroid/content/Intent;
    const/high16 v4, 0x30000000

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 42
    invoke-virtual {p0}, Lcom/sec/shabbatmode/services/ScreenOnReceiverWrapperService;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 50
    new-instance v4, Lcom/sec/shabbatmode/receivers/ScreenOnReceiver;

    invoke-direct {v4}, Lcom/sec/shabbatmode/receivers/ScreenOnReceiver;-><init>()V

    iput-object v4, p0, Lcom/sec/shabbatmode/services/ScreenOnReceiverWrapperService;->mScreenOnReceiver:Lcom/sec/shabbatmode/receivers/ScreenOnReceiver;

    .line 51
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 57
    .local v2, "screenFilter":Landroid/content/IntentFilter;
    const-string v4, "SCREEN_ON_DISMISS_DIALOG"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 59
    const-string v4, "android.intent.action.SCREEN_ON"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 60
    const-string v4, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 65
    const-string v4, "com.samsung.sec.android.clockpackage.alarm.ALARM_ALERT"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 66
    const-string v4, "com.samsung.sec.android.clockpackage.alarm.ALARM_STOPPED_IN_ALERT"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 67
    iget-object v4, p0, Lcom/sec/shabbatmode/services/ScreenOnReceiverWrapperService;->mScreenOnReceiver:Lcom/sec/shabbatmode/receivers/ScreenOnReceiver;

    invoke-virtual {p0, v4, v2}, Lcom/sec/shabbatmode/services/ScreenOnReceiverWrapperService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 69
    new-instance v4, Lcom/sec/shabbatmode/receivers/IncomingCallReceiver;

    invoke-direct {v4}, Lcom/sec/shabbatmode/receivers/IncomingCallReceiver;-><init>()V

    iput-object v4, p0, Lcom/sec/shabbatmode/services/ScreenOnReceiverWrapperService;->mIncomingCallReceiver:Lcom/sec/shabbatmode/receivers/IncomingCallReceiver;

    .line 70
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 72
    .local v1, "callFilter":Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.PHONE_STATE"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 73
    iget-object v4, p0, Lcom/sec/shabbatmode/services/ScreenOnReceiverWrapperService;->mIncomingCallReceiver:Lcom/sec/shabbatmode/receivers/IncomingCallReceiver;

    invoke-virtual {p0, v4, v1}, Lcom/sec/shabbatmode/services/ScreenOnReceiverWrapperService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 75
    invoke-static {}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUtilities;->isOSLollipopOrUp()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 76
    new-instance v4, Lcom/sec/shabbatmode/receivers/IncomingTextReceiver;

    invoke-direct {v4}, Lcom/sec/shabbatmode/receivers/IncomingTextReceiver;-><init>()V

    iput-object v4, p0, Lcom/sec/shabbatmode/services/ScreenOnReceiverWrapperService;->mIncomingTextReceiver:Lcom/sec/shabbatmode/receivers/IncomingTextReceiver;

    .line 77
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 79
    .local v3, "textFilter":Landroid/content/IntentFilter;
    const-string v4, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 80
    const-string v4, "android.intent.action.VIEW"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 81
    const-string v4, "android.intent.action.EDIT"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 83
    iget-object v4, p0, Lcom/sec/shabbatmode/services/ScreenOnReceiverWrapperService;->mIncomingTextReceiver:Lcom/sec/shabbatmode/receivers/IncomingTextReceiver;

    invoke-virtual {p0, v4, v3}, Lcom/sec/shabbatmode/services/ScreenOnReceiverWrapperService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 85
    .end local v3    # "textFilter":Landroid/content/IntentFilter;
    :cond_1
    const/4 v4, 0x1

    sput-boolean v4, Lcom/sec/shabbatmode/services/ScreenOnReceiverWrapperService;->mBisRunning:Z

    goto/16 :goto_0
.end method
