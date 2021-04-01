.class public Lcom/sec/shabbatmode/receivers/SMNotificationsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SMNotificationsReceiver.java"


# static fields
.field public static final NOTIFICATION_CLEAR:I = 0x0

.field public static final NOTIFICATION_SHOW:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Shabbat ShabbatModeNotiReceiver"

.field public static notification_id:I


# instance fields
.field icon_id:I

.field large_icon_id:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/16 v0, 0x21e

    sput v0, Lcom/sec/shabbatmode/receivers/SMNotificationsReceiver;->notification_id:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 29
    const v0, 0x7f020030

    iput v0, p0, Lcom/sec/shabbatmode/receivers/SMNotificationsReceiver;->icon_id:I

    .line 30
    const v0, 0x7f020026

    iput v0, p0, Lcom/sec/shabbatmode/receivers/SMNotificationsReceiver;->large_icon_id:I

    .line 23
    return-void
.end method


# virtual methods
.method public notificationClear(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 147
    const-string v1, "Shabbat ShabbatModeNotiReceiver"

    const-string v2, "Clear Notification"

    invoke-static {v1, v2}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const-string v1, "notification"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 149
    .local v0, "nm":Landroid/app/NotificationManager;
    sget v1, Lcom/sec/shabbatmode/receivers/SMNotificationsReceiver;->notification_id:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 150
    return-void
.end method

.method public notificationCreate(Landroid/content/Context;Ljava/lang/Boolean;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "persistBoolean"    # Ljava/lang/Boolean;

    .prologue
    const v11, 0x7f0a0098

    const/4 v10, 0x1

    const/4 v8, 0x0

    .line 107
    const-string v6, "Shabbat ShabbatModeNotiReceiver"

    const-string v7, "Create Notification"

    invoke-static {v6, v7}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUserPrefsUtils;->getShabbatEntranceGregorianJustDateString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 110
    invoke-static {p1}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUserPrefsUtils;->getShabbatEntranceHebrewJustDateString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 111
    invoke-static {p1}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUserPrefsUtils;->getShabbatEntranceTimeString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 109
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 113
    .local v4, "shabbatEntranceDetailsString":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUserPrefsUtils;->getShabbatExitGregorianJustDateString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 114
    invoke-static {p1}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUserPrefsUtils;->getShabbatExitHebrewJustDateString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 115
    invoke-static {p1}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUserPrefsUtils;->getShabbatExitTimeString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 113
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 119
    .local v5, "shabbatExitDetailsString":Ljava/lang/String;
    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.sec.shabbatmode.preferences.SHABATMODE_ACTIVITY_LAUNCH"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 118
    invoke-static {p1, v8, v6, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 121
    .local v3, "sender":Landroid/app/PendingIntent;
    const-string v6, "notification"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 123
    .local v2, "nm":Landroid/app/NotificationManager;
    new-instance v6, Landroid/app/Notification$Builder;

    invoke-direct {v6, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    iget v7, p0, Lcom/sec/shabbatmode/receivers/SMNotificationsReceiver;->icon_id:I

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 124
    .local v0, "mBuilder":Landroid/app/Notification$Builder;
    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f030008

    invoke-direct {v1, v6, v7}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 126
    .local v1, "mContentView":Landroid/widget/RemoteViews;
    const v6, 0x7f0e001b

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 127
    const v6, 0x7f0e001c

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a0096

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 128
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 129
    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a0097

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 130
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 127
    invoke-virtual {v1, v6, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 132
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 133
    invoke-virtual {v6, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 134
    invoke-virtual {v6, v10}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 135
    const-wide/16 v8, 0x0

    invoke-virtual {v6, v8, v9}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 136
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 137
    invoke-static {}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUtilities;->isOSLollipopOrUp()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 139
    invoke-virtual {v0, v10}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    .line 141
    :cond_0
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    .line 143
    sget v6, Lcom/sec/shabbatmode/receivers/SMNotificationsReceiver;->notification_id:I

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 144
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v12, 0x1

    .line 40
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 41
    .local v0, "action":Ljava/lang/String;
    const/4 v7, 0x0

    .line 42
    .local v7, "state":I
    const-string v9, "START_NOTIFICATION"

    invoke-static {p1, v9}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUserPrefsUtils;->getBooleanFromSharedPreferences(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    .line 43
    .local v3, "forceUpdate":Ljava/lang/Boolean;
    const-string v9, "Shabbat ShabbatModeNotiReceiver"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, " is received"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const-string v9, "com.sec.shabbatmode.preferences.SHABBAT_MODE_SWITCH_CHANGED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 50
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 51
    .local v2, "extras":Landroid/os/Bundle;
    if-eqz v2, :cond_0

    .line 52
    const-string v9, "state"

    invoke-virtual {v2, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 53
    .local v8, "tmp":I
    move v7, v8

    .line 56
    .end local v8    # "tmp":I
    :cond_0
    if-ne v12, v7, :cond_5

    .line 69
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 70
    .local v1, "currentDate":Ljava/util/Calendar;
    invoke-static {p1, v1}, Lcom/sec/shabbatmode/alarm/StageInWeekCalculator;->getStageInWeek(Landroid/content/Context;Ljava/util/Calendar;)Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;

    move-result-object v6

    .line 71
    .local v6, "stageInWeek":Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;
    invoke-static {v6}, Lcom/sec/shabbatmode/alarm/StageInWeekCalculator;->isStageInWeekFriday(Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;)Ljava/lang/Boolean;

    move-result-object v4

    .line 73
    .local v4, "persistBoolean":Ljava/lang/Boolean;
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-nez v9, :cond_1

    const-string v9, "persistBoolean"

    invoke-static {p1, v9}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUserPrefsUtils;->getBooleanFromSharedPreferences(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-nez v9, :cond_1

    .line 74
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 75
    :cond_1
    invoke-virtual {p0, p1, v4}, Lcom/sec/shabbatmode/receivers/SMNotificationsReceiver;->notificationCreate(Landroid/content/Context;Ljava/lang/Boolean;)V

    .line 81
    :cond_2
    invoke-static {p1}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUserPrefsUtils;->getShabbatEntranceGregorianDateString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 82
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 85
    :cond_3
    const-string v9, "persistBoolean"

    invoke-static {p1, v9, v4}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUserPrefsUtils;->saveBooleanToSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 86
    const-string v9, "START_NOTIFICATION"

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-static {p1, v9, v10}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUserPrefsUtils;->saveBooleanToSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 104
    .end local v1    # "currentDate":Ljava/util/Calendar;
    .end local v2    # "extras":Landroid/os/Bundle;
    .end local v4    # "persistBoolean":Ljava/lang/Boolean;
    .end local v6    # "stageInWeek":Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;
    :cond_4
    :goto_0
    return-void

    .line 89
    .restart local v2    # "extras":Landroid/os/Bundle;
    :cond_5
    invoke-virtual {p0, p1}, Lcom/sec/shabbatmode/receivers/SMNotificationsReceiver;->notificationClear(Landroid/content/Context;)V

    goto :goto_0

    .line 95
    .end local v2    # "extras":Landroid/os/Bundle;
    :cond_6
    const-string v9, "com.sec.shabbatmode.preferences.SHABATMODE_ACTIVITY_LAUNCH"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 96
    const-string v9, "Shabbat ShabbatModeNotiReceiver"

    const-string v10, "start from notification"

    invoke-static {v9, v10}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    new-instance v5, Landroid/content/Intent;

    const-class v9, Lcom/sec/shabbatmode/preferences/ShomerShabbatActivity;

    invoke-direct {v5, p1, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 100
    .local v5, "shabbatModeIntent":Landroid/content/Intent;
    const/high16 v9, 0x30000000

    invoke-virtual {v5, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 102
    invoke-virtual {p1, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
