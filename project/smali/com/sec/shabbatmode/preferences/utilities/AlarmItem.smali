.class public final Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;
.super Ljava/lang/Object;
.source "AlarmItem.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final ALARM_DATA:Ljava/lang/String; = "com.samsung.sec.android.clockpackage.alarm.ALARM_DATA"

.field static final COLUMN_ALARMACTIVE:I = 0x1

.field static final COLUMN_ALARMALERTTIME:I = 0x3

.field static final COLUMN_ALARMNAME:I = 0x14

.field static final COLUMN_ALARMSOUNDTONE:I = 0x10

.field static final COLUMN_ALARMSOUNDTYPE:I = 0xf

.field static final COLUMN_ALARMSOUNDURI:I = 0x13

.field static final COLUMN_ALARMSOUNDVOLUME:I = 0x11

.field static final COLUMN_ALARMTIME:I = 0x4

.field static final COLUMN_CREATETIME:I = 0x2

.field static final COLUMN_DAILYBRIEF:I = 0xb

.field static final COLUMN_ID:I = 0x0

.field static final COLUMN_LATITUDE:I = 0x16

.field static final COLUMN_LOCATIONACTIVATE:I = 0x15

.field static final COLUMN_LOCATIONMAP:I = 0x19

.field static final COLUMN_LOCATIONTEXT:I = 0x18

.field static final COLUMN_LONGITUDE:I = 0x17

.field static final COLUMN_NOTIFICATIONTYPE:I = 0x6

.field static final COLUMN_REPEATTYPE:I = 0x5

.field static final COLUMN_SNOOZEACTIVE:I = 0x7

.field static final COLUMN_SNOOZEDONECOUNT:I = 0xa

.field static final COLUMN_SNOOZEDURATION:I = 0x8

.field static final COLUMN_SNOOZEREPEAT:I = 0x9

.field static final COLUMN_SUBDUEACTIVE:I = 0xc

.field static final COLUMN_SUBDUEDURATION:I = 0xd

.field static final COLUMN_SUBDUETONE:I = 0xe

.field static final COLUMN_SUBDUEURI:I = 0x12

.field static final FLAG_NOTIFICATION_DAILY_BRIEFING:I = 0x10

.field static final FLAG_NOTIFICATION_SNOOZE:I = 0x100

.field static final FLAG_NOTIFICATION_SUBDUE:I = 0x1

.field static final TAG:Ljava/lang/String; = "Shabbat AlarmItem"

.field static final TAG_ACTIVATION:Ljava/lang/String; = "active"

.field static final TAG_ALARMALERTTIME:Ljava/lang/String; = "alerttime"

.field static final TAG_ALARMNAME:Ljava/lang/String; = "name"

.field static final TAG_ALARMSOUNDTONE:Ljava/lang/String; = "alarmtone"

.field static final TAG_ALARMSOUNDTYPE:Ljava/lang/String; = "alarmsound"

.field static final TAG_ALARMSOUNDURI:Ljava/lang/String; = "alarmuri"

.field static final TAG_ALARMTIME:Ljava/lang/String; = "alarmtime"

.field static final TAG_ALARMVOLUME:Ljava/lang/String; = "volume"

.field static final TAG_CREATETIME:Ljava/lang/String; = "createtime"

.field static final TAG_DAILYBRIEFING:Ljava/lang/String; = "dailybrief"

.field static final TAG_LATITUDE:Ljava/lang/String; = "latitude"

.field static final TAG_LOCATIONACTIVATE:Ljava/lang/String; = "locationactive"

.field static final TAG_LOCATIONMAP:Ljava/lang/String; = "map"

.field static final TAG_LOCATIONTEXT:Ljava/lang/String; = "locationtext"

.field static final TAG_LONGITUDE:Ljava/lang/String; = "longitude"

.field static final TAG_NOTIFICATIONTYPE:Ljava/lang/String; = "notitype"

.field static final TAG_REPEATTYPE:Ljava/lang/String; = "repeattype"

