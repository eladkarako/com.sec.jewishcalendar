.class public Lcom/sec/shabbatmode/alarm/StageInWeekCalculator;
.super Ljava/lang/Object;
.source "StageInWeekCalculator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$sec$shabbatmode$alarm$StageInWeekCalculator$StageInWeek:[I = null

.field public static final FIVE_MINUTES:J = 0x493e0L

.field private static final FIVE_SECONDS:J = 0x1388L

.field public static final ONE_DAY:J = 0x5265c00L

.field public static final ONE_HOUR:J = 0x36ee80L

.field public static final ONE_MINUTE:J = 0xea60L

.field public static final ONE_SECOND:J = 0x3e8L

.field public static final ONE_WEEK:J = 0x240c8400L


# direct methods
.method static synthetic $SWITCH_TABLE$com$sec$shabbatmode$alarm$StageInWeekCalculator$StageInWeek()[I
    .locals 3

    .prologue
    .line 11
    sget-object v0, Lcom/sec/shabbatmode/alarm/StageInWeekCalculator;->$SWITCH_TABLE$com$sec$shabbatmode$alarm$StageInWeekCalculator$StageInWeek:[I

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
    sput-object v0, Lcom/sec/shabbatmode/alarm/StageInWeekCalculator;->$SWITCH_TABLE$com$sec$shabbatmode$alarm$StageInWeekCalculator$StageInWeek:[I

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
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getStageInWeek(Landroid/content/Context;Ljava/util/Calendar;)Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;
    .locals 20
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "currentDate"    # Ljava/util/Calendar;

    .prologue
    .line 48
    invoke-static/range {p0 .. p0}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUserPrefsUtils;->getShabbatEntranceTimeInMillis(Landroid/content/Context;)J

    move-result-wide v6

    .line 49
    .local v6, "savedShabbatEntrance":J
    invoke-static/range {p0 .. p0}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUserPrefsUtils;->getShabbatEndTimeInMillis(Landroid/content/Context;)J

    move-result-wide v8

    .line 50
    .local v8, "savedShabbatExit":J
    invoke-virtual/range {p1 .. p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 51
    .local v2, "currentTime":J
    const-string v5, "Shabbat alarm"

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "******* savedShabbatEntrance "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v6, v7}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUtilities;->getFullDateStringFromMilliSeconds(J)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v5, v0}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const/4 v5, 0x7

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 53
    .local v4, "dayOfWeek":I
    const-wide/16 v16, 0x0

    cmp-long v5, v6, v16

    if-nez v5, :cond_1

    .line 54
    const/4 v5, 0x6

    if-eq v4, v5, :cond_0

    const/4 v5, 0x7

    if-ne v4, v5, :cond_1

    .line 55
    :cond_0
    sget-object v5, Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;->UNKNOWN:Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;

    .line 109
    :goto_0
    return-object v5

    .line 58
    :cond_1
    const/4 v5, 0x1

    if-lt v4, v5, :cond_2

    const/4 v5, 0x5

    if-gt v4, v5, :cond_2

    .line 59
    sget-object v5, Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;->BEFORE_FRIDAY:Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;

    goto :goto_0

    .line 62
    :cond_2
    const/4 v5, 0x6

    if-ne v4, v5, :cond_8

    .line 63
    sub-long v12, v6, v2

    .line 64
    .local v12, "timeToShabbatEntrance":J
    const-string v5, "Shabbat alarm"

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "******* timeToShabbatEntrance "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v12, v13}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUtilities;->getTimeStringFromMilliSeconds(J)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v5, v0}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const-wide/32 v16, 0x493e0

    sub-long v16, v12, v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->abs(J)J

    move-result-wide v16

    const-wide/16 v18, 0x1388

    cmp-long v5, v16, v18

    if-gtz v5, :cond_3

    .line 68
    sget-object v5, Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;->FIVE_MINUTES_BEFORE:Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;

    goto :goto_0

    .line 70
    :cond_3
    const-wide/32 v16, 0xea60

    sub-long v16, v12, v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->abs(J)J

    move-result-wide v16

    const-wide/16 v18, 0x1388

    cmp-long v5, v16, v18

    if-gtz v5, :cond_4

    .line 71
    sget-object v5, Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;->ONE_MINUTE_BEFORE:Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;

    goto :goto_0

    .line 77
    :cond_4
    invoke-static {v12, v13}, Ljava/lang/Math;->abs(J)J

    move-result-wide v16

    const-wide/16 v18, 0x1388

    cmp-long v5, v16, v18

    if-gtz v5, :cond_5

    .line 78
    sget-object v5, Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;->SHABBAT_ENTRANCE:Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;

    goto :goto_0

    .line 80
    :cond_5
    const-wide/16 v16, -0x1388

    cmp-long v5, v12, v16

    if-gez v5, :cond_6

    .line 81
    sget-object v5, Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;->SHABBAT:Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;

    goto :goto_0

    .line 83
    :cond_6
    long-to-double v0, v12

    move-wide/from16 v16, v0

    const-wide v18, 0x4135f90000000000L    # 1440000.0

    cmpg-double v5, v16, v18

    if-gez v5, :cond_7

    .line 84
    sget-object v5, Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;->FRIDAY_CLOSE_TO_SHABBAT_ENTRANCE:Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;

    goto :goto_0

    .line 87
    :cond_7
    sget-object v5, Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;->FRIDAY:Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;

    goto :goto_0

    .line 94
    .end local v12    # "timeToShabbatEntrance":J
    :cond_8
    const/4 v5, 0x7

    if-ne v4, v5, :cond_b

    .line 96
    sub-long v14, v8, v2

    .line 97
    .local v14, "timeToShabbatExit":J
    const-wide/16 v16, -0x1

    mul-long v10, v16, v14

    .line 98
    .local v10, "timeSinceShabbatExit":J
    const-wide/16 v16, -0x1388

    cmp-long v5, v10, v16

    if-ltz v5, :cond_9

    const-wide/16 v16, 0x1388

    cmp-long v5, v10, v16

    if-gez v5, :cond_9

    .line 99
    sget-object v5, Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;->SHABBAT_END:Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;

    goto/16 :goto_0

    .line 101
    :cond_9
    const-wide/16 v16, 0x1388

    cmp-long v5, v14, v16

    if-lez v5, :cond_a

    const-wide/32 v16, 0x5265c00

    cmp-long v5, v14, v16

    if-gez v5, :cond_a

    .line 102
    sget-object v5, Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;->SHABBAT:Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;

    goto/16 :goto_0

    .line 105
    :cond_a
    sget-object v5, Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;->BEFORE_FRIDAY:Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;

    goto/16 :goto_0

    .line 109
    .end local v10    # "timeSinceShabbatExit":J
    .end local v14    # "timeToShabbatExit":J
    :cond_b
    sget-object v5, Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;->UNKNOWN:Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;

    goto/16 :goto_0
