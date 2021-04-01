.class Lcom/sec/jewishcalendar/events/Event$16;
.super Ljava/lang/Object;
.source "Event.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/jewishcalendar/events/Event;->isValidEvent()Z
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
    iput-object p1, p0, Lcom/sec/jewishcalendar/events/Event$16;->this$0:Lcom/sec/jewishcalendar/events/Event;

    .line 410
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 412
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/Event$16;->this$0:Lcom/sec/jewishcalendar/events/Event;

    invoke-virtual {v0}, Lcom/sec/jewishcalendar/events/Event;->saveEvent()V

    .line 413
    return-void
.end method
