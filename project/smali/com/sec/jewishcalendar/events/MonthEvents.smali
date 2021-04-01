.class public Lcom/sec/jewishcalendar/events/MonthEvents;
.super Ljava/lang/Object;
.source "MonthEvents.java"


# instance fields
.field private mDayEventsExist:[Z

.field private mMonth:I

.field private mYear:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "year"    # I
    .param p2, "month"    # I

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p1, p0, Lcom/sec/jewishcalendar/events/MonthEvents;->mYear:I

    .line 14
    iput p2, p0, Lcom/sec/jewishcalendar/events/MonthEvents;->mMonth:I

    .line 16
    const/16 v0, 0x20

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/sec/jewishcalendar/events/MonthEvents;->mDayEventsExist:[Z

    .line 17
    invoke-direct {p0}, Lcom/sec/jewishcalendar/events/MonthEvents;->initializeDayEventsArray()V

    .line 18
    return-void
.end method

.method private initializeDayEventsArray()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 22
    const/4 v7, 0x1

    .local v7, "i":I
    :goto_0
    const/16 v9, 0x20

    if-lt v7, v9, :cond_0

    .line 25
    sget-object v4, Lcom/sec/jewishcalendar/events/GlobalEvents;->mEventList:Lcom/sec/jewishcalendar/events/EventList;

    .line 26
    .local v4, "eventList":Lcom/sec/jewishcalendar/events/EventList;
    iget-object v6, v4, Lcom/sec/jewishcalendar/events/EventList;->mEventsProperties:Ljava/util/List;

    .line 28
    .local v6, "eventsProperties":Ljava/util/List;, "Ljava/util/List<Lcom/sec/jewishcalendar/events/EventProperties;>;"
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    if-lt v8, v9, :cond_1

    .line 54
    return-void

    .line 23
    .end local v4    # "eventList":Lcom/sec/jewishcalendar/events/EventList;
    .end local v6    # "eventsProperties":Ljava/util/List;, "Ljava/util/List<Lcom/sec/jewishcalendar/events/EventProperties;>;"
    .end local v8    # "j":I
    :cond_0
    iget-object v9, p0, Lcom/sec/jewishcalendar/events/MonthEvents;->mDayEventsExist:[Z

    aput-boolean v12, v9, v7

    .line 22
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 30
    .restart local v4    # "eventList":Lcom/sec/jewishcalendar/events/EventList;
    .restart local v6    # "eventsProperties":Ljava/util/List;, "Ljava/util/List<Lcom/sec/jewishcalendar/events/EventProperties;>;"
    .restart local v8    # "j":I
    :cond_1
    new-instance v3, Lcom/sec/jewishcalendar/events/DateAndTime;

    iget v9, p0, Lcom/sec/jewishcalendar/events/MonthEvents;->mYear:I

    iget v10, p0, Lcom/sec/jewishcalendar/events/MonthEvents;->mMonth:I

    invoke-direct {v3, v9, v10, v12}, Lcom/sec/jewishcalendar/events/DateAndTime;-><init>(III)V

    .line 31
    .local v3, "dateAndTime":Lcom/sec/jewishcalendar/events/DateAndTime;
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/jewishcalendar/events/EventProperties;

    .line 32
    .local v5, "eventProperties":Lcom/sec/jewishcalendar/events/EventProperties;
    invoke-virtual {v5, v3, v8}, Lcom/sec/jewishcalendar/events/EventProperties;->getNextConcreteEventOnMonth(Lcom/sec/jewishcalendar/events/DateAndTime;I)Lcom/sec/jewishcalendar/events/ConcreteDateEvent;

    move-result-object v0

    .line 34
    .local v0, "concreteDateEvent":Lcom/sec/jewishcalendar/events/ConcreteDateEvent;
    :goto_2
    if-nez v0, :cond_2

    .line 28
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 36
    :cond_2
    invoke-virtual {v0}, Lcom/sec/jewishcalendar/events/ConcreteDateEvent;->getConcreteEventEndDateAndTime()Lcom/sec/jewishcalendar/events/DateAndTime;

    move-result-object v2

    .line 37
    .local v2, "concreteEventEndDateAndTime":Lcom/sec/jewishcalendar/events/DateAndTime;
    new-instance v1, Lcom/sec/jewishcalendar/events/DateAndTime;

    invoke-virtual {v0}, Lcom/sec/jewishcalendar/events/ConcreteDateEvent;->getConcreteEventStartDateAndTime()Lcom/sec/jewishcalendar/events/DateAndTime;

    move-result-object v9

    invoke-direct {v1, v9}, Lcom/sec/jewishcalendar/events/DateAndTime;-><init>(Lcom/sec/jewishcalendar/events/DateAndTime;)V

    .line 41
    .local v1, "concreteEventDateAndTimeCursor":Lcom/sec/jewishcalendar/events/DateAndTime;
    invoke-virtual {v1, v3}, Lcom/sec/jewishcalendar/events/DateAndTime;->compareToDay(Lcom/sec/jewishcalendar/events/DateAndTime;)I

    move-result v9

    if-gez v9, :cond_3

    .line 42
    new-instance v1, Lcom/sec/jewishcalendar/events/DateAndTime;

    .end local v1    # "concreteEventDateAndTimeCursor":Lcom/sec/jewishcalendar/events/DateAndTime;
    invoke-direct {v1, v3}, Lcom/sec/jewishcalendar/events/DateAndTime;-><init>(Lcom/sec/jewishcalendar/events/DateAndTime;)V

    .line 44
    .restart local v1    # "concreteEventDateAndTimeCursor":Lcom/sec/jewishcalendar/events/DateAndTime;
    :cond_3
    :goto_3
    invoke-virtual {v1, v2}, Lcom/sec/jewishcalendar/events/DateAndTime;->compareToDay(Lcom/sec/jewishcalendar/events/DateAndTime;)I

    move-result v9

    if-gtz v9, :cond_4

    .line 45
    invoke-virtual {v1, v3}, Lcom/sec/jewishcalendar/events/DateAndTime;->isSameMonth(Lcom/sec/jewishcalendar/events/DateAndTime;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 51
    :cond_4
    invoke-virtual {v5, v3, v8}, Lcom/sec/jewishcalendar/events/EventProperties;->getNextConcreteEventOnMonth(Lcom/sec/jewishcalendar/events/DateAndTime;I)Lcom/sec/jewishcalendar/events/ConcreteDateEvent;

    move-result-object v0

    goto :goto_2

    .line 47
    :cond_5
    iget-object v9, p0, Lcom/sec/jewishcalendar/events/MonthEvents;->mDayEventsExist:[Z

    iget v10, v1, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nDay:I

    const/4 v11, 0x1

    aput-boolean v11, v9, v10

    .line 49
    const-wide/32 v10, 0x5265c00

    invoke-virtual {v1, v10, v11}, Lcom/sec/jewishcalendar/events/DateAndTime;->getMilliSecondsAfterDateAndTime(J)Lcom/sec/jewishcalendar/events/DateAndTime;

    move-result-object v1

    goto :goto_3
.end method


# virtual methods
.method public doesDayContainEvents(I)Z
    .locals 1
    .param p1, "day"    # I

    .prologue
    .line 58
    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/16 v0, 0x1f

    if-gt p1, v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/MonthEvents;->mDayEventsExist:[Z

    aget-boolean v0, v0, p1

    .line 61
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
