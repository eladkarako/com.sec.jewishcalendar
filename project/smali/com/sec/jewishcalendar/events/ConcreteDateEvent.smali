.class public Lcom/sec/jewishcalendar/events/ConcreteDateEvent;
.super Ljava/lang/Object;
.source "ConcreteDateEvent.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/sec/jewishcalendar/events/ConcreteDateEvent;",
        ">;"
    }
.end annotation


# instance fields
.field private JC_DAYS:[Ljava/lang/String;

.field private JC_LETTERS:[Ljava/lang/String;

.field private JC_MONTHS:[Ljava/lang/String;

.field private mConcreteEventAlarmDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

.field private mConcreteEventEndDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

.field private mConcreteEventStartDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

.field private mContext:Landroid/content/Context;

.field private mGlobalEventsIndex:I

.field private mHAlarmDateAndTime:Lcom/sec/jewishcalendar/calculation/HdateClass;

.field private mHEndDateAndTime:Lcom/sec/jewishcalendar/calculation/HdateClass;

.field private mHStartDateAndTime:Lcom/sec/jewishcalendar/calculation/HdateClass;

.field private mRes:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/jewishcalendar/events/DateAndTime;Lcom/sec/jewishcalendar/events/DateAndTime;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "concreteEventStartDateAndTime"    # Lcom/sec/jewishcalendar/events/DateAndTime;
    .param p3, "concreteEventEndDateAndTime"    # Lcom/sec/jewishcalendar/events/DateAndTime;
    .param p4, "globalEventsIndex"    # I

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object v0, p0, Lcom/sec/jewishcalendar/events/ConcreteDateEvent;->JC_LETTERS:[Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/sec/jewishcalendar/events/ConcreteDateEvent;->JC_MONTHS:[Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/sec/jewishcalendar/events/ConcreteDateEvent;->JC_DAYS:[Ljava/lang/String;

    .line 25
    new-instance v0, Lcom/sec/jewishcalendar/calculation/HdateClass;

    invoke-direct {v0}, Lcom/sec/jewishcalendar/calculation/HdateClass;-><init>()V

    iput-object v0, p0, Lcom/sec/jewishcalendar/events/ConcreteDateEvent;->mHStartDateAndTime:Lcom/sec/jewishcalendar/calculation/HdateClass;

    .line 26
    new-instance v0, Lcom/sec/jewishcalendar/calculation/HdateClass;

    invoke-direct {v0}, Lcom/sec/jewishcalendar/calculation/HdateClass;-><init>()V

    iput-object v0, p0, Lcom/sec/jewishcalendar/events/ConcreteDateEvent;->mHEndDateAndTime:Lcom/sec/jewishcalendar/calculation/HdateClass;

    .line 27
    new-instance v0, Lcom/sec/jewishcalendar/calculation/HdateClass;

    invoke-direct {v0}, Lcom/sec/jewishcalendar/calculation/HdateClass;-><init>()V

    iput-object v0, p0, Lcom/sec/jewishcalendar/events/ConcreteDateEvent;->mHAlarmDateAndTime:Lcom/sec/jewishcalendar/calculation/HdateClass;

    .line 36
    iput-object p1, p0, Lcom/sec/jewishcalendar/events/ConcreteDateEvent;->mContext:Landroid/content/Context;

    .line 37
    iput-object p2, p0, Lcom/sec/jewishcalendar/events/ConcreteDateEvent;->mConcreteEventStartDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    .line 38
    iput-object p3, p0, Lcom/sec/jewishcalendar/events/ConcreteDateEvent;->mConcreteEventEndDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    .line 39
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/ConcreteDateEvent;->mHStartDateAndTime:Lcom/sec/jewishcalendar/calculation/HdateClass;

    iget-object v1, p0, Lcom/sec/jewishcalendar/events/ConcreteDateEvent;->mConcreteEventStartDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    iget v1, v1, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nDay:I

    iget-object v2, p0, Lcom/sec/jewishcalendar/events/ConcreteDateEvent;->mConcreteEventStartDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    iget v2, v2, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nMonth:I

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/sec/jewishcalendar/events/ConcreteDateEvent;->mConcreteEventStartDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    iget v3, v3, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nYear:I

    invoke-static {v0, v1, v2, v3}, Lcom/sec/jewishcalendar/calculation/JewishCal;->SetGdate(Lcom/sec/jewishcalendar/calculation/HdateClass;III)I

    .line 40
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/ConcreteDateEvent;->mHEndDateAndTime:Lcom/sec/jewishcalendar/calculation/HdateClass;

    iget-object v1, p0, Lcom/sec/jewishcalendar/events/ConcreteDateEvent;->mConcreteEventEndDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    iget v1, v1, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nDay:I

    iget-object v2, p0, Lcom/sec/jewishcalendar/events/ConcreteDateEvent;->mConcreteEventEndDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    iget v2, v2, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nMonth:I

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/sec/jewishcalendar/events/ConcreteDateEvent;->mConcreteEventEndDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    iget v3, v3, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nYear:I

    invoke-static {v0, v1, v2, v3}, Lcom/sec/jewishcalendar/calculation/JewishCal;->SetGdate(Lcom/sec/jewishcalendar/calculation/HdateClass;III)I

    .line 41
    iput p4, p0, Lcom/sec/jewishcalendar/events/ConcreteDateEvent;->mGlobalEventsIndex:I

    .line 42
    invoke-direct {p0}, Lcom/sec/jewishcalendar/events/ConcreteDateEvent;->setConcreteEventAlarmDateAndTime()V

    .line 43
    invoke-direct {p0, p1}, Lcom/sec/jewishcalendar/events/ConcreteDateEvent;->initJCStrings(Landroid/content/Context;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Lcom/sec/jewishcalendar/events/ConcreteDateEvent;)V
    .locals 4
    .param p1, "src"    # Lcom/sec/jewishcalendar/events/ConcreteDateEvent;

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object v0, p0, Lcom/sec/jewishcalendar/events/ConcreteDateEvent;->JC_LETTERS:[Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/sec/jewishcalendar/events/ConcreteDateEvent;->JC_MONTHS:[Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/sec/jewishcalendar/events/ConcreteDateEvent;->JC_DAYS:[Ljava/lang/String;

    .line 25
    new-instance v0, Lcom/sec/jewishcalendar/calculation/HdateClass;

    invoke-direct {v0}, Lcom/sec/jewishcalendar/calculation/HdateClass;-><init>()V

    iput-object v0, p0, Lcom/sec/jewishcalendar/events/ConcreteDateEvent;->mHStartDateAndTime:Lcom/sec/jewishcalendar/calculation/HdateClass;

    .line 26
    new-instance v0, Lcom/sec/jewishcalendar/calculation/HdateClass;

    invoke-direct {v0}, Lcom/sec/jewishcalendar/calculation/HdateClass;-><init>()V

    iput-object v0, p0, Lcom/sec/jewishcalendar/events/ConcreteDateEvent;->mHEndDateAndTime:Lcom/sec/jewishcalendar/calculation/HdateClass;

    .line 27
    new-instance v0, Lcom/sec/jewishcalendar/calculation/HdateClass;

    invoke-direct {v0}, Lcom/sec/jewishcalendar/calculation/HdateClass;-><init>()V

    iput-object v0, p0, Lcom/sec/jewishcalendar/events/ConcreteDateEvent;->mHAlarmDateAndTime:Lcom/sec/jewishcalendar/calculation/HdateClass;

    .line 48
    iget-object v0, p1, Lcom/sec/jewishcalendar/events/ConcreteDateEvent;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/sec/jewishcalendar/events/ConcreteDateEvent;->mContext:Landroid/content/Context;

    .line 49
    new-instance v0, Lcom/sec/jewishcalendar/events/DateAndTime;

    iget-object v1, p1, Lcom/sec/jewishcalendar/events/ConcreteDateEvent;->mConcreteEventStartDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    invoke-direct {v0, v1}, Lcom/sec/jewishcalendar/events/DateAndTime;-><init>(Lcom/sec/jewishcalendar/events/DateAndTime;)V

    iput-object v0, p0, Lcom/sec/jewishcalendar/events/ConcreteDateEvent;->mConcreteEventStartDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    .line 50
    new-instance v0, Lcom/sec/jewishcalendar/events/DateAndTime;

    iget-object v1, p1, Lcom/sec/jewishcalendar/events/ConcreteDateEvent;->mConcreteEventEndDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    invoke-direct {v0, v1}, Lcom/sec/jewishcalendar/events/DateAndTime;-><init>(Lcom/sec/jewishcalendar/events/DateAndTime;)V

    iput-object v0, p0, Lcom/sec/jewishcalendar/events/ConcreteDateEvent;->mConcreteEventEndDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    .line 51
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/ConcreteDateEvent;->mHStartDateAndTime:Lcom/sec/jewishcalendar/calculation/HdateClass;

    iget-object v1, p0, Lcom/sec/jewishcalendar/events/ConcreteDateEvent;->mConcreteEventStartDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    iget v1, v1, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nDay:I

    iget-object v2, p0, Lcom/sec/jewishcalendar/events/ConcreteDateEvent;->mConcreteEventStartDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    iget v2, v2, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nMonth:I

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/sec/jewishcalendar/events/ConcreteDateEvent;->mConcreteEventStartDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    iget v3, v3, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nYear:I

    invoke-static {v0, v1, v2, v3}, Lcom/sec/jewishcalendar/calculation/JewishCal;->SetGdate(Lcom/sec/jewishcalendar/calculation/HdateClass;III)I

    .line 52
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/ConcreteDateEvent;->mHEndDateAndTime:Lcom/sec/jewishcalendar/calculation/HdateClass;

    iget-object v1, p0, Lcom/sec/jewishcalendar/events/ConcreteDateEvent;->mConcreteEventEndDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    iget v1, v1, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nDay:I

    iget-object v2, p0, Lcom/sec/jewishcalendar/events/ConcreteDateEvent;->mConcreteEventEndDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    iget v2, v2, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nMonth:I

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/sec/jewishcalendar/events/ConcreteDateEvent;->mConcreteEventEndDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    iget v3, v3, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nYear:I

    invoke-static {v0, v1, v2, v3}, Lcom/sec/jewishcalendar/calculation/JewishCal;->SetGdate(Lcom/sec/jewishcalendar/calculation/HdateClass;III)I

    .line 53
    iget v0, p1, Lcom/sec/jewishcalendar/events/ConcreteDateEvent;->mGlobalEventsIndex:I

    iput v0, p0, Lcom/sec/jewishcalendar/events/ConcreteDateEvent;->mGlobalEventsIndex:I

    .line 54
    invoke-direct {p0}, Lcom/sec/jewishcalendar/events/ConcreteDateEvent;->setConcreteEventAlarmDateAndTime()V

    .line 55
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/ConcreteDateEvent;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/sec/jewishcalendar/events/ConcreteDateEvent;->initJCStrings(Landroid/content/Context;)V

    .line 56
    return-void
.end method

.method private buildEventDateString()Ljava/lang/String;
    .locals 22

    .prologue
    .line 197
    new-instance v3, Ljava/util/Date;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/jewishcalendar/events/ConcreteDateEvent;->mConcreteEventStartDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nYear:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/jewishcalendar/events/ConcreteDateEvent;->mConcreteEventStartDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nMonth:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/jewishcalendar/events/ConcreteDateEvent;->mConcreteEventStartDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nDay:I

    move/from16 v19, v0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v3, v0, v1, v2}, Ljava/util/Date;-><init>(III)V

    .line 198
    .local v3, "fromDate":Ljava/util/Date;
    invoke-virtual {v3}, Ljava/util/Date;->getDay()I

    move-result v4

    .line 199
    .local v4, "fromDayOfWeek":I
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/sec/jewishcalendar/events/ConcreteDateEvent;->getDayOfWeekStr(I)Ljava/lang/String;

    move-result-object v5

    .line 201
    .local v5, "fromDayOfWeekStr":Ljava/lang/String;
    new-instance v13, Ljava/util/Date;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/jewishcalendar/events/ConcreteDateEvent;->mConcreteEventEndDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nYear:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/jewishcalendar/events/ConcreteDateEvent;->mConcreteEventEndDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nMonth:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/jewishcalendar/events/ConcreteDateEvent;->mConcreteEventEndDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nDay:I

    move/from16 v19, v0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v13, v0, v1, v2}, Ljava/util/Date;-><init>(III)V

    .line 202
    .local v13, "toDate":Ljava/util/Date;
    invoke-virtual {v13}, Ljava/util/Date;->getDay()I

    move-result v14

    .line 203
    .local v14, "toDayOfWeek":I
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/sec/jewishcalendar/events/ConcreteDateEvent;->getDayOfWeekStr(I)Ljava/lang/String;

    move-result-object v15

    .line 205
    .local v15, "toDayOfWeekStr":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/jewishcalendar/events/ConcreteDateEvent;->mConcreteEventStartDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/jewishcalendar/events/ConcreteDateEvent;->mConcreteEventEndDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/sec/jewishcalendar/events/DateAndTime;->isSameDay(Lcom/sec/jewishcalendar/events/DateAndTime;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/jewishcalendar/events/ConcreteDateEvent;->mConcreteEventStartDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/jewishcalendar/events/DateAndTime;->toTimeString()Ljava/lang/String;

    move-result-object v6

    .line 208
    .local v6, "fromTimeStr":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/jewishcalendar/events/ConcreteDateEvent;->mConcreteEventEndDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/jewishcalendar/events/DateAndTime;->toTimeString()Ljava/lang/String;

    move-result-object v16

    .line 210
    .local v16, "toTimeStr":Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v18, "  "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/jewishcalendar/events/ConcreteDateEvent;->mConcreteEventStartDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/jewishcalendar/events/DateAndTime;->toEventListDateTitleString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 211
    .local v7, "gregDateStr":Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v18, "   "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " - "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 213
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/jewishcalendar/events/ConcreteDateEvent;->mHStartDateAndTime:Lcom/sec/jewishcalendar/calculation/HdateClass;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/jewishcalendar/events/ConcreteDateEvent;->JC_LETTERS:[Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/jewishcalendar/events/ConcreteDateEvent;->JC_MONTHS:[Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/jewishcalendar/events/ConcreteDateEvent;->JC_DAYS:[Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v18 .. v21}, Lcom/sec/jewishcalendar/calculation/HdateClass;->toJewishDateString([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 214
    .local v10, "jewishDateStr":Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v18, " "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " - "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 216
    invoke-static {}, Lcom/sec/jewishcalendar/JewishCalendarView;->isJewishCalendar()Z

    move-result v17

    if-eqz v17, :cond_0

    .line 240
    .end local v6    # "fromTimeStr":Ljava/lang/String;
    .end local v7    # "gregDateStr":Ljava/lang/String;
    .end local v10    # "jewishDateStr":Ljava/lang/String;
    .end local v16    # "toTimeStr":Ljava/lang/String;
    :goto_0
    return-object v10

    .restart local v6    # "fromTimeStr":Ljava/lang/String;
    .restart local v7    # "gregDateStr":Ljava/lang/String;
    .restart local v10    # "jewishDateStr":Ljava/lang/String;
    .restart local v16    # "toTimeStr":Ljava/lang/String;
    :cond_0
    move-object v10, v7

    .line 219
    goto :goto_0

    .line 223
    .end local v6    # "fromTimeStr":Ljava/lang/String;
    .end local v7    # "gregDateStr":Ljava/lang/String;
    .end local v10    # "jewishDateStr":Ljava/lang/String;
    .end local v16    # "toTimeStr":Ljava/lang/String;
    :cond_1
    new-instance v17, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/jewishcalendar/events/ConcreteDateEvent;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const v19, 0x7f0a002b

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v18, " "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "  "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 224
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/jewishcalendar/events/ConcreteDateEvent;->mConcreteEventStartDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/jewishcalendar/events/DateAndTime;->toEventListDateTitleString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "   "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/jewishcalendar/events/ConcreteDateEvent;->mConcreteEventStartDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/jewishcalendar/events/DateAndTime;->toTimeString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 223
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 226
    .local v8, "gregFromDateAndTimeStr":Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/jewishcalendar/events/ConcreteDateEvent;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const v19, 0x7f0a002c

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v18, " "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "  "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/jewishcalendar/events/ConcreteDateEvent;->mConcreteEventEndDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/jewishcalendar/events/DateAndTime;->toEventListDateTitleString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "   "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/jewishcalendar/events/ConcreteDateEvent;->mConcreteEventEndDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/jewishcalendar/events/DateAndTime;->toTimeString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 226
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 230
    .local v9, "gregToDateAndTimeStr":Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/jewishcalendar/events/ConcreteDateEvent;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const v19, 0x7f0a002b

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v18, " "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/jewishcalendar/events/ConcreteDateEvent;->mHStartDateAndTime:Lcom/sec/jewishcalendar/calculation/HdateClass;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/jewishcalendar/events/ConcreteDateEvent;->JC_LETTERS:[Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/jewishcalendar/events/ConcreteDateEvent;->JC_MONTHS:[Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/jewishcalendar/events/ConcreteDateEvent;->JC_DAYS:[Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v18 .. v21}, Lcom/sec/jewishcalendar/calculation/HdateClass;->toJewishDateString([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 232
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/jewishcalendar/events/ConcreteDateEvent;->mConcreteEventStartDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/jewishcalendar/events/DateAndTime;->toTimeString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 230
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 233
    .local v11, "jewishFromDateAndTimeStr":Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/jewishcalendar/events/ConcreteDateEvent;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const v19, 0x7f0a002c

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v18, " "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/jewishcalendar/events/ConcreteDateEvent;->mHEndDateAndTime:Lcom/sec/jewishcalendar/calculation/HdateClass;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/jewishcalendar/events/ConcreteDateEvent;->JC_LETTERS:[Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/jewishcalendar/events/ConcreteDateEvent;->JC_MONTHS:[Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/jewishcalendar/events/ConcreteDateEvent;->JC_DAYS:[Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v18 .. v21}, Lcom/sec/jewishcalendar/calculation/HdateClass;->toJewishDateString([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/jewishcalendar/events/ConcreteDateEvent;->mConcreteEventEndDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/jewishcalendar/events/DateAndTime;->toTimeString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 233
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 237
    .local v12, "jewishToDateAndTimeStr":Ljava/lang/String;
    invoke-static {}, Lcom/sec/jewishcalendar/JewishCalendarView;->isJewishCalendar()Z

    move-result v17

    if-eqz v17, :cond_2

    .line 238
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v18, "\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0

    .line 240
    :cond_2
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v18, "\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0
.end method

.method private getDayOfWeekStr(I)Ljava/lang/String;
    .locals 3
    .param p1, "dayOfWeek"    # I

    .prologue
    .line 246
    const-string v0, ""

    .line 248
    .local v0, "dayOfWeekStr":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 286
    :goto_0
    return-object v0

    .line 252
    :pswitch_0
    iget-object v1, p0, Lcom/sec/jewishcalendar/events/ConcreteDateEvent;->mContext:Landroid/content/Context;

    const v2, 0x7f0a002d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 253
    goto :goto_0

    .line 257
    :pswitch_1
    iget-object v1, p0, Lcom/sec/jewishcalendar/events/ConcreteDateEvent;->mContext:Landroid/content/Context;

    const v2, 0x7f0a002e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 258
    goto :goto_0

    .line 262
    :pswitch_2
    iget-object v1, p0, Lcom/sec/jewishcalendar/events/ConcreteDateEvent;->mContext:Landroid/content/Context;

    const v2, 0x7f0a002f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 263
    goto :goto_0

    .line 267
    :pswitch_3
    iget-object v1, p0, Lcom/sec/jewishcalendar/events/ConcreteDateEvent;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0030

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 268
    goto :goto_0

    .line 272
    :pswitch_4
    iget-object v1, p0, Lcom/sec/jewishcalendar/events/ConcreteDateEvent;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0031

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 273
    goto :goto_0

    .line 277
    :pswitch_5
    iget-object v1, p0, Lcom/sec/jewishcalendar/events/ConcreteDateEvent;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0032

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 278
    goto :goto_0

    .line 282
    :pswitch_6
    iget-object v1, p0, Lcom/sec/jewishcalendar/events/ConcreteDateEvent;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0033

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 248
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private initJCStrings(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/jewishcalendar/events/ConcreteDateEvent;->mRes:Landroid/content/res/Resources;

    .line 61
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/ConcreteDateEvent;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f060003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/jewishcalendar/events/ConcreteDateEvent;->JC_LETTERS:[Ljava/lang/String;

    .line 62
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/ConcreteDateEvent;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f060004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/jewishcalendar/events/ConcreteDateEvent;->JC_MONTHS:[Ljava/lang/String;

    .line 63
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/ConcreteDateEvent;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f060002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/jewishcalendar/events/ConcreteDateEvent;->JC_DAYS:[Ljava/lang/String;

    .line 64
    return-void
.end method

.method private setConcreteEventAlarmDateAndTime()V
    .locals 8

    .prologue
    .line 68
    sget-object v4, Lcom/sec/jewishcalendar/events/GlobalEvents;->mEventList:Lcom/sec/jewishcalendar/events/EventList;

    iget-object v4, v4, Lcom/sec/jewishcalendar/events/EventList;->mEventsProperties:Ljava/util/List;

    iget v5, p0, Lcom/sec/jewishcalendar/events/ConcreteDateEvent;->mGlobalEventsIndex:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/jewishcalendar/events/EventProperties;

    invoke-virtual {v4}, Lcom/sec/jewishcalendar/events/EventProperties;->getEventReminder()Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, "eventReminder":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 70
    .local v1, "reminder":I
    const-wide/16 v2, 0x0

    .line 72
    .local v2, "milliSecondsBefore":J
    packed-switch v1, :pswitch_data_0

    .line 109
    :goto_0
    :pswitch_0
    iget-object v4, p0, Lcom/sec/jewishcalendar/events/ConcreteDateEvent;->mConcreteEventStartDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    invoke-virtual {v4, v2, v3}, Lcom/sec/jewishcalendar/events/DateAndTime;->getMilliSecondsBeforeDateAndTime(J)Lcom/sec/jewishcalendar/events/DateAndTime;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/jewishcalendar/events/ConcreteDateEvent;->mConcreteEventAlarmDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    .line 110
    iget-object v4, p0, Lcom/sec/jewishcalendar/events/ConcreteDateEvent;->mHAlarmDateAndTime:Lcom/sec/jewishcalendar/calculation/HdateClass;

    iget-object v5, p0, Lcom/sec/jewishcalendar/events/ConcreteDateEvent;->mConcreteEventAlarmDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    iget v5, v5, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nDay:I

    iget-object v6, p0, Lcom/sec/jewishcalendar/events/ConcreteDateEvent;->mConcreteEventAlarmDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    iget v6, v6, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nMonth:I

    add-int/lit8 v6, v6, 0x1

    iget-object v7, p0, Lcom/sec/jewishcalendar/events/ConcreteDateEvent;->mConcreteEventAlarmDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    iget v7, v7, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nYear:I

    invoke-static {v4, v5, v6, v7}, Lcom/sec/jewishcalendar/calculation/JewishCal;->SetGdate(Lcom/sec/jewishcalendar/calculation/HdateClass;III)I

    .line 111
    return-void

    .line 81
    :pswitch_1
    const-wide/32 v2, 0x493e0

    .line 82
    goto :goto_0

    .line 86
    :pswitch_2
    const-wide/32 v2, 0xdbba0

    .line 87
    goto :goto_0

    .line 91
    :pswitch_3
    const-wide/32 v2, 0x36ee80

    .line 92
    goto :goto_0

    .line 96
    :pswitch_4
    const-wide/32 v2, 0x5265c00

    .line 97
    goto :goto_0

    .line 101
    :pswitch_5
    const-wide/32 v2, 0x240c8400

    .line 103
    goto :goto_0

    .line 72
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public compareAlarmTimeTo(Lcom/sec/jewishcalendar/events/ConcreteDateEvent;)I
    .locals 2
    .param p1, "another"    # Lcom/sec/jewishcalendar/events/ConcreteDateEvent;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/ConcreteDateEvent;->mConcreteEventAlarmDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    invoke-virtual {p1}, Lcom/sec/jewishcalendar/events/ConcreteDateEvent;->getConcreteEventAlarmDateAndTime()Lcom/sec/jewishcalendar/events/DateAndTime;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/jewishcalendar/events/DateAndTime;->compareTo(Lcom/sec/jewishcalendar/events/DateAndTime;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lcom/sec/jewishcalendar/events/ConcreteDateEvent;)I
    .locals 2
    .param p1, "another"    # Lcom/sec/jewishcalendar/events/ConcreteDateEvent;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/ConcreteDateEvent;->mConcreteEventStartDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    invoke-virtual {p1}, Lcom/sec/jewishcalendar/events/ConcreteDateEvent;->getConcreteEventStartDateAndTime()Lcom/sec/jewishcalendar/events/DateAndTime;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/jewishcalendar/events/DateAndTime;->compareTo(Lcom/sec/jewishcalendar/events/DateAndTime;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lcom/sec/jewishcalendar/events/ConcreteDateEvent;

    invoke-virtual {p0, p1}, Lcom/sec/jewishcalendar/events/ConcreteDateEvent;->compareTo(Lcom/sec/jewishcalendar/events/ConcreteDateEvent;)I

    move-result v0

    return v0
.end method

.method public getConcreteEventAlarmDateAndTime()Lcom/sec/jewishcalendar/events/DateAndTime;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/ConcreteDateEvent;->mConcreteEventAlarmDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    return-object v0
.end method

.method public getConcreteEventEndDateAndTime()Lcom/sec/jewishcalendar/events/DateAndTime;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/ConcreteDateEvent;->mConcreteEventEndDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    return-object v0
.end method

.method public getConcreteEventStartDateAndTime()Lcom/sec/jewishcalendar/events/DateAndTime;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/ConcreteDateEvent;->mConcreteEventStartDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    return-object v0
.end method

.method public getEventDescription()Ljava/lang/String;
    .locals 4

    .prologue
    .line 140
    sget-object v0, Lcom/sec/jewishcalendar/events/GlobalEvents;->mEventList:Lcom/sec/jewishcalendar/events/EventList;

    .line 141
    .local v0, "eventList":Lcom/sec/jewishcalendar/events/EventList;
    iget-object v2, v0, Lcom/sec/jewishcalendar/events/EventList;->mEventsProperties:Ljava/util/List;

    .line 142
    .local v2, "eventsProperties":Ljava/util/List;, "Ljava/util/List<Lcom/sec/jewishcalendar/events/EventProperties;>;"
    iget v3, p0, Lcom/sec/jewishcalendar/events/ConcreteDateEvent;->mGlobalEventsIndex:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/jewishcalendar/events/EventProperties;

    .line 144
    .local v1, "eventProperties":Lcom/sec/jewishcalendar/events/EventProperties;
    invoke-virtual {v1}, Lcom/sec/jewishcalendar/events/EventProperties;->getEventDescription()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getEventStartDateAndTime()Ljava/lang/String;
    .locals 11

    .prologue
    .line 179
    new-instance v0, Ljava/util/Date;

    iget-object v6, p0, Lcom/sec/jewishcalendar/events/ConcreteDateEvent;->mConcreteEventStartDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    iget v6, v6, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nYear:I

    iget-object v7, p0, Lcom/sec/jewishcalendar/events/ConcreteDateEvent;->mConcreteEventStartDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    iget v7, v7, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nMonth:I

    iget-object v8, p0, Lcom/sec/jewishcalendar/events/ConcreteDateEvent;->mConcreteEventStartDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    iget v8, v8, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nDay:I

    invoke-direct {v0, v6, v7, v8}, Ljava/util/Date;-><init>(III)V

    .line 180
    .local v0, "fromDate":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getDay()I

    move-result v1

    .line 181
    .local v1, "fromDayOfWeek":I
    invoke-direct {p0, v1}, Lcom/sec/jewishcalendar/events/ConcreteDateEvent;->getDayOfWeekStr(I)Ljava/lang/String;

    move-result-object v2

    .line 183
    .local v2, "fromDayOfWeekStr":Ljava/lang/String;
    iget-object v6, p0, Lcom/sec/jewishcalendar/events/ConcreteDateEvent;->mConcreteEventStartDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    invoke-virtual {v6}, Lcom/sec/jewishcalendar/events/DateAndTime;->toTimeString()Ljava/lang/String;

    move-result-object v3

    .line 184
    .local v3, "fromTimeStr":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/jewishcalendar/events/ConcreteDateEvent;->mConcreteEventStartDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    invoke-virtual {v7}, Lcom/sec/jewishcalendar/events/DateAndTime;->toEventListDateTitleString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "   "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 186
    .local v4, "gregDateStr":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/sec/jewishcalendar/events/ConcreteDateEvent;->mHStartDateAndTime:Lcom/sec/jewishcalendar/calculation/HdateClass;

    iget-object v8, p0, Lcom/sec/jewishcalendar/events/ConcreteDateEvent;->JC_LETTERS:[Ljava/lang/String;

    iget-object v9, p0, Lcom/sec/jewishcalendar/events/ConcreteDateEvent;->JC_MONTHS:[Ljava/lang/String;

    iget-object v10, p0, Lcom/sec/jewishcalendar/events/ConcreteDateEvent;->JC_DAYS:[Ljava/lang/String;

    invoke-virtual {v7, v8, v9, v10}, Lcom/sec/jewishcalendar/calculation/HdateClass;->toJewishDateString([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 188
    .local v5, "jewishDateStr":Ljava/lang/String;
    invoke-static {}, Lcom/sec/jewishcalendar/JewishCalendarView;->isJewishCalendar()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 191
    .end local v5    # "jewishDateStr":Ljava/lang/String;
    :goto_0
    return-object v5

    .restart local v5    # "jewishDateStr":Ljava/lang/String;
    :cond_0
    move-object v5, v4

    goto :goto_0
.end method

.method public getGlobalEventsIndex()I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/sec/jewishcalendar/events/ConcreteDateEvent;->mGlobalEventsIndex:I

    return v0
.end method

.method public toHtmlString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/sec/jewishcalendar/events/ConcreteDateEvent;->getEventDescription()Ljava/lang/String;

    move-result-object v0

    .line 168
    .local v0, "description":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 169
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "<b>"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</b>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "<br>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 172
    .local v2, "str":Ljava/lang/String;
    :goto_0
    invoke-direct {p0}, Lcom/sec/jewishcalendar/events/ConcreteDateEvent;->buildEventDateString()Ljava/lang/String;

    move-result-object v1

    .line 173
    .local v1, "eventTime":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 174
    return-object v2

    .line 171
    .end local v1    # "eventTime":Ljava/lang/String;
    .end local v2    # "str":Ljava/lang/String;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "<b>"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sec/jewishcalendar/events/ConcreteDateEvent;->mContext:Landroid/content/Context;

    const v5, 0x7f0a002a

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</b>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "<br>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "str":Ljava/lang/String;
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    const/16 v6, 0xa

    .line 149
    invoke-virtual {p0}, Lcom/sec/jewishcalendar/events/ConcreteDateEvent;->getEventDescription()Ljava/lang/String;

    move-result-object v0

    .line 153
    .local v0, "description":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 154
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 157
    .local v2, "str":Ljava/lang/String;
    :goto_0
    invoke-direct {p0}, Lcom/sec/jewishcalendar/events/ConcreteDateEvent;->buildEventDateString()Ljava/lang/String;

    move-result-object v1

    .line 158
    .local v1, "eventTime":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 159
    return-object v2

    .line 156
    .end local v1    # "eventTime":Ljava/lang/String;
    .end local v2    # "str":Ljava/lang/String;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/jewishcalendar/events/ConcreteDateEvent;->mContext:Landroid/content/Context;

    const v5, 0x7f0a002a

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "str":Ljava/lang/String;
    goto :goto_0
.end method
