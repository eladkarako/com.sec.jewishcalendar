.class public Lcom/sec/jewishcalendar/events/EventProperties;
.super Ljava/lang/Object;
.source "EventProperties.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/sec/jewishcalendar/events/EventProperties;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEventEndDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

.field private mEventLastRecurrenceEndDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

.field private mEventLastRecurrenceStartDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

.field private mEventRepeatTimes:I

.field private mEventStartDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

.field private mHFromdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

.field private mMonthEventsScanCurrentEventEndDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

.field private mMonthEventsScanCurrentEventStartDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

.field private mMonthEventsScanRepeatNumber:I

.field private mNumberOfEventDays:I

.field private m_sEventDescription:Ljava/lang/String;

.field private m_sEventId:Ljava/lang/String;

.field private m_sEventRecurrence:Ljava/lang/String;

.field private m_sEventReminder:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "c"    # Landroid/database/Cursor;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lcom/sec/jewishcalendar/calculation/HdateClass;

    invoke-direct {v0}, Lcom/sec/jewishcalendar/calculation/HdateClass;-><init>()V

    iput-object v0, p0, Lcom/sec/jewishcalendar/events/EventProperties;->mHFromdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    .line 52
    iput-object p1, p0, Lcom/sec/jewishcalendar/events/EventProperties;->mContext:Landroid/content/Context;

    .line 53
    const-string v0, "_id"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/jewishcalendar/events/EventProperties;->m_sEventId:Ljava/lang/String;

    .line 55
    new-instance v0, Lcom/sec/jewishcalendar/events/DateAndTime;

    const-string v1, "fromDateAndTime"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/jewishcalendar/events/DateAndTime;-><init>(Ljava/lang/String;)V

    .line 54
    iput-object v0, p0, Lcom/sec/jewishcalendar/events/EventProperties;->mEventStartDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    .line 57
    new-instance v0, Lcom/sec/jewishcalendar/events/DateAndTime;

    const-string v1, "toDateAndTime"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/jewishcalendar/events/DateAndTime;-><init>(Ljava/lang/String;)V

    .line 56
    iput-object v0, p0, Lcom/sec/jewishcalendar/events/EventProperties;->mEventEndDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    .line 58
    const-string v0, "eventDescription"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/jewishcalendar/events/EventProperties;->m_sEventDescription:Ljava/lang/String;

    .line 59
    const-string v0, "_recurrence"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/jewishcalendar/events/EventProperties;->m_sEventRecurrence:Ljava/lang/String;

    .line 60
    const-string v0, "_reminder"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/jewishcalendar/events/EventProperties;->m_sEventReminder:Ljava/lang/String;

    .line 62
    invoke-virtual {p0}, Lcom/sec/jewishcalendar/events/EventProperties;->setEventRepeatTimes()V

    .line 63
    invoke-virtual {p0}, Lcom/sec/jewishcalendar/events/EventProperties;->calcEventDurationInDays()V

    .line 64
    invoke-virtual {p0}, Lcom/sec/jewishcalendar/events/EventProperties;->setGdate()V

    .line 65
    invoke-direct {p0}, Lcom/sec/jewishcalendar/events/EventProperties;->initMonthEventsScanParams()V

    .line 68
    new-instance v0, Lcom/sec/jewishcalendar/events/DateAndTime;

    const-string v1, "lastOccurenceFromDateAndTime"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/jewishcalendar/events/DateAndTime;-><init>(Ljava/lang/String;)V

    .line 67
    iput-object v0, p0, Lcom/sec/jewishcalendar/events/EventProperties;->mEventLastRecurrenceStartDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    .line 70
    new-instance v0, Lcom/sec/jewishcalendar/events/DateAndTime;

    const-string v1, "lastOccurenceToDateAndTime"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/jewishcalendar/events/DateAndTime;-><init>(Ljava/lang/String;)V

    .line 69
    iput-object v0, p0, Lcom/sec/jewishcalendar/events/EventProperties;->mEventLastRecurrenceEndDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/jewishcalendar/events/DateAndTime;Lcom/sec/jewishcalendar/events/DateAndTime;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "eventStartDateAndTime"    # Lcom/sec/jewishcalendar/events/DateAndTime;
    .param p3, "eventEndDateAndTime"    # Lcom/sec/jewishcalendar/events/DateAndTime;
    .param p4, "sEventDescription"    # Ljava/lang/String;
    .param p5, "sEventRecurrence"    # Ljava/lang/String;
    .param p6, "sEventReminder"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lcom/sec/jewishcalendar/calculation/HdateClass;

    invoke-direct {v0}, Lcom/sec/jewishcalendar/calculation/HdateClass;-><init>()V

    iput-object v0, p0, Lcom/sec/jewishcalendar/events/EventProperties;->mHFromdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    .line 37
    iput-object p1, p0, Lcom/sec/jewishcalendar/events/EventProperties;->mContext:Landroid/content/Context;

    .line 38
    iput-object p2, p0, Lcom/sec/jewishcalendar/events/EventProperties;->mEventStartDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    .line 39
    iput-object p3, p0, Lcom/sec/jewishcalendar/events/EventProperties;->mEventEndDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    .line 40
    iput-object p4, p0, Lcom/sec/jewishcalendar/events/EventProperties;->m_sEventDescription:Ljava/lang/String;

    .line 41
    iput-object p5, p0, Lcom/sec/jewishcalendar/events/EventProperties;->m_sEventRecurrence:Ljava/lang/String;

    .line 42
    iput-object p6, p0, Lcom/sec/jewishcalendar/events/EventProperties;->m_sEventReminder:Ljava/lang/String;

    .line 43
    invoke-virtual {p0}, Lcom/sec/jewishcalendar/events/EventProperties;->setEventRepeatTimes()V

    .line 44
    invoke-virtual {p0}, Lcom/sec/jewishcalendar/events/EventProperties;->calcEventDurationInDays()V

    .line 45
    invoke-virtual {p0}, Lcom/sec/jewishcalendar/events/EventProperties;->setGdate()V

    .line 46
    invoke-direct {p0}, Lcom/sec/jewishcalendar/events/EventProperties;->initMonthEventsScanParams()V

    .line 47
    invoke-virtual {p0}, Lcom/sec/jewishcalendar/events/EventProperties;->calcEventLastRecurrenceDateAndTime()V

    .line 48
    return-void
.end method

.method private correctGMonthlyEventStartIfRequired(Lcom/sec/jewishcalendar/events/DateAndTime;Lcom/sec/jewishcalendar/calculation/HdateClass;)V
    .locals 6
    .param p1, "previousMonthDateAndTime"    # Lcom/sec/jewishcalendar/events/DateAndTime;
    .param p2, "concreteEventHStartDateAndTime"    # Lcom/sec/jewishcalendar/calculation/HdateClass;

    .prologue
    const/4 v5, 0x5

    .line 409
    const/4 v2, 0x0

    .line 410
    .local v2, "monthSkipped":Z
    iget v3, p2, Lcom/sec/jewishcalendar/calculation/HdateClass;->gmonth:I

    iget v4, p1, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nMonth:I

    add-int/lit8 v4, v4, 0x1

    if-le v3, v4, :cond_0

    .line 411
    const/4 v2, 0x1

    .line 413
    :cond_0
    if-nez v2, :cond_2

    .line 416
    iget v3, p2, Lcom/sec/jewishcalendar/calculation/HdateClass;->gday:I

    iget-object v4, p0, Lcom/sec/jewishcalendar/events/EventProperties;->mEventStartDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    iget v4, v4, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nDay:I

    if-ge v3, v4, :cond_1

    .line 418
    iget-object v3, p0, Lcom/sec/jewishcalendar/events/EventProperties;->mEventStartDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    iget v3, v3, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nDay:I

    iput v3, p2, Lcom/sec/jewishcalendar/calculation/HdateClass;->gday:I

    .line 433
    :cond_1
    :goto_0
    iget v3, p2, Lcom/sec/jewishcalendar/calculation/HdateClass;->gday:I

    iget v4, p2, Lcom/sec/jewishcalendar/calculation/HdateClass;->gmonth:I

    .line 434
    iget v5, p2, Lcom/sec/jewishcalendar/calculation/HdateClass;->gyear:I

    .line 433
    invoke-static {p2, v3, v4, v5}, Lcom/sec/jewishcalendar/calculation/JewishCal;->SetGdate(Lcom/sec/jewishcalendar/calculation/HdateClass;III)I

    .line 435
    return-void

    .line 423
    :cond_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 424
    .local v0, "c":Ljava/util/Calendar;
    iget v3, p2, Lcom/sec/jewishcalendar/calculation/HdateClass;->gday:I

    invoke-virtual {v0, v5, v3}, Ljava/util/Calendar;->set(II)V

    .line 425
    const/4 v3, 0x2

    iget v4, p2, Lcom/sec/jewishcalendar/calculation/HdateClass;->gmonth:I

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 426
    const/4 v3, 0x1

    iget v4, p2, Lcom/sec/jewishcalendar/calculation/HdateClass;->gyear:I

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 428
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v1

    .line 429
    .local v1, "maxDayOfMonth":I
    iput v1, p2, Lcom/sec/jewishcalendar/calculation/HdateClass;->gday:I

    .line 430
    iget v3, p2, Lcom/sec/jewishcalendar/calculation/HdateClass;->gmonth:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p2, Lcom/sec/jewishcalendar/calculation/HdateClass;->gmonth:I

    goto :goto_0
