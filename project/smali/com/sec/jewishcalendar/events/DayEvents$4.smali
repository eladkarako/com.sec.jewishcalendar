.class Lcom/sec/jewishcalendar/events/DayEvents$4;
.super Ljava/lang/Object;
.source "DayEvents.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/jewishcalendar/events/DayEvents;->editOrRemoveEvent(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/jewishcalendar/events/DayEvents;

.field private final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/sec/jewishcalendar/events/DayEvents;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/jewishcalendar/events/DayEvents$4;->this$0:Lcom/sec/jewishcalendar/events/DayEvents;

    iput p2, p0, Lcom/sec/jewishcalendar/events/DayEvents$4;->val$position:I

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "item"    # I

    .prologue
    .line 126
    if-nez p2, :cond_1

    .line 127
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/DayEvents$4;->this$0:Lcom/sec/jewishcalendar/events/DayEvents;

    iget v1, p0, Lcom/sec/jewishcalendar/events/DayEvents$4;->val$position:I

    invoke-static {v0, v1}, Lcom/sec/jewishcalendar/events/DayEvents;->access$2(Lcom/sec/jewishcalendar/events/DayEvents;I)V

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/DayEvents$4;->this$0:Lcom/sec/jewishcalendar/events/DayEvents;

    iget v1, p0, Lcom/sec/jewishcalendar/events/DayEvents$4;->val$position:I

    invoke-static {v0, v1}, Lcom/sec/jewishcalendar/events/DayEvents;->access$3(Lcom/sec/jewishcalendar/events/DayEvents;I)V

    .line 131
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/DayEvents$4;->this$0:Lcom/sec/jewishcalendar/events/DayEvents;

    invoke-static {v0}, Lcom/sec/jewishcalendar/events/DayEvents;->access$4(Lcom/sec/jewishcalendar/events/DayEvents;)V

    goto :goto_0
.end method
