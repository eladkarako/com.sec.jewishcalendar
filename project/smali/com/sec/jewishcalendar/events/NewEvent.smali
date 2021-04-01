.class public Lcom/sec/jewishcalendar/events/NewEvent;
.super Landroid/app/Activity;
.source "NewEvent.java"


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

.field private mEventDescription:Ljava/lang/String;

.field private mEventDescriptionEditText:Landroid/widget/EditText;

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

    .line 67
    new-instance v0, Lcom/sec/jewishcalendar/events/NewEvent$1;

    invoke-direct {v0, p0}, Lcom/sec/jewishcalendar/events/NewEvent$1;-><init>(Lcom/sec/jewishcalendar/events/NewEvent;)V

    iput-object v0, p0, Lcom/sec/jewishcalendar/events/NewEvent;->mGregorianDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    .line 110
    new-instance v0, Lcom/sec/jewishcalendar/events/NewEvent$2;

    invoke-direct {v0, p0}, Lcom/sec/jewishcalendar/events/NewEvent$2;-><init>(Lcom/sec/jewishcalendar/events/NewEvent;)V

    iput-object v0, p0, Lcom/sec/jewishcalendar/events/NewEvent;->mJewishDateSetListener:Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePickerDialog$OnJewishDateSetListener;

    .line 149
    new-instance v0, Lcom/sec/jewishcalendar/events/NewEvent$3;

    invoke-direct {v0, p0}, Lcom/sec/jewishcalendar/events/NewEvent$3;-><init>(Lcom/sec/jewishcalendar/events/NewEvent;)V

    iput-object v0, p0, Lcom/sec/jewishcalendar/events/NewEvent;->mTimeSetListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

    .line 187
    new-instance v0, Lcom/sec/jewishcalendar/calculation/HdateClass;

    invoke-direct {v0}, Lcom/sec/jewishcalendar/calculation/HdateClass;-><init>()V

    iput-object v0, p0, Lcom/sec/jewishcalendar/events/NewEvent;->mHFromdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    .line 188
    new-instance v0, Lcom/sec/jewishcalendar/calculation/HdateClass;

    invoke-direct {v0}, Lcom/sec/jewishcalendar/calculation/HdateClass;-><init>()V

    iput-object v0, p0, Lcom/sec/jewishcalendar/events/NewEvent;->mHTodate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    .line 190
    iput-object v1, p0, Lcom/sec/jewishcalendar/events/NewEvent;->JC_LETTERS:[Ljava/lang/String;

    .line 191
    iput-object v1, p0, Lcom/sec/jewishcalendar/events/NewEvent;->JC_MONTHS:[Ljava/lang/String;

    .line 192
    iput-object v1, p0, Lcom/sec/jewishcalendar/events/NewEvent;->JC_DAYS:[Ljava/lang/String;

    .line 36
    return-void
.end method

.method static synthetic access$0(Lcom/sec/jewishcalendar/events/NewEvent;)Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/sec/jewishcalendar/events/NewEvent;->m_bUserChangedFromDateAndTime:Z

    return v0
.end method

.method static synthetic access$1(Lcom/sec/jewishcalendar/events/NewEvent;)Lcom/sec/jewishcalendar/events/DateAndTime;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/NewEvent;->mFromGregorianDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    return-object v0
.end method

.method static synthetic access$10(Lcom/sec/jewishcalendar/events/NewEvent;)Landroid/app/TimePickerDialog;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/NewEvent;->mToTimeDialog:Landroid/app/TimePickerDialog;

    return-object v0
.end method

.method static synthetic access$11(Lcom/sec/jewishcalendar/events/NewEvent;Z)V
    .locals 0

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/sec/jewishcalendar/events/NewEvent;->m_bUserChangedFromDateAndTime:Z

    return-void
.end method

.method static synthetic access$12(Lcom/sec/jewishcalendar/events/NewEvent;)Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePickerDialog$OnJewishDateSetListener;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/NewEvent;->mJewishDateSetListener:Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePickerDialog$OnJewishDateSetListener;

    return-object v0
.end method

.method static synthetic access$13(Lcom/sec/jewishcalendar/events/NewEvent;)Landroid/app/DatePickerDialog$OnDateSetListener;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/NewEvent;->mGregorianDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    return-object v0
.end method

.method static synthetic access$14(Lcom/sec/jewishcalendar/events/NewEvent;)Z
    .locals 1

    .prologue
    .line 404
    invoke-direct {p0}, Lcom/sec/jewishcalendar/events/NewEvent;->isValidNewEvent()Z

    move-result v0

    return v0
.end method

.method static synthetic access$15(Lcom/sec/jewishcalendar/events/NewEvent;)V
    .locals 0

    .prologue
    .line 373
    invoke-direct {p0}, Lcom/sec/jewishcalendar/events/NewEvent;->chooseRepeatFrequency()V

    return-void
.end method

.method static synthetic access$16(Lcom/sec/jewishcalendar/events/NewEvent;)V
    .locals 0

    .prologue
    .line 389
    invoke-direct {p0}, Lcom/sec/jewishcalendar/events/NewEvent;->chooseReminderTiming()V

    return-void
.end method

.method static synthetic access$17(Lcom/sec/jewishcalendar/events/NewEvent;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/NewEvent;->mEventDescriptionEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$18(Lcom/sec/jewishcalendar/events/NewEvent;I)V
    .locals 0

    .prologue
    .line 49
    iput p1, p0, Lcom/sec/jewishcalendar/events/NewEvent;->mRepeatFrequency:I

    return-void
.end method

.method static synthetic access$19(Lcom/sec/jewishcalendar/events/NewEvent;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/NewEvent;->mRepeatType:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/sec/jewishcalendar/events/NewEvent;)Lcom/sec/jewishcalendar/events/DateAndTime;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/NewEvent;->mToGregorianDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    return-object v0
.end method

.method static synthetic access$20(Lcom/sec/jewishcalendar/events/NewEvent;)[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/NewEvent;->mRepeatTypes:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$21(Lcom/sec/jewishcalendar/events/NewEvent;I)V
    .locals 0

    .prologue
    .line 52
    iput p1, p0, Lcom/sec/jewishcalendar/events/NewEvent;->mReminderTiming:I

    return-void
.end method

.method static synthetic access$22(Lcom/sec/jewishcalendar/events/NewEvent;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/NewEvent;->mReminderType:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$23(Lcom/sec/jewishcalendar/events/NewEvent;)[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/NewEvent;->mReminderTypes:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$3(Lcom/sec/jewishcalendar/events/NewEvent;)Lcom/sec/jewishcalendar/calculation/HdateClass;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/NewEvent;->mHFromdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    return-object v0
.end method

.method static synthetic access$4(Lcom/sec/jewishcalendar/events/NewEvent;)V
    .locals 0

    .prologue
    .line 547
    invoke-direct {p0}, Lcom/sec/jewishcalendar/events/NewEvent;->updateFromDateAndTimeDisplay()V

    return-void
.end method

.method static synthetic access$5(Lcom/sec/jewishcalendar/events/NewEvent;Lcom/sec/jewishcalendar/events/DateAndTime;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/sec/jewishcalendar/events/NewEvent;->mToGregorianDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    return-void
.end method

.method static synthetic access$6(Lcom/sec/jewishcalendar/events/NewEvent;)Lcom/sec/jewishcalendar/calculation/HdateClass;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/NewEvent;->mHTodate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    return-object v0
.end method

.method static synthetic access$7(Lcom/sec/jewishcalendar/events/NewEvent;)Landroid/app/DatePickerDialog;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/NewEvent;->mGregorianToDateDialog:Landroid/app/DatePickerDialog;

    return-object v0
.end method

.method static synthetic access$8(Lcom/sec/jewishcalendar/events/NewEvent;)V
    .locals 0

    .prologue
    .line 579
    invoke-direct {p0}, Lcom/sec/jewishcalendar/events/NewEvent;->updateToDateAndTimeDisplay()V

    return-void
.end method

.method static synthetic access$9(Lcom/sec/jewishcalendar/events/NewEvent;)Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePickerDialog;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/NewEvent;->mJewishToDateDialog:Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePickerDialog;

    return-object v0
.end method

.method private chooseReminderTiming()V
    .locals 5

    .prologue
    .line 391
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 392
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0a0040

    invoke-virtual {p0, v2}, Lcom/sec/jewishcalendar/events/NewEvent;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 393
    iget-object v2, p0, Lcom/sec/jewishcalendar/events/NewEvent;->mReminderTypes:[Ljava/lang/CharSequence;

    iget v3, p0, Lcom/sec/jewishcalendar/events/NewEvent;->mReminderTiming:I

    new-instance v4, Lcom/sec/jewishcalendar/events/NewEvent$14;

    invoke-direct {v4, p0}, Lcom/sec/jewishcalendar/events/NewEvent$14;-><init>(Lcom/sec/jewishcalendar/events/NewEvent;)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 400
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 401
    .local v0, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 402
    return-void
.end method

.method private chooseRepeatFrequency()V
    .locals 5

    .prologue
    .line 375
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 376
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0a0037

    invoke-virtual {p0, v2}, Lcom/sec/jewishcalendar/events/NewEvent;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 378
    iget-object v2, p0, Lcom/sec/jewishcalendar/events/NewEvent;->mRepeatTypes:[Ljava/lang/CharSequence;

    iget v3, p0, Lcom/sec/jewishcalendar/events/NewEvent;->mRepeatFrequency:I

    new-instance v4, Lcom/sec/jewishcalendar/events/NewEvent$13;

    invoke-direct {v4, p0}, Lcom/sec/jewishcalendar/events/NewEvent$13;-><init>(Lcom/sec/jewishcalendar/events/NewEvent;)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 385
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 386
    .local v0, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 387
    return-void
.end method

.method private closeKeyboard()V
    .locals 2

    .prologue
    .line 358
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/NewEvent;->mEventDescriptionEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/sec/jewishcalendar/events/NewEvent$12;

    invoke-direct {v1, p0}, Lcom/sec/jewishcalendar/events/NewEvent$12;-><init>(Lcom/sec/jewishcalendar/events/NewEvent;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 370
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/NewEvent;->mEventDescriptionEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 371
    return-void
.end method

.method private dateAndTimeOverlap()Z
    .locals 5

    .prologue
    .line 642
    sget-object v0, Lcom/sec/jewishcalendar/events/GlobalEvents;->mEventList:Lcom/sec/jewishcalendar/events/EventList;

    .line 644
    .local v0, "eventList":Lcom/sec/jewishcalendar/events/EventList;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, v0, Lcom/sec/jewishcalendar/events/EventList;->mEventsProperties:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v2, v3, :cond_0

    .line 657
    const/4 v3, 0x0

    :goto_1
    return v3

    .line 646
    :cond_0
    iget-object v3, v0, Lcom/sec/jewishcalendar/events/EventList;->mEventsProperties:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/jewishcalendar/events/EventProperties;

    .line 647
    .local v1, "eventProperties":Lcom/sec/jewishcalendar/events/EventProperties;
    iget-object v3, p0, Lcom/sec/jewishcalendar/events/NewEvent;->mFromGregorianDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    invoke-virtual {v1}, Lcom/sec/jewishcalendar/events/EventProperties;->getEventStartDateAndTime()Lcom/sec/jewishcalendar/events/DateAndTime;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/jewishcalendar/events/DateAndTime;->equals(Lcom/sec/jewishcalendar/events/DateAndTime;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 648
    iget-object v3, p0, Lcom/sec/jewishcalendar/events/NewEvent;->mToGregorianDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    invoke-virtual {v1}, Lcom/sec/jewishcalendar/events/EventProperties;->getEventEndDateAndTime()Lcom/sec/jewishcalendar/events/DateAndTime;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/jewishcalendar/events/DateAndTime;->equals(Lcom/sec/jewishcalendar/events/DateAndTime;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 649
    iget-object v3, p0, Lcom/sec/jewishcalendar/events/NewEvent;->mFromGregorianDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    invoke-virtual {v1}, Lcom/sec/jewishcalendar/events/EventProperties;->getEventStartDateAndTime()Lcom/sec/jewishcalendar/events/DateAndTime;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/jewishcalendar/events/DateAndTime;->compareTo(Lcom/sec/jewishcalendar/events/DateAndTime;)I

    move-result v3

    if-gez v3, :cond_1

    .line 650
    invoke-virtual {v1}, Lcom/sec/jewishcalendar/events/EventProperties;->getEventStartDateAndTime()Lcom/sec/jewishcalendar/events/DateAndTime;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/jewishcalendar/events/NewEvent;->mToGregorianDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    invoke-virtual {v3, v4}, Lcom/sec/jewishcalendar/events/DateAndTime;->compareTo(Lcom/sec/jewishcalendar/events/DateAndTime;)I

    move-result v3

    if-ltz v3, :cond_2

    .line 651
    :cond_1
    invoke-virtual {v1}, Lcom/sec/jewishcalendar/events/EventProperties;->getEventStartDateAndTime()Lcom/sec/jewishcalendar/events/DateAndTime;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/jewishcalendar/events/NewEvent;->mFromGregorianDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    invoke-virtual {v3, v4}, Lcom/sec/jewishcalendar/events/DateAndTime;->compareTo(Lcom/sec/jewishcalendar/events/DateAndTime;)I

    move-result v3

    if-gez v3, :cond_3

    .line 652
    iget-object v3, p0, Lcom/sec/jewishcalendar/events/NewEvent;->mFromGregorianDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    invoke-virtual {v1}, Lcom/sec/jewishcalendar/events/EventProperties;->getEventEndDateAndTime()Lcom/sec/jewishcalendar/events/DateAndTime;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/jewishcalendar/events/DateAndTime;->compareTo(Lcom/sec/jewishcalendar/events/DateAndTime;)I

    move-result v3

    if-gez v3, :cond_3

    .line 654
    :cond_2
    const/4 v3, 0x1

    goto :goto_1

    .line 644
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private initDateAndTimeMembers(IIIII)V
    .locals 6
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I
    .param p4, "hour"    # I
    .param p5, "minute"    # I

    .prologue
    .line 614
    new-instance v0, Lcom/sec/jewishcalendar/events/DateAndTime;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/sec/jewishcalendar/events/DateAndTime;-><init>(IIIII)V

    iput-object v0, p0, Lcom/sec/jewishcalendar/events/NewEvent;->mFromGregorianDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    .line 615
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/NewEvent;->mHFromdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    add-int/lit8 v1, p2, 0x1

    invoke-static {v0, p3, v1, p1}, Lcom/sec/jewishcalendar/calculation/JewishCal;->SetGdate(Lcom/sec/jewishcalendar/calculation/HdateClass;III)I

    .line 617
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/NewEvent;->mFromGregorianDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    const-wide/32 v2, 0x36ee80

    invoke-virtual {v0, v2, v3}, Lcom/sec/jewishcalendar/events/DateAndTime;->getMilliSecondsAfterDateAndTime(J)Lcom/sec/jewishcalendar/events/DateAndTime;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/jewishcalendar/events/NewEvent;->mToGregorianDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    .line 618
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/NewEvent;->mHTodate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    add-int/lit8 v1, p2, 0x1

    invoke-static {v0, p3, v1, p1}, Lcom/sec/jewishcalendar/calculation/JewishCal;->SetGdate(Lcom/sec/jewishcalendar/calculation/HdateClass;III)I

    .line 619
    return-void
.end method

.method private initJCStrings()V
    .locals 2

    .prologue
    .line 480
    invoke-virtual {p0}, Lcom/sec/jewishcalendar/events/NewEvent;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/jewishcalendar/events/NewEvent;->mRes:Landroid/content/res/Resources;

    .line 481
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/NewEvent;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f060003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/jewishcalendar/events/NewEvent;->JC_LETTERS:[Ljava/lang/String;

    .line 482
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/NewEvent;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f060004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/jewishcalendar/events/NewEvent;->JC_MONTHS:[Ljava/lang/String;

    .line 483
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/NewEvent;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f060002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/jewishcalendar/events/NewEvent;->JC_DAYS:[Ljava/lang/String;

    .line 484
    return-void
.end method

.method private initReminderTypes()V
    .locals 3

    .prologue
    .line 501
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/sec/jewishcalendar/events/NewEvent;->mReminderTypes:[Ljava/lang/CharSequence;

    .line 503
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/NewEvent;->mReminderTypes:[Ljava/lang/CharSequence;

    const/4 v1, 0x0

    const v2, 0x7f0a0041

    invoke-virtual {p0, v2}, Lcom/sec/jewishcalendar/events/NewEvent;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 504
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/NewEvent;->mReminderTypes:[Ljava/lang/CharSequence;

    const/4 v1, 0x1

    const v2, 0x7f0a0042

    invoke-virtual {p0, v2}, Lcom/sec/jewishcalendar/events/NewEvent;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 505
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/NewEvent;->mReminderTypes:[Ljava/lang/CharSequence;

    const/4 v1, 0x2

    const v2, 0x7f0a0043

    invoke-virtual {p0, v2}, Lcom/sec/jewishcalendar/events/NewEvent;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 506
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/NewEvent;->mReminderTypes:[Ljava/lang/CharSequence;

    const/4 v1, 0x3

    const v2, 0x7f0a0044

    invoke-virtual {p0, v2}, Lcom/sec/jewishcalendar/events/NewEvent;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 507
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/NewEvent;->mReminderTypes:[Ljava/lang/CharSequence;

    const/4 v1, 0x4

    const v2, 0x7f0a0045

    invoke-virtual {p0, v2}, Lcom/sec/jewishcalendar/events/NewEvent;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 508
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/NewEvent;->mReminderTypes:[Ljava/lang/CharSequence;

    const/4 v1, 0x5

    const v2, 0x7f0a0046

    invoke-virtual {p0, v2}, Lcom/sec/jewishcalendar/events/NewEvent;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 509
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/NewEvent;->mReminderTypes:[Ljava/lang/CharSequence;

    const/4 v1, 0x6

    const v2, 0x7f0a0047

    invoke-virtual {p0, v2}, Lcom/sec/jewishcalendar/events/NewEvent;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 510
    return-void
.end method

.method private initRepeatTypes()V
    .locals 3

    .prologue
    .line 488
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/sec/jewishcalendar/events/NewEvent;->mRepeatTypes:[Ljava/lang/CharSequence;

    .line 490
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/NewEvent;->mRepeatTypes:[Ljava/lang/CharSequence;

    const/4 v1, 0x0

    const v2, 0x7f0a0038

    invoke-virtual {p0, v2}, Lcom/sec/jewishcalendar/events/NewEvent;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 491
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/NewEvent;->mRepeatTypes:[Ljava/lang/CharSequence;

    const/4 v1, 0x1

    const v2, 0x7f0a0039

    invoke-virtual {p0, v2}, Lcom/sec/jewishcalendar/events/NewEvent;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 492
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/NewEvent;->mRepeatTypes:[Ljava/lang/CharSequence;

    const/4 v1, 0x2

    const v2, 0x7f0a003a

    invoke-virtual {p0, v2}, Lcom/sec/jewishcalendar/events/NewEvent;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 493
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/NewEvent;->mRepeatTypes:[Ljava/lang/CharSequence;

    const/4 v1, 0x3

    const v2, 0x7f0a003b

    invoke-virtual {p0, v2}, Lcom/sec/jewishcalendar/events/NewEvent;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 494
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/NewEvent;->mRepeatTypes:[Ljava/lang/CharSequence;

    const/4 v1, 0x4

    const v2, 0x7f0a003c

    invoke-virtual {p0, v2}, Lcom/sec/jewishcalendar/events/NewEvent;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 495
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/NewEvent;->mRepeatTypes:[Ljava/lang/CharSequence;

    const/4 v1, 0x5

    const v2, 0x7f0a003d

    invoke-virtual {p0, v2}, Lcom/sec/jewishcalendar/events/NewEvent;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 496
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/NewEvent;->mRepeatTypes:[Ljava/lang/CharSequence;

    const/4 v1, 0x6

    const v2, 0x7f0a003e

    invoke-virtual {p0, v2}, Lcom/sec/jewishcalendar/events/NewEvent;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 497
    return-void
.end method

.method private initScreenElements(Z)V
    .locals 3
    .param p1, "bConfigurationChanged"    # Z

    .prologue
    .line 229
    const v0, 0x7f0e005b

    invoke-virtual {p0, v0}, Lcom/sec/jewishcalendar/events/NewEvent;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/jewishcalendar/events/NewEvent;->mRepeatType:Landroid/widget/TextView;

    .line 230
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/NewEvent;->mRepeatType:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/jewishcalendar/events/NewEvent;->mRepeatTypes:[Ljava/lang/CharSequence;

    iget v2, p0, Lcom/sec/jewishcalendar/events/NewEvent;->mRepeatFrequency:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    const v0, 0x7f0e005e

    invoke-virtual {p0, v0}, Lcom/sec/jewishcalendar/events/NewEvent;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/jewishcalendar/events/NewEvent;->mReminderType:Landroid/widget/TextView;

    .line 233
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/NewEvent;->mReminderType:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/jewishcalendar/events/NewEvent;->mReminderTypes:[Ljava/lang/CharSequence;

    iget v2, p0, Lcom/sec/jewishcalendar/events/NewEvent;->mReminderTiming:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    const v0, 0x7f0e0049

    invoke-virtual {p0, v0}, Lcom/sec/jewishcalendar/events/NewEvent;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/sec/jewishcalendar/events/NewEvent;->mEventDescriptionEditText:Landroid/widget/EditText;

    .line 236
    if-eqz p1, :cond_0

    .line 237
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/NewEvent;->mEventDescriptionEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/sec/jewishcalendar/events/NewEvent;->mEventDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 239
    :cond_0
    const v0, 0x7f0e004b

    invoke-virtual {p0, v0}, Lcom/sec/jewishcalendar/events/NewEvent;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/jewishcalendar/events/NewEvent;->mPickFromDateButton:Landroid/widget/Button;

    .line 240
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/NewEvent;->mPickFromDateButton:Landroid/widget/Button;

    new-instance v1, Lcom/sec/jewishcalendar/events/NewEvent$4;

    invoke-direct {v1, p0}, Lcom/sec/jewishcalendar/events/NewEvent$4;-><init>(Lcom/sec/jewishcalendar/events/NewEvent;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 260
    const v0, 0x7f0e004c

    invoke-virtual {p0, v0}, Lcom/sec/jewishcalendar/events/NewEvent;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/jewishcalendar/events/NewEvent;->mPickFromTimeButton:Landroid/widget/Button;

    .line 261
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/NewEvent;->mPickFromTimeButton:Landroid/widget/Button;

    new-instance v1, Lcom/sec/jewishcalendar/events/NewEvent$5;

    invoke-direct {v1, p0}, Lcom/sec/jewishcalendar/events/NewEvent$5;-><init>(Lcom/sec/jewishcalendar/events/NewEvent;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 270
    const v0, 0x7f0e0050

    invoke-virtual {p0, v0}, Lcom/sec/jewishcalendar/events/NewEvent;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/jewishcalendar/events/NewEvent;->mPickToDateButton:Landroid/widget/Button;

    .line 271
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/NewEvent;->mPickToDateButton:Landroid/widget/Button;

    new-instance v1, Lcom/sec/jewishcalendar/events/NewEvent$6;

    invoke-direct {v1, p0}, Lcom/sec/jewishcalendar/events/NewEvent$6;-><init>(Lcom/sec/jewishcalendar/events/NewEvent;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 290
    const v0, 0x7f0e0051

    invoke-virtual {p0, v0}, Lcom/sec/jewishcalendar/events/NewEvent;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/jewishcalendar/events/NewEvent;->mPickToTimeButton:Landroid/widget/Button;

    .line 291
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/NewEvent;->mPickToTimeButton:Landroid/widget/Button;

    new-instance v1, Lcom/sec/jewishcalendar/events/NewEvent$7;

    invoke-direct {v1, p0}, Lcom/sec/jewishcalendar/events/NewEvent$7;-><init>(Lcom/sec/jewishcalendar/events/NewEvent;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 300
    const v0, 0x7f0e0055

    invoke-virtual {p0, v0}, Lcom/sec/jewishcalendar/events/NewEvent;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/jewishcalendar/events/NewEvent;->mOkButton:Landroid/widget/Button;

    .line 301
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/NewEvent;->mOkButton:Landroid/widget/Button;

    new-instance v1, Lcom/sec/jewishcalendar/events/NewEvent$8;

    invoke-direct {v1, p0}, Lcom/sec/jewishcalendar/events/NewEvent$8;-><init>(Lcom/sec/jewishcalendar/events/NewEvent;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 309
    const v0, 0x7f0e0054

    invoke-virtual {p0, v0}, Lcom/sec/jewishcalendar/events/NewEvent;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/jewishcalendar/events/NewEvent;->mCancelButton:Landroid/widget/Button;

    .line 310
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/NewEvent;->mCancelButton:Landroid/widget/Button;

    new-instance v1, Lcom/sec/jewishcalendar/events/NewEvent$9;

    invoke-direct {v1, p0}, Lcom/sec/jewishcalendar/events/NewEvent$9;-><init>(Lcom/sec/jewishcalendar/events/NewEvent;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 320
    const v0, 0x7f0e0059

    invoke-virtual {p0, v0}, Lcom/sec/jewishcalendar/events/NewEvent;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/jewishcalendar/events/NewEvent;->mRepeatEventLinearLayout:Landroid/widget/LinearLayout;

    .line 321
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/NewEvent;->mRepeatEventLinearLayout:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/sec/jewishcalendar/events/NewEvent$10;

    invoke-direct {v1, p0}, Lcom/sec/jewishcalendar/events/NewEvent$10;-><init>(Lcom/sec/jewishcalendar/events/NewEvent;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 329
    const v0, 0x7f0e005c

    invoke-virtual {p0, v0}, Lcom/sec/jewishcalendar/events/NewEvent;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/jewishcalendar/events/NewEvent;->mEventReminderLinearLayout:Landroid/widget/LinearLayout;

    .line 330
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/NewEvent;->mEventReminderLinearLayout:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/sec/jewishcalendar/events/NewEvent$11;

    invoke-direct {v1, p0}, Lcom/sec/jewishcalendar/events/NewEvent$11;-><init>(Lcom/sec/jewishcalendar/events/NewEvent;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 339
    invoke-direct {p0}, Lcom/sec/jewishcalendar/events/NewEvent;->updateFromDateAndTimeDisplay()V

    .line 340
    invoke-direct {p0}, Lcom/sec/jewishcalendar/events/NewEvent;->updateToDateAndTimeDisplay()V

    .line 341
    return-void
.end method

.method private initToDateAndTimeDialogs()V
    .locals 6

    .prologue
    .line 623
    .line 624
    new-instance v0, Landroid/app/DatePickerDialog;

    .line 625
    iget-object v2, p0, Lcom/sec/jewishcalendar/events/NewEvent;->mGregorianDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    .line 626
    iget-object v1, p0, Lcom/sec/jewishcalendar/events/NewEvent;->mToGregorianDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    iget v3, v1, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nYear:I

    iget-object v1, p0, Lcom/sec/jewishcalendar/events/NewEvent;->mToGregorianDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    iget v4, v1, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nMonth:I

    .line 627
    iget-object v1, p0, Lcom/sec/jewishcalendar/events/NewEvent;->mToGregorianDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    iget v5, v1, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nDay:I

    move-object v1, p0

    .line 624
    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 623
    iput-object v0, p0, Lcom/sec/jewishcalendar/events/NewEvent;->mGregorianToDateDialog:Landroid/app/DatePickerDialog;

    .line 630
    new-instance v0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePickerDialog;

    .line 631
    iget-object v2, p0, Lcom/sec/jewishcalendar/events/NewEvent;->mJewishDateSetListener:Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePickerDialog$OnJewishDateSetListener;

    .line 632
    iget-object v1, p0, Lcom/sec/jewishcalendar/events/NewEvent;->mHTodate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    iget v3, v1, Lcom/sec/jewishcalendar/calculation/HdateClass;->hyear:I

    iget-object v1, p0, Lcom/sec/jewishcalendar/events/NewEvent;->mHTodate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    iget v4, v1, Lcom/sec/jewishcalendar/calculation/HdateClass;->hmonth:I

    iget-object v1, p0, Lcom/sec/jewishcalendar/events/NewEvent;->mHTodate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    iget v5, v1, Lcom/sec/jewishcalendar/calculation/HdateClass;->hday:I

    move-object v1, p0

    .line 630
    invoke-direct/range {v0 .. v5}, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePickerDialog;-><init>(Landroid/content/Context;Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePickerDialog$OnJewishDateSetListener;III)V

    .line 629
    iput-object v0, p0, Lcom/sec/jewishcalendar/events/NewEvent;->mJewishToDateDialog:Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePickerDialog;

    .line 635
    new-instance v0, Landroid/app/TimePickerDialog;

    .line 636
    iget-object v2, p0, Lcom/sec/jewishcalendar/events/NewEvent;->mTimeSetListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

    .line 637
    iget-object v1, p0, Lcom/sec/jewishcalendar/events/NewEvent;->mToGregorianDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    iget v3, v1, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nHour:I

    iget-object v1, p0, Lcom/sec/jewishcalendar/events/NewEvent;->mToGregorianDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    iget v4, v1, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nMinute:I

    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v5

    move-object v1, p0

    .line 635
    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    .line 634
    iput-object v0, p0, Lcom/sec/jewishcalendar/events/NewEvent;->mToTimeDialog:Landroid/app/TimePickerDialog;

    .line 638
    return-void
.end method

.method private isValidNewEvent()Z
    .locals 8

    .prologue
    const v7, 0x7f0a0025

    const v6, 0x7f0a0024

    .line 406
    const/4 v2, 0x0

    .line 407
    .local v2, "alertMsg":Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/jewishcalendar/events/NewEvent;->mToGregorianDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    iget-object v5, p0, Lcom/sec/jewishcalendar/events/NewEvent;->mFromGregorianDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    invoke-virtual {v4, v5}, Lcom/sec/jewishcalendar/events/DateAndTime;->equals(Lcom/sec/jewishcalendar/events/DateAndTime;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 408
    iget-object v4, p0, Lcom/sec/jewishcalendar/events/NewEvent;->mToGregorianDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    iget-object v5, p0, Lcom/sec/jewishcalendar/events/NewEvent;->mFromGregorianDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    invoke-virtual {v4, v5}, Lcom/sec/jewishcalendar/events/DateAndTime;->compareTo(Lcom/sec/jewishcalendar/events/DateAndTime;)I

    move-result v4

    if-gez v4, :cond_1

    .line 409
    :cond_0
    invoke-virtual {p0, v6}, Lcom/sec/jewishcalendar/events/NewEvent;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 410
    :cond_1
    if-nez v2, :cond_2

    invoke-direct {p0}, Lcom/sec/jewishcalendar/events/NewEvent;->dateAndTimeOverlap()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 411
    invoke-virtual {p0, v7}, Lcom/sec/jewishcalendar/events/NewEvent;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 412
    :cond_2
    if-nez v2, :cond_3

    .line 413
    const/4 v4, 0x1

    .line 457
    :goto_0
    return v4

    .line 416
    :cond_3
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 418
    .local v3, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 420
    invoke-virtual {p0, v6}, Lcom/sec/jewishcalendar/events/NewEvent;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 423
    const v4, 0x7f0a001f

    new-instance v5, Lcom/sec/jewishcalendar/events/NewEvent$15;

    invoke-direct {v5, p0}, Lcom/sec/jewishcalendar/events/NewEvent$15;-><init>(Lcom/sec/jewishcalendar/events/NewEvent;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 443
    :cond_4
    :goto_1
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 444
    .local v1, "alert":Landroid/app/AlertDialog;
    const/high16 v0, 0x41700000    # 15.0f

    .line 449
    .local v0, "ButtonTextSize":F
    invoke-virtual {p0}, Lcom/sec/jewishcalendar/events/NewEvent;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v4, v4, 0xf

    .line 450
    const/4 v5, 0x4

    .line 449
    if-ne v4, v5, :cond_5

    .line 452
    const/high16 v0, 0x41980000    # 19.0f

    .line 454
    :cond_5
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 455
    const/4 v4, -0x1

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setTextSize(F)V

    .line 456
    const/4 v4, -0x2

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setTextSize(F)V

    .line 457
    const/4 v4, 0x0

    goto :goto_0

    .line 429
    .end local v0    # "ButtonTextSize":F
    .end local v1    # "alert":Landroid/app/AlertDialog;
    :cond_6
    invoke-virtual {p0, v7}, Lcom/sec/jewishcalendar/events/NewEvent;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 431
    const v4, 0x7f0a0028

    new-instance v5, Lcom/sec/jewishcalendar/events/NewEvent$16;

    invoke-direct {v5, p0}, Lcom/sec/jewishcalendar/events/NewEvent$16;-><init>(Lcom/sec/jewishcalendar/events/NewEvent;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 438
    const v4, 0x7f0a0029

    new-instance v5, Lcom/sec/jewishcalendar/events/NewEvent$17;

    invoke-direct {v5, p0}, Lcom/sec/jewishcalendar/events/NewEvent$17;-><init>(Lcom/sec/jewishcalendar/events/NewEvent;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1
.end method

.method private updateFromDateAndTimeDisplay()V
    .locals 12

    .prologue
    .line 549
    iget-object v8, p0, Lcom/sec/jewishcalendar/events/NewEvent;->mFromGregorianDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    invoke-virtual {v8}, Lcom/sec/jewishcalendar/events/DateAndTime;->toString()Ljava/lang/String;

    move-result-object v4

    .line 550
    .local v4, "fromDateAndTimeStr":Ljava/lang/String;
    const/16 v8, 0x20

    invoke-virtual {v4, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 551
    .local v6, "spaceLocation":I
    const/4 v8, 0x0

    invoke-virtual {v4, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 552
    .local v0, "dateStr":Ljava/lang/String;
    add-int/lit8 v8, v6, 0x1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v4, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 554
    .local v7, "timeStr":Ljava/lang/String;
    invoke-static {}, Lcom/sec/jewishcalendar/JewishCalendarView;->isJewishCalendar()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 556
    iget-object v8, p0, Lcom/sec/jewishcalendar/events/NewEvent;->mHFromdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    iget-object v9, p0, Lcom/sec/jewishcalendar/events/NewEvent;->JC_LETTERS:[Ljava/lang/String;

    iget-object v10, p0, Lcom/sec/jewishcalendar/events/NewEvent;->JC_MONTHS:[Ljava/lang/String;

    iget-object v11, p0, Lcom/sec/jewishcalendar/events/NewEvent;->JC_DAYS:[Ljava/lang/String;

    invoke-virtual {v8, v9, v10, v11}, Lcom/sec/jewishcalendar/calculation/HdateClass;->toJewishDateString([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 557
    .local v5, "jewishDateStr":Ljava/lang/String;
    iget-object v8, p0, Lcom/sec/jewishcalendar/events/NewEvent;->mPickFromDateButton:Landroid/widget/Button;

    invoke-virtual {v8, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 563
    .end local v5    # "jewishDateStr":Ljava/lang/String;
    :goto_0
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 565
    iget-object v8, p0, Lcom/sec/jewishcalendar/events/NewEvent;->mPickFromTimeButton:Landroid/widget/Button;

    invoke-virtual {v8, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 578
    :goto_1
    return-void

    .line 561
    :cond_0
    iget-object v8, p0, Lcom/sec/jewishcalendar/events/NewEvent;->mPickFromDateButton:Landroid/widget/Button;

    invoke-virtual {v8, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 569
    :cond_1
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v8, "H:mm"

    invoke-direct {v2, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 570
    .local v2, "f1":Ljava/text/SimpleDateFormat;
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v8, "h:mma"

    invoke-direct {v3, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 572
    .local v3, "f2":Ljava/text/SimpleDateFormat;
    :try_start_0
    iget-object v8, p0, Lcom/sec/jewishcalendar/events/NewEvent;->mPickFromTimeButton:Landroid/widget/Button;

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

    .line 573
    :catch_0
    move-exception v1

    .line 574
    .local v1, "e":Ljava/text/ParseException;
    iget-object v8, p0, Lcom/sec/jewishcalendar/events/NewEvent;->mPickFromTimeButton:Landroid/widget/Button;

    invoke-virtual {v8, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 575
    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_1
.end method

.method private updateToDateAndTimeDisplay()V
    .locals 12

    .prologue
    .line 581
    iget-object v8, p0, Lcom/sec/jewishcalendar/events/NewEvent;->mToGregorianDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    invoke-virtual {v8}, Lcom/sec/jewishcalendar/events/DateAndTime;->toString()Ljava/lang/String;

    move-result-object v7

    .line 582
    .local v7, "toDateAndTimeStr":Ljava/lang/String;
    const/16 v8, 0x20

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 583
    .local v5, "spaceLocation":I
    const/4 v8, 0x0

    invoke-virtual {v7, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 584
    .local v0, "dateStr":Ljava/lang/String;
    add-int/lit8 v8, v5, 0x1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 586
    .local v6, "timeStr":Ljava/lang/String;
    invoke-static {}, Lcom/sec/jewishcalendar/JewishCalendarView;->isJewishCalendar()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 588
    iget-object v8, p0, Lcom/sec/jewishcalendar/events/NewEvent;->mHTodate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    iget-object v9, p0, Lcom/sec/jewishcalendar/events/NewEvent;->JC_LETTERS:[Ljava/lang/String;

    iget-object v10, p0, Lcom/sec/jewishcalendar/events/NewEvent;->JC_MONTHS:[Ljava/lang/String;

    iget-object v11, p0, Lcom/sec/jewishcalendar/events/NewEvent;->JC_DAYS:[Ljava/lang/String;

    invoke-virtual {v8, v9, v10, v11}, Lcom/sec/jewishcalendar/calculation/HdateClass;->toJewishDateString([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 589
    .local v4, "jewishDateStr":Ljava/lang/String;
    iget-object v8, p0, Lcom/sec/jewishcalendar/events/NewEvent;->mPickToDateButton:Landroid/widget/Button;

    invoke-virtual {v8, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 595
    .end local v4    # "jewishDateStr":Ljava/lang/String;
    :goto_0
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 597
    iget-object v8, p0, Lcom/sec/jewishcalendar/events/NewEvent;->mPickToTimeButton:Landroid/widget/Button;

    invoke-virtual {v8, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 610
    :goto_1
    return-void

    .line 593
    :cond_0
    iget-object v8, p0, Lcom/sec/jewishcalendar/events/NewEvent;->mPickToDateButton:Landroid/widget/Button;

    invoke-virtual {v8, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 601
    :cond_1
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v8, "H:mm"

    invoke-direct {v2, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 602
    .local v2, "f1":Ljava/text/SimpleDateFormat;
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v8, "h:mma"

    invoke-direct {v3, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 604
    .local v3, "f2":Ljava/text/SimpleDateFormat;
    :try_start_0
    iget-object v8, p0, Lcom/sec/jewishcalendar/events/NewEvent;->mPickToTimeButton:Landroid/widget/Button;

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

    .line 605
    :catch_0
    move-exception v1

    .line 606
    .local v1, "e":Ljava/text/ParseException;
    iget-object v8, p0, Lcom/sec/jewishcalendar/events/NewEvent;->mPickToTimeButton:Landroid/widget/Button;

    invoke-virtual {v8, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 607
    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method protected createEvent()V
    .locals 10

    .prologue
    .line 463
    sget-object v8, Lcom/sec/jewishcalendar/events/GlobalEvents;->mEventList:Lcom/sec/jewishcalendar/events/EventList;

    .line 465
    .local v8, "eventList":Lcom/sec/jewishcalendar/events/EventList;
    new-instance v0, Lcom/sec/jewishcalendar/events/EventProperties;

    invoke-virtual {p0}, Lcom/sec/jewishcalendar/events/NewEvent;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/jewishcalendar/events/NewEvent;->mFromGregorianDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    iget-object v3, p0, Lcom/sec/jewishcalendar/events/NewEvent;->mToGregorianDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    iget-object v4, p0, Lcom/sec/jewishcalendar/events/NewEvent;->mEventDescriptionEditText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    .line 466
    iget v5, p0, Lcom/sec/jewishcalendar/events/NewEvent;->mRepeatFrequency:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lcom/sec/jewishcalendar/events/NewEvent;->mReminderTiming:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    .line 465
    invoke-direct/range {v0 .. v6}, Lcom/sec/jewishcalendar/events/EventProperties;-><init>(Landroid/content/Context;Lcom/sec/jewishcalendar/events/DateAndTime;Lcom/sec/jewishcalendar/events/DateAndTime;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    .local v0, "eventProperties":Lcom/sec/jewishcalendar/events/EventProperties;
    invoke-virtual {v8, v0}, Lcom/sec/jewishcalendar/events/EventList;->AddEvent(Lcom/sec/jewishcalendar/events/EventProperties;)V

    .line 468
    invoke-virtual {p0}, Lcom/sec/jewishcalendar/events/NewEvent;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/sec/jewishcalendar/events/GlobalEvents;->addToDb(Landroid/content/Context;Lcom/sec/jewishcalendar/events/EventProperties;)V

    .line 469
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 470
    .local v9, "intent":Landroid/content/Intent;
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 471
    .local v7, "bundle":Landroid/os/Bundle;
    const-string v1, "EVENTSTARTTIME"

    iget-object v2, p0, Lcom/sec/jewishcalendar/events/NewEvent;->mFromGregorianDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    invoke-virtual {v2}, Lcom/sec/jewishcalendar/events/DateAndTime;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 472
    invoke-virtual {v9, v7}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 473
    invoke-virtual {p0}, Lcom/sec/jewishcalendar/events/NewEvent;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/sec/jewishcalendar/events/GlobalEvents;->initEventAlarm(Landroid/content/Context;Z)V

    .line 474
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v9}, Lcom/sec/jewishcalendar/events/NewEvent;->setResult(ILandroid/content/Intent;)V

    .line 475
    invoke-virtual {p0}, Lcom/sec/jewishcalendar/events/NewEvent;->finish()V

    .line 476
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 346
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/NewEvent;->mEventDescriptionEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/jewishcalendar/events/NewEvent;->mEventDescription:Ljava/lang/String;

    .line 347
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 348
    const v0, 0x7f030015

    invoke-virtual {p0, v0}, Lcom/sec/jewishcalendar/events/NewEvent;->setContentView(I)V

    .line 349
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/jewishcalendar/events/NewEvent;->initScreenElements(Z)V

    .line 353
    invoke-direct {p0}, Lcom/sec/jewishcalendar/events/NewEvent;->closeKeyboard()V

    .line 354
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v9, 0x400

    const/4 v8, 0x0

    .line 198
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 199
    invoke-virtual {p0}, Lcom/sec/jewishcalendar/events/NewEvent;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v7, 0x3

    invoke-virtual {v0, v7}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 200
    iput v8, p0, Lcom/sec/jewishcalendar/events/NewEvent;->mRepeatFrequency:I

    .line 201
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/jewishcalendar/events/NewEvent;->mReminderTiming:I

    .line 202
    invoke-virtual {p0}, Lcom/sec/jewishcalendar/events/NewEvent;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    .line 203
    .local v6, "bundle":Landroid/os/Bundle;
    const-string v0, "YEAR"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 204
    .local v1, "year":I
    const-string v0, "MONTH"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 205
    .local v2, "month":I
    const-string v0, "DAY"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 206
    .local v3, "day":I
    const-string v0, "HOUR"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 207
    .local v4, "hour":I
    const-string v0, "MINUTE"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .local v5, "minute":I
    move-object v0, p0

    .line 209
    invoke-direct/range {v0 .. v5}, Lcom/sec/jewishcalendar/events/NewEvent;->initDateAndTimeMembers(IIIII)V

    .line 210
    invoke-direct {p0}, Lcom/sec/jewishcalendar/events/NewEvent;->initToDateAndTimeDialogs()V

    .line 211
    invoke-direct {p0}, Lcom/sec/jewishcalendar/events/NewEvent;->initJCStrings()V

    .line 212
    invoke-direct {p0}, Lcom/sec/jewishcalendar/events/NewEvent;->initRepeatTypes()V

    .line 213
    invoke-direct {p0}, Lcom/sec/jewishcalendar/events/NewEvent;->initReminderTypes()V

    .line 215
    const v0, 0x7f030015

    invoke-virtual {p0, v0}, Lcom/sec/jewishcalendar/events/NewEvent;->setContentView(I)V

    .line 217
    invoke-direct {p0, v8}, Lcom/sec/jewishcalendar/events/NewEvent;->initScreenElements(Z)V

    .line 219
    invoke-virtual {p0}, Lcom/sec/jewishcalendar/events/NewEvent;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v7, 0x2

    if-ne v0, v7, :cond_0

    .line 220
    invoke-virtual {p0}, Lcom/sec/jewishcalendar/events/NewEvent;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/Window;->addFlags(I)V

    .line 225
    :goto_0
    return-void

    .line 223
    :cond_0
    invoke-virtual {p0}, Lcom/sec/jewishcalendar/events/NewEvent;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 7
    .param p1, "id"    # I

    .prologue
    .line 514
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 516
    .local v6, "hourFormat":Ljava/lang/Boolean;
    packed-switch p1, :pswitch_data_0

    .line 544
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 519
    :pswitch_0
    new-instance v0, Landroid/app/DatePickerDialog;

    .line 520
    iget-object v2, p0, Lcom/sec/jewishcalendar/events/NewEvent;->mGregorianDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    .line 521
    iget-object v1, p0, Lcom/sec/jewishcalendar/events/NewEvent;->mFromGregorianDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    iget v3, v1, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nYear:I

    iget-object v1, p0, Lcom/sec/jewishcalendar/events/NewEvent;->mFromGregorianDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    iget v4, v1, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nMonth:I

    .line 522
    iget-object v1, p0, Lcom/sec/jewishcalendar/events/NewEvent;->mFromGregorianDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    iget v5, v1, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nDay:I

    move-object v1, p0

    .line 519
    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    goto :goto_0

    .line 525
    :pswitch_1
    new-instance v0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePickerDialog;

    .line 526
    iget-object v2, p0, Lcom/sec/jewishcalendar/events/NewEvent;->mJewishDateSetListener:Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePickerDialog$OnJewishDateSetListener;

    .line 527
    iget-object v1, p0, Lcom/sec/jewishcalendar/events/NewEvent;->mHFromdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    iget v3, v1, Lcom/sec/jewishcalendar/calculation/HdateClass;->hyear:I

    iget-object v1, p0, Lcom/sec/jewishcalendar/events/NewEvent;->mHFromdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    iget v4, v1, Lcom/sec/jewishcalendar/calculation/HdateClass;->hmonth:I

    iget-object v1, p0, Lcom/sec/jewishcalendar/events/NewEvent;->mHFromdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    iget v5, v1, Lcom/sec/jewishcalendar/calculation/HdateClass;->hday:I

    move-object v1, p0

    .line 525
    invoke-direct/range {v0 .. v5}, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePickerDialog;-><init>(Landroid/content/Context;Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePickerDialog$OnJewishDateSetListener;III)V

    goto :goto_0

    .line 530
    :pswitch_2
    new-instance v0, Landroid/app/TimePickerDialog;

    .line 531
    iget-object v2, p0, Lcom/sec/jewishcalendar/events/NewEvent;->mTimeSetListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

    .line 532
    iget-object v1, p0, Lcom/sec/jewishcalendar/events/NewEvent;->mFromGregorianDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    iget v3, v1, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nHour:I

    iget-object v1, p0, Lcom/sec/jewishcalendar/events/NewEvent;->mFromGregorianDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    iget v4, v1, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nMinute:I

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    move-object v1, p0

    .line 530
    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    goto :goto_0

    .line 535
    :pswitch_3
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/NewEvent;->mGregorianToDateDialog:Landroid/app/DatePickerDialog;

    goto :goto_0

    .line 538
    :pswitch_4
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/NewEvent;->mJewishToDateDialog:Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePickerDialog;

    goto :goto_0

    .line 541
    :pswitch_5
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/NewEvent;->mToTimeDialog:Landroid/app/TimePickerDialog;

    goto :goto_0

    .line 516
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
