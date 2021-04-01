.class public Lcom/sec/jewishcalendar/events/alarm/AlarmNotifier;
.super Landroid/app/Activity;
.source "AlarmNotifier.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 19
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 24
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    invoke-virtual/range {p0 .. p0}, Lcom/sec/jewishcalendar/events/alarm/AlarmNotifier;->getIntent()Landroid/content/Intent;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 27
    .local v3, "bundle":Landroid/os/Bundle;
    const-string v15, "Shabbat BUG"

    const-string v18, "entered AlarmNotifier::onCreate"

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    const-string v13, "notification"

    .line 30
    .local v13, "ns":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/sec/jewishcalendar/events/alarm/AlarmNotifier;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/NotificationManager;

    .line 33
    .local v10, "mNotificationManager":Landroid/app/NotificationManager;
    const v9, 0x7f020004

    .line 34
    .local v9, "icon":I
    const v15, 0x7f0a003f

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/sec/jewishcalendar/events/alarm/AlarmNotifier;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 35
    .local v14, "tickerText":Ljava/lang/CharSequence;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 37
    .local v16, "when":J
    new-instance v11, Landroid/app/Notification;

    move-wide/from16 v0, v16

    invoke-direct {v11, v9, v14, v0, v1}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 38
    .local v11, "notification":Landroid/app/Notification;
    const/16 v15, 0x10

    iput v15, v11, Landroid/app/Notification;->flags:I

    .line 39
    invoke-virtual/range {p0 .. p0}, Lcom/sec/jewishcalendar/events/alarm/AlarmNotifier;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    .line 40
    .local v7, "context":Landroid/content/Context;
    const-string v15, "EVENT_DESCRIPTION"

    invoke-virtual {v3, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 41
    .local v6, "contentTitle":Ljava/lang/CharSequence;
    const-string v15, "EVENT_START_DATE_AND_TIME"

    invoke-virtual {v3, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 42
    .local v8, "eventStartDateAndTime":Ljava/lang/String;
    move-object v5, v8

    .line 43
    .local v5, "contentText":Ljava/lang/CharSequence;
    new-instance v12, Landroid/content/Intent;

    const-class v15, Lcom/sec/jewishcalendar/events/alarm/AlarmNotifications;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v15}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 44
    .local v12, "notificationIntent":Landroid/content/Intent;
    const/4 v15, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v15, v12, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 45
    .local v4, "contentIntent":Landroid/app/PendingIntent;
    invoke-virtual {v11, v7, v6, v5, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 46
    const-string v15, "content://settings/system/notification_sound"

    invoke-static {v15}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    iput-object v15, v11, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 48
    const/4 v2, 0x1

    .line 49
    .local v2, "HELLO_ID":I
    const/4 v15, 0x1

    invoke-virtual {v10, v15, v11}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 51
    invoke-virtual/range {p0 .. p0}, Lcom/sec/jewishcalendar/events/alarm/AlarmNotifier;->finish()V

    .line 52
    return-void
.end method
