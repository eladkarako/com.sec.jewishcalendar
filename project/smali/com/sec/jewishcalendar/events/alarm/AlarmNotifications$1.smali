.class Lcom/sec/jewishcalendar/events/alarm/AlarmNotifications$1;
.super Ljava/lang/Object;
.source "AlarmNotifications.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/jewishcalendar/events/alarm/AlarmNotifications;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/jewishcalendar/events/alarm/AlarmNotifications;


# direct methods
.method constructor <init>(Lcom/sec/jewishcalendar/events/alarm/AlarmNotifications;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/jewishcalendar/events/alarm/AlarmNotifications$1;->this$0:Lcom/sec/jewishcalendar/events/alarm/AlarmNotifications;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/alarm/AlarmNotifications$1;->this$0:Lcom/sec/jewishcalendar/events/alarm/AlarmNotifications;

    invoke-static {v0, p3}, Lcom/sec/jewishcalendar/events/alarm/AlarmNotifications;->access$0(Lcom/sec/jewishcalendar/events/alarm/AlarmNotifications;I)V

    .line 57
    return-void
.end method
