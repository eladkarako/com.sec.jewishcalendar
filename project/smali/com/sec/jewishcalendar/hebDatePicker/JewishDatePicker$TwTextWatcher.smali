.class public Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker$TwTextWatcher;
.super Ljava/lang/Object;
.source "JewishDatePicker.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TwTextWatcher"
.end annotation


# instance fields
.field private isMonth:Z

.field private mCheck:I

.field private mId:I

.field private mMaxLen:I

.field private mNext:I

.field private prevText:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;


# direct methods
.method public constructor <init>(Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;IIZ)V
    .locals 2
    .param p2, "maxLen"    # I
    .param p3, "id"    # I
    .param p4, "month"    # Z

    .prologue
    .line 515
    iput-object p1, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker$TwTextWatcher;->this$0:Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 516
    iput p2, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker$TwTextWatcher;->mMaxLen:I

    .line 517
    iput p3, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker$TwTextWatcher;->mId:I

    .line 518
    iput-boolean p4, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker$TwTextWatcher;->isMonth:Z

    .line 520
    iget v0, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker$TwTextWatcher;->mId:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker$TwTextWatcher;->mCheck:I

    .line 521
    iget v0, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker$TwTextWatcher;->mCheck:I

    if-gez v0, :cond_0

    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker$TwTextWatcher;->mCheck:I

    .line 523
    :cond_0
    iget v0, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker$TwTextWatcher;->mId:I

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    const/4 v0, -0x1

    :goto_0
    iput v0, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker$TwTextWatcher;->mNext:I

    .line 524
    return-void

    .line 523
    :cond_1
    iget v0, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker$TwTextWatcher;->mId:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private changeFocus()V
    .locals 2

    .prologue
    .line 562
    iget-object v0, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker$TwTextWatcher;->this$0:Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;

    const-string v1, "changeFocus() is called"

    invoke-static {v0, v1}, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;->access$0(Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;Ljava/lang/String;)V

    .line 564
    iget v0, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker$TwTextWatcher;->mNext:I

    if-ltz v0, :cond_1

    .line 565
    iget-object v0, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker$TwTextWatcher;->this$0:Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;

    invoke-static {v0}, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;->access$1(Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;)[Landroid/widget/EditText;

    move-result-object v0

    iget v1, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker$TwTextWatcher;->mCheck:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-nez v0, :cond_0

    .line 566
    iget-object v0, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker$TwTextWatcher;->this$0:Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;

    invoke-static {v0}, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;->access$1(Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;)[Landroid/widget/EditText;

    move-result-object v0

    iget v1, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker$TwTextWatcher;->mNext:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 569
    :cond_0
    iget-object v0, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker$TwTextWatcher;->this$0:Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;

    invoke-static {v0}, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;->access$1(Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;)[Landroid/widget/EditText;

    move-result-object v0

    iget v1, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker$TwTextWatcher;->mId:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 570
    iget-object v0, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker$TwTextWatcher;->this$0:Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;

    invoke-static {v0}, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;->access$1(Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;)[Landroid/widget/EditText;

    move-result-object v0

    iget v1, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker$TwTextWatcher;->mId:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 573
    :cond_1
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .param p1, "view"    # Landroid/text/Editable;

    .prologue
    .line 527
    iget-object v0, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker$TwTextWatcher;->this$0:Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "aftertextchanged: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;->access$0(Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;Ljava/lang/String;)V

    .line 528
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 531
    iget-object v0, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker$TwTextWatcher;->this$0:Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "beforeTextChanged: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;->access$0(Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;Ljava/lang/String;)V

    .line 532
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker$TwTextWatcher;->prevText:Ljava/lang/String;

    .line 533
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 536
    iget-object v1, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker$TwTextWatcher;->this$0:Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onTextChanged: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker$TwTextWatcher;->prevText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;->access$0(Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;Ljava/lang/String;)V

    .line 537
    iget-object v1, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker$TwTextWatcher;->this$0:Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onTextChanged: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;->access$0(Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;Ljava/lang/String;)V

    .line 539
    iget-object v1, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker$TwTextWatcher;->this$0:Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;

    invoke-static {v1}, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;->access$1(Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;)[Landroid/widget/EditText;

    move-result-object v1

    iget v2, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker$TwTextWatcher;->mId:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/EditText;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 540
    .local v0, "tag":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 541
    const-string v1, "onClick"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "onLongClick"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 559
    :cond_0
    :goto_0
    return-void

    .line 546
    :cond_1
    iget-boolean v1, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker$TwTextWatcher;->isMonth:Z

    if-eqz v1, :cond_2

    .line 547
    iget-object v1, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker$TwTextWatcher;->this$0:Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;

    invoke-static {v1}, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;->access$1(Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;)[Landroid/widget/EditText;

    move-result-object v1

    iget v2, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker$TwTextWatcher;->mId:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/EditText;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 548
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    .line 549
    invoke-direct {p0}, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker$TwTextWatcher;->changeFocus()V

    goto :goto_0

    .line 553
    :cond_2
    iget-object v1, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker$TwTextWatcher;->prevText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iget v2, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker$TwTextWatcher;->mMaxLen:I

    if-ne v1, v2, :cond_0

    .line 554
    iget-object v1, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker$TwTextWatcher;->this$0:Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;

    invoke-static {v1}, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;->access$1(Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;)[Landroid/widget/EditText;

    move-result-object v1

    iget v2, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker$TwTextWatcher;->mId:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/EditText;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 555
    invoke-direct {p0}, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker$TwTextWatcher;->changeFocus()V

    goto :goto_0
.end method
