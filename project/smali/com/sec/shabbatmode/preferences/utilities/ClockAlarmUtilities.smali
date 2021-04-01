.class public Lcom/sec/shabbatmode/preferences/utilities/ClockAlarmUtilities;
.super Ljava/lang/Object;
.source "ClockAlarmUtilities.java"


# static fields
.field static final ALARM_ACTIVE:I = 0x1

.field static final ALARM_AT_EVERYDAY:I = 0x1

.field static final ALARM_AT_ONCE:I = 0x0

.field static final ALARM_AT_WEEKDAY:I = 0x2

.field static final ALARM_AT_WEEKLY:I = 0x3

.field static final ALARM_DATA:Ljava/lang/String; = "com.samsung.sec.android.clockpackage.alarm.ALARM_DATA"

.field static final ALARM_DEFAULT_VOLUME:I = 0xb

.field static final ALARM_ID_KEY:Ljava/lang/String; = "alarm_id_"

.field static final ALARM_INACTIVE:I = 0x0

.field static final ALARM_SNOOZE:I = 0x2

.field static final ALARM_SUBDUE:I = 0x3

.field static final AUTHORITY:Ljava/lang/String; = "com.samsung.sec.android.clockpackage"

.field static final BROADCAST_ALARM:Ljava/lang/String; = "com.samsung.sec.android.clockpackage.alarm.ALARM_ALERT"

.field static final COLUMN_ALARMALERTTIME:I = 0x3

.field static final CONTENT_URI:Landroid/net/Uri;

.field static final DATABASE_NAME:Ljava/lang/String; = "alarm.db"

.field static final LAST_ACTION:Ljava/lang/String; = "LAST_ACTION"

.field static final NOTIFY_ALARM_CHANGE:Ljava/lang/String; = "com.samsung.sec.android.clockpackage.alarm.NOTIFY_ALARM_CHANGE"

.field static final NOTIFY_ALARM_CHANGE_WIDGET:Ljava/lang/String; = "com.sec.android.widgetapp.alarmclock.NOTIFY_ALARM_CHANGE_WIDGET"

.field static final TABLE_NAME:Ljava/lang/String; = "alarm"

.field static final TAG:Ljava/lang/String; = "Shabbat ClockAlarmUtilities"

.field static final TAG_ACTIVATION:Ljava/lang/String; = "active"

.field static final TAG_ALARMALERTTIME:Ljava/lang/String; = "alerttime"

.field static final TAG_ALARMTIME:Ljava/lang/String; = "alarmtime"

.field static final TAG_CREATETIME:Ljava/lang/String; = "createtime"

.field static final TAG_ID:Ljava/lang/String; = "_id"

.field private static mPendingIntent:Landroid/app/PendingIntent;

.field static sortbyType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-string v0, "content://com.samsung.sec.android.clockpackage/alarm"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/shabbatmode/preferences/utilities/ClockAlarmUtilities;->CONTENT_URI:Landroid/net/Uri;

    .line 41
    const/4 v0, 0x0

    sput v0, Lcom/sec/shabbatmode/preferences/utilities/ClockAlarmUtilities;->sortbyType:I

    .line 53
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static SetNextAlarmTime(Landroid/content/Context;J)V
    .locals 3
    .param p0, "contex"    # Landroid/content/Context;
    .param p1, "alarmAlertTime"    # J

    .prologue
    .line 200
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.clockpackage.alarm.ALARMALERTTIME"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 201
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "alarmAlertTime"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 202
    const-string v1, "com.android.internal.policy.impl"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 203
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 204
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 205
    return-void
.end method