.field static final TAG_SNOOZEACTIVATION:Ljava/lang/String; = "snzactive"

.field static final TAG_SNOOZEDONECOUNT:Ljava/lang/String; = "snzcount"

.field static final TAG_SNOOZEDURATION:Ljava/lang/String; = "snzduration"

.field static final TAG_SNOOZEREPEAT:Ljava/lang/String; = "snzrepeat"

.field static final TAG_SUBDUEACTIVATION:Ljava/lang/String; = "sbdactive"

.field static final TAG_SUBDUEDURATION:Ljava/lang/String; = "sbdduration"

.field static final TAG_SUBDUETONE:Ljava/lang/String; = "sbdtone"

.field static final TAG_SUBDUEURI:Ljava/lang/String; = "sbduri"


# instance fields
.field activate:I

.field alarmAlertTime:J

.field alarmName:Ljava/lang/String;

.field alarmSoundTone:I

.field alarmSoundType:I

.field alarmTime:I

.field alarmVolume:I

.field createTime:J

.field dailyBriefing:I

.field id:I

.field latitude:D

.field locationActivate:Z

.field locationText:Ljava/lang/String;

.field longitude:D

.field mapImage:Ljava/lang/String;

.field notificationType:I

.field repeatType:I

.field snoozeActivate:Z

.field snoozeDoneCount:I

.field snoozeDuration:I

.field snoozeRepeat:I

.field soundUri:Ljava/lang/String;

.field subdueActivate:Z

.field subdueDuration:I

.field subdueTone:I

.field subdueUri:I


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    const-wide/16 v6, -0x1

    const/4 v4, 0x1

    const/4 v0, -0x1

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput v0, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->id:I

    .line 72
    iput v1, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->activate:I

    .line 73
    iput-wide v6, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->createTime:J

    .line 74
    iput-wide v6, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->alarmAlertTime:J

    .line 75
    iput v0, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->alarmTime:I

    .line 76
    iput v1, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->repeatType:I

    .line 77
    iput v1, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->notificationType:I

    .line 78
    iput-boolean v1, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->snoozeActivate:Z

    .line 79
    iput v4, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->snoozeDuration:I

    .line 80
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->snoozeRepeat:I

    .line 81
    iput v1, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->snoozeDoneCount:I

    .line 82
    iput v1, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->dailyBriefing:I

    .line 83
    iput-boolean v1, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->subdueActivate:Z

    .line 84
    iput v4, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->subdueDuration:I

    .line 85
    iput v1, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->subdueTone:I

    .line 86
    iput v1, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->alarmSoundType:I

    .line 87
    iput v1, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->alarmSoundTone:I

    .line 88
    const/16 v0, 0xb

    iput v0, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->alarmVolume:I

    .line 89
    iput v1, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->subdueUri:I

    .line 90
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->soundUri:Ljava/lang/String;

    .line 91
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->alarmName:Ljava/lang/String;

    .line 92
    iput-boolean v1, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->locationActivate:Z

    .line 93
    iput-wide v2, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->latitude:D

    .line 94
    iput-wide v2, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->longitude:D

    .line 95
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->locationText:Ljava/lang/String;

    .line 96
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->mapImage:Ljava/lang/String;

    .line 13
    return-void
.end method

