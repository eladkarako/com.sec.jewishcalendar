.class Lcom/sec/jewishcalendar/events/Event$5;
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
    iput-object p1, p0, Lcom/sec/jewishcalendar/events/Event$5;->this$0:Lcom/sec/jewishcalendar/events/Event;

    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 243
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/Event$5;->this$0:Lcom/sec/jewishcalendar/events/Event;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/jewishcalendar/events/Event;->access$11(Lcom/sec/jewishcalendar/events/Event;Z)V

    .line 244
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/Event$5;->this$0:Lcom/sec/jewishcalendar/events/Event;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/jewishcalendar/events/Event;->showDialog(I)V

    .line 245
    return-void
.end method
