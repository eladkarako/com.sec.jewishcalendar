.class public Lcom/sec/jewishcalendar/events/Event;
.super Landroid/app/Activity;
.source "Event.java"


# static fields
.field static final FROM_GREGORIAN_DATE_UPDATE_DIALOG_ID:I = 0x0

.field static final FROM_HEBREW_DATE_UPDATE_DIALOG_ID:I = 0x1

.field static final FROM_TIME_UPDATE_DIALOG_ID:I = 0x2

.field static final TO_GREGORIAN_DATE_UPDATE_DIALOG_ID:I = 0x3

.field static final TO_HEBREW_DATE_UPDATE_DIALOG_ID:I = 0x4

.field static final TO_TIME_UPDATE_DIALOG_ID:I = 0x5


# instance fields
.field private JC_DAYS:[Ljava/lang/String;

.field private JC_LETTERS:[Ljava/lang/String;

.field private JC_MONTHS:[Ljava/lang/String;

.field private mCancelButton:Landroid/widget/Button;

.field private mEventDescriptionEditText:Landroid/widget/EditText;

.field private mEventProps:Lcom/sec/jewishcalendar/events/EventProperties;

.field private mEventReminderLinearLayout:Landroid/widget/LinearLayout;

.field private mFromGregorianDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

.field private mGregorianDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

.field private mGregorianToDateDialog:Landroid/app/DatePickerDialog;

.field private mHFromdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

.field private mHTodate:Lcom/sec/jewishcalendar/calculation/HdateClass;

.field private mJewishDateSetListener:Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePickerDialog$OnJewishDateSetListener;

.field private mJewishToDateDialog:Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePickerDialog;

.field private mOkButton:Landroid/widget/Button;

.field private mPickFromDateButton:Landroid/widget/Button;

.field private mPickFromTimeButton:Landroid/widget/Button;

.field private mPickToDateButton:Landroid/widget/Button;

.field private mPickToTimeButton:Landroid/widget/Button;

.field private mReminderTiming:I

.field private mReminderType:Landroid/widget/TextView;

.field private mReminderTypes:[Ljava/lang/CharSequence;

.field private mRepeatEventLinearLayout:Landroid/widget/LinearLayout;

.field private mRepeatFrequency:I

.field private mRepeatType:Landroid/widget/TextView;

.field private mRepeatTypes:[Ljava/lang/CharSequence;

.field private mRes:Landroid/content/res/Resources;

.field private mTimeSetListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

.field private mToGregorianDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

.field private mToTimeDialog:Landroid/app/TimePickerDialog;

.field private m_bUserChangedFromDateAndTime:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 68
    new-instance v0, Lcom/sec/jewishcalendar/events/Event$1;

    invoke-direct {v0, p0}, Lcom/sec/jewishcalendar/events/Event$1;-><init>(Lcom/sec/jewishcalendar/events/Event;)V

    iput-object v0, p0, Lcom/sec/jewishcalendar/events/Event;->mGregorianDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    .line 111
    new-instance v0, Lcom/sec/jewishcalendar/events/Event$2;

    invoke-direct {v0, p0}, Lcom/sec/jewishcalendar/events/Event$2;-><init>(Lcom/sec/jewishcalendar/events/Event;)V

    iput-object v0, p0, Lcom/sec/jewishcalendar/events/Event;->mJewishDateSetListener:Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePickerDialog$OnJewishDateSetListener;

    .line 150
    new-instance v0, Lcom/sec/jewishcalendar/events/Event$3;

    invoke-direct {v0, p0}, Lcom/sec/jewishcalendar/events/Event$3;-><init>(Lcom/sec/jewishcalendar/events/Event;)V

    iput-object v0, p0, Lcom/sec/jewishcalendar/events/Event;->mTimeSetListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

    .line 184
    new-instance v0, Lcom/sec/jewishcalendar/calculation/HdateClass;

    invoke-direct {v0}, Lcom/sec/jewishcalendar/calculation/HdateClass;-><init>()V

    iput-object v0, p0, Lcom/sec/jewishcalendar/events/Event;->mHFromdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    .line 185
    new-instance v0, Lcom/sec/jewishcalendar/calculation/HdateClass;

    invoke-direct {v0}, Lcom/sec/jewishcalendar/calculation/HdateClass;-><init>()V

    iput-object v0, p0, Lcom/sec/jewishcalendar/events/Event;->mHTodate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    .line 187
    iput-object v1, p0, Lcom/sec/jewishcalendar/events/Event;->JC_LETTERS:[Ljava/lang/String;

    .line 188
    iput-object v1, p0, Lcom/sec/jewishcalendar/events/Event;->JC_MONTHS:[Ljava/lang/String;

    .line 189
    iput-object v1, p0, Lcom/sec/jewishcalendar/events/Event;->JC_DAYS:[Ljava/lang/String;

    .line 36
    return-void
.end method

.method static synthetic access$0(Lcom/sec/jewishcalendar/events/Event;)Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/sec/jewishcalendar/events/Event;->m_bUserChangedFromDateAndTime:Z

    return v0
.end method

.method static synthetic access$1(Lcom/sec/jewishcalendar/events/Event;)Lcom/sec/jewishcalendar/events/DateAndTime;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/Event;->mFromGregorianDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    return-object v0
.end method

.method static synthetic access$10(Lcom/sec/jewishcalendar/events/Event;)Landroid/app/TimePickerDialog;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/Event;->mToTimeDialog:Landroid/app/TimePickerDialog;

    return-object v0
.end method

.method static synthetic access$11(Lcom/sec/jewishcalendar/events/Event;Z)V
    .locals 0

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/sec/jewishcalendar/events/Event;->m_bUserChangedFromDateAndTime:Z

    return-void
.end method

.method static synthetic access$12(Lcom/sec/jewishcalendar/events/Event;)Z
    .locals 1

    .prologue
    .line 384
    invoke-direct {p0}, Lcom/sec/jewishcalendar/events/Event;->isValidEvent()Z

    move-result v0

    return v0
.end method

.method static synthetic access$13(Lcom/sec/jewishcalendar/events/Event;)V
    .locals 0

    .prologue
    .line 352
    invoke-direct {p0}, Lcom/sec/jewishcalendar/events/Event;->chooseRepeatFrequency()V

    return-void
.end method

.method static synthetic access$14(Lcom/sec/jewishcalendar/events/Event;)V
    .locals 0

    .prologue
    .line 368
    invoke-direct {p0}, Lcom/sec/jewishcalendar/events/Event;->chooseReminderTiming()V

    return-void
.end method

.method static synthetic access$15(Lcom/sec/jewishcalendar/events/Event;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/Event;->mEventDescriptionEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$16(Lcom/sec/jewishcalendar/events/Event;I)V
    .locals 0

    .prologue
    .line 49
    iput p1, p0, Lcom/sec/jewishcalendar/events/Event;->mRepeatFrequency:I

    return-void
.end method

.method static synthetic access$17(Lcom/sec/jewishcalendar/events/Event;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/Event;->mRepeatType:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$18(Lcom/sec/jewishcalendar/events/Event;)[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/Event;->mRepeatTypes:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$19(Lcom/sec/jewishcalendar/events/Event;I)V
    .locals 0

    .prologue
    .line 52
    iput p1, p0, Lcom/sec/jewishcalendar/events/Event;->mReminderTiming:I

    return-void
.end method

.method static synthetic access$2(Lcom/sec/jewishcalendar/events/Event;)Lcom/sec/jewishcalendar/events/DateAndTime;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/Event;->mToGregorianDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    return-object v0
.end method

.method static synthetic access$20(Lcom/sec/jewishcalendar/events/Event;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/Event;->mReminderType:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$21(Lcom/sec/jewishcalendar/events/Event;)[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/Event;->mReminderTypes:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$3(Lcom/sec/jewishcalendar/events/Event;)Lcom/sec/jewishcalendar/calculation/HdateClass;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/Event;->mHFromdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    return-object v0
.end method

.method static synthetic access$4(Lcom/sec/jewishcalendar/events/Event;)V
    .locals 0

    .prologue
    .line 579
    invoke-direct {p0}, Lcom/sec/jewishcalendar/events/Event;->updateFromDateAndTimeDisplay()V

    return-void
.end method

.method static synthetic access$5(Lcom/sec/jewishcalendar/events/Event;Lcom/sec/jewishcalendar/events/DateAndTime;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/sec/jewishcalendar/events/Event;->mToGregorianDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    return-void
.end method

.method static synthetic access$6(Lcom/sec/jewishcalendar/events/Event;)Lcom/sec/jewishcalendar/calculation/HdateClass;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/Event;->mHTodate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    return-object v0
.end method

.method static synthetic access$7(Lcom/sec/jewishcalendar/events/Event;)Landroid/app/DatePickerDialog;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/Event;->mGregorianToDateDialog:Landroid/app/DatePickerDialog;

    return-object v0
.end method

.method static synthetic access$8(Lcom/sec/jewishcalendar/events/Event;)V
    .locals 0

    .prologue
    .line 613
    invoke-direct {p0}, Lcom/sec/jewishcalendar/events/Event;->updateToDateAndTimeDisplay()V

    return-void
.end method

.method static synthetic access$9(Lcom/sec/jewishcalendar/events/Event;)Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePickerDialog;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/Event;->mJewishToDateDialog:Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePickerDialog;

    return-object v0
.end method

.method private chooseReminderTiming()V
    .locals 5

    .prologue
    .line 370
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 371
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0a0040

    invoke-virtual {p0, v2}, Lcom/sec/jewishcalendar/events/Event;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 373
    iget-object v2, p0, Lcom/sec/jewishcalendar/events/Event;->mReminderTypes:[Ljava/lang/CharSequence;

    iget v3, p0, Lcom/sec/jewishcalendar/events/Event;->mReminderTiming:I

    new-instance v4, Lcom/sec/jewishcalendar/events/Event$14;

    invoke-direct {v4, p0}, Lcom/sec/jewishcalendar/events/Event$14;-><init>(Lcom/sec/jewishcalendar/events/Event;)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 380
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 381
    .local v0, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 382
    return-void
.end method

.method private chooseRepeatFrequency()V
    .locals 5

    .prologue
    .line 354
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 355
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0a0037

    invoke-virtual {p0, v2}, Lcom/sec/jewishcalendar/events/Event;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 357
    iget-object v2, p0, Lcom/sec/jewishcalendar/events/Event;->mRepeatTypes:[Ljava/lang/CharSequence;

    iget v3, p0, Lcom/sec/jewishcalendar/events/Event;->mRepeatFrequency:I

    new-instance v4, Lcom/sec/jewishcalendar/events/Event$13;

    invoke-direct {v4, p0}, Lcom/sec/jewishcalendar/events/Event$13;-><init>(Lcom/sec/jewishcalendar/events/Event;)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 364
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 365
    .local v0, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 366
    return-void
.end method

.method private closeKeyboard()V
    .locals 2

    .prologue
    .line 336
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/Event;->mEventDescriptionEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/sec/jewishcalendar/events/Event$12;

    invoke-direct {v1, p0}, Lcom/sec/jewishcalendar/events/Event$12;-><init>(Lcom/sec/jewishcalendar/events/Event;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 349
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/Event;->mEventDescriptionEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 350
    return-void
.end method

.method private dateAndTimeOverlap()Z
    .locals 5

    .prologue
    .line 561
    sget-object v0, Lcom/sec/jewishcalendar/events/GlobalEvents;->mEventList:Lcom/sec/jewishcalendar/events/EventList;

    .line 563
    .local v0, "eventList":Lcom/sec/jewishcalendar/events/EventList;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget v3, Lcom/sec/jewishcalendar/events/GlobalEvents;->m_nSelectedEventId:I

    if-eq v2, v3, :cond_0

    iget-object v3, v0, Lcom/sec/jewishcalendar/events/EventList;->mEventsProperties:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v2, v3, :cond_1

    .line 576
    :cond_0
    const/4 v3, 0x0

    :goto_1
    return v3

    .line 565
    :cond_1
    iget-object v3, v0, Lcom/sec/jewishcalendar/events/EventList;->mEventsProperties:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/jewishcalendar/events/EventProperties;

    .line 566
    .local v1, "eventProperties":Lcom/sec/jewishcalendar/events/EventProperties;
    iget-object v3, p0, Lcom/sec/jewishcalendar/events/Event;->mFromGregorianDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    invoke-virtual {v1}, Lcom/sec/jewishcalendar/events/EventProperties;->getEventStartDateAndTime()Lcom/sec/jewishcalendar/events/DateAndTime;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/jewishcalendar/events/DateAndTime;->equals(Lcom/sec/jewishcalendar/events/DateAndTime;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 567
    iget-object v3, p0, Lcom/sec/jewishcalendar/events/Event;->mToGregorianDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    invoke-virtual {v1}, Lcom/sec/jewishcalendar/events/EventProperties;->getEventEndDateAndTime()Lcom/sec/jewishcalendar/events/DateAndTime;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/jewishcalendar/events/DateAndTime;->equals(Lcom/sec/jewishcalendar/events/DateAndTime;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 568
    iget-object v3, p0, Lcom/sec/jewishcalendar/events/Event;->mFromGregorianDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    invoke-virtual {v1}, Lcom/sec/jewishcalendar/events/EventProperties;->getEventStartDateAndTime()Lcom/sec/jewishcalendar/events/DateAndTime;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/jewishcalendar/events/DateAndTime;->compareTo(Lcom/sec/jewishcalendar/events/DateAndTime;)I

    move-result v3

    if-gez v3, :cond_2

    .line 569
    invoke-virtual {v1}, Lcom/sec/jewishcalendar/events/EventProperties;->getEventStartDateAndTime()Lcom/sec/jewishcalendar/events/DateAndTime;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/jewishcalendar/events/Event;->mToGregorianDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    invoke-virtual {v3, v4}, Lcom/sec/jewishcalendar/events/DateAndTime;->compareTo(Lcom/sec/jewishcalendar/events/DateAndTime;)I

    move-result v3

    if-ltz v3, :cond_3

    .line 570
    :cond_2
    invoke-virtual {v1}, Lcom/sec/jewishcalendar/events/EventProperties;->getEventStartDateAndTime()Lcom/sec/jewishcalendar/events/DateAndTime;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/jewishcalendar/events/Event;->mFromGregorianDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    invoke-virtual {v3, v4}, Lcom/sec/jewishcalendar/events/DateAndTime;->compareTo(Lcom/sec/jewishcalendar/events/DateAndTime;)I

    move-result v3

    if-gez v3, :cond_4

    .line 571
    iget-object v3, p0, Lcom/sec/jewishcalendar/events/Event;->mFromGregorianDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    invoke-virtual {v1}, Lcom/sec/jewishcalendar/events/EventProperties;->getEventEndDateAndTime()Lcom/sec/jewishcalendar/events/DateAndTime;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/jewishcalendar/events/DateAndTime;->compareTo(Lcom/sec/jewishcalendar/events/DateAndTime;)I

    move-result v3

    if-gez v3, :cond_4

    .line 573
    :cond_3
    const/4 v3, 0x1

    goto :goto_1

    .line 563
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private initDateAndTimeMembers()V
    .locals 4

    .prologue
    .line 499
    new-instance v0, Lcom/sec/jewishcalendar/events/DateAndTime;

    iget-object v1, p0, Lcom/sec/jewishcalendar/events/Event;->mEventProps:Lcom/sec/jewishcalendar/events/EventProperties;

    invoke-virtual {v1}, Lcom/sec/jewishcalendar/events/EventProperties;->getEventStartDateAndTime()Lcom/sec/jewishcalendar/events/DateAndTime;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/jewishcalendar/events/DateAndTime;-><init>(Lcom/sec/jewishcalendar/events/DateAndTime;)V

    iput-object v0, p0, Lcom/sec/jewishcalendar/events/Event;->mFromGregorianDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    .line 500
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/Event;->mHFromdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    iget-object v1, p0, Lcom/sec/jewishcalendar/events/Event;->mFromGregorianDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    iget v1, v1, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nDay:I

    iget-object v2, p0, Lcom/sec/jewishcalendar/events/Event;->mFromGregorianDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    iget v2, v2, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nMonth:I

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/sec/jewishcalendar/events/Event;->mFromGregorianDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    iget v3, v3, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nYear:I

    invoke-static {v0, v1, v2, v3}, Lcom/sec/jewishcalendar/calculation/JewishCal;->SetGdate(Lcom/sec/jewishcalendar/calculation/HdateClass;III)I

    .line 501
    new-instance v0, Lcom/sec/jewishcalendar/events/DateAndTime;

    iget-object v1, p0, Lcom/sec/jewishcalendar/events/Event;->mEventProps:Lcom/sec/jewishcalendar/events/EventProperties;

    invoke-virtual {v1}, Lcom/sec/jewishcalendar/events/EventProperties;->getEventEndDateAndTime()Lcom/sec/jewishcalendar/events/DateAndTime;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/jewishcalendar/events/DateAndTime;-><init>(Lcom/sec/jewishcalendar/events/DateAndTime;)V

    iput-object v0, p0, Lcom/sec/jewishcalendar/events/Event;->mToGregorianDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    .line 502
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/Event;->mHTodate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    iget-object v1, p0, Lcom/sec/jewishcalendar/events/Event;->mToGregorianDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    iget v1, v1, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nDay:I

    iget-object v2, p0, Lcom/sec/jewishcalendar/events/Event;->mToGregorianDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    iget v2, v2, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nMonth:I

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/sec/jewishcalendar/events/Event;->mToGregorianDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    iget v3, v3, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nYear:I

    invoke-static {v0, v1, v2, v3}, Lcom/sec/jewishcalendar/calculation/JewishCal;->SetGdate(Lcom/sec/jewishcalendar/calculation/HdateClass;III)I

    .line 503
    return-void
.end method

.method private initJCStrings()V
    .locals 2

    .prologue
    .line 465
    invoke-virtual {p0}, Lcom/sec/jewishcalendar/events/Event;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/jewishcalendar/events/Event;->mRes:Landroid/content/res/Resources;

    .line 466
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/Event;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f060003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/jewishcalendar/events/Event;->JC_LETTERS:[Ljava/lang/String;

    .line 467
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/Event;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f060004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/jewishcalendar/events/Event;->JC_MONTHS:[Ljava/lang/String;

    .line 468
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/Event;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f060002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/jewishcalendar/events/Event;->JC_DAYS:[Ljava/lang/String;

    .line 469
    return-void
.end method

.method private initReminderTypes()V
    .locals 3

    .prologue
    .line 486
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/sec/jewishcalendar/events/Event;->mReminderTypes:[Ljava/lang/CharSequence;

    .line 488
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/Event;->mReminderTypes:[Ljava/lang/CharSequence;

    const/4 v1, 0x0

    const v2, 0x7f0a0041

    invoke-virtual {p0, v2}, Lcom/sec/jewishcalendar/events/Event;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 489
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/Event;->mReminderTypes:[Ljava/lang/CharSequence;

    const/4 v1, 0x1

    const v2, 0x7f0a0042

    invoke-virtual {p0, v2}, Lcom/sec/jewishcalendar/events/Event;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 490
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/Event;->mReminderTypes:[Ljava/lang/CharSequence;

    const/4 v1, 0x2

    const v2, 0x7f0a0043

    invoke-virtual {p0, v2}, Lcom/sec/jewishcalendar/events/Event;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 491
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/Event;->mReminderTypes:[Ljava/lang/CharSequence;

    const/4 v1, 0x3

    const v2, 0x7f0a0044

    invoke-virtual {p0, v2}, Lcom/sec/jewishcalendar/events/Event;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 492
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/Event;->mReminderTypes:[Ljava/lang/CharSequence;

    const/4 v1, 0x4

    const v2, 0x7f0a0045

    invoke-virtual {p0, v2}, Lcom/sec/jewishcalendar/events/Event;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 493
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/Event;->mReminderTypes:[Ljava/lang/CharSequence;

    const/4 v1, 0x5

    const v2, 0x7f0a0046

    invoke-virtual {p0, v2}, Lcom/sec/jewishcalendar/events/Event;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 494
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/Event;->mReminderTypes:[Ljava/lang/CharSequence;

    const/4 v1, 0x6

    const v2, 0x7f0a0047

    invoke-virtual {p0, v2}, Lcom/sec/jewishcalendar/events/Event;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 495
    return-void
.end method

.method private initRepeatTypes()V
    .locals 3

    .prologue
    .line 473
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/sec/jewishcalendar/events/Event;->mRepeatTypes:[Ljava/lang/CharSequence;

    .line 475
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/Event;->mRepeatTypes:[Ljava/lang/CharSequence;

    const/4 v1, 0x0

    const v2, 0x7f0a0038

    invoke-virtual {p0, v2}, Lcom/sec/jewishcalendar/events/Event;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 476
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/Event;->mRepeatTypes:[Ljava/lang/CharSequence;

    const/4 v1, 0x1

    const v2, 0x7f0a0039

    invoke-virtual {p0, v2}, Lcom/sec/jewishcalendar/events/Event;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 477
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/Event;->mRepeatTypes:[Ljava/lang/CharSequence;

    const/4 v1, 0x2

    const v2, 0x7f0a003a

    invoke-virtual {p0, v2}, Lcom/sec/jewishcalendar/events/Event;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 478
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/Event;->mRepeatTypes:[Ljava/lang/CharSequence;

    const/4 v1, 0x3

    const v2, 0x7f0a003b

    invoke-virtual {p0, v2}, Lcom/sec/jewishcalendar/events/Event;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 479
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/Event;->mRepeatTypes:[Ljava/lang/CharSequence;

    const/4 v1, 0x4

    const v2, 0x7f0a003c

    invoke-virtual {p0, v2}, Lcom/sec/jewishcalendar/events/Event;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 480
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/Event;->mRepeatTypes:[Ljava/lang/CharSequence;

    const/4 v1, 0x5

    const v2, 0x7f0a003d

    invoke-virtual {p0, v2}, Lcom/sec/jewishcalendar/events/Event;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 481
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/Event;->mRepeatTypes:[Ljava/lang/CharSequence;

    const/4 v1, 0x6

    const v2, 0x7f0a003e

    invoke-virtual {p0, v2}, Lcom/sec/jewishcalendar/events/Event;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 482
    return-void
.end method

.method private initScreenElements()V
    .locals 3

    .prologue
    .line 214
    const v0, 0x7f0e0032

    invoke-virtual {p0, v0}, Lcom/sec/jewishcalendar/events/Event;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/sec/jewishcalendar/events/Event;->mEventDescriptionEditText:Landroid/widget/EditText;

    .line 215
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/Event;->mEventDescriptionEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/sec/jewishcalendar/events/Event;->mEventProps:Lcom/sec/jewishcalendar/events/EventProperties;

    invoke-virtual {v1}, Lcom/sec/jewishcalendar/events/EventProperties;->getEventDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 217
    const v0, 0x7f0e005b

    invoke-virtual {p0, v0}, Lcom/sec/jewishcalendar/events/Event;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/jewishcalendar/events/Event;->mRepeatType:Landroid/widget/TextView;

    .line 218
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/Event;->mEventProps:Lcom/sec/jewishcalendar/events/EventProperties;

    invoke-virtual {v0}, Lcom/sec/jewishcalendar/events/EventProperties;->getEventRecurrence()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/sec/jewishcalendar/events/Event;->mRepeatFrequency:I

    .line 219
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/Event;->mRepeatType:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/jewishcalendar/events/Event;->mRepeatTypes:[Ljava/lang/CharSequence;

    iget v2, p0, Lcom/sec/jewishcalendar/events/Event;->mRepeatFrequency:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    const v0, 0x7f0e005e

    invoke-virtual {p0, v0}, Lcom/sec/jewishcalendar/events/Event;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/jewishcalendar/events/Event;->mReminderType:Landroid/widget/TextView;

    .line 222
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/Event;->mEventProps:Lcom/sec/jewishcalendar/events/EventProperties;

    invoke-virtual {v0}, Lcom/sec/jewishcalendar/events/EventProperties;->getEventReminder()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/sec/jewishcalendar/events/Event;->mReminderTiming:I

    .line 223
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/Event;->mReminderType:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/jewishcalendar/events/Event;->mReminderTypes:[Ljava/lang/CharSequence;

    iget v2, p0, Lcom/sec/jewishcalendar/events/Event;->mReminderTiming:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    const v0, 0x7f0e0034

    invoke-virtual {p0, v0}, Lcom/sec/jewishcalendar/events/Event;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/jewishcalendar/events/Event;->mPickFromDateButton:Landroid/widget/Button;

    .line 226
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/Event;->mPickFromDateButton:Landroid/widget/Button;

    new-instance v1, Lcom/sec/jewishcalendar/events/Event$4;

    invoke-direct {v1, p0}, Lcom/sec/jewishcalendar/events/Event$4;-><init>(Lcom/sec/jewishcalendar/events/Event;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 238
    const v0, 0x7f0e0035

    invoke-virtual {p0, v0}, Lcom/sec/jewishcalendar/events/Event;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/jewishcalendar/events/Event;->mPickFromTimeButton:Landroid/widget/Button;

    .line 239
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/Event;->mPickFromTimeButton:Landroid/widget/Button;

    new-instance v1, Lcom/sec/jewishcalendar/events/Event$5;

    invoke-direct {v1, p0}, Lcom/sec/jewishcalendar/events/Event$5;-><init>(Lcom/sec/jewishcalendar/events/Event;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 248
    const v0, 0x7f0e0039

    invoke-virtual {p0, v0}, Lcom/sec/jewishcalendar/events/Event;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/jewishcalendar/events/Event;->mPickToDateButton:Landroid/widget/Button;

    .line 250
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/Event;->mPickToDateButton:Landroid/widget/Button;

    new-instance v1, Lcom/sec/jewishcalendar/events/Event$6;

    invoke-direct {v1, p0}, Lcom/sec/jewishcalendar/events/Event$6;-><init>(Lcom/sec/jewishcalendar/events/Event;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 262
    const v0, 0x7f0e003a

    invoke-virtual {p0, v0}, Lcom/sec/jewishcalendar/events/Event;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/jewishcalendar/events/Event;->mPickToTimeButton:Landroid/widget/Button;

    .line 263
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/Event;->mPickToTimeButton:Landroid/widget/Button;

    new-instance v1, Lcom/sec/jewishcalendar/events/Event$7;

    invoke-direct {v1, p0}, Lcom/sec/jewishcalendar/events/Event$7;-><init>(Lcom/sec/jewishcalendar/events/Event;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 273
    invoke-direct {p0}, Lcom/sec/jewishcalendar/events/Event;->updateFromDateAndTimeDisplay()V

    .line 274
    invoke-direct {p0}, Lcom/sec/jewishcalendar/events/Event;->updateToDateAndTimeDisplay()V

    .line 276
    const v0, 0x7f0e006c

    invoke-virtual {p0, v0}, Lcom/sec/jewishcalendar/events/Event;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/jewishcalendar/events/Event;->mOkButton:Landroid/widget/Button;

    .line 277
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/Event;->mOkButton:Landroid/widget/Button;

    new-instance v1, Lcom/sec/jewishcalendar/events/Event$8;

    invoke-direct {v1, p0}, Lcom/sec/jewishcalendar/events/Event$8;-><init>(Lcom/sec/jewishcalendar/events/Event;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 285
    const v0, 0x7f0e006b

    invoke-virtual {p0, v0}, Lcom/sec/jewishcalendar/events/Event;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/jewishcalendar/events/Event;->mCancelButton:Landroid/widget/Button;

    .line 286
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/Event;->mCancelButton:Landroid/widget/Button;

    new-instance v1, Lcom/sec/jewishcalendar/events/Event$9;

    invoke-direct {v1, p0}, Lcom/sec/jewishcalendar/events/Event$9;-><init>(Lcom/sec/jewishcalendar/events/Event;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 296
    const v0, 0x7f0e0059

    invoke-virtual {p0, v0}, Lcom/sec/jewishcalendar/events/Event;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/jewishcalendar/events/Event;->mRepeatEventLinearLayout:Landroid/widget/LinearLayout;

    .line 297
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/Event;->mRepeatEventLinearLayout:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/sec/jewishcalendar/events/Event$10;

    invoke-direct {v1, p0}, Lcom/sec/jewishcalendar/events/Event$10;-><init>(Lcom/sec/jewishcalendar/events/Event;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 305
    const v0, 0x7f0e005c

    invoke-virtual {p0, v0}, Lcom/sec/jewishcalendar/events/Event;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/jewishcalendar/events/Event;->mEventReminderLinearLayout:Landroid/widget/LinearLayout;

    .line 306
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/Event;->mEventReminderLinearLayout:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/sec/jewishcalendar/events/Event$11;

    invoke-direct {v1, p0}, Lcom/sec/jewishcalendar/events/Event$11;-><init>(Lcom/sec/jewishcalendar/events/Event;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 313
    return-void
.end method

.method private initToDateAndTimeDialogs()V
    .locals 6

    .prologue
    .line 507
    .line 508
    new-instance v0, Landroid/app/DatePickerDialog;

    .line 509
    iget-object v2, p0, Lcom/sec/jewishcalendar/events/Event;->mGregorianDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    .line 510
    iget-object v1, p0, Lcom/sec/jewishcalendar/events/Event;->mToGregorianDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    iget v3, v1, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nYear:I

    iget-object v1, p0, Lcom/sec/jewishcalendar/events/Event;->mToGregorianDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    iget v4, v1, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nMonth:I

    .line 511
    iget-object v1, p0, Lcom/sec/jewishcalendar/events/Event;->mToGregorianDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    iget v5, v1, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nDay:I

    move-object v1, p0

    .line 508
    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 507
    iput-object v0, p0, Lcom/sec/jewishcalendar/events/Event;->mGregorianToDateDialog:Landroid/app/DatePickerDialog;

    .line 514
    new-instance v0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePickerDialog;

    .line 515
    iget-object v2, p0, Lcom/sec/jewishcalendar/events/Event;->mJewishDateSetListener:Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePickerDialog$OnJewishDateSetListener;

    .line 516
    iget-object v1, p0, Lcom/sec/jewishcalendar/events/Event;->mHTodate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    iget v3, v1, Lcom/sec/jewishcalendar/calculation/HdateClass;->hyear:I

    iget-object v1, p0, Lcom/sec/jewishcalendar/events/Event;->mHTodate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    iget v4, v1, Lcom/sec/jewishcalendar/calculation/HdateClass;->hmonth:I

    iget-object v1, p0, Lcom/sec/jewishcalendar/events/Event;->mHTodate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    iget v5, v1, Lcom/sec/jewishcalendar/calculation/HdateClass;->hday:I

    move-object v1, p0

    .line 514
    invoke-direct/range {v0 .. v5}, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePickerDialog;-><init>(Landroid/content/Context;Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePickerDialog$OnJewishDateSetListener;III)V

    .line 513
    iput-object v0, p0, Lcom/sec/jewishcalendar/events/Event;->mJewishToDateDialog:Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePickerDialog;

    .line 519
    new-instance v0, Landroid/app/TimePickerDialog;

    .line 520
    iget-object v2, p0, Lcom/sec/jewishcalendar/events/Event;->mTimeSetListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

    .line 521
    iget-object v1, p0, Lcom/sec/jewishcalendar/events/Event;->mToGregorianDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    iget v3, v1, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nHour:I

    iget-object v1, p0, Lcom/sec/jewishcalendar/events/Event;->mToGregorianDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    iget v4, v1, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nMinute:I

    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v5

    move-object v1, p0

    .line 519
    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    .line 518
    iput-object v0, p0, Lcom/sec/jewishcalendar/events/Event;->mToTimeDialog:Landroid/app/TimePickerDialog;

    .line 522
    return-void
.end method

.method private isValidEvent()Z
    .locals 8

    .prologue
    const v7, 0x7f0a0025

    const v6, 0x7f0a0024

    .line 386
    const/4 v2, 0x0

    .line 387
    .local v2, "alertMsg":Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/jewishcalendar/events/Event;->mToGregorianDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    iget-object v5, p0, Lcom/sec/jewishcalendar/events/Event;->mFromGregorianDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    invoke-virtual {v4, v5}, Lcom/sec/jewishcalendar/events/DateAndTime;->equals(Lcom/sec/jewishcalendar/events/DateAndTime;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 388
    iget-object v4, p0, Lcom/sec/jewishcalendar/events/Event;->mToGregorianDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    iget-object v5, p0, Lcom/sec/jewishcalendar/events/Event;->mFromGregorianDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    invoke-virtual {v4, v5}, Lcom/sec/jewishcalendar/events/DateAndTime;->compareTo(Lcom/sec/jewishcalendar/events/DateAndTime;)I

    move-result v4

    if-gez v4, :cond_1

    .line 389
    :cond_0
    invoke-virtual {p0, v6}, Lcom/sec/jewishcalendar/events/Event;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 390
    :cond_1
    if-nez v2, :cond_2

    invoke-direct {p0}, Lcom/sec/jewishcalendar/events/Event;->dateAndTimeOverlap()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 391
    invoke-virtual {p0, v7}, Lcom/sec/jewishcalendar/events/Event;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 392
    :cond_2
    if-nez v2, :cond_3

    .line 393
    const/4 v4, 0x1

    .line 435
    :goto_0
    return v4

    .line 396
    :cond_3
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 397
    .local v3, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 399
    invoke-virtual {p0, v6}, Lcom/sec/jewishcalendar/events/Event;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 401
    const v4, 0x7f0a001f

    new-instance v5, Lcom/sec/jewishcalendar/events/Event$15;

    invoke-direct {v5, p0}, Lcom/sec/jewishcalendar/events/Event$15;-><init>(Lcom/sec/jewishcalendar/events/Event;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 421
    :cond_4
    :goto_1
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 422
    .local v1, "alert":Landroid/app/AlertDialog;
    const/high16 v0, 0x41600000    # 14.0f

    .line 427
    .local v0, "ButtonTextSize":F
    invoke-virtual {p0}, Lcom/sec/jewishcalendar/events/Event;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v4, v4, 0xf

    .line 428
    const/4 v5, 0x4

    .line 427
    if-ne v4, v5, :cond_5

    .line 430
    const/high16 v0, 0x41980000    # 19.0f

    .line 432
    :cond_5
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 433
    const/4 v4, -0x1

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setTextSize(F)V

    .line 434
    const/4 v4, -0x2

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setTextSize(F)V

    .line 435
    const/4 v4, 0x0

    goto :goto_0

    .line 407
    .end local v0    # "ButtonTextSize":F
    .end local v1    # "alert":Landroid/app/AlertDialog;
    :cond_6
    invoke-virtual {p0, v7}, Lcom/sec/jewishcalendar/events/Event;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 410
    const v4, 0x7f0a0026

    new-instance v5, Lcom/sec/jewishcalendar/events/Event$16;

    invoke-direct {v5, p0}, Lcom/sec/jewishcalendar/events/Event$16;-><init>(Lcom/sec/jewishcalendar/events/Event;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 415
    const v4, 0x7f0a0027

    new-instance v5, Lcom/sec/jewishcalendar/events/Event$17;

    invoke-direct {v5, p0}, Lcom/sec/jewishcalendar/events/Event$17;-><init>(Lcom/sec/jewishcalendar/events/Event;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1
.end method

.method private updateFromDateAndTimeDisplay()V
    .locals 12

    .prologue
    .line 581
    iget-object v8, p0, Lcom/sec/jewishcalendar/events/Event;->mFromGregorianDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    invoke-virtual {v8}, Lcom/sec/jewishcalendar/events/DateAndTime;->toString()Ljava/lang/String;

    move-result-object v4

    .line 582
    .local v4, "fromDateAndTimeStr":Ljava/lang/String;
    const/16 v8, 0x20

    invoke-virtual {v4, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 584
    .local v6, "spaceLocation":I
    const/4 v8, 0x0

    invoke-virtual {v4, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 585
    .local v0, "dateStr":Ljava/lang/String;
    add-int/lit8 v8, v6, 0x1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v4, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 587
    .local v7, "timeStr":Ljava/lang/String;
    invoke-static {}, Lcom/sec/jewishcalendar/JewishCalendarView;->isJewishCalendar()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 589
    iget-object v8, p0, Lcom/sec/jewishcalendar/events/Event;->mHFromdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    iget-object v9, p0, Lcom/sec/jewishcalendar/events/Event;->JC_LETTERS:[Ljava/lang/String;

    iget-object v10, p0, Lcom/sec/jewishcalendar/events/Event;->JC_MONTHS:[Ljava/lang/String;

    iget-object v11, p0, Lcom/sec/jewishcalendar/events/Event;->JC_DAYS:[Ljava/lang/String;

    invoke-virtual {v8, v9, v10, v11}, Lcom/sec/jewishcalendar/calculation/HdateClass;->toJewishDateString([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 590
    .local v5, "jewishDateStr":Ljava/lang/String;
    iget-object v8, p0, Lcom/sec/jewishcalendar/events/Event;->mPickFromDateButton:Landroid/widget/Button;

    invoke-virtual {v8, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 596
    .end local v5    # "jewishDateStr":Ljava/lang/String;
    :goto_0
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 598
    iget-object v8, p0, Lcom/sec/jewishcalendar/events/Event;->mPickFromTimeButton:Landroid/widget/Button;

    invoke-virtual {v8, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 611
    :goto_1
    return-void

    .line 594
    :cond_0
    iget-object v8, p0, Lcom/sec/jewishcalendar/events/Event;->mPickFromDateButton:Landroid/widget/Button;

    invoke-virtual {v8, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 602
    :cond_1
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v8, "H:mm"

    invoke-direct {v2, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 603
    .local v2, "f1":Ljava/text/SimpleDateFormat;
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v8, "h:mma"

    invoke-direct {v3, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 605
    .local v3, "f2":Ljava/text/SimpleDateFormat;
    :try_start_0
    iget-object v8, p0, Lcom/sec/jewishcalendar/events/Event;->mPickFromTimeButton:Landroid/widget/Button;

    invoke-virtual {v2, v7}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 606
    :catch_0
    move-exception v1

    .line 607
    .local v1, "e":Ljava/text/ParseException;
    iget-object v8, p0, Lcom/sec/jewishcalendar/events/Event;->mPickFromTimeButton:Landroid/widget/Button;

    invoke-virtual {v8, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 608
    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_1
.end method

.method private updateToDateAndTimeDisplay()V
    .locals 12

    .prologue
    .line 615
    iget-object v8, p0, Lcom/sec/jewishcalendar/events/Event;->mToGregorianDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    invoke-virtual {v8}, Lcom/sec/jewishcalendar/events/DateAndTime;->toString()Ljava/lang/String;

    move-result-object v7

    .line 616
    .local v7, "toDateAndTimeStr":Ljava/lang/String;
    const/16 v8, 0x20

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 618
    .local v5, "spaceLocation":I
    const/4 v8, 0x0

    invoke-virtual {v7, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 619
    .local v0, "dateStr":Ljava/lang/String;
    add-int/lit8 v8, v5, 0x1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 621
    .local v6, "timeStr":Ljava/lang/String;
    invoke-static {}, Lcom/sec/jewishcalendar/JewishCalendarView;->isJewishCalendar()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 623
    iget-object v8, p0, Lcom/sec/jewishcalendar/events/Event;->mHTodate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    iget-object v9, p0, Lcom/sec/jewishcalendar/events/Event;->JC_LETTERS:[Ljava/lang/String;

    iget-object v10, p0, Lcom/sec/jewishcalendar/events/Event;->JC_MONTHS:[Ljava/lang/String;

    iget-object v11, p0, Lcom/sec/jewishcalendar/events/Event;->JC_DAYS:[Ljava/lang/String;

    invoke-virtual {v8, v9, v10, v11}, Lcom/sec/jewishcalendar/calculation/HdateClass;->toJewishDateString([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 624
    .local v4, "jewishDateStr":Ljava/lang/String;
    iget-object v8, p0, Lcom/sec/jewishcalendar/events/Event;->mPickToDateButton:Landroid/widget/Button;

    invoke-virtual {v8, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 630
    .end local v4    # "jewishDateStr":Ljava/lang/String;
    :goto_0
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 632
    iget-object v8, p0, Lcom/sec/jewishcalendar/events/Event;->mPickToTimeButton:Landroid/widget/Button;

    invoke-virtual {v8, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 645
    :goto_1
    return-void

    .line 628
    :cond_0
    iget-object v8, p0, Lcom/sec/jewishcalendar/events/Event;->mPickToDateButton:Landroid/widget/Button;

    invoke-virtual {v8, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 636
    :cond_1
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v8, "H:mm"

    invoke-direct {v2, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 637
    .local v2, "f1":Ljava/text/SimpleDateFormat;
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v8, "h:mma"

    invoke-direct {v3, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 639
    .local v3, "f2":Ljava/text/SimpleDateFormat;
    :try_start_0
    iget-object v8, p0, Lcom/sec/jewishcalendar/events/Event;->mPickToTimeButton:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 640
    :catch_0
    move-exception v1

    .line 641
    .local v1, "e":Ljava/text/ParseException;
    iget-object v8, p0, Lcom/sec/jewishcalendar/events/Event;->mPickToTimeButton:Landroid/widget/Button;

    invoke-virtual {v8, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 642
    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 318
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/Event;->mEventProps:Lcom/sec/jewishcalendar/events/EventProperties;

    iget-object v1, p0, Lcom/sec/jewishcalendar/events/Event;->mFromGregorianDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    invoke-virtual {v0, v1}, Lcom/sec/jewishcalendar/events/EventProperties;->setEventStartDateAndTime(Lcom/sec/jewishcalendar/events/DateAndTime;)V

    .line 319
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/Event;->mEventProps:Lcom/sec/jewishcalendar/events/EventProperties;

    iget-object v1, p0, Lcom/sec/jewishcalendar/events/Event;->mToGregorianDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    invoke-virtual {v0, v1}, Lcom/sec/jewishcalendar/events/EventProperties;->setEventEndDateAndTime(Lcom/sec/jewishcalendar/events/DateAndTime;)V

    .line 320
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/Event;->mEventProps:Lcom/sec/jewishcalendar/events/EventProperties;

    iget-object v1, p0, Lcom/sec/jewishcalendar/events/Event;->mEventDescriptionEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/jewishcalendar/events/EventProperties;->setEventDescription(Ljava/lang/String;)V

    .line 321
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/Event;->mEventProps:Lcom/sec/jewishcalendar/events/EventProperties;

    iget v1, p0, Lcom/sec/jewishcalendar/events/Event;->mRepeatFrequency:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/jewishcalendar/events/EventProperties;->setEventRecurrence(Ljava/lang/String;)V

    .line 322
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/Event;->mEventProps:Lcom/sec/jewishcalendar/events/EventProperties;

    iget v1, p0, Lcom/sec/jewishcalendar/events/Event;->mReminderTiming:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/jewishcalendar/events/EventProperties;->setEventReminder(Ljava/lang/String;)V

    .line 323
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/Event;->mEventProps:Lcom/sec/jewishcalendar/events/EventProperties;

    invoke-virtual {v0}, Lcom/sec/jewishcalendar/events/EventProperties;->setGdate()V

    .line 325
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 326
    const v0, 0x7f03000e

    invoke-virtual {p0, v0}, Lcom/sec/jewishcalendar/events/Event;->setContentView(I)V

    .line 327
    invoke-direct {p0}, Lcom/sec/jewishcalendar/events/Event;->initScreenElements()V

    .line 331
    invoke-direct {p0}, Lcom/sec/jewishcalendar/events/Event;->closeKeyboard()V

    .line 332
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 196
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 197
    invoke-virtual {p0}, Lcom/sec/jewishcalendar/events/Event;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 199
    const v0, 0x7f03000e

    invoke-virtual {p0, v0}, Lcom/sec/jewishcalendar/events/Event;->setContentView(I)V

    .line 201
    sget-object v0, Lcom/sec/jewishcalendar/events/GlobalEvents;->mEventList:Lcom/sec/jewishcalendar/events/EventList;

    sget v1, Lcom/sec/jewishcalendar/events/GlobalEvents;->m_nSelectedEventId:I

    invoke-virtual {v0, v1}, Lcom/sec/jewishcalendar/events/EventList;->getEventProperties(I)Lcom/sec/jewishcalendar/events/EventProperties;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/jewishcalendar/events/Event;->mEventProps:Lcom/sec/jewishcalendar/events/EventProperties;

    .line 203
    invoke-direct {p0}, Lcom/sec/jewishcalendar/events/Event;->initDateAndTimeMembers()V

    .line 204
    invoke-direct {p0}, Lcom/sec/jewishcalendar/events/Event;->initToDateAndTimeDialogs()V

    .line 205
    invoke-direct {p0}, Lcom/sec/jewishcalendar/events/Event;->initJCStrings()V

    .line 206
    invoke-direct {p0}, Lcom/sec/jewishcalendar/events/Event;->initRepeatTypes()V

    .line 207
    invoke-direct {p0}, Lcom/sec/jewishcalendar/events/Event;->initReminderTypes()V

    .line 209
    invoke-direct {p0}, Lcom/sec/jewishcalendar/events/Event;->initScreenElements()V

    .line 210
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 7
    .param p1, "id"    # I

    .prologue
    .line 526
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 528
    .local v6, "hourFormat":Ljava/lang/Boolean;
    packed-switch p1, :pswitch_data_0

    .line 556
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 531
    :pswitch_0
    new-instance v0, Landroid/app/DatePickerDialog;

    .line 532
    iget-object v2, p0, Lcom/sec/jewishcalendar/events/Event;->mGregorianDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    .line 533
    iget-object v1, p0, Lcom/sec/jewishcalendar/events/Event;->mFromGregorianDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    iget v3, v1, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nYear:I

    iget-object v1, p0, Lcom/sec/jewishcalendar/events/Event;->mFromGregorianDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    iget v4, v1, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nMonth:I

    .line 534
    iget-object v1, p0, Lcom/sec/jewishcalendar/events/Event;->mFromGregorianDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    iget v5, v1, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nDay:I

    move-object v1, p0

    .line 531
    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    goto :goto_0

    .line 537
    :pswitch_1
    new-instance v0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePickerDialog;

    .line 538
    iget-object v2, p0, Lcom/sec/jewishcalendar/events/Event;->mJewishDateSetListener:Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePickerDialog$OnJewishDateSetListener;

    .line 539
    iget-object v1, p0, Lcom/sec/jewishcalendar/events/Event;->mHFromdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    iget v3, v1, Lcom/sec/jewishcalendar/calculation/HdateClass;->hyear:I

    iget-object v1, p0, Lcom/sec/jewishcalendar/events/Event;->mHFromdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    iget v4, v1, Lcom/sec/jewishcalendar/calculation/HdateClass;->hmonth:I

    iget-object v1, p0, Lcom/sec/jewishcalendar/events/Event;->mHFromdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    iget v5, v1, Lcom/sec/jewishcalendar/calculation/HdateClass;->hday:I

    move-object v1, p0

    .line 537
    invoke-direct/range {v0 .. v5}, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePickerDialog;-><init>(Landroid/content/Context;Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePickerDialog$OnJewishDateSetListener;III)V

    goto :goto_0

    .line 542
    :pswitch_2
    new-instance v0, Landroid/app/TimePickerDialog;

    .line 543
    iget-object v2, p0, Lcom/sec/jewishcalendar/events/Event;->mTimeSetListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

    .line 544
    iget-object v1, p0, Lcom/sec/jewishcalendar/events/Event;->mFromGregorianDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    iget v3, v1, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nHour:I

    iget-object v1, p0, Lcom/sec/jewishcalendar/events/Event;->mFromGregorianDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    iget v4, v1, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nMinute:I

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    move-object v1, p0

    .line 542
    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    goto :goto_0

    .line 547
    :pswitch_3
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/Event;->mGregorianToDateDialog:Landroid/app/DatePickerDialog;

    goto :goto_0

    .line 550
    :pswitch_4
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/Event;->mJewishToDateDialog:Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePickerDialog;

    goto :goto_0

    .line 553
    :pswitch_5
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/Event;->mToTimeDialog:Landroid/app/TimePickerDialog;

    goto :goto_0

    .line 528
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected saveEvent()V
    .locals 4

    .prologue
    .line 441
    iget-object v2, p0, Lcom/sec/jewishcalendar/events/Event;->mEventProps:Lcom/sec/jewishcalendar/events/EventProperties;

    iget-object v3, p0, Lcom/sec/jewishcalendar/events/Event;->mFromGregorianDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    invoke-virtual {v2, v3}, Lcom/sec/jewishcalendar/events/EventProperties;->setEventStartDateAndTime(Lcom/sec/jewishcalendar/events/DateAndTime;)V

    .line 442
    iget-object v2, p0, Lcom/sec/jewishcalendar/events/Event;->mEventProps:Lcom/sec/jewishcalendar/events/EventProperties;

    iget-object v3, p0, Lcom/sec/jewishcalendar/events/Event;->mToGregorianDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    invoke-virtual {v2, v3}, Lcom/sec/jewishcalendar/events/EventProperties;->setEventEndDateAndTime(Lcom/sec/jewishcalendar/events/DateAndTime;)V

    .line 443
    iget-object v2, p0, Lcom/sec/jewishcalendar/events/Event;->mEventProps:Lcom/sec/jewishcalendar/events/EventProperties;

    iget-object v3, p0, Lcom/sec/jewishcalendar/events/Event;->mEventDescriptionEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/jewishcalendar/events/EventProperties;->setEventDescription(Ljava/lang/String;)V

    .line 444
    iget-object v2, p0, Lcom/sec/jewishcalendar/events/Event;->mEventProps:Lcom/sec/jewishcalendar/events/EventProperties;

    iget v3, p0, Lcom/sec/jewishcalendar/events/Event;->mRepeatFrequency:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/jewishcalendar/events/EventProperties;->setEventRecurrence(Ljava/lang/String;)V

    .line 445
    iget-object v2, p0, Lcom/sec/jewishcalendar/events/Event;->mEventProps:Lcom/sec/jewishcalendar/events/EventProperties;

    iget v3, p0, Lcom/sec/jewishcalendar/events/Event;->mReminderTiming:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/jewishcalendar/events/EventProperties;->setEventReminder(Ljava/lang/String;)V

    .line 446
    iget-object v2, p0, Lcom/sec/jewishcalendar/events/Event;->mEventProps:Lcom/sec/jewishcalendar/events/EventProperties;

    invoke-virtual {v2}, Lcom/sec/jewishcalendar/events/EventProperties;->setGdate()V

    .line 447
    iget-object v2, p0, Lcom/sec/jewishcalendar/events/Event;->mEventProps:Lcom/sec/jewishcalendar/events/EventProperties;

    invoke-virtual {v2}, Lcom/sec/jewishcalendar/events/EventProperties;->setEventRepeatTimes()V

    .line 448
    iget-object v2, p0, Lcom/sec/jewishcalendar/events/Event;->mEventProps:Lcom/sec/jewishcalendar/events/EventProperties;

    invoke-virtual {v2}, Lcom/sec/jewishcalendar/events/EventProperties;->calcEventLastRecurrenceDateAndTime()V

    .line 450
    invoke-virtual {p0}, Lcom/sec/jewishcalendar/events/Event;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/jewishcalendar/events/Event;->mEventProps:Lcom/sec/jewishcalendar/events/EventProperties;

    invoke-static {v2, v3}, Lcom/sec/jewishcalendar/events/GlobalEvents;->updateDbRow(Landroid/content/Context;Lcom/sec/jewishcalendar/events/EventProperties;)V

    .line 451
    iget-object v2, p0, Lcom/sec/jewishcalendar/events/Event;->mEventProps:Lcom/sec/jewishcalendar/events/EventProperties;

    invoke-virtual {v2}, Lcom/sec/jewishcalendar/events/EventProperties;->calcEventDurationInDays()V

    .line 452
    iget-object v2, p0, Lcom/sec/jewishcalendar/events/Event;->mEventProps:Lcom/sec/jewishcalendar/events/EventProperties;

    invoke-virtual {v2}, Lcom/sec/jewishcalendar/events/EventProperties;->resetMonthEventsScanParams()V

    .line 454
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 455
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 456
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "EVENTSTARTTIME"

    iget-object v3, p0, Lcom/sec/jewishcalendar/events/Event;->mFromGregorianDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    invoke-virtual {v3}, Lcom/sec/jewishcalendar/events/DateAndTime;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 457
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 458
    invoke-virtual {p0}, Lcom/sec/jewishcalendar/events/Event;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/sec/jewishcalendar/events/GlobalEvents;->initEventAlarm(Landroid/content/Context;Z)V

    .line 459
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v1}, Lcom/sec/jewishcalendar/events/Event;->setResult(ILandroid/content/Intent;)V

    .line 460
    invoke-virtual {p0}, Lcom/sec/jewishcalendar/events/Event;->finish()V

    .line 461
    return-void
.end method