.method public static final createItemFromCursor(Landroid/database/Cursor;)Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;
    .locals 6
    .param p0, "c"    # Landroid/database/Cursor;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 303
    new-instance v0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;

    invoke-direct {v0}, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;-><init>()V

    .line 304
    .local v0, "item":Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->id:I

    .line 305
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->activate:I

    .line 306
    const/4 v1, 0x2

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->createTime:J

    .line 307
    const/4 v1, 0x3

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->alarmAlertTime:J

    .line 308
    const/4 v1, 0x4

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->alarmTime:I

    .line 309
    const/4 v1, 0x5

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->repeatType:I

    .line 310
    const/4 v1, 0x6

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->notificationType:I

    .line 311
    const/4 v1, 0x7

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v2, :cond_2

    move v1, v2

    :goto_0
    iput-boolean v1, v0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->snoozeActivate:Z

    .line 312
    const/16 v1, 0x8

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->snoozeDuration:I

    .line 313
    const/16 v1, 0x9

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->snoozeRepeat:I

    .line 314
    const/16 v1, 0xa

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->snoozeDoneCount:I

    .line 315
    const/16 v1, 0xb

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->dailyBriefing:I

    .line 316
    const/16 v1, 0xc

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v2, :cond_3

    :goto_1
    iput-boolean v2, v0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->subdueActivate:Z

    .line 317
    const/16 v1, 0xd

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->subdueDuration:I

    .line 318
    const/16 v1, 0xe

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->subdueTone:I

    .line 319
    const/16 v1, 0xf

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->alarmSoundType:I

    .line 320
    const/16 v1, 0x10

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->alarmSoundTone:I

    .line 321
    const/16 v1, 0x11

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->alarmVolume:I

    .line 322
    const/16 v1, 0x12

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->subdueUri:I

    .line 323
    const/16 v1, 0x13

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->soundUri:Ljava/lang/String;

    .line 324
    const/16 v1, 0x14

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->alarmName:Ljava/lang/String;

    .line 326
    iget-object v1, v0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->soundUri:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 327
    const-string v1, ""

    iput-object v1, v0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->soundUri:Ljava/lang/String;

    .line 330
    :cond_0
    iget-object v1, v0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->alarmName:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 331
    const-string v1, ""

    iput-object v1, v0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->alarmName:Ljava/lang/String;

    .line 334
    :cond_1
    return-object v0

    :cond_2
    move v1, v3

    .line 311
    goto :goto_0

    :cond_3
    move v2, v3

    .line 316
    goto :goto_1
.end method

.method private getNextAlertTime(Ljava/util/Calendar;)J
    .locals 5
    .param p1, "c"    # Ljava/util/Calendar;

    .prologue
    const/4 v4, 0x6

    const/4 v3, 0x0

    .line 276
    const-string v0, "Shabbat AlarmItem"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "1 getNextAlertTime : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    iget v0, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->dailyBriefing:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->repeatType:I

    and-int/lit8 v0, v0, 0xf

    add-int/lit8 v0, v0, -0x1

    if-nez v0, :cond_0

    .line 281
    const/4 v0, 0x1

    invoke-virtual {p1, v4, v0}, Ljava/util/Calendar;->add(II)V

    .line 287
    :goto_0
    const-string v0, "Shabbat AlarmItem"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "2 getNextAlertTime : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    const/16 v0, 0xb

    iget v1, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->alarmTime:I

    div-int/lit8 v1, v1, 0x64

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 291
    const/16 v0, 0xc

    iget v1, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->alarmTime:I

    rem-int/lit8 v1, v1, 0x64

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 292
    const/16 v0, 0xd

    invoke-virtual {p1, v0, v3}, Ljava/util/Calendar;->set(II)V

    .line 293
    const/16 v0, 0xe

    invoke-virtual {p1, v0, v3}, Ljava/util/Calendar;->set(II)V

    .line 296
    const-string v0, "Shabbat AlarmItem"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "3 getNextAlertTime : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0

    .line 283
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->getNextAlertDayOffset(Ljava/util/Calendar;)I

    move-result v0

    invoke-virtual {p1, v4, v0}, Ljava/util/Calendar;->add(II)V

    goto :goto_0
.end method


# virtual methods
.method public calculateFirstAlertTime()V
    .locals 4

    .prologue
    .line 208
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 209
    .local v0, "c":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 210
    .local v2, "currentMillis":J
    invoke-virtual {p0, v2, v3}, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->calculateFirstAlertTime(J)V

    .line 211
    return-void
.end method

