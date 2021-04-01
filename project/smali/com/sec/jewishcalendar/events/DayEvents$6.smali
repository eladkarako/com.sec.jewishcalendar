.class Lcom/sec/jewishcalendar/events/DayEvents$6;
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
    iput-object p1, p0, Lcom/sec/jewishcalendar/events/DayEvents$6;->this$0:Lcom/sec/jewishcalendar/events/DayEvents;

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 155
    return-void
.end method