.end method

.method private correctGYearlyEventStartIfRequired(Lcom/sec/jewishcalendar/events/DateAndTime;Lcom/sec/jewishcalendar/calculation/HdateClass;)V
    .locals 6
    .param p1, "previousYearDateAndTime"    # Lcom/sec/jewishcalendar/events/DateAndTime;
    .param p2, "concreteEventHStartDateAndTime"    # Lcom/sec/jewishcalendar/calculation/HdateClass;

    .prologue
    const/4 v5, 0x5

    .line 439
    const/4 v2, 0x0

    .line 440
    .local v2, "yearSkipped":Z
    iget v3, p2, Lcom/sec/jewishcalendar/calculation/HdateClass;->gmonth:I

    iget v4, p1, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nMonth:I

    if-le v3, v4, :cond_0

    .line 441
    const/4 v2, 0x1

    .line 443
    :cond_0
    if-nez v2, :cond_2

    .line 446
    iget v3, p2, Lcom/sec/jewishcalendar/calculation/HdateClass;->gday:I

    iget-object v4, p0, Lcom/sec/jewishcalendar/events/EventProperties;->mEventStartDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    iget v4, v4, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nDay:I

    if-ge v3, v4, :cond_1

    iget v3, p2, Lcom/sec/jewishcalendar/calculation/HdateClass;->gyear:I

    rem-int/lit8 v3, v3, 0x4

    if-nez v3, :cond_1

    .line 449
    iget-object v3, p0, Lcom/sec/jewishcalendar/events/EventProperties;->mEventStartDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    iget v3, v3, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nDay:I

    iput v3, p2, Lcom/sec/jewishcalendar/calculation/HdateClass;->gday:I

    .line 463
    :cond_1
    :goto_0
    iget v3, p2, Lcom/sec/jewishcalendar/calculation/HdateClass;->gday:I

    iget v4, p2, Lcom/sec/jewishcalendar/calculation/HdateClass;->gmonth:I

    .line 464
    iget v5, p2, Lcom/sec/jewishcalendar/calculation/HdateClass;->gyear:I

    .line 463
    invoke-static {p2, v3, v4, v5}, Lcom/sec/jewishcalendar/calculation/JewishCal;->SetGdate(Lcom/sec/jewishcalendar/calculation/HdateClass;III)I

    .line 465
    return-void

    .line 454
    :cond_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 455
    .local v0, "c":Ljava/util/Calendar;
    iget v3, p2, Lcom/sec/jewishcalendar/calculation/HdateClass;->gday:I

    invoke-virtual {v0, v5, v3}, Ljava/util/Calendar;->set(II)V

    .line 456
    const/4 v3, 0x2

    iget v4, p2, Lcom/sec/jewishcalendar/calculation/HdateClass;->gmonth:I

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 457
    const/4 v3, 0x1

    iget v4, p2, Lcom/sec/jewishcalendar/calculation/HdateClass;->gyear:I

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 459
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v1

    .line 460
    .local v1, "maxDayOfMonth":I
    iput v1, p2, Lcom/sec/jewishcalendar/calculation/HdateClass;->gday:I

    .line 461
    iget v3, p2, Lcom/sec/jewishcalendar/calculation/HdateClass;->gmonth:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p2, Lcom/sec/jewishcalendar/calculation/HdateClass;->gmonth:I

    goto :goto_0
.end method

.method private correctHMonthlyEventStartIfRequired(Lcom/sec/jewishcalendar/calculation/HdateClass;)V
    .locals 4
    .param p1, "concreteEventHStartDateAndTime"    # Lcom/sec/jewishcalendar/calculation/HdateClass;

    .prologue
    .line 469
    invoke-static {p1}, Lcom/sec/jewishcalendar/calculation/JewishCal;->GetDayOfMonth(Lcom/sec/jewishcalendar/calculation/HdateClass;)I

    move-result v0

    .line 471
    .local v0, "numDays":I
    iget v1, p1, Lcom/sec/jewishcalendar/calculation/HdateClass;->hday:I

    iget-object v2, p0, Lcom/sec/jewishcalendar/events/EventProperties;->mHFromdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    iget v2, v2, Lcom/sec/jewishcalendar/calculation/HdateClass;->hday:I

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/jewishcalendar/events/EventProperties;->mHFromdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    iget v1, v1, Lcom/sec/jewishcalendar/calculation/HdateClass;->hday:I

    if-gt v1, v0, :cond_0

    .line 473
    iget-object v1, p0, Lcom/sec/jewishcalendar/events/EventProperties;->mHFromdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    iget v1, v1, Lcom/sec/jewishcalendar/calculation/HdateClass;->hday:I

    iput v1, p1, Lcom/sec/jewishcalendar/calculation/HdateClass;->hday:I

    .line 474
    iget v1, p1, Lcom/sec/jewishcalendar/calculation/HdateClass;->hday:I

    iget v2, p1, Lcom/sec/jewishcalendar/calculation/HdateClass;->hmonth:I

    .line 475
    iget v3, p1, Lcom/sec/jewishcalendar/calculation/HdateClass;->hyear:I

    .line 474
    invoke-static {p1, v1, v2, v3}, Lcom/sec/jewishcalendar/calculation/JewishCal;->SetHdate(Lcom/sec/jewishcalendar/calculation/HdateClass;III)I

    .line 477
    :cond_0
    return-void
.end method

.method private correctHYearlyEventStartIfRequired(Lcom/sec/jewishcalendar/calculation/HdateClass;)V
    .locals 4
    .param p1, "concreteEventHStartDateAndTime"    # Lcom/sec/jewishcalendar/calculation/HdateClass;

    .prologue
    const/16 v3, 0xe

    const/4 v2, 0x1

    .line 482
    iget-object v1, p0, Lcom/sec/jewishcalendar/events/EventProperties;->mHFromdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    iget v1, v1, Lcom/sec/jewishcalendar/calculation/HdateClass;->hyear:I

    invoke-static {v1}, Lcom/sec/jewishcalendar/calculation/JewishCal;->IsYearLeap(I)I

    move-result v1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/jewishcalendar/events/EventProperties;->mHFromdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    iget v1, v1, Lcom/sec/jewishcalendar/calculation/HdateClass;->hmonth:I

    if-ne v1, v3, :cond_0

    iget v1, p1, Lcom/sec/jewishcalendar/calculation/HdateClass;->hyear:I

    invoke-static {v1}, Lcom/sec/jewishcalendar/calculation/JewishCal;->IsYearLeap(I)I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 484
    iput v3, p1, Lcom/sec/jewishcalendar/calculation/HdateClass;->hmonth:I

    .line 487
    :cond_0
    invoke-static {p1}, Lcom/sec/jewishcalendar/calculation/JewishCal;->GetDayOfMonth(Lcom/sec/jewishcalendar/calculation/HdateClass;)I

    move-result v0

    .line 488
    .local v0, "numDays":I
    iget v1, p1, Lcom/sec/jewishcalendar/calculation/HdateClass;->hday:I

    iget-object v2, p0, Lcom/sec/jewishcalendar/events/EventProperties;->mHFromdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    iget v2, v2, Lcom/sec/jewishcalendar/calculation/HdateClass;->hday:I

    if-ge v1, v2, :cond_1

    iget-object v1, p0, Lcom/sec/jewishcalendar/events/EventProperties;->mHFromdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    iget v1, v1, Lcom/sec/jewishcalendar/calculation/HdateClass;->hday:I

    if-gt v1, v0, :cond_1

    .line 490
    iget-object v1, p0, Lcom/sec/jewishcalendar/events/EventProperties;->mHFromdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    iget v1, v1, Lcom/sec/jewishcalendar/calculation/HdateClass;->hday:I

    iput v1, p1, Lcom/sec/jewishcalendar/calculation/HdateClass;->hday:I

    .line 492
    :cond_1
    iget v1, p1, Lcom/sec/jewishcalendar/calculation/HdateClass;->hday:I

    iget v2, p1, Lcom/sec/jewishcalendar/calculation/HdateClass;->hmonth:I

    .line 493
    iget v3, p1, Lcom/sec/jewishcalendar/calculation/HdateClass;->hyear:I

    .line 492
    invoke-static {p1, v1, v2, v3}, Lcom/sec/jewishcalendar/calculation/JewishCal;->SetHdate(Lcom/sec/jewishcalendar/calculation/HdateClass;III)I

    .line 495
    return-void
