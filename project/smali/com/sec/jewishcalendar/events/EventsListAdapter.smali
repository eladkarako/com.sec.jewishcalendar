.class public Lcom/sec/jewishcalendar/events/EventsListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "EventsListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/sec/jewishcalendar/events/ConcreteDateEvent;",
        ">;"
    }
.end annotation


# instance fields
.field private objects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/jewishcalendar/events/ConcreteDateEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/sec/jewishcalendar/events/ConcreteDateEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 19
    .local p2, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/sec/jewishcalendar/events/ConcreteDateEvent;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 20
    iput-object p2, p0, Lcom/sec/jewishcalendar/events/EventsListAdapter;->objects:Ljava/util/List;

    .line 21
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 25
    move-object v2, p2

    .line 27
    .local v2, "v":Landroid/view/View;
    if-nez v2, :cond_0

    .line 28
    invoke-virtual {p0}, Lcom/sec/jewishcalendar/events/EventsListAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 29
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f03000f

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 32
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    :cond_0
    iget-object v3, p0, Lcom/sec/jewishcalendar/events/EventsListAdapter;->objects:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/jewishcalendar/events/ConcreteDateEvent;

    .line 34
    .local v0, "i":Lcom/sec/jewishcalendar/events/ConcreteDateEvent;
    if-eqz v0, :cond_1

    .line 35
    const v3, 0x7f0e003d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/sec/jewishcalendar/events/ConcreteDateEvent;->toHtmlString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    :cond_1
    return-object v2
.end method
