.class public Lcom/sec/jewishcalendar/events/EventsProvider;
.super Landroid/content/ContentProvider;
.source "EventsProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/jewishcalendar/events/EventsProvider$DatabaseHelper;
    }
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field private static final DATABASE_CREATE:Ljava/lang/String; = "create table events_details (_id integer primary key autoincrement, eventDescription text,  fromDateAndTime text, toDateAndTime text, lastOccurenceFromDateAndTime text, lastOccurenceToDateAndTime text, _recurrence integer, _reminder integer )"

.field private static final DATABASE_NAME:Ljava/lang/String; = "Events.db"

.field private static final DATABASE_TABLE:Ljava/lang/String; = "events_details"

.field private static final DATABASE_VERSION:I = 0x4

.field private static final EVENTS:I = 0x1

.field public static final EVENT_DESCRIPTION:Ljava/lang/String; = "eventDescription"

.field private static final EVENT_ID:I = 0x2

.field public static final FROM_DATE_AND_TIME:Ljava/lang/String; = "fromDateAndTime"

.field public static final PROVIDER_NAME:Ljava/lang/String; = "com.sec.jewishcalendar.events.provider.Events"

.field public static final TO_DATE_AND_TIME:Ljava/lang/String; = "toDateAndTime"

.field public static final _ID:Ljava/lang/String; = "_id"

.field public static final _LAST_OCCURUNCE_FROM_DATE_AND_TIME:Ljava/lang/String; = "lastOccurenceFromDateAndTime"

.field public static final _LAST_OCCURUNCE_TO_DATE_AND_TIME:Ljava/lang/String; = "lastOccurenceToDateAndTime"

.field public static final _RECURRENCE:Ljava/lang/String; = "_recurrence"

.field public static final _REMINDER:Ljava/lang/String; = "_reminder"

.field private static final uriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private eventsDB:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 24
    const-string v0, "content://com.sec.jewishcalendar.events.provider.Events/events"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 23
    sput-object v0, Lcom/sec/jewishcalendar/events/EventsProvider;->CONTENT_URI:Landroid/net/Uri;

    .line 40
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/sec/jewishcalendar/events/EventsProvider;->uriMatcher:Landroid/content/UriMatcher;

    .line 41
    sget-object v0, Lcom/sec/jewishcalendar/events/EventsProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.sec.jewishcalendar.events.provider.Events"

    const-string v2, "events"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 42
    sget-object v0, Lcom/sec/jewishcalendar/events/EventsProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.sec.jewishcalendar.events.provider.Events"

    const-string v2, "events/#"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 57
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 7
    .param p1, "arg0"    # Landroid/net/Uri;
    .param p2, "arg1"    # Ljava/lang/String;
    .param p3, "arg2"    # [Ljava/lang/String;

    .prologue
    .line 88
    const/4 v0, 0x0

    .line 89
    .local v0, "count":I
    sget-object v2, Lcom/sec/jewishcalendar/events/EventsProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 105
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 106
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unknown URI "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 105
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 91
    :pswitch_0
    iget-object v2, p0, Lcom/sec/jewishcalendar/events/EventsProvider;->eventsDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 92
    const-string v3, "events_details"

    .line 91
    invoke-virtual {v2, v3, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 108
    :goto_0
    invoke-virtual {p0}, Lcom/sec/jewishcalendar/events/EventsProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 109
    return v0

    .line 97
    :pswitch_1
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 98
    .local v1, "id":Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/jewishcalendar/events/EventsProvider;->eventsDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 99
    const-string v4, "events_details"

    .line 100
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "_id = "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 101
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, " AND ("

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 102
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v6, 0x29

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 101
    :goto_1
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 100
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 98
    invoke-virtual {v3, v4, v2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 104
    goto :goto_0

    .line 102
    :cond_0
    const-string v2, ""

    goto :goto_1

    .line 89
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 115
    sget-object v0, Lcom/sec/jewishcalendar/events/EventsProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 124
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported URI: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :pswitch_0
    const-string v0, "vnd.android.cursor.dir/vnd.com.sec.jewishcalendar.specialevents.events "

    .line 122
    :goto_0
    return-object v0

    :pswitch_1
    const-string v0, "vnd.android.cursor.item/vnd.com.sec.jewishcalendar.specialevents.events "

    goto :goto_0

    .line 115
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 132
    iget-object v1, p0, Lcom/sec/jewishcalendar/events/EventsProvider;->eventsDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 133
    const-string v4, "events_details"

    const-string v5, ""

    .line 132
    invoke-virtual {v1, v4, v5, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 136
    .local v2, "rowID":J
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 138
    sget-object v1, Lcom/sec/jewishcalendar/events/EventsProvider;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 139
    .local v0, "_uri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/sec/jewishcalendar/events/EventsProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 140
    return-object v0

    .line 142
    .end local v0    # "_uri":Landroid/net/Uri;
    :cond_0
    new-instance v1, Landroid/database/SQLException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Failed to insert row into "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public onCreate()Z
    .locals 3

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/sec/jewishcalendar/events/EventsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 149
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Lcom/sec/jewishcalendar/events/EventsProvider$DatabaseHelper;

    invoke-direct {v1, v0}, Lcom/sec/jewishcalendar/events/EventsProvider$DatabaseHelper;-><init>(Landroid/content/Context;)V

    .line 150
    .local v1, "dbHelper":Lcom/sec/jewishcalendar/events/EventsProvider$DatabaseHelper;
    invoke-virtual {v1}, Lcom/sec/jewishcalendar/events/EventsProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/jewishcalendar/events/EventsProvider;->eventsDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 151
    iget-object v2, p0, Lcom/sec/jewishcalendar/events/EventsProvider;->eventsDB:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 158
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 159
    .local v0, "sqlBuilder":Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v1, "events_details"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 161
    sget-object v1, Lcom/sec/jewishcalendar/events/EventsProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 163
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v1, "_id = "

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 165
    :cond_0
    if-eqz p5, :cond_1

    const-string v1, ""

    if-ne p5, v1, :cond_2

    .line 166
    :cond_1
    const-string p5, "fromDateAndTime"

    .line 169
    :cond_2
    iget-object v1, p0, Lcom/sec/jewishcalendar/events/EventsProvider;->eventsDB:Landroid/database/sqlite/SQLiteDatabase;

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v7, p5

    .line 168
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 178
    .local v8, "c":Landroid/database/Cursor;
    invoke-virtual {p0}, Lcom/sec/jewishcalendar/events/EventsProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-interface {v8, v1, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 179
    return-object v8
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 185
    const/4 v0, 0x0

    .line 186
    .local v0, "count":I
    sget-object v1, Lcom/sec/jewishcalendar/events/EventsProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 203
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 204
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown URI "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 203
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 188
    :pswitch_0
    iget-object v1, p0, Lcom/sec/jewishcalendar/events/EventsProvider;->eventsDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 189
    const-string v2, "events_details"

    .line 188
    invoke-virtual {v1, v2, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 206
    :goto_0
    invoke-virtual {p0}, Lcom/sec/jewishcalendar/events/EventsProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 207
    return v0

    .line 195
    :pswitch_1
    iget-object v2, p0, Lcom/sec/jewishcalendar/events/EventsProvider;->eventsDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 196
    const-string v3, "events_details"

    .line 198
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v1, "_id = "

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v5, 0x1

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 199
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, " AND ("

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 200
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v5, 0x29

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 199
    :goto_1
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 198
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 195
    invoke-virtual {v2, v3, p2, v1, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 202
    goto :goto_0

    .line 200
    :cond_0
    const-string v1, ""

    goto :goto_1

    .line 186
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