.end method

.method private incrementConcreteEventCandidate(Lcom/sec/jewishcalendar/events/DateAndTime;Lcom/sec/jewishcalendar/events/DateAndTime;)V
    .locals 9
    .param p1, "concreteEventCandidateStartDateAndTime"    # Lcom/sec/jewishcalendar/events/DateAndTime;
    .param p2, "concreteEventCandidateEndDateAndTime"    # Lcom/sec/jewishcalendar/events/DateAndTime;

    .prologue
    .line 312
    iget-object v6, p0, Lcom/sec/jewishcalendar/events/EventProperties;->m_sEventRecurrence:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 313
    .local v5, "repeatType":I
    new-instance v1, Lcom/sec/jewishcalendar/calculation/HdateClass;

    invoke-direct {v1}, Lcom/sec/jewishcalendar/calculation/HdateClass;-><init>()V

    .line 314
    .local v1, "concreteEventHStartDateAndTime":Lcom/sec/jewishcalendar/calculation/HdateClass;
    new-instance v0, Lcom/sec/jewishcalendar/calculation/HdateClass;

    invoke-direct {v0}, Lcom/sec/jewishcalendar/calculation/HdateClass;-><init>()V

    .line 316
    .local v0, "concreteEventHEndDateAndTime":Lcom/sec/jewishcalendar/calculation/HdateClass;
    iget v6, p1, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nDay:I

    iget v7, p1, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nMonth:I

    add-int/lit8 v7, v7, 0x1

    .line 317
    iget v8, p1, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nYear:I

    .line 316
    invoke-static {v1, v6, v7, v8}, Lcom/sec/jewishcalendar/calculation/JewishCal;->SetGdate(Lcom/sec/jewishcalendar/calculation/HdateClass;III)I

    .line 318
    iget v6, p2, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nDay:I

    iget v7, p2, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nMonth:I

    add-int/lit8 v7, v7, 0x1

    .line 319
    iget v8, p2, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nYear:I

    .line 318
    invoke-static {v0, v6, v7, v8}, Lcom/sec/jewishcalendar/calculation/JewishCal;->SetGdate(Lcom/sec/jewishcalendar/calculation/HdateClass;III)I

    .line 321
    packed-switch v5, :pswitch_data_0

    .line 405
    :goto_0
    return-void

    .line 325
    :pswitch_0
    invoke-static {v1}, Lcom/sec/jewishcalendar/calculation/JewishCal;->MoveToNextDay(Lcom/sec/jewishcalendar/calculation/HdateClass;)I

    .line 326
    invoke-direct {p0, v1, p1}, Lcom/sec/jewishcalendar/events/EventProperties;->updateConcreteDateAndTimeCandidateFromHDateAndTime(Lcom/sec/jewishcalendar/calculation/HdateClass;Lcom/sec/jewishcalendar/events/DateAndTime;)V

    .line 327
    invoke-static {v0}, Lcom/sec/jewishcalendar/calculation/JewishCal;->MoveToNextDay(Lcom/sec/jewishcalendar/calculation/HdateClass;)I

    .line 328
    invoke-direct {p0, v0, p2}, Lcom/sec/jewishcalendar/events/EventProperties;->updateConcreteDateAndTimeCandidateFromHDateAndTime(Lcom/sec/jewishcalendar/calculation/HdateClass;Lcom/sec/jewishcalendar/events/DateAndTime;)V

    goto :goto_0

    .line 333
    :pswitch_1
    invoke-static {v1}, Lcom/sec/jewishcalendar/calculation/JewishCal;->MoveToNextWeek(Lcom/sec/jewishcalendar/calculation/HdateClass;)I

    .line 334
    invoke-direct {p0, v1, p1}, Lcom/sec/jewishcalendar/events/EventProperties;->updateConcreteDateAndTimeCandidateFromHDateAndTime(Lcom/sec/jewishcalendar/calculation/HdateClass;Lcom/sec/jewishcalendar/events/DateAndTime;)V

    .line 335
    invoke-static {v0}, Lcom/sec/jewishcalendar/calculation/JewishCal;->MoveToNextWeek(Lcom/sec/jewishcalendar/calculation/HdateClass;)I

    .line 336
    invoke-direct {p0, v0, p2}, Lcom/sec/jewishcalendar/events/EventProperties;->updateConcreteDateAndTimeCandidateFromHDateAndTime(Lcom/sec/jewishcalendar/calculation/HdateClass;Lcom/sec/jewishcalendar/events/DateAndTime;)V

    goto :goto_0

    .line 341
    :pswitch_2
    new-instance v3, Lcom/sec/jewishcalendar/events/DateAndTime;

    iget v6, v1, Lcom/sec/jewishcalendar/calculation/HdateClass;->gyear:I

    iget v7, v1, Lcom/sec/jewishcalendar/calculation/HdateClass;->gmonth:I

    .line 342
    iget v8, v1, Lcom/sec/jewishcalendar/calculation/HdateClass;->gday:I

    .line 341
    invoke-direct {v3, v6, v7, v8}, Lcom/sec/jewishcalendar/events/DateAndTime;-><init>(III)V

    .line 343
    .local v3, "previousMonthDateAndTime":Lcom/sec/jewishcalendar/events/DateAndTime;
    invoke-static {v1}, Lcom/sec/jewishcalendar/calculation/JewishCal;->GMoveToNextMonth(Lcom/sec/jewishcalendar/calculation/HdateClass;)I

    .line 344
    invoke-direct {p0, v3, v1}, Lcom/sec/jewishcalendar/events/EventProperties;->correctGMonthlyEventStartIfRequired(Lcom/sec/jewishcalendar/events/DateAndTime;Lcom/sec/jewishcalendar/calculation/HdateClass;)V

    .line 345
    invoke-direct {p0, v1, p1}, Lcom/sec/jewishcalendar/events/EventProperties;->updateConcreteDateAndTimeCandidateFromHDateAndTime(Lcom/sec/jewishcalendar/calculation/HdateClass;Lcom/sec/jewishcalendar/events/DateAndTime;)V

    .line 348
    iget v6, p1, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nDay:I

    iget v7, p1, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nMonth:I

    add-int/lit8 v7, v7, 0x1

    .line 349
    iget v8, p1, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nYear:I

    .line 348
    invoke-static {v0, v6, v7, v8}, Lcom/sec/jewishcalendar/calculation/JewishCal;->SetGdate(Lcom/sec/jewishcalendar/calculation/HdateClass;III)I

    .line 350
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_1
    iget v6, p0, Lcom/sec/jewishcalendar/events/EventProperties;->mNumberOfEventDays:I

    if-lt v2, v6, :cond_0

    .line 352
    invoke-direct {p0, v0, p2}, Lcom/sec/jewishcalendar/events/EventProperties;->updateConcreteDateAndTimeCandidateFromHDateAndTime(Lcom/sec/jewishcalendar/calculation/HdateClass;Lcom/sec/jewishcalendar/events/DateAndTime;)V

    goto :goto_0

    .line 351
    :cond_0
    invoke-static {v0}, Lcom/sec/jewishcalendar/calculation/JewishCal;->MoveToNextDay(Lcom/sec/jewishcalendar/calculation/HdateClass;)I

    .line 350
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 357
    .end local v2    # "i":I
    .end local v3    # "previousMonthDateAndTime":Lcom/sec/jewishcalendar/events/DateAndTime;
    :pswitch_3
    invoke-static {v1}, Lcom/sec/jewishcalendar/calculation/JewishCal;->MoveToNextMonth(Lcom/sec/jewishcalendar/calculation/HdateClass;)I

    .line 358
    invoke-direct {p0, v1}, Lcom/sec/jewishcalendar/events/EventProperties;->correctHMonthlyEventStartIfRequired(Lcom/sec/jewishcalendar/calculation/HdateClass;)V

    .line 359
    invoke-direct {p0, v1, p1}, Lcom/sec/jewishcalendar/events/EventProperties;->updateConcreteDateAndTimeCandidateFromHDateAndTime(Lcom/sec/jewishcalendar/calculation/HdateClass;Lcom/sec/jewishcalendar/events/DateAndTime;)V

    .line 362
    iget v6, p1, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nDay:I

    iget v7, p1, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nMonth:I

    add-int/lit8 v7, v7, 0x1

    .line 363
    iget v8, p1, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nYear:I

    .line 362
    invoke-static {v0, v6, v7, v8}, Lcom/sec/jewishcalendar/calculation/JewishCal;->SetGdate(Lcom/sec/jewishcalendar/calculation/HdateClass;III)I

    .line 364
    const/4 v2, 0x1

    .restart local v2    # "i":I
    :goto_2
    iget v6, p0, Lcom/sec/jewishcalendar/events/EventProperties;->mNumberOfEventDays:I

    if-lt v2, v6, :cond_1

    .line 366
    invoke-direct {p0, v0, p2}, Lcom/sec/jewishcalendar/events/EventProperties;->updateConcreteDateAndTimeCandidateFromHDateAndTime(Lcom/sec/jewishcalendar/calculation/HdateClass;Lcom/sec/jewishcalendar/events/DateAndTime;)V

    goto :goto_0

    .line 365
    :cond_1
    invoke-static {v0}, Lcom/sec/jewishcalendar/calculation/JewishCal;->MoveToNextDay(Lcom/sec/jewishcalendar/calculation/HdateClass;)I

    .line 364
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 371
    .end local v2    # "i":I
    :pswitch_4
    new-instance v4, Lcom/sec/jewishcalendar/events/DateAndTime;

    iget v6, v1, Lcom/sec/jewishcalendar/calculation/HdateClass;->gyear:I

    iget v7, v1, Lcom/sec/jewishcalendar/calculation/HdateClass;->gmonth:I

    .line 372
    iget v8, v1, Lcom/sec/jewishcalendar/calculation/HdateClass;->gday:I

    .line 371
    invoke-direct {v4, v6, v7, v8}, Lcom/sec/jewishcalendar/events/DateAndTime;-><init>(III)V

    .line 374
    .local v4, "previousYearDateAndTime":Lcom/sec/jewishcalendar/events/DateAndTime;
    invoke-static {v1}, Lcom/sec/jewishcalendar/calculation/JewishCal;->GMoveToNextYear(Lcom/sec/jewishcalendar/calculation/HdateClass;)I

    .line 375
    invoke-direct {p0, v4, v1}, Lcom/sec/jewishcalendar/events/EventProperties;->correctGYearlyEventStartIfRequired(Lcom/sec/jewishcalendar/events/DateAndTime;Lcom/sec/jewishcalendar/calculation/HdateClass;)V

    .line 376
    invoke-direct {p0, v1, p1}, Lcom/sec/jewishcalendar/events/EventProperties;->updateConcreteDateAndTimeCandidateFromHDateAndTime(Lcom/sec/jewishcalendar/calculation/HdateClass;Lcom/sec/jewishcalendar/events/DateAndTime;)V

    .line 379
    iget v6, p1, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nDay:I

    iget v7, p1, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nMonth:I

    add-int/lit8 v7, v7, 0x1

    .line 380
    iget v8, p1, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nYear:I

    .line 379
    invoke-static {v0, v6, v7, v8}, Lcom/sec/jewishcalendar/calculation/JewishCal;->SetGdate(Lcom/sec/jewishcalendar/calculation/HdateClass;III)I

    .line 381
    const/4 v2, 0x1

    .restart local v2    # "i":I
    :goto_3
    iget v6, p0, Lcom/sec/jewishcalendar/events/EventProperties;->mNumberOfEventDays:I

    if-lt v2, v6, :cond_2

    .line 383
    invoke-direct {p0, v0, p2}, Lcom/sec/jewishcalendar/events/EventProperties;->updateConcreteDateAndTimeCandidateFromHDateAndTime(Lcom/sec/jewishcalendar/calculation/HdateClass;Lcom/sec/jewishcalendar/events/DateAndTime;)V

    goto/16 :goto_0

    .line 382
    :cond_2
    invoke-static {v0}, Lcom/sec/jewishcalendar/calculation/JewishCal;->MoveToNextDay(Lcom/sec/jewishcalendar/calculation/HdateClass;)I

    .line 381
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 388
    .end local v2    # "i":I
    .end local v4    # "previousYearDateAndTime":Lcom/sec/jewishcalendar/events/DateAndTime;
    :pswitch_5
    invoke-static {v1}, Lcom/sec/jewishcalendar/calculation/JewishCal;->MoveToNextYear(Lcom/sec/jewishcalendar/calculation/HdateClass;)I

    .line 389
    invoke-direct {p0, v1}, Lcom/sec/jewishcalendar/events/EventProperties;->correctHYearlyEventStartIfRequired(Lcom/sec/jewishcalendar/calculation/HdateClass;)V

    .line 390
    invoke-direct {p0, v1, p1}, Lcom/sec/jewishcalendar/events/EventProperties;->updateConcreteDateAndTimeCandidateFromHDateAndTime(Lcom/sec/jewishcalendar/calculation/HdateClass;Lcom/sec/jewishcalendar/events/DateAndTime;)V

    .line 393
    iget v6, p1, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nDay:I

    iget v7, p1, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nMonth:I

    add-int/lit8 v7, v7, 0x1

    .line 394
    iget v8, p1, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nYear:I

    .line 393
    invoke-static {v0, v6, v7, v8}, Lcom/sec/jewishcalendar/calculation/JewishCal;->SetGdate(Lcom/sec/jewishcalendar/calculation/HdateClass;III)I

    .line 395
    const/4 v2, 0x1

    .restart local v2    # "i":I
    :goto_4
    iget v6, p0, Lcom/sec/jewishcalendar/events/EventProperties;->mNumberOfEventDays:I

    if-lt v2, v6, :cond_3

    .line 398
    invoke-direct {p0, v0, p2}, Lcom/sec/jewishcalendar/events/EventProperties;->updateConcreteDateAndTimeCandidateFromHDateAndTime(Lcom/sec/jewishcalendar/calculation/HdateClass;Lcom/sec/jewishcalendar/events/DateAndTime;)V

    goto/16 :goto_0

    .line 396
    :cond_3
    invoke-static {v0}, Lcom/sec/jewishcalendar/calculation/JewishCal;->MoveToNextDay(Lcom/sec/jewishcalendar/calculation/HdateClass;)I

    .line 395
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 321
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private initMonthEventsScanParams()V
    .locals 2

    .prologue
    .line 75
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/jewishcalendar/events/EventProperties;->mMonthEventsScanRepeatNumber:I

    .line 76
    new-instance v0, Lcom/sec/jewishcalendar/events/DateAndTime;

    iget-object v1, p0, Lcom/sec/jewishcalendar/events/EventProperties;->mEventStartDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    invoke-direct {v0, v1}, Lcom/sec/jewishcalendar/events/DateAndTime;-><init>(Lcom/sec/jewishcalendar/events/DateAndTime;)V

    iput-object v0, p0, Lcom/sec/jewishcalendar/events/EventProperties;->mMonthEventsScanCurrentEventStartDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    .line 77
    new-instance v0, Lcom/sec/jewishcalendar/events/DateAndTime;

    iget-object v1, p0, Lcom/sec/jewishcalendar/events/EventProperties;->mEventEndDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    invoke-direct {v0, v1}, Lcom/sec/jewishcalendar/events/DateAndTime;-><init>(Lcom/sec/jewishcalendar/events/DateAndTime;)V

    iput-object v0, p0, Lcom/sec/jewishcalendar/events/EventProperties;->mMonthEventsScanCurrentEventEndDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    .line 78
    return-void
