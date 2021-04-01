.class public Lcom/sec/shabbatmode/receivers/LocationAndTimeUpdatedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LocationAndTimeUpdatedReceiver.java"


# static fields
.field private static synthetic $SWITCH_TABLE$com$sec$shabbatmode$alarm$StageInWeekCalculator$StageInWeek:[I


# direct methods
.method static synthetic $SWITCH_TABLE$com$sec$shabbatmode$alarm$StageInWeekCalculator$StageInWeek()[I
    .locals 3

    .prologue
    .line 16
    sget-object v0, Lcom/sec/shabbatmode/receivers/LocationAndTimeUpdatedReceiver;->$SWITCH_TABLE$com$sec$shabbatmode$alarm$StageInWeekCalculator$StageInWeek:[I

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
    sput-object v0, Lcom/sec/shabbatmode/receivers/LocationAndTimeUpdatedReceiver;->$SWITCH_TABLE$com$sec$shabbatmode$alarm$StageInWeekCalculator$StageInWeek:[I

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
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private setAlarmToShabbatEntrance(Ljava/util/Calendar;J)V
    .locals 2
    .param p1, "nextAlarmDate"    # Ljava/util/Calendar;
    .param p2, "fiveMinutesBeforeShabbatEntrance"    # J

    .prologue
    .line 120
    invoke-virtual {p1, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 121
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/sec/shabbatmode/ShabbatModeApplication;->setShabbatNextAlarm(Ljava/util/Calendar;Z)V

    .line 122
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 22
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 22
    const-string v15, "Shabbat alarm"

    const-string v16, "entered LocationAndTimeUpdatesReceiver:onReceive"

    invoke-static/range {v15 .. v16}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    const-string v15, "Shabbat alarm3"

    const-string v16, "entered LocationAndTimeUpdatesReceiver:onReceive"

    invoke-static/range {v15 .. v16}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    invoke-static/range {p1 .. p1}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUserPrefsUtils;->getShabbatModeEnabled(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    .line 26
    .local v8, "isShabbatModeEnabled":Z
    if-nez v8, :cond_0

    .line 116
    :goto_0
    return-void

    .line 29
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 31
    .local v2, "currentDate":Ljava/util/Calendar;
    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/sec/shabbatmode/alarm/StageInWeekCalculator;->getStageInWeek(Landroid/content/Context;Ljava/util/Calendar;)Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;

    move-result-object v14

    .line 33
    .local v14, "stageInWeek":Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v9

    .line 34
    .local v9, "nextAlarmDate":Ljava/util/Calendar;
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    .line 36
    .local v4, "currentTimeInMillis":J
    invoke-static/range {p1 .. p1}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUserPrefsUtils;->getShabbatEntranceTimeInMillis(Landroid/content/Context;)J

    move-result-wide v12

    .line 37
    .local v12, "savedShabbatEntranceTime":J
    const-wide/32 v16, 0x493e0

    sub-long v6, v12, v16

    .line 40
    .local v6, "fiveMinutesBeforeShabbatEntrance":J
    invoke-static/range {p1 .. p1}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUserPrefsUtils;->getIsInAutoUpdateMode(Landroid/content/Context;)Z

    move-result v3

    .line 41
    .local v3, "isAutomaticLocationUpdate":Z
    sub-long v10, v12, v4

    .line 43
    .local v10, "millisTillShabbatEntrance":J
    invoke-static {}, Lcom/sec/shabbatmode/receivers/LocationAndTimeUpdatedReceiver;->$SWITCH_TABLE$com$sec$shabbatmode$alarm$StageInWeekCalculator$StageInWeek()[I

    move-result-object v15

    invoke-virtual {v14}, Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;->ordinal()I

    move-result v16

    aget v15, v15, v16

    packed-switch v15, :pswitch_data_0

    goto :goto_0

    .line 51
    :pswitch_0
    invoke-static {}, Lcom/sec/shabbatmode/ShabbatModeApplication;->handleShabbatAlarm()V

    goto :goto_0

    .line 63
    :pswitch_1
    const-string v15, "Shabbat alarm3"

    const-string v16, "StageInWeek.Friday"

    invoke-static/range {v15 .. v16}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-static {v0, v15}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUtilities;->sendCandlesNotificationBroadcast(Landroid/content/Context;Ljava/lang/Boolean;)V

    .line 69
    if-eqz v3, :cond_1

    .line 71
    const-string v15, "Shabbat alarm5"

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "in LocationAndTimeRecalculateReceiver going to set next alarm millisTillShabbatEntrance is "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    move-object/from16 v0, v16

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 71
    invoke-static/range {v15 .. v16}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    long-to-double v0, v4

    move-wide/from16 v16, v0

    long-to-double v0, v10

    move-wide/from16 v18, v0

    const-wide v20, 0x3fd999999999999aL    # 0.4

    mul-double v18, v18, v20

    add-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-long v0, v0

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v9, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 79
    const/4 v15, 0x0

    invoke-static {v9, v15}, Lcom/sec/shabbatmode/ShabbatModeApplication;->setShabbatNextAlarm(Ljava/util/Calendar;Z)V

    goto :goto_0

    .line 83
    :cond_1
    const-string v15, "Shabbat alarm6"

    const-string v16, "no automatic update, going to set next alarm to ShabbatEntrance"

    invoke-static/range {v15 .. v16}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v6, v7}, Lcom/sec/shabbatmode/receivers/LocationAndTimeUpdatedReceiver;->setAlarmToShabbatEntrance(Ljava/util/Calendar;J)V

    goto/16 :goto_0

    .line 111
    :pswitch_2
    const-string v15, "Shabbat alarm3"

    const-string v16, "Going to call handleAlarm"

    invoke-static/range {v15 .. v16}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    invoke-static {}, Lcom/sec/shabbatmode/ShabbatModeApplication;->handleShabbatAlarm()V

    goto/16 :goto_0

    .line 43
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
