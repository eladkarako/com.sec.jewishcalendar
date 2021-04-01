.class Lcom/sec/jewishcalendar/events/Event$9;
.super Ljava/lang/Object;
.source "Event.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/jewishcalendar/events/Event;->initScreenElements()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/jewishcalendar/events/Event;


# direct methods
.method constructor <init>(Lcom/sec/jewishcalendar/events/Event;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/jewishcalendar/events/Event$9;->this$0:Lcom/sec/jewishcalendar/events/Event;

    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 289
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 290
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/sec/jewishcalendar/events/Event$9;->this$0:Lcom/sec/jewishcalendar/events/Event;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/sec/jewishcalendar/events/Event;->setResult(ILandroid/content/Intent;)V

    .line 291
    iget-object v1, p0, Lcom/sec/jewishcalendar/events/Event$9;->this$0:Lcom/sec/jewishcalendar/events/Event;

    invoke-virtual {v1}, Lcom/sec/jewishcalendar/events/Event;->finish()V

    .line 292
    return-void
.end method