.end method

.method private updateConcreteDateAndTimeCandidateFromHDateAndTime(Lcom/sec/jewishcalendar/calculation/HdateClass;Lcom/sec/jewishcalendar/events/DateAndTime;)V
    .locals 1
    .param p1, "concreteEventH"    # Lcom/sec/jewishcalendar/calculation/HdateClass;
    .param p2, "concreteEventDateAndTime"    # Lcom/sec/jewishcalendar/events/DateAndTime;

    .prologue
    .line 499
    iget v0, p1, Lcom/sec/jewishcalendar/calculation/HdateClass;->gyear:I

    iput v0, p2, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nYear:I

    .line 500
    iget v0, p1, Lcom/sec/jewishcalendar/calculation/HdateClass;->gmonth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p2, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nMonth:I

    .line 501
    iget v0, p1, Lcom/sec/jewishcalendar/calculation/HdateClass;->gday:I

    iput v0, p2, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nDay:I

    .line 502
    return-void
.end method


# virtual methods
.method public calcEventDurationInDays()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    .line 102
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    .line 103
    .local v1, "eventStartDay":Landroid/text/format/Time;
    iget-object v2, p0, Lcom/sec/jewishcalendar/events/EventProperties;->mEventStartDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    iget v2, v2, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nDay:I

    iget-object v3, p0, Lcom/sec/jewishcalendar/events/EventProperties;->mEventStartDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    iget v3, v3, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nMonth:I

    iget-object v4, p0, Lcom/sec/jewishcalendar/events/EventProperties;->mEventStartDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    iget v4, v4, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nYear:I

    invoke-virtual {v1, v2, v3, v4}, Landroid/text/format/Time;->set(III)V

    .line 105
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 106
    .local v0, "eventEndDay":Landroid/text/format/Time;
    iget-object v2, p0, Lcom/sec/jewishcalendar/events/EventProperties;->mEventEndDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    iget v2, v2, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nDay:I

    iget-object v3, p0, Lcom/sec/jewishcalendar/events/EventProperties;->mEventEndDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    iget v3, v3, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nMonth:I

    iget-object v4, p0, Lcom/sec/jewishcalendar/events/EventProperties;->mEventEndDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    iget v4, v4, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nYear:I

    invoke-virtual {v0, v2, v3, v4}, Landroid/text/format/Time;->set(III)V

    .line 108
    invoke-virtual {v0, v5}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    invoke-static {v2, v3, v6, v7}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v2

    invoke-virtual {v1, v5}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    invoke-static {v4, v5, v6, v7}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v3

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/sec/jewishcalendar/events/EventProperties;->mNumberOfEventDays:I

    .line 109
    return-void
