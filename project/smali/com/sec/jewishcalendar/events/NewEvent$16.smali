.class Lcom/sec/jewishcalendar/events/NewEvent$16;
.super Ljava/lang/Object;
.source "NewEvent.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/jewishcalendar/events/NewEvent;->isValidNewEvent()Z
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
    iput-object p1, p0, Lcom/sec/jewishcalendar/events/NewEvent$16;->this$0:Lcom/sec/jewishcalendar/events/NewEvent;

    .line 431
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 433
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/NewEvent$16;->this$0:Lcom/sec/jewishcalendar/events/NewEvent;

    invoke-virtual {v0}, Lcom/sec/jewishcalendar/events/NewEvent;->createEvent()V

    .line 435
    return-void
.end method
