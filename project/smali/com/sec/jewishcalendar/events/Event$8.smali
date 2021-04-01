.class Lcom/sec/jewishcalendar/events/Event$8;
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
    iput-object p1, p0, Lcom/sec/jewishcalendar/events/Event$8;->this$0:Lcom/sec/jewishcalendar/events/Event;

    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 280
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/Event$8;->this$0:Lcom/sec/jewishcalendar/events/Event;

    invoke-static {v0}, Lcom/sec/jewishcalendar/events/Event;->access$12(Lcom/sec/jewishcalendar/events/Event;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/Event$8;->this$0:Lcom/sec/jewishcalendar/events/Event;

    invoke-virtual {v0}, Lcom/sec/jewishcalendar/events/Event;->saveEvent()V

    .line 282
    :cond_0
    return-void
.end method