.method public calculateFirstAlertTime(J)V
    .locals 13
    .param p1, "baseTimeMillis"    # J

    .prologue
    const/4 v12, 0x1

    const/4 v10, 0x0

    .line 217
    const-string v5, "Shabbat AlarmItem"

    const-string v8, "calculateFirstAlertTime"

    invoke-static {v5, v8}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    iget v5, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->dailyBriefing:I

    and-int/lit8 v5, v5, 0x1

    if-ne v5, v12, :cond_0

    .line 220
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 222
    .local v6, "currentTime":J
    iget-wide v8, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->alarmAlertTime:J

    cmp-long v5, v6, v8

    if-lez v5, :cond_0

    .line 223
    iput v10, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->dailyBriefing:I

    .line 224
    iput v10, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->activate:I

    .line 236
    .end local v6    # "currentTime":J
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 237
    .local v0, "c":Ljava/util/Calendar;
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 239
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 240
    .local v1, "c1":Ljava/util/Calendar;
    iget-wide v8, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->alarmAlertTime:J

    invoke-virtual {v1, v8, v9}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 243
    const-string v5, "Shabbat AlarmItem"

    .line 244
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "calendar(baseTimeMillis)="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/ system="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 245
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/alarmAlertT___="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v10, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->alarmAlertTime:J

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 244
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 242
    invoke-static {v5, v8}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 250
    .local v3, "cr":Ljava/util/Calendar;
    iget-wide v8, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->alarmAlertTime:J

    invoke-virtual {v3, v8, v9}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 251
    const/4 v5, 0x6

    const/4 v8, -0x1

    invoke-virtual {v3, v5, v8}, Ljava/util/Calendar;->add(II)V

    .line 253
    invoke-direct {p0, v3}, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->getNextAlertTime(Ljava/util/Calendar;)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->alarmAlertTime:J

    .line 254
    const-string v5, "Shabbat AlarmItem"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "activate="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v9, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->activate:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/ baseTimeMillis="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 255
    const-string v9, "/ alarmAlertT___="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v10, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->alarmAlertTime:J

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/ subdueDuration="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->subdueDuration:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 254
    invoke-static {v5, v8}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    iget-wide v8, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->alarmAlertTime:J

    cmp-long v5, v8, p1

    if-gez v5, :cond_1

    .line 258
    iget-wide v8, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->alarmAlertTime:J

    invoke-virtual {v0, v8, v9}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 259
    invoke-direct {p0, v0}, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->getNextAlertTime(Ljava/util/Calendar;)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->alarmAlertTime:J

    .line 262
    :cond_1
    iget v5, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->dailyBriefing:I

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_2

    iget v5, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->repeatType:I

    and-int/lit8 v5, v5, 0xf

    add-int/lit8 v5, v5, -0x1

    if-nez v5, :cond_2

    .line 263
    const-string v5, "Shabbat AlarmItem"

    const-string v8, "if (((dailyBriefing & 0x1) == 0x0) && ((repeatType & 0xf) - 1 == Alarm.ALARM_AT_ONCE)) {"

    invoke-static {v5, v8}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 265
    .local v2, "cc":Ljava/util/Calendar;
    iget-wide v8, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->alarmAlertTime:J

    invoke-virtual {v2, v8, v9}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 266
    const/4 v5, 0x7

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 268
    .local v4, "curDay":I
    iget v5, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->repeatType:I

    and-int/lit8 v5, v5, 0xf

    iput v5, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->repeatType:I

    .line 269
    iget v5, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->repeatType:I

    rsub-int/lit8 v8, v4, 0x7

    add-int/lit8 v8, v8, 0x1

    mul-int/lit8 v8, v8, 0x4

    shl-int v8, v12, v8

    and-int/lit8 v8, v8, -0x10

    or-int/2addr v5, v8

    iput v5, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->repeatType:I

    .line 270
    const-string v5, "Shabbat AlarmItem"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "repeatType : 0x"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v9, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->repeatType:I

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    .end local v2    # "cc":Ljava/util/Calendar;
    .end local v4    # "curDay":I
    :cond_2
    return-void
