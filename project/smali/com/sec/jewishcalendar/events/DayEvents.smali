.class public Lcom/sec/jewishcalendar/events/DayEvents;
.super Landroid/app/Activity;
.source "DayEvents.java"


# static fields
.field static final CREATE_NEW_EVENT:I = 0x1

.field static final EDIT_EVENT:I


# instance fields
.field private JC_DAYS:[Ljava/lang/String;

.field private JC_LETTERS:[Ljava/lang/String;

.field private JC_MONTHS:[Ljava/lang/String;

.field private mConcreteDateEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/jewishcalendar/events/ConcreteDateEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mCreateNewEventButton:Landroid/widget/Button;

.field mDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

.field private mHDateAndTime:Lcom/sec/jewishcalendar/calculation/HdateClass;

.field private mListGregTitle:Landroid/widget/TextView;

.field private mListJewishTitle:Landroid/widget/TextView;

.field private mListView:Landroid/widget/ListView;

.field mNumberOfChosenDateEvents:I

.field private mRemoveAllEventsButton:Landroid/widget/Button;

.field private mRes:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/jewishcalendar/events/DayEvents;->mNumberOfChosenDateEvents:I

    .line 33
    new-instance v0, Lcom/sec/jewishcalendar/calculation/HdateClass;

    invoke-direct {v0}, Lcom/sec/jewishcalendar/calculation/HdateClass;-><init>()V

    iput-object v0, p0, Lcom/sec/jewishcalendar/events/DayEvents;->mHDateAndTime:Lcom/sec/jewishcalendar/calculation/HdateClass;

    .line 35
    iput-object v1, p0, Lcom/sec/jewishcalendar/events/DayEvents;->JC_LETTERS:[Ljava/lang/String;

    .line 36
    iput-object v1, p0, Lcom/sec/jewishcalendar/events/DayEvents;->JC_MONTHS:[Ljava/lang/String;

    .line 37
    iput-object v1, p0, Lcom/sec/jewishcalendar/events/DayEvents;->JC_DAYS:[Ljava/lang/String;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/jewishcalendar/events/DayEvents;->mConcreteDateEvents:Ljava/util/List;

    .line 27
    return-void
.end method

.method static synthetic access$0(Lcom/sec/jewishcalendar/events/DayEvents;I)V
    .locals 0

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/sec/jewishcalendar/events/DayEvents;->editOrRemoveEvent(I)V

    return-void
.end method

.method static synthetic access$1(Lcom/sec/jewishcalendar/events/DayEvents;)V
    .locals 0

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/sec/jewishcalendar/events/DayEvents;->removeAllEventsClicked()V

    return-void
.end method

.method static synthetic access$2(Lcom/sec/jewishcalendar/events/DayEvents;I)V
    .locals 0

    .prologue
    .line 237
    invoke-direct {p0, p1}, Lcom/sec/jewishcalendar/events/DayEvents;->editChosenEvent(I)V

    return-void
.end method

.method static synthetic access$3(Lcom/sec/jewishcalendar/events/DayEvents;I)V
    .locals 0

    .prologue
    .line 245
    invoke-direct {p0, p1}, Lcom/sec/jewishcalendar/events/DayEvents;->removeChosenEvent(I)V

    return-void
.end method

.method static synthetic access$4(Lcom/sec/jewishcalendar/events/DayEvents;)V
    .locals 0

    .prologue
    .line 256
    invoke-direct {p0}, Lcom/sec/jewishcalendar/events/DayEvents;->refreshEventsListView()V

    return-void
.end method

.method static synthetic access$5(Lcom/sec/jewishcalendar/events/DayEvents;)V
    .locals 0

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/sec/jewishcalendar/events/DayEvents;->removeAllEventsConfirmed()V

    return-void
.end method

.method private buildDateTitleString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 231
    iget-object v2, p0, Lcom/sec/jewishcalendar/events/DayEvents;->mDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    invoke-virtual {v2}, Lcom/sec/jewishcalendar/events/DateAndTime;->toEventListDateTitleString()Ljava/lang/String;

    move-result-object v0

    .line 232
    .local v0, "gregDateStr":Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/jewishcalendar/events/DayEvents;->mHDateAndTime:Lcom/sec/jewishcalendar/calculation/HdateClass;

    iget-object v3, p0, Lcom/sec/jewishcalendar/events/DayEvents;->JC_LETTERS:[Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/jewishcalendar/events/DayEvents;->JC_MONTHS:[Ljava/lang/String;

    iget-object v5, p0, Lcom/sec/jewishcalendar/events/DayEvents;->JC_DAYS:[Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/jewishcalendar/calculation/HdateClass;->toJewishDateString([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 234
    .local v1, "jewishDateStr":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private editChosenEvent(I)V
    .locals 4
    .param p1, "item"    # I

    .prologue
    .line 239
    iget-object v2, p0, Lcom/sec/jewishcalendar/events/DayEvents;->mConcreteDateEvents:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/jewishcalendar/events/ConcreteDateEvent;

    .line 240
    .local v0, "concreteDateEvent":Lcom/sec/jewishcalendar/events/ConcreteDateEvent;
    invoke-virtual {v0}, Lcom/sec/jewishcalendar/events/ConcreteDateEvent;->getGlobalEventsIndex()I

    move-result v2

    sput v2, Lcom/sec/jewishcalendar/events/GlobalEvents;->m_nSelectedEventId:I

    .line 241
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/sec/jewishcalendar/events/DayEvents;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/sec/jewishcalendar/events/Event;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 242
    .local v1, "editEventIntent":Landroid/content/Intent;
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/sec/jewishcalendar/events/DayEvents;->startActivityForResult(Landroid/content/Intent;I)V

    .line 243
    return-void
.end method

.method private editOrRemoveEvent(I)V
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 119
    const/4 v3, 0x3

    new-array v2, v3, [Ljava/lang/CharSequence;

    const/4 v3, 0x0

    const v4, 0x7f0a0022

    invoke-virtual {p0, v4}, Lcom/sec/jewishcalendar/events/DayEvents;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const v4, 0x7f0a0023

    invoke-virtual {p0, v4}, Lcom/sec/jewishcalendar/events/DayEvents;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const v4, 0x7f0a0016

    invoke-virtual {p0, v4}, Lcom/sec/jewishcalendar/events/DayEvents;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 121
    .local v2, "items":[Ljava/lang/CharSequence;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 122
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    const v3, 0x7f0a001e

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 123
    new-instance v3, Lcom/sec/jewishcalendar/events/DayEvents$4;

    invoke-direct {v3, p0, p1}, Lcom/sec/jewishcalendar/events/DayEvents$4;-><init>(Lcom/sec/jewishcalendar/events/DayEvents;I)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 135
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 136
    .local v0, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 137
    return-void
.end method

.method private initJCStrings()V
    .locals 2

    .prologue
    .line 264
    invoke-virtual {p0}, Lcom/sec/jewishcalendar/events/DayEvents;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/jewishcalendar/events/DayEvents;->mRes:Landroid/content/res/Resources;

    .line 265
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/DayEvents;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f060003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/jewishcalendar/events/DayEvents;->JC_LETTERS:[Ljava/lang/String;

    .line 266
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/DayEvents;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f060004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/jewishcalendar/events/DayEvents;->JC_MONTHS:[Ljava/lang/String;

    .line 267
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/DayEvents;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f060002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/jewishcalendar/events/DayEvents;->JC_DAYS:[Ljava/lang/String;

    .line 268
    return-void
.end method

.method private initializeConcreteDateEventArrayAndListView()V
    .locals 7

    .prologue
    .line 211
    sget-object v4, Lcom/sec/jewishcalendar/events/GlobalEvents;->mEventList:Lcom/sec/jewishcalendar/events/EventList;

    iget-object v2, v4, Lcom/sec/jewishcalendar/events/EventList;->mEventsProperties:Ljava/util/List;

    .line 212
    .local v2, "eventsProperties":Ljava/util/List;, "Ljava/util/List<Lcom/sec/jewishcalendar/events/EventProperties;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lt v3, v4, :cond_0

    .line 220
    iget-object v4, p0, Lcom/sec/jewishcalendar/events/DayEvents;->mConcreteDateEvents:Ljava/util/List;

    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 226
    iget-object v4, p0, Lcom/sec/jewishcalendar/events/DayEvents;->mListView:Landroid/widget/ListView;

    new-instance v5, Lcom/sec/jewishcalendar/events/EventsListAdapter;

    iget-object v6, p0, Lcom/sec/jewishcalendar/events/DayEvents;->mConcreteDateEvents:Ljava/util/List;

    invoke-direct {v5, p0, v6}, Lcom/sec/jewishcalendar/events/EventsListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 227
    return-void

    .line 214
    :cond_0
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/jewishcalendar/events/EventProperties;

    .line 215
    .local v1, "eventProperties":Lcom/sec/jewishcalendar/events/EventProperties;
    iget-object v4, p0, Lcom/sec/jewishcalendar/events/DayEvents;->mDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    invoke-virtual {v1, v4, v3}, Lcom/sec/jewishcalendar/events/EventProperties;->getConcreteEventOnDate(Lcom/sec/jewishcalendar/events/DateAndTime;I)Lcom/sec/jewishcalendar/events/ConcreteDateEvent;

    move-result-object v0

    .line 217
    .local v0, "concreteDateEvent":Lcom/sec/jewishcalendar/events/ConcreteDateEvent;
    if-eqz v0, :cond_1

    .line 218
    iget-object v4, p0, Lcom/sec/jewishcalendar/events/DayEvents;->mConcreteDateEvents:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private refreshEventsListView()V
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/DayEvents;->mConcreteDateEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 259
    invoke-direct {p0}, Lcom/sec/jewishcalendar/events/DayEvents;->initializeConcreteDateEventArrayAndListView()V

    .line 260
    return-void
.end method

.method private removeAllEventsClicked()V
    .locals 5

    .prologue
    .line 141
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 143
    .local v2, "builder":Landroid/app/AlertDialog$Builder;
    const v3, 0x7f0a0036

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 145
    const v3, 0x7f0a001f

    new-instance v4, Lcom/sec/jewishcalendar/events/DayEvents$5;

    invoke-direct {v4, p0}, Lcom/sec/jewishcalendar/events/DayEvents$5;-><init>(Lcom/sec/jewishcalendar/events/DayEvents;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 152
    const v3, 0x7f0a0016

    new-instance v4, Lcom/sec/jewishcalendar/events/DayEvents$6;

    invoke-direct {v4, p0}, Lcom/sec/jewishcalendar/events/DayEvents$6;-><init>(Lcom/sec/jewishcalendar/events/DayEvents;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 158
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 159
    .local v1, "alert":Landroid/app/AlertDialog;
    const/high16 v0, 0x41700000    # 15.0f

    .line 164
    .local v0, "ButtonTextSize":F
    invoke-virtual {p0}, Lcom/sec/jewishcalendar/events/DayEvents;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v3, v3, 0xf

    .line 165
    const/4 v4, 0x4

    .line 164
    if-ne v3, v4, :cond_0

    .line 167
    const/high16 v0, 0x41980000    # 19.0f

    .line 169
    :cond_0
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 170
    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setTextSize(F)V

    .line 171
    const/4 v3, -0x2

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setTextSize(F)V

    .line 172
    return-void
.end method

.method private removeAllEventsConfirmed()V
    .locals 6

    .prologue
    .line 176
    iget-object v4, p0, Lcom/sec/jewishcalendar/events/DayEvents;->mConcreteDateEvents:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 177
    .local v3, "numberOfConcreteEvents":I
    :goto_0
    if-gtz v3, :cond_0

    .line 188
    return-void

    .line 179
    :cond_0
    iget-object v4, p0, Lcom/sec/jewishcalendar/events/DayEvents;->mConcreteDateEvents:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/jewishcalendar/events/ConcreteDateEvent;

    .line 180
    .local v0, "concreteDateEvent":Lcom/sec/jewishcalendar/events/ConcreteDateEvent;
    invoke-virtual {v0}, Lcom/sec/jewishcalendar/events/ConcreteDateEvent;->getGlobalEventsIndex()I

    move-result v1

    .line 181
    .local v1, "eventId":I
    sget-object v4, Lcom/sec/jewishcalendar/events/GlobalEvents;->mEventList:Lcom/sec/jewishcalendar/events/EventList;

    invoke-virtual {v4, v1}, Lcom/sec/jewishcalendar/events/EventList;->getEventProperties(I)Lcom/sec/jewishcalendar/events/EventProperties;

    move-result-object v2

    .line 182
    .local v2, "eventProperties":Lcom/sec/jewishcalendar/events/EventProperties;
    invoke-virtual {p0}, Lcom/sec/jewishcalendar/events/DayEvents;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/sec/jewishcalendar/events/GlobalEvents;->deleteDbRow(Landroid/content/Context;Lcom/sec/jewishcalendar/events/EventProperties;)V

    .line 183
    sget-object v4, Lcom/sec/jewishcalendar/events/GlobalEvents;->mEventList:Lcom/sec/jewishcalendar/events/EventList;

    invoke-virtual {v4, v1}, Lcom/sec/jewishcalendar/events/EventList;->removeEvent(I)V

    .line 184
    invoke-direct {p0}, Lcom/sec/jewishcalendar/events/DayEvents;->refreshEventsListView()V

    .line 185
    iget-object v4, p0, Lcom/sec/jewishcalendar/events/DayEvents;->mConcreteDateEvents:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 186
    invoke-virtual {p0}, Lcom/sec/jewishcalendar/events/DayEvents;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/sec/jewishcalendar/events/GlobalEvents;->initEventAlarm(Landroid/content/Context;Z)V

    goto :goto_0
.end method

.method private removeChosenEvent(I)V
    .locals 5
    .param p1, "item"    # I

    .prologue
    .line 247
    iget-object v3, p0, Lcom/sec/jewishcalendar/events/DayEvents;->mConcreteDateEvents:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/jewishcalendar/events/ConcreteDateEvent;

    .line 248
    .local v0, "concreteDateEvent":Lcom/sec/jewishcalendar/events/ConcreteDateEvent;
    invoke-virtual {v0}, Lcom/sec/jewishcalendar/events/ConcreteDateEvent;->getGlobalEventsIndex()I

    move-result v1

    .line 249
    .local v1, "eventId":I
    sget-object v3, Lcom/sec/jewishcalendar/events/GlobalEvents;->mEventList:Lcom/sec/jewishcalendar/events/EventList;

    invoke-virtual {v3, v1}, Lcom/sec/jewishcalendar/events/EventList;->getEventProperties(I)Lcom/sec/jewishcalendar/events/EventProperties;

    move-result-object v2

    .line 250
    .local v2, "eventProperties":Lcom/sec/jewishcalendar/events/EventProperties;
    invoke-virtual {p0}, Lcom/sec/jewishcalendar/events/DayEvents;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/sec/jewishcalendar/events/GlobalEvents;->deleteDbRow(Landroid/content/Context;Lcom/sec/jewishcalendar/events/EventProperties;)V

    .line 251
    sget-object v3, Lcom/sec/jewishcalendar/events/GlobalEvents;->mEventList:Lcom/sec/jewishcalendar/events/EventList;

    invoke-virtual {v3, v1}, Lcom/sec/jewishcalendar/events/EventList;->removeEvent(I)V

    .line 252
    invoke-virtual {p0}, Lcom/sec/jewishcalendar/events/DayEvents;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/sec/jewishcalendar/events/GlobalEvents;->initEventAlarm(Landroid/content/Context;Z)V

    .line 253
    iget-object v3, p0, Lcom/sec/jewishcalendar/events/DayEvents;->mConcreteDateEvents:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 254
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v1, -0x1

    .line 193
    if-nez p1, :cond_1

    .line 195
    if-ne p2, v1, :cond_0

    .line 197
    invoke-direct {p0}, Lcom/sec/jewishcalendar/events/DayEvents;->refreshEventsListView()V

    .line 207
    :cond_0
    :goto_0
    return-void

    .line 200
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 202
    if-ne p2, v1, :cond_0

    .line 204
    invoke-direct {p0}, Lcom/sec/jewishcalendar/events/DayEvents;->refreshEventsListView()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v10, 0x400

    .line 48
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    invoke-virtual {p0}, Lcom/sec/jewishcalendar/events/DayEvents;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 51
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v8, "YEAR"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 52
    .local v7, "year":I
    const-string v8, "MONTH"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 53
    .local v5, "month":I
    const-string v8, "DAY"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 54
    .local v2, "day":I
    new-instance v8, Lcom/sec/jewishcalendar/events/DateAndTime;

    invoke-direct {v8, v7, v5, v2}, Lcom/sec/jewishcalendar/events/DateAndTime;-><init>(III)V

    iput-object v8, p0, Lcom/sec/jewishcalendar/events/DayEvents;->mDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    .line 55
    iget-object v8, p0, Lcom/sec/jewishcalendar/events/DayEvents;->mHDateAndTime:Lcom/sec/jewishcalendar/calculation/HdateClass;

    add-int/lit8 v9, v5, 0x1

    invoke-static {v8, v2, v9, v7}, Lcom/sec/jewishcalendar/calculation/JewishCal;->SetGdate(Lcom/sec/jewishcalendar/calculation/HdateClass;III)I

    .line 56
    invoke-direct {p0}, Lcom/sec/jewishcalendar/events/DayEvents;->initJCStrings()V

    .line 58
    const v8, 0x7f030013

    invoke-virtual {p0, v8}, Lcom/sec/jewishcalendar/events/DayEvents;->setContentView(I)V

    .line 60
    invoke-direct {p0}, Lcom/sec/jewishcalendar/events/DayEvents;->buildDateTitleString()Ljava/lang/String;

    move-result-object v6

    .line 61
    .local v6, "titleStrings":Ljava/lang/String;
    const/16 v8, 0x2c

    invoke-virtual {v6, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 63
    .local v1, "commaLocation":I
    const/4 v8, 0x0

    invoke-virtual {v6, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 64
    .local v4, "jewishTitleStr":Ljava/lang/String;
    add-int/lit8 v8, v1, 0x1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 66
    .local v3, "gregTitleStr":Ljava/lang/String;
    const v8, 0x7f0e000f

    invoke-virtual {p0, v8}, Lcom/sec/jewishcalendar/events/DayEvents;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/sec/jewishcalendar/events/DayEvents;->mListJewishTitle:Landroid/widget/TextView;

    .line 67
    iget-object v8, p0, Lcom/sec/jewishcalendar/events/DayEvents;->mListJewishTitle:Landroid/widget/TextView;

    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    const v8, 0x7f0e0043

    invoke-virtual {p0, v8}, Lcom/sec/jewishcalendar/events/DayEvents;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/sec/jewishcalendar/events/DayEvents;->mListGregTitle:Landroid/widget/TextView;

    .line 70
    iget-object v8, p0, Lcom/sec/jewishcalendar/events/DayEvents;->mListGregTitle:Landroid/widget/TextView;

    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    const v8, 0x7f0e0044

    invoke-virtual {p0, v8}, Lcom/sec/jewishcalendar/events/DayEvents;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ListView;

    iput-object v8, p0, Lcom/sec/jewishcalendar/events/DayEvents;->mListView:Landroid/widget/ListView;

    .line 73
    iget-object v8, p0, Lcom/sec/jewishcalendar/events/DayEvents;->mListView:Landroid/widget/ListView;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    .line 75
    invoke-direct {p0}, Lcom/sec/jewishcalendar/events/DayEvents;->initializeConcreteDateEventArrayAndListView()V

    .line 77
    iget-object v8, p0, Lcom/sec/jewishcalendar/events/DayEvents;->mListView:Landroid/widget/ListView;

    new-instance v9, Lcom/sec/jewishcalendar/events/DayEvents$1;

    invoke-direct {v9, p0}, Lcom/sec/jewishcalendar/events/DayEvents$1;-><init>(Lcom/sec/jewishcalendar/events/DayEvents;)V

    invoke-virtual {v8, v9}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 86
    const v8, 0x7f0e0046

    invoke-virtual {p0, v8}, Lcom/sec/jewishcalendar/events/DayEvents;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/sec/jewishcalendar/events/DayEvents;->mCreateNewEventButton:Landroid/widget/Button;

    .line 87
    iget-object v8, p0, Lcom/sec/jewishcalendar/events/DayEvents;->mCreateNewEventButton:Landroid/widget/Button;

    new-instance v9, Lcom/sec/jewishcalendar/events/DayEvents$2;

    invoke-direct {v9, p0}, Lcom/sec/jewishcalendar/events/DayEvents$2;-><init>(Lcom/sec/jewishcalendar/events/DayEvents;)V

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    const v8, 0x7f0e0047

    invoke-virtual {p0, v8}, Lcom/sec/jewishcalendar/events/DayEvents;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/sec/jewishcalendar/events/DayEvents;->mRemoveAllEventsButton:Landroid/widget/Button;

    .line 102
    iget-object v8, p0, Lcom/sec/jewishcalendar/events/DayEvents;->mRemoveAllEventsButton:Landroid/widget/Button;

    new-instance v9, Lcom/sec/jewishcalendar/events/DayEvents$3;

    invoke-direct {v9, p0}, Lcom/sec/jewishcalendar/events/DayEvents$3;-><init>(Lcom/sec/jewishcalendar/events/DayEvents;)V

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    invoke-virtual {p0}, Lcom/sec/jewishcalendar/events/DayEvents;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->orientation:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_0

    .line 110
    invoke-virtual {p0}, Lcom/sec/jewishcalendar/events/DayEvents;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8, v10}, Landroid/view/Window;->addFlags(I)V

    .line 115
    :goto_0
    return-void

    .line 113
    :cond_0
    invoke-virtual {p0}, Lcom/sec/jewishcalendar/events/DayEvents;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8, v10}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0
.end method
