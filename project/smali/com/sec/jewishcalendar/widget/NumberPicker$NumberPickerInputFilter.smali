.class Lcom/sec/jewishcalendar/widget/NumberPicker$NumberPickerInputFilter;
.super Ljava/lang/Object;
.source "NumberPicker.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/jewishcalendar/widget/NumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NumberPickerInputFilter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/jewishcalendar/widget/NumberPicker;


# direct methods
.method private constructor <init>(Lcom/sec/jewishcalendar/widget/NumberPicker;)V
    .locals 0

    .prologue
    .line 352
    iput-object p1, p0, Lcom/sec/jewishcalendar/widget/NumberPicker$NumberPickerInputFilter;->this$0:Lcom/sec/jewishcalendar/widget/NumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/jewishcalendar/widget/NumberPicker;Lcom/sec/jewishcalendar/widget/NumberPicker$NumberPickerInputFilter;)V
    .locals 0

    .prologue
    .line 352
    invoke-direct {p0, p1}, Lcom/sec/jewishcalendar/widget/NumberPicker$NumberPickerInputFilter;-><init>(Lcom/sec/jewishcalendar/widget/NumberPicker;)V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 13
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "dest"    # Landroid/text/Spanned;
    .param p5, "dstart"    # I
    .param p6, "dend"    # I

    .prologue
    .line 355
    iget-object v2, p0, Lcom/sec/jewishcalendar/widget/NumberPicker$NumberPickerInputFilter;->this$0:Lcom/sec/jewishcalendar/widget/NumberPicker;

    invoke-static {v2}, Lcom/sec/jewishcalendar/widget/NumberPicker;->access$4(Lcom/sec/jewishcalendar/widget/NumberPicker;)[Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 356
    iget-object v2, p0, Lcom/sec/jewishcalendar/widget/NumberPicker$NumberPickerInputFilter;->this$0:Lcom/sec/jewishcalendar/widget/NumberPicker;

    invoke-static {v2}, Lcom/sec/jewishcalendar/widget/NumberPicker;->access$5(Lcom/sec/jewishcalendar/widget/NumberPicker;)Landroid/text/InputFilter;

    move-result-object v2

    move-object v3, p1

    move v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-interface/range {v2 .. v8}, Landroid/text/InputFilter;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object v9

    .line 370
    :cond_0
    :goto_0
    return-object v9

    .line 359
    :cond_1
    invoke-interface/range {p1 .. p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 361
    .local v9, "filtered":Ljava/lang/CharSequence;
    new-instance v2, Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    move-object/from16 v0, p4

    move/from16 v1, p5

    invoke-interface {v0, v3, v1}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 362
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface/range {p4 .. p4}, Landroid/text/Spanned;->length()I

    move-result v3

    move-object/from16 v0, p4

    move/from16 v1, p6

    invoke-interface {v0, v1, v3}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 361
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 363
    .local v10, "result":Ljava/lang/String;
    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    .line 364
    .local v11, "str":Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/jewishcalendar/widget/NumberPicker$NumberPickerInputFilter;->this$0:Lcom/sec/jewishcalendar/widget/NumberPicker;

    invoke-static {v2}, Lcom/sec/jewishcalendar/widget/NumberPicker;->access$4(Lcom/sec/jewishcalendar/widget/NumberPicker;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_1
    if-lt v2, v4, :cond_2

    .line 370
    const-string v9, ""

    goto :goto_0

    .line 364
    :cond_2
    aget-object v12, v3, v2

    .line 365
    .local v12, "val":Ljava/lang/String;
    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    .line 366
    invoke-virtual {v12, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 364
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method