.end method

.method public calcEventLastRecurrenceDateAndTime()V
    .locals 3

    .prologue
    .line 113
    new-instance v1, Lcom/sec/jewishcalendar/events/DateAndTime;

    iget-object v2, p0, Lcom/sec/jewishcalendar/events/EventProperties;->mEventStartDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    invoke-direct {v1, v2}, Lcom/sec/jewishcalendar/events/DateAndTime;-><init>(Lcom/sec/jewishcalendar/events/DateAndTime;)V

    iput-object v1, p0, Lcom/sec/jewishcalendar/events/EventProperties;->mEventLastRecurrenceStartDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    .line 114
    new-instance v1, Lcom/sec/jewishcalendar/events/DateAndTime;

    iget-object v2, p0, Lcom/sec/jewishcalendar/events/EventProperties;->mEventEndDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    invoke-direct {v1, v2}, Lcom/sec/jewishcalendar/events/DateAndTime;-><init>(Lcom/sec/jewishcalendar/events/DateAndTime;)V

    iput-object v1, p0, Lcom/sec/jewishcalendar/events/EventProperties;->mEventLastRecurrenceEndDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    .line 115
    const/4 v0, 0x0

    .line 116
    .local v0, "numberOfRepeats":I
    :goto_0
    iget v1, p0, Lcom/sec/jewishcalendar/events/EventProperties;->mEventRepeatTimes:I

    if-lt v0, v1, :cond_0

    .line 121
    return-void

    .line 118
    :cond_0
    iget-object v1, p0, Lcom/sec/jewishcalendar/events/EventProperties;->mEventLastRecurrenceStartDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    iget-object v2, p0, Lcom/sec/jewishcalendar/events/EventProperties;->mEventLastRecurrenceEndDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    invoke-direct {p0, v1, v2}, Lcom/sec/jewishcalendar/events/EventProperties;->incrementConcreteEventCandidate(Lcom/sec/jewishcalendar/events/DateAndTime;Lcom/sec/jewishcalendar/events/DateAndTime;)V

    .line 119
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public compareTo(Lcom/sec/jewishcalendar/events/EventProperties;)I
    .locals 2
    .param p1, "another"    # Lcom/sec/jewishcalendar/events/EventProperties;

    .prologue
    .line 190
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/EventProperties;->mEventStartDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    invoke-virtual {p1}, Lcom/sec/jewishcalendar/events/EventProperties;->getEventStartDateAndTime()Lcom/sec/jewishcalendar/events/DateAndTime;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/jewishcalendar/events/DateAndTime;->compareTo(Lcom/sec/jewishcalendar/events/DateAndTime;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lcom/sec/jewishcalendar/events/EventProperties;

    invoke-virtual {p0, p1}, Lcom/sec/jewishcalendar/events/EventProperties;->compareTo(Lcom/sec/jewishcalendar/events/EventProperties;)I

    move-result v0

    return v0
.end method

.method public getConcreteEventOnDate(Lcom/sec/jewishcalendar/events/DateAndTime;I)Lcom/sec/jewishcalendar/events/ConcreteDateEvent;
    .locals 5
    .param p1, "dateAndTime"    # Lcom/sec/jewishcalendar/events/DateAndTime;
    .param p2, "globalEventsIndex"    # I

    .prologue
    .line 222
    const/4 v2, 0x0

    .line 223
    .local v2, "repeatNumber":I
    new-instance v1, Lcom/sec/jewishcalendar/events/DateAndTime;

    iget-object v3, p0, Lcom/sec/jewishcalendar/events/EventProperties;->mEventStartDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    invoke-direct {v1, v3}, Lcom/sec/jewishcalendar/events/DateAndTime;-><init>(Lcom/sec/jewishcalendar/events/DateAndTime;)V

    .line 224
    .local v1, "concreteEventCandidateStartDateAndTime":Lcom/sec/jewishcalendar/events/DateAndTime;
    new-instance v0, Lcom/sec/jewishcalendar/events/DateAndTime;

    iget-object v3, p0, Lcom/sec/jewishcalendar/events/EventProperties;->mEventEndDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    invoke-direct {v0, v3}, Lcom/sec/jewishcalendar/events/DateAndTime;-><init>(Lcom/sec/jewishcalendar/events/DateAndTime;)V

    .line 226
    .local v0, "concreteEventCandidateEndDateAndTime":Lcom/sec/jewishcalendar/events/DateAndTime;
    :goto_0
    iget v3, p0, Lcom/sec/jewishcalendar/events/EventProperties;->mEventRepeatTimes:I

    if-ge v2, v3, :cond_0

    .line 227
    invoke-virtual {v1, p1}, Lcom/sec/jewishcalendar/events/DateAndTime;->compareToDay(Lcom/sec/jewishcalendar/events/DateAndTime;)I

    move-result v3

    .line 226
    if-lez v3, :cond_1

    .line 234
    :cond_0
    const/4 v3, 0x0

    :goto_1
    return-object v3

    .line 229
    :cond_1
    invoke-virtual {v1, p1}, Lcom/sec/jewishcalendar/events/DateAndTime;->compareToDay(Lcom/sec/jewishcalendar/events/DateAndTime;)I

    move-result v3

    if-gtz v3, :cond_2

    invoke-virtual {v0, p1}, Lcom/sec/jewishcalendar/events/DateAndTime;->compareToDay(Lcom/sec/jewishcalendar/events/DateAndTime;)I

    move-result v3

    if-ltz v3, :cond_2

    .line 230
    new-instance v3, Lcom/sec/jewishcalendar/events/ConcreteDateEvent;

    iget-object v4, p0, Lcom/sec/jewishcalendar/events/EventProperties;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v1, v0, p2}, Lcom/sec/jewishcalendar/events/ConcreteDateEvent;-><init>(Landroid/content/Context;Lcom/sec/jewishcalendar/events/DateAndTime;Lcom/sec/jewishcalendar/events/DateAndTime;I)V

    goto :goto_1

    .line 231
    :cond_2
    invoke-direct {p0, v1, v0}, Lcom/sec/jewishcalendar/events/EventProperties;->incrementConcreteEventCandidate(Lcom/sec/jewishcalendar/events/DateAndTime;Lcom/sec/jewishcalendar/events/DateAndTime;)V

    .line 232
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getCurrentAlarmConcreteEvent(Lcom/sec/jewishcalendar/events/DateAndTime;I)Lcom/sec/jewishcalendar/events/ConcreteDateEvent;
    .locals 6
    .param p1, "dateAndTime"    # Lcom/sec/jewishcalendar/events/DateAndTime;
    .param p2, "globalEventsIndex"    # I

    .prologue
    .line 239
    const/4 v4, 0x0

    .line 240
    .local v4, "repeatNumber":I
    new-instance v3, Lcom/sec/jewishcalendar/events/DateAndTime;

    iget-object v5, p0, Lcom/sec/jewishcalendar/events/EventProperties;->mEventStartDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    invoke-direct {v3, v5}, Lcom/sec/jewishcalendar/events/DateAndTime;-><init>(Lcom/sec/jewishcalendar/events/DateAndTime;)V

    .line 241
    .local v3, "concreteEventCandidateStartDateAndTime":Lcom/sec/jewishcalendar/events/DateAndTime;
    new-instance v2, Lcom/sec/jewishcalendar/events/DateAndTime;

    iget-object v5, p0, Lcom/sec/jewishcalendar/events/EventProperties;->mEventEndDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    invoke-direct {v2, v5}, Lcom/sec/jewishcalendar/events/DateAndTime;-><init>(Lcom/sec/jewishcalendar/events/DateAndTime;)V

    .line 242
    .local v2, "concreteEventCandidateEndDateAndTime":Lcom/sec/jewishcalendar/events/DateAndTime;
    new-instance v0, Lcom/sec/jewishcalendar/events/ConcreteDateEvent;

    iget-object v5, p0, Lcom/sec/jewishcalendar/events/EventProperties;->mContext:Landroid/content/Context;

    invoke-direct {v0, v5, v3, v2, p2}, Lcom/sec/jewishcalendar/events/ConcreteDateEvent;-><init>(Landroid/content/Context;Lcom/sec/jewishcalendar/events/DateAndTime;Lcom/sec/jewishcalendar/events/DateAndTime;I)V

    .line 244
    .local v0, "concreteEventCandidate":Lcom/sec/jewishcalendar/events/ConcreteDateEvent;
    invoke-virtual {v0}, Lcom/sec/jewishcalendar/events/ConcreteDateEvent;->getConcreteEventAlarmDateAndTime()Lcom/sec/jewishcalendar/events/DateAndTime;

    move-result-object v1

    .line 246
    .local v1, "concreteEventCandidateAlarmDateAndTime":Lcom/sec/jewishcalendar/events/DateAndTime;
    :goto_0
    iget v5, p0, Lcom/sec/jewishcalendar/events/EventProperties;->mEventRepeatTimes:I

    if-ge v4, v5, :cond_0

    invoke-virtual {v1, p1}, Lcom/sec/jewishcalendar/events/DateAndTime;->compareTo(Lcom/sec/jewishcalendar/events/DateAndTime;)I

    move-result v5

    if-ltz v5, :cond_1

    .line 253
    :cond_0
    invoke-virtual {v1, p1}, Lcom/sec/jewishcalendar/events/DateAndTime;->compareTo(Lcom/sec/jewishcalendar/events/DateAndTime;)I

    move-result v5

    if-nez v5, :cond_2

    .line 257
    .end local v0    # "concreteEventCandidate":Lcom/sec/jewishcalendar/events/ConcreteDateEvent;
    :goto_1
    return-object v0

    .line 248
    .restart local v0    # "concreteEventCandidate":Lcom/sec/jewishcalendar/events/ConcreteDateEvent;
    :cond_1
    invoke-direct {p0, v3, v2}, Lcom/sec/jewishcalendar/events/EventProperties;->incrementConcreteEventCandidate(Lcom/sec/jewishcalendar/events/DateAndTime;Lcom/sec/jewishcalendar/events/DateAndTime;)V

    .line 249
    new-instance v0, Lcom/sec/jewishcalendar/events/ConcreteDateEvent;

    .end local v0    # "concreteEventCandidate":Lcom/sec/jewishcalendar/events/ConcreteDateEvent;
    iget-object v5, p0, Lcom/sec/jewishcalendar/events/EventProperties;->mContext:Landroid/content/Context;

    invoke-direct {v0, v5, v3, v2, p2}, Lcom/sec/jewishcalendar/events/ConcreteDateEvent;-><init>(Landroid/content/Context;Lcom/sec/jewishcalendar/events/DateAndTime;Lcom/sec/jewishcalendar/events/DateAndTime;I)V

    .line 250
    .restart local v0    # "concreteEventCandidate":Lcom/sec/jewishcalendar/events/ConcreteDateEvent;
    invoke-virtual {v0}, Lcom/sec/jewishcalendar/events/ConcreteDateEvent;->getConcreteEventAlarmDateAndTime()Lcom/sec/jewishcalendar/events/DateAndTime;

    move-result-object v1

    .line 251
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 257
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getEventDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/EventProperties;->m_sEventDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getEventEndDateAndTime()Lcom/sec/jewishcalendar/events/DateAndTime;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/EventProperties;->mEventEndDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    return-object v0
.end method

