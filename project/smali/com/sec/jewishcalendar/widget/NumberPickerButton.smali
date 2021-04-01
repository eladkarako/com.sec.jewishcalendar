.class public Lcom/sec/jewishcalendar/widget/NumberPickerButton;
.super Landroid/widget/ImageButton;
.source "NumberPickerButton.java"


# instance fields
.field private mNumberPicker:Lcom/sec/jewishcalendar/widget/NumberPicker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    return-void
.end method

.method private cancelLongpress()V
    .locals 2

    .prologue
    .line 79
    const v0, 0x7f0e0056

    invoke-virtual {p0}, Lcom/sec/jewishcalendar/widget/NumberPickerButton;->getId()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 80
    iget-object v0, p0, Lcom/sec/jewishcalendar/widget/NumberPickerButton;->mNumberPicker:Lcom/sec/jewishcalendar/widget/NumberPicker;

    invoke-virtual {v0}, Lcom/sec/jewishcalendar/widget/NumberPicker;->cancelIncrement()V

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    const v0, 0x7f0e0058

    invoke-virtual {p0}, Lcom/sec/jewishcalendar/widget/NumberPickerButton;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 82
    iget-object v0, p0, Lcom/sec/jewishcalendar/widget/NumberPickerButton;->mNumberPicker:Lcom/sec/jewishcalendar/widget/NumberPicker;

    invoke-virtual {v0}, Lcom/sec/jewishcalendar/widget/NumberPicker;->cancelDecrement()V

    goto :goto_0
.end method

.method private cancelLongpressIfRequired(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 72
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 73
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 74
    :cond_0
    invoke-direct {p0}, Lcom/sec/jewishcalendar/widget/NumberPickerButton;->cancelLongpress()V

    .line 76
    :cond_1
    return-void
.end method


# virtual methods
.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 64
    const/16 v0, 0x17

    if-eq p1, v0, :cond_0

    .line 65
    const/16 v0, 0x42

    if-ne p1, v0, :cond_1

    .line 66
    :cond_0
    invoke-direct {p0}, Lcom/sec/jewishcalendar/widget/NumberPickerButton;->cancelLongpress()V

    .line 68
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/ImageButton;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/sec/jewishcalendar/widget/NumberPickerButton;->cancelLongpressIfRequired(Landroid/view/MotionEvent;)V

    .line 53
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/sec/jewishcalendar/widget/NumberPickerButton;->cancelLongpressIfRequired(Landroid/view/MotionEvent;)V

    .line 59
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setNumberPicker(Lcom/sec/jewishcalendar/widget/NumberPicker;)V
    .locals 0
    .param p1, "picker"    # Lcom/sec/jewishcalendar/widget/NumberPicker;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/sec/jewishcalendar/widget/NumberPickerButton;->mNumberPicker:Lcom/sec/jewishcalendar/widget/NumberPicker;

    .line 48
    return-void
.end method
