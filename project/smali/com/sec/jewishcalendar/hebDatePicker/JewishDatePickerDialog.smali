.class public Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePickerDialog;
.super Landroid/app/AlertDialog;
.source "JewishDatePickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker$OnJewishDateChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePickerDialog$OnJewishDateSetListener;
    }
.end annotation


# static fields
.field private static final DAY:Ljava/lang/String; = "day"

.field private static final MONTH:Ljava/lang/String; = "month"

.field private static final YEAR:Ljava/lang/String; = "year"


# instance fields
.field private JC_DAYS:[Ljava/lang/String;

.field private JC_LETTERS:[Ljava/lang/String;

.field private JC_MONTHS:[Ljava/lang/String;

.field private currentLang:Ljava/lang/String;

.field public currentLocal:Ljava/util/Locale;

.field private final mCallBack:Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePickerDialog$OnJewishDateSetListener;

.field private mConfChangeListener:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private final mDatePicker:Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;

.field private mImm:Landroid/view/inputmethod/InputMethodManager;

.field private mInitialDay:I

.field private mInitialMonth:I

.field private mInitialYear:I

.field private mIsHebState:Z

.field private mResources:Landroid/content/res/Resources;

.field private mTitleDateFormat:Ljava/text/SimpleDateFormat;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/sec/jewishcalendar/hebDatePicker/JewishDatePickerDialog$OnJewishDateSetListener;III)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I
    .param p3, "callBack"    # Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePickerDialog$OnJewishDateSetListener;
    .param p4, "year"    # I
    .param p5, "monthOfYear"    # I
    .param p6, "dayOfMonth"    # I

    .prologue
    const/4 v8, 0x0

    .line 132
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 68
    iput-object v8, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePickerDialog;->JC_LETTERS:[Ljava/lang/String;

    .line 69
    iput-object v8, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePickerDialog;->JC_MONTHS:[Ljava/lang/String;

    .line 70
    iput-object v8, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePickerDialog;->JC_DAYS:[Ljava/lang/String;

    .line 254
    new-instance v3, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePickerDialog$1;

    invoke-direct {v3, p0}, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePickerDialog$1;-><init>(Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePickerDialog;)V

    iput-object v3, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePickerDialog;->mConfChangeListener:Landroid/content/BroadcastReceiver;

    .line 134
    iput-object p1, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePickerDialog;->mContext:Landroid/content/Context;

    .line 135
    iput-object p3, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePickerDialog;->mCallBack:Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePickerDialog$OnJewishDateSetListener;

    .line 136
    iput p4, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePickerDialog;->mInitialYear:I

    .line 137
    iput p5, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePickerDialog;->mInitialMonth:I

    .line 138
    iput p6, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePickerDialog;->mInitialDay:I

    .line 139
    iget-object v3, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePickerDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePickerDialog;->mResources:Landroid/content/res/Resources;

    .line 140
    iget-object v3, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePickerDialog;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f060003

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePickerDialog;->JC_LETTERS:[Ljava/lang/String;

    .line 141
    iget-object v3, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePickerDialog;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f060004

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePickerDialog;->JC_MONTHS:[Ljava/lang/String;

    .line 142
    iget-object v3, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePickerDialog;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f060002

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePickerDialog;->JC_DAYS:[Ljava/lang/String;

    .line 143
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 144
    .local v0, "currentLocal":Ljava/util/Locale;
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePickerDialog;->currentLang:Ljava/lang/String;

    .line 145
    iget-object v3, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePickerDialog;->currentLang:Ljava/lang/String;

    const-string v4, "he"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePickerDialog;->currentLang:Ljava/lang/String;

    const-string v4, "iw"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 146
    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePickerDialog;->mIsHebState:Z

    .line 154
    :goto_0
    invoke-virtual {p0}, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v3

    check-cast v3, Ljava/text/SimpleDateFormat;

    iput-object v3, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePickerDialog;->mTitleDateFormat:Ljava/text/SimpleDateFormat;

    .line 155
    iget-object v3, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePickerDialog;->mTitleDateFormat:Ljava/text/SimpleDateFormat;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "EEEEE, "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePickerDialog;->mTitleDateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v5}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v5

    const-string v6, "MM"

    const-string v7, "MMM"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    .line 157
    iget v3, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePickerDialog;->mInitialYear:I

    iget v4, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePickerDialog;->mInitialMonth:I

    iget v5, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePickerDialog;->mInitialDay:I

    invoke-direct {p0, v3, v4, v5}, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePickerDialog;->updateTitle(III)V

    .line 158
    const/4 v3, -0x1

    iget-object v4, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePickerDialog;->mContext:Landroid/content/Context;

    const v5, 0x7f0a0015

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p0, v3, v4, p0}, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 159
    const/4 v3, -0x2

    iget-object v4, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePickerDialog;->mContext:Landroid/content/Context;

    const v5, 0x7f0a0016

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p0, v3, v4, p0}, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 177
    iget-object v3, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePickerDialog;->mContext:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 178
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f030012

    invoke-virtual {v1, v3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 179
    .local v2, "view":Landroid/view/View;
    invoke-virtual {p0, v2}, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePickerDialog;->setView(Landroid/view/View;)V

    .line 181
    const v3, 0x7f0e0042

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;

    iput-object v3, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePickerDialog;->mDatePicker:Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;

    .line 183
    iget-object v3, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePickerDialog;->mDatePicker:Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;

    iget v4, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePickerDialog;->mInitialYear:I

    iget v5, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePickerDialog;->mInitialMonth:I

    iget v6, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePickerDialog;->mInitialDay:I

    invoke-virtual {v3, v4, v5, v6, p0}, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;->init(IIILcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker$OnJewishDateChangedListener;)V

    .line 190
    invoke-virtual {p0}, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePickerDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/view/Window;->setGravity(I)V

    .line 199
    invoke-virtual {p0}, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "input_method"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    iput-object v3, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePickerDialog;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 200
    return-void

    .line 148
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    .end local v2    # "view":Landroid/view/View;
    :cond_1
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePickerDialog;->mIsHebState:Z

    goto/16 :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePickerDialog$OnJewishDateSetListener;III)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callBack"    # Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePickerDialog$OnJewishDateSetListener;
    .param p3, "year"    # I
    .param p4, "monthOfYear"    # I
    .param p5, "dayOfMonth"    # I

    .prologue
    .line 114
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePickerDialog;-><init>(Landroid/content/Context;ILcom/sec/jewishcalendar/hebDatePicker/JewishDatePickerDialog$OnJewishDateSetListener;III)V

    .line 115
    return-void
.end method

.method static synthetic access$0(Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePickerDialog;)Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePickerDialog;->mDatePicker:Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;

    return-object v0
.end method

.method static synthetic access$1(Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePickerDialog;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePickerDialog;->mImm:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method private updateTitle(III)V
    .locals 4
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I

    .prologue
    .line 309
    invoke-static {}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUtilities;->isOSLollipopOrUp()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    .line 321
    iget-boolean v2, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePickerDialog;->mIsHebState:Z

    if-eqz v2, :cond_1

    .line 322
    iget-object v2, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePickerDialog;->JC_LETTERS:[Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/sec/jewishcalendar/calculation/JewishCal;->GetJewishYearString(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 325
    .local v0, "sYear":Ljava/lang/String;
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePickerDialog;->JC_DAYS:[Ljava/lang/String;

    aget-object v3, v3, p3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePickerDialog;->JC_MONTHS:[Ljava/lang/String;

    aget-object v3, v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 326
    .local v1, "title":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePickerDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 329
    .end local v0    # "sYear":Ljava/lang/String;
    .end local v1    # "title":Ljava/lang/String;
    :cond_0
    return-void

    .line 324
    :cond_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "sYear":Ljava/lang/String;
    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 283
    iget-object v0, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePickerDialog;->mImm:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePickerDialog;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 285
    invoke-virtual {p0}, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePickerDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    .line 284
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 288
    :cond_0
    const/4 v0, -0x2

    if-eq p2, v0, :cond_1

    iget-object v0, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePickerDialog;->mCallBack:Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePickerDialog$OnJewishDateSetListener;

    if-eqz v0, :cond_1

    .line 289
    iget-object v0, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePickerDialog;->mDatePicker:Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;

    invoke-virtual {v0}, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;->clearFocus()V

    .line 291
    iget-object v0, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePickerDialog;->mCallBack:Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePickerDialog$OnJewishDateSetListener;

    iget-object v1, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePickerDialog;->mDatePicker:Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;

    iget-object v2, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePickerDialog;->mDatePicker:Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;

    invoke-virtual {v2}, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;->getYear()I

    move-result v2

    .line 292
    iget-object v3, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePickerDialog;->mDatePicker:Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;

    invoke-virtual {v3}, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;->getMonth()I

    move-result v3

    iget-object v4, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePickerDialog;->mDatePicker:Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;

    invoke-virtual {v4}, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;->getDayOfMonth()I

    move-result v4

    .line 291
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePickerDialog$OnJewishDateSetListener;->onDateSet(Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;III)V

    .line 296
    :cond_1
    return-void
.end method

.method public onDateChanged(Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;III)V
    .locals 0
    .param p1, "view"    # Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;
    .param p2, "year"    # I
    .param p3, "monthOfYear"    # I
    .param p4, "dayOfMonth"    # I

    .prologue
    .line 352
    invoke-direct {p0, p2, p3, p4}, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePickerDialog;->updateTitle(III)V

    .line 354
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 342
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 343
    const-string v3, "year"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 344
    .local v2, "year":I
    const-string v3, "month"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 345
    .local v1, "month":I
    const-string v3, "day"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 346
    .local v0, "day":I
    iget-object v3, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePickerDialog;->mDatePicker:Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;

    invoke-virtual {v3, v2, v1, v0, p0}, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;->init(IIILcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker$OnJewishDateChangedListener;)V

    .line 347
    invoke-direct {p0, v2, v1, v0}, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePickerDialog;->updateTitle(III)V

    .line 348
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 333
    invoke-super {p0}, Landroid/app/AlertDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 334
    .local v0, "state":Landroid/os/Bundle;
    const-string v1, "year"

    iget-object v2, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePickerDialog;->mDatePicker:Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;

    invoke-virtual {v2}, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;->getYear()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 335
    const-string v1, "month"

    iget-object v2, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePickerDialog;->mDatePicker:Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;

    invoke-virtual {v2}, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;->getMonth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 336
    const-string v1, "day"

    iget-object v2, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePickerDialog;->mDatePicker:Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;

    invoke-virtual {v2}, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;->getDayOfMonth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 337
    return-object v0
.end method

.method protected onStart()V
    .locals 3

    .prologue
    .line 238
    iget-object v1, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePickerDialog;->mDatePicker:Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;

    invoke-virtual {v1}, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;->clearFocus()V

    .line 240
    invoke-super {p0}, Landroid/app/AlertDialog;->onStart()V

    .line 243
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 244
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 245
    invoke-virtual {p0}, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePickerDialog;->mConfChangeListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 246
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 250
    invoke-super {p0}, Landroid/app/AlertDialog;->onStop()V

    .line 251
    invoke-virtual {p0}, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePickerDialog;->mConfChangeListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 252
    return-void
.end method

.method public show()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    const/4 v5, -0x2

    .line 204
    invoke-super {p0}, Landroid/app/AlertDialog;->show()V

    .line 210
    invoke-static {}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUtilities;->isOSLollipopOrUp()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_0

    .line 211
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 212
    .local v1, "title":Landroid/widget/TextView;
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setWidth(I)V

    .line 213
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setHeight(I)V

    .line 216
    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    .line 217
    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 220
    .end local v1    # "title":Landroid/widget/TextView;
    :cond_0
    iget-object v3, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePickerDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    .line 221
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 222
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {p0}, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePickerDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 223
    .local v2, "window":Landroid/view/Window;
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 224
    iput v6, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 225
    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 226
    invoke-virtual {v2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 228
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v2    # "window":Landroid/view/Window;
    :cond_1
    return-void
.end method

.method public twSetRangeOfYear(II)V
    .locals 1
    .param p1, "startYear"    # I
    .param p2, "endYear"    # I

    .prologue
    .line 272
    iget-object v0, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePickerDialog;->mDatePicker:Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;

    invoke-virtual {v0, p1, p2}, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;->twSetRangeOfYear(II)V

    .line 273
    return-void
.end method

.method public updateDate(III)V
    .locals 1
    .param p1, "year"    # I
    .param p2, "monthOfYear"    # I
    .param p3, "dayOfMonth"    # I

    .prologue
    .line 301
    iput p1, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePickerDialog;->mInitialYear:I

    .line 302
    iput p2, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePickerDialog;->mInitialMonth:I

    .line 303
    iput p3, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePickerDialog;->mInitialDay:I

    .line 304
    iget-object v0, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePickerDialog;->mDatePicker:Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;->updateDate(III)V

    .line 306
    return-void
.end method