.end method

.method public static getStageString(Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;)Ljava/lang/String;
    .locals 2
    .param p0, "stageInWeek"    # Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;

    .prologue
    .line 113
    invoke-static {}, Lcom/sec/shabbatmode/alarm/StageInWeekCalculator;->$SWITCH_TABLE$com$sec$shabbatmode$alarm$StageInWeekCalculator$StageInWeek()[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 132
    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    .line 115
    :pswitch_0
    const-string v0, "BEFORE_FRIDAY"

    goto :goto_0

    .line 117
    :pswitch_1
    const-string v0, "FRIDAY"

    goto :goto_0

    .line 119
    :pswitch_2
    const-string v0, "ONE_MINUTE_BEFORE"

    goto :goto_0

    .line 121
    :pswitch_3
    const-string v0, "FIVE_MINUTES_BEFORE"

    goto :goto_0

    .line 123
    :pswitch_4
    const-string v0, "FRIDAY_CLOSE_TO_SHABBAT_ENTRANCE"

    goto :goto_0

    .line 125
    :pswitch_5
    const-string v0, "SHABBAT_ENTRANCE"

    goto :goto_0

    .line 127
    :pswitch_6
    const-string v0, "SHABBAT"

    goto :goto_0

    .line 129
    :pswitch_7
    const-string v0, "SHABBAT_END"

    goto :goto_0

    .line 113
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public static isStageInWeekFriday(Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "stageInWeek"    # Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;

    .prologue
    .line 137
    sget-object v0, Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;->FRIDAY:Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;

    if-eq p0, v0, :cond_0

    .line 138
    sget-object v0, Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;->ONE_MINUTE_BEFORE:Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;

    if-eq p0, v0, :cond_0

    .line 139
    sget-object v0, Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;->FRIDAY_CLOSE_TO_SHABBAT_ENTRANCE:Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;

    if-eq p0, v0, :cond_0

    .line 140
    sget-object v0, Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;->FIVE_MINUTES_BEFORE:Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;

    if-eq p0, v0, :cond_0

    .line 141
    sget-object v0, Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;->SHABBAT_ENTRANCE:Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;

    if-eq p0, v0, :cond_0

    .line 142
    sget-object v0, Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;->SHABBAT:Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;

    if-ne p0, v0, :cond_1

    .line 143
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 145
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method
