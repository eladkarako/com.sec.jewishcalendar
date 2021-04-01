.class public Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ShomerShabbatCustomListAdapter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Shabbat SMCustomListAdapter"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/shabbatmode/preferences/customlist/Contact;",
            ">;"
        }
    .end annotation
.end field

.field private mIsMultipleChoice:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "isMultiple"    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/sec/shabbatmode/preferences/customlist/Contact;",
            ">;",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    .prologue
    .line 35
    .local p2, "contacts":Ljava/util/List;, "Ljava/util/List<Lcom/sec/shabbatmode/preferences/customlist/Contact;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListAdapter;->mData:Ljava/util/List;

    .line 36
    if-eqz p2, :cond_0

    .line 37
    iput-object p2, p0, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListAdapter;->mData:Ljava/util/List;

    .line 39
    :cond_0
    iput-object p1, p0, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListAdapter;->mContext:Landroid/content/Context;

    .line 40
    iput-object p3, p0, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListAdapter;->mIsMultipleChoice:Ljava/lang/Boolean;

    .line 41
    return-void
.end method


# virtual methods
.method public getContactsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sec/shabbatmode/preferences/customlist/Contact;",
            ">;"
        }
    .end annotation

    .prologue
    .line 26
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListAdapter;->mData:Ljava/util/List;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListAdapter;->mData:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 46
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListAdapter;->mIsMultipleChoice:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 52
    :goto_0
    return v0

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    .line 52
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 63
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "pos"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, 0x0

    .line 68
    iget-object v4, p0, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 71
    .local v1, "inflater":Landroid/view/LayoutInflater;
    iget-object v4, p0, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListAdapter;->mIsMultipleChoice:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 72
    const v4, 0x1090010

    invoke-virtual {v1, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 77
    .local v3, "view":Landroid/view/View;
    :goto_0
    const v4, 0x1020014

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 78
    .local v2, "textName":Landroid/widget/TextView;
    iget-object v4, p0, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListAdapter;->mContext:Landroid/content/Context;

    const v5, 0x1030042

    invoke-virtual {v2, v4, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 80
    iget-object v4, p0, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListAdapter;->mIsMultipleChoice:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez p1, :cond_1

    .line 81
    const v4, 0x7f0a007a

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 82
    const v4, 0x7f02005b

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 83
    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 95
    :goto_1
    return-object v3

    .line 75
    .end local v2    # "textName":Landroid/widget/TextView;
    .end local v3    # "view":Landroid/view/View;
    :cond_0
    const v4, 0x1090003

    invoke-virtual {v1, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .restart local v3    # "view":Landroid/view/View;
    goto :goto_0

    .line 87
    .restart local v2    # "textName":Landroid/widget/TextView;
    :cond_1
    iget-object v4, p0, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListAdapter;->mIsMultipleChoice:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 88
    add-int/lit8 p1, p1, -0x1

    .line 90
    :cond_2
    iget-object v4, p0, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListAdapter;->mData:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/shabbatmode/preferences/customlist/Contact;

    .line 91
    .local v0, "contact":Lcom/sec/shabbatmode/preferences/customlist/Contact;
    invoke-virtual {v0}, Lcom/sec/shabbatmode/preferences/customlist/Contact;->getDisplay_name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 93
    const-string v4, "Shabbat SMCustomListAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Contact to display = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sec/shabbatmode/preferences/customlist/Contact;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public swapCursor(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/shabbatmode/preferences/customlist/Contact;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 99
    .local p1, "displayNames":Ljava/util/List;, "Ljava/util/List<Lcom/sec/shabbatmode/preferences/customlist/Contact;>;"
    iput-object p1, p0, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListAdapter;->mData:Ljava/util/List;

    .line 100
    invoke-virtual {p0}, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListAdapter;->notifyDataSetChanged()V

    .line 101
    return-void
.end method
