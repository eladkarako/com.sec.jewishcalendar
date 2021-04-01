.class public Lcom/sec/shabbatmode/receivers/ShabbatAlarmReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ShabbatAlarmReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "arg1"    # Landroid/content/Intent;

    .prologue
    .line 14
    const-string v1, "Shabbat alarm3"

    const-string v2, "entered ShabbatAlarmReceiver:onReceive"

    invoke-static {v1, v2}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    invoke-static {p1}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUserPrefsUtils;->getShabbatModeEnabled(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 21
    .local v0, "isShabbatModeOn":Z
    if-nez v0, :cond_0

    .line 25
    :goto_0
    return-void

    .line 23
    :cond_0
    const-string v1, "Shabbat alarm3"

    const-string v2, "going to call next alarm"

    invoke-static {v1, v2}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-static {}, Lcom/sec/shabbatmode/ShabbatModeApplication;->handleShabbatAlarm()V

    goto :goto_0
.end method
