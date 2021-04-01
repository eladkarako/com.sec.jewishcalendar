.class public Lcom/sec/shabbatmode/ShabbatModeApplication;
.super Landroid/app/Application;
.source "ShabbatModeApplication.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "Shabbat app"

.field public static final TAG_PREFIX:Ljava/lang/String; = "Shabbat "

.field private static allowedNumbers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mAllowAlarmBoolean:Ljava/lang/Boolean;

.field private static mContext:Landroid/content/Context;

.field public static mInCallBoolean:Ljava/lang/Boolean;

.field public static mReceiveAllowedSMSBoolean:Ljava/lang/Boolean;

.field public static mReceiveSMSBoolean:Ljava/lang/Boolean;

.field private static mShabbatAlarm:Lcom/sec/shabbatmode/alarm/ShabbatAlarm;

.field private static mZmanimGetter:Lcom/sec/shabbatmode/ZmanimGetter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 27
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sec/shabbatmode/ShabbatModeApplication;->mInCallBoolean:Ljava/lang/Boolean;

    .line 28
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sec/shabbatmode/ShabbatModeApplication;->mReceiveSMSBoolean:Ljava/lang/Boolean;

    .line 29
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sec/shabbatmode/ShabbatModeApplication;->mReceiveAllowedSMSBoolean:Ljava/lang/Boolean;

    .line 37
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sec/shabbatmode/ShabbatModeApplication;->mAllowAlarmBoolean:Ljava/lang/Boolean;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sec/shabbatmode/ShabbatModeApplication;->allowedNumbers:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static cancelShabbatAlarms()V
    .locals 1

    .prologue
    .line 91
    invoke-static {}, Lcom/sec/shabbatmode/ShabbatModeApplication;->initShabbatAlarm()V

    .line 92
    sget-object v0, Lcom/sec/shabbatmode/ShabbatModeApplication;->mShabbatAlarm:Lcom/sec/shabbatmode/alarm/ShabbatAlarm;

    invoke-virtual {v0}, Lcom/sec/shabbatmode/alarm/ShabbatAlarm;->cancelAlarms()V

    .line 93
    return-void
.end method

.method public static getAllowedNumbers()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 137
    sget-object v0, Lcom/sec/shabbatmode/ShabbatModeApplication;->allowedNumbers:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static handleShabbatAlarm()V
    .locals 1

    .prologue
    .line 81
    invoke-static {}, Lcom/sec/shabbatmode/ShabbatModeApplication;->initShabbatAlarm()V

    .line 82
    sget-object v0, Lcom/sec/shabbatmode/ShabbatModeApplication;->mShabbatAlarm:Lcom/sec/shabbatmode/alarm/ShabbatAlarm;

    invoke-virtual {v0}, Lcom/sec/shabbatmode/alarm/ShabbatAlarm;->handleAlarm()V

    .line 83
    return-void
.end method

.method private static initShabbatAlarm()V
    .locals 2

    .prologue
    .line 74
    sget-object v0, Lcom/sec/shabbatmode/ShabbatModeApplication;->mShabbatAlarm:Lcom/sec/shabbatmode/alarm/ShabbatAlarm;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/shabbatmode/ShabbatModeApplication;->mShabbatAlarm:Lcom/sec/shabbatmode/alarm/ShabbatAlarm;

    invoke-virtual {v0}, Lcom/sec/shabbatmode/alarm/ShabbatAlarm;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    .line 75
    :cond_0
    const-string v0, "Shabbat app"

    const-string v1, "App initShabbatAlarm"

    invoke-static {v0, v1}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    new-instance v0, Lcom/sec/shabbatmode/alarm/ShabbatAlarm;

    sget-object v1, Lcom/sec/shabbatmode/ShabbatModeApplication;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/shabbatmode/alarm/ShabbatAlarm;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/shabbatmode/ShabbatModeApplication;->mShabbatAlarm:Lcom/sec/shabbatmode/alarm/ShabbatAlarm;

    .line 78
    :cond_1
    return-void
.end method

.method private static initZmanimGetter()V
    .locals 2

    .prologue
    .line 100
    sget-object v0, Lcom/sec/shabbatmode/ShabbatModeApplication;->mZmanimGetter:Lcom/sec/shabbatmode/ZmanimGetter;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/shabbatmode/ShabbatModeApplication;->mZmanimGetter:Lcom/sec/shabbatmode/ZmanimGetter;

    invoke-virtual {v0}, Lcom/sec/shabbatmode/ZmanimGetter;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    .line 101
    :cond_0
    const-string v0, "Shabbat app"

    const-string v1, "App initZmanimGetter"

    invoke-static {v0, v1}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    new-instance v0, Lcom/sec/shabbatmode/ZmanimGetter;

    invoke-direct {v0}, Lcom/sec/shabbatmode/ZmanimGetter;-><init>()V

    sput-object v0, Lcom/sec/shabbatmode/ShabbatModeApplication;->mZmanimGetter:Lcom/sec/shabbatmode/ZmanimGetter;

    .line 104
    :cond_1
    return-void
