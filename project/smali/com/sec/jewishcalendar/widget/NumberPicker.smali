.class public Lcom/sec/jewishcalendar/widget/NumberPicker;
.super Landroid/widget/LinearLayout;
.source "NumberPicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/jewishcalendar/widget/NumberPicker$Formatter;,
        Lcom/sec/jewishcalendar/widget/NumberPicker$NumberPickerInputFilter;,
        Lcom/sec/jewishcalendar/widget/NumberPicker$NumberRangeKeyListener;,
        Lcom/sec/jewishcalendar/widget/NumberPicker$OnChangedListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_MAX:I = 0xc8

.field private static final DEFAULT_MIN:I

.field private static final DIGIT_CHARACTERS:[C

.field public static final TWO_DIGIT_FORMATTER:Lcom/sec/jewishcalendar/widget/NumberPicker$Formatter;


# instance fields
.field protected mCurrent:I

.field private mDecrement:Z

.field private mDecrementButton:Lcom/sec/jewishcalendar/widget/NumberPickerButton;

.field private mDisplayedValues:[Ljava/lang/String;

.field protected mEnd:I

.field private mFormatter:Lcom/sec/jewishcalendar/widget/NumberPicker$Formatter;

.field private final mHandler:Landroid/os/Handler;

.field private mIncrement:Z

.field private mIncrementButton:Lcom/sec/jewishcalendar/widget/NumberPickerButton;

.field private mListener:Lcom/sec/jewishcalendar/widget/NumberPicker$OnChangedListener;

.field private final mNumberInputFilter:Landroid/text/InputFilter;

.field protected mPrevious:I

.field private final mRunnable:Ljava/lang/Runnable;

.field private mSpeed:J

.field protected mStart:I

.field protected mStartFrom:I

.field private final mText:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    new-instance v0, Lcom/sec/jewishcalendar/widget/NumberPicker$1;

    invoke-direct {v0}, Lcom/sec/jewishcalendar/widget/NumberPicker$1;-><init>()V

    sput-object v0, Lcom/sec/jewishcalendar/widget/NumberPicker;->TWO_DIGIT_FORMATTER:Lcom/sec/jewishcalendar/widget/NumberPicker$Formatter;

    .line 346
    const/16 v0, 0xa

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sec/jewishcalendar/widget/NumberPicker;->DIGIT_CHARACTERS:[C

    .line 347
    return-void

    .line 346
    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 109
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/jewishcalendar/widget/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 110
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 113
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/jewishcalendar/widget/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 114
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 117
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 80
    new-instance v2, Lcom/sec/jewishcalendar/widget/NumberPicker$2;

    invoke-direct {v2, p0}, Lcom/sec/jewishcalendar/widget/NumberPicker$2;-><init>(Lcom/sec/jewishcalendar/widget/NumberPicker;)V

    iput-object v2, p0, Lcom/sec/jewishcalendar/widget/NumberPicker;->mRunnable:Ljava/lang/Runnable;

    .line 103
    const-wide/16 v2, 0x12c

    iput-wide v2, p0, Lcom/sec/jewishcalendar/widget/NumberPicker;->mSpeed:J

    .line 118
    invoke-virtual {p0, v5}, Lcom/sec/jewishcalendar/widget/NumberPicker;->setOrientation(I)V

    .line 120
    const-string v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 119
    check-cast v0, Landroid/view/LayoutInflater;

    .line 121
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f030017

    invoke-virtual {v0, v2, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 122
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/sec/jewishcalendar/widget/NumberPicker;->mHandler:Landroid/os/Handler;

    .line 123
    new-instance v1, Lcom/sec/jewishcalendar/widget/NumberPicker$NumberPickerInputFilter;

    invoke-direct {v1, p0, v6}, Lcom/sec/jewishcalendar/widget/NumberPicker$NumberPickerInputFilter;-><init>(Lcom/sec/jewishcalendar/widget/NumberPicker;Lcom/sec/jewishcalendar/widget/NumberPicker$NumberPickerInputFilter;)V

    .line 124
    .local v1, "inputFilter":Landroid/text/InputFilter;
    new-instance v2, Lcom/sec/jewishcalendar/widget/NumberPicker$NumberRangeKeyListener;

    invoke-direct {v2, p0, v6}, Lcom/sec/jewishcalendar/widget/NumberPicker$NumberRangeKeyListener;-><init>(Lcom/sec/jewishcalendar/widget/NumberPicker;Lcom/sec/jewishcalendar/widget/NumberPicker$NumberRangeKeyListener;)V

    iput-object v2, p0, Lcom/sec/jewishcalendar/widget/NumberPicker;->mNumberInputFilter:Landroid/text/InputFilter;

    .line 125
    const v2, 0x7f0e0056

    invoke-virtual {p0, v2}, Lcom/sec/jewishcalendar/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/jewishcalendar/widget/NumberPickerButton;

    iput-object v2, p0, Lcom/sec/jewishcalendar/widget/NumberPicker;->mIncrementButton:Lcom/sec/jewishcalendar/widget/NumberPickerButton;

    .line 126
    iget-object v2, p0, Lcom/sec/jewishcalendar/widget/NumberPicker;->mIncrementButton:Lcom/sec/jewishcalendar/widget/NumberPickerButton;

    invoke-virtual {v2, p0}, Lcom/sec/jewishcalendar/widget/NumberPickerButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    iget-object v2, p0, Lcom/sec/jewishcalendar/widget/NumberPicker;->mIncrementButton:Lcom/sec/jewishcalendar/widget/NumberPickerButton;

    invoke-virtual {v2, p0}, Lcom/sec/jewishcalendar/widget/NumberPickerButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 128
    iget-object v2, p0, Lcom/sec/jewishcalendar/widget/NumberPicker;->mIncrementButton:Lcom/sec/jewishcalendar/widget/NumberPickerButton;

    invoke-virtual {v2, p0}, Lcom/sec/jewishcalendar/widget/NumberPickerButton;->setNumberPicker(Lcom/sec/jewishcalendar/widget/NumberPicker;)V

    .line 129
    const v2, 0x7f0e0058

    invoke-virtual {p0, v2}, Lcom/sec/jewishcalendar/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/jewishcalendar/widget/NumberPickerButton;

    iput-object v2, p0, Lcom/sec/jewishcalendar/widget/NumberPicker;->mDecrementButton:Lcom/sec/jewishcalendar/widget/NumberPickerButton;

    .line 130
    iget-object v2, p0, Lcom/sec/jewishcalendar/widget/NumberPicker;->mDecrementButton:Lcom/sec/jewishcalendar/widget/NumberPickerButton;

    invoke-virtual {v2, p0}, Lcom/sec/jewishcalendar/widget/NumberPickerButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    iget-object v2, p0, Lcom/sec/jewishcalendar/widget/NumberPicker;->mDecrementButton:Lcom/sec/jewishcalendar/widget/NumberPickerButton;

    invoke-virtual {v2, p0}, Lcom/sec/jewishcalendar/widget/NumberPickerButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 132
    iget-object v2, p0, Lcom/sec/jewishcalendar/widget/NumberPicker;->mDecrementButton:Lcom/sec/jewishcalendar/widget/NumberPickerButton;

    invoke-virtual {v2, p0}, Lcom/sec/jewishcalendar/widget/NumberPickerButton;->setNumberPicker(Lcom/sec/jewishcalendar/widget/NumberPicker;)V

    .line 134
    const v2, 0x7f0e0057

    invoke-virtual {p0, v2}, Lcom/sec/jewishcalendar/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/sec/jewishcalendar/widget/NumberPicker;->mText:Landroid/widget/EditText;

    .line 135
    iget-object v2, p0, Lcom/sec/jewishcalendar/widget/NumberPicker;->mText:Landroid/widget/EditText;

    invoke-virtual {v2, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 136
    iget-object v2, p0, Lcom/sec/jewishcalendar/widget/NumberPicker;->mText:Landroid/widget/EditText;

    new-array v3, v5, [Landroid/text/InputFilter;

    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 137
    iget-object v2, p0, Lcom/sec/jewishcalendar/widget/NumberPicker;->mText:Landroid/widget/EditText;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 139
    invoke-virtual {p0}, Lcom/sec/jewishcalendar/widget/NumberPicker;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 140
    invoke-virtual {p0, v4}, Lcom/sec/jewishcalendar/widget/NumberPicker;->setEnabled(Z)V

    .line 143
    :cond_0
    iput v4, p0, Lcom/sec/jewishcalendar/widget/NumberPicker;->mStart:I

    .line 144
    const/16 v2, 0xc8

    iput v2, p0, Lcom/sec/jewishcalendar/widget/NumberPicker;->mEnd:I

    .line 145
    return-void
.end method

.method static synthetic access$0(Lcom/sec/jewishcalendar/widget/NumberPicker;)Z
    .locals 1

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/sec/jewishcalendar/widget/NumberPicker;->mIncrement:Z

    return v0
.end method

.method static synthetic access$1(Lcom/sec/jewishcalendar/widget/NumberPicker;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/sec/jewishcalendar/widget/NumberPicker;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2(Lcom/sec/jewishcalendar/widget/NumberPicker;)J
    .locals 2

    .prologue
    .line 103
    iget-wide v0, p0, Lcom/sec/jewishcalendar/widget/NumberPicker;->mSpeed:J

    return-wide v0
.end method

.method static synthetic access$3(Lcom/sec/jewishcalendar/widget/NumberPicker;)Z
    .locals 1

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/sec/jewishcalendar/widget/NumberPicker;->mDecrement:Z

    return v0
.end method

.method static synthetic access$4(Lcom/sec/jewishcalendar/widget/NumberPicker;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/sec/jewishcalendar/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Lcom/sec/jewishcalendar/widget/NumberPicker;)Landroid/text/InputFilter;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/sec/jewishcalendar/widget/NumberPicker;->mNumberInputFilter:Landroid/text/InputFilter;

    return-object v0
.end method

.method static synthetic access$6()[C
    .locals 1

    .prologue
    .line 346
    sget-object v0, Lcom/sec/jewishcalendar/widget/NumberPicker;->DIGIT_CHARACTERS:[C

    return-object v0
.end method

.method static synthetic access$7(Lcom/sec/jewishcalendar/widget/NumberPicker;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 418
    invoke-direct {p0, p1}, Lcom/sec/jewishcalendar/widget/NumberPicker;->getSelectedPos(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private formatNumber(I)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 241
    iget-object v0, p0, Lcom/sec/jewishcalendar/widget/NumberPicker;->mFormatter:Lcom/sec/jewishcalendar/widget/NumberPicker$Formatter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/jewishcalendar/widget/NumberPicker;->mFormatter:Lcom/sec/jewishcalendar/widget/NumberPicker$Formatter;

    invoke-interface {v0, p1}, Lcom/sec/jewishcalendar/widget/NumberPicker$Formatter;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 242
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getSelectedPos(Ljava/lang/String;)I
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 419
    iget-object v1, p0, Lcom/sec/jewishcalendar/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-nez v1, :cond_0

    .line 420
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 442
    :goto_0
    return v1

    .line 422
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/sec/jewishcalendar/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 436
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 425
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 426
    iget-object v1, p0, Lcom/sec/jewishcalendar/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 427
    iget v1, p0, Lcom/sec/jewishcalendar/widget/NumberPicker;->mStart:I

    add-int/2addr v1, v0

    goto :goto_0

    .line 422
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 437
    :catch_0
    move-exception v1

    .line 442
    iget v1, p0, Lcom/sec/jewishcalendar/widget/NumberPicker;->mStart:I

    goto :goto_0
.end method

.method private validateCurrentView(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "str"    # Ljava/lang/CharSequence;

    .prologue
    .line 282
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/jewishcalendar/widget/NumberPicker;->getSelectedPos(Ljava/lang/String;)I

    move-result v0

    .line 283
    .local v0, "val":I
    iget v1, p0, Lcom/sec/jewishcalendar/widget/NumberPicker;->mStart:I

    if-lt v0, v1, :cond_0

    iget v1, p0, Lcom/sec/jewishcalendar/widget/NumberPicker;->mEnd:I

    if-gt v0, v1, :cond_0

    .line 284
    iget v1, p0, Lcom/sec/jewishcalendar/widget/NumberPicker;->mCurrent:I

    if-eq v1, v0, :cond_0

    .line 285
    iget v1, p0, Lcom/sec/jewishcalendar/widget/NumberPicker;->mCurrent:I

    iput v1, p0, Lcom/sec/jewishcalendar/widget/NumberPicker;->mPrevious:I

    .line 286
    iput v0, p0, Lcom/sec/jewishcalendar/widget/NumberPicker;->mCurrent:I

    .line 287
    invoke-virtual {p0}, Lcom/sec/jewishcalendar/widget/NumberPicker;->notifyChange()V

    .line 290
    :cond_0
    invoke-virtual {p0}, Lcom/sec/jewishcalendar/widget/NumberPicker;->updateView()V

    .line 291
    return-void
.end method

.method private validateInput(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 304
    check-cast p1, Landroid/widget/TextView;

    .end local p1    # "v":Landroid/view/View;
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 305
    .local v0, "str":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 308
    invoke-virtual {p0}, Lcom/sec/jewishcalendar/widget/NumberPicker;->updateView()V

    .line 314
    :goto_0
    return-void

    .line 312
    :cond_0
    invoke-direct {p0, v0}, Lcom/sec/jewishcalendar/widget/NumberPicker;->validateCurrentView(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public cancelDecrement()V
    .locals 1

    .prologue
    .line 343
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/jewishcalendar/widget/NumberPicker;->mDecrement:Z

    .line 344
    return-void
.end method

.method public cancelIncrement()V
    .locals 1

    .prologue
    .line 339
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/jewishcalendar/widget/NumberPicker;->mIncrement:Z

    .line 340
    return-void
.end method

.method protected changeCurrent(I)V
    .locals 1
    .param p1, "current"    # I

    .prologue
    .line 248
    iget v0, p0, Lcom/sec/jewishcalendar/widget/NumberPicker;->mEnd:I

    if-le p1, v0, :cond_1

    .line 249
    iget p1, p0, Lcom/sec/jewishcalendar/widget/NumberPicker;->mStart:I

    .line 253
    :cond_0
    :goto_0
    iget v0, p0, Lcom/sec/jewishcalendar/widget/NumberPicker;->mCurrent:I

    iput v0, p0, Lcom/sec/jewishcalendar/widget/NumberPicker;->mPrevious:I

    .line 254
    iput p1, p0, Lcom/sec/jewishcalendar/widget/NumberPicker;->mCurrent:I

    .line 256
    invoke-virtual {p0}, Lcom/sec/jewishcalendar/widget/NumberPicker;->notifyChange()V

    .line 257
    invoke-virtual {p0}, Lcom/sec/jewishcalendar/widget/NumberPicker;->updateView()V

    .line 258
    return-void

    .line 250
    :cond_1
    iget v0, p0, Lcom/sec/jewishcalendar/widget/NumberPicker;->mStart:I

    if-ge p1, v0, :cond_0

    .line 251
    iget p1, p0, Lcom/sec/jewishcalendar/widget/NumberPicker;->mEnd:I

    goto :goto_0
.end method

.method public getCurrent()I
    .locals 1

    .prologue
    .line 449
    iget v0, p0, Lcom/sec/jewishcalendar/widget/NumberPicker;->mCurrent:I

    return v0
.end method

.method public getEditText()Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/sec/jewishcalendar/widget/NumberPicker;->mText:Landroid/widget/EditText;

    return-object v0
.end method

.method protected notifyChange()V
    .locals 3

    .prologue
    .line 261
    iget-object v0, p0, Lcom/sec/jewishcalendar/widget/NumberPicker;->mListener:Lcom/sec/jewishcalendar/widget/NumberPicker$OnChangedListener;

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/sec/jewishcalendar/widget/NumberPicker;->mListener:Lcom/sec/jewishcalendar/widget/NumberPicker$OnChangedListener;

    iget v1, p0, Lcom/sec/jewishcalendar/widget/NumberPicker;->mPrevious:I

    iget v2, p0, Lcom/sec/jewishcalendar/widget/NumberPicker;->mCurrent:I

    invoke-interface {v0, p0, v1, v2}, Lcom/sec/jewishcalendar/widget/NumberPicker$OnChangedListener;->onChanged(Lcom/sec/jewishcalendar/widget/NumberPicker;II)V

    .line 264
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 228
    iget-object v0, p0, Lcom/sec/jewishcalendar/widget/NumberPicker;->mText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/sec/jewishcalendar/widget/NumberPicker;->mText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 232
    :cond_0
    const v0, 0x7f0e0056

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 233
    iget v0, p0, Lcom/sec/jewishcalendar/widget/NumberPicker;->mCurrent:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/jewishcalendar/widget/NumberPicker;->changeCurrent(I)V

    .line 238
    :goto_0
    return-void

    .line 234
    :cond_1
    const v0, 0x7f0e0058

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 235
    iget v0, p0, Lcom/sec/jewishcalendar/widget/NumberPicker;->mCurrent:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/sec/jewishcalendar/widget/NumberPicker;->changeCurrent(I)V

    goto :goto_0

    .line 237
    :cond_2
    iget-object v0, p0, Lcom/sec/jewishcalendar/widget/NumberPicker;->mText:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/sec/jewishcalendar/widget/NumberPicker;->validateInput(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 298
    if-nez p2, :cond_0

    .line 299
    invoke-direct {p0, p1}, Lcom/sec/jewishcalendar/widget/NumberPicker;->validateInput(Landroid/view/View;)V

    .line 301
    :cond_0
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 326
    iget-object v0, p0, Lcom/sec/jewishcalendar/widget/NumberPicker;->mText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 328
    const v0, 0x7f0e0056

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 329
    iput-boolean v2, p0, Lcom/sec/jewishcalendar/widget/NumberPicker;->mIncrement:Z

    .line 330
    iget-object v0, p0, Lcom/sec/jewishcalendar/widget/NumberPicker;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/jewishcalendar/widget/NumberPicker;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 335
    :cond_0
    :goto_0
    return v2

    .line 331
    :cond_1
    const v0, 0x7f0e0058

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 332
    iput-boolean v2, p0, Lcom/sec/jewishcalendar/widget/NumberPicker;->mDecrement:Z

    .line 333
    iget-object v0, p0, Lcom/sec/jewishcalendar/widget/NumberPicker;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/jewishcalendar/widget/NumberPicker;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public setCurrent(I)V
    .locals 0
    .param p1, "current"    # I

    .prologue
    .line 214
    iput p1, p0, Lcom/sec/jewishcalendar/widget/NumberPicker;->mCurrent:I

    .line 215
    invoke-virtual {p0}, Lcom/sec/jewishcalendar/widget/NumberPicker;->updateView()V

    .line 216
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 153
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 154
    iget-object v0, p0, Lcom/sec/jewishcalendar/widget/NumberPicker;->mIncrementButton:Lcom/sec/jewishcalendar/widget/NumberPickerButton;

    invoke-virtual {v0, p1}, Lcom/sec/jewishcalendar/widget/NumberPickerButton;->setEnabled(Z)V

    .line 155
    iget-object v0, p0, Lcom/sec/jewishcalendar/widget/NumberPicker;->mDecrementButton:Lcom/sec/jewishcalendar/widget/NumberPickerButton;

    invoke-virtual {v0, p1}, Lcom/sec/jewishcalendar/widget/NumberPickerButton;->setEnabled(Z)V

    .line 156
    iget-object v0, p0, Lcom/sec/jewishcalendar/widget/NumberPicker;->mText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 157
    return-void
.end method

.method public setFormatter(Lcom/sec/jewishcalendar/widget/NumberPicker$Formatter;)V
    .locals 0
    .param p1, "formatter"    # Lcom/sec/jewishcalendar/widget/NumberPicker$Formatter;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/sec/jewishcalendar/widget/NumberPicker;->mFormatter:Lcom/sec/jewishcalendar/widget/NumberPicker$Formatter;

    .line 165
    return-void
.end method

.method public setOnChangeListener(Lcom/sec/jewishcalendar/widget/NumberPicker$OnChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sec/jewishcalendar/widget/NumberPicker$OnChangedListener;

    .prologue
    .line 160
    iput-object p1, p0, Lcom/sec/jewishcalendar/widget/NumberPicker;->mListener:Lcom/sec/jewishcalendar/widget/NumberPicker$OnChangedListener;

    .line 161
    return-void
.end method

.method public setRange(II)V
    .locals 0
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 177
    iput p1, p0, Lcom/sec/jewishcalendar/widget/NumberPicker;->mStart:I

    .line 178
    iput p2, p0, Lcom/sec/jewishcalendar/widget/NumberPicker;->mEnd:I

    .line 179
    iput p1, p0, Lcom/sec/jewishcalendar/widget/NumberPicker;->mCurrent:I

    .line 180
    invoke-virtual {p0}, Lcom/sec/jewishcalendar/widget/NumberPicker;->updateView()V

    .line 181
    return-void
.end method

.method public setRange(III[Ljava/lang/String;)V
    .locals 0
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "StartFrom"    # I
    .param p4, "displayedValues"    # [Ljava/lang/String;

    .prologue
    .line 205
    iput-object p4, p0, Lcom/sec/jewishcalendar/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    .line 206
    iput p1, p0, Lcom/sec/jewishcalendar/widget/NumberPicker;->mStart:I

    .line 207
    iput p2, p0, Lcom/sec/jewishcalendar/widget/NumberPicker;->mEnd:I

    .line 208
    iput p1, p0, Lcom/sec/jewishcalendar/widget/NumberPicker;->mCurrent:I

    .line 209
    iput p3, p0, Lcom/sec/jewishcalendar/widget/NumberPicker;->mStartFrom:I

    .line 210
    invoke-virtual {p0}, Lcom/sec/jewishcalendar/widget/NumberPicker;->updateView()V

    .line 211
    return-void
.end method

.method public setRange(II[Ljava/lang/String;)V
    .locals 0
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "displayedValues"    # [Ljava/lang/String;

    .prologue
    .line 196
    iput-object p3, p0, Lcom/sec/jewishcalendar/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    .line 197
    iput p1, p0, Lcom/sec/jewishcalendar/widget/NumberPicker;->mStart:I

    .line 198
    iput p2, p0, Lcom/sec/jewishcalendar/widget/NumberPicker;->mEnd:I

    .line 199
    iput p1, p0, Lcom/sec/jewishcalendar/widget/NumberPicker;->mCurrent:I

    .line 200
    invoke-virtual {p0}, Lcom/sec/jewishcalendar/widget/NumberPicker;->updateView()V

    .line 201
    return-void
.end method

.method public setSpeed(J)V
    .locals 1
    .param p1, "speed"    # J

    .prologue
    .line 223
    iput-wide p1, p0, Lcom/sec/jewishcalendar/widget/NumberPicker;->mSpeed:J

    .line 224
    return-void
.end method

.method protected updateView()V
    .locals 5

    .prologue
    .line 273
    iget-object v0, p0, Lcom/sec/jewishcalendar/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/sec/jewishcalendar/widget/NumberPicker;->mText:Landroid/widget/EditText;

    iget v1, p0, Lcom/sec/jewishcalendar/widget/NumberPicker;->mCurrent:I

    invoke-direct {p0, v1}, Lcom/sec/jewishcalendar/widget/NumberPicker;->formatNumber(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 278
    :goto_0
    iget-object v0, p0, Lcom/sec/jewishcalendar/widget/NumberPicker;->mText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/sec/jewishcalendar/widget/NumberPicker;->mText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 279
    return-void

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/sec/jewishcalendar/widget/NumberPicker;->mText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/sec/jewishcalendar/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    iget v2, p0, Lcom/sec/jewishcalendar/widget/NumberPicker;->mStartFrom:I

    iget v3, p0, Lcom/sec/jewishcalendar/widget/NumberPicker;->mCurrent:I

    iget v4, p0, Lcom/sec/jewishcalendar/widget/NumberPicker;->mStart:I

    sub-int/2addr v3, v4

    add-int/2addr v2, v3

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