.method public getEventId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/EventProperties;->m_sEventId:Ljava/lang/String;

    return-object v0
.end method

.method public getEventLastOccurenceEndDateAndTime()Lcom/sec/jewishcalendar/events/DateAndTime;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/EventProperties;->mEventLastRecurrenceEndDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    return-object v0
.end method

.method public getEventLastOccurenceStartDateAndTime()Lcom/sec/jewishcalendar/events/DateAndTime;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/EventProperties;->mEventLastRecurrenceStartDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    return-object v0
.end method

.method public getEventRecurrence()Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/EventProperties;->m_sEventRecurrence:Ljava/lang/String;

    return-object v0
.end method

.method public getEventReminder()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/EventProperties;->m_sEventReminder:Ljava/lang/String;

    return-object v0
.end method

.method public getEventStartDateAndTime()Lcom/sec/jewishcalendar/events/DateAndTime;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/EventProperties;->mEventStartDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    return-object v0
.end method

.method public getNextConcreteEventOnMonth(Lcom/sec/jewishcalendar/events/DateAndTime;I)Lcom/sec/jewishcalendar/events/ConcreteDateEvent;
    .locals 5
    .param p1, "dateAndTime"    # Lcom/sec/jewishcalendar/events/DateAndTime;
    .param p2, "globalEventsIndex"    # I

    .prologue
    const/4 v2, 0x0

    .line 196
    iget-object v3, p0, Lcom/sec/jewishcalendar/events/EventProperties;->mEventLastRecurrenceEndDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    invoke-virtual {v3, p1}, Lcom/sec/jewishcalendar/events/DateAndTime;->compareToMonth(Lcom/sec/jewishcalendar/events/DateAndTime;)I

    move-result v3

    if-gez v3, :cond_0

    .line 217
    :goto_0
    return-object v2

    .line 199
    :cond_0
    new-instance v1, Lcom/sec/jewishcalendar/events/DateAndTime;

    iget-object v3, p0, Lcom/sec/jewishcalendar/events/EventProperties;->mMonthEventsScanCurrentEventStartDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    invoke-direct {v1, v3}, Lcom/sec/jewishcalendar/events/DateAndTime;-><init>(Lcom/sec/jewishcalendar/events/DateAndTime;)V

    .line 200
    .local v1, "concreteEventCandidateStartDateAndTime":Lcom/sec/jewishcalendar/events/DateAndTime;
    new-instance v0, Lcom/sec/jewishcalendar/events/DateAndTime;

    iget-object v3, p0, Lcom/sec/jewishcalendar/events/EventProperties;->mMonthEventsScanCurrentEventEndDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    invoke-direct {v0, v3}, Lcom/sec/jewishcalendar/events/DateAndTime;-><init>(Lcom/sec/jewishcalendar/events/DateAndTime;)V

    .line 202
    .local v0, "concreteEventCandidateEndDateAndTime":Lcom/sec/jewishcalendar/events/DateAndTime;
    :goto_1
    iget v3, p0, Lcom/sec/jewishcalendar/events/EventProperties;->mMonthEventsScanRepeatNumber:I

    iget v4, p0, Lcom/sec/jewishcalendar/events/EventProperties;->mEventRepeatTimes:I

    if-ge v3, v4, :cond_1

    .line 203
    invoke-virtual {v1, p1}, Lcom/sec/jewishcalendar/events/DateAndTime;->compareToMonth(Lcom/sec/jewishcalendar/events/DateAndTime;)I

    move-result v3

    .line 202
    if-lez v3, :cond_2

    .line 216
    :cond_1
    invoke-direct {p0}, Lcom/sec/jewishcalendar/events/EventProperties;->initMonthEventsScanParams()V

    goto :goto_0

    .line 205
    :cond_2
    invoke-virtual {v1, p1}, Lcom/sec/jewishcalendar/events/DateAndTime;->compareToMonth(Lcom/sec/jewishcalendar/events/DateAndTime;)I

    move-result v3

    if-gtz v3, :cond_3

    invoke-virtual {v0, p1}, Lcom/sec/jewishcalendar/events/DateAndTime;->compareToMonth(Lcom/sec/jewishcalendar/events/DateAndTime;)I

    move-result v3

    if-ltz v3, :cond_3

    .line 207
    new-instance v2, Lcom/sec/jewishcalendar/events/DateAndTime;

    invoke-direct {v2, v1}, Lcom/sec/jewishcalendar/events/DateAndTime;-><init>(Lcom/sec/jewishcalendar/events/DateAndTime;)V

    iput-object v2, p0, Lcom/sec/jewishcalendar/events/EventProperties;->mMonthEventsScanCurrentEventStartDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    .line 208
    new-instance v2, Lcom/sec/jewishcalendar/events/DateAndTime;

    invoke-direct {v2, v0}, Lcom/sec/jewishcalendar/events/DateAndTime;-><init>(Lcom/sec/jewishcalendar/events/DateAndTime;)V

    iput-object v2, p0, Lcom/sec/jewishcalendar/events/EventProperties;->mMonthEventsScanCurrentEventEndDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    .line 209
    iget-object v2, p0, Lcom/sec/jewishcalendar/events/EventProperties;->mMonthEventsScanCurrentEventStartDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    iget-object v3, p0, Lcom/sec/jewishcalendar/events/EventProperties;->mMonthEventsScanCurrentEventEndDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    invoke-direct {p0, v2, v3}, Lcom/sec/jewishcalendar/events/EventProperties;->incrementConcreteEventCandidate(Lcom/sec/jewishcalendar/events/DateAndTime;Lcom/sec/jewishcalendar/events/DateAndTime;)V

    .line 210
    iget v2, p0, Lcom/sec/jewishcalendar/events/EventProperties;->mMonthEventsScanRepeatNumber:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/sec/jewishcalendar/events/EventProperties;->mMonthEventsScanRepeatNumber:I

    .line 211
    new-instance v2, Lcom/sec/jewishcalendar/events/ConcreteDateEvent;

    iget-object v3, p0, Lcom/sec/jewishcalendar/events/EventProperties;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v1, v0, p2}, Lcom/sec/jewishcalendar/events/ConcreteDateEvent;-><init>(Landroid/content/Context;Lcom/sec/jewishcalendar/events/DateAndTime;Lcom/sec/jewishcalendar/events/DateAndTime;I)V

    goto :goto_0

    .line 213
    :cond_3
    invoke-direct {p0, v1, v0}, Lcom/sec/jewishcalendar/events/EventProperties;->incrementConcreteEventCandidate(Lcom/sec/jewishcalendar/events/DateAndTime;Lcom/sec/jewishcalendar/events/DateAndTime;)V

    .line 214
    iget v3, p0, Lcom/sec/jewishcalendar/events/EventProperties;->mMonthEventsScanRepeatNumber:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/sec/jewishcalendar/events/EventProperties;->mMonthEventsScanRepeatNumber:I

    goto :goto_1
