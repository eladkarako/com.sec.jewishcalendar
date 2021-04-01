.class Lcom/sec/jewishcalendar/events/DayEvents$5;
.super Ljava/lang/Object;
.source "DayEvents.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/jewishcalendar/events/DayEvents;->removeAllEventsClicked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/jewishcalendar/events/DayEvents;


# direct methods
.method constructor <init>(Lcom/sec/jewishcalendar/events/DayEvents;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/jewishcalendar/events/DayEvents$5;->this$0:Lcom/sec/jewishcalendar/events/DayEvents;

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 148
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/DayEvents$5;->this$0:Lcom/sec/jewishcalendar/events/DayEvents;

    invoke-static {v0}, Lcom/sec/jewishcalendar/events/DayEvents;->access$5(Lcom/sec/jewishcalendar/events/DayEvents;)V

    .line 149
    return-void
.end method
