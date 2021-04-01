.class Lcom/sec/jewishcalendar/events/NewEvent$9;
.super Ljava/lang/Object;
.source "NewEvent.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/jewishcalendar/events/NewEvent;->initScreenElements(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/jewishcalendar/events/NewEvent;


# direct methods
.method constructor <init>(Lcom/sec/jewishcalendar/events/NewEvent;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/jewishcalendar/events/NewEvent$9;->this$0:Lcom/sec/jewishcalendar/events/NewEvent;

    .line 310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 313
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 314
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/sec/jewishcalendar/events/NewEvent$9;->this$0:Lcom/sec/jewishcalendar/events/NewEvent;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/sec/jewishcalendar/events/NewEvent;->setResult(ILandroid/content/Intent;)V

    .line 315
    iget-object v1, p0, Lcom/sec/jewishcalendar/events/NewEvent$9;->this$0:Lcom/sec/jewishcalendar/events/NewEvent;

    invoke-virtual {v1}, Lcom/sec/jewishcalendar/events/NewEvent;->finish()V

    .line 316
    return-void
.end method
