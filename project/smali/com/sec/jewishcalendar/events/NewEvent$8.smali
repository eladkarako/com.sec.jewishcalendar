.class Lcom/sec/jewishcalendar/events/NewEvent$8;
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
    iput-object p1, p0, Lcom/sec/jewishcalendar/events/NewEvent$8;->this$0:Lcom/sec/jewishcalendar/events/NewEvent;

    .line 301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 304
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/NewEvent$8;->this$0:Lcom/sec/jewishcalendar/events/NewEvent;

    invoke-static {v0}, Lcom/sec/jewishcalendar/events/NewEvent;->access$14(Lcom/sec/jewishcalendar/events/NewEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/NewEvent$8;->this$0:Lcom/sec/jewishcalendar/events/NewEvent;

    invoke-virtual {v0}, Lcom/sec/jewishcalendar/events/NewEvent;->createEvent()V

    .line 306
    :cond_0
    return-void
.end method