.end method

.method public calculateOriginalAlertTime()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 199
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 200
    .local v0, "c":Ljava/util/Calendar;
    const/16 v1, 0xb

    iget v2, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->alarmTime:I

    div-int/lit8 v2, v2, 0x64

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 201
    const/16 v1, 0xc

    iget v2, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->alarmTime:I

    rem-int/lit8 v2, v2, 0x64

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 202
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 203
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 204
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->alarmAlertTime:J

    .line 205
    return-void
.end method

.method public clearRepeatDay(Ljava/util/Calendar;)V
    .locals 4
    .param p1, "c"    # Ljava/util/Calendar;

    .prologue
    .line 373
    const/4 v3, 0x7

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 375
    .local v1, "offset":I
    const/4 v2, 0x1

    .line 377
    .local v2, "operator":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    rsub-int/lit8 v3, v1, 0x7

    if-le v0, v3, :cond_0

    .line 380
    return-void

    .line 378
    :cond_0
    shl-int/lit8 v2, v2, 0x4

    .line 377
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 410
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 414
    :goto_0
    return-object v1

    .line 412
    :catch_0
    move-exception v0

    .line 413
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    .line 414
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 384
    if-eqz p1, :cond_0

    move-object v0, p1

    .line 385
    check-cast v0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;

    .line 386
    .local v0, "item":Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;
    iget-boolean v2, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->snoozeActivate:Z

    iget-boolean v3, v0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->snoozeActivate:Z

    if-ne v2, v3, :cond_0

    .line 387
    iget-wide v2, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->alarmAlertTime:J

    iget-wide v4, v0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->alarmAlertTime:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 388
    iget-object v2, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->alarmName:Ljava/lang/String;

    iget-object v3, v0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->alarmName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 389
    iget v2, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->alarmSoundTone:I

    iget v3, v0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->alarmSoundTone:I

    if-ne v2, v3, :cond_0

    .line 390
    iget v2, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->alarmSoundType:I

    iget v3, v0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->alarmSoundType:I

    if-ne v2, v3, :cond_0

    .line 391
    iget v2, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->alarmVolume:I

    iget v3, v0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->alarmVolume:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->alarmTime:I

    iget v3, v0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->alarmTime:I

    if-ne v2, v3, :cond_0

    .line 392
    iget v2, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->repeatType:I

    iget v3, v0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->repeatType:I

    if-ne v2, v3, :cond_0

    .line 393
    iget v2, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->snoozeDuration:I

    iget v3, v0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->snoozeDuration:I

    if-ne v2, v3, :cond_0

    .line 394
    iget v2, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->snoozeRepeat:I

    iget v3, v0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->snoozeRepeat:I

    if-ne v2, v3, :cond_0

    .line 395
    iget-object v2, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->soundUri:Ljava/lang/String;

    iget-object v3, v0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->soundUri:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->subdueUri:I

    iget v3, v0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->subdueUri:I

    if-ne v2, v3, :cond_0

    .line 396
    iget-boolean v2, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->subdueActivate:Z

    iget-boolean v3, v0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->subdueActivate:Z

    if-ne v2, v3, :cond_0

    .line 397
    iget v2, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->subdueDuration:I

    iget v3, v0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->subdueDuration:I

    if-ne v2, v3, :cond_0

    .line 398
    iget v2, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->subdueTone:I

    iget v3, v0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->subdueTone:I

    if-ne v2, v3, :cond_0

    .line 399
    iget-boolean v2, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->locationActivate:Z

    iget-boolean v3, v0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->locationActivate:Z

    if-ne v2, v3, :cond_0

    .line 400
    iget-object v2, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->locationText:Ljava/lang/String;

    iget-object v3, v0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->locationText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->longitude:D

    iget-wide v4, v0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->longitude:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    .line 386
    const/4 v1, 0x1

    .line 402
    .end local v0    # "item":Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;
    :cond_0
    return v1
.end method

