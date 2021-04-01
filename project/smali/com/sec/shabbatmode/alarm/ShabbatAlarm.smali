.class public Lcom/sec/shabbatmode/alarm/ShabbatAlarm;
.super Ljava/lang/Object;
.source "ShabbatAlarm.java"


# static fields
.field private static synthetic $SWITCH_TABLE$com$sec$shabbatmode$alarm$StageInWeekCalculator$StageInWeek:[I


# instance fields
.field private final FRIDAY_HOUR:I

.field private final FRIDAY_MINUTE:I

.field private mAlarmManager:Landroid/app/AlarmManager;

.field mAlertDialog:Landroid/app/AlertDialog;

.field private mContext:Landroid/content/Context;

.field private mPendingIntent:Landroid/app/PendingIntent;

.field private m_bIsInitialized:Z

.field showToast:Ljava/lang/Boolean;


# direct methods
.method static synthetic $SWITCH_TABLE$com$sec$shabbatmode$alarm$StageInWeekCalculator$StageInWeek()[I
    .locals 3

    .prologue
    .line 29
    sget-object v0, Lcom/sec/shabbatmode/alarm/ShabbatAlarm;->$SWITCH_TABLE$com$sec$shabbatmode$alarm$StageInWeekCalculator$StageInWeek:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;->values()[Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;->BEFORE_FRIDAY:Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;

    invoke-virtual {v1}, Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_8

    :goto_1
    :try_start_1
    sget-object v1, Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;->FIVE_MINUTES_BEFORE:Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;

    invoke-virtual {v1}, Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_7

    :goto_2
    :try_start_2
    sget-object v1, Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;->FRIDAY:Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;

    invoke-virtual {v1}, Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_6

    :goto_3
    :try_start_3
    sget-object v1, Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;->FRIDAY_CLOSE_TO_SHABBAT_ENTRANCE:Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;

    invoke-virtual {v1}, Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_5

    :goto_4
    :try_start_4
    sget-object v1, Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;->ONE_MINUTE_BEFORE:Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;

    invoke-virtual {v1}, Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :goto_5
    :try_start_5
    sget-object v1, Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;->SHABBAT:Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;

    invoke-virtual {v1}, Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_3

    :goto_6
    :try_start_6
    sget-object v1, Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;->SHABBAT_END:Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;

    invoke-virtual {v1}, Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_2

    :goto_7
    :try_start_7
    sget-object v1, Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;->SHABBAT_ENTRANCE:Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;

    invoke-virtual {v1}, Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_1

    :goto_8
    :try_start_8
    sget-object v1, Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;->UNKNOWN:Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;

    invoke-virtual {v1}, Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_0

    :goto_9
    sput-object v0, Lcom/sec/shabbatmode/alarm/ShabbatAlarm;->$SWITCH_TABLE$com$sec$shabbatmode$alarm$StageInWeekCalculator$StageInWeek:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_9

    :catch_1
    move-exception v1

    goto :goto_8

    :catch_2
    move-exception v1

    goto :goto_7

    :catch_3
    move-exception v1

    goto :goto_6

    :catch_4
    move-exception v1

    goto :goto_5

    :catch_5
    move-exception v1

    goto :goto_4

    :catch_6
    move-exception v1

    goto :goto_3

    :catch_7
    move-exception v1

    goto :goto_2

    :catch_8
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x4

    iput v0, p0, Lcom/sec/shabbatmode/alarm/ShabbatAlarm;->FRIDAY_HOUR:I

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/shabbatmode/alarm/ShabbatAlarm;->FRIDAY_MINUTE:I

    .line 51
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/shabbatmode/alarm/ShabbatAlarm;->showToast:Ljava/lang/Boolean;

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v2, 0x4

    iput v2, p0, Lcom/sec/shabbatmode/alarm/ShabbatAlarm;->FRIDAY_HOUR:I

    .line 35
    iput v4, p0, Lcom/sec/shabbatmode/alarm/ShabbatAlarm;->FRIDAY_MINUTE:I

    .line 51
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/shabbatmode/alarm/ShabbatAlarm;->showToast:Ljava/lang/Boolean;

    .line 70
    const-string v2, "Shabbat alarm"

    const-string v3, "entered ShabbatAlarm constructor"

    invoke-static {v2, v3}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    iput-object p1, p0, Lcom/sec/shabbatmode/alarm/ShabbatAlarm;->mContext:Landroid/content/Context;

    .line 72
    const-string v2, "alarm"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    iput-object v2, p0, Lcom/sec/shabbatmode/alarm/ShabbatAlarm;->mAlarmManager:Landroid/app/AlarmManager;

    .line 73
    iget-object v2, p0, Lcom/sec/shabbatmode/alarm/ShabbatAlarm;->mAlarmManager:Landroid/app/AlarmManager;

    if-eqz v2, :cond_0

    .line 74
    const-string v2, "Shabbat app"

    const-string v3, "mAlarmManager!=null"

    invoke-static {v2, v3}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    :cond_0
    const-string v0, "com.sec.shabbatmode.alarm.ShabbatAlarm"

    .line 77
    .local v0, "SHABBAT_ALARM_ACTION":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 78
    .local v1, "mIntent":Landroid/content/Intent;
    invoke-static {p1, v4, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/shabbatmode/alarm/ShabbatAlarm;->mPendingIntent:Landroid/app/PendingIntent;

    .line 79
    iput-boolean v5, p0, Lcom/sec/shabbatmode/alarm/ShabbatAlarm;->m_bIsInitialized:Z

    .line 80
    const-string v2, "Shabbat alarm"

    const-string v3, "exiting ShabbatAlarm constructor"

    invoke-static {v2, v3}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method static synthetic access$1(Lcom/sec/shabbatmode/alarm/ShabbatAlarm;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sec/shabbatmode/alarm/ShabbatAlarm;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2(Lcom/sec/shabbatmode/alarm/ShabbatAlarm;)V
    .locals 0

    .prologue
    .line 462
    invoke-direct {p0}, Lcom/sec/shabbatmode/alarm/ShabbatAlarm;->showShabbatModeCanceledDialog()V

    return-void
.end method

.method private closeDialogsIfOpen()V
    .locals 0

    .prologue
    .line 389
    invoke-static {}, Lcom/sec/shabbatmode/receivers/ScreenOnReceiver;->dismissAlertDialog()V

    .line 390
    invoke-static {}, Lcom/sec/shabbatmode/receivers/IncomingCallReceiver;->dismissAlertDialog()V

    .line 391
    return-void
.end method

.method private dismissAlertDialog()V
    .locals 1

    .prologue
    .line 457
    iget-object v0, p0, Lcom/sec/shabbatmode/alarm/ShabbatAlarm;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/shabbatmode/alarm/ShabbatAlarm;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 458
    iget-object v0, p0, Lcom/sec/shabbatmode/alarm/ShabbatAlarm;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 460
    :cond_0
    return-void
.end method

.method private enterShabbatMode()V
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/sec/shabbatmode/alarm/ShabbatAlarm;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUserPrefsUtils;->activateShabbatMode(Landroid/content/Context;)V

    .line 143
    return-void
.end method

.method private exitShabbatMode()V
    .locals 2

    .prologue
    .line 147
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/shabbatmode/alarm/ShabbatAlarm;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUserPrefsUtils;->exitShabbatMode(Ljava/lang/Boolean;Landroid/content/Context;)V

    .line 148
    return-void
.end method

.method private exitShabbatModeIfRequired()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 367
    const-string v0, "DANI_SHABBAT"

    const-string v1, "entered ExitShabbatModeIfRequired"

    invoke-static {v0, v1}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    iget-object v0, p0, Lcom/sec/shabbatmode/alarm/ShabbatAlarm;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUserPrefsUtils;->getShabbatModeOn(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 378
    const-string v0, "DANI_SHABBAT"

    const-string v1, "ShabbatMode is on, exiting now  !!!"

    invoke-static {v0, v1}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    invoke-direct {p0}, Lcom/sec/shabbatmode/alarm/ShabbatAlarm;->exitShabbatMode()V

    .line 381
    iget-object v0, p0, Lcom/sec/shabbatmode/alarm/ShabbatAlarm;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/sec/shabbatmode/ShabbatModeApplication;->startZmanimGetter(Landroid/content/Context;Landroid/app/ProgressDialog;ZZLjava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 385
    :goto_0
    return-void

    .line 384
    :cond_0
    const-string v0, "DANI_SHABBAT"

    const-string v1, "ShabbatMode is off"

    invoke-static {v0, v1}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setAlarmToShabbatEntrance(Ljava/util/Calendar;J)V
    .locals 2
    .param p1, "nextAlarmDate"    # Ljava/util/Calendar;
    .param p2, "fiveMinutesBeforeShabbatEntrance"    # J

    .prologue
    .line 395
    invoke-virtual {p1, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 396
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/sec/shabbatmode/ShabbatModeApplication;->setShabbatNextAlarm(Ljava/util/Calendar;Z)V

    .line 397
    return-void
.end method

.method private setNextAlarm(JZ)V
    .locals 5
    .param p1, "alarmTimeInMillis"    # J
    .param p3, "accurate"    # Z
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 121
    const-string v0, "Shabbat alarm3"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "entered setNextAlarm with long alarmTimeInMillis is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 122
    const-string v2, "\nalarmTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1, p2}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUtilities;->getFullDateStringFromMilliSeconds(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 121
    invoke-static {v0, v1}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/sec/shabbatmode/alarm/ShabbatAlarm;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/sec/shabbatmode/alarm/ShabbatAlarm;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 124
    const-string v0, "Shabbat alarm3"

    const-string v1, "after mAlarmManager.cancel()"

    invoke-static {v0, v1}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    if-eqz p3, :cond_0

    .line 127
    iget-object v0, p0, Lcom/sec/shabbatmode/alarm/ShabbatAlarm;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/sec/shabbatmode/alarm/ShabbatAlarm;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v3, p1, p2, v1}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 130
    :goto_0
    return-void

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/sec/shabbatmode/alarm/ShabbatAlarm;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/sec/shabbatmode/alarm/ShabbatAlarm;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v3, p1, p2, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method private showAlertDialog(Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;)V
    .locals 2
    .param p1, "stage"    # Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;

    .prologue
    .line 406
    invoke-direct {p0}, Lcom/sec/shabbatmode/alarm/ShabbatAlarm;->dismissAlertDialog()V

    .line 407
    invoke-static {}, Lcom/sec/shabbatmode/alarm/ShabbatAlarm;->$SWITCH_TABLE$com$sec$shabbatmode$alarm$StageInWeekCalculator$StageInWeek()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 417
    :goto_0
    return-void

    .line 409
    :pswitch_0
    invoke-direct {p0}, Lcom/sec/shabbatmode/alarm/ShabbatAlarm;->showFiveMinuteAlert()V

    goto :goto_0

    .line 412
    :pswitch_1
    invoke-direct {p0}, Lcom/sec/shabbatmode/alarm/ShabbatAlarm;->showOneMinuteAlert()V

    goto :goto_0

    .line 407
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private showFiveMinuteAlert()V
    .locals 3

    .prologue
    .line 451
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/shabbatmode/alarm/ShabbatAlarm;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/sec/shabbatmode/activities/FiveMinuteAlertActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 452
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x30000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 453
    iget-object v1, p0, Lcom/sec/shabbatmode/alarm/ShabbatAlarm;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 454
    return-void
.end method

.method private showOneMinuteAlert()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, -0x2

    .line 420
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/shabbatmode/alarm/ShabbatAlarm;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a009e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 421
    iget-object v2, p0, Lcom/sec/shabbatmode/alarm/ShabbatAlarm;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00a0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 420
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 422
    .local v1, "msg":Ljava/lang/String;
    iget-object v0, p0, Lcom/sec/shabbatmode/alarm/ShabbatAlarm;->mContext:Landroid/content/Context;

    .line 423
    iget-object v2, p0, Lcom/sec/shabbatmode/alarm/ShabbatAlarm;->mContext:Landroid/content/Context;

    const v3, 0x7f0a001f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 424
    iget-object v4, p0, Lcom/sec/shabbatmode/alarm/ShabbatAlarm;->mContext:Landroid/content/Context;

    const v5, 0x7f0a0016

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/sec/shabbatmode/alarm/ShabbatAlarm$1;

    invoke-direct {v5, p0}, Lcom/sec/shabbatmode/alarm/ShabbatAlarm$1;-><init>(Lcom/sec/shabbatmode/alarm/ShabbatAlarm;)V

    .line 422
    invoke-static/range {v0 .. v5}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUtilities;->getSystemAlertDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/shabbatmode/alarm/ShabbatAlarm;->setmAlertDialog(Landroid/app/AlertDialog;)V

    .line 440
    iget-object v0, p0, Lcom/sec/shabbatmode/alarm/ShabbatAlarm;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 441
    invoke-static {}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUtilities;->isOSLollipopOrUp()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 442
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 443
    .local v6, "buttonLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v0, 0x32

    const/16 v2, 0x64

    invoke-virtual {v6, v0, v8, v2, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 444
    iget-object v0, p0, Lcom/sec/shabbatmode/alarm/ShabbatAlarm;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 445
    iget-object v0, p0, Lcom/sec/shabbatmode/alarm/ShabbatAlarm;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 447
    .end local v6    # "buttonLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    invoke-virtual {p0}, Lcom/sec/shabbatmode/alarm/ShabbatAlarm;->playSound()V

    .line 448
    return-void
.end method

.method private showShabbatModeCanceledDialog()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 463
    invoke-direct {p0}, Lcom/sec/shabbatmode/alarm/ShabbatAlarm;->dismissAlertDialog()V

    .line 465
    iget-object v0, p0, Lcom/sec/shabbatmode/alarm/ShabbatAlarm;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/shabbatmode/alarm/ShabbatAlarm;->mContext:Landroid/content/Context;

    const v2, 0x7f0a00a2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 466
    iget-object v2, p0, Lcom/sec/shabbatmode/alarm/ShabbatAlarm;->mContext:Landroid/content/Context;

    const v3, 0x7f0a001f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 467
    new-instance v3, Lcom/sec/shabbatmode/alarm/ShabbatAlarm$2;

    invoke-direct {v3, p0}, Lcom/sec/shabbatmode/alarm/ShabbatAlarm$2;-><init>(Lcom/sec/shabbatmode/alarm/ShabbatAlarm;)V

    move-object v5, v4

    .line 465
    invoke-static/range {v0 .. v5}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUtilities;->getSystemAlertDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/shabbatmode/alarm/ShabbatAlarm;->setmAlertDialog(Landroid/app/AlertDialog;)V

    .line 475
    iget-object v0, p0, Lcom/sec/shabbatmode/alarm/ShabbatAlarm;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 476
    return-void
.end method


# virtual methods
.method public cancelAlarms()V
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sec/shabbatmode/alarm/ShabbatAlarm;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/sec/shabbatmode/alarm/ShabbatAlarm;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 90
    return-void
.end method

.method public handleAlarm()V
    .locals 29

    .prologue
    .line 162
    const-string v4, "Shabbat alarm"

    const-string v5, "entered handleAlarm"

    invoke-static {v4, v5}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const-string v4, "Shabbat alarm3"

    const-string v5, "entered handleAlarm"

    invoke-static {v4, v5}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v10

    .line 167
    .local v10, "currentDate":Ljava/util/Calendar;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/shabbatmode/alarm/ShabbatAlarm;->mContext:Landroid/content/Context;

    invoke-static {v4, v10}, Lcom/sec/shabbatmode/alarm/StageInWeekCalculator;->getStageInWeek(Landroid/content/Context;Ljava/util/Calendar;)Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;

    move-result-object v28

    .line 168
    .local v28, "stageInWeek":Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;
    invoke-virtual {v10}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v12

    .line 169
    .local v12, "currentTimeInMillis":J
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v18

    .line 170
    .local v18, "nextAlarmDate":Ljava/util/Calendar;
    invoke-virtual/range {v18 .. v18}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v20

    .line 173
    .local v20, "nextAlarmTimeInMillis":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/shabbatmode/alarm/ShabbatAlarm;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUserPrefsUtils;->getShabbatEntranceTimeInMillis(Landroid/content/Context;)J

    move-result-wide v24

    .line 174
    .local v24, "savedShabbatEntranceTime":J
    const-wide/32 v4, 0x493e0

    sub-long v14, v24, v4

    .line 175
    .local v14, "fiveMinutesBeforeShabbatEntrance":J
    const-wide/32 v4, 0xea60

    sub-long v22, v24, v4

    .line 177
    .local v22, "oneMinuteBeforeShabbatEntrance":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/shabbatmode/alarm/ShabbatAlarm;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUserPrefsUtils;->getShabbatEndTimeInMillis(Landroid/content/Context;)J

    move-result-wide v26

    .line 179
    .local v26, "savedShabbatExitTime":J
    const-string v4, "Shabbat alarm"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "in handleAlarm savedShabbatExitTime is "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v0, v26

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/shabbatmode/alarm/ShabbatAlarm;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUserPrefsUtils;->getIsInAutoUpdateMode(Landroid/content/Context;)Z

    move-result v16

    .line 187
    .local v16, "isAutomaticLocationUpdate":Z
    invoke-direct/range {p0 .. p0}, Lcom/sec/shabbatmode/alarm/ShabbatAlarm;->dismissAlertDialog()V

    .line 189
    invoke-static {}, Lcom/sec/shabbatmode/alarm/ShabbatAlarm;->$SWITCH_TABLE$com$sec$shabbatmode$alarm$StageInWeekCalculator$StageInWeek()[I

    move-result-object v4

    invoke-virtual/range {v28 .. v28}, Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 357
    :goto_0
    return-void

    .line 211
    :pswitch_0
    invoke-direct/range {p0 .. p0}, Lcom/sec/shabbatmode/alarm/ShabbatAlarm;->exitShabbatModeIfRequired()V

    .line 214
    const/4 v4, 0x7

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v11

    .line 216
    .local v11, "dayOfWeek":I
    const/4 v4, 0x7

    if-ne v11, v4, :cond_0

    .line 219
    const-string v4, "Shabbat alarm2"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "BEFORE_FRIDAY dayOfWeek is Saturday nextAlarmDate before adding 6 days is "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Ljava/util/Calendar;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    const-wide/32 v4, 0x1ee62800

    add-long v4, v4, v20

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 221
    const-string v4, "Shabbat alarm2"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "BEFORE_FRIDAY dayOfWeek is Saturday nextAlarmDate after adding 6 days is "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Ljava/util/Calendar;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    :goto_1
    const/16 v4, 0xb

    const/4 v5, 0x4

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 233
    const/16 v4, 0xc

    const/4 v5, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 235
    const-string v4, "Shabbat alarm2"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "BEFORE FRIDAY going to set next alarm to "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Ljava/util/Calendar;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v4}, Lcom/sec/shabbatmode/alarm/ShabbatAlarm;->setNextAlarm(Ljava/util/Calendar;Z)V

    goto :goto_0

    .line 226
    :cond_0
    const-string v4, "Shabbat alarm2"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "BEFORE FRIDAY dayOfWeek is NOT Saturday nextAlarmDate before moving it to Friday is "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Ljava/util/Calendar;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    const/4 v4, 0x7

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v19

    .line 228
    .local v19, "nextAlarmDayOfWeek":I
    rsub-int/lit8 v4, v19, 0x6

    int-to-long v4, v4

    const-wide/32 v6, 0x5265c00

    mul-long/2addr v4, v6

    add-long v4, v4, v20

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 229
    const-string v4, "Shabbat alarm2"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "BEFORE FRIDAY dayOfWeek is NOT Saturday nextAlarmDate after moving it to Friday is "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Ljava/util/Calendar;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 244
    .end local v11    # "dayOfWeek":I
    .end local v19    # "nextAlarmDayOfWeek":I
    :pswitch_1
    if-nez v16, :cond_1

    .line 245
    cmp-long v4, v12, v14

    if-lez v4, :cond_2

    .line 255
    :cond_1
    const-string v4, "DANI_ALARM5"

    const-string v5, "in ShabbatAlarm case Friday going to Globals.mZmanimGetter.init"

    invoke-static {v4, v5}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/shabbatmode/alarm/ShabbatAlarm;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-static/range {v4 .. v9}, Lcom/sec/shabbatmode/ShabbatModeApplication;->startZmanimGetter(Landroid/content/Context;Landroid/app/ProgressDialog;ZZLjava/lang/Boolean;Ljava/lang/Boolean;)V

    goto/16 :goto_0

    .line 260
    :cond_2
    const-string v4, "DANI_ALARM4"

    const-string v5, "ShabbatAlarm : no automatic update going to set a single alarm on next Shabbat entrance"

    invoke-static {v4, v5}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    const-string v4, "DANI_ALARM6"

    const-string v5, "ShabbatAlarm : no automatic update going to set a single alarm on next Shabbat entrance"

    invoke-static {v4, v5}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v14, v15}, Lcom/sec/shabbatmode/alarm/ShabbatAlarm;->setAlarmToShabbatEntrance(Ljava/util/Calendar;J)V

    goto/16 :goto_0

    .line 267
    :pswitch_2
    const-string v4, "Shabbat alarm"

    const-string v5, "in handleAlarm case is FRIDAY_CLOSE_TO_SHABBAT_ENTRANCE"

    invoke-static {v4, v5}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    const-string v4, "Shabbat alarm"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "going to set next alarm in "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 269
    sub-long v6, v14, v12

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "milliseconds"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 268
    invoke-static {v4, v5}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    const-wide/16 v4, 0x3e8

    add-long/2addr v4, v12

    cmp-long v4, v4, v14

    if-gez v4, :cond_4

    .line 277
    move-object/from16 v0, v18

    invoke-virtual {v0, v14, v15}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 278
    const-string v4, "Shabbat alarm"

    const-string v5, "before setNextAlarm to 5 minutes"

    invoke-static {v4, v5}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    :cond_3
    :goto_2
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v4}, Lcom/sec/shabbatmode/alarm/ShabbatAlarm;->setNextAlarm(Ljava/util/Calendar;Z)V

    .line 295
    const-string v4, "Shabbat alarm"

    const-string v5, "after setNextAlarm"

    invoke-static {v4, v5}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 281
    :cond_4
    const-wide/16 v4, 0x3e8

    add-long/2addr v4, v12

    cmp-long v4, v4, v22

    if-gez v4, :cond_5

    .line 283
    move-object/from16 v0, v18

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 284
    const-string v4, "Shabbat alarm"

    const-string v5, "before setNextAlarm to 1 minute"

    invoke-static {v4, v5}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 287
    :cond_5
    const-wide/16 v4, 0x3e8

    add-long/2addr v4, v12

    cmp-long v4, v4, v22

    if-ltz v4, :cond_3

    .line 288
    const-wide/16 v4, 0x3e8

    add-long/2addr v4, v12

    cmp-long v4, v4, v24

    if-gez v4, :cond_3

    .line 290
    move-object/from16 v0, v18

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 291
    const-string v4, "Shabbat alarm"

    const-string v5, "before setNextAlarm to 1 Shabbat entrance"

    invoke-static {v4, v5}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 299
    :pswitch_3
    const-string v4, "Shabbat alarm"

    const-string v5, "in handleAlarm case is FIVE_MINUTES_BEFORE"

    invoke-static {v4, v5}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/shabbatmode/alarm/ShabbatAlarm;->mContext:Landroid/content/Context;

    const v5, 0x7f0a000c

    invoke-static {v4, v5}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUserPrefsUtils;->getBooleanFromSharedPreferences(Landroid/content/Context;I)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    .line 302
    .local v17, "isFiveMinutesAlertOn":Z
    if-eqz v17, :cond_6

    .line 303
    sget-object v4, Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;->FIVE_MINUTES_BEFORE:Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/sec/shabbatmode/alarm/ShabbatAlarm;->showAlertDialog(Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;)V

    .line 305
    :cond_6
    move-object/from16 v0, v18

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 306
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v4}, Lcom/sec/shabbatmode/alarm/ShabbatAlarm;->setNextAlarm(Ljava/util/Calendar;Z)V

    goto/16 :goto_0

    .line 310
    .end local v17    # "isFiveMinutesAlertOn":Z
    :pswitch_4
    const-string v4, "Shabbat alarm"

    const-string v5, "in handleAlarm case is ONE_MINUTE_BEFORE"

    invoke-static {v4, v5}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    sget-object v4, Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;->ONE_MINUTE_BEFORE:Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/sec/shabbatmode/alarm/ShabbatAlarm;->showAlertDialog(Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;)V

    .line 312
    move-object/from16 v0, v18

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 313
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v4}, Lcom/sec/shabbatmode/alarm/ShabbatAlarm;->setNextAlarm(Ljava/util/Calendar;Z)V

    goto/16 :goto_0

    .line 317
    :pswitch_5
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, v26

    invoke-direct {v0, v1, v2, v4}, Lcom/sec/shabbatmode/alarm/ShabbatAlarm;->setNextAlarm(JZ)V

    .line 318
    const-string v4, "Shabbat alarm3"

    const-string v5, "SHABBAT_ENTRANCE going to enter shabbat mode"

    invoke-static {v4, v5}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    invoke-direct/range {p0 .. p0}, Lcom/sec/shabbatmode/alarm/ShabbatAlarm;->enterShabbatMode()V

    goto/16 :goto_0

    .line 323
    :pswitch_6
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, v26

    invoke-direct {v0, v1, v2, v4}, Lcom/sec/shabbatmode/alarm/ShabbatAlarm;->setNextAlarm(JZ)V

    .line 324
    const-string v4, "Shabbat alarm3"

    const-string v5, "SHABBAT going to enter shabbat mode"

    invoke-static {v4, v5}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    invoke-direct/range {p0 .. p0}, Lcom/sec/shabbatmode/alarm/ShabbatAlarm;->enterShabbatMode()V

    goto/16 :goto_0

    .line 330
    :pswitch_7
    invoke-direct/range {p0 .. p0}, Lcom/sec/shabbatmode/alarm/ShabbatAlarm;->closeDialogsIfOpen()V

    .line 331
    const-string v4, "Shabbat alarm"

    const-string v5, "in handleAlarm case is SHABBAT_END"

    invoke-static {v4, v5}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    invoke-direct/range {p0 .. p0}, Lcom/sec/shabbatmode/alarm/ShabbatAlarm;->exitShabbatModeIfRequired()V

    .line 337
    const-wide/32 v4, 0x1ee62800

    add-long v4, v4, v20

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 340
    const/16 v4, 0xb

    const/4 v5, 0x4

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 341
    const/16 v4, 0xc

    const/4 v5, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 343
    const-string v4, "Shabbat alarm"

    const-string v5, "going to set next alarm to next Shabbat entrance"

    invoke-static {v4, v5}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    const-string v4, "Shabbat alarm2"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "SHABBAT_END going to set next alarm to "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Ljava/util/Calendar;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v4}, Lcom/sec/shabbatmode/alarm/ShabbatAlarm;->setNextAlarm(Ljava/util/Calendar;Z)V

    .line 346
    const-string v4, "Shabbat alarm"

    const-string v5, "after set next alarm"

    invoke-static {v4, v5}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/shabbatmode/alarm/ShabbatAlarm;->mContext:Landroid/content/Context;

    const-string v5, "START_NOTIFICATION"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUserPrefsUtils;->saveBooleanToSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    goto/16 :goto_0

    .line 351
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/shabbatmode/alarm/ShabbatAlarm;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-static/range {v4 .. v9}, Lcom/sec/shabbatmode/ShabbatModeApplication;->startZmanimGetter(Landroid/content/Context;Landroid/app/ProgressDialog;ZZLjava/lang/Boolean;Ljava/lang/Boolean;)V

    goto/16 :goto_0

    .line 189
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/sec/shabbatmode/alarm/ShabbatAlarm;->m_bIsInitialized:Z

    return v0
.end method

.method public playSound()V
    .locals 4

    .prologue
    .line 479
    iget-object v2, p0, Lcom/sec/shabbatmode/alarm/ShabbatAlarm;->mContext:Landroid/content/Context;

    const-string v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 480
    .local v0, "nm":Landroid/app/NotificationManager;
    new-instance v2, Landroid/app/Notification$Builder;

    iget-object v3, p0, Lcom/sec/shabbatmode/alarm/ShabbatAlarm;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 481
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 482
    .local v1, "noti":Landroid/app/Notification$Builder;
    const/4 v2, 0x2

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 483
    return-void
.end method

.method public setNextAlarm(Ljava/util/Calendar;Z)V
    .locals 10
    .param p1, "alarmTime"    # Ljava/util/Calendar;
    .param p2, "accurate"    # Z

    .prologue
    .line 98
    const-string v3, "Shabbat alarm"

    const-string v6, "entered setNextAlarm with Calendar"

    invoke-static {v3, v6}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 100
    .local v0, "alarmTimeInMillis":J
    const-string v3, "Shabbat alarm"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "alarm time string : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/Calendar;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string v3, "Shabbat alarm"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "alarmTimeInMillis is "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 105
    .local v2, "currentTime":Ljava/util/Calendar;
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    .line 106
    .local v4, "currentTimeInMillis":J
    const-string v3, "Shabbat alarm"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "going to schedule next alarm to "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUtilities;->getFullDateStringFromMilliSeconds(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const-string v3, "Shabbat alarm"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "going to schedule next alarm to "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v8, v0, v4

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " millis from now"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const-string v3, "DANI_ALARM6"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "going to schedule next alarm to "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v8, v0, v4

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " millis from now"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-direct {p0, v0, v1, p2}, Lcom/sec/shabbatmode/alarm/ShabbatAlarm;->setNextAlarm(JZ)V

    .line 110
    return-void
.end method

.method public setmAlertDialog(Landroid/app/AlertDialog;)V
    .locals 0
    .param p1, "mAlertDialog"    # Landroid/app/AlertDialog;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/sec/shabbatmode/alarm/ShabbatAlarm;->mAlertDialog:Landroid/app/AlertDialog;

    .line 59
    return-void
.end method