.method public static disableAllAlarms(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 78
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/sec/shabbatmode/preferences/utilities/ClockAlarmUtilities;->setAlarmActive(Landroid/content/Context;Z)V

    .line 79
    return-void
.end method

.method public static enableAlarms(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 81
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/sec/shabbatmode/preferences/utilities/ClockAlarmUtilities;->setAlarmActive(Landroid/content/Context;Z)V

    .line 82
    return-void
.end method

.method private static enableNextAlert(Landroid/content/Context;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v6, 0x10000000

    const/4 v7, 0x0

    .line 161
    const-string v4, "alarm"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 162
    .local v0, "am":Landroid/app/AlarmManager;
    invoke-static {p0}, Lcom/sec/shabbatmode/preferences/utilities/ClockAlarmUtilities;->getNextAlarm(Landroid/content/Context;)Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;

    move-result-object v2

    .line 165
    .local v2, "item":Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;
    if-eqz v2, :cond_1

    .line 166
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.samsung.sec.android.clockpackage.alarm.ALARM_ALERT"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 167
    .local v1, "intent":Landroid/content/Intent;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 168
    .local v3, "out":Landroid/os/Parcel;
    invoke-virtual {v2, v3}, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->writeToParcel(Landroid/os/Parcel;)V

    .line 169
    invoke-virtual {v3, v7}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 170
    const-string v4, "com.samsung.sec.android.clockpackage.alarm.ALARM_DATA"

    invoke-virtual {v3}, Landroid/os/Parcel;->marshall()[B

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 171
    const/high16 v4, 0x18000000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 172
    invoke-static {p0, v7, v1, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    sput-object v4, Lcom/sec/shabbatmode/preferences/utilities/ClockAlarmUtilities;->mPendingIntent:Landroid/app/PendingIntent;

    .line 175
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x13

    if-ge v4, v5, :cond_0

    .line 176
    iget-wide v4, v2, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->alarmAlertTime:J

    sget-object v6, Lcom/sec/shabbatmode/preferences/utilities/ClockAlarmUtilities;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v7, v4, v5, v6}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 181
    :goto_0
    iget-wide v4, v2, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->alarmAlertTime:J

    invoke-static {p0, v4, v5}, Lcom/sec/shabbatmode/preferences/utilities/ClockAlarmUtilities;->SetNextAlarmTime(Landroid/content/Context;J)V

    .line 182
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 196
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v3    # "out":Landroid/os/Parcel;
    :goto_1
    return-void

    .line 178
    .restart local v1    # "intent":Landroid/content/Intent;
    .restart local v3    # "out":Landroid/os/Parcel;
    :cond_0
    iget-wide v4, v2, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->alarmAlertTime:J

    sget-object v6, Lcom/sec/shabbatmode/preferences/utilities/ClockAlarmUtilities;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v7, v4, v5, v6}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 184
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v3    # "out":Landroid/os/Parcel;
    :cond_1
    sget-object v4, Lcom/sec/shabbatmode/preferences/utilities/ClockAlarmUtilities;->mPendingIntent:Landroid/app/PendingIntent;

    if-eqz v4, :cond_2

    .line 185
    sget-object v4, Lcom/sec/shabbatmode/preferences/utilities/ClockAlarmUtilities;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v4}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 193
    :goto_2
    const/4 v4, 0x0

    sput-object v4, Lcom/sec/shabbatmode/preferences/utilities/ClockAlarmUtilities;->mPendingIntent:Landroid/app/PendingIntent;

    .line 194
    const-wide/16 v4, 0x0

    invoke-static {p0, v4, v5}, Lcom/sec/shabbatmode/preferences/utilities/ClockAlarmUtilities;->SetNextAlarmTime(Landroid/content/Context;J)V

    goto :goto_1

    .line 187
    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.samsung.sec.android.clockpackage.alarm.ALARM_ALERT"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 188
    .restart local v1    # "intent":Landroid/content/Intent;
    invoke-static {p0, v7, v1, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    sput-object v4, Lcom/sec/shabbatmode/preferences/utilities/ClockAlarmUtilities;->mPendingIntent:Landroid/app/PendingIntent;

    .line 190
    sget-object v4, Lcom/sec/shabbatmode/preferences/utilities/ClockAlarmUtilities;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v4}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto :goto_2
.end method

.method private static getAlarmOriginalState(Ljava/lang/String;Landroid/content/Context;)I
    .locals 4
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 310
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 311
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "alarm_id_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 312
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "alarm_id_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 314
    :cond_0
    return v1
.end method

.method public static getAlarmsCursor(Landroid/content/ContentResolver;)Landroid/database/Cursor;
    .locals 6
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;

    .prologue
    const/4 v2, 0x0

    .line 56
    sget-object v1, Lcom/sec/shabbatmode/preferences/utilities/ClockAlarmUtilities;->CONTENT_URI:Landroid/net/Uri;

    .line 57
    invoke-static {}, Lcom/sec/shabbatmode/preferences/utilities/ClockAlarmUtilities;->getSortByString()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    .line 56
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private static getLastAction(Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 338
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 339
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v1, "LAST_ACTION"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 340
    const-string v1, "LAST_ACTION"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 342
    :goto_0
    return-object v1

    :cond_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0
.end method

.method private static final getNextAlarm(Landroid/content/Context;)Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;
    .locals 16
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 208
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 209
    .local v0, "cr":Landroid/content/ContentResolver;
    sget-object v1, Lcom/sec/shabbatmode/preferences/utilities/ClockAlarmUtilities;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "active > 0"

    .line 210
    const/4 v4, 0x0

    const-string v5, "alerttime ASC"

    .line 209
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 212
    .local v6, "c1":Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 213
    const/4 v1, 0x0

    .line 275
    :goto_0
    return-object v1

    .line 216
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 218
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-gtz v1, :cond_1

    .line 219
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 220
    const/4 v6, 0x0

    .line 221
    const/4 v1, 0x0

    goto :goto_0

    .line 224
    :cond_1
    const/4 v1, 0x3

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 225
    .local v14, "time":J
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 226
    const/4 v6, 0x0

    .line 227
    sget-object v1, Lcom/sec/shabbatmode/preferences/utilities/ClockAlarmUtilities;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "alerttime = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 228
    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "createtime DESC"

    .line 227
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 229
    .local v7, "c2":Landroid/database/Cursor;
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 230
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 231
    .local v9, "itemCount":I
    new-array v10, v9, [Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;

    .line 233
    .local v10, "items":[Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-lt v8, v9, :cond_2

    .line 238
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 239
    const/4 v7, 0x0

    .line 240
    const/4 v11, -0x1

    .line 241
    .local v11, "next":I
    const/16 v12, 0x100

    .line 243
    .local v12, "nextNotiType":I
    add-int/lit8 v8, v9, -0x1

    :goto_2
    if-gez v8, :cond_3

    .line 272
    if-ltz v11, :cond_9

    .line 273
    aget-object v1, v10, v11

    goto :goto_0

    .line 234
    .end local v11    # "next":I
    .end local v12    # "nextNotiType":I
    :cond_2
    invoke-static {v7}, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->createItemFromCursor(Landroid/database/Cursor;)Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;

    move-result-object v1

    aput-object v1, v10, v8

    .line 235
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    .line 233
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 244
    .restart local v11    # "next":I
    .restart local v12    # "nextNotiType":I
    :cond_3
    aget-object v1, v10, v8

    iget v1, v1, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->activate:I

    if-lez v1, :cond_5

    .line 245
    aget-object v1, v10, v8

    iget v1, v1, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->notificationType:I

    if-eqz v1, :cond_4

    .line 246
    aget-object v1, v10, v8

    iget v1, v1, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->notificationType:I

    const/16 v2, 0x10

    if-ne v1, v2, :cond_6

    .line 247
    :cond_4
    const/4 v12, 0x0

    .line 248
    move v11, v8

    .line 243
    :cond_5
    :goto_3
    add-int/lit8 v8, v8, -0x1

    goto :goto_2

    .line 249
    :cond_6
    aget-object v1, v10, v8

    iget v1, v1, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->notificationType:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_7

    .line 250
    if-eqz v12, :cond_5

    .line 254
    const/16 v12, 0x100

    .line 255
    move v11, v8

    .line 256
    goto :goto_3

    :cond_7
    aget-object v1, v10, v8

    iget v1, v1, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->notificationType:I

    and-int/lit16 v1, v1, 0x100

    const/16 v2, 0x100

    if-ne v1, v2, :cond_5

    .line 257
    aget-object v1, v10, v8

    iget v1, v1, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->snoozeDoneCount:I

    if-nez v1, :cond_8

    .line 258
    const/4 v12, 0x0

    .line 259
    move v11, v8

    .line 260
    goto :goto_3

    .line 261
    :cond_8
    if-eqz v12, :cond_5

    .line 265
    const/16 v12, 0x100

    .line 266
    move v11, v8

    goto :goto_3

    .line 275
    :cond_9
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method public static getSortByString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 61
    const/4 v0, 0x0

    .line 63
    .local v0, "sortby":Ljava/lang/String;
    sget v1, Lcom/sec/shabbatmode/preferences/utilities/ClockAlarmUtilities;->sortbyType:I

    if-nez v1, :cond_1

    .line 64
    const-string v0, "createtime DESC"

    .line 68
    :cond_0
    :goto_0
    return-object v0

    .line 65
    :cond_1
    sget v1, Lcom/sec/shabbatmode/preferences/utilities/ClockAlarmUtilities;->sortbyType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 66
    const-string v0, "alarmtime ASC"

    goto :goto_0
.end method

.method private static isAlarmInTheFuture(Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;)Ljava/lang/Boolean;
    .locals 5
    .param p0, "item"    # Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;

    .prologue
    const/4 v4, 0x0

    .line 148
    iget v2, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->repeatType:I

    and-int/lit8 v2, v2, 0xf

    add-int/lit8 v2, v2, -0x1

    if-nez v2, :cond_0

    .line 149
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 151
    .local v0, "currentTime":J
    iget-wide v2, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->alarmAlertTime:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 152
    iput v4, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->dailyBriefing:I

    .line 153
    iput v4, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->activate:I

    .line 154
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 157
    .end local v0    # "currentTime":J
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0
.end method

.method private static saveCurrentAlarmsState(Landroid/content/Context;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 285
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 286
    .local v4, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 287
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v5, "alarm_id_"

    const/4 v6, 0x1

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 288
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/shabbatmode/preferences/utilities/ClockAlarmUtilities;->getAlarmsCursor(Landroid/content/ContentResolver;)Landroid/database/Cursor;

    move-result-object v0

    .line 289
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 291
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 299
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 300
    return-void

    .line 292
    :cond_0
    const-string v5, "_id"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 293
    .local v2, "id":Ljava/lang/String;
    const-string v5, "active"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 294
    .local v3, "isActive":I
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "alarm_id_"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 295
    const-string v5, "Shabbat app"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "id: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " isActive: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0
.end method

.method private static saveLastAction(Landroid/content/Context;Ljava/lang/Boolean;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "lastAction"    # Ljava/lang/Boolean;

    .prologue
    .line 325
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 326
    .local v1, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 327
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "LAST_ACTION"

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 328
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 329
    return-void
.end method

.method private static setAlarmActive(Landroid/content/Context;Z)V
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "activate"    # Z

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 88
    invoke-static {p0}, Lcom/sec/shabbatmode/preferences/utilities/ClockAlarmUtilities;->getLastAction(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-ne v5, p1, :cond_0

    .line 89
    invoke-static {p0}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUserPrefsUtils;->getShabbatModeOn(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eq v5, p1, :cond_2

    .line 90
    :cond_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/sec/shabbatmode/preferences/utilities/ClockAlarmUtilities;->saveLastAction(Landroid/content/Context;Ljava/lang/Boolean;)V

    .line 91
    if-nez p1, :cond_1

    .line 92
    invoke-static {p0}, Lcom/sec/shabbatmode/preferences/utilities/ClockAlarmUtilities;->saveCurrentAlarmsState(Landroid/content/Context;)V

    .line 94
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/shabbatmode/preferences/utilities/ClockAlarmUtilities;->getAlarmsCursor(Landroid/content/ContentResolver;)Landroid/database/Cursor;

    move-result-object v1

    .line 95
    .local v1, "cursor":Landroid/database/Cursor;
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 97
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 137
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 139
    .end local v1    # "cursor":Landroid/database/Cursor;
    :cond_2
    return-void

    .line 98
    .restart local v1    # "cursor":Landroid/database/Cursor;
    :cond_3
    const-string v5, "_id"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 99
    .local v2, "id":Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->createItemFromCursor(Landroid/database/Cursor;)Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;

    move-result-object v4

    .line 100
    .local v4, "item":Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;
    iget v3, v4, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->activate:I

    .line 101
    .local v3, "isActive":I
    const/4 v0, 0x1

    .line 103
    .local v0, "currentActive":Z
    if-nez v3, :cond_4

    .line 104
    const/4 v0, 0x0

    .line 107
    :cond_4
    if-eq v0, p1, :cond_5

    .line 108
    if-eqz p1, :cond_7

    .line 109
    invoke-static {v4}, Lcom/sec/shabbatmode/preferences/utilities/ClockAlarmUtilities;->isAlarmInTheFuture(Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 110
    invoke-static {v2, p0}, Lcom/sec/shabbatmode/preferences/utilities/ClockAlarmUtilities;->getAlarmOriginalState(Ljava/lang/String;Landroid/content/Context;)I

    move-result v5

    if-ne v5, v13, :cond_7

    .line 111
    invoke-static {v4}, Lcom/sec/shabbatmode/preferences/utilities/ClockAlarmUtilities;->isAlarmInTheFuture(Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;)Ljava/lang/Boolean;

    .line 112
    iget-boolean v5, v4, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->subdueActivate:Z

    if-eqz v5, :cond_6

    .line 113
    const/4 v5, 0x3

    iput v5, v4, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->activate:I

    .line 117
    :goto_1
    iput v12, v4, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->snoozeDoneCount:I

    .line 118
    iget-wide v6, v4, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->createTime:J

    .line 119
    .local v6, "oldCreationTime":J
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    iput-wide v8, v4, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->createTime:J

    .line 120
    invoke-virtual {v4}, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->calculateOriginalAlertTime()V

    .line 121
    invoke-virtual {v4}, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->calculateFirstAlertTime()V

    .line 122
    iput-wide v6, v4, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->createTime:J

    .line 128
    .end local v6    # "oldCreationTime":J
    :goto_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v8, Lcom/sec/shabbatmode/preferences/utilities/ClockAlarmUtilities;->CONTENT_URI:Landroid/net/Uri;

    .line 129
    invoke-virtual {v4}, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "_id = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    .line 128
    invoke-virtual {v5, v8, v9, v10, v11}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 130
    invoke-static {p0}, Lcom/sec/shabbatmode/preferences/utilities/ClockAlarmUtilities;->enableNextAlert(Landroid/content/Context;)V

    .line 131
    new-instance v5, Landroid/content/Intent;

    const-string v8, "com.samsung.sec.android.clockpackage.alarm.NOTIFY_ALARM_CHANGE"

    invoke-direct {v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 132
    new-instance v5, Landroid/content/Intent;

    const-string v8, "com.sec.android.widgetapp.alarmclock.NOTIFY_ALARM_CHANGE_WIDGET"

    invoke-direct {v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 134
    :cond_5
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_0

    .line 115
    :cond_6
    iput v13, v4, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->activate:I

    goto :goto_1

    .line 125
    :cond_7
    iput v12, v4, Lcom/sec/shabbatmode/preferences/utilities/AlarmItem;->activate:I

    goto :goto_2
.end method
