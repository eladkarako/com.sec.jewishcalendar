.class public Lcom/sec/jewishcalendar/events/GlobalEvents$EventAlarm;
.super Ljava/lang/Object;
.source "GlobalEvents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/jewishcalendar/events/GlobalEvents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EventAlarm"
.end annotation


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mContext:Landroid/content/Context;

.field private mPendingIntent:Landroid/app/PendingIntent;

.field private m_bIsInitialized:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    invoke-static {}, Lcom/sec/jewishcalendar/events/GlobalEvents;->access$0()Ljava/lang/String;

    move-result-object v1

    const-string v2, "entered EventAlarm constructor"

    invoke-static {v1, v2}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    iput-object p1, p0, Lcom/sec/jewishcalendar/events/GlobalEvents$EventAlarm;->mContext:Landroid/content/Context;

    .line 196
    const-string v1, "alarm"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    iput-object v1, p0, Lcom/sec/jewishcalendar/events/GlobalEvents$EventAlarm;->mAlarmManager:Landroid/app/AlarmManager;

    .line 197
    new-instance v0, Landroid/content/Intent;

    const-string v1, ".events.alarm.EventAlarm"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 198
    .local v0, "mIntent":Landroid/content/Intent;
    invoke-static {p1, v3, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/jewishcalendar/events/GlobalEvents$EventAlarm;->mPendingIntent:Landroid/app/PendingIntent;

    .line 199
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/jewishcalendar/events/GlobalEvents$EventAlarm;->m_bIsInitialized:Z

    .line 200
    invoke-static {}, Lcom/sec/jewishcalendar/events/GlobalEvents;->access$0()Ljava/lang/String;

    move-result-object v1

    const-string v2, "exiting EventAlarm constructor"

    invoke-static {v1, v2}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    return-void
.end method

.method private displayNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contentTitle"    # Ljava/lang/String;
    .param p3, "contentText"    # Ljava/lang/String;

    .prologue
    .line 256
    const-string v6, "notification"

    .line 257
    .local v6, "ns":Ljava/lang/String;
    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 259
    .local v3, "mNotificationManager":Landroid/app/NotificationManager;
    const v10, 0x7f0a003f

    invoke-virtual {p1, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 260
    .local v7, "tickerText":Ljava/lang/CharSequence;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 262
    .local v8, "when":J
    new-instance v5, Landroid/content/Intent;

    const-class v10, Lcom/sec/jewishcalendar/events/alarm/AlarmNotifications;

    invoke-direct {v5, p1, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 264
    .local v5, "notificationIntent":Landroid/content/Intent;
    const/16 v10, 0x21e

    .line 265
    const/high16 v11, 0x10000000

    .line 263
    invoke-static {p1, v10, v5, v11}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 267
    .local v1, "contentIntent":Landroid/app/PendingIntent;
    new-instance v10, Landroid/app/Notification$Builder;

    invoke-direct {v10, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 268
    const v11, 0x7f020005

    invoke-virtual {v10, v11}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v10

    .line 269
    invoke-virtual {v10, v7}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v10

    .line 270
    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v10

    .line 271
    invoke-virtual {v10, p2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v10

    .line 272
    invoke-virtual {v10, p3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v10

    .line 273
    invoke-virtual {v10, v8, v9}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v10

    .line 274
    const-string v11, "content://settings/system/notification_sound"

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    move-result-object v10

    .line 275
    invoke-virtual {v10, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 277
    .local v2, "mBuilder":Landroid/app/Notification$Builder;
    const/4 v0, 0x1

    .line 278
    .local v0, "HELLO_ID":I
    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    .line 279
    .local v4, "n":Landroid/app/Notification;
    const/4 v10, 0x1

    invoke-virtual {v3, v10, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 280
    return-void
.end method


# virtual methods
.method public handleAlarm()V
    .locals 5

    .prologue
    .line 205
    invoke-static {}, Lcom/sec/jewishcalendar/events/GlobalEvents;->access$0()Ljava/lang/String;

    move-result-object v3

    const-string v4, "entered handleAlarm"

    invoke-static {v3, v4}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    new-instance v1, Lcom/sec/jewishcalendar/events/DateAndTime;

    invoke-direct {v1}, Lcom/sec/jewishcalendar/events/DateAndTime;-><init>()V

    .line 208
    .local v1, "currentDateAndTime":Lcom/sec/jewishcalendar/events/DateAndTime;
    sget-object v3, Lcom/sec/jewishcalendar/events/GlobalEvents;->mEventList:Lcom/sec/jewishcalendar/events/EventList;

    invoke-virtual {v3, v1}, Lcom/sec/jewishcalendar/events/EventList;->findCurrentAlarmConcreteDateEvent(Lcom/sec/jewishcalendar/events/DateAndTime;)Lcom/sec/jewishcalendar/events/ConcreteDateEvent;

    move-result-object v0

    .line 209
    .local v0, "concreteDateEvent":Lcom/sec/jewishcalendar/events/ConcreteDateEvent;
    if-eqz v0, :cond_2

    .line 211
    invoke-static {}, Lcom/sec/jewishcalendar/events/GlobalEvents;->access$0()Ljava/lang/String;

    move-result-object v3

    const-string v4, "********  concreteDateEvent != null, Event exists!!!  *****"

    invoke-static {v3, v4}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    invoke-virtual {v0}, Lcom/sec/jewishcalendar/events/ConcreteDateEvent;->getEventDescription()Ljava/lang/String;

    move-result-object v2

    .line 214
    .local v2, "eventDescription":Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 215
    :cond_0
    iget-object v3, p0, Lcom/sec/jewishcalendar/events/GlobalEvents$EventAlarm;->mContext:Landroid/content/Context;

    const v4, 0x7f0a002a

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 217
    :cond_1
    iget-object v3, p0, Lcom/sec/jewishcalendar/events/GlobalEvents$EventAlarm;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/sec/jewishcalendar/events/ConcreteDateEvent;->getEventStartDateAndTime()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v2, v4}, Lcom/sec/jewishcalendar/events/GlobalEvents$EventAlarm;->displayNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    .end local v2    # "eventDescription":Ljava/lang/String;
    :goto_0
    invoke-static {}, Lcom/sec/jewishcalendar/events/GlobalEvents;->access$0()Ljava/lang/String;

    move-result-object v3

    const-string v4, "going to call initEventAlarm"

    invoke-static {v3, v4}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    iget-object v3, p0, Lcom/sec/jewishcalendar/events/GlobalEvents$EventAlarm;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/sec/jewishcalendar/events/GlobalEvents;->initEventAlarm(Landroid/content/Context;Z)V

    .line 224
    return-void

    .line 220
    :cond_2
    invoke-static {}, Lcom/sec/jewishcalendar/events/GlobalEvents;->access$0()Ljava/lang/String;

    move-result-object v3

    const-string v4, "******  eventExists() is false!!!  ******"

    invoke-static {v3, v4}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 252
    iget-boolean v0, p0, Lcom/sec/jewishcalendar/events/GlobalEvents$EventAlarm;->m_bIsInitialized:Z

    return v0
.end method

.method public setAlarm(J)V
    .locals 3
    .param p1, "nextAlarmTimeInMilliSeconds"    # J

    .prologue
    .line 228
    invoke-static {}, Lcom/sec/jewishcalendar/events/GlobalEvents;->access$0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setAlarm "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUtilities;->getFullDateStringFromMilliSeconds(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/GlobalEvents$EventAlarm;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/sec/jewishcalendar/events/GlobalEvents$EventAlarm;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 230
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/GlobalEvents$EventAlarm;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/jewishcalendar/events/GlobalEvents$EventAlarm;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, p1, p2, v2}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 234
    return-void
.end method
