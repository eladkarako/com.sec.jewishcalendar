.class public Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;
.super Landroid/widget/FrameLayout;
.source "JewishDatePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker$OnJewishDateChangedListener;,
        Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker$SavedState;,
        Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker$TwTextWatcher;
    }
.end annotation


# static fields
.field private static final TW_DEBUG:Z


# instance fields
.field private currentLang:Ljava/lang/String;

.field public currentLocal:Ljava/util/Locale;

.field private jdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

.field private mDay:I

.field mDayEdit:Landroid/widget/EditText;

.field private final mDayPicker:Lcom/sec/jewishcalendar/widget/NumberPicker;

.field private mIsHebState:Z

.field private mMonth:I

.field mMonthEdit:Landroid/widget/EditText;

.field private final mMonthPicker:Lcom/sec/jewishcalendar/widget/NumberPicker;

.field private mOnDateChangedListener:Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker$OnJewishDateChangedListener;

.field private mPickerTexts:[Landroid/widget/EditText;

.field private mRes:Landroid/content/res/Resources;

.field private mYear:I

.field mYearEdit:Landroid/widget/EditText;

.field private final mYearPicker:Lcom/sec/jewishcalendar/widget/NumberPicker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 97
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 101
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 102
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 105
    invoke-direct/range {p0 .. p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    new-instance v9, Lcom/sec/jewishcalendar/calculation/HdateClass;

    invoke-direct {v9}, Lcom/sec/jewishcalendar/calculation/HdateClass;-><init>()V

    iput-object v9, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;->jdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    .line 496
    const/4 v9, 0x3

    new-array v9, v9, [Landroid/widget/EditText;

    iput-object v9, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;->mPickerTexts:[Landroid/widget/EditText;

    .line 106
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    iput-object v9, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;->mRes:Landroid/content/res/Resources;

    .line 107
    const-string v9, "layout_inflater"

    invoke-virtual {p1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 108
    .local v4, "inflater":Landroid/view/LayoutInflater;
    const v9, 0x7f030011

    const/4 v10, 0x1

    invoke-virtual {v4, v9, p0, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 110
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    .line 111
    .local v2, "currentLocal":Ljava/util/Locale;
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;->currentLang:Ljava/lang/String;

    .line 112
    iget-object v9, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;->currentLang:Ljava/lang/String;

    const-string v10, "he"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    iget-object v9, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;->currentLang:Ljava/lang/String;

    const-string v10, "iw"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 113
    :cond_0
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;->mIsHebState:Z

    .line 117
    :goto_0
    const v9, 0x7f0e0040

    invoke-virtual {p0, v9}, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/sec/jewishcalendar/widget/NumberPicker;

    iput-object v9, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;->mDayPicker:Lcom/sec/jewishcalendar/widget/NumberPicker;

    .line 123
    iget-object v9, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;->mDayPicker:Lcom/sec/jewishcalendar/widget/NumberPicker;

    sget-object v10, Lcom/sec/jewishcalendar/widget/NumberPicker;->TWO_DIGIT_FORMATTER:Lcom/sec/jewishcalendar/widget/NumberPicker$Formatter;

    invoke-virtual {v9, v10}, Lcom/sec/jewishcalendar/widget/NumberPicker;->setFormatter(Lcom/sec/jewishcalendar/widget/NumberPicker$Formatter;)V

    .line 124
    iget-object v9, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;->mDayPicker:Lcom/sec/jewishcalendar/widget/NumberPicker;

    const-wide/16 v10, 0xc8

    invoke-virtual {v9, v10, v11}, Lcom/sec/jewishcalendar/widget/NumberPicker;->setSpeed(J)V

    .line 125
    iget-object v9, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;->mRes:Landroid/content/res/Resources;

    const v10, 0x7f060002

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 128
    .local v3, "days":[Ljava/lang/String;
    iget-object v9, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;->mDayPicker:Lcom/sec/jewishcalendar/widget/NumberPicker;

    const/4 v10, 0x0

    const/16 v11, 0x1e

    invoke-virtual {v9, v10, v11, v3}, Lcom/sec/jewishcalendar/widget/NumberPicker;->setRange(II[Ljava/lang/String;)V

    .line 131
    iget-object v9, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;->mDayPicker:Lcom/sec/jewishcalendar/widget/NumberPicker;

    new-instance v10, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker$1;

    invoke-direct {v10, p0}, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker$1;-><init>(Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;)V

    invoke-virtual {v9, v10}, Lcom/sec/jewishcalendar/widget/NumberPicker;->setOnChangeListener(Lcom/sec/jewishcalendar/widget/NumberPicker$OnChangedListener;)V

    .line 139
    const v9, 0x7f0e003f

    invoke-virtual {p0, v9}, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/sec/jewishcalendar/widget/NumberPicker;

    iput-object v9, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;->mMonthPicker:Lcom/sec/jewishcalendar/widget/NumberPicker;

    .line 142
    iget-object v9, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;->mDayPicker:Lcom/sec/jewishcalendar/widget/NumberPicker;

    invoke-virtual {v9}, Lcom/sec/jewishcalendar/widget/NumberPicker;->getEditText()Landroid/widget/EditText;

    move-result-object v9

    iput-object v9, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;->mDayEdit:Landroid/widget/EditText;

    .line 143
    iget-object v9, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;->mDayEdit:Landroid/widget/EditText;

    const/high16 v10, 0x10000

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setInputType(I)V

    .line 145
    iget-object v9, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;->mMonthPicker:Lcom/sec/jewishcalendar/widget/NumberPicker;

    invoke-virtual {v9}, Lcom/sec/jewishcalendar/widget/NumberPicker;->getEditText()Landroid/widget/EditText;

    move-result-object v9

    iput-object v9, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;->mMonthEdit:Landroid/widget/EditText;

    .line 146
    iget-object v9, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;->mMonthEdit:Landroid/widget/EditText;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setInputType(I)V

    .line 147
    iget-object v9, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;->mMonthEdit:Landroid/widget/EditText;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 153
    iget-object v9, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;->mMonthPicker:Lcom/sec/jewishcalendar/widget/NumberPicker;

    sget-object v10, Lcom/sec/jewishcalendar/widget/NumberPicker;->TWO_DIGIT_FORMATTER:Lcom/sec/jewishcalendar/widget/NumberPicker$Formatter;

    invoke-virtual {v9, v10}, Lcom/sec/jewishcalendar/widget/NumberPicker;->setFormatter(Lcom/sec/jewishcalendar/widget/NumberPicker$Formatter;)V

    .line 154
    iget-object v9, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;->mRes:Landroid/content/res/Resources;

    const v10, 0x7f060004

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    .line 158
    .local v7, "months":[Ljava/lang/String;
    iget-object v9, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;->mMonthPicker:Lcom/sec/jewishcalendar/widget/NumberPicker;

    const/4 v10, 0x0

    const/16 v11, 0xc

    invoke-virtual {v9, v10, v11, v7}, Lcom/sec/jewishcalendar/widget/NumberPicker;->setRange(II[Ljava/lang/String;)V

    .line 160
    iget-object v9, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;->mMonthPicker:Lcom/sec/jewishcalendar/widget/NumberPicker;

    const-wide/16 v10, 0xc8

    invoke-virtual {v9, v10, v11}, Lcom/sec/jewishcalendar/widget/NumberPicker;->setSpeed(J)V

    .line 161
    iget-object v9, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;->mMonthPicker:Lcom/sec/jewishcalendar/widget/NumberPicker;

    new-instance v10, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker$2;

    invoke-direct {v10, p0}, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker$2;-><init>(Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;)V

    invoke-virtual {v9, v10}, Lcom/sec/jewishcalendar/widget/NumberPicker;->setOnChangeListener(Lcom/sec/jewishcalendar/widget/NumberPicker$OnChangedListener;)V

    .line 172
    const v9, 0x7f0e0041

    invoke-virtual {p0, v9}, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/sec/jewishcalendar/widget/NumberPicker;

    iput-object v9, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;->mYearPicker:Lcom/sec/jewishcalendar/widget/NumberPicker;

    .line 176
    iget-object v9, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;->mYearPicker:Lcom/sec/jewishcalendar/widget/NumberPicker;

    const-wide/16 v10, 0x64

    invoke-virtual {v9, v10, v11}, Lcom/sec/jewishcalendar/widget/NumberPicker;->setSpeed(J)V

    .line 177
    invoke-direct {p0}, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;->makeYearsArray()[Ljava/lang/String;

    move-result-object v8

    .line 181
    .local v8, "years":[Ljava/lang/String;
    iget-object v9, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;->mYearPicker:Lcom/sec/jewishcalendar/widget/NumberPicker;

    new-instance v10, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker$3;

    invoke-direct {v10, p0}, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker$3;-><init>(Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;)V

    invoke-virtual {v9, v10}, Lcom/sec/jewishcalendar/widget/NumberPicker;->setOnChangeListener(Lcom/sec/jewishcalendar/widget/NumberPicker$OnChangedListener;)V

    .line 193
    sget-object v9, Lcom/sec/jewishcalendar/R$styleable;->JewishDatePicker:[I

    invoke-virtual {p1, p2, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 195
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v9, 0x0

    const/16 v10, 0x161d

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    .line 196
    .local v6, "mStartYear":I
    const/4 v9, 0x1

    const/16 v10, 0x16e4

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 197
    .local v5, "mEndYear":I
    iget-boolean v9, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;->mIsHebState:Z

    if-eqz v9, :cond_3

    .line 199
    iget-object v9, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;->mYearPicker:Lcom/sec/jewishcalendar/widget/NumberPicker;

    invoke-virtual {v9, v6, v5, v8}, Lcom/sec/jewishcalendar/widget/NumberPicker;->setRange(II[Ljava/lang/String;)V

    .line 200
    iget-object v9, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;->mYearPicker:Lcom/sec/jewishcalendar/widget/NumberPicker;

    invoke-virtual {v9}, Lcom/sec/jewishcalendar/widget/NumberPicker;->getEditText()Landroid/widget/EditText;

    move-result-object v9

    iput-object v9, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;->mYearEdit:Landroid/widget/EditText;

    .line 201
    iget-object v9, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;->mYearEdit:Landroid/widget/EditText;

    const/high16 v10, 0x10000

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setInputType(I)V

    .line 208
    :goto_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 211
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 212
    .local v1, "cal":Ljava/util/Calendar;
    iget-object v9, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;->jdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    const/4 v10, 0x5

    invoke-virtual {v1, v10}, Ljava/util/Calendar;->get(I)I

    move-result v10

    const/4 v11, 0x2

    invoke-virtual {v1, v11}, Ljava/util/Calendar;->get(I)I

    move-result v11

    const/4 v12, 0x1

    invoke-virtual {v1, v12}, Ljava/util/Calendar;->get(I)I

    move-result v12

    invoke-static {v9, v10, v11, v12}, Lcom/sec/jewishcalendar/calculation/JewishCal;->SetGdate(Lcom/sec/jewishcalendar/calculation/HdateClass;III)I

    .line 213
    iget-object v9, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;->jdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    iget v9, v9, Lcom/sec/jewishcalendar/calculation/HdateClass;->hyear:I

    iget-object v10, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;->jdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    iget v10, v10, Lcom/sec/jewishcalendar/calculation/HdateClass;->hmonth:I

    iget-object v11, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;->jdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    iget v11, v11, Lcom/sec/jewishcalendar/calculation/HdateClass;->hday:I

    const/4 v12, 0x0

    invoke-virtual {p0, v9, v10, v11, v12}, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;->init(IIILcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker$OnJewishDateChangedListener;)V

    .line 216
    invoke-direct {p0}, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;->reorderPickers()V

    .line 218
    invoke-virtual {p0}, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;->isEnabled()Z

    move-result v9

    if-nez v9, :cond_1

    .line 219
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;->setEnabled(Z)V

    .line 221
    :cond_1
    return-void

    .line 115
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v1    # "cal":Ljava/util/Calendar;
    .end local v3    # "days":[Ljava/lang/String;
    .end local v5    # "mEndYear":I
    .end local v6    # "mStartYear":I
    .end local v7    # "months":[Ljava/lang/String;
    .end local v8    # "years":[Ljava/lang/String;
    :cond_2
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;->mIsHebState:Z

    goto/16 :goto_0

    .line 205
    .restart local v0    # "a":Landroid/content/res/TypedArray;
    .restart local v3    # "days":[Ljava/lang/String;
    .restart local v5    # "mEndYear":I
    .restart local v6    # "mStartYear":I
    .restart local v7    # "months":[Ljava/lang/String;
    .restart local v8    # "years":[Ljava/lang/String;
    :cond_3
    iget-object v9, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;->mYearPicker:Lcom/sec/jewishcalendar/widget/NumberPicker;

    invoke-virtual {v9, v6, v5}, Lcom/sec/jewishcalendar/widget/NumberPicker;->setRange(II)V

    goto :goto_1
.end method

.method static synthetic access$0(Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 499
    invoke-direct {p0, p1}, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;->twLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1(Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;)[Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 496
    iget-object v0, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;->mPickerTexts:[Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$2(Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;II)V
    .locals 0

    .prologue
    .line 409
    invoke-direct {p0, p1, p2}, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;->adjustMaxDay(II)V

    return-void
.end method

.method static synthetic access$3(Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;)V
    .locals 0

    .prologue
    .line 483
    invoke-direct {p0}, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;->notifyDateChanged()V

    return-void
.end method

.method static synthetic access$4(Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;)V
    .locals 0

    .prologue
    .line 366
    invoke-direct {p0}, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;->updateSpinners()V

    return-void
.end method

.method static synthetic access$5(Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;II)V
    .locals 0

    .prologue
    .line 439
    invoke-direct {p0, p1, p2}, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;->adjustMonth(II)V

    return-void
.end method

.method static synthetic access$6(Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;)V
    .locals 0

    .prologue
    .line 429
    invoke-direct {p0}, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;->adjustMaxDay()V

    return-void
.end method

.method static synthetic access$7(Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;I)V
    .locals 0

    .prologue
    .line 79
    iput p1, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;->mYear:I

    return-void
.end method

.method static synthetic access$8(Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;)V
    .locals 0

    .prologue
    .line 467
    invoke-direct {p0}, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;->adjustMonth()V

    return-void
.end method

.method private adjustMaxDay()V
    .locals 5

    .prologue
    .line 430
    new-instance v0, Lcom/sec/jewishcalendar/calculation/HdateClass;

    invoke-direct {v0}, Lcom/sec/jewishcalendar/calculation/HdateClass;-><init>()V

    .line 431
    .local v0, "hdate":Lcom/sec/jewishcalendar/calculation/HdateClass;
    const/4 v2, 0x1

    iget v3, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;->mMonth:I

    iget v4, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;->mYear:I

    invoke-static {v0, v2, v3, v4}, Lcom/sec/jewishcalendar/calculation/JewishCal;->SetHdate(Lcom/sec/jewishcalendar/calculation/HdateClass;III)I

    .line 432
    invoke-static {v0}, Lcom/sec/jewishcalendar/calculation/JewishCal;->GetDayOfMonth(Lcom/sec/jewishcalendar/calculation/HdateClass;)I

    move-result v1

    .line 433
    .local v1, "max":I
    iget v2, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;->mDay:I

    if-le v2, v1, :cond_0

    .line 434
    iput v1, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;->mDay:I

    .line 437
    :cond_0
    return-void
.end method

.method private adjustMaxDay(II)V
    .locals 5
    .param p1, "oldVal"    # I
    .param p2, "newVal"    # I

    .prologue
    const/4 v4, 0x1

    .line 410
    new-instance v0, Lcom/sec/jewishcalendar/calculation/HdateClass;

    invoke-direct {v0}, Lcom/sec/jewishcalendar/calculation/HdateClass;-><init>()V

    .line 411
    .local v0, "hdate":Lcom/sec/jewishcalendar/calculation/HdateClass;
    iget v2, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;->mMonth:I

    iget v3, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;->mYear:I

    invoke-static {v0, v4, v2, v3}, Lcom/sec/jewishcalendar/calculation/JewishCal;->SetHdate(Lcom/sec/jewishcalendar/calculation/HdateClass;III)I

    .line 412
    invoke-static {v0}, Lcom/sec/jewishcalendar/calculation/JewishCal;->GetDayOfMonth(Lcom/sec/jewishcalendar/calculation/HdateClass;)I

    move-result v1

    .line 413
    .local v1, "max":I
    if-nez p2, :cond_2

    .line 415
    const/16 v2, 0x1e

    if-eq p1, v2, :cond_0

    const/16 v2, 0x1d

    if-ne p1, v2, :cond_1

    .line 416
    :cond_0
    iput v4, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;->mDay:I

    .line 427
    :goto_0
    return-void

    .line 418
    :cond_1
    iput v1, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;->mDay:I

    goto :goto_0

    .line 420
    :cond_2
    if-le p2, v1, :cond_3

    .line 421
    iput v1, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;->mDay:I

    goto :goto_0

    .line 425
    :cond_3
    iput p2, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;->mDay:I

    goto :goto_0
.end method

.method private adjustMonth()V
    .locals 6

    .prologue
    const/16 v5, 0xd

    const/4 v4, 0x6

    const/4 v3, 0x1

    .line 469
    new-instance v0, Lcom/sec/jewishcalendar/calculation/HdateClass;

    invoke-direct {v0}, Lcom/sec/jewishcalendar/calculation/HdateClass;-><init>()V

    .line 470
    .local v0, "hdate":Lcom/sec/jewishcalendar/calculation/HdateClass;
    iget v2, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;->mYear:I

    invoke-static {v0, v3, v3, v2}, Lcom/sec/jewishcalendar/calculation/JewishCal;->SetHdate(Lcom/sec/jewishcalendar/calculation/HdateClass;III)I

    .line 471
    iget v2, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;->mYear:I

    invoke-static {v2}, Lcom/sec/jewishcalendar/calculation/JewishCal;->IsYearLeap(I)I

    move-result v1

    .line 472
    .local v1, "isLeap":I
    if-ne v1, v3, :cond_1

    iget v2, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;->mMonth:I

    if-ne v2, v4, :cond_1

    .line 474
    iput v5, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;->mMonth:I

    .line 481
    :cond_0
    :goto_0
    return-void

    .line 476
    :cond_1
    if-nez v1, :cond_0

    iget v2, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;->mMonth:I

    if-eq v2, v5, :cond_2

    iget v2, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;->mMonth:I

    const/16 v3, 0xe

    if-ne v2, v3, :cond_0

    .line 478
    :cond_2
    iput v4, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;->mMonth:I

    goto :goto_0
.end method

.method private adjustMonth(II)V
    .locals 5
    .param p1, "oldVal"    # I
    .param p2, "newVal"    # I

    .prologue
    const/16 v4, 0xc

    const/4 v3, 0x1

    .line 441
    new-instance v0, Lcom/sec/jewishcalendar/calculation/HdateClass;

    invoke-direct {v0}, Lcom/sec/jewishcalendar/calculation/HdateClass;-><init>()V

    .line 442
    .local v0, "hdate":Lcom/sec/jewishcalendar/calculation/HdateClass;
    iget v1, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;->mMonth:I

    iget v2, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;->mYear:I

    invoke-static {v0, v3, v1, v2}, Lcom/sec/jewishcalendar/calculation/JewishCal;->SetHdate(Lcom/sec/jewishcalendar/calculation/HdateClass;III)I

    .line 443
    if-nez p2, :cond_3

    .line 445
    if-ne p1, v3, :cond_1

    .line 446
    iput v4, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;->mMonth:I

    .line 465
    :cond_0
    :goto_0
    return-void

    .line 447
    :cond_1
    const/16 v1, 0xe

    if-ne p1, v1, :cond_2

    .line 448
    const/4 v1, 0x7

    iput v1, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;->mMonth:I

    goto :goto_0

    .line 450
    :cond_2
    iput v3, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;->mMonth:I

    goto :goto_0

    .line 452
    :cond_3
    const/16 v1, 0xd

    if-ne p2, v1, :cond_4

    if-ne p1, v4, :cond_4

    .line 454
    iput v3, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;->mMonth:I

    goto :goto_0

    .line 456
    :cond_4
    if-ge p1, p2, :cond_5

    .line 458
    invoke-static {v0}, Lcom/sec/jewishcalendar/calculation/JewishCal;->hdate_get_next_mon(Lcom/sec/jewishcalendar/calculation/HdateClass;)I

    move-result v1

    iput v1, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;->mMonth:I

    goto :goto_0

    .line 460
    :cond_5
    if-le p1, p2, :cond_0

    .line 462
    invoke-static {v0}, Lcom/sec/jewishcalendar/calculation/JewishCal;->hdate_get_prev_mon(Lcom/sec/jewishcalendar/calculation/HdateClass;)I

    move-result v1

    iput v1, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;->mMonth:I

    goto :goto_0
.end method

.method private makeYearsArray()[Ljava/lang/String;
    .locals 6

    .prologue
    .line 578
    iget-object v4, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;->mRes:Landroid/content/res/Resources;

    const v5, 0x7f060003

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 579
    .local v2, "letters":[Ljava/lang/String;
    const/16 v4, 0xc8

    new-array v3, v4, [Ljava/lang/String;

    .line 580
    .local v3, "years":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 581
    .local v1, "j":I
    const/16 v0, 0x161d

    .local v0, "i":I
    :goto_0
    const/16 v4, 0x16e4

    if-le v0, v4, :cond_0

    .line 588
    return-object v3

    .line 583
    :cond_0
    invoke-static {v0, v2}, Lcom/sec/jewishcalendar/calculation/JewishCal;->GetJewishYearString(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    .line 584
    add-int/lit8 v1, v1, 0x1

    .line 581
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private notifyDateChanged()V
    .locals 4

    .prologue
    .line 484
    iget-object v0, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;->mOnDateChangedListener:Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker$OnJewishDateChangedListener;

    if-eqz v0, :cond_0

    .line 485
    iget-object v0, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;->mOnDateChangedListener:Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker$OnJewishDateChangedListener;

    iget v1, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;->mYear:I

    iget v2, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;->mMonth:I

    iget v3, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;->mDay:I

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker$OnJewishDateChangedListener;->onDateChanged(Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;III)V

    .line 487
    :cond_0
    return-void
.end method

.method private reorderPickers()V
    .locals 2

    .prologue
    .line 253
    const v1, 0x7f0e003e

    invoke-virtual {p0, v1}, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 254
    .local v0, "parent":Landroid/widget/LinearLayout;
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 255
    invoke-static {}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUtilities;->isOSLollipopOrUp()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 256
    iget-object v1, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;->mYearPicker:Lcom/sec/jewishcalendar/widget/NumberPicker;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 257
    iget-object v1, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;->mMonthPicker:Lcom/sec/jewishcalendar/widget/NumberPicker;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 258
    iget-object v1, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;->mDayPicker:Lcom/sec/jewishcalendar/widget/NumberPicker;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 265
    :goto_0
    return-void

    .line 261
    :cond_0
    iget-object v1, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;->mDayPicker:Lcom/sec/jewishcalendar/widget/NumberPicker;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 262
    iget-object v1, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;->mMonthPicker:Lcom/sec/jewishcalendar/widget/NumberPicker;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 263
    iget-object v1, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;->mYearPicker:Lcom/sec/jewishcalendar/widget/NumberPicker;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private twLog(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 503
    return-void
.end method

.method private updateDaySpinner()V
    .locals 5

    .prologue
    .line 375
    new-instance v0, Lcom/sec/jewishcalendar/calculation/HdateClass;

    invoke-direct {v0}, Lcom/sec/jewishcalendar/calculation/HdateClass;-><init>()V

    .line 376
    .local v0, "hdate":Lcom/sec/jewishcalendar/calculation/HdateClass;
    iget v2, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;->mDay:I

    iget v3, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;->mMonth:I

    iget v4, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;->mYear:I

    invoke-static {v0, v2, v3, v4}, Lcom/sec/jewishcalendar/calculation/JewishCal;->SetHdate(Lcom/sec/jewishcalendar/calculation/HdateClass;III)I

    .line 377
    invoke-static {v0}, Lcom/sec/jewishcalendar/calculation/JewishCal;->GetDayOfMonth(Lcom/sec/jewishcalendar/calculation/HdateClass;)I

    move-result v1

    .line 378
    .local v1, "max":I
    iget-object v2, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;->mDayPicker:Lcom/sec/jewishcalendar/widget/NumberPicker;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Lcom/sec/jewishcalendar/widget/NumberPicker;->setRange(II)V

    .line 379
    iget-object v2, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;->mDayPicker:Lcom/sec/jewishcalendar/widget/NumberPicker;

    iget v3, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;->mDay:I

    invoke-virtual {v2, v3}, Lcom/sec/jewishcalendar/widget/NumberPicker;->setCurrent(I)V

    .line 380
    return-void
.end method

.method private updateMonthSpinner()V
    .locals 5

    .prologue
    .line 382
    new-instance v0, Lcom/sec/jewishcalendar/calculation/HdateClass;

    invoke-direct {v0}, Lcom/sec/jewishcalendar/calculation/HdateClass;-><init>()V

    .line 383
    .local v0, "hdate":Lcom/sec/jewishcalendar/calculation/HdateClass;
    iget v2, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;->mDay:I

    iget v3, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;->mMonth:I

    iget v4, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;->mYear:I

    invoke-static {v0, v2, v3, v4}, Lcom/sec/jewishcalendar/calculation/JewishCal;->SetHdate(Lcom/sec/jewishcalendar/calculation/HdateClass;III)I

    .line 384
    const/16 v1, 0xc

    .line 385
    .local v1, "max":I
    iget v2, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;->mYear:I

    invoke-static {v2}, Lcom/sec/jewishcalendar/calculation/JewishCal;->IsYearLeap(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 387
    const/16 v1, 0xe

    .line 390
    :cond_0
    iget-object v2, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;->mMonthPicker:Lcom/sec/jewishcalendar/widget/NumberPicker;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Lcom/sec/jewishcalendar/widget/NumberPicker;->setRange(II)V

    .line 391
    iget-object v2, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;->mMonthPicker:Lcom/sec/jewishcalendar/widget/NumberPicker;

    iget v3, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;->mMonth:I

    invoke-virtual {v2, v3}, Lcom/sec/jewishcalendar/widget/NumberPicker;->setCurrent(I)V

    .line 392
    return-void
.end method

.method private updateSpinners()V
    .locals 2

    .prologue
    .line 367
    invoke-direct {p0}, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;->updateDaySpinner()V

    .line 368
    invoke-direct {p0}, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;->updateMonthSpinner()V

    .line 369
    iget-object v0, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;->mYearPicker:Lcom/sec/jewishcalendar/widget/NumberPicker;

    iget v1, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;->mYear:I

    invoke-virtual {v0, v1}, Lcom/sec/jewishcalendar/widget/NumberPicker;->setCurrent(I)V

    .line 371
    iget-object v0, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;->mMonthPicker:Lcom/sec/jewishcalendar/widget/NumberPicker;

    iget v1, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;->mMonth:I

    invoke-virtual {v0, v1}, Lcom/sec/jewishcalendar/widget/NumberPicker;->setCurrent(I)V

    .line 372
    return-void
.end method


# virtual methods
.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 331
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    .line 332
    return-void
.end method

.method public getDayOfMonth()I
    .locals 1

    .prologue
    .line 403
    iget v0, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;->mDay:I

    return v0
.end method

.method public getHebState()Z
    .locals 1

    .prologue
    .line 407
    iget-boolean v0, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;->mIsHebState:Z

    return v0
.end method

.method public getMonth()I
    .locals 1

    .prologue
    .line 399
    iget v0, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;->mMonth:I

    return v0
.end method

.method public getYear()I
    .locals 1

    .prologue
    .line 395
    iget v0, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;->mYear:I

    return v0
.end method

.method public init(IIILcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker$OnJewishDateChangedListener;)V
    .locals 0
    .param p1, "year"    # I
    .param p2, "monthOfYear"    # I
    .param p3, "dayOfMonth"    # I
    .param p4, "onDateChangedListener"    # Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker$OnJewishDateChangedListener;

    .prologue
    .line 359
    iput p1, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;->mYear:I

    .line 360
    iput p2, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;->mMonth:I

    .line 361
    iput p3, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;->mDay:I

    .line 362
    iput-object p4, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;->mOnDateChangedListener:Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker$OnJewishDateChangedListener;

    .line 363
    invoke-direct {p0}, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;->updateSpinners()V

    .line 364
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 343
    move-object v0, p1

    check-cast v0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker$SavedState;

    .line 344
    .local v0, "ss":Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker$SavedState;
    invoke-virtual {v0}, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 345
    invoke-virtual {v0}, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker$SavedState;->getYear()I

    move-result v1

    iput v1, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;->mYear:I

    .line 346
    invoke-virtual {v0}, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker$SavedState;->getMonth()I

    move-result v1

    iput v1, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;->mMonth:I

    .line 347
    invoke-virtual {v0}, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker$SavedState;->getDay()I

    move-result v1

    iput v1, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;->mDay:I

    .line 348
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 6

    .prologue
    .line 336
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 338
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker$SavedState;

    iget v2, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;->mYear:I

    iget v3, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;->mMonth:I

    iget v4, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;->mDay:I

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker$SavedState;-><init>(Landroid/os/Parcelable;IIILcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker$SavedState;)V

    return-object v0
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 233
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 234
    iget-object v0, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;->mDayPicker:Lcom/sec/jewishcalendar/widget/NumberPicker;

    invoke-virtual {v0, p1}, Lcom/sec/jewishcalendar/widget/NumberPicker;->setEnabled(Z)V

    .line 235
    iget-object v0, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;->mMonthPicker:Lcom/sec/jewishcalendar/widget/NumberPicker;

    invoke-virtual {v0, p1}, Lcom/sec/jewishcalendar/widget/NumberPicker;->setEnabled(Z)V

    .line 236
    iget-object v0, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;->mYearPicker:Lcom/sec/jewishcalendar/widget/NumberPicker;

    invoke-virtual {v0, p1}, Lcom/sec/jewishcalendar/widget/NumberPicker;->setEnabled(Z)V

    .line 237
    return-void
.end method

.method public twSetRangeOfYear(II)V
    .locals 1
    .param p1, "startYear"    # I
    .param p2, "endYear"    # I

    .prologue
    .line 226
    iget-object v0, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;->mYearPicker:Lcom/sec/jewishcalendar/widget/NumberPicker;

    invoke-virtual {v0, p1, p2}, Lcom/sec/jewishcalendar/widget/NumberPicker;->setRange(II)V

    .line 227
    iput p1, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;->mYear:I

    .line 228
    return-void
.end method

.method public updateDate(III)V
    .locals 1
    .param p1, "year"    # I
    .param p2, "monthOfYear"    # I
    .param p3, "dayOfMonth"    # I

    .prologue
    .line 268
    iget v0, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;->mYear:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;->mMonth:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;->mDay:I

    if-eq v0, p3, :cond_1

    .line 269
    :cond_0
    iput p1, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;->mYear:I

    .line 270
    iput p2, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;->mMonth:I

    .line 271
    iput p3, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;->mDay:I

    .line 272
    invoke-direct {p0}, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;->updateSpinners()V

    .line 273
    invoke-direct {p0}, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;->reorderPickers()V

    .line 274
    invoke-direct {p0}, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;->notifyDateChanged()V

    .line 276
    :cond_1
    return-void
.end method
