.class public Lcom/sec/jewishcalendar/JewishCalendarView;
.super Landroid/app/Activity;
.source "JewishCalendarView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Landroid/view/View$OnLongClickListener;


# static fields
.field static final BACK_FROM_EVENT:I = 0x0

.field static final DATE_DIALOG_ID:I = 0x0

.field static final JEWISH_DATE_DIALOG_ID:I = 0x1

.field private static enableLongClick:Z

.field private static isJewishCalendar:Z

.field public static mViewCalendar:Landroid/text/format/Time;


# instance fields
.field CheckboxPreference:Z

.field private JC_DAYS:[Ljava/lang/String;

.field private JC_GMONTHS:[Ljava/lang/String;

.field private JC_HOLIDAYS:[Ljava/lang/String;

.field private JC_LETTERS:[Ljava/lang/String;

.field private JC_MONTHS:[Ljava/lang/String;

.field private JC_Week:[Ljava/lang/String;

.field ListPreference:Ljava/lang/String;

.field btnChosen:I

.field customPref:Ljava/lang/String;

.field private downXValue:F

.field private downYValue:F

.field editTextPreference:Ljava/lang/String;

.field private infoFieldTextSize:I

.field intent:Landroid/content/Intent;

.field private jdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

.field private jtoday:Lcom/sec/jewishcalendar/calculation/HdateClass;

.field private mCursor:Lcom/sec/jewishcalendar/TwDayOfMonthCursorInterface;

.field private mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

.field private mDayTextSize:I

.field private mDiaspora:I

.field private mInfo:Landroid/widget/Button;

.field private mJewishDateSetListener:Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePickerDialog$OnJewishDateSetListener;

.field private mMontAsro:I

.field private mMonthDayNumberColor:I

.field private mMonthFastDayColor:I

.field private mMonthFridayNumberColor:I

.field private mMonthHoliDayColor:I

.field private mMonthOtherMonthDayNumberColor:I

.field private mMonthSaturdayNumberColor:I

.field private mMonthTitle:Landroid/widget/Button;

.field private mMonthWeekNumColor:I

.field private mMonthheads:I

.field private mMounthYearTextSize:I

.field private mMounthYearTextSize_Small:I

.field private mNextMonthArrow:Landroid/widget/ImageButton;

.field private mNextYearArrow:Landroid/widget/ImageButton;

.field private final mNumBut:I

.field private mPrevMonthArrow:Landroid/widget/ImageButton;

.field private mPrevNextDayTextSize:I

.field private mPrevYearArrow:Landroid/widget/ImageButton;

.field private mSavedTime:Landroid/text/format/Time;

.field private mWeekBannerTextSize:I

.field private mWeekBannerTextSizeSmall:I

.field private mYearTitle:Landroid/widget/Button;

.field private res:Landroid/content/res/Resources;

.field ringtonePreference:Ljava/lang/String;

.field secondEditTextPreference:Ljava/lang/String;

.field systemFontScale:F

.field private tmpJdate:Lcom/sec/jewishcalendar/calculation/HdateClass;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 83
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    sput-object v0, Lcom/sec/jewishcalendar/JewishCalendarView;->mViewCalendar:Landroid/text/format/Time;

    .line 86
    sput-boolean v1, Lcom/sec/jewishcalendar/JewishCalendarView;->isJewishCalendar:Z

    .line 87
    sput-boolean v1, Lcom/sec/jewishcalendar/JewishCalendarView;->enableLongClick:Z

    .line 149
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 74
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 84
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iput-object v0, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->mSavedTime:Landroid/text/format/Time;

    .line 85
    iput-object v1, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->mCursor:Lcom/sec/jewishcalendar/TwDayOfMonthCursorInterface;

    .line 93
    new-instance v0, Lcom/sec/jewishcalendar/calculation/HdateClass;

    invoke-direct {v0}, Lcom/sec/jewishcalendar/calculation/HdateClass;-><init>()V

    iput-object v0, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->jdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    .line 94
    new-instance v0, Lcom/sec/jewishcalendar/calculation/HdateClass;

    invoke-direct {v0}, Lcom/sec/jewishcalendar/calculation/HdateClass;-><init>()V

    iput-object v0, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->jtoday:Lcom/sec/jewishcalendar/calculation/HdateClass;

    .line 95
    new-instance v0, Lcom/sec/jewishcalendar/calculation/HdateClass;

    invoke-direct {v0}, Lcom/sec/jewishcalendar/calculation/HdateClass;-><init>()V

    iput-object v0, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->tmpJdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    .line 106
    const/16 v0, 0x2a

    iput v0, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->mNumBut:I

    .line 108
    iput-object v1, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->JC_LETTERS:[Ljava/lang/String;

    .line 109
    iput-object v1, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->JC_MONTHS:[Ljava/lang/String;

    .line 110
    iput-object v1, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->JC_GMONTHS:[Ljava/lang/String;

    .line 111
    iput-object v1, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->JC_DAYS:[Ljava/lang/String;

    .line 112
    iput-object v1, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->JC_HOLIDAYS:[Ljava/lang/String;

    .line 113
    iput-object v1, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->JC_Week:[Ljava/lang/String;

    .line 137
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->systemFontScale:F

    .line 144
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->mDiaspora:I

    .line 151
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->intent:Landroid/content/Intent;

    .line 153
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->btnChosen:I

    .line 74
    return-void
.end method

.method private CheckDensityDpi()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1692
    invoke-virtual {p0}, Lcom/sec/jewishcalendar/JewishCalendarView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 1693
    .local v0, "density":I
    sparse-switch v0, :sswitch_data_0

    .line 1725
    const-string v1, "Anknoun"

    :goto_0
    return-object v1

    .line 1696
    :sswitch_0
    const-string v1, "LDPI"

    goto :goto_0

    .line 1701
    :sswitch_1
    const-string v1, "MDPI"

    goto :goto_0

    .line 1705
    :sswitch_2
    const-string v1, "HDPI"

    goto :goto_0

    .line 1709
    :sswitch_3
    const-string v1, "XXXHDPI"

    goto :goto_0

    .line 1713
    :sswitch_4
    const-string v1, "XXHDPI"

    goto :goto_0

    .line 1717
    :sswitch_5
    const-string v1, "XHDPI"

    goto :goto_0

    .line 1721
    :sswitch_6
    const-string v1, "TVDPI"

    goto :goto_0

    .line 1693
    nop

    :sswitch_data_0
    .sparse-switch
        0x78 -> :sswitch_0
        0xa0 -> :sswitch_1
        0xd5 -> :sswitch_6
        0xf0 -> :sswitch_2
        0x140 -> :sswitch_5
        0x1e0 -> :sswitch_4
        0x280 -> :sswitch_3
    .end sparse-switch
.end method

.method static synthetic access$0()Z
    .locals 1

    .prologue
    .line 86
    sget-boolean v0, Lcom/sec/jewishcalendar/JewishCalendarView;->isJewishCalendar:Z

    return v0
.end method

.method static synthetic access$1(Lcom/sec/jewishcalendar/JewishCalendarView;)Lcom/sec/jewishcalendar/calculation/HdateClass;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->jdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    return-object v0
.end method

.method private displayNewFeaturesAlert()V
    .locals 10

    .prologue
    .line 233
    sget-object v7, Lcom/sec/jewishapps/JewishAppsMainActivity;->SHOW_FIRST_TIME_ALERT:Ljava/lang/String;

    invoke-static {p0, v7}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUserPrefsUtils;->getBooleanFromSharedPreferences(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    .line 234
    .local v4, "hideAlertCheckBoolean":Ljava/lang/Boolean;
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_0

    .line 235
    const v7, 0x7f030005

    const/4 v8, 0x0

    invoke-static {p0, v7, v8}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 236
    .local v3, "checkBoxView":Landroid/view/View;
    const v7, 0x7f0e0011

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 237
    .local v2, "checkBox":Landroid/widget/CheckBox;
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {v2, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 239
    new-instance v7, Lcom/sec/jewishcalendar/JewishCalendarView$1;

    invoke-direct {v7, p0}, Lcom/sec/jewishcalendar/JewishCalendarView$1;-><init>(Lcom/sec/jewishcalendar/JewishCalendarView;)V

    invoke-virtual {v2, v7}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 247
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 249
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/sec/jewishcalendar/JewishCalendarView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a00b0

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 250
    invoke-virtual {p0}, Lcom/sec/jewishcalendar/JewishCalendarView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a00af

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 251
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 252
    invoke-virtual {v7, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 253
    invoke-virtual {p0}, Lcom/sec/jewishcalendar/JewishCalendarView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a001f

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/sec/jewishcalendar/JewishCalendarView$2;

    invoke-direct {v9, p0}, Lcom/sec/jewishcalendar/JewishCalendarView$2;-><init>(Lcom/sec/jewishcalendar/JewishCalendarView;)V

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 258
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 259
    .local v0, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 260
    new-instance v5, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v5}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 261
    .local v5, "lp":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    .line 262
    .local v6, "window":Landroid/view/Window;
    invoke-virtual {v6}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 263
    const/4 v7, -0x1

    iput v7, v5, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 264
    const/4 v7, -0x2

    iput v7, v5, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 265
    invoke-virtual {v6, v5}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 267
    .end local v0    # "alert":Landroid/app/AlertDialog;
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v2    # "checkBox":Landroid/widget/CheckBox;
    .end local v3    # "checkBoxView":Landroid/view/View;
    .end local v5    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v6    # "window":Landroid/view/Window;
    :cond_0
    return-void
.end method

.method private getDaf()Ljava/lang/String;
    .locals 8

    .prologue
    .line 793
    sget-boolean v4, Lcom/sec/jewishcalendar/JewishCalendarView;->isJewishCalendar:Z

    if-eqz v4, :cond_0

    .line 794
    sget-object v4, Lcom/sec/jewishcalendar/JewishCalendarView;->mViewCalendar:Landroid/text/format/Time;

    iget-object v5, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->jdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    iget v5, v5, Lcom/sec/jewishcalendar/calculation/HdateClass;->gday:I

    iput v5, v4, Landroid/text/format/Time;->monthDay:I

    .line 795
    sget-object v4, Lcom/sec/jewishcalendar/JewishCalendarView;->mViewCalendar:Landroid/text/format/Time;

    iget-object v5, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->jdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    iget v5, v5, Lcom/sec/jewishcalendar/calculation/HdateClass;->gmonth:I

    add-int/lit8 v5, v5, -0x1

    iput v5, v4, Landroid/text/format/Time;->month:I

    .line 796
    sget-object v4, Lcom/sec/jewishcalendar/JewishCalendarView;->mViewCalendar:Landroid/text/format/Time;

    iget-object v5, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->jdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    iget v5, v5, Lcom/sec/jewishcalendar/calculation/HdateClass;->gyear:I

    iput v5, v4, Landroid/text/format/Time;->year:I

    .line 799
    :cond_0
    new-instance v3, Lnet/sourceforge/zmanim/hebrewcalendar/JewishCalendar;

    new-instance v4, Ljava/util/Date;

    sget-object v5, Lcom/sec/jewishcalendar/JewishCalendarView;->mViewCalendar:Landroid/text/format/Time;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v6

    invoke-direct {v4, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-direct {v3, v4}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishCalendar;-><init>(Ljava/util/Date;)V

    .line 800
    .local v3, "jewishCalendar":Lnet/sourceforge/zmanim/hebrewcalendar/JewishCalendar;
    invoke-virtual {v3}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishCalendar;->getDafYomiBavli()Lnet/sourceforge/zmanim/hebrewcalendar/Daf;

    move-result-object v1

    .line 801
    .local v1, "daf":Lnet/sourceforge/zmanim/hebrewcalendar/Daf;
    new-instance v2, Lnet/sourceforge/zmanim/hebrewcalendar/HebrewDateFormatter;

    invoke-direct {v2}, Lnet/sourceforge/zmanim/hebrewcalendar/HebrewDateFormatter;-><init>()V

    .line 802
    .local v2, "hebrewDateFormatter":Lnet/sourceforge/zmanim/hebrewcalendar/HebrewDateFormatter;
    invoke-virtual {p0}, Lcom/sec/jewishcalendar/JewishCalendarView;->GetHebrewLocale()Z

    move-result v4

    invoke-virtual {v2, v4}, Lnet/sourceforge/zmanim/hebrewcalendar/HebrewDateFormatter;->setHebrewFormat(Z)V

    .line 803
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/jewishcalendar/JewishCalendarView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a00b8

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lnet/sourceforge/zmanim/hebrewcalendar/HebrewDateFormatter;->formatDafYomiBavli(Lnet/sourceforge/zmanim/hebrewcalendar/Daf;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 804
    .local v0, "dString":Ljava/lang/String;
    return-object v0
.end method

.method private initButtons()V
    .locals 10

    .prologue
    const v9, 0x7f0e0073

    const/4 v8, 0x7

    const/4 v7, 0x6

    const/4 v6, 0x5

    const/4 v5, 0x0

    .line 986
    const v3, 0x7f0e00a5

    invoke-virtual {p0, v3}, Lcom/sec/jewishcalendar/JewishCalendarView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->mInfo:Landroid/widget/Button;

    .line 987
    iget-object v3, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->mInfo:Landroid/widget/Button;

    iget v4, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->infoFieldTextSize:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTextSize(F)V

    .line 988
    iget-object v3, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->mInfo:Landroid/widget/Button;

    new-instance v4, Lcom/sec/jewishcalendar/JewishCalendarView$6;

    invoke-direct {v4, p0}, Lcom/sec/jewishcalendar/JewishCalendarView$6;-><init>(Lcom/sec/jewishcalendar/JewishCalendarView;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 994
    const v3, 0x7f0e003f

    invoke-virtual {p0, v3}, Lcom/sec/jewishcalendar/JewishCalendarView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->mMonthTitle:Landroid/widget/Button;

    .line 995
    iget-object v3, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->mMonthTitle:Landroid/widget/Button;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setClickable(Z)V

    .line 996
    const v3, 0x7f0e0041

    invoke-virtual {p0, v3}, Lcom/sec/jewishcalendar/JewishCalendarView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->mYearTitle:Landroid/widget/Button;

    .line 997
    iget-object v3, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->mYearTitle:Landroid/widget/Button;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setClickable(Z)V

    .line 998
    const v3, 0x7f0e0071

    invoke-virtual {p0, v3}, Lcom/sec/jewishcalendar/JewishCalendarView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->mPrevMonthArrow:Landroid/widget/ImageButton;

    .line 999
    iget-object v3, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->mPrevMonthArrow:Landroid/widget/ImageButton;

    new-instance v4, Lcom/sec/jewishcalendar/JewishCalendarView$7;

    invoke-direct {v4, p0}, Lcom/sec/jewishcalendar/JewishCalendarView$7;-><init>(Lcom/sec/jewishcalendar/JewishCalendarView;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1021
    const v3, 0x7f0e006f

    invoke-virtual {p0, v3}, Lcom/sec/jewishcalendar/JewishCalendarView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->mNextMonthArrow:Landroid/widget/ImageButton;

    .line 1022
    iget-object v3, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->mNextMonthArrow:Landroid/widget/ImageButton;

    new-instance v4, Lcom/sec/jewishcalendar/JewishCalendarView$8;

    invoke-direct {v4, p0}, Lcom/sec/jewishcalendar/JewishCalendarView$8;-><init>(Lcom/sec/jewishcalendar/JewishCalendarView;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1046
    const v3, 0x7f0e0070

    invoke-virtual {p0, v3}, Lcom/sec/jewishcalendar/JewishCalendarView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->mPrevYearArrow:Landroid/widget/ImageButton;

    .line 1047
    iget-object v3, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->mPrevYearArrow:Landroid/widget/ImageButton;

    new-instance v4, Lcom/sec/jewishcalendar/JewishCalendarView$9;

    invoke-direct {v4, p0}, Lcom/sec/jewishcalendar/JewishCalendarView$9;-><init>(Lcom/sec/jewishcalendar/JewishCalendarView;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1074
    const v3, 0x7f0e006e

    invoke-virtual {p0, v3}, Lcom/sec/jewishcalendar/JewishCalendarView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->mNextYearArrow:Landroid/widget/ImageButton;

    .line 1075
    iget-object v3, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->mNextYearArrow:Landroid/widget/ImageButton;

    new-instance v4, Lcom/sec/jewishcalendar/JewishCalendarView$10;

    invoke-direct {v4, p0}, Lcom/sec/jewishcalendar/JewishCalendarView$10;-><init>(Lcom/sec/jewishcalendar/JewishCalendarView;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1104
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v3, 0x2a

    if-lt v2, v3, :cond_1

    .line 1116
    sget-boolean v3, Lcom/sec/jewishcalendar/JewishCalendarView;->isJewishCalendar:Z

    if-eqz v3, :cond_6

    .line 1118
    const v3, 0x7f0e0078

    invoke-virtual {p0, v3}, Lcom/sec/jewishcalendar/JewishCalendarView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget v4, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->mMonthWeekNumColor:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1119
    const v3, 0x7f0e0079

    invoke-virtual {p0, v3}, Lcom/sec/jewishcalendar/JewishCalendarView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget v4, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->mMonthDayNumberColor:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1120
    const/4 v2, 0x0

    :goto_1
    if-lt v2, v8, :cond_2

    .line 1162
    :cond_0
    return-void

    .line 1106
    :cond_1
    const v3, 0x7f0e007b

    add-int/2addr v3, v2

    invoke-virtual {p0, v3}, Lcom/sec/jewishcalendar/JewishCalendarView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 1109
    .local v1, "bTemp":Landroid/widget/Button;
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1110
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1111
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1104
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1122
    .end local v1    # "bTemp":Landroid/widget/Button;
    :cond_2
    const v3, 0x7f0e0079

    sub-int/2addr v3, v2

    invoke-virtual {p0, v3}, Lcom/sec/jewishcalendar/JewishCalendarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1123
    .local v0, "WeekDay":Landroid/widget/TextView;
    iget v3, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->mMonthWeekNumColor:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1124
    invoke-virtual {p0}, Lcom/sec/jewishcalendar/JewishCalendarView;->GetHebrewLocale()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1126
    iget v3, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->mWeekBannerTextSize:I

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1134
    :goto_2
    iget-object v3, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->JC_Week:[Ljava/lang/String;

    add-int/lit8 v4, v2, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1135
    if-ne v2, v6, :cond_3

    iget v3, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->mMonthFridayNumberColor:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1136
    :cond_3
    if-ne v2, v7, :cond_4

    iget v3, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->mMonthSaturdayNumberColor:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1120
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1130
    :cond_5
    iget v3, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->mWeekBannerTextSizeSmall:I

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_2

    .line 1141
    .end local v0    # "WeekDay":Landroid/widget/TextView;
    :cond_6
    invoke-virtual {p0, v9}, Lcom/sec/jewishcalendar/JewishCalendarView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget v4, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->mMonthDayNumberColor:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1142
    const v3, 0x7f0e0074

    invoke-virtual {p0, v3}, Lcom/sec/jewishcalendar/JewishCalendarView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget v4, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->mMonthDayNumberColor:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1143
    const/4 v2, 0x0

    :goto_3
    if-ge v2, v8, :cond_0

    .line 1145
    add-int v3, v9, v2

    invoke-virtual {p0, v3}, Lcom/sec/jewishcalendar/JewishCalendarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1146
    .restart local v0    # "WeekDay":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/sec/jewishcalendar/JewishCalendarView;->GetHebrewLocale()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1148
    iget v3, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->mWeekBannerTextSize:I

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1154
    :goto_4
    iget-object v3, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->JC_Week:[Ljava/lang/String;

    add-int/lit8 v4, v2, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1157
    iget v3, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->mMonthWeekNumColor:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1158
    if-ne v2, v6, :cond_7

    iget v3, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->mMonthFridayNumberColor:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1159
    :cond_7
    if-ne v2, v7, :cond_8

    iget v3, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->mMonthSaturdayNumberColor:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1143
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1152
    :cond_9
    iget v3, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->mWeekBannerTextSizeSmall:I

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_4
.end method

.method public static isJewishCalendar()Z
    .locals 1

    .prologue
    .line 90
    sget-boolean v0, Lcom/sec/jewishcalendar/JewishCalendarView;->isJewishCalendar:Z

    return v0
.end method

.method private setOverviewScreenEntry()V
    .locals 7

    .prologue
    .line 1734
    invoke-static {}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUtilities;->isOSLollipopOrUp()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1735
    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .line 1736
    .local v4, "typedValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Lcom/sec/jewishcalendar/JewishCalendarView;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    .line 1737
    .local v3, "theme":Landroid/content/res/Resources$Theme;
    const v5, 0x1010433

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v4, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1738
    iget v1, v4, Landroid/util/TypedValue;->data:I

    .line 1740
    .local v1, "color":I
    invoke-virtual {p0}, Lcom/sec/jewishcalendar/JewishCalendarView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020004

    invoke-static {v5, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1741
    .local v0, "bm":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {p0}, Lcom/sec/jewishcalendar/JewishCalendarView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0012

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5, v0, v1}, Landroid/app/ActivityManager$TaskDescription;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    .line 1743
    .local v2, "td":Landroid/app/ActivityManager$TaskDescription;
    invoke-virtual {p0, v2}, Lcom/sec/jewishcalendar/JewishCalendarView;->setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V

    .line 1744
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1746
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .end local v1    # "color":I
    .end local v2    # "td":Landroid/app/ActivityManager$TaskDescription;
    .end local v3    # "theme":Landroid/content/res/Resources$Theme;
    .end local v4    # "typedValue":Landroid/util/TypedValue;
    :cond_0
    return-void
.end method


# virtual methods
.method CheckValidDate()V
    .locals 10

    .prologue
    const/16 v9, 0x16e4

    const/16 v5, 0x161d

    const/16 v8, 0x834

    const/16 v7, 0x76c

    const/4 v6, 0x1

    .line 1566
    invoke-virtual {p0}, Lcom/sec/jewishcalendar/JewishCalendarView;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1567
    .local v0, "context":Landroid/content/Context;
    const/4 v1, 0x0

    .line 1569
    .local v1, "duration":I
    sget-boolean v4, Lcom/sec/jewishcalendar/JewishCalendarView;->isJewishCalendar:Z

    if-eqz v4, :cond_2

    .line 1571
    iget-object v4, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->jdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    iget v4, v4, Lcom/sec/jewishcalendar/calculation/HdateClass;->hyear:I

    if-le v4, v9, :cond_1

    .line 1573
    iget-object v4, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->jdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    const/16 v5, 0x1d

    const/16 v6, 0xc

    invoke-static {v4, v5, v6, v9}, Lcom/sec/jewishcalendar/calculation/JewishCal;->SetHdate(Lcom/sec/jewishcalendar/calculation/HdateClass;III)I

    .line 1574
    iget-object v4, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->res:Landroid/content/res/Resources;

    const v5, 0x7f0a001a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1575
    .local v2, "text":Ljava/lang/CharSequence;
    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 1576
    .local v3, "toast":Landroid/widget/Toast;
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 1603
    .end local v2    # "text":Ljava/lang/CharSequence;
    .end local v3    # "toast":Landroid/widget/Toast;
    :cond_0
    :goto_0
    return-void

    .line 1578
    :cond_1
    iget-object v4, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->jdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    iget v4, v4, Lcom/sec/jewishcalendar/calculation/HdateClass;->hyear:I

    if-ge v4, v5, :cond_0

    .line 1580
    iget-object v4, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->jdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    invoke-static {v4, v6, v6, v5}, Lcom/sec/jewishcalendar/calculation/JewishCal;->SetHdate(Lcom/sec/jewishcalendar/calculation/HdateClass;III)I

    .line 1581
    iget-object v4, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->res:Landroid/content/res/Resources;

    const v5, 0x7f0a0019

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1582
    .restart local v2    # "text":Ljava/lang/CharSequence;
    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 1583
    .restart local v3    # "toast":Landroid/widget/Toast;
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1588
    .end local v2    # "text":Ljava/lang/CharSequence;
    .end local v3    # "toast":Landroid/widget/Toast;
    :cond_2
    sget-object v4, Lcom/sec/jewishcalendar/JewishCalendarView;->mViewCalendar:Landroid/text/format/Time;

    iget v4, v4, Landroid/text/format/Time;->year:I

    if-le v4, v8, :cond_3

    .line 1590
    sget-object v4, Lcom/sec/jewishcalendar/JewishCalendarView;->mViewCalendar:Landroid/text/format/Time;

    const/16 v5, 0x1f

    const/16 v6, 0xb

    invoke-virtual {v4, v5, v6, v8}, Landroid/text/format/Time;->set(III)V

    .line 1591
    iget-object v4, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->res:Landroid/content/res/Resources;

    const v5, 0x7f0a001c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1592
    .restart local v2    # "text":Ljava/lang/CharSequence;
    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 1593
    .restart local v3    # "toast":Landroid/widget/Toast;
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1595
    .end local v2    # "text":Ljava/lang/CharSequence;
    .end local v3    # "toast":Landroid/widget/Toast;
    :cond_3
    sget-object v4, Lcom/sec/jewishcalendar/JewishCalendarView;->mViewCalendar:Landroid/text/format/Time;

    iget v4, v4, Landroid/text/format/Time;->year:I

    if-ge v4, v7, :cond_0

    .line 1597
    sget-object v4, Lcom/sec/jewishcalendar/JewishCalendarView;->mViewCalendar:Landroid/text/format/Time;

    const/4 v5, 0x0

    invoke-virtual {v4, v6, v5, v7}, Landroid/text/format/Time;->set(III)V

    .line 1598
    iget-object v4, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->res:Landroid/content/res/Resources;

    const v5, 0x7f0a001b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1599
    .restart local v2    # "text":Ljava/lang/CharSequence;
    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 1600
    .restart local v3    # "toast":Landroid/widget/Toast;
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method GGoTo(III)V
    .locals 1
    .param p1, "day"    # I
    .param p2, "month"    # I
    .param p3, "year"    # I

    .prologue
    .line 1550
    sget-object v0, Lcom/sec/jewishcalendar/JewishCalendarView;->mViewCalendar:Landroid/text/format/Time;

    invoke-virtual {v0, p1, p2, p3}, Landroid/text/format/Time;->set(III)V

    .line 1551
    invoke-virtual {p0}, Lcom/sec/jewishcalendar/JewishCalendarView;->setCursor()V

    .line 1552
    invoke-virtual {p0}, Lcom/sec/jewishcalendar/JewishCalendarView;->drawG()V

    .line 1553
    invoke-direct {p0}, Lcom/sec/jewishcalendar/JewishCalendarView;->initButtons()V

    .line 1554
    return-void
.end method

.method GMoveToNextMonth()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 1536
    sget-object v1, Lcom/sec/jewishcalendar/JewishCalendarView;->mViewCalendar:Landroid/text/format/Time;

    iget v0, v1, Landroid/text/format/Time;->monthDay:I

    .line 1537
    .local v0, "selectedDayInMonth":I
    sget-object v1, Lcom/sec/jewishcalendar/JewishCalendarView;->mViewCalendar:Landroid/text/format/Time;

    iget v2, v1, Landroid/text/format/Time;->month:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Landroid/text/format/Time;->month:I

    .line 1538
    sget-object v1, Lcom/sec/jewishcalendar/JewishCalendarView;->mViewCalendar:Landroid/text/format/Time;

    iget v1, v1, Landroid/text/format/Time;->month:I

    const/16 v2, 0xb

    if-le v1, v2, :cond_0

    .line 1540
    sget-object v1, Lcom/sec/jewishcalendar/JewishCalendarView;->mViewCalendar:Landroid/text/format/Time;

    const/4 v2, 0x0

    iput v2, v1, Landroid/text/format/Time;->month:I

    .line 1541
    sget-object v1, Lcom/sec/jewishcalendar/JewishCalendarView;->mViewCalendar:Landroid/text/format/Time;

    iget v2, v1, Landroid/text/format/Time;->year:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Landroid/text/format/Time;->year:I

    .line 1543
    :cond_0
    sget-object v1, Lcom/sec/jewishcalendar/JewishCalendarView;->mViewCalendar:Landroid/text/format/Time;

    invoke-virtual {v1, v3}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v1

    if-le v0, v1, :cond_1

    .line 1544
    sget-object v1, Lcom/sec/jewishcalendar/JewishCalendarView;->mViewCalendar:Landroid/text/format/Time;

    sget-object v2, Lcom/sec/jewishcalendar/JewishCalendarView;->mViewCalendar:Landroid/text/format/Time;

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v2

    iput v2, v1, Landroid/text/format/Time;->monthDay:I

    .line 1546
    :cond_1
    return-void
.end method

.method GMoveToPrevMonth()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 1521
    sget-object v1, Lcom/sec/jewishcalendar/JewishCalendarView;->mViewCalendar:Landroid/text/format/Time;

    iget v0, v1, Landroid/text/format/Time;->monthDay:I

    .line 1522
    .local v0, "selectedDayInMonth":I
    sget-object v1, Lcom/sec/jewishcalendar/JewishCalendarView;->mViewCalendar:Landroid/text/format/Time;

    iget v2, v1, Landroid/text/format/Time;->month:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Landroid/text/format/Time;->month:I

    .line 1523
    sget-object v1, Lcom/sec/jewishcalendar/JewishCalendarView;->mViewCalendar:Landroid/text/format/Time;

    iget v1, v1, Landroid/text/format/Time;->month:I

    if-gez v1, :cond_0

    .line 1525
    sget-object v1, Lcom/sec/jewishcalendar/JewishCalendarView;->mViewCalendar:Landroid/text/format/Time;

    const/16 v2, 0xb

    iput v2, v1, Landroid/text/format/Time;->month:I

    .line 1526
    sget-object v1, Lcom/sec/jewishcalendar/JewishCalendarView;->mViewCalendar:Landroid/text/format/Time;

    iget v2, v1, Landroid/text/format/Time;->year:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Landroid/text/format/Time;->year:I

    .line 1529
    :cond_0
    sget-object v1, Lcom/sec/jewishcalendar/JewishCalendarView;->mViewCalendar:Landroid/text/format/Time;

    invoke-virtual {v1, v3}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v1

    if-le v0, v1, :cond_1

    .line 1530
    sget-object v1, Lcom/sec/jewishcalendar/JewishCalendarView;->mViewCalendar:Landroid/text/format/Time;

    sget-object v2, Lcom/sec/jewishcalendar/JewishCalendarView;->mViewCalendar:Landroid/text/format/Time;

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v2

    iput v2, v1, Landroid/text/format/Time;->monthDay:I

    .line 1532
    :cond_1
    return-void
.end method

.method public GetHebrewLocale()Z
    .locals 2

    .prologue
    .line 1682
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 1683
    .local v0, "currentLang":Ljava/lang/String;
    const-string v1, "he"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "iw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method HGoTo(III)V
    .locals 1
    .param p1, "day"    # I
    .param p2, "month"    # I
    .param p3, "year"    # I

    .prologue
    .line 1558
    iget-object v0, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->jdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    invoke-static {v0, p1, p2, p3}, Lcom/sec/jewishcalendar/calculation/JewishCal;->SetHdate(Lcom/sec/jewishcalendar/calculation/HdateClass;III)I

    .line 1559
    invoke-virtual {p0}, Lcom/sec/jewishcalendar/JewishCalendarView;->setCursor()V

    .line 1560
    invoke-virtual {p0}, Lcom/sec/jewishcalendar/JewishCalendarView;->draw()V

    .line 1561
    invoke-direct {p0}, Lcom/sec/jewishcalendar/JewishCalendarView;->initButtons()V

    .line 1562
    return-void
.end method

.method public InitializeUI()V
    .locals 7

    .prologue
    const v6, 0x7f090043

    .line 294
    invoke-virtual {p0}, Lcom/sec/jewishcalendar/JewishCalendarView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->res:Landroid/content/res/Resources;

    .line 296
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/jewishcalendar/JewishCalendarView;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 297
    .local v0, "preferences":Landroid/content/SharedPreferences;
    const-string v1, "isJewishCalendar"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/sec/jewishcalendar/JewishCalendarView;->isJewishCalendar:Z

    .line 299
    iget-object v1, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->res:Landroid/content/res/Resources;

    const v2, 0x7f060003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->JC_LETTERS:[Ljava/lang/String;

    .line 300
    iget-object v1, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->res:Landroid/content/res/Resources;

    const v2, 0x7f060004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->JC_MONTHS:[Ljava/lang/String;

    .line 301
    iget-object v1, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->res:Landroid/content/res/Resources;

    const v2, 0x7f060005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->JC_GMONTHS:[Ljava/lang/String;

    .line 302
    iget-object v1, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->res:Landroid/content/res/Resources;

    const v2, 0x7f060002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->JC_DAYS:[Ljava/lang/String;

    .line 303
    iget-object v1, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->res:Landroid/content/res/Resources;

    const v2, 0x7f060006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->JC_HOLIDAYS:[Ljava/lang/String;

    .line 304
    iget-object v1, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->res:Landroid/content/res/Resources;

    const/high16 v2, 0x7f060000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->JC_Week:[Ljava/lang/String;

    .line 310
    iget-object v1, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->res:Landroid/content/res/Resources;

    const v2, 0x7f07002d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->mMonthWeekNumColor:I

    .line 311
    iget-object v1, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->res:Landroid/content/res/Resources;

    const v2, 0x7f070109

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->mMonthOtherMonthDayNumberColor:I

    .line 312
    iget-object v1, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->res:Landroid/content/res/Resources;

    const v2, 0x7f070102

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->mMonthDayNumberColor:I

    .line 314
    iget-object v1, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->res:Landroid/content/res/Resources;

    const v2, 0x7f070029

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->mMonthSaturdayNumberColor:I

    .line 316
    iget-object v1, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->res:Landroid/content/res/Resources;

    const v2, 0x7f07002a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->mMonthFridayNumberColor:I

    .line 319
    iget-object v1, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->res:Landroid/content/res/Resources;

    const v2, 0x7f070041

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->mMonthHoliDayColor:I

    .line 320
    iget-object v1, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->res:Landroid/content/res/Resources;

    const v2, 0x7f070009

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->mMonthheads:I

    .line 321
    iget-object v1, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->res:Landroid/content/res/Resources;

    const v2, 0x7f07000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->mMontAsro:I

    .line 322
    iget-object v1, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->res:Landroid/content/res/Resources;

    const v2, 0x7f070007

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->mMonthFastDayColor:I

    .line 324
    iget-object v1, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->res:Landroid/content/res/Resources;

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->mDayTextSize:I

    .line 325
    iget-object v1, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->res:Landroid/content/res/Resources;

    const v2, 0x7f09003f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->mMounthYearTextSize:I

    .line 326
    iget-object v1, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->res:Landroid/content/res/Resources;

    const v2, 0x7f090040

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->mMounthYearTextSize_Small:I

    .line 329
    iget v1, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->systemFontScale:F

    float-to-double v2, v1

    const-wide v4, 0x3ff4cccccccccccdL    # 1.3

    cmpl-double v1, v2, v4

    if-lez v1, :cond_2

    .line 330
    iget v1, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->mMounthYearTextSize:I

    add-int/lit8 v1, v1, -0x6

    iput v1, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->mMounthYearTextSize:I

    .line 331
    iget v1, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->mMounthYearTextSize_Small:I

    add-int/lit8 v1, v1, -0x6

    iput v1, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->mMounthYearTextSize_Small:I

    .line 344
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->res:Landroid/content/res/Resources;

    const v2, 0x7f090041

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->mWeekBannerTextSize:I

    .line 345
    iget-object v1, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->res:Landroid/content/res/Resources;

    const v2, 0x7f090042

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->mWeekBannerTextSizeSmall:I

    .line 348
    iget-object v1, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->res:Landroid/content/res/Resources;

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->mPrevNextDayTextSize:I

    .line 349
    iget-object v1, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->res:Landroid/content/res/Resources;

    const v2, 0x7f09003d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->infoFieldTextSize:I

    .line 351
    invoke-virtual {p0}, Lcom/sec/jewishcalendar/JewishCalendarView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v2, 0xf1

    if-ge v1, v2, :cond_1

    iget v1, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->systemFontScale:F

    float-to-double v2, v1

    const-wide v4, 0x3ff4a3d70a3d70a4L    # 1.29

    cmpl-double v1, v2, v4

    if-lez v1, :cond_1

    .line 352
    iget v1, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->mDayTextSize:I

    add-int/lit8 v1, v1, -0x5

    iput v1, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->mDayTextSize:I

    .line 353
    iget v1, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->mPrevNextDayTextSize:I

    add-int/lit8 v1, v1, -0x4

    iput v1, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->mPrevNextDayTextSize:I

    .line 354
    iget v1, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->mWeekBannerTextSize:I

    add-int/lit8 v1, v1, -0x4

    iput v1, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->mWeekBannerTextSize:I

    .line 355
    iget v1, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->mWeekBannerTextSizeSmall:I

    add-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->mWeekBannerTextSizeSmall:I

    .line 356
    iget v1, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->infoFieldTextSize:I

    add-int/lit8 v1, v1, -0x5

    iput v1, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->infoFieldTextSize:I

    .line 363
    :cond_1
    invoke-direct {p0}, Lcom/sec/jewishcalendar/JewishCalendarView;->initButtons()V

    .line 365
    sget-boolean v1, Lcom/sec/jewishcalendar/JewishCalendarView;->isJewishCalendar:Z

    if-eqz v1, :cond_4

    .line 367
    new-instance v1, Lcom/sec/jewishcalendar/TwDayOfJewishMonthCursor;

    iget-object v2, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->jdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    iget v2, v2, Lcom/sec/jewishcalendar/calculation/HdateClass;->hyear:I

    iget-object v3, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->jdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    iget v3, v3, Lcom/sec/jewishcalendar/calculation/HdateClass;->hmonth:I

    iget-object v4, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->jdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    iget v4, v4, Lcom/sec/jewishcalendar/calculation/HdateClass;->hday:I

    invoke-direct {v1, v2, v3, v4}, Lcom/sec/jewishcalendar/TwDayOfJewishMonthCursor;-><init>(III)V

    iput-object v1, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->mCursor:Lcom/sec/jewishcalendar/TwDayOfMonthCursorInterface;

    .line 368
    invoke-virtual {p0}, Lcom/sec/jewishcalendar/JewishCalendarView;->draw()V

    .line 376
    :goto_1
    new-instance v1, Lcom/sec/jewishcalendar/JewishCalendarView$3;

    invoke-direct {v1, p0}, Lcom/sec/jewishcalendar/JewishCalendarView$3;-><init>(Lcom/sec/jewishcalendar/JewishCalendarView;)V

    .line 375
    iput-object v1, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    .line 386
    new-instance v1, Lcom/sec/jewishcalendar/JewishCalendarView$4;

    .line 385
    invoke-direct {v1, p0}, Lcom/sec/jewishcalendar/JewishCalendarView$4;-><init>(Lcom/sec/jewishcalendar/JewishCalendarView;)V

    iput-object v1, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->mJewishDateSetListener:Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePickerDialog$OnJewishDateSetListener;

    .line 393
    return-void

    .line 333
    :cond_2
    iget v1, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->systemFontScale:F

    float-to-double v2, v1

    const-wide v4, 0x3ff2147ae147ae14L    # 1.13

    cmpl-double v1, v2, v4

    if-lez v1, :cond_3

    .line 334
    iget v1, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->mMounthYearTextSize:I

    add-int/lit8 v1, v1, -0x4

    iput v1, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->mMounthYearTextSize:I

    .line 335
    iget v1, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->mMounthYearTextSize_Small:I

    add-int/lit8 v1, v1, -0x4

    iput v1, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->mMounthYearTextSize_Small:I

    goto/16 :goto_0

    .line 337
    :cond_3
    iget v1, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->systemFontScale:F

    float-to-double v2, v1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v1, v2, v4

    if-lez v1, :cond_0

    .line 338
    iget v1, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->mMounthYearTextSize:I

    add-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->mMounthYearTextSize:I

    .line 339
    iget v1, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->mMounthYearTextSize_Small:I

    add-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->mMounthYearTextSize_Small:I

    goto/16 :goto_0

    .line 372
    :cond_4
    new-instance v1, Lcom/sec/jewishcalendar/TwDayOfMonthCursor;

    sget-object v2, Lcom/sec/jewishcalendar/JewishCalendarView;->mViewCalendar:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->year:I

    sget-object v3, Lcom/sec/jewishcalendar/JewishCalendarView;->mViewCalendar:Landroid/text/format/Time;

    iget v3, v3, Landroid/text/format/Time;->month:I

    sget-object v4, Lcom/sec/jewishcalendar/JewishCalendarView;->mViewCalendar:Landroid/text/format/Time;

    iget v4, v4, Landroid/text/format/Time;->monthDay:I

    invoke-direct {v1, v2, v3, v4}, Lcom/sec/jewishcalendar/TwDayOfMonthCursor;-><init>(III)V

    iput-object v1, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->mCursor:Lcom/sec/jewishcalendar/TwDayOfMonthCursorInterface;

    .line 373
    invoke-virtual {p0}, Lcom/sec/jewishcalendar/JewishCalendarView;->drawG()V

    goto :goto_1
.end method

.method public draw()V
    .locals 23

    .prologue
    .line 623
    new-instance v13, Lcom/sec/jewishcalendar/events/MonthEvents;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/jewishcalendar/JewishCalendarView;->jdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sec/jewishcalendar/calculation/HdateClass;->gyear:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/jewishcalendar/JewishCalendarView;->jdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/sec/jewishcalendar/calculation/HdateClass;->gmonth:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v13, v0, v1}, Lcom/sec/jewishcalendar/events/MonthEvents;-><init>(II)V

    .line 624
    .local v13, "mEvents":Lcom/sec/jewishcalendar/events/MonthEvents;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/jewishcalendar/JewishCalendarView;->jdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v3, v0, Lcom/sec/jewishcalendar/calculation/HdateClass;->gmonth:I

    .line 625
    .local v3, "GregMonthEvent":I
    const/4 v15, 0x0

    .line 626
    .local v15, "row":I
    const/4 v5, 0x0

    .line 627
    .local v5, "col":I
    const/4 v8, 0x0

    .line 628
    .local v8, "holiday":I
    const/4 v7, 0x0

    .line 629
    .local v7, "dayOfBox":I
    const/16 v17, 0x0

    .line 630
    .local v17, "withinCurrentMonth":Z
    const/4 v11, 0x0

    .line 631
    .local v11, "isToday":Z
    const/4 v10, 0x0

    .line 632
    .local v10, "isSelected":Z
    const/4 v6, 0x0

    .line 633
    .local v6, "dayContainEvents":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/jewishcalendar/JewishCalendarView;->mMonthTitle:Landroid/widget/Button;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/jewishcalendar/JewishCalendarView;->JC_MONTHS:[Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/jewishcalendar/JewishCalendarView;->jdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hmonth:I

    move/from16 v20, v0

    aget-object v19, v19, v20

    invoke-virtual/range {v18 .. v19}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 634
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/jewishcalendar/JewishCalendarView;->jdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hyear:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/jewishcalendar/JewishCalendarView;->JC_LETTERS:[Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-static/range {v18 .. v19}, Lcom/sec/jewishcalendar/calculation/JewishCal;->GetJewishYearString(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 635
    .local v16, "sYear":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/jewishcalendar/JewishCalendarView;->mMonthTitle:Landroid/widget/Button;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/jewishcalendar/JewishCalendarView;->mMounthYearTextSize:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/Button;->setTextSize(F)V

    .line 636
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/jewishcalendar/JewishCalendarView;->mYearTitle:Landroid/widget/Button;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/jewishcalendar/JewishCalendarView;->mMounthYearTextSize:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/Button;->setTextSize(F)V

    .line 637
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/jewishcalendar/JewishCalendarView;->mMonthTitle:Landroid/widget/Button;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x1

    invoke-virtual/range {v18 .. v20}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 638
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/jewishcalendar/JewishCalendarView;->mYearTitle:Landroid/widget/Button;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x1

    invoke-virtual/range {v18 .. v20}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 639
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/jewishcalendar/JewishCalendarView;->mYearTitle:Landroid/widget/Button;

    move-object/from16 v18, v0

    new-instance v19, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v20, 0x0

    const/16 v21, -0x1

    const/high16 v22, 0x3f800000    # 1.0f

    invoke-direct/range {v19 .. v22}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual/range {v18 .. v19}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 640
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/jewishcalendar/JewishCalendarView;->mMonthTitle:Landroid/widget/Button;

    move-object/from16 v18, v0

    new-instance v19, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v20, 0x0

    const/16 v21, -0x1

    const/high16 v22, 0x3f800000    # 1.0f

    invoke-direct/range {v19 .. v22}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual/range {v18 .. v19}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 642
    invoke-virtual/range {p0 .. p0}, Lcom/sec/jewishcalendar/JewishCalendarView;->GetHebrewLocale()Z

    move-result v18

    if-eqz v18, :cond_2

    .line 644
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/jewishcalendar/JewishCalendarView;->mYearTitle:Landroid/widget/Button;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 645
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/jewishcalendar/JewishCalendarView;->mMonthTitle:Landroid/widget/Button;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/jewishcalendar/JewishCalendarView;->mMounthYearTextSize:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/Button;->setTextSize(F)V

    .line 646
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/jewishcalendar/JewishCalendarView;->mYearTitle:Landroid/widget/Button;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/jewishcalendar/JewishCalendarView;->mMounthYearTextSize:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/Button;->setTextSize(F)V

    .line 657
    :cond_0
    :goto_0
    const/4 v9, 0x1

    .local v9, "i":I
    :goto_1
    const/16 v18, 0x2b

    move/from16 v0, v18

    if-lt v9, v0, :cond_3

    .line 752
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/jewishcalendar/JewishCalendarView;->jdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/jewishcalendar/JewishCalendarView;->mDiaspora:I

    move/from16 v19, v0

    invoke-static/range {v18 .. v19}, Lcom/sec/jewishcalendar/calculation/JewishCal;->GetHolyday(Lcom/sec/jewishcalendar/calculation/HdateClass;I)I

    move-result v8

    .line 753
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Lcom/sec/jewishcalendar/JewishCalendarView;->getDaf()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, "\n"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 754
    .local v14, "mInfoString":Ljava/lang/String;
    if-lez v8, :cond_13

    .line 756
    invoke-virtual/range {p0 .. p0}, Lcom/sec/jewishcalendar/JewishCalendarView;->GetHebrewLocale()Z

    move-result v18

    if-eqz v18, :cond_12

    .line 758
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/jewishcalendar/JewishCalendarView;->JC_HOLIDAYS:[Ljava/lang/String;

    move-object/from16 v19, v0

    aget-object v19, v19, v8

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/jewishcalendar/JewishCalendarView;->JC_DAYS:[Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/jewishcalendar/JewishCalendarView;->jdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hday:I

    move/from16 v20, v0

    aget-object v19, v19, v20

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/jewishcalendar/JewishCalendarView;->JC_MONTHS:[Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/jewishcalendar/JewishCalendarView;->jdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hmonth:I

    move/from16 v20, v0

    aget-object v19, v19, v20

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 759
    invoke-virtual/range {p0 .. p0}, Lcom/sec/jewishcalendar/JewishCalendarView;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    .line 760
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, "\n"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 763
    :cond_1
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/jewishcalendar/JewishCalendarView;->jdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/sec/jewishcalendar/calculation/HdateClass;->gday:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/jewishcalendar/JewishCalendarView;->jdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/sec/jewishcalendar/calculation/HdateClass;->gmonth:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/jewishcalendar/JewishCalendarView;->jdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/sec/jewishcalendar/calculation/HdateClass;->gyear:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 764
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/jewishcalendar/JewishCalendarView;->mInfo:Landroid/widget/Button;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 788
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/jewishcalendar/JewishCalendarView;->mInfo:Landroid/widget/Button;

    move-object/from16 v19, v0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/jewishcalendar/JewishCalendarView;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v18, v0

    const/16 v20, 0x1

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_16

    .line 789
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/jewishcalendar/JewishCalendarView;->infoFieldTextSize:I

    move/from16 v18, v0

    :goto_3
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    .line 788
    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    .line 790
    return-void

    .line 650
    .end local v9    # "i":I
    .end local v14    # "mInfoString":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/jewishcalendar/JewishCalendarView;->mYearTitle:Landroid/widget/Button;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/jewishcalendar/JewishCalendarView;->jdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hyear:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 652
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/jewishcalendar/JewishCalendarView;->jdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hmonth:I

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/jewishcalendar/JewishCalendarView;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_0

    .line 653
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/jewishcalendar/JewishCalendarView;->mMonthTitle:Landroid/widget/Button;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/jewishcalendar/JewishCalendarView;->mMounthYearTextSize_Small:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/Button;->setTextSize(F)V

    goto/16 :goto_0

    .line 659
    .restart local v9    # "i":I
    :cond_3
    const v18, 0x7f0e007b

    add-int v18, v18, v9

    add-int/lit8 v18, v18, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sec/jewishcalendar/JewishCalendarView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 661
    .local v4, "bTemp":Landroid/widget/Button;
    const v18, 0x7f020039

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 662
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/sec/jewishcalendar/JewishCalendarView;->getRow(I)I

    move-result v15

    .line 663
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/sec/jewishcalendar/JewishCalendarView;->getCol(I)I

    move-result v5

    .line 664
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/jewishcalendar/JewishCalendarView;->mCursor:Lcom/sec/jewishcalendar/TwDayOfMonthCursorInterface;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v15, v5}, Lcom/sec/jewishcalendar/TwDayOfMonthCursorInterface;->isInCurrentMonth(II)Z

    move-result v17

    .line 665
    const/4 v11, 0x0

    .line 666
    const/4 v10, 0x0

    .line 667
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/jewishcalendar/JewishCalendarView;->mCursor:Lcom/sec/jewishcalendar/TwDayOfMonthCursorInterface;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v15, v5}, Lcom/sec/jewishcalendar/TwDayOfMonthCursorInterface;->getDayAtPlace(II)I

    move-result v7

    .line 668
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/jewishcalendar/JewishCalendarView;->tmpJdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/jewishcalendar/JewishCalendarView;->jdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hmonth:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/jewishcalendar/JewishCalendarView;->jdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hyear:I

    move/from16 v20, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v7, v1, v2}, Lcom/sec/jewishcalendar/calculation/JewishCal;->SetHdate(Lcom/sec/jewishcalendar/calculation/HdateClass;III)I

    .line 669
    const/16 v18, 0x23

    move/from16 v0, v18

    if-le v9, v0, :cond_4

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 670
    :cond_4
    if-eqz v17, :cond_f

    .line 674
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/jewishcalendar/JewishCalendarView;->tmpJdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sec/jewishcalendar/calculation/HdateClass;->gmonth:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-eq v0, v3, :cond_5

    .line 676
    new-instance v13, Lcom/sec/jewishcalendar/events/MonthEvents;

    .end local v13    # "mEvents":Lcom/sec/jewishcalendar/events/MonthEvents;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/jewishcalendar/JewishCalendarView;->tmpJdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sec/jewishcalendar/calculation/HdateClass;->gyear:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/jewishcalendar/JewishCalendarView;->tmpJdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/sec/jewishcalendar/calculation/HdateClass;->gmonth:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v13, v0, v1}, Lcom/sec/jewishcalendar/events/MonthEvents;-><init>(II)V

    .line 677
    .restart local v13    # "mEvents":Lcom/sec/jewishcalendar/events/MonthEvents;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/jewishcalendar/JewishCalendarView;->tmpJdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v3, v0, Lcom/sec/jewishcalendar/calculation/HdateClass;->gmonth:I

    .line 679
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/jewishcalendar/JewishCalendarView;->tmpJdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sec/jewishcalendar/calculation/HdateClass;->gday:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Lcom/sec/jewishcalendar/events/MonthEvents;->doesDayContainEvents(I)Z

    move-result v6

    .line 680
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/jewishcalendar/JewishCalendarView;->mDayTextSize:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setTextSize(F)V

    .line 681
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/jewishcalendar/JewishCalendarView;->tmpJdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Lcom/sec/jewishcalendar/calculation/JewishCal;->GetHolyday(Lcom/sec/jewishcalendar/calculation/HdateClass;I)I

    move-result v8

    .line 682
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v5}, Lcom/sec/jewishcalendar/JewishCalendarView;->getDayColor(II)I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 684
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/jewishcalendar/JewishCalendarView;->jtoday:Lcom/sec/jewishcalendar/calculation/HdateClass;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hday:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ne v7, v0, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/jewishcalendar/JewishCalendarView;->jdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hmonth:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/jewishcalendar/JewishCalendarView;->jtoday:Lcom/sec/jewishcalendar/calculation/HdateClass;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hmonth:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_6

    .line 685
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/jewishcalendar/JewishCalendarView;->jdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hyear:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/jewishcalendar/JewishCalendarView;->jtoday:Lcom/sec/jewishcalendar/calculation/HdateClass;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hyear:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_6

    .line 687
    const/4 v11, 0x1

    .line 689
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/jewishcalendar/JewishCalendarView;->jdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hday:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ne v7, v0, :cond_7

    .line 691
    const/4 v10, 0x1

    .line 693
    :cond_7
    if-eqz v6, :cond_c

    .line 695
    if-eqz v11, :cond_9

    if-eqz v10, :cond_9

    .line 697
    const v18, 0x7f020058

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 749
    :cond_8
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/jewishcalendar/JewishCalendarView;->JC_DAYS:[Ljava/lang/String;

    move-object/from16 v18, v0

    aget-object v18, v18, v7

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 657
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 699
    :cond_9
    if-eqz v11, :cond_a

    .line 701
    const v18, 0x7f02004e

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_4

    .line 703
    :cond_a
    if-eqz v10, :cond_b

    .line 705
    const v18, 0x7f02003c

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_4

    .line 709
    :cond_b
    const v18, 0x7f02003a

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_4

    .line 715
    :cond_c
    if-eqz v11, :cond_d

    if-eqz v10, :cond_d

    .line 717
    const v18, 0x7f020057

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_4

    .line 719
    :cond_d
    if-eqz v11, :cond_e

    .line 721
    const v18, 0x7f02004d

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_4

    .line 723
    :cond_e
    if-eqz v10, :cond_8

    .line 725
    const v18, 0x7f02003b

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_4

    .line 731
    :cond_f
    const/16 v18, 0x2a

    move/from16 v0, v18

    if-ne v9, v0, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/jewishcalendar/JewishCalendarView;->mCursor:Lcom/sec/jewishcalendar/TwDayOfMonthCursorInterface;

    move-object/from16 v18, v0

    const/16 v19, 0x4

    const/16 v20, 0x7

    invoke-interface/range {v18 .. v20}, Lcom/sec/jewishcalendar/TwDayOfMonthCursorInterface;->isInCurrentMonth(II)Z

    move-result v18

    if-nez v18, :cond_11

    .line 735
    const/16 v12, 0x2a

    .local v12, "j":I
    :goto_5
    const/16 v18, 0x23

    move/from16 v0, v18

    if-gt v12, v0, :cond_10

    .line 740
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/jewishcalendar/JewishCalendarView;->mInfo:Landroid/widget/Button;

    move-object/from16 v18, v0

    const/16 v19, 0x190

    invoke-virtual/range {v18 .. v19}, Landroid/widget/Button;->setHeight(I)V

    .line 741
    const v18, 0x7f0e007b

    add-int v18, v18, v9

    add-int/lit8 v18, v18, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sec/jewishcalendar/JewishCalendarView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .end local v4    # "bTemp":Landroid/widget/Button;
    check-cast v4, Landroid/widget/Button;

    .line 742
    .restart local v4    # "bTemp":Landroid/widget/Button;
    goto/16 :goto_4

    .line 737
    :cond_10
    const v18, 0x7f0e007b

    add-int v18, v18, v12

    add-int/lit8 v18, v18, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sec/jewishcalendar/JewishCalendarView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .end local v4    # "bTemp":Landroid/widget/Button;
    check-cast v4, Landroid/widget/Button;

    .line 738
    .restart local v4    # "bTemp":Landroid/widget/Button;
    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 735
    add-int/lit8 v12, v12, -0x1

    goto :goto_5

    .line 745
    .end local v12    # "j":I
    :cond_11
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/jewishcalendar/JewishCalendarView;->mMonthOtherMonthDayNumberColor:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 746
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/jewishcalendar/JewishCalendarView;->mPrevNextDayTextSize:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setTextSize(F)V

    goto/16 :goto_4

    .line 768
    .end local v4    # "bTemp":Landroid/widget/Button;
    .restart local v14    # "mInfoString":Ljava/lang/String;
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/jewishcalendar/JewishCalendarView;->mInfo:Landroid/widget/Button;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/jewishcalendar/JewishCalendarView;->JC_HOLIDAYS:[Ljava/lang/String;

    move-object/from16 v20, v0

    aget-object v20, v20, v8

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/jewishcalendar/JewishCalendarView;->jdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hday:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/jewishcalendar/JewishCalendarView;->JC_MONTHS:[Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/jewishcalendar/JewishCalendarView;->jdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hmonth:I

    move/from16 v21, v0

    aget-object v20, v20, v21

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/jewishcalendar/JewishCalendarView;->jdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hyear:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/jewishcalendar/JewishCalendarView;->jdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sec/jewishcalendar/calculation/HdateClass;->gday:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "/"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/jewishcalendar/JewishCalendarView;->jdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sec/jewishcalendar/calculation/HdateClass;->gmonth:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "/"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/jewishcalendar/JewishCalendarView;->jdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sec/jewishcalendar/calculation/HdateClass;->gyear:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 773
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/sec/jewishcalendar/JewishCalendarView;->GetHebrewLocale()Z

    move-result v18

    if-eqz v18, :cond_15

    .line 775
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/jewishcalendar/JewishCalendarView;->JC_DAYS:[Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/jewishcalendar/JewishCalendarView;->jdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hday:I

    move/from16 v20, v0

    aget-object v19, v19, v20

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/jewishcalendar/JewishCalendarView;->JC_MONTHS:[Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/jewishcalendar/JewishCalendarView;->jdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hmonth:I

    move/from16 v20, v0

    aget-object v19, v19, v20

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 776
    invoke-virtual/range {p0 .. p0}, Lcom/sec/jewishcalendar/JewishCalendarView;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_14

    .line 777
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, "\n"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 779
    :cond_14
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/jewishcalendar/JewishCalendarView;->jdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/sec/jewishcalendar/calculation/HdateClass;->gday:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/jewishcalendar/JewishCalendarView;->jdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/sec/jewishcalendar/calculation/HdateClass;->gmonth:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/jewishcalendar/JewishCalendarView;->jdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/sec/jewishcalendar/calculation/HdateClass;->gyear:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 780
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/jewishcalendar/JewishCalendarView;->mInfo:Landroid/widget/Button;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 784
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/jewishcalendar/JewishCalendarView;->mInfo:Landroid/widget/Button;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/jewishcalendar/JewishCalendarView;->jdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hday:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/jewishcalendar/JewishCalendarView;->JC_MONTHS:[Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/jewishcalendar/JewishCalendarView;->jdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hmonth:I

    move/from16 v21, v0

    aget-object v20, v20, v21

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/jewishcalendar/JewishCalendarView;->jdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hyear:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/jewishcalendar/JewishCalendarView;->jdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sec/jewishcalendar/calculation/HdateClass;->gday:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "/"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/jewishcalendar/JewishCalendarView;->jdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sec/jewishcalendar/calculation/HdateClass;->gmonth:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "/"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/jewishcalendar/JewishCalendarView;->jdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sec/jewishcalendar/calculation/HdateClass;->gyear:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 789
    :cond_16
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/jewishcalendar/JewishCalendarView;->infoFieldTextSize:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x2

    goto/16 :goto_3
.end method

.method public drawG()V
    .locals 23

    .prologue
    .line 809
    const/4 v15, 0x0

    .line 810
    .local v15, "row":I
    const/4 v4, 0x0

    .line 811
    .local v4, "col":I
    const/4 v8, 0x0

    .line 812
    .local v8, "holiday":I
    const/4 v6, 0x0

    .line 813
    .local v6, "dayOfBox":I
    const/16 v17, 0x0

    .line 814
    .local v17, "withinCurrentMonth":Z
    const/4 v11, 0x0

    .line 815
    .local v11, "isToday":Z
    const/4 v10, 0x0

    .line 816
    .local v10, "isSelected":Z
    const/4 v5, 0x0

    .line 817
    .local v5, "dayContainEvents":Z
    new-instance v13, Lcom/sec/jewishcalendar/events/MonthEvents;

    sget-object v18, Lcom/sec/jewishcalendar/JewishCalendarView;->mViewCalendar:Landroid/text/format/Time;

    move-object/from16 v0, v18

    iget v0, v0, Landroid/text/format/Time;->year:I

    move/from16 v18, v0

    sget-object v19, Lcom/sec/jewishcalendar/JewishCalendarView;->mViewCalendar:Landroid/text/format/Time;

    move-object/from16 v0, v19

    iget v0, v0, Landroid/text/format/Time;->month:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v13, v0, v1}, Lcom/sec/jewishcalendar/events/MonthEvents;-><init>(II)V

    .line 820
    .local v13, "mEvents":Lcom/sec/jewishcalendar/events/MonthEvents;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/jewishcalendar/JewishCalendarView;->jdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hyear:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/jewishcalendar/JewishCalendarView;->JC_LETTERS:[Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-static/range {v18 .. v19}, Lcom/sec/jewishcalendar/calculation/JewishCal;->GetJewishYearString(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 821
    .local v16, "sYear":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/jewishcalendar/JewishCalendarView;->mMonthTitle:Landroid/widget/Button;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/jewishcalendar/JewishCalendarView;->mMounthYearTextSize:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/Button;->setTextSize(F)V

    .line 822
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/jewishcalendar/JewishCalendarView;->mYearTitle:Landroid/widget/Button;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/jewishcalendar/JewishCalendarView;->mMounthYearTextSize:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/Button;->setTextSize(F)V

    .line 823
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/jewishcalendar/JewishCalendarView;->mYearTitle:Landroid/widget/Button;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/jewishcalendar/JewishCalendarView;->JC_GMONTHS:[Ljava/lang/String;

    move-object/from16 v19, v0

    sget-object v20, Lcom/sec/jewishcalendar/JewishCalendarView;->mViewCalendar:Landroid/text/format/Time;

    move-object/from16 v0, v20

    iget v0, v0, Landroid/text/format/Time;->month:I

    move/from16 v20, v0

    aget-object v19, v19, v20

    invoke-virtual/range {v18 .. v19}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 824
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/jewishcalendar/JewishCalendarView;->mMonthTitle:Landroid/widget/Button;

    move-object/from16 v18, v0

    sget-object v19, Lcom/sec/jewishcalendar/JewishCalendarView;->mViewCalendar:Landroid/text/format/Time;

    move-object/from16 v0, v19

    iget v0, v0, Landroid/text/format/Time;->year:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 825
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/jewishcalendar/JewishCalendarView;->mMonthTitle:Landroid/widget/Button;

    move-object/from16 v18, v0

    new-instance v19, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v20, 0x0

    const/16 v21, -0x1

    const v22, 0x3f666666    # 0.9f

    invoke-direct/range {v19 .. v22}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual/range {v18 .. v19}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 826
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/jewishcalendar/JewishCalendarView;->mYearTitle:Landroid/widget/Button;

    move-object/from16 v18, v0

    new-instance v19, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v20, 0x0

    const/16 v21, -0x1

    const v22, 0x3f8ccccd    # 1.1f

    invoke-direct/range {v19 .. v22}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual/range {v18 .. v19}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 828
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/jewishcalendar/JewishCalendarView;->mMonthTitle:Landroid/widget/Button;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x1

    invoke-virtual/range {v18 .. v20}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 829
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/jewishcalendar/JewishCalendarView;->mYearTitle:Landroid/widget/Button;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x1

    invoke-virtual/range {v18 .. v20}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 831
    invoke-virtual/range {p0 .. p0}, Lcom/sec/jewishcalendar/JewishCalendarView;->GetHebrewLocale()Z

    move-result v18

    if-nez v18, :cond_4

    .line 833
    sget-object v18, Lcom/sec/jewishcalendar/JewishCalendarView;->mViewCalendar:Landroid/text/format/Time;

    move-object/from16 v0, v18

    iget v0, v0, Landroid/text/format/Time;->month:I

    move/from16 v18, v0

    const/16 v19, 0x9

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_0

    sget-object v18, Lcom/sec/jewishcalendar/JewishCalendarView;->mViewCalendar:Landroid/text/format/Time;

    move-object/from16 v0, v18

    iget v0, v0, Landroid/text/format/Time;->month:I

    move/from16 v18, v0

    const/16 v19, 0xb

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_0

    sget-object v18, Lcom/sec/jewishcalendar/JewishCalendarView;->mViewCalendar:Landroid/text/format/Time;

    move-object/from16 v0, v18

    iget v0, v0, Landroid/text/format/Time;->month:I

    move/from16 v18, v0

    const/16 v19, 0xa

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_0

    sget-object v18, Lcom/sec/jewishcalendar/JewishCalendarView;->mViewCalendar:Landroid/text/format/Time;

    move-object/from16 v0, v18

    iget v0, v0, Landroid/text/format/Time;->month:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_0

    .line 834
    sget-object v18, Lcom/sec/jewishcalendar/JewishCalendarView;->mViewCalendar:Landroid/text/format/Time;

    move-object/from16 v0, v18

    iget v0, v0, Landroid/text/format/Time;->month:I

    move/from16 v18, v0

    const/16 v19, 0x8

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    .line 835
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/sec/jewishcalendar/JewishCalendarView;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_1

    .line 837
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/jewishcalendar/JewishCalendarView;->mYearTitle:Landroid/widget/Button;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/jewishcalendar/JewishCalendarView;->mMounthYearTextSize_Small:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/Button;->setTextSize(F)V

    .line 846
    :cond_1
    :goto_0
    const/4 v9, 0x1

    .local v9, "i":I
    :goto_1
    const/16 v18, 0x2b

    move/from16 v0, v18

    if-lt v9, v0, :cond_5

    .line 941
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/jewishcalendar/JewishCalendarView;->jdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/jewishcalendar/JewishCalendarView;->mDiaspora:I

    move/from16 v19, v0

    invoke-static/range {v18 .. v19}, Lcom/sec/jewishcalendar/calculation/JewishCal;->GetHolyday(Lcom/sec/jewishcalendar/calculation/HdateClass;I)I

    move-result v8

    .line 942
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Lcom/sec/jewishcalendar/JewishCalendarView;->getDaf()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, "\n"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 944
    .local v14, "mInfoString":Ljava/lang/String;
    if-lez v8, :cond_13

    .line 946
    invoke-virtual/range {p0 .. p0}, Lcom/sec/jewishcalendar/JewishCalendarView;->GetHebrewLocale()Z

    move-result v18

    if-eqz v18, :cond_12

    .line 948
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/jewishcalendar/JewishCalendarView;->JC_HOLIDAYS:[Ljava/lang/String;

    move-object/from16 v19, v0

    aget-object v19, v19, v8

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/jewishcalendar/JewishCalendarView;->JC_DAYS:[Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/jewishcalendar/JewishCalendarView;->jdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hday:I

    move/from16 v20, v0

    aget-object v19, v19, v20

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/jewishcalendar/JewishCalendarView;->JC_MONTHS:[Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/jewishcalendar/JewishCalendarView;->jdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hmonth:I

    move/from16 v20, v0

    aget-object v19, v19, v20

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 949
    invoke-virtual/range {p0 .. p0}, Lcom/sec/jewishcalendar/JewishCalendarView;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_3

    .line 950
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, "\n"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 952
    :cond_3
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/jewishcalendar/JewishCalendarView;->jdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/sec/jewishcalendar/calculation/HdateClass;->gday:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/jewishcalendar/JewishCalendarView;->jdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/sec/jewishcalendar/calculation/HdateClass;->gmonth:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/jewishcalendar/JewishCalendarView;->jdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/sec/jewishcalendar/calculation/HdateClass;->gyear:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 953
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/jewishcalendar/JewishCalendarView;->mInfo:Landroid/widget/Button;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 976
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/jewishcalendar/JewishCalendarView;->mInfo:Landroid/widget/Button;

    move-object/from16 v19, v0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/jewishcalendar/JewishCalendarView;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v18, v0

    const/16 v20, 0x1

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_16

    .line 977
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/jewishcalendar/JewishCalendarView;->infoFieldTextSize:I

    move/from16 v18, v0

    :goto_3
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    .line 976
    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    .line 978
    return-void

    .line 842
    .end local v9    # "i":I
    .end local v14    # "mInfoString":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/jewishcalendar/JewishCalendarView;->mMonthTitle:Landroid/widget/Button;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/jewishcalendar/JewishCalendarView;->mMounthYearTextSize:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/Button;->setTextSize(F)V

    .line 843
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/jewishcalendar/JewishCalendarView;->mYearTitle:Landroid/widget/Button;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/jewishcalendar/JewishCalendarView;->mMounthYearTextSize:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/Button;->setTextSize(F)V

    goto/16 :goto_0

    .line 848
    .restart local v9    # "i":I
    :cond_5
    const v18, 0x7f0e007b

    add-int v18, v18, v9

    add-int/lit8 v18, v18, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sec/jewishcalendar/JewishCalendarView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 849
    .local v3, "bTemp":Landroid/widget/Button;
    const v18, 0x7f020039

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 850
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/sec/jewishcalendar/JewishCalendarView;->getRow(I)I

    move-result v15

    .line 851
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/sec/jewishcalendar/JewishCalendarView;->getCol(I)I

    move-result v4

    .line 852
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/jewishcalendar/JewishCalendarView;->mCursor:Lcom/sec/jewishcalendar/TwDayOfMonthCursorInterface;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v15, v4}, Lcom/sec/jewishcalendar/TwDayOfMonthCursorInterface;->isInCurrentMonth(II)Z

    move-result v17

    .line 853
    const/4 v11, 0x0

    .line 854
    const/4 v10, 0x0

    .line 855
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/jewishcalendar/JewishCalendarView;->mCursor:Lcom/sec/jewishcalendar/TwDayOfMonthCursorInterface;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v15, v4}, Lcom/sec/jewishcalendar/TwDayOfMonthCursorInterface;->getDayAtPlace(II)I

    move-result v6

    .line 856
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/jewishcalendar/JewishCalendarView;->tmpJdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    move-object/from16 v18, v0

    sget-object v19, Lcom/sec/jewishcalendar/JewishCalendarView;->mViewCalendar:Landroid/text/format/Time;

    move-object/from16 v0, v19

    iget v0, v0, Landroid/text/format/Time;->month:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, 0x1

    sget-object v20, Lcom/sec/jewishcalendar/JewishCalendarView;->mViewCalendar:Landroid/text/format/Time;

    move-object/from16 v0, v20

    iget v0, v0, Landroid/text/format/Time;->year:I

    move/from16 v20, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v6, v1, v2}, Lcom/sec/jewishcalendar/calculation/JewishCal;->SetGdate(Lcom/sec/jewishcalendar/calculation/HdateClass;III)I

    .line 857
    const/16 v18, 0x23

    move/from16 v0, v18

    if-le v9, v0, :cond_6

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 858
    :cond_6
    if-eqz v17, :cond_10

    .line 860
    invoke-virtual {v13, v6}, Lcom/sec/jewishcalendar/events/MonthEvents;->doesDayContainEvents(I)Z

    move-result v5

    .line 861
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/jewishcalendar/JewishCalendarView;->mDayTextSize:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setTextSize(F)V

    .line 862
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/jewishcalendar/JewishCalendarView;->tmpJdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Lcom/sec/jewishcalendar/calculation/JewishCal;->GetHolyday(Lcom/sec/jewishcalendar/calculation/HdateClass;I)I

    move-result v8

    .line 863
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v4}, Lcom/sec/jewishcalendar/JewishCalendarView;->getDayColor(II)I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 866
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/jewishcalendar/JewishCalendarView;->mSavedTime:Landroid/text/format/Time;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ne v6, v0, :cond_7

    sget-object v18, Lcom/sec/jewishcalendar/JewishCalendarView;->mViewCalendar:Landroid/text/format/Time;

    move-object/from16 v0, v18

    iget v0, v0, Landroid/text/format/Time;->month:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/jewishcalendar/JewishCalendarView;->mSavedTime:Landroid/text/format/Time;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/text/format/Time;->month:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_7

    .line 867
    sget-object v18, Lcom/sec/jewishcalendar/JewishCalendarView;->mViewCalendar:Landroid/text/format/Time;

    move-object/from16 v0, v18

    iget v0, v0, Landroid/text/format/Time;->year:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/jewishcalendar/JewishCalendarView;->mSavedTime:Landroid/text/format/Time;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/text/format/Time;->year:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_7

    .line 869
    const/4 v11, 0x1

    .line 872
    :cond_7
    sget-object v18, Lcom/sec/jewishcalendar/JewishCalendarView;->mViewCalendar:Landroid/text/format/Time;

    move-object/from16 v0, v18

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ne v6, v0, :cond_8

    .line 874
    const/4 v10, 0x1

    .line 876
    :cond_8
    if-eqz v5, :cond_d

    .line 878
    if-eqz v11, :cond_a

    if-eqz v10, :cond_a

    .line 880
    const v18, 0x7f020058

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 938
    :cond_9
    :goto_4
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 846
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 882
    :cond_a
    if-eqz v11, :cond_b

    .line 884
    const v18, 0x7f02004e

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_4

    .line 886
    :cond_b
    if-eqz v10, :cond_c

    .line 888
    const v18, 0x7f02003c

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_4

    .line 892
    :cond_c
    const v18, 0x7f02003a

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_4

    .line 897
    :cond_d
    if-eqz v11, :cond_e

    if-eqz v10, :cond_e

    .line 899
    const v18, 0x7f020057

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_4

    .line 901
    :cond_e
    if-eqz v11, :cond_f

    .line 903
    const v18, 0x7f02004d

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_4

    .line 906
    :cond_f
    if-eqz v10, :cond_9

    .line 908
    const v18, 0x7f02003b

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_4

    .line 915
    :cond_10
    const/16 v7, 0x24

    .line 919
    .local v7, "firstDayOfLastRow":I
    if-ne v9, v7, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/jewishcalendar/JewishCalendarView;->mCursor:Lcom/sec/jewishcalendar/TwDayOfMonthCursorInterface;

    move-object/from16 v18, v0

    const/16 v19, 0x4

    const/16 v20, 0x7

    invoke-interface/range {v18 .. v20}, Lcom/sec/jewishcalendar/TwDayOfMonthCursorInterface;->isInCurrentMonth(II)Z

    move-result v18

    if-nez v18, :cond_11

    .line 923
    const/16 v12, 0x23

    .local v12, "j":I
    :goto_5
    const/16 v18, 0x2a

    move/from16 v0, v18

    if-ge v12, v0, :cond_2

    .line 925
    const v18, 0x7f0e007b

    add-int v18, v18, v12

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sec/jewishcalendar/JewishCalendarView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3    # "bTemp":Landroid/widget/Button;
    check-cast v3, Landroid/widget/Button;

    .line 926
    .restart local v3    # "bTemp":Landroid/widget/Button;
    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 923
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 934
    .end local v12    # "j":I
    :cond_11
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/jewishcalendar/JewishCalendarView;->mMonthOtherMonthDayNumberColor:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 935
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/jewishcalendar/JewishCalendarView;->mPrevNextDayTextSize:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setTextSize(F)V

    goto/16 :goto_4

    .line 957
    .end local v3    # "bTemp":Landroid/widget/Button;
    .end local v7    # "firstDayOfLastRow":I
    .restart local v14    # "mInfoString":Ljava/lang/String;
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/jewishcalendar/JewishCalendarView;->mInfo:Landroid/widget/Button;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/jewishcalendar/JewishCalendarView;->JC_HOLIDAYS:[Ljava/lang/String;

    move-object/from16 v20, v0

    aget-object v20, v20, v8

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/jewishcalendar/JewishCalendarView;->jdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hday:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/jewishcalendar/JewishCalendarView;->JC_MONTHS:[Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/jewishcalendar/JewishCalendarView;->jdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hmonth:I

    move/from16 v21, v0

    aget-object v20, v20, v21

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/jewishcalendar/JewishCalendarView;->jdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hyear:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/jewishcalendar/JewishCalendarView;->jdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sec/jewishcalendar/calculation/HdateClass;->gday:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "/"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/jewishcalendar/JewishCalendarView;->jdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sec/jewishcalendar/calculation/HdateClass;->gmonth:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "/"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/jewishcalendar/JewishCalendarView;->jdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sec/jewishcalendar/calculation/HdateClass;->gyear:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 962
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/sec/jewishcalendar/JewishCalendarView;->GetHebrewLocale()Z

    move-result v18

    if-eqz v18, :cond_15

    .line 964
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/jewishcalendar/JewishCalendarView;->JC_DAYS:[Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/jewishcalendar/JewishCalendarView;->jdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hday:I

    move/from16 v20, v0

    aget-object v19, v19, v20

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/jewishcalendar/JewishCalendarView;->JC_MONTHS:[Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/jewishcalendar/JewishCalendarView;->jdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hmonth:I

    move/from16 v20, v0

    aget-object v19, v19, v20

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 965
    invoke-virtual/range {p0 .. p0}, Lcom/sec/jewishcalendar/JewishCalendarView;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_14

    .line 966
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, "\n"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 968
    :cond_14
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/jewishcalendar/JewishCalendarView;->jdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/sec/jewishcalendar/calculation/HdateClass;->gday:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/jewishcalendar/JewishCalendarView;->jdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/sec/jewishcalendar/calculation/HdateClass;->gmonth:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/jewishcalendar/JewishCalendarView;->jdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/sec/jewishcalendar/calculation/HdateClass;->gyear:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 969
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/jewishcalendar/JewishCalendarView;->mInfo:Landroid/widget/Button;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 973
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/jewishcalendar/JewishCalendarView;->mInfo:Landroid/widget/Button;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/jewishcalendar/JewishCalendarView;->jdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hday:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/jewishcalendar/JewishCalendarView;->JC_MONTHS:[Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/jewishcalendar/JewishCalendarView;->jdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hmonth:I

    move/from16 v21, v0

    aget-object v20, v20, v21

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/jewishcalendar/JewishCalendarView;->jdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hyear:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/jewishcalendar/JewishCalendarView;->jdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sec/jewishcalendar/calculation/HdateClass;->gday:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "/"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/jewishcalendar/JewishCalendarView;->jdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sec/jewishcalendar/calculation/HdateClass;->gmonth:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "/"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/jewishcalendar/JewishCalendarView;->jdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sec/jewishcalendar/calculation/HdateClass;->gyear:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 977
    :cond_16
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/jewishcalendar/JewishCalendarView;->infoFieldTextSize:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x2

    goto/16 :goto_3
.end method

.method public getCol(I)I
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 1455
    div-int/lit8 v1, p1, 0x7

    .line 1456
    .local v1, "row":I
    rem-int/lit8 v0, p1, 0x7

    .line 1457
    .local v0, "col":I
    if-nez v0, :cond_0

    .line 1459
    add-int/lit8 v1, v1, -0x1

    .line 1460
    const/4 v0, 0x7

    .line 1462
    :cond_0
    sget-boolean v2, Lcom/sec/jewishcalendar/JewishCalendarView;->isJewishCalendar:Z

    if-eqz v2, :cond_1

    add-int/lit8 v2, v1, 0x1

    mul-int/lit8 v2, v2, 0x7

    sub-int/2addr v2, p1

    add-int/lit8 v0, v2, 0x1

    .line 1463
    :cond_1
    return v0
.end method

.method public getDayColor(II)I
    .locals 1
    .param p1, "holiday"    # I
    .param p2, "col"    # I

    .prologue
    .line 1469
    packed-switch p1, :pswitch_data_0

    .line 1513
    :pswitch_0
    iget v0, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->mMonthHoliDayColor:I

    :goto_0
    return v0

    .line 1480
    :pswitch_1
    iget v0, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->mMonthFastDayColor:I

    goto :goto_0

    .line 1490
    :pswitch_2
    iget v0, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->mMontAsro:I

    goto :goto_0

    .line 1495
    :pswitch_3
    iget v0, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->mMonthheads:I

    goto :goto_0

    .line 1499
    :pswitch_4
    const/4 v0, 0x7

    if-ne p2, v0, :cond_0

    .line 1501
    iget v0, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->mMonthSaturdayNumberColor:I

    goto :goto_0

    .line 1503
    :cond_0
    const/4 v0, 0x6

    if-ne p2, v0, :cond_1

    .line 1505
    iget v0, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->mMonthFridayNumberColor:I

    goto :goto_0

    .line 1509
    :cond_1
    iget v0, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->mMonthDayNumberColor:I

    goto :goto_0

    .line 1469
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public getRow(I)I
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 1444
    div-int/lit8 v1, p1, 0x7

    .line 1445
    .local v1, "row":I
    rem-int/lit8 v0, p1, 0x7

    .line 1446
    .local v0, "col":I
    if-nez v0, :cond_0

    .line 1448
    add-int/lit8 v1, v1, -0x1

    .line 1450
    :cond_0
    return v1
.end method

.method public goToDayeventList()V
    .locals 3

    .prologue
    .line 1646
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/jewishcalendar/events/DayEvents;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1648
    .local v0, "dayEventsIntent":Landroid/content/Intent;
    const-string v1, "YEAR"

    iget-object v2, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->jdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    iget v2, v2, Lcom/sec/jewishcalendar/calculation/HdateClass;->gyear:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1649
    const-string v1, "MONTH"

    iget-object v2, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->jdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    iget v2, v2, Lcom/sec/jewishcalendar/calculation/HdateClass;->gmonth:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1650
    const-string v1, "DAY"

    iget-object v2, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->jdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    iget v2, v2, Lcom/sec/jewishcalendar/calculation/HdateClass;->gday:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1651
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/jewishcalendar/JewishCalendarView;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1652
    return-void
.end method

.method public goToNewEvent()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1622
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/sec/jewishcalendar/events/NewEvent;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1623
    .local v1, "newEventIntent":Landroid/content/Intent;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1625
    .local v0, "c":Ljava/util/Calendar;
    const-string v2, "YEAR"

    iget-object v3, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->jdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    iget v3, v3, Lcom/sec/jewishcalendar/calculation/HdateClass;->gyear:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1626
    const-string v2, "MONTH"

    iget-object v3, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->jdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    iget v3, v3, Lcom/sec/jewishcalendar/calculation/HdateClass;->gmonth:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1627
    const-string v2, "DAY"

    iget-object v3, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->jdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    iget v3, v3, Lcom/sec/jewishcalendar/calculation/HdateClass;->gday:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1628
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v3, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->jdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    iget v3, v3, Lcom/sec/jewishcalendar/calculation/HdateClass;->gyear:I

    if-ne v2, v3, :cond_0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v3, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->jdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    iget v3, v3, Lcom/sec/jewishcalendar/calculation/HdateClass;->gmonth:I

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_0

    .line 1629
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v3, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->jdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    iget v3, v3, Lcom/sec/jewishcalendar/calculation/HdateClass;->gday:I

    if-ne v2, v3, :cond_0

    .line 1631
    const-string v2, "HOUR"

    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1632
    const-string v2, "MINUTE"

    const/16 v3, 0xc

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1640
    :goto_0
    invoke-virtual {p0, v1, v4}, Lcom/sec/jewishcalendar/JewishCalendarView;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1641
    return-void

    .line 1636
    :cond_0
    const-string v2, "HOUR"

    const/16 v3, 0x9

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1637
    const-string v2, "MINUTE"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method public goToProperEventActivity()V
    .locals 3

    .prologue
    .line 1608
    new-instance v0, Lcom/sec/jewishcalendar/events/MonthEvents;

    iget-object v1, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->jdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    iget v1, v1, Lcom/sec/jewishcalendar/calculation/HdateClass;->gyear:I

    iget-object v2, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->jdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    iget v2, v2, Lcom/sec/jewishcalendar/calculation/HdateClass;->gmonth:I

    add-int/lit8 v2, v2, -0x1

    invoke-direct {v0, v1, v2}, Lcom/sec/jewishcalendar/events/MonthEvents;-><init>(II)V

    .line 1609
    .local v0, "mEvents":Lcom/sec/jewishcalendar/events/MonthEvents;
    iget-object v1, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->jdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    iget v1, v1, Lcom/sec/jewishcalendar/calculation/HdateClass;->gday:I

    invoke-virtual {v0, v1}, Lcom/sec/jewishcalendar/events/MonthEvents;->doesDayContainEvents(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1611
    invoke-virtual {p0}, Lcom/sec/jewishcalendar/JewishCalendarView;->goToDayeventList()V

    .line 1617
    :goto_0
    return-void

    .line 1615
    :cond_0
    invoke-virtual {p0}, Lcom/sec/jewishcalendar/JewishCalendarView;->goToNewEvent()V

    goto :goto_0
.end method

.method public goToShomerShabbat(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1729
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/shabbatmode/preferences/ShomerShabbatActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1730
    .local v0, "shabbatIntent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/sec/jewishcalendar/JewishCalendarView;->startActivity(Landroid/content/Intent;)V

    .line 1731
    return-void
.end method

.method public goToZmanim()V
    .locals 4

    .prologue
    .line 1656
    sget-boolean v1, Lcom/sec/jewishcalendar/JewishCalendarView;->isJewishCalendar:Z

    if-eqz v1, :cond_0

    .line 1657
    sget-object v1, Lcom/sec/jewishcalendar/JewishCalendarView;->mViewCalendar:Landroid/text/format/Time;

    iget-object v2, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->jdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    iget v2, v2, Lcom/sec/jewishcalendar/calculation/HdateClass;->gday:I

    iput v2, v1, Landroid/text/format/Time;->monthDay:I

    .line 1658
    sget-object v1, Lcom/sec/jewishcalendar/JewishCalendarView;->mViewCalendar:Landroid/text/format/Time;

    iget-object v2, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->jdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    iget v2, v2, Lcom/sec/jewishcalendar/calculation/HdateClass;->gmonth:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Landroid/text/format/Time;->month:I

    .line 1659
    sget-object v1, Lcom/sec/jewishcalendar/JewishCalendarView;->mViewCalendar:Landroid/text/format/Time;

    iget-object v2, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->jdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    iget v2, v2, Lcom/sec/jewishcalendar/calculation/HdateClass;->gyear:I

    iput v2, v1, Landroid/text/format/Time;->year:I

    .line 1661
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/jewishcalendar/ZmanimActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1662
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "date"

    sget-object v2, Lcom/sec/jewishcalendar/JewishCalendarView;->mViewCalendar:Landroid/text/format/Time;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1663
    invoke-virtual {p0, v0}, Lcom/sec/jewishcalendar/JewishCalendarView;->startActivity(Landroid/content/Intent;)V

    .line 1664
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 1668
    if-nez p1, :cond_0

    .line 1671
    sget-boolean v0, Lcom/sec/jewishcalendar/JewishCalendarView;->isJewishCalendar:Z

    if-eqz v0, :cond_1

    .line 1672
    invoke-virtual {p0}, Lcom/sec/jewishcalendar/JewishCalendarView;->draw()V

    .line 1679
    :cond_0
    :goto_0
    return-void

    .line 1675
    :cond_1
    invoke-virtual {p0}, Lcom/sec/jewishcalendar/JewishCalendarView;->drawG()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 11
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v10, 0x7f040004

    const v9, 0x7f040002

    .line 1303
    move-object v0, p1

    check-cast v0, Landroid/widget/Button;

    .line 1304
    .local v0, "bTemp":Landroid/widget/Button;
    invoke-virtual {v0}, Landroid/widget/Button;->getId()I

    move-result v7

    const v8, 0x7f0e007b

    sub-int/2addr v7, v8

    add-int/lit8 v3, v7, 0x1

    .line 1305
    .local v3, "id":I
    iput v3, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->btnChosen:I

    .line 1306
    invoke-virtual {p0, v3}, Lcom/sec/jewishcalendar/JewishCalendarView;->getRow(I)I

    move-result v4

    .line 1307
    .local v4, "row":I
    invoke-virtual {p0, v3}, Lcom/sec/jewishcalendar/JewishCalendarView;->getCol(I)I

    move-result v1

    .line 1308
    .local v1, "col":I
    iget-object v7, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->mCursor:Lcom/sec/jewishcalendar/TwDayOfMonthCursorInterface;

    invoke-interface {v7, v4, v1}, Lcom/sec/jewishcalendar/TwDayOfMonthCursorInterface;->isInCurrentMonth(II)Z

    move-result v6

    .line 1309
    .local v6, "withinCurrentMonth":Z
    iget-object v7, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->mCursor:Lcom/sec/jewishcalendar/TwDayOfMonthCursorInterface;

    invoke-interface {v7, v4, v1}, Lcom/sec/jewishcalendar/TwDayOfMonthCursorInterface;->getDayAtPlace(II)I

    move-result v2

    .line 1310
    .local v2, "dayOfBox":I
    if-nez v6, :cond_0

    .line 1312
    const v7, 0x7f0e007a

    invoke-virtual {p0, v7}, Lcom/sec/jewishcalendar/JewishCalendarView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ViewFlipper;

    .line 1313
    .local v5, "vf":Landroid/widget/ViewFlipper;
    sget-boolean v7, Lcom/sec/jewishcalendar/JewishCalendarView;->isJewishCalendar:Z

    if-eqz v7, :cond_2

    .line 1315
    if-nez v4, :cond_1

    .line 1317
    iget-object v7, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->jdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    invoke-static {v7}, Lcom/sec/jewishcalendar/calculation/JewishCal;->MoveToPrevMonth(Lcom/sec/jewishcalendar/calculation/HdateClass;)I

    .line 1318
    invoke-static {p0, v9}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 1319
    invoke-virtual {v5}, Landroid/widget/ViewFlipper;->showPrevious()V

    .line 1344
    .end local v5    # "vf":Landroid/widget/ViewFlipper;
    :cond_0
    :goto_0
    sget-boolean v7, Lcom/sec/jewishcalendar/JewishCalendarView;->isJewishCalendar:Z

    if-eqz v7, :cond_6

    .line 1346
    iget-object v7, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->jdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    iget v7, v7, Lcom/sec/jewishcalendar/calculation/HdateClass;->hday:I

    if-ne v2, v7, :cond_4

    if-eqz v6, :cond_4

    .line 1348
    invoke-virtual {p0}, Lcom/sec/jewishcalendar/JewishCalendarView;->goToProperEventActivity()V

    .line 1379
    :goto_1
    return-void

    .line 1323
    .restart local v5    # "vf":Landroid/widget/ViewFlipper;
    :cond_1
    iget-object v7, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->jdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    invoke-static {v7}, Lcom/sec/jewishcalendar/calculation/JewishCal;->MoveToNextMonth(Lcom/sec/jewishcalendar/calculation/HdateClass;)I

    .line 1324
    invoke-static {p0, v10}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 1325
    invoke-virtual {v5}, Landroid/widget/ViewFlipper;->showPrevious()V

    goto :goto_0

    .line 1330
    :cond_2
    if-nez v4, :cond_3

    .line 1332
    invoke-virtual {p0}, Lcom/sec/jewishcalendar/JewishCalendarView;->GMoveToPrevMonth()V

    .line 1333
    invoke-static {p0, v10}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 1334
    invoke-virtual {v5}, Landroid/widget/ViewFlipper;->showPrevious()V

    goto :goto_0

    .line 1338
    :cond_3
    invoke-virtual {p0}, Lcom/sec/jewishcalendar/JewishCalendarView;->GMoveToNextMonth()V

    .line 1339
    invoke-static {p0, v9}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 1340
    invoke-virtual {v5}, Landroid/widget/ViewFlipper;->showPrevious()V

    goto :goto_0

    .line 1352
    .end local v5    # "vf":Landroid/widget/ViewFlipper;
    :cond_4
    iget-object v7, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->jdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    iget-object v8, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->jdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    iget v8, v8, Lcom/sec/jewishcalendar/calculation/HdateClass;->hmonth:I

    iget-object v9, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->jdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    iget v9, v9, Lcom/sec/jewishcalendar/calculation/HdateClass;->hyear:I

    invoke-static {v7, v2, v8, v9}, Lcom/sec/jewishcalendar/calculation/JewishCal;->SetHdate(Lcom/sec/jewishcalendar/calculation/HdateClass;III)I

    .line 1353
    if-nez v6, :cond_5

    invoke-virtual {p0}, Lcom/sec/jewishcalendar/JewishCalendarView;->setCursor()V

    .line 1354
    :cond_5
    invoke-virtual {p0}, Lcom/sec/jewishcalendar/JewishCalendarView;->draw()V

    goto :goto_1

    .line 1360
    :cond_6
    sget-object v7, Lcom/sec/jewishcalendar/JewishCalendarView;->mViewCalendar:Landroid/text/format/Time;

    iget v7, v7, Landroid/text/format/Time;->monthDay:I

    if-ne v2, v7, :cond_7

    if-eqz v6, :cond_7

    .line 1362
    invoke-virtual {p0}, Lcom/sec/jewishcalendar/JewishCalendarView;->goToProperEventActivity()V

    goto :goto_1

    .line 1367
    :cond_7
    sget-object v7, Lcom/sec/jewishcalendar/JewishCalendarView;->mViewCalendar:Landroid/text/format/Time;

    iput v2, v7, Landroid/text/format/Time;->monthDay:I

    .line 1368
    if-eqz v6, :cond_8

    .line 1370
    iget-object v7, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->jdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    sget-object v8, Lcom/sec/jewishcalendar/JewishCalendarView;->mViewCalendar:Landroid/text/format/Time;

    iget v8, v8, Landroid/text/format/Time;->monthDay:I

    sget-object v9, Lcom/sec/jewishcalendar/JewishCalendarView;->mViewCalendar:Landroid/text/format/Time;

    iget v9, v9, Landroid/text/format/Time;->month:I

    add-int/lit8 v9, v9, 0x1

    sget-object v10, Lcom/sec/jewishcalendar/JewishCalendarView;->mViewCalendar:Landroid/text/format/Time;

    iget v10, v10, Landroid/text/format/Time;->year:I

    invoke-static {v7, v8, v9, v10}, Lcom/sec/jewishcalendar/calculation/JewishCal;->SetGdate(Lcom/sec/jewishcalendar/calculation/HdateClass;III)I

    .line 1376
    :goto_2
    invoke-virtual {p0}, Lcom/sec/jewishcalendar/JewishCalendarView;->drawG()V

    goto :goto_1

    .line 1374
    :cond_8
    invoke-virtual {p0}, Lcom/sec/jewishcalendar/JewishCalendarView;->setCursor()V

    goto :goto_2
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const v5, 0x7f0e007b

    const v4, 0x7f0e0079

    const/16 v3, 0x400

    .line 400
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 401
    const-string v1, "Shabbat app"

    const-string v2, "onconfig"

    invoke-static {v1, v2}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    iget-object v1, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->mPrevMonthArrow:Landroid/widget/ImageButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 405
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x2a

    if-lt v0, v1, :cond_0

    .line 411
    iget-object v1, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->mInfo:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->flushLayoutCache()V

    .line 412
    iget-object v1, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->mInfo:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->destroyDrawingCache()V

    .line 414
    iget-object v1, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->mMonthTitle:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->flushLayoutCache()V

    .line 415
    iget-object v1, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->mMonthTitle:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->destroyDrawingCache()V

    .line 417
    iget-object v1, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->mYearTitle:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->flushLayoutCache()V

    .line 418
    iget-object v1, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->mYearTitle:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->destroyDrawingCache()V

    .line 420
    iget-object v1, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->mPrevMonthArrow:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->flushLayoutCache()V

    .line 421
    iget-object v1, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->mPrevMonthArrow:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->destroyDrawingCache()V

    .line 423
    iget-object v1, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->mNextMonthArrow:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->flushLayoutCache()V

    .line 424
    iget-object v1, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->mNextMonthArrow:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->destroyDrawingCache()V

    .line 426
    iget-object v1, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->mPrevYearArrow:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->flushLayoutCache()V

    .line 427
    iget-object v1, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->mPrevYearArrow:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->destroyDrawingCache()V

    .line 429
    iget-object v1, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->mNextYearArrow:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->flushLayoutCache()V

    .line 430
    iget-object v1, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->mNextYearArrow:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->destroyDrawingCache()V

    .line 431
    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x7

    if-lt v0, v1, :cond_1

    .line 438
    invoke-virtual {p0}, Lcom/sec/jewishcalendar/JewishCalendarView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 439
    invoke-virtual {p0}, Lcom/sec/jewishcalendar/JewishCalendarView;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/Window;->addFlags(I)V

    .line 444
    :goto_2
    const v1, 0x7f030022

    invoke-virtual {p0, v1}, Lcom/sec/jewishcalendar/JewishCalendarView;->setContentView(I)V

    .line 445
    invoke-virtual {p0}, Lcom/sec/jewishcalendar/JewishCalendarView;->InitializeUI()V

    .line 446
    iget-object v1, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->mPrevMonthArrow:Landroid/widget/ImageButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 447
    return-void

    .line 407
    :cond_0
    add-int v1, v5, v0

    invoke-virtual {p0, v1}, Lcom/sec/jewishcalendar/JewishCalendarView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->flushLayoutCache()V

    .line 408
    add-int v1, v5, v0

    invoke-virtual {p0, v1}, Lcom/sec/jewishcalendar/JewishCalendarView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->destroyDrawingCache()V

    .line 405
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 433
    :cond_1
    sub-int v1, v4, v0

    invoke-virtual {p0, v1}, Lcom/sec/jewishcalendar/JewishCalendarView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->flushLayoutCache()V

    .line 434
    sub-int v1, v4, v0

    invoke-virtual {p0, v1}, Lcom/sec/jewishcalendar/JewishCalendarView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->destroyDrawingCache()V

    .line 431
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 442
    :cond_2
    invoke-virtual {p0}, Lcom/sec/jewishcalendar/JewishCalendarView;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v11, 0x400

    const/4 v2, 0x0

    .line 157
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 158
    const-string v0, "Shabbat app"

    const-string v1, "onCreateJew"

    invoke-static {v0, v1}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const-string v0, "Shabbat app"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, " densityDpi name = "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/jewishcalendar/JewishCalendarView;->CheckDensityDpi()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 165
    const-string v3, ". dpi value = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/jewishcalendar/JewishCalendarView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 166
    const-string v3, "\nmodel: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 164
    invoke-static {v0, v1}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/jewishcalendar/JewishCalendarView;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 170
    const-string v1, "font_scale"

    .line 169
    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->systemFontScale:F
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    :goto_0
    sget-object v0, Lcom/sec/jewishcalendar/events/GlobalEvents;->mEventList:Lcom/sec/jewishcalendar/events/EventList;

    if-eqz v0, :cond_0

    sget v0, Lcom/sec/jewishcalendar/events/GlobalEvents;->m_bIsInitialized:I

    if-nez v0, :cond_1

    .line 179
    :cond_0
    invoke-virtual {p0}, Lcom/sec/jewishcalendar/JewishCalendarView;->getBaseContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {p0}, Lcom/sec/jewishcalendar/JewishCalendarView;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/jewishcalendar/events/EventsProvider;->CONTENT_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/sec/jewishcalendar/events/GlobalEvents;->initFromDb(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 181
    const/4 v0, 0x1

    sput v0, Lcom/sec/jewishcalendar/events/GlobalEvents;->m_bIsInitialized:I

    .line 189
    :cond_1
    new-instance v7, Landroid/content/Intent;

    const-string v0, "alarm_manager_init_request"

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 190
    .local v7, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v7}, Lcom/sec/jewishcalendar/JewishCalendarView;->sendBroadcast(Landroid/content/Intent;)V

    .line 194
    const v0, 0x7f030022

    invoke-virtual {p0, v0}, Lcom/sec/jewishcalendar/JewishCalendarView;->setContentView(I)V

    .line 196
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 199
    .local v8, "now":J
    sget-object v0, Lcom/sec/jewishcalendar/JewishCalendarView;->mViewCalendar:Landroid/text/format/Time;

    invoke-virtual {v0, v8, v9}, Landroid/text/format/Time;->set(J)V

    .line 200
    iget-object v0, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->jdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    sget-object v1, Lcom/sec/jewishcalendar/JewishCalendarView;->mViewCalendar:Landroid/text/format/Time;

    iget v1, v1, Landroid/text/format/Time;->monthDay:I

    sget-object v2, Lcom/sec/jewishcalendar/JewishCalendarView;->mViewCalendar:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->month:I

    add-int/lit8 v2, v2, 0x1

    sget-object v3, Lcom/sec/jewishcalendar/JewishCalendarView;->mViewCalendar:Landroid/text/format/Time;

    iget v3, v3, Landroid/text/format/Time;->year:I

    invoke-static {v0, v1, v2, v3}, Lcom/sec/jewishcalendar/calculation/JewishCal;->SetGdate(Lcom/sec/jewishcalendar/calculation/HdateClass;III)I

    .line 203
    iget-object v0, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->mSavedTime:Landroid/text/format/Time;

    invoke-virtual {v0, v8, v9}, Landroid/text/format/Time;->set(J)V

    .line 204
    iget-object v0, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->jtoday:Lcom/sec/jewishcalendar/calculation/HdateClass;

    iget-object v1, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->mSavedTime:Landroid/text/format/Time;

    iget v1, v1, Landroid/text/format/Time;->monthDay:I

    iget-object v2, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->mSavedTime:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->month:I

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->mSavedTime:Landroid/text/format/Time;

    iget v3, v3, Landroid/text/format/Time;->year:I

    invoke-static {v0, v1, v2, v3}, Lcom/sec/jewishcalendar/calculation/JewishCal;->SetGdate(Lcom/sec/jewishcalendar/calculation/HdateClass;III)I

    .line 211
    invoke-virtual {p0}, Lcom/sec/jewishcalendar/JewishCalendarView;->InitializeUI()V

    .line 214
    sget-boolean v0, Lcom/sec/shabbatmode/Globals;->mHideShomerShabbat:Z

    if-nez v0, :cond_2

    .line 215
    invoke-direct {p0}, Lcom/sec/jewishcalendar/JewishCalendarView;->displayNewFeaturesAlert()V

    .line 217
    :cond_2
    invoke-virtual {p0}, Lcom/sec/jewishcalendar/JewishCalendarView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 218
    invoke-virtual {p0}, Lcom/sec/jewishcalendar/JewishCalendarView;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/view/Window;->addFlags(I)V

    .line 224
    :goto_1
    return-void

    .line 173
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v8    # "now":J
    :catch_0
    move-exception v6

    .line 174
    .local v6, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Error:cannot take font_scale "

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 221
    .end local v6    # "e":Landroid/provider/Settings$SettingNotFoundException;
    .restart local v7    # "intent":Landroid/content/Intent;
    .restart local v8    # "now":J
    :cond_3
    invoke-virtual {p0}, Lcom/sec/jewishcalendar/JewishCalendarView;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 495
    invoke-virtual {p0}, Lcom/sec/jewishcalendar/JewishCalendarView;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 496
    .local v0, "inflater":Landroid/view/MenuInflater;
    sget-boolean v2, Lcom/sec/shabbatmode/Globals;->mHideShomerShabbat:Z

    if-eqz v2, :cond_0

    const v1, 0x7f0d0002

    .line 497
    .local v1, "menu_id":I
    :goto_0
    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 498
    const/4 v2, 0x1

    return v2

    .line 496
    .end local v1    # "menu_id":I
    :cond_0
    const v1, 0x7f0d0001

    goto :goto_0
.end method

.method public onDragEvent(Landroid/widget/AbsListView;III)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 1416
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    .line 1382
    move-object v0, p1

    check-cast v0, Landroid/widget/Button;

    .line 1383
    .local v0, "bTemp":Landroid/widget/Button;
    invoke-virtual {v0, v6}, Landroid/widget/Button;->setPressed(Z)V

    .line 1384
    sget-boolean v7, Lcom/sec/jewishcalendar/JewishCalendarView;->enableLongClick:Z

    if-eqz v7, :cond_0

    .line 1386
    invoke-virtual {v0}, Landroid/widget/Button;->getId()I

    move-result v7

    const v8, 0x7f0e007b

    sub-int/2addr v7, v8

    add-int/lit8 v3, v7, 0x1

    .line 1387
    .local v3, "id":I
    invoke-virtual {p0, v3}, Lcom/sec/jewishcalendar/JewishCalendarView;->getRow(I)I

    move-result v4

    .line 1388
    .local v4, "row":I
    invoke-virtual {p0, v3}, Lcom/sec/jewishcalendar/JewishCalendarView;->getCol(I)I

    move-result v1

    .line 1389
    .local v1, "col":I
    iget-object v7, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->mCursor:Lcom/sec/jewishcalendar/TwDayOfMonthCursorInterface;

    invoke-interface {v7, v4, v1}, Lcom/sec/jewishcalendar/TwDayOfMonthCursorInterface;->isInCurrentMonth(II)Z

    move-result v5

    .line 1390
    .local v5, "withinCurrentMonth":Z
    iget-object v7, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->mCursor:Lcom/sec/jewishcalendar/TwDayOfMonthCursorInterface;

    invoke-interface {v7, v4, v1}, Lcom/sec/jewishcalendar/TwDayOfMonthCursorInterface;->getDayAtPlace(II)I

    move-result v2

    .line 1392
    .local v2, "dayOfBox":I
    if-nez v5, :cond_1

    .line 1410
    .end local v1    # "col":I
    .end local v2    # "dayOfBox":I
    .end local v3    # "id":I
    .end local v4    # "row":I
    .end local v5    # "withinCurrentMonth":Z
    :cond_0
    :goto_0
    return v6

    .line 1396
    .restart local v1    # "col":I
    .restart local v2    # "dayOfBox":I
    .restart local v3    # "id":I
    .restart local v4    # "row":I
    .restart local v5    # "withinCurrentMonth":Z
    :cond_1
    sget-boolean v6, Lcom/sec/jewishcalendar/JewishCalendarView;->isJewishCalendar:Z

    if-eqz v6, :cond_2

    .line 1398
    iget-object v6, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->jdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    iget-object v7, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->jdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    iget v7, v7, Lcom/sec/jewishcalendar/calculation/HdateClass;->hmonth:I

    iget-object v8, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->jdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    iget v8, v8, Lcom/sec/jewishcalendar/calculation/HdateClass;->hyear:I

    invoke-static {v6, v2, v7, v8}, Lcom/sec/jewishcalendar/calculation/JewishCal;->SetHdate(Lcom/sec/jewishcalendar/calculation/HdateClass;III)I

    .line 1399
    invoke-virtual {p0}, Lcom/sec/jewishcalendar/JewishCalendarView;->draw()V

    .line 1407
    :goto_1
    invoke-virtual {p0}, Lcom/sec/jewishcalendar/JewishCalendarView;->goToProperEventActivity()V

    .line 1408
    const/4 v6, 0x1

    goto :goto_0

    .line 1403
    :cond_2
    sget-object v6, Lcom/sec/jewishcalendar/JewishCalendarView;->mViewCalendar:Landroid/text/format/Time;

    iput v2, v6, Landroid/text/format/Time;->monthDay:I

    .line 1404
    iget-object v6, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->jdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    sget-object v7, Lcom/sec/jewishcalendar/JewishCalendarView;->mViewCalendar:Landroid/text/format/Time;

    iget v7, v7, Landroid/text/format/Time;->monthDay:I

    sget-object v8, Lcom/sec/jewishcalendar/JewishCalendarView;->mViewCalendar:Landroid/text/format/Time;

    iget v8, v8, Landroid/text/format/Time;->month:I

    add-int/lit8 v8, v8, 0x1

    sget-object v9, Lcom/sec/jewishcalendar/JewishCalendarView;->mViewCalendar:Landroid/text/format/Time;

    iget v9, v9, Landroid/text/format/Time;->year:I

    invoke-static {v6, v7, v8, v9}, Lcom/sec/jewishcalendar/calculation/JewishCal;->SetGdate(Lcom/sec/jewishcalendar/calculation/HdateClass;III)I

    .line 1405
    invoke-virtual {p0}, Lcom/sec/jewishcalendar/JewishCalendarView;->drawG()V

    goto :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 14
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x0

    const/4 v13, 0x1

    .line 517
    invoke-virtual {p0, v1}, Lcom/sec/jewishcalendar/JewishCalendarView;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v11

    .line 518
    .local v11, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 609
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 521
    :pswitch_0
    iget-object v0, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->jdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    iget-object v1, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->jtoday:Lcom/sec/jewishcalendar/calculation/HdateClass;

    iget v1, v1, Lcom/sec/jewishcalendar/calculation/HdateClass;->hday:I

    iget-object v2, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->jtoday:Lcom/sec/jewishcalendar/calculation/HdateClass;

    iget v2, v2, Lcom/sec/jewishcalendar/calculation/HdateClass;->hmonth:I

    iget-object v3, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->jtoday:Lcom/sec/jewishcalendar/calculation/HdateClass;

    iget v3, v3, Lcom/sec/jewishcalendar/calculation/HdateClass;->hyear:I

    invoke-static {v0, v1, v2, v3}, Lcom/sec/jewishcalendar/calculation/JewishCal;->SetHdate(Lcom/sec/jewishcalendar/calculation/HdateClass;III)I

    .line 522
    sget-object v0, Lcom/sec/jewishcalendar/JewishCalendarView;->mViewCalendar:Landroid/text/format/Time;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/text/format/Time;->set(J)V

    .line 523
    invoke-virtual {p0}, Lcom/sec/jewishcalendar/JewishCalendarView;->setCursor()V

    .line 524
    sget-boolean v0, Lcom/sec/jewishcalendar/JewishCalendarView;->isJewishCalendar:Z

    if-eqz v0, :cond_0

    .line 526
    invoke-virtual {p0}, Lcom/sec/jewishcalendar/JewishCalendarView;->draw()V

    :goto_1
    move v0, v13

    .line 532
    goto :goto_0

    .line 530
    :cond_0
    invoke-virtual {p0}, Lcom/sec/jewishcalendar/JewishCalendarView;->drawG()V

    goto :goto_1

    .line 534
    :pswitch_1
    sget-boolean v0, Lcom/sec/jewishcalendar/JewishCalendarView;->isJewishCalendar:Z

    if-eqz v0, :cond_1

    .line 536
    sput-boolean v1, Lcom/sec/jewishcalendar/JewishCalendarView;->isJewishCalendar:Z

    .line 537
    invoke-interface {v11}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 538
    .local v8, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v0, "isJewishCalendar"

    sget-boolean v1, Lcom/sec/jewishcalendar/JewishCalendarView;->isJewishCalendar:Z

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 539
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 541
    sget-object v0, Lcom/sec/jewishcalendar/JewishCalendarView;->mViewCalendar:Landroid/text/format/Time;

    iget-object v1, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->jdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    iget v1, v1, Lcom/sec/jewishcalendar/calculation/HdateClass;->gday:I

    iget-object v2, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->jdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    iget v2, v2, Lcom/sec/jewishcalendar/calculation/HdateClass;->gmonth:I

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->jdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    iget v3, v3, Lcom/sec/jewishcalendar/calculation/HdateClass;->gyear:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/format/Time;->set(III)V

    .line 542
    invoke-virtual {p0}, Lcom/sec/jewishcalendar/JewishCalendarView;->setCursor()V

    .line 543
    invoke-virtual {p0}, Lcom/sec/jewishcalendar/JewishCalendarView;->drawG()V

    .line 556
    :goto_2
    invoke-direct {p0}, Lcom/sec/jewishcalendar/JewishCalendarView;->initButtons()V

    move v0, v13

    .line 557
    goto :goto_0

    .line 547
    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_1
    sput-boolean v13, Lcom/sec/jewishcalendar/JewishCalendarView;->isJewishCalendar:Z

    .line 548
    invoke-interface {v11}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 549
    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v0, "isJewishCalendar"

    sget-boolean v1, Lcom/sec/jewishcalendar/JewishCalendarView;->isJewishCalendar:Z

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 550
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 552
    iget-object v0, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->jdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    sget-object v1, Lcom/sec/jewishcalendar/JewishCalendarView;->mViewCalendar:Landroid/text/format/Time;

    iget v1, v1, Landroid/text/format/Time;->monthDay:I

    sget-object v2, Lcom/sec/jewishcalendar/JewishCalendarView;->mViewCalendar:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->month:I

    add-int/lit8 v2, v2, 0x1

    sget-object v3, Lcom/sec/jewishcalendar/JewishCalendarView;->mViewCalendar:Landroid/text/format/Time;

    iget v3, v3, Landroid/text/format/Time;->year:I

    invoke-static {v0, v1, v2, v3}, Lcom/sec/jewishcalendar/calculation/JewishCal;->SetGdate(Lcom/sec/jewishcalendar/calculation/HdateClass;III)I

    .line 553
    invoke-virtual {p0}, Lcom/sec/jewishcalendar/JewishCalendarView;->setCursor()V

    .line 554
    invoke-virtual {p0}, Lcom/sec/jewishcalendar/JewishCalendarView;->draw()V

    goto :goto_2

    .line 559
    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    :pswitch_2
    sget-boolean v0, Lcom/sec/jewishcalendar/JewishCalendarView;->isJewishCalendar:Z

    if-eqz v0, :cond_2

    .line 561
    new-instance v0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePickerDialog;

    .line 562
    iget-object v2, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->mJewishDateSetListener:Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePickerDialog$OnJewishDateSetListener;

    .line 563
    iget-object v1, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->jdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    iget v3, v1, Lcom/sec/jewishcalendar/calculation/HdateClass;->hyear:I

    iget-object v1, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->jdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    iget v4, v1, Lcom/sec/jewishcalendar/calculation/HdateClass;->hmonth:I

    iget-object v1, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->jdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    iget v5, v1, Lcom/sec/jewishcalendar/calculation/HdateClass;->hday:I

    move-object v1, p0

    .line 561
    invoke-direct/range {v0 .. v5}, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePickerDialog;-><init>(Landroid/content/Context;Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePickerDialog$OnJewishDateSetListener;III)V

    .line 563
    invoke-virtual {v0}, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePickerDialog;->show()V

    :goto_3
    move v0, v13

    .line 571
    goto/16 :goto_0

    .line 567
    :cond_2
    new-instance v0, Landroid/app/DatePickerDialog;

    .line 568
    iget-object v2, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    .line 569
    sget-object v1, Lcom/sec/jewishcalendar/JewishCalendarView;->mViewCalendar:Landroid/text/format/Time;

    iget v3, v1, Landroid/text/format/Time;->year:I

    sget-object v1, Lcom/sec/jewishcalendar/JewishCalendarView;->mViewCalendar:Landroid/text/format/Time;

    iget v4, v1, Landroid/text/format/Time;->month:I

    sget-object v1, Lcom/sec/jewishcalendar/JewishCalendarView;->mViewCalendar:Landroid/text/format/Time;

    iget v5, v1, Landroid/text/format/Time;->monthDay:I

    move-object v1, p0

    .line 567
    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 569
    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->show()V

    goto :goto_3

    .line 573
    :pswitch_3
    invoke-virtual {p0}, Lcom/sec/jewishcalendar/JewishCalendarView;->goToZmanim()V

    move v0, v13

    .line 574
    goto/16 :goto_0

    .line 576
    :pswitch_4
    invoke-virtual {p0}, Lcom/sec/jewishcalendar/JewishCalendarView;->goToNewEvent()V

    move v0, v13

    .line 577
    goto/16 :goto_0

    .line 581
    :pswitch_5
    new-instance v10, Lcom/sec/jewishcalendar/events/MonthEvents;

    iget-object v0, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->jdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    iget v0, v0, Lcom/sec/jewishcalendar/calculation/HdateClass;->gyear:I

    iget-object v1, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->jdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    iget v1, v1, Lcom/sec/jewishcalendar/calculation/HdateClass;->gmonth:I

    add-int/lit8 v1, v1, -0x1

    invoke-direct {v10, v0, v1}, Lcom/sec/jewishcalendar/events/MonthEvents;-><init>(II)V

    .line 582
    .local v10, "monthEvents":Lcom/sec/jewishcalendar/events/MonthEvents;
    iget-object v0, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->jdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    iget v0, v0, Lcom/sec/jewishcalendar/calculation/HdateClass;->gday:I

    invoke-virtual {v10, v0}, Lcom/sec/jewishcalendar/events/MonthEvents;->doesDayContainEvents(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 584
    invoke-virtual {p0}, Lcom/sec/jewishcalendar/JewishCalendarView;->goToDayeventList()V

    :goto_4
    move v0, v13

    .line 604
    goto/16 :goto_0

    .line 588
    :cond_3
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 589
    .local v7, "builder":Landroid/app/AlertDialog$Builder;
    const v0, 0x7f0a001d

    invoke-virtual {v7, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 590
    const v0, 0x7f0a001f

    new-instance v1, Lcom/sec/jewishcalendar/JewishCalendarView$5;

    invoke-direct {v1, p0}, Lcom/sec/jewishcalendar/JewishCalendarView$5;-><init>(Lcom/sec/jewishcalendar/JewishCalendarView;)V

    invoke-virtual {v7, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 595
    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    .line 596
    .local v6, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    .line 597
    new-instance v9, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v9}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 598
    .local v9, "lp":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {v6}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v12

    .line 599
    .local v12, "window":Landroid/view/Window;
    invoke-virtual {v12}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 600
    const/4 v0, -0x1

    iput v0, v9, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 601
    const/4 v0, -0x2

    iput v0, v9, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 602
    invoke-virtual {v12, v9}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_4

    .line 606
    .end local v6    # "alert":Landroid/app/AlertDialog;
    .end local v7    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v9    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v10    # "monthEvents":Lcom/sec/jewishcalendar/events/MonthEvents;
    .end local v12    # "window":Landroid/view/Window;
    :pswitch_6
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/jewishcalendar/JewishCalendarView;->goToShomerShabbat(Landroid/view/View;)V

    move v0, v13

    .line 607
    goto/16 :goto_0

    .line 518
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e00b1
        :pswitch_6
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 483
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 490
    return-void
.end method

.method protected onResume()V
    .locals 6

    .prologue
    .line 453
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 454
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 455
    .local v0, "now":J
    const-string v2, "Shabbat app"

    const-string v3, "onResumeJew"

    invoke-static {v2, v3}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    iget-object v2, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->mSavedTime:Landroid/text/format/Time;

    invoke-virtual {v2, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 459
    iget-object v2, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->jtoday:Lcom/sec/jewishcalendar/calculation/HdateClass;

    iget-object v3, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->mSavedTime:Landroid/text/format/Time;

    iget v3, v3, Landroid/text/format/Time;->monthDay:I

    iget-object v4, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->mSavedTime:Landroid/text/format/Time;

    iget v4, v4, Landroid/text/format/Time;->month:I

    add-int/lit8 v4, v4, 0x1

    iget-object v5, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->mSavedTime:Landroid/text/format/Time;

    iget v5, v5, Landroid/text/format/Time;->year:I

    invoke-static {v2, v3, v4, v5}, Lcom/sec/jewishcalendar/calculation/JewishCal;->SetGdate(Lcom/sec/jewishcalendar/calculation/HdateClass;III)I

    .line 460
    invoke-virtual {p0}, Lcom/sec/jewishcalendar/JewishCalendarView;->InitializeUI()V

    .line 465
    invoke-direct {p0}, Lcom/sec/jewishcalendar/JewishCalendarView;->setOverviewScreenEntry()V

    .line 466
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 478
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 479
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 1420
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 1425
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "v"    # Landroid/view/View;
    .param p2, "arg1"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v10, 0x4

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1174
    const v8, 0x7f0e007a

    invoke-virtual {p0, v8}, Lcom/sec/jewishcalendar/JewishCalendarView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ViewFlipper;

    .local v5, "vf":Landroid/widget/ViewFlipper;
    move-object v0, p1

    .line 1175
    check-cast v0, Landroid/widget/Button;

    .line 1177
    .local v0, "bTemp":Landroid/widget/Button;
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 1297
    :cond_0
    :goto_0
    return v6

    .line 1182
    :pswitch_0
    sput-boolean v7, Lcom/sec/jewishcalendar/JewishCalendarView;->enableLongClick:Z

    .line 1183
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    iput v7, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->downXValue:F

    .line 1184
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iput v7, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->downYValue:F

    .line 1185
    invoke-virtual {v0, v6}, Landroid/widget/Button;->setPressed(Z)V

    goto :goto_0

    .line 1192
    :pswitch_1
    sput-boolean v6, Lcom/sec/jewishcalendar/JewishCalendarView;->enableLongClick:Z

    .line 1193
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 1194
    .local v1, "currentX":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 1195
    .local v2, "currentY":F
    const/16 v3, 0x3c

    .line 1198
    .local v3, "intentionNum":I
    iget v8, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->downXValue:F

    cmpg-float v8, v8, v1

    if-gez v8, :cond_2

    iget v8, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->downXValue:F

    sub-float v8, v1, v8

    int-to-float v9, v3

    cmpl-float v8, v8, v9

    if-lez v8, :cond_2

    .line 1200
    invoke-virtual {v0, v6}, Landroid/widget/Button;->setPressed(Z)V

    .line 1201
    sget-boolean v6, Lcom/sec/jewishcalendar/JewishCalendarView;->isJewishCalendar:Z

    if-eqz v6, :cond_1

    .line 1203
    iget-object v6, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->jdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    invoke-static {v6}, Lcom/sec/jewishcalendar/calculation/JewishCal;->MoveToNextMonth(Lcom/sec/jewishcalendar/calculation/HdateClass;)I

    .line 1204
    invoke-virtual {p0}, Lcom/sec/jewishcalendar/JewishCalendarView;->setCursor()V

    .line 1205
    invoke-virtual {p0}, Lcom/sec/jewishcalendar/JewishCalendarView;->draw()V

    .line 1213
    :goto_1
    const v6, 0x7f040004

    invoke-static {p0, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 1214
    invoke-virtual {v5}, Landroid/widget/ViewFlipper;->showPrevious()V

    move v6, v7

    .line 1215
    goto :goto_0

    .line 1209
    :cond_1
    invoke-virtual {p0}, Lcom/sec/jewishcalendar/JewishCalendarView;->GMoveToPrevMonth()V

    .line 1210
    invoke-virtual {p0}, Lcom/sec/jewishcalendar/JewishCalendarView;->setCursor()V

    .line 1211
    invoke-virtual {p0}, Lcom/sec/jewishcalendar/JewishCalendarView;->drawG()V

    goto :goto_1

    .line 1219
    :cond_2
    iget v8, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->downXValue:F

    cmpl-float v8, v8, v1

    if-lez v8, :cond_4

    iget v8, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->downXValue:F

    sub-float/2addr v8, v1

    int-to-float v9, v3

    cmpl-float v8, v8, v9

    if-lez v8, :cond_4

    .line 1221
    invoke-virtual {v0, v6}, Landroid/widget/Button;->setPressed(Z)V

    .line 1222
    sget-boolean v6, Lcom/sec/jewishcalendar/JewishCalendarView;->isJewishCalendar:Z

    if-eqz v6, :cond_3

    .line 1224
    iget-object v6, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->jdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    invoke-static {v6}, Lcom/sec/jewishcalendar/calculation/JewishCal;->MoveToPrevMonth(Lcom/sec/jewishcalendar/calculation/HdateClass;)I

    .line 1225
    invoke-virtual {p0}, Lcom/sec/jewishcalendar/JewishCalendarView;->setCursor()V

    .line 1226
    invoke-virtual {p0}, Lcom/sec/jewishcalendar/JewishCalendarView;->draw()V

    .line 1234
    :goto_2
    const v6, 0x7f040002

    invoke-static {p0, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 1235
    invoke-virtual {v5}, Landroid/widget/ViewFlipper;->showPrevious()V

    move v6, v7

    .line 1236
    goto/16 :goto_0

    .line 1230
    :cond_3
    invoke-virtual {p0}, Lcom/sec/jewishcalendar/JewishCalendarView;->GMoveToNextMonth()V

    .line 1231
    invoke-virtual {p0}, Lcom/sec/jewishcalendar/JewishCalendarView;->setCursor()V

    .line 1232
    invoke-virtual {p0}, Lcom/sec/jewishcalendar/JewishCalendarView;->drawG()V

    goto :goto_2

    .line 1240
    :cond_4
    iget v8, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->downYValue:F

    cmpg-float v8, v8, v2

    if-gez v8, :cond_7

    iget v8, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->downYValue:F

    sub-float v8, v2, v8

    int-to-float v9, v3

    cmpl-float v8, v8, v9

    if-lez v8, :cond_7

    .line 1242
    invoke-virtual {v0, v6}, Landroid/widget/Button;->setPressed(Z)V

    .line 1243
    sget-boolean v6, Lcom/sec/jewishcalendar/JewishCalendarView;->isJewishCalendar:Z

    if-eqz v6, :cond_5

    .line 1245
    iget-object v6, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->jdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    invoke-static {v6}, Lcom/sec/jewishcalendar/calculation/JewishCal;->MoveToNextYear(Lcom/sec/jewishcalendar/calculation/HdateClass;)I

    .line 1246
    invoke-virtual {p0}, Lcom/sec/jewishcalendar/JewishCalendarView;->setCursor()V

    .line 1247
    invoke-virtual {p0}, Lcom/sec/jewishcalendar/JewishCalendarView;->draw()V

    .line 1260
    :goto_3
    const/high16 v6, 0x7f040000

    invoke-static {p0, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 1261
    invoke-virtual {v5}, Landroid/widget/ViewFlipper;->showPrevious()V

    move v6, v7

    .line 1263
    goto/16 :goto_0

    .line 1251
    :cond_5
    sget-object v6, Lcom/sec/jewishcalendar/JewishCalendarView;->mViewCalendar:Landroid/text/format/Time;

    iget v4, v6, Landroid/text/format/Time;->monthDay:I

    .line 1252
    .local v4, "selectedDayInMonth":I
    sget-object v6, Lcom/sec/jewishcalendar/JewishCalendarView;->mViewCalendar:Landroid/text/format/Time;

    iget v8, v6, Landroid/text/format/Time;->year:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v6, Landroid/text/format/Time;->year:I

    .line 1253
    sget-object v6, Lcom/sec/jewishcalendar/JewishCalendarView;->mViewCalendar:Landroid/text/format/Time;

    invoke-virtual {v6, v10}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v6

    if-le v4, v6, :cond_6

    .line 1255
    sget-object v6, Lcom/sec/jewishcalendar/JewishCalendarView;->mViewCalendar:Landroid/text/format/Time;

    sget-object v8, Lcom/sec/jewishcalendar/JewishCalendarView;->mViewCalendar:Landroid/text/format/Time;

    invoke-virtual {v8, v10}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v8

    iput v8, v6, Landroid/text/format/Time;->monthDay:I

    .line 1257
    :cond_6
    invoke-virtual {p0}, Lcom/sec/jewishcalendar/JewishCalendarView;->setCursor()V

    .line 1258
    invoke-virtual {p0}, Lcom/sec/jewishcalendar/JewishCalendarView;->drawG()V

    goto :goto_3

    .line 1267
    .end local v4    # "selectedDayInMonth":I
    :cond_7
    iget v8, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->downYValue:F

    cmpl-float v8, v8, v2

    if-lez v8, :cond_0

    iget v8, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->downYValue:F

    sub-float/2addr v8, v2

    int-to-float v9, v3

    cmpl-float v8, v8, v9

    if-lez v8, :cond_0

    .line 1269
    invoke-virtual {v0, v6}, Landroid/widget/Button;->setPressed(Z)V

    .line 1270
    sget-boolean v6, Lcom/sec/jewishcalendar/JewishCalendarView;->isJewishCalendar:Z

    if-eqz v6, :cond_8

    .line 1272
    iget-object v6, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->jdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    invoke-static {v6}, Lcom/sec/jewishcalendar/calculation/JewishCal;->MoveToPrevYear(Lcom/sec/jewishcalendar/calculation/HdateClass;)I

    .line 1273
    invoke-virtual {p0}, Lcom/sec/jewishcalendar/JewishCalendarView;->setCursor()V

    .line 1274
    invoke-virtual {p0}, Lcom/sec/jewishcalendar/JewishCalendarView;->draw()V

    .line 1287
    :goto_4
    const v6, 0x7f040006

    invoke-static {p0, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 1288
    invoke-virtual {v5}, Landroid/widget/ViewFlipper;->showPrevious()V

    move v6, v7

    .line 1290
    goto/16 :goto_0

    .line 1278
    :cond_8
    sget-object v6, Lcom/sec/jewishcalendar/JewishCalendarView;->mViewCalendar:Landroid/text/format/Time;

    iget v4, v6, Landroid/text/format/Time;->monthDay:I

    .line 1279
    .restart local v4    # "selectedDayInMonth":I
    sget-object v6, Lcom/sec/jewishcalendar/JewishCalendarView;->mViewCalendar:Landroid/text/format/Time;

    iget v8, v6, Landroid/text/format/Time;->year:I

    add-int/lit8 v8, v8, -0x1

    iput v8, v6, Landroid/text/format/Time;->year:I

    .line 1280
    sget-object v6, Lcom/sec/jewishcalendar/JewishCalendarView;->mViewCalendar:Landroid/text/format/Time;

    invoke-virtual {v6, v10}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v6

    if-le v4, v6, :cond_9

    .line 1282
    sget-object v6, Lcom/sec/jewishcalendar/JewishCalendarView;->mViewCalendar:Landroid/text/format/Time;

    sget-object v8, Lcom/sec/jewishcalendar/JewishCalendarView;->mViewCalendar:Landroid/text/format/Time;

    invoke-virtual {v8, v10}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v8

    iput v8, v6, Landroid/text/format/Time;->monthDay:I

    .line 1284
    :cond_9
    invoke-virtual {p0}, Lcom/sec/jewishcalendar/JewishCalendarView;->setCursor()V

    .line 1285
    invoke-virtual {p0}, Lcom/sec/jewishcalendar/JewishCalendarView;->drawG()V

    goto :goto_4

    .line 1177
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setCursor()V
    .locals 4

    .prologue
    .line 1429
    invoke-virtual {p0}, Lcom/sec/jewishcalendar/JewishCalendarView;->CheckValidDate()V

    .line 1430
    sget-boolean v0, Lcom/sec/jewishcalendar/JewishCalendarView;->isJewishCalendar:Z

    if-eqz v0, :cond_0

    .line 1432
    new-instance v0, Lcom/sec/jewishcalendar/TwDayOfJewishMonthCursor;

    iget-object v1, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->jdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    iget v1, v1, Lcom/sec/jewishcalendar/calculation/HdateClass;->hyear:I

    iget-object v2, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->jdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    iget v2, v2, Lcom/sec/jewishcalendar/calculation/HdateClass;->hmonth:I

    iget-object v3, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->jdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    iget v3, v3, Lcom/sec/jewishcalendar/calculation/HdateClass;->hday:I

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/jewishcalendar/TwDayOfJewishMonthCursor;-><init>(III)V

    iput-object v0, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->mCursor:Lcom/sec/jewishcalendar/TwDayOfMonthCursorInterface;

    .line 1439
    :goto_0
    return-void

    .line 1436
    :cond_0
    iget-object v0, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->jdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    sget-object v1, Lcom/sec/jewishcalendar/JewishCalendarView;->mViewCalendar:Landroid/text/format/Time;

    iget v1, v1, Landroid/text/format/Time;->monthDay:I

    sget-object v2, Lcom/sec/jewishcalendar/JewishCalendarView;->mViewCalendar:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->month:I

    add-int/lit8 v2, v2, 0x1

    sget-object v3, Lcom/sec/jewishcalendar/JewishCalendarView;->mViewCalendar:Landroid/text/format/Time;

    iget v3, v3, Landroid/text/format/Time;->year:I

    invoke-static {v0, v1, v2, v3}, Lcom/sec/jewishcalendar/calculation/JewishCal;->SetGdate(Lcom/sec/jewishcalendar/calculation/HdateClass;III)I

    .line 1437
    new-instance v0, Lcom/sec/jewishcalendar/TwDayOfMonthCursor;

    sget-object v1, Lcom/sec/jewishcalendar/JewishCalendarView;->mViewCalendar:Landroid/text/format/Time;

    iget v1, v1, Landroid/text/format/Time;->year:I

    sget-object v2, Lcom/sec/jewishcalendar/JewishCalendarView;->mViewCalendar:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->month:I

    sget-object v3, Lcom/sec/jewishcalendar/JewishCalendarView;->mViewCalendar:Landroid/text/format/Time;

    iget v3, v3, Landroid/text/format/Time;->monthDay:I

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/jewishcalendar/TwDayOfMonthCursor;-><init>(III)V

    iput-object v0, p0, Lcom/sec/jewishcalendar/JewishCalendarView;->mCursor:Lcom/sec/jewishcalendar/TwDayOfMonthCursorInterface;

    goto :goto_0
.end method
