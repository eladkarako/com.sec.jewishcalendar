.class public Lcom/sec/jewishcalendar/events/alarm/EventAlarmReceiver;
.super Landroid/content/BroadcastReceiver;
.source "EventAlarmReceiver.java"


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
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "arg1"    # Landroid/content/Intent;

    .prologue
    .line 15
    const-string v0, "Shabbat BUG"

    const-string v1, "entered EventAlarmReceiver::onReceive"

    invoke-static {v0, v1}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    const-string v0, "Shabbat BUG"

    const-string v1, "in EventAlarmReceiver, going to call initEventAlarm"

    invoke-static {v0, v1}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/sec/jewishcalendar/events/GlobalEvents;->initEventAlarm(Landroid/content/Context;Z)V

    .line 18
    const-string v0, "Shabbat BUG"

    const-string v1, "in EventAlarmReceiver, going to call handleAlarm"

    invoke-static {v0, v1}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    sget-object v0, Lcom/sec/jewishcalendar/events/GlobalEvents;->mEventAlarm:Lcom/sec/jewishcalendar/events/GlobalEvents$EventAlarm;

    invoke-virtual {v0}, Lcom/sec/jewishcalendar/events/GlobalEvents$EventAlarm;->handleAlarm()V

    .line 20
    return-void
.end method
