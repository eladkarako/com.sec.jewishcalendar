.class public Lcom/sec/jewishcalendar/ZmanimAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ZmanimAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/jewishcalendar/ZmanimAdapter$ZmanimItem;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/sec/jewishcalendar/ZmanimAdapter$ZmanimItem;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    const v0, 0x7f030025

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II)V

    .line 57
    iput-object p1, p0, Lcom/sec/jewishcalendar/ZmanimAdapter;->mContext:Landroid/content/Context;

    .line 58
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/jewishcalendar/ZmanimAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 59
    return-void
.end method

.method private createViewFromResource(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .param p4, "resource"    # I

    .prologue
    .line 89
    if-nez p2, :cond_0

    .line 90
    iget-object v5, p0, Lcom/sec/jewishcalendar/ZmanimAdapter;->mInflater:Landroid/view/LayoutInflater;

    const/4 v6, 0x0

    invoke-virtual {v5, p4, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 95
    .local v4, "view":Landroid/view/View;
    :goto_0
    const v5, 0x7f0e00ac

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 96
    .local v2, "label":Landroid/widget/TextView;
    const v5, 0x7f0e00ae

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 97
    .local v0, "description":Landroid/widget/TextView;
    const v5, 0x7f0e00ad

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 100
    .local v3, "time":Landroid/widget/TextView;
    invoke-virtual {p0, p1}, Lcom/sec/jewishcalendar/ZmanimAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/jewishcalendar/ZmanimAdapter$ZmanimItem;

    .line 101
    .local v1, "item":Lcom/sec/jewishcalendar/ZmanimAdapter$ZmanimItem;
    iget v5, v1, Lcom/sec/jewishcalendar/ZmanimAdapter$ZmanimItem;->bgColor:I

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 102
    iget-object v5, v1, Lcom/sec/jewishcalendar/ZmanimAdapter$ZmanimItem;->label:Ljava/lang/CharSequence;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    iget-object v5, v1, Lcom/sec/jewishcalendar/ZmanimAdapter$ZmanimItem;->description:Ljava/lang/CharSequence;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    iget-object v5, v1, Lcom/sec/jewishcalendar/ZmanimAdapter$ZmanimItem;->time:Ljava/lang/CharSequence;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    return-object v4

    .line 92
    .end local v0    # "description":Landroid/widget/TextView;
    .end local v1    # "item":Lcom/sec/jewishcalendar/ZmanimAdapter$ZmanimItem;
    .end local v2    # "label":Landroid/widget/TextView;
    .end local v3    # "time":Landroid/widget/TextView;
    .end local v4    # "view":Landroid/view/View;
    :cond_0
    move-object v4, p2

    .restart local v4    # "view":Landroid/view/View;
    goto :goto_0
.end method


# virtual methods
.method public add(IIJ)V
    .locals 9
    .param p1, "labelId"    # I
    .param p2, "descriptionId"    # I
    .param p3, "time"    # J

    .prologue
    const/4 v6, 0x0

    .line 123
    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move v7, v6

    invoke-virtual/range {v1 .. v7}, Lcom/sec/jewishcalendar/ZmanimAdapter;->add(IIJII)V

    .line 124
    return-void
.end method

.method public add(IIJI)V
    .locals 9
    .param p1, "labelId"    # I
    .param p2, "descriptionId"    # I
    .param p3, "time"    # J
    .param p5, "bgColorId"    # I

    .prologue
    .line 206
    const/4 v7, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/sec/jewishcalendar/ZmanimAdapter;->add(IIJII)V

    .line 207
    return-void
.end method

.method public add(IIJII)V
    .locals 9
    .param p1, "labelId"    # I
    .param p2, "descriptionId"    # I
    .param p3, "time"    # J
    .param p5, "bgColorId"    # I
    .param p6, "iconId"    # I

    .prologue
    const/4 v8, 0x0

    .line 156
    const-wide/16 v6, 0x0

    cmp-long v6, p3, v6

    if-nez v6, :cond_0

    .line 191
    :goto_0
    return-void

    .line 159
    :cond_0
    new-instance v2, Lcom/sec/jewishcalendar/ZmanimAdapter$ZmanimItem;

    invoke-direct {v2}, Lcom/sec/jewishcalendar/ZmanimAdapter$ZmanimItem;-><init>()V

    .line 160
    .local v2, "item":Lcom/sec/jewishcalendar/ZmanimAdapter$ZmanimItem;
    iget-object v6, p0, Lcom/sec/jewishcalendar/ZmanimAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v6, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, v2, Lcom/sec/jewishcalendar/ZmanimAdapter$ZmanimItem;->label:Ljava/lang/CharSequence;

    .line 161
    iget-object v6, p0, Lcom/sec/jewishcalendar/ZmanimAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v6, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, v2, Lcom/sec/jewishcalendar/ZmanimAdapter$ZmanimItem;->description:Ljava/lang/CharSequence;

    .line 162
    invoke-virtual {p0}, Lcom/sec/jewishcalendar/ZmanimAdapter;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 163
    const/4 v7, 0x1

    .line 162
    invoke-static {v6, p3, p4, v7}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/sec/jewishcalendar/ZmanimAdapter$ZmanimItem;->time:Ljava/lang/CharSequence;

    .line 164
    if-eqz p5, :cond_1

    .line 165
    iget-object v6, p0, Lcom/sec/jewishcalendar/ZmanimAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, p5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    iput v6, v2, Lcom/sec/jewishcalendar/ZmanimAdapter$ZmanimItem;->bgColor:I

    .line 166
    :cond_1
    if-eqz p6, :cond_2

    .line 167
    invoke-virtual {p0}, Lcom/sec/jewishcalendar/ZmanimAdapter;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, p6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, v2, Lcom/sec/jewishcalendar/ZmanimAdapter$ZmanimItem;->icon:Landroid/graphics/drawable/Drawable;

    .line 170
    :cond_2
    iget-object v6, v2, Lcom/sec/jewishcalendar/ZmanimAdapter$ZmanimItem;->label:Ljava/lang/CharSequence;

    instance-of v6, v6, Landroid/text/Spanned;

    if-eqz v6, :cond_3

    .line 171
    iget-object v4, v2, Lcom/sec/jewishcalendar/ZmanimAdapter$ZmanimItem;->label:Ljava/lang/CharSequence;

    check-cast v4, Landroid/text/Spanned;

    .line 172
    .local v4, "spanned":Landroid/text/Spanned;
    invoke-interface {v4}, Landroid/text/Spanned;->length()I

    move-result v6

    .line 173
    const-class v7, Landroid/text/style/ForegroundColorSpan;

    .line 172
    invoke-interface {v4, v8, v6, v7}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/text/style/ForegroundColorSpan;

    .line 174
    .local v5, "spans":[Landroid/text/style/ForegroundColorSpan;
    if-eqz v5, :cond_3

    array-length v6, v5

    if-lez v6, :cond_3

    .line 175
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    .line 176
    aget-object v6, v5, v8

    invoke-virtual {v6}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    move-result v6

    .line 175
    invoke-direct {v3, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 177
    .local v3, "span":Landroid/text/style/ForegroundColorSpan;
    invoke-interface {v4, v3}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v1

    .line 178
    .local v1, "flags":I
    new-instance v0, Landroid/text/SpannableStringBuilder;

    .line 179
    iget-object v6, v2, Lcom/sec/jewishcalendar/ZmanimAdapter$ZmanimItem;->description:Ljava/lang/CharSequence;

    .line 178
    invoke-direct {v0, v6}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 180
    .local v0, "builder":Landroid/text/SpannableStringBuilder;
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    invoke-virtual {v0, v3, v8, v6, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 181
    iput-object v0, v2, Lcom/sec/jewishcalendar/ZmanimAdapter$ZmanimItem;->description:Ljava/lang/CharSequence;

    .line 183
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    .end local v3    # "span":Landroid/text/style/ForegroundColorSpan;
    aget-object v6, v5, v8

    invoke-virtual {v6}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    move-result v6

    invoke-direct {v3, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 184
    .restart local v3    # "span":Landroid/text/style/ForegroundColorSpan;
    new-instance v0, Landroid/text/SpannableStringBuilder;

    .end local v0    # "builder":Landroid/text/SpannableStringBuilder;
    iget-object v6, v2, Lcom/sec/jewishcalendar/ZmanimAdapter$ZmanimItem;->time:Ljava/lang/CharSequence;

    invoke-direct {v0, v6}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 185
    .restart local v0    # "builder":Landroid/text/SpannableStringBuilder;
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    invoke-virtual {v0, v3, v8, v6, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 186
    iput-object v0, v2, Lcom/sec/jewishcalendar/ZmanimAdapter$ZmanimItem;->time:Ljava/lang/CharSequence;

    .line 190
    .end local v0    # "builder":Landroid/text/SpannableStringBuilder;
    .end local v1    # "flags":I
    .end local v3    # "span":Landroid/text/style/ForegroundColorSpan;
    .end local v4    # "spanned":Landroid/text/Spanned;
    .end local v5    # "spans":[Landroid/text/style/ForegroundColorSpan;
    :cond_3
    invoke-virtual {p0, v2}, Lcom/sec/jewishcalendar/ZmanimAdapter;->add(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public add(IILjava/util/Date;)V
    .locals 1
    .param p1, "labelId"    # I
    .param p2, "descriptionId"    # I
    .param p3, "date"    # Ljava/util/Date;

    .prologue
    .line 137
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sec/jewishcalendar/ZmanimAdapter;->add(IILjava/util/Date;I)V

    .line 138
    return-void
.end method

.method public add(IILjava/util/Date;I)V
    .locals 6
    .param p1, "labelId"    # I
    .param p2, "descriptionId"    # I
    .param p3, "date"    # Ljava/util/Date;
    .param p4, "bgColorId"    # I

    .prologue
    .line 222
    if-nez p3, :cond_0

    .line 225
    :goto_0
    return-void

    .line 224
    :cond_0
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/sec/jewishcalendar/ZmanimAdapter;->add(IILjava/util/Date;II)V

    goto :goto_0
.end method

.method public add(IILjava/util/Date;II)V
    .locals 8
    .param p1, "labelId"    # I
    .param p2, "descriptionId"    # I
    .param p3, "date"    # Ljava/util/Date;
    .param p4, "bgColorId"    # I
    .param p5, "iconId"    # I

    .prologue
    .line 243
    if-nez p3, :cond_0

    .line 246
    :goto_0
    return-void

    .line 245
    :cond_0
    invoke-virtual {p3}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v6, p4

    move v7, p5

    invoke-virtual/range {v1 .. v7}, Lcom/sec/jewishcalendar/ZmanimAdapter;->add(IIJII)V

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 68
    .line 69
    const v0, 0x7f030025

    .line 68
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sec/jewishcalendar/ZmanimAdapter;->createViewFromResource(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
