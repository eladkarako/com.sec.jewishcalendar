.class public Lcom/sec/jewishcalendar/events/EventList;
.super Ljava/lang/Object;
.source "EventList.java"


# instance fields
.field public mEventsProperties:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/jewishcalendar/events/EventProperties;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/jewishcalendar/events/EventList;->mEventsProperties:Ljava/util/List;

    .line 15
    return-void
.end method


# virtual methods
.method public AddEvent(Lcom/sec/jewishcalendar/events/EventProperties;)V
    .locals 1
    .param p1, "eventProperties"    # Lcom/sec/jewishcalendar/events/EventProperties;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/EventList;->mEventsProperties:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/EventList;->mEventsProperties:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 21
    return-void
.end method

.method public findCurrentAlarmConcreteDateEvent(Lcom/sec/jewishcalendar/events/DateAndTime;)Lcom/sec/jewishcalendar/events/ConcreteDateEvent;
    .locals 5
    .param p1, "dateAndTime"    # Lcom/sec/jewishcalendar/events/DateAndTime;

    .prologue
    .line 39
    const/4 v0, 0x0

    .line 41
    .local v0, "concreteDateEvent":Lcom/sec/jewishcalendar/events/ConcreteDateEvent;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Lcom/sec/jewishcalendar/events/EventList;->mEventsProperties:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt v2, v4, :cond_0

    .line 52
    const/4 v4, 0x0

    :goto_1
    return-object v4

    .line 43
    :cond_0
    iget-object v4, p0, Lcom/sec/jewishcalendar/events/EventList;->mEventsProperties:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/jewishcalendar/events/EventProperties;

    .line 44
    .local v1, "evenProperties":Lcom/sec/jewishcalendar/events/EventProperties;
    invoke-virtual {v1}, Lcom/sec/jewishcalendar/events/EventProperties;->getEventReminder()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 45
    .local v3, "reminder":I
    if-eqz v3, :cond_1

    .line 47
    invoke-virtual {v1, p1, v2}, Lcom/sec/jewishcalendar/events/EventProperties;->getCurrentAlarmConcreteEvent(Lcom/sec/jewishcalendar/events/DateAndTime;I)Lcom/sec/jewishcalendar/events/ConcreteDateEvent;

    move-result-object v0

    .line 48
    if-eqz v0, :cond_1

    move-object v4, v0

    .line 49
    goto :goto_1

    .line 41
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public findNextConcreteDateEventWithAlarm(Lcom/sec/jewishcalendar/events/DateAndTime;)Lcom/sec/jewishcalendar/events/ConcreteDateEvent;
    .locals 6
    .param p1, "dateAndTime"    # Lcom/sec/jewishcalendar/events/DateAndTime;

    .prologue
    .line 57
    const/4 v0, 0x0

    .line 58
    .local v0, "concreteDateEvent":Lcom/sec/jewishcalendar/events/ConcreteDateEvent;
    const/4 v1, 0x0

    .line 60
    .local v1, "concreteDateEventCandidate":Lcom/sec/jewishcalendar/events/ConcreteDateEvent;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v5, p0, Lcom/sec/jewishcalendar/events/EventList;->mEventsProperties:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lt v3, v5, :cond_0

    .line 72
    return-object v0

    .line 62
    :cond_0
    iget-object v5, p0, Lcom/sec/jewishcalendar/events/EventList;->mEventsProperties:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/jewishcalendar/events/EventProperties;

    .line 63
    .local v2, "evenProperties":Lcom/sec/jewishcalendar/events/EventProperties;
    invoke-virtual {v2}, Lcom/sec/jewishcalendar/events/EventProperties;->getEventReminder()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 64
    .local v4, "reminder":I
    if-eqz v4, :cond_2

    .line 66
    invoke-virtual {v2, p1, v3}, Lcom/sec/jewishcalendar/events/EventProperties;->getNextConcreteEventWithAlarm(Lcom/sec/jewishcalendar/events/DateAndTime;I)Lcom/sec/jewishcalendar/events/ConcreteDateEvent;

    move-result-object v1

    .line 67
    if-eqz v1, :cond_2

    .line 68
    if-eqz v0, :cond_1

    invoke-virtual {v1, v0}, Lcom/sec/jewishcalendar/events/ConcreteDateEvent;->compareAlarmTimeTo(Lcom/sec/jewishcalendar/events/ConcreteDateEvent;)I

    move-result v5

    if-gtz v5, :cond_2

    .line 69
    :cond_1
    new-instance v0, Lcom/sec/jewishcalendar/events/ConcreteDateEvent;

    .end local v0    # "concreteDateEvent":Lcom/sec/jewishcalendar/events/ConcreteDateEvent;
    invoke-direct {v0, v1}, Lcom/sec/jewishcalendar/events/ConcreteDateEvent;-><init>(Lcom/sec/jewishcalendar/events/ConcreteDateEvent;)V

    .line 60
    .restart local v0    # "concreteDateEvent":Lcom/sec/jewishcalendar/events/ConcreteDateEvent;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public getEventProperties(I)Lcom/sec/jewishcalendar/events/EventProperties;
    .locals 1
    .param p1, "selectedEventId"    # I

    .prologue
    .line 25
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/EventList;->mEventsProperties:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/jewishcalendar/events/EventList;->mEventsProperties:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, p1, :cond_1

    .line 26
    :cond_0
    const/4 v0, 0x0

    .line 28
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/EventList;->mEventsProperties:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/jewishcalendar/events/EventProperties;

    goto :goto_0
.end method

.method public removeEvent(I)V
    .locals 1
    .param p1, "eventId"    # I

    .prologue
    .line 33
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/EventList;->mEventsProperties:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/sec/jewishcalendar/events/EventList;->mEventsProperties:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/EventList;->mEventsProperties:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 35
    :cond_0
    return-void
.end method