.end method

.method public getNextConcreteEventWithAlarm(Lcom/sec/jewishcalendar/events/DateAndTime;I)Lcom/sec/jewishcalendar/events/ConcreteDateEvent;
    .locals 6
    .param p1, "dateAndTime"    # Lcom/sec/jewishcalendar/events/DateAndTime;
    .param p2, "globalEventsIndex"    # I

    .prologue
    .line 262
    const/4 v4, 0x0

    .line 263
    .local v4, "repeatNumber":I
    new-instance v3, Lcom/sec/jewishcalendar/events/DateAndTime;

    iget-object v5, p0, Lcom/sec/jewishcalendar/events/EventProperties;->mEventStartDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    invoke-direct {v3, v5}, Lcom/sec/jewishcalendar/events/DateAndTime;-><init>(Lcom/sec/jewishcalendar/events/DateAndTime;)V

    .line 264
    .local v3, "concreteEventCandidateStartDateAndTime":Lcom/sec/jewishcalendar/events/DateAndTime;
    new-instance v2, Lcom/sec/jewishcalendar/events/DateAndTime;

    iget-object v5, p0, Lcom/sec/jewishcalendar/events/EventProperties;->mEventEndDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    invoke-direct {v2, v5}, Lcom/sec/jewishcalendar/events/DateAndTime;-><init>(Lcom/sec/jewishcalendar/events/DateAndTime;)V

    .line 265
    .local v2, "concreteEventCandidateEndDateAndTime":Lcom/sec/jewishcalendar/events/DateAndTime;
    new-instance v0, Lcom/sec/jewishcalendar/events/ConcreteDateEvent;

    iget-object v5, p0, Lcom/sec/jewishcalendar/events/EventProperties;->mContext:Landroid/content/Context;

    invoke-direct {v0, v5, v3, v2, p2}, Lcom/sec/jewishcalendar/events/ConcreteDateEvent;-><init>(Landroid/content/Context;Lcom/sec/jewishcalendar/events/DateAndTime;Lcom/sec/jewishcalendar/events/DateAndTime;I)V

    .line 267
    .local v0, "concreteEventCandidate":Lcom/sec/jewishcalendar/events/ConcreteDateEvent;
    invoke-virtual {v0}, Lcom/sec/jewishcalendar/events/ConcreteDateEvent;->getConcreteEventAlarmDateAndTime()Lcom/sec/jewishcalendar/events/DateAndTime;

    move-result-object v1

    .line 269
    .local v1, "concreteEventCandidateAlarmDateAndTime":Lcom/sec/jewishcalendar/events/DateAndTime;
    :goto_0
    iget v5, p0, Lcom/sec/jewishcalendar/events/EventProperties;->mEventRepeatTimes:I

    if-ge v4, v5, :cond_0

    invoke-virtual {v1, p1}, Lcom/sec/jewishcalendar/events/DateAndTime;->compareTo(Lcom/sec/jewishcalendar/events/DateAndTime;)I

    move-result v5

    if-lez v5, :cond_1

    .line 276
    :cond_0
    invoke-virtual {v1, p1}, Lcom/sec/jewishcalendar/events/DateAndTime;->compareTo(Lcom/sec/jewishcalendar/events/DateAndTime;)I

    move-result v5

    if-lez v5, :cond_2

    .line 280
    .end local v0    # "concreteEventCandidate":Lcom/sec/jewishcalendar/events/ConcreteDateEvent;
    :goto_1
    return-object v0

    .line 271
    .restart local v0    # "concreteEventCandidate":Lcom/sec/jewishcalendar/events/ConcreteDateEvent;
    :cond_1
    invoke-direct {p0, v3, v2}, Lcom/sec/jewishcalendar/events/EventProperties;->incrementConcreteEventCandidate(Lcom/sec/jewishcalendar/events/DateAndTime;Lcom/sec/jewishcalendar/events/DateAndTime;)V

    .line 272
    new-instance v0, Lcom/sec/jewishcalendar/events/ConcreteDateEvent;

    .end local v0    # "concreteEventCandidate":Lcom/sec/jewishcalendar/events/ConcreteDateEvent;
    iget-object v5, p0, Lcom/sec/jewishcalendar/events/EventProperties;->mContext:Landroid/content/Context;

    invoke-direct {v0, v5, v3, v2, p2}, Lcom/sec/jewishcalendar/events/ConcreteDateEvent;-><init>(Landroid/content/Context;Lcom/sec/jewishcalendar/events/DateAndTime;Lcom/sec/jewishcalendar/events/DateAndTime;I)V

    .line 273
    .restart local v0    # "concreteEventCandidate":Lcom/sec/jewishcalendar/events/ConcreteDateEvent;
    invoke-virtual {v0}, Lcom/sec/jewishcalendar/events/ConcreteDateEvent;->getConcreteEventAlarmDateAndTime()Lcom/sec/jewishcalendar/events/DateAndTime;

    move-result-object v1

    .line 274
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 280
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getNextConcreteEventWithAlarmInRegion(Lcom/sec/jewishcalendar/events/DateAndTime;Lcom/sec/jewishcalendar/events/DateAndTime;I)Lcom/sec/jewishcalendar/events/ConcreteDateEvent;
    .locals 8
    .param p1, "fromDateAndTime"    # Lcom/sec/jewishcalendar/events/DateAndTime;
    .param p2, "toDateAndTime"    # Lcom/sec/jewishcalendar/events/DateAndTime;
    .param p3, "globalEventsIndex"    # I

    .prologue
    const/4 v6, 0x0

    .line 285
    iget-object v7, p0, Lcom/sec/jewishcalendar/events/EventProperties;->m_sEventReminder:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 286
    .local v4, "reminder":I
    if-nez v4, :cond_1

    move-object v0, v6

    .line 307
    :cond_0
    :goto_0
    return-object v0

    .line 289
    :cond_1
    const/4 v5, 0x0

    .line 290
    .local v5, "repeatNumber":I
    new-instance v3, Lcom/sec/jewishcalendar/events/DateAndTime;

    iget-object v7, p0, Lcom/sec/jewishcalendar/events/EventProperties;->mEventStartDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    invoke-direct {v3, v7}, Lcom/sec/jewishcalendar/events/DateAndTime;-><init>(Lcom/sec/jewishcalendar/events/DateAndTime;)V

    .line 291
    .local v3, "concreteEventCandidateStartDateAndTime":Lcom/sec/jewishcalendar/events/DateAndTime;
    new-instance v2, Lcom/sec/jewishcalendar/events/DateAndTime;

    iget-object v7, p0, Lcom/sec/jewishcalendar/events/EventProperties;->mEventEndDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    invoke-direct {v2, v7}, Lcom/sec/jewishcalendar/events/DateAndTime;-><init>(Lcom/sec/jewishcalendar/events/DateAndTime;)V

    .line 292
    .local v2, "concreteEventCandidateEndDateAndTime":Lcom/sec/jewishcalendar/events/DateAndTime;
    new-instance v0, Lcom/sec/jewishcalendar/events/ConcreteDateEvent;

    iget-object v7, p0, Lcom/sec/jewishcalendar/events/EventProperties;->mContext:Landroid/content/Context;

    invoke-direct {v0, v7, v3, v2, p3}, Lcom/sec/jewishcalendar/events/ConcreteDateEvent;-><init>(Landroid/content/Context;Lcom/sec/jewishcalendar/events/DateAndTime;Lcom/sec/jewishcalendar/events/DateAndTime;I)V

    .line 294
    .local v0, "concreteEventCandidate":Lcom/sec/jewishcalendar/events/ConcreteDateEvent;
    invoke-virtual {v0}, Lcom/sec/jewishcalendar/events/ConcreteDateEvent;->getConcreteEventAlarmDateAndTime()Lcom/sec/jewishcalendar/events/DateAndTime;

    move-result-object v1

    .line 296
    .local v1, "concreteEventCandidateAlarmDateAndTime":Lcom/sec/jewishcalendar/events/DateAndTime;
    :goto_1
    iget v7, p0, Lcom/sec/jewishcalendar/events/EventProperties;->mEventRepeatTimes:I

    if-ge v5, v7, :cond_2

    invoke-virtual {v1, p1}, Lcom/sec/jewishcalendar/events/DateAndTime;->compareTo(Lcom/sec/jewishcalendar/events/DateAndTime;)I

    move-result v7

    if-ltz v7, :cond_4

    .line 304
    :cond_2
    invoke-virtual {v1, p1}, Lcom/sec/jewishcalendar/events/DateAndTime;->compareTo(Lcom/sec/jewishcalendar/events/DateAndTime;)I

    move-result v7

    if-ltz v7, :cond_3

    invoke-virtual {v1, p2}, Lcom/sec/jewishcalendar/events/DateAndTime;->compareTo(Lcom/sec/jewishcalendar/events/DateAndTime;)I

    move-result v7

    if-lez v7, :cond_0

    :cond_3
    move-object v0, v6

    .line 307
    goto :goto_0

    .line 298
    :cond_4
    invoke-direct {p0, v3, v2}, Lcom/sec/jewishcalendar/events/EventProperties;->incrementConcreteEventCandidate(Lcom/sec/jewishcalendar/events/DateAndTime;Lcom/sec/jewishcalendar/events/DateAndTime;)V

    .line 299
    new-instance v0, Lcom/sec/jewishcalendar/events/ConcreteDateEvent;

    .end local v0    # "concreteEventCandidate":Lcom/sec/jewishcalendar/events/ConcreteDateEvent;
    iget-object v7, p0, Lcom/sec/jewishcalendar/events/EventProperties;->mContext:Landroid/content/Context;

    invoke-direct {v0, v7, v3, v2, p3}, Lcom/sec/jewishcalendar/events/ConcreteDateEvent;-><init>(Landroid/content/Context;Lcom/sec/jewishcalendar/events/DateAndTime;Lcom/sec/jewishcalendar/events/DateAndTime;I)V

    .line 300
    .restart local v0    # "concreteEventCandidate":Lcom/sec/jewishcalendar/events/ConcreteDateEvent;
    invoke-virtual {v0}, Lcom/sec/jewishcalendar/events/ConcreteDateEvent;->getConcreteEventAlarmDateAndTime()Lcom/sec/jewishcalendar/events/DateAndTime;

    move-result-object v1

    .line 301
    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method

