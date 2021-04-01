.class public Lcom/sec/jewishcalendar/events/alarm/AlarmNotifications;
.super Landroid/app/Activity;
.source "AlarmNotifications.java"


# static fields
.field static final EDIT_EVENT:I


# instance fields
.field private mEventAlarmListView:Landroid/widget/ListView;

.field private mEventNotifications:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/jewishcalendar/events/ConcreteDateEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/jewishcalendar/events/alarm/AlarmNotifications;->mEventNotifications:Ljava/util/List;

    .line 26
    return-void
.end method

.method static synthetic access$0(Lcom/sec/jewishcalendar/events/alarm/AlarmNotifications;I)V
    .locals 0

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lcom/sec/jewishcalendar/events/alarm/AlarmNotifications;->editChosenEvent(I)V

    return-void
.end method

.method private editChosenEvent(I)V
    .locals 4
    .param p1, "item"    # I

    .prologue
    .line 133
    iget-object v2, p0, Lcom/sec/jewishcalendar/events/alarm/AlarmNotifications;->mEventNotifications:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/jewishcalendar/events/ConcreteDateEvent;

    .line 134
    .local v0, "concreteDateEvent":Lcom/sec/jewishcalendar/events/ConcreteDateEvent;
    invoke-virtual {v0}, Lcom/sec/jewishcalendar/events/ConcreteDateEvent;->getGlobalEventsIndex()I

    move-result v2

    sput v2, Lcom/sec/jewishcalendar/events/GlobalEvents;->m_nSelectedEventId:I

    .line 135
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/sec/jewishcalendar/events/alarm/AlarmNotifications;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/sec/jewishcalendar/events/Event;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 136
    .local v1, "editEventIntent":Landroid/content/Intent;
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/sec/jewishcalendar/events/alarm/AlarmNotifications;->startActivityForResult(Landroid/content/Intent;I)V

    .line 137
    return-void
.end method

.method private initializeEventAlarmsArrayAndListView()V
    .locals 10

    .prologue
    .line 88
    sget v7, Lcom/sec/jewishcalendar/events/GlobalEvents;->m_bIsDateAndTimeOfLastNotificationBarClickInitialized:I

    if-nez v7, :cond_0

    .line 90
    invoke-static {p0}, Lcom/sec/jewishcalendar/events/GlobalEvents;->setNotificationBarClickTime(Landroid/content/Context;)V

    .line 93
    :cond_0
    new-instance v5, Lcom/sec/jewishcalendar/events/DateAndTime;

    sget-object v7, Lcom/sec/jewishcalendar/events/GlobalEvents;->mDateAndTimeOfLastNotificationBarClick:Lcom/sec/jewishcalendar/events/DateAndTime;

    invoke-direct {v5, v7}, Lcom/sec/jewishcalendar/events/DateAndTime;-><init>(Lcom/sec/jewishcalendar/events/DateAndTime;)V

    .line 94
    .local v5, "lastAlarmTime":Lcom/sec/jewishcalendar/events/DateAndTime;
    new-instance v1, Lcom/sec/jewishcalendar/events/DateAndTime;

    invoke-direct {v1}, Lcom/sec/jewishcalendar/events/DateAndTime;-><init>()V

    .line 96
    .local v1, "currentTime":Lcom/sec/jewishcalendar/events/DateAndTime;
    sget-object v7, Lcom/sec/jewishcalendar/events/GlobalEvents;->mEventList:Lcom/sec/jewishcalendar/events/EventList;

    iget-object v3, v7, Lcom/sec/jewishcalendar/events/EventList;->mEventsProperties:Ljava/util/List;

    .line 99
    .local v3, "eventsPropertiesList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/jewishcalendar/events/EventProperties;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-lt v4, v7, :cond_1

    .line 114
    iget-object v7, p0, Lcom/sec/jewishcalendar/events/alarm/AlarmNotifications;->mEventNotifications:Ljava/util/List;

    invoke-static {v7}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 121
    iget-object v7, p0, Lcom/sec/jewishcalendar/events/alarm/AlarmNotifications;->mEventAlarmListView:Landroid/widget/ListView;

    new-instance v8, Lcom/sec/jewishcalendar/events/EventsListAdapter;

    iget-object v9, p0, Lcom/sec/jewishcalendar/events/alarm/AlarmNotifications;->mEventNotifications:Ljava/util/List;

    invoke-direct {v8, p0, v9}, Lcom/sec/jewishcalendar/events/EventsListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 123
    return-void

    .line 101
    :cond_1
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/jewishcalendar/events/EventProperties;

    .line 102
    .local v2, "eventProperties":Lcom/sec/jewishcalendar/events/EventProperties;
    new-instance v6, Lcom/sec/jewishcalendar/events/DateAndTime;

    invoke-direct {v6, v5}, Lcom/sec/jewishcalendar/events/DateAndTime;-><init>(Lcom/sec/jewishcalendar/events/DateAndTime;)V

    .line 103
    .local v6, "lastEventAlarmTime":Lcom/sec/jewishcalendar/events/DateAndTime;
    invoke-virtual {v2, v6, v1, v4}, Lcom/sec/jewishcalendar/events/EventProperties;->getNextConcreteEventWithAlarmInRegion(Lcom/sec/jewishcalendar/events/DateAndTime;Lcom/sec/jewishcalendar/events/DateAndTime;I)Lcom/sec/jewishcalendar/events/ConcreteDateEvent;

    move-result-object v0

    .line 105
    .local v0, "concreteDateEvent":Lcom/sec/jewishcalendar/events/ConcreteDateEvent;
    :goto_1
    if-nez v0, :cond_2

    .line 99
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 107
    :cond_2
    iget-object v7, p0, Lcom/sec/jewishcalendar/events/alarm/AlarmNotifications;->mEventNotifications:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    invoke-virtual {v0}, Lcom/sec/jewishcalendar/events/ConcreteDateEvent;->getConcreteEventAlarmDateAndTime()Lcom/sec/jewishcalendar/events/DateAndTime;

    move-result-object v7

    const-wide/32 v8, 0xea60

    invoke-virtual {v7, v8, v9}, Lcom/sec/jewishcalendar/events/DateAndTime;->getMilliSecondsAfterDateAndTime(J)Lcom/sec/jewishcalendar/events/DateAndTime;

    move-result-object v6

    .line 110
    invoke-virtual {v2, v6, v1, v4}, Lcom/sec/jewishcalendar/events/EventProperties;->getNextConcreteEventWithAlarmInRegion(Lcom/sec/jewishcalendar/events/DateAndTime;Lcom/sec/jewishcalendar/events/DateAndTime;I)Lcom/sec/jewishcalendar/events/ConcreteDateEvent;

    move-result-object v0

    goto :goto_1