.method public getAlertDayCount()I
    .locals 4

    .prologue
    .line 359
    const/4 v1, 0x0

    .line 360
    .local v1, "nCount":I
    const/4 v2, 0x1

    .line 362
    .local v2, "operator":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v3, 0x7

    if-lt v0, v3, :cond_0

    .line 369
    return v1

    .line 363
    :cond_0
    shl-int/lit8 v2, v2, 0x4

    .line 365
    iget v3, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->repeatType:I

    and-int/2addr v3, v2

    if-lez v3, :cond_1

    .line 366
    add-int/lit8 v1, v1, 0x1

    .line 362
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getContentValues()Landroid/content/ContentValues;
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 164
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 165
    .local v1, "value":Landroid/content/ContentValues;
    const/4 v0, 0x0

    .line 167
    .local v0, "alarmType":I
    iget-boolean v2, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->snoozeActivate:Z

    if-eqz v2, :cond_0

    .line 168
    or-int/lit16 v0, v0, 0x100

    .line 171
    :cond_0
    iget-boolean v2, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->subdueActivate:Z

    if-eqz v2, :cond_1

    .line 172
    or-int/lit8 v0, v0, 0x1

    .line 175
    :cond_1
    const-string v2, "active"

    iget v5, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->activate:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 176
    const-string v2, "createtime"

    iget-wide v6, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->createTime:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 177
    const-string v2, "alerttime"

    iget-wide v6, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->alarmAlertTime:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 178
    const-string v2, "alarmtime"

    iget v5, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->alarmTime:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 179
    const-string v2, "repeattype"

    iget v5, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->repeatType:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 180
    const-string v2, "notitype"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 181
    const-string v5, "snzactive"

    iget-boolean v2, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->snoozeActivate:Z

    if-eqz v2, :cond_2

    move v2, v3

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 182
    const-string v2, "snzduration"

    iget v5, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->snoozeDuration:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 183
    const-string v2, "snzrepeat"

    iget v5, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->snoozeRepeat:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 184
    const-string v2, "snzcount"

    iget v5, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->snoozeDoneCount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 185
    const-string v2, "dailybrief"

    iget v5, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->dailyBriefing:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 186
    const-string v2, "sbdactive"

    iget-boolean v5, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->subdueActivate:Z

    if-eqz v5, :cond_3

    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 187
    const-string v2, "sbdduration"

    iget v3, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->subdueDuration:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 188
    const-string v2, "sbdtone"

    iget v3, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->subdueTone:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 189
    const-string v2, "alarmsound"

    iget v3, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->alarmSoundType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 190
    const-string v2, "alarmtone"

    iget v3, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->alarmSoundTone:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 191
    const-string v2, "volume"

    iget v3, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->alarmVolume:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 192
    const-string v2, "sbduri"

    iget v3, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->subdueUri:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 193
    const-string v3, "alarmuri"

    iget-object v2, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->soundUri:Ljava/lang/String;

    if-nez v2, :cond_4

    const-string v2, ""

    :goto_2
    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const-string v3, "name"

    iget-object v2, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->alarmName:Ljava/lang/String;

    if-nez v2, :cond_5

    const-string v2, ""

    :goto_3
    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    return-object v1

    :cond_2
    move v2, v4

    .line 181
    goto/16 :goto_0

    :cond_3
    move v3, v4

    .line 186
    goto :goto_1

    .line 193
    :cond_4
    iget-object v2, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->soundUri:Ljava/lang/String;

    goto :goto_2

    .line 194
    :cond_5
    iget-object v2, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->alarmName:Ljava/lang/String;

    goto :goto_3
.end method

