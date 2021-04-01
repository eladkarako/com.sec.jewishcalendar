.class Lcom/sec/jewishcalendar/events/DayEvents$3;
.super Ljava/lang/Object;
.source "DayEvents.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/jewishcalendar/events/DayEvents;->onCreate(Landroid/os/Bundle;)V
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
    iput-object p1, p0, Lcom/sec/jewishcalendar/events/DayEvents$3;->this$0:Lcom/sec/jewishcalendar/events/DayEvents;

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/DayEvents$3;->this$0:Lcom/sec/jewishcalendar/events/DayEvents;

    invoke-static {v0}, Lcom/sec/jewishcalendar/events/DayEvents;->access$1(Lcom/sec/jewishcalendar/events/DayEvents;)V

    .line 106
    return-void
.end method
