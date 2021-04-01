.class Lcom/sec/jewishcalendar/events/Event$11;
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
    iput-object p1, p0, Lcom/sec/jewishcalendar/events/Event$11;->this$0:Lcom/sec/jewishcalendar/events/Event;

    .line 306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 310
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/Event$11;->this$0:Lcom/sec/jewishcalendar/events/Event;

    invoke-static {v0}, Lcom/sec/jewishcalendar/events/Event;->access$14(Lcom/sec/jewishcalendar/events/Event;)V

    .line 311
    return-void
.end method