.method public getNextAlertDayOffset(Ljava/util/Calendar;)I
    .locals 7
    .param p1, "c"    # Ljava/util/Calendar;

    .prologue
    const/4 v6, 0x7

    .line 338
    invoke-virtual {p1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 339
    .local v0, "day":I
    const/high16 v1, 0x10000000

    .line 341
    .local v1, "dayOffset":I
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    if-le v2, v6, :cond_1

    .line 355
    const/4 v2, 0x0

    .end local v2    # "i":I
    :cond_0
    return v2

    .line 342
    .restart local v2    # "i":I
    :cond_1
    add-int v3, v0, v2

    .line 344
    .local v3, "nextDay":I
    if-le v3, v6, :cond_2

    .line 345
    add-int/lit8 v3, v3, -0x7

    .line 348
    :cond_2
    mul-int/lit8 v5, v3, 0x4

    shr-int v4, v1, v5

    .line 350
    .local v4, "operator":I
    iget v5, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->repeatType:I

    shr-int/lit8 v5, v5, 0x4

    and-int/2addr v5, v4

    if-gtz v5, :cond_0

    .line 341
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public readFromIntent(Landroid/content/Intent;)V
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 123
    const-string v2, "com.samsung.sec.android.clockpackage.alarm.ALARM_DATA"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    .line 125
    .local v0, "alarmData":[B
    if-eqz v0, :cond_2

    .line 126
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 127
    .local v1, "in":Landroid/os/Parcel;
    array-length v2, v0

    invoke-virtual {v1, v0, v4, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 128
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 129
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->id:I

    .line 130
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->activate:I

    .line 131
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->createTime:J

    .line 132
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->alarmAlertTime:J

    .line 133
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->alarmTime:I

    .line 134
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->repeatType:I

    .line 135
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->notificationType:I

    .line 136
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v3, :cond_3

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->snoozeActivate:Z

    .line 137
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->snoozeDuration:I

    .line 138
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->snoozeRepeat:I

    .line 139
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->snoozeDoneCount:I

    .line 140
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->dailyBriefing:I

    .line 141
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v3, :cond_4

    :goto_1
    iput-boolean v3, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->subdueActivate:Z

    .line 142
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->subdueDuration:I

    .line 143
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->subdueTone:I

    .line 144
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->alarmSoundType:I

    .line 145
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->alarmSoundTone:I

    .line 146
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->alarmVolume:I

    .line 147
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->subdueUri:I

    .line 148
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->soundUri:Ljava/lang/String;

    .line 149
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->alarmName:Ljava/lang/String;

    .line 151
    iget-object v2, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->soundUri:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 152
    const-string v2, ""

    iput-object v2, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->soundUri:Ljava/lang/String;

    .line 155
    :cond_0
    iget-object v2, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->alarmName:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 156
    const-string v2, ""

    iput-object v2, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->alarmName:Ljava/lang/String;

    .line 159
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 161
    .end local v1    # "in":Landroid/os/Parcel;
    :cond_2
    return-void

    .restart local v1    # "in":Landroid/os/Parcel;
    :cond_3
    move v2, v4

    .line 136
    goto :goto_0

    :cond_4
    move v3, v4

    .line 141
    goto :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "dest"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 99
    iget v0, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    iget v0, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->activate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    iget-wide v4, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->createTime:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 102
    iget-wide v4, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->alarmAlertTime:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 103
    iget v0, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->alarmTime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 104
    iget v0, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->repeatType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    iget v0, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->notificationType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    iget-boolean v0, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->snoozeActivate:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 107
    iget v0, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->snoozeDuration:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 108
    iget v0, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->snoozeRepeat:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    iget v0, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->snoozeDoneCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    iget v0, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->dailyBriefing:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    iget-boolean v0, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->subdueActivate:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    iget v0, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->subdueDuration:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 113
    iget v0, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->subdueTone:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 114
    iget v0, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->alarmSoundType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 115
    iget v0, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->alarmSoundTone:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 116
    iget v0, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->alarmVolume:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 117
    iget v0, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->subdueUri:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->soundUri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->alarmName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 120
    return-void

    :cond_0
    move v0, v2

    .line 106
    goto :goto_0

    :cond_1
    move v1, v2

    .line 111
    goto :goto_1
.end method
