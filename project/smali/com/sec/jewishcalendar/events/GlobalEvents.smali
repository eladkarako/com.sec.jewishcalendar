.class public Lcom/sec/jewishcalendar/events/GlobalEvents;
.super Ljava/lang/Object;
.source "GlobalEvents.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/jewishcalendar/events/GlobalEvents$EventAlarm;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;

.field public static mDateAndTimeOfLastNotificationBarClick:Lcom/sec/jewishcalendar/events/DateAndTime;

.field public static mEventAlarm:Lcom/sec/jewishcalendar/events/GlobalEvents$EventAlarm;

.field public static mEventList:Lcom/sec/jewishcalendar/events/EventList;

.field public static m_bIsDateAndTimeOfLastNotificationBarClickInitialized:I

.field public static m_bIsInitialized:I

.field public static m_nSelectedEventId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 21
    const-string v0, "Shabbat BUG"

    sput-object v0, Lcom/sec/jewishcalendar/events/GlobalEvents;->TAG:Ljava/lang/String;

    .line 24
    sput v1, Lcom/sec/jewishcalendar/events/GlobalEvents;->m_bIsInitialized:I

    .line 25
    sput v1, Lcom/sec/jewishcalendar/events/GlobalEvents;->m_nSelectedEventId:I

    .line 28
    sput v1, Lcom/sec/jewishcalendar/events/GlobalEvents;->m_bIsDateAndTimeOfLastNotificationBarClickInitialized:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/sec/jewishcalendar/events/GlobalEvents;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static addToDb(Landroid/content/Context;Lcom/sec/jewishcalendar/events/EventProperties;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "eventProperties"    # Lcom/sec/jewishcalendar/events/EventProperties;

    .prologue
    const/4 v2, 0x0

    .line 109
    invoke-static {p0, p1}, Lcom/sec/jewishcalendar/events/GlobalEvents;->getContentValues(Landroid/content/Context;Lcom/sec/jewishcalendar/events/EventProperties;)Landroid/content/ContentValues;

    move-result-object v6

    .line 111
    .local v6, "values":Landroid/content/ContentValues;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/jewishcalendar/events/EventsProvider;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 114
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/jewishcalendar/events/EventsProvider;->CONTENT_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/jewishcalendar/events/GlobalEvents;->initFromDb(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 116
    return-void
.end method

.method public static deleteDbRow(Landroid/content/Context;Lcom/sec/jewishcalendar/events/EventProperties;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "eventProperties"    # Lcom/sec/jewishcalendar/events/EventProperties;

    .prologue
    .line 130
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "_id=\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sec/jewishcalendar/events/EventProperties;->getEventId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 132
    .local v0, "whereClause":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/sec/jewishcalendar/events/EventsProvider;->CONTENT_URI:Landroid/net/Uri;

    .line 133
    const/4 v3, 0x0

    .line 132
    invoke-virtual {v1, v2, v0, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 134
    return-void
.end method

.method private static getContentValues(Landroid/content/Context;Lcom/sec/jewishcalendar/events/EventProperties;)Landroid/content/ContentValues;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "eventProperties"    # Lcom/sec/jewishcalendar/events/EventProperties;

    .prologue
    .line 140
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 142
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "fromDateAndTime"

    .line 143
    invoke-virtual {p1}, Lcom/sec/jewishcalendar/events/EventProperties;->getEventStartDateAndTime()Lcom/sec/jewishcalendar/events/DateAndTime;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/jewishcalendar/events/DateAndTime;->toDbString()Ljava/lang/String;

    move-result-object v2

    .line 142
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const-string v1, "toDateAndTime"

    .line 145
    invoke-virtual {p1}, Lcom/sec/jewishcalendar/events/EventProperties;->getEventEndDateAndTime()Lcom/sec/jewishcalendar/events/DateAndTime;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/jewishcalendar/events/DateAndTime;->toDbString()Ljava/lang/String;

    move-result-object v2

    .line 144
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const-string v1, "eventDescription"

    .line 147
    invoke-virtual {p1}, Lcom/sec/jewishcalendar/events/EventProperties;->getEventDescription()Ljava/lang/String;

    move-result-object v2

    .line 146
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const-string v1, "_recurrence"

    .line 149
    invoke-virtual {p1}, Lcom/sec/jewishcalendar/events/EventProperties;->getEventRecurrence()Ljava/lang/String;

    move-result-object v2

    .line 148
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const-string v1, "_reminder"

    .line 151
    invoke-virtual {p1}, Lcom/sec/jewishcalendar/events/EventProperties;->getEventReminder()Ljava/lang/String;

    move-result-object v2

    .line 150
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    const-string v1, "lastOccurenceFromDateAndTime"

    .line 153
    invoke-virtual {p1}, Lcom/sec/jewishcalendar/events/EventProperties;->getEventLastOccurenceStartDateAndTime()Lcom/sec/jewishcalendar/events/DateAndTime;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/jewishcalendar/events/DateAndTime;->toDbString()Ljava/lang/String;

    move-result-object v2

    .line 152
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const-string v1, "lastOccurenceToDateAndTime"

    .line 155
    invoke-virtual {p1}, Lcom/sec/jewishcalendar/events/EventProperties;->getEventLastOccurenceEndDateAndTime()Lcom/sec/jewishcalendar/events/DateAndTime;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/jewishcalendar/events/DateAndTime;->toDbString()Ljava/lang/String;

    move-result-object v2

    .line 154
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    return-object v0
.end method

.method private static getNotficationDateAndTimeCursorFromPreferences(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 174
    check-cast p0, Landroid/app/Activity;

    .end local p0    # "context":Landroid/content/Context;
    invoke-virtual {p0, v3}, Landroid/app/Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 176
    .local v0, "preferences":Landroid/content/SharedPreferences;
    sget-object v1, Lcom/sec/jewishcalendar/events/GlobalEvents;->mDateAndTimeOfLastNotificationBarClick:Lcom/sec/jewishcalendar/events/DateAndTime;

    const-string v2, "year"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nYear:I

    .line 177
    sget-object v1, Lcom/sec/jewishcalendar/events/GlobalEvents;->mDateAndTimeOfLastNotificationBarClick:Lcom/sec/jewishcalendar/events/DateAndTime;

    const-string v2, "month"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nMonth:I

    .line 178
    sget-object v1, Lcom/sec/jewishcalendar/events/GlobalEvents;->mDateAndTimeOfLastNotificationBarClick:Lcom/sec/jewishcalendar/events/DateAndTime;

    const-string v2, "day"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nDay:I

    .line 179
    sget-object v1, Lcom/sec/jewishcalendar/events/GlobalEvents;->mDateAndTimeOfLastNotificationBarClick:Lcom/sec/jewishcalendar/events/DateAndTime;

    const-string v2, "hour"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nHour:I

    .line 180
    sget-object v1, Lcom/sec/jewishcalendar/events/GlobalEvents;->mDateAndTimeOfLastNotificationBarClick:Lcom/sec/jewishcalendar/events/DateAndTime;

    const-string v2, "minute"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nMinute:I

    .line 181
    return-void
.end method

.method public static initEventAlarm(Landroid/content/Context;Z)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bSetAlarm"    # Z

    .prologue
    const/4 v10, 0x1

    const/4 v2, 0x0

    .line 51
    sget-object v0, Lcom/sec/jewishcalendar/events/GlobalEvents;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "entered initEventAlarm bSetAlarm is "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    sget-object v0, Lcom/sec/jewishcalendar/events/GlobalEvents;->mEventList:Lcom/sec/jewishcalendar/events/EventList;

    if-eqz v0, :cond_0

    sget v0, Lcom/sec/jewishcalendar/events/GlobalEvents;->m_bIsInitialized:I

    if-nez v0, :cond_3

    .line 55
    :cond_0
    sget-object v0, Lcom/sec/jewishcalendar/events/GlobalEvents;->TAG:Ljava/lang/String;

    const-string v1, "m_bIsInitialized == 0 going to initFromDb"

    invoke-static {v0, v1}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/jewishcalendar/events/EventsProvider;->CONTENT_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/jewishcalendar/events/GlobalEvents;->initFromDb(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 58
    sput v10, Lcom/sec/jewishcalendar/events/GlobalEvents;->m_bIsInitialized:I

    .line 60
    new-instance v0, Lcom/sec/jewishcalendar/events/DateAndTime;

    invoke-direct {v0}, Lcom/sec/jewishcalendar/events/DateAndTime;-><init>()V

    sput-object v0, Lcom/sec/jewishcalendar/events/GlobalEvents;->mDateAndTimeOfLastNotificationBarClick:Lcom/sec/jewishcalendar/events/DateAndTime;

    .line 61
    sput v10, Lcom/sec/jewishcalendar/events/GlobalEvents;->m_bIsDateAndTimeOfLastNotificationBarClickInitialized:I

    .line 65
    :goto_0
    sget-object v0, Lcom/sec/jewishcalendar/events/GlobalEvents;->mEventAlarm:Lcom/sec/jewishcalendar/events/GlobalEvents$EventAlarm;

    if-nez v0, :cond_4

    .line 66
    sget-object v0, Lcom/sec/jewishcalendar/events/GlobalEvents;->TAG:Ljava/lang/String;

    const-string v1, "mEventAlarm == null"

    invoke-static {v0, v1}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    :goto_1
    sget-object v0, Lcom/sec/jewishcalendar/events/GlobalEvents;->mEventAlarm:Lcom/sec/jewishcalendar/events/GlobalEvents$EventAlarm;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/sec/jewishcalendar/events/GlobalEvents;->mEventAlarm:Lcom/sec/jewishcalendar/events/GlobalEvents$EventAlarm;

    invoke-virtual {v0}, Lcom/sec/jewishcalendar/events/GlobalEvents$EventAlarm;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_5

    .line 72
    :cond_1
    sget-object v0, Lcom/sec/jewishcalendar/events/GlobalEvents;->TAG:Ljava/lang/String;

    const-string v1, "mEventAlarm != null || !mEventAlarm.isInitialized() going to create new EventAlarm"

    invoke-static {v0, v1}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    new-instance v0, Lcom/sec/jewishcalendar/events/GlobalEvents$EventAlarm;

    invoke-direct {v0, p0}, Lcom/sec/jewishcalendar/events/GlobalEvents$EventAlarm;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/jewishcalendar/events/GlobalEvents;->mEventAlarm:Lcom/sec/jewishcalendar/events/GlobalEvents$EventAlarm;

    .line 79
    :goto_2
    if-eqz p1, :cond_2

    .line 81
    new-instance v7, Lcom/sec/jewishcalendar/events/DateAndTime;

    invoke-direct {v7}, Lcom/sec/jewishcalendar/events/DateAndTime;-><init>()V

    .line 82
    .local v7, "currentDateAndTime":Lcom/sec/jewishcalendar/events/DateAndTime;
    sget-object v0, Lcom/sec/jewishcalendar/events/GlobalEvents;->mEventList:Lcom/sec/jewishcalendar/events/EventList;

    invoke-virtual {v0, v7}, Lcom/sec/jewishcalendar/events/EventList;->findNextConcreteDateEventWithAlarm(Lcom/sec/jewishcalendar/events/DateAndTime;)Lcom/sec/jewishcalendar/events/ConcreteDateEvent;

    move-result-object v6

    .line 84
    .local v6, "concreteDateEvent":Lcom/sec/jewishcalendar/events/ConcreteDateEvent;
    if-eqz v6, :cond_6

    .line 86
    sget-object v0, Lcom/sec/jewishcalendar/events/GlobalEvents;->TAG:Ljava/lang/String;

    const-string v1, "concreteDateEvent != null going to set an alarm"

    invoke-static {v0, v1}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-virtual {v6}, Lcom/sec/jewishcalendar/events/ConcreteDateEvent;->getConcreteEventAlarmDateAndTime()Lcom/sec/jewishcalendar/events/DateAndTime;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/jewishcalendar/events/DateAndTime;->toTime()Landroid/text/format/Time;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v8

    .line 88
    .local v8, "nextConcreteEventAlarmTimeInMilliseconds":J
    sget-object v0, Lcom/sec/jewishcalendar/events/GlobalEvents;->mEventAlarm:Lcom/sec/jewishcalendar/events/GlobalEvents$EventAlarm;

    invoke-virtual {v0, v8, v9}, Lcom/sec/jewishcalendar/events/GlobalEvents$EventAlarm;->setAlarm(J)V

    .line 93
    .end local v6    # "concreteDateEvent":Lcom/sec/jewishcalendar/events/ConcreteDateEvent;
    .end local v7    # "currentDateAndTime":Lcom/sec/jewishcalendar/events/DateAndTime;
    .end local v8    # "nextConcreteEventAlarmTimeInMilliseconds":J
    :cond_2
    :goto_3
    return-void

    .line 64
    :cond_3
    sget-object v0, Lcom/sec/jewishcalendar/events/GlobalEvents;->TAG:Ljava/lang/String;

    const-string v1, "m_bIsInitialized == 1 SKIPPED going to initFromDb"

    invoke-static {v0, v1}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 68
    :cond_4
    sget-object v0, Lcom/sec/jewishcalendar/events/GlobalEvents;->TAG:Ljava/lang/String;

    const-string v1, "mEventAlarm != null"

    invoke-static {v0, v1}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 76
    :cond_5
    sget-object v0, Lcom/sec/jewishcalendar/events/GlobalEvents;->TAG:Ljava/lang/String;

    const-string v1, "didn\'t create new EventAlarm"

    invoke-static {v0, v1}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 91
    .restart local v6    # "concreteDateEvent":Lcom/sec/jewishcalendar/events/ConcreteDateEvent;
    .restart local v7    # "currentDateAndTime":Lcom/sec/jewishcalendar/events/DateAndTime;
    :cond_6
    sget-object v0, Lcom/sec/jewishcalendar/events/GlobalEvents;->TAG:Ljava/lang/String;

    const-string v1, "concreteDateEvent == null NOT going to set an alarm"

    invoke-static {v0, v1}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method public static initFromDb(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 97
    new-instance v0, Lcom/sec/jewishcalendar/events/EventList;

    invoke-direct {v0, p1}, Lcom/sec/jewishcalendar/events/EventList;-><init>(Landroid/database/Cursor;)V

    sput-object v0, Lcom/sec/jewishcalendar/events/GlobalEvents;->mEventList:Lcom/sec/jewishcalendar/events/EventList;

    .line 98
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 100
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    return-void

    .line 102
    :cond_0
    sget-object v0, Lcom/sec/jewishcalendar/events/GlobalEvents;->mEventList:Lcom/sec/jewishcalendar/events/EventList;

    new-instance v1, Lcom/sec/jewishcalendar/events/EventProperties;

    invoke-direct {v1, p0, p1}, Lcom/sec/jewishcalendar/events/EventProperties;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    invoke-virtual {v0, v1}, Lcom/sec/jewishcalendar/events/EventList;->AddEvent(Lcom/sec/jewishcalendar/events/EventProperties;)V

    .line 103
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0
.end method

.method public static setNotificationBarClickTime(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    sget v0, Lcom/sec/jewishcalendar/events/GlobalEvents;->m_bIsDateAndTimeOfLastNotificationBarClickInitialized:I

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lcom/sec/jewishcalendar/events/DateAndTime;

    invoke-direct {v0}, Lcom/sec/jewishcalendar/events/DateAndTime;-><init>()V

    sput-object v0, Lcom/sec/jewishcalendar/events/GlobalEvents;->mDateAndTimeOfLastNotificationBarClick:Lcom/sec/jewishcalendar/events/DateAndTime;

    .line 38
    invoke-static {p0}, Lcom/sec/jewishcalendar/events/GlobalEvents;->getNotficationDateAndTimeCursorFromPreferences(Landroid/content/Context;)V

    .line 39
    const/4 v0, 0x1

    sput v0, Lcom/sec/jewishcalendar/events/GlobalEvents;->m_bIsDateAndTimeOfLastNotificationBarClickInitialized:I

    .line 47
    :goto_0
    return-void

    .line 44
    :cond_0
    new-instance v0, Lcom/sec/jewishcalendar/events/DateAndTime;

    invoke-direct {v0}, Lcom/sec/jewishcalendar/events/DateAndTime;-><init>()V

    sput-object v0, Lcom/sec/jewishcalendar/events/GlobalEvents;->mDateAndTimeOfLastNotificationBarClick:Lcom/sec/jewishcalendar/events/DateAndTime;

    .line 45
    invoke-static {p0}, Lcom/sec/jewishcalendar/events/GlobalEvents;->writeNotificationDateAndTimeCursorToPreferences(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static updateDbRow(Landroid/content/Context;Lcom/sec/jewishcalendar/events/EventProperties;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "eventProperties"    # Lcom/sec/jewishcalendar/events/EventProperties;

    .prologue
    .line 120
    new-instance v1, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "_id=\'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sec/jewishcalendar/events/EventProperties;->getEventId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 122
    .local v1, "whereClause":Ljava/lang/String;
    invoke-static {p0, p1}, Lcom/sec/jewishcalendar/events/GlobalEvents;->getContentValues(Landroid/content/Context;Lcom/sec/jewishcalendar/events/EventProperties;)Landroid/content/ContentValues;

    move-result-object v0

    .line 123
    .local v0, "values":Landroid/content/ContentValues;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/sec/jewishcalendar/events/EventsProvider;->CONTENT_URI:Landroid/net/Uri;

    .line 124
    const/4 v4, 0x0

    .line 123
    invoke-virtual {v2, v3, v0, v1, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 125
    return-void
.end method

.method private static writeNotificationDateAndTimeCursorToPreferences(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 161
    check-cast p0, Landroid/app/Activity;

    .end local p0    # "context":Landroid/content/Context;
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 162
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 164
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "year"

    sget-object v3, Lcom/sec/jewishcalendar/events/GlobalEvents;->mDateAndTimeOfLastNotificationBarClick:Lcom/sec/jewishcalendar/events/DateAndTime;

    iget v3, v3, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nYear:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 165
    const-string v2, "month"

    sget-object v3, Lcom/sec/jewishcalendar/events/GlobalEvents;->mDateAndTimeOfLastNotificationBarClick:Lcom/sec/jewishcalendar/events/DateAndTime;

    iget v3, v3, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nMonth:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 166
    const-string v2, "day"

    sget-object v3, Lcom/sec/jewishcalendar/events/GlobalEvents;->mDateAndTimeOfLastNotificationBarClick:Lcom/sec/jewishcalendar/events/DateAndTime;

    iget v3, v3, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nDay:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 167
    const-string v2, "hour"

    sget-object v3, Lcom/sec/jewishcalendar/events/GlobalEvents;->mDateAndTimeOfLastNotificationBarClick:Lcom/sec/jewishcalendar/events/DateAndTime;

    iget v3, v3, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nHour:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 168
    const-string v2, "minute"

    sget-object v3, Lcom/sec/jewishcalendar/events/GlobalEvents;->mDateAndTimeOfLastNotificationBarClick:Lcom/sec/jewishcalendar/events/DateAndTime;

    iget v3, v3, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nMinute:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 169
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 170
    return-void
.end method