.method public resetMonthEventsScanParams()V
    .locals 2

    .prologue
    .line 82
    new-instance v0, Lcom/sec/jewishcalendar/events/DateAndTime;

    iget-object v1, p0, Lcom/sec/jewishcalendar/events/EventProperties;->mEventStartDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    invoke-direct {v0, v1}, Lcom/sec/jewishcalendar/events/DateAndTime;-><init>(Lcom/sec/jewishcalendar/events/DateAndTime;)V

    iput-object v0, p0, Lcom/sec/jewishcalendar/events/EventProperties;->mMonthEventsScanCurrentEventStartDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    .line 83
    new-instance v0, Lcom/sec/jewishcalendar/events/DateAndTime;

    iget-object v1, p0, Lcom/sec/jewishcalendar/events/EventProperties;->mEventEndDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    invoke-direct {v0, v1}, Lcom/sec/jewishcalendar/events/DateAndTime;-><init>(Lcom/sec/jewishcalendar/events/DateAndTime;)V

    iput-object v0, p0, Lcom/sec/jewishcalendar/events/EventProperties;->mMonthEventsScanCurrentEventEndDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    .line 84
    return-void
.end method

.method public setEventDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "eventDescription"    # Ljava/lang/String;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/sec/jewishcalendar/events/EventProperties;->m_sEventDescription:Ljava/lang/String;

    .line 166
    return-void
.end method

.method public setEventEndDateAndTime(Lcom/sec/jewishcalendar/events/DateAndTime;)V
    .locals 0
    .param p1, "eventEndDateAndTime"    # Lcom/sec/jewishcalendar/events/DateAndTime;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/sec/jewishcalendar/events/EventProperties;->mEventEndDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    .line 146
    return-void
.end method

.method public setEventRecurrence(Ljava/lang/String;)V
    .locals 0
    .param p1, "eventRecurrence"    # Ljava/lang/String;

    .prologue
    .line 175
    iput-object p1, p0, Lcom/sec/jewishcalendar/events/EventProperties;->m_sEventRecurrence:Ljava/lang/String;

    .line 176
    return-void
.end method

.method public setEventReminder(Ljava/lang/String;)V
    .locals 0
    .param p1, "eventReminder"    # Ljava/lang/String;

    .prologue
    .line 185
    iput-object p1, p0, Lcom/sec/jewishcalendar/events/EventProperties;->m_sEventReminder:Ljava/lang/String;

    .line 186
    return-void
.end method

.method public setEventRepeatTimes()V
    .locals 2

    .prologue
    .line 93
    iget-object v1, p0, Lcom/sec/jewishcalendar/events/EventProperties;->m_sEventRecurrence:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 94
    .local v0, "repeatTimes":I
    if-nez v0, :cond_0

    .line 95
    const/4 v1, 0x1

    iput v1, p0, Lcom/sec/jewishcalendar/events/EventProperties;->mEventRepeatTimes:I

    .line 98
    :goto_0
    return-void

    .line 97
    :cond_0
    const/16 v1, 0x64

    iput v1, p0, Lcom/sec/jewishcalendar/events/EventProperties;->mEventRepeatTimes:I

    goto :goto_0
.end method

.method public setEventStartDateAndTime(Lcom/sec/jewishcalendar/events/DateAndTime;)V
    .locals 0
    .param p1, "eventStartDateAndTime"    # Lcom/sec/jewishcalendar/events/DateAndTime;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/sec/jewishcalendar/events/EventProperties;->mEventStartDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    .line 136
    return-void
.end method

.method public setGdate()V
    .locals 4

    .prologue
    .line 88
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/EventProperties;->mHFromdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    iget-object v1, p0, Lcom/sec/jewishcalendar/events/EventProperties;->mEventStartDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    iget v1, v1, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nDay:I

    iget-object v2, p0, Lcom/sec/jewishcalendar/events/EventProperties;->mEventStartDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    iget v2, v2, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nMonth:I

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/sec/jewishcalendar/events/EventProperties;->mEventStartDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    iget v3, v3, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nYear:I

    invoke-static {v0, v1, v2, v3}, Lcom/sec/jewishcalendar/calculation/JewishCal;->SetGdate(Lcom/sec/jewishcalendar/calculation/HdateClass;III)I

    .line 89
    return-void
.end method