.end method

.method private refreshEventAlarmsListView()V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/alarm/AlarmNotifications;->mEventNotifications:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 128
    invoke-direct {p0}, Lcom/sec/jewishcalendar/events/alarm/AlarmNotifications;->initializeEventAlarmsArrayAndListView()V

    .line 129
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 75
    if-nez p1, :cond_0

    .line 77
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 79
    invoke-direct {p0}, Lcom/sec/jewishcalendar/events/alarm/AlarmNotifications;->refreshEventAlarmsListView()V

    .line 82
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 35
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    const v0, 0x7f030004

    invoke-virtual {p0, v0}, Lcom/sec/jewishcalendar/events/alarm/AlarmNotifications;->setContentView(I)V

    .line 37
    const-string v0, "Shabbat BUG"

    const-string v1, "entered AlarmNotifications::onCreate"

    invoke-static {v0, v1}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    sget-object v0, Lcom/sec/jewishcalendar/events/GlobalEvents;->mEventList:Lcom/sec/jewishcalendar/events/EventList;

    if-eqz v0, :cond_0

    sget v0, Lcom/sec/jewishcalendar/events/GlobalEvents;->m_bIsInitialized:I

    if-nez v0, :cond_1

    .line 41
    :cond_0
    invoke-virtual {p0}, Lcom/sec/jewishcalendar/events/alarm/AlarmNotifications;->getBaseContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {p0}, Lcom/sec/jewishcalendar/events/alarm/AlarmNotifications;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/jewishcalendar/events/EventsProvider;->CONTENT_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/sec/jewishcalendar/events/GlobalEvents;->initFromDb(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 43
    sput v7, Lcom/sec/jewishcalendar/events/GlobalEvents;->m_bIsInitialized:I

    .line 46
    :cond_1
    const v0, 0x7f0e0010

    invoke-virtual {p0, v0}, Lcom/sec/jewishcalendar/events/alarm/AlarmNotifications;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/sec/jewishcalendar/events/alarm/AlarmNotifications;->mEventAlarmListView:Landroid/widget/ListView;

    .line 47
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/alarm/AlarmNotifications;->mEventAlarmListView:Landroid/widget/ListView;

    invoke-virtual {v0, v7}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    .line 49
    invoke-direct {p0}, Lcom/sec/jewishcalendar/events/alarm/AlarmNotifications;->initializeEventAlarmsArrayAndListView()V

    .line 51
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/alarm/AlarmNotifications;->mEventAlarmListView:Landroid/widget/ListView;

    new-instance v1, Lcom/sec/jewishcalendar/events/alarm/AlarmNotifications$1;

    invoke-direct {v1, p0}, Lcom/sec/jewishcalendar/events/alarm/AlarmNotifications$1;-><init>(Lcom/sec/jewishcalendar/events/alarm/AlarmNotifications;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 59
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 64
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 67
    invoke-static {p0}, Lcom/sec/jewishcalendar/events/GlobalEvents;->setNotificationBarClickTime(Landroid/content/Context;)V

    .line 69
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
