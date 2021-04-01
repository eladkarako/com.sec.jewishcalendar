.class public Lcom/sec/jewishcalendar/events/alarm/InitAlarmManagerReceiver;
.super Landroid/content/BroadcastReceiver;
.source "InitAlarmManagerReceiver.java"


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
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 16
    const-string v0, "Shabbat BUG"

    const-string v1, "entered initAlarmManagerReceiver -> going to call GlobalEvents.initEventAlarm((context, true));"

    invoke-static {v0, v1}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/sec/jewishcalendar/events/GlobalEvents;->initEventAlarm(Landroid/content/Context;Z)V

    .line 20
    return-void
.end method