.end method

.method public static setAllowedNumbers(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 141
    .local p0, "allowedNumbers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sput-object p0, Lcom/sec/shabbatmode/ShabbatModeApplication;->allowedNumbers:Ljava/util/ArrayList;

    .line 142
    return-void
.end method

.method public static setShabbatNextAlarm(Ljava/util/Calendar;Z)V
    .locals 1
    .param p0, "alarmTime"    # Ljava/util/Calendar;
    .param p1, "accurate"    # Z

    .prologue
    .line 86
    invoke-static {}, Lcom/sec/shabbatmode/ShabbatModeApplication;->initShabbatAlarm()V

    .line 87
    sget-object v0, Lcom/sec/shabbatmode/ShabbatModeApplication;->mShabbatAlarm:Lcom/sec/shabbatmode/alarm/ShabbatAlarm;

    invoke-virtual {v0, p0, p1}, Lcom/sec/shabbatmode/alarm/ShabbatAlarm;->setNextAlarm(Ljava/util/Calendar;Z)V

    .line 88
    return-void
.end method

.method public static setZmanimGetterNotInForeground()V
    .locals 1

    .prologue
    .line 132
    invoke-static {}, Lcom/sec/shabbatmode/ShabbatModeApplication;->initZmanimGetter()V

    .line 133
    sget-object v0, Lcom/sec/shabbatmode/ShabbatModeApplication;->mZmanimGetter:Lcom/sec/shabbatmode/ZmanimGetter;

    invoke-virtual {v0}, Lcom/sec/shabbatmode/ZmanimGetter;->setNotInForeground()V

    .line 134
    return-void
.end method

.method public static startZmanimGetter(Landroid/content/Context;Landroid/app/ProgressDialog;ZZLjava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "progressDialog"    # Landroid/app/ProgressDialog;
    .param p2, "isSaturdayEvening"    # Z
    .param p3, "inForeground"    # Z
    .param p4, "forceSearch"    # Ljava/lang/Boolean;
    .param p5, "locationSearch"    # Ljava/lang/Boolean;

    .prologue
    .line 122
    invoke-static {}, Lcom/sec/shabbatmode/ShabbatModeApplication;->initZmanimGetter()V

    .line 123
    sget-object v0, Lcom/sec/shabbatmode/ShabbatModeApplication;->mZmanimGetter:Lcom/sec/shabbatmode/ZmanimGetter;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/sec/shabbatmode/ZmanimGetter;->init(Landroid/content/Context;Landroid/app/ProgressDialog;ZZLjava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 124
    return-void
.end method

.method public static stopZmanimGetterLocationManager()V
    .locals 1

    .prologue
    .line 127
    invoke-static {}, Lcom/sec/shabbatmode/ShabbatModeApplication;->initZmanimGetter()V

    .line 128
    sget-object v0, Lcom/sec/shabbatmode/ShabbatModeApplication;->mZmanimGetter:Lcom/sec/shabbatmode/ZmanimGetter;

    invoke-virtual {v0}, Lcom/sec/shabbatmode/ZmanimGetter;->stopLocationManager()V

    .line 129
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    .prologue
    .line 46
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 47
    const-string v0, "Shabbat app"

    const-string v1, "App onCreate"

    invoke-static {v0, v1}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    sput-object p0, Lcom/sec/shabbatmode/ShabbatModeApplication;->mContext:Landroid/content/Context;

    .line 55
    invoke-static {}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUtilities;->getSDKVersion()I

    move-result v0

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 56
    new-instance v0, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatLifecycleHandler;

    invoke-direct {v0}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatLifecycleHandler;-><init>()V

    invoke-virtual {p0, v0}, Lcom/sec/shabbatmode/ShabbatModeApplication;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 66
    :cond_0
    invoke-static {}, Lcom/sec/shabbatmode/ShabbatModeApplication;->initShabbatAlarm()V

    .line 67
    invoke-static {}, Lcom/sec/shabbatmode/ShabbatModeApplication;->initZmanimGetter()V

    .line 68
    return-void
.end method
