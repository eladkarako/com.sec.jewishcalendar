.class Lcom/sec/jewishcalendar/ZmanimActivity$Populater;
.super Ljava/lang/Thread;
.source "ZmanimActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/jewishcalendar/ZmanimActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Populater"
.end annotation


# instance fields
.field private cancelled:Z

.field private final loc:Landroid/location/Location;

.field final synthetic this$0:Lcom/sec/jewishcalendar/ZmanimActivity;


# direct methods
.method public constructor <init>(Lcom/sec/jewishcalendar/ZmanimActivity;Landroid/location/Location;)V
    .locals 1
    .param p2, "location"    # Landroid/location/Location;

    .prologue
    .line 898
    iput-object p1, p0, Lcom/sec/jewishcalendar/ZmanimActivity$Populater;->this$0:Lcom/sec/jewishcalendar/ZmanimActivity;

    .line 899
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 890
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/jewishcalendar/ZmanimActivity$Populater;->cancelled:Z

    .line 900
    iput-object p2, p0, Lcom/sec/jewishcalendar/ZmanimActivity$Populater;->loc:Landroid/location/Location;

    .line 901
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 924
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/jewishcalendar/ZmanimActivity$Populater;->cancelled:Z

    .line 925
    return-void
.end method

.method public run()V
    .locals 2

    .prologue
    .line 906
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 908
    iget-boolean v0, p0, Lcom/sec/jewishcalendar/ZmanimActivity$Populater;->cancelled:Z

    if-eqz v0, :cond_1

    .line 920
    :cond_0
    :goto_0
    return-void

    .line 910
    :cond_1
    iget-object v0, p0, Lcom/sec/jewishcalendar/ZmanimActivity$Populater;->this$0:Lcom/sec/jewishcalendar/ZmanimActivity;

    iget-object v1, p0, Lcom/sec/jewishcalendar/ZmanimActivity$Populater;->loc:Landroid/location/Location;

    invoke-static {v0, v1}, Lcom/sec/jewishcalendar/ZmanimActivity;->access$4(Lcom/sec/jewishcalendar/ZmanimActivity;Landroid/location/Location;)V

    .line 911
    iget-boolean v0, p0, Lcom/sec/jewishcalendar/ZmanimActivity$Populater;->cancelled:Z

    if-nez v0, :cond_0

    .line 913
    iget-object v0, p0, Lcom/sec/jewishcalendar/ZmanimActivity$Populater;->this$0:Lcom/sec/jewishcalendar/ZmanimActivity;

    iget-object v1, p0, Lcom/sec/jewishcalendar/ZmanimActivity$Populater;->this$0:Lcom/sec/jewishcalendar/ZmanimActivity;

    invoke-static {v1}, Lcom/sec/jewishcalendar/ZmanimActivity;->access$5(Lcom/sec/jewishcalendar/ZmanimActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/jewishcalendar/ZmanimActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 914
    iget-boolean v0, p0, Lcom/sec/jewishcalendar/ZmanimActivity$Populater;->cancelled:Z

    if-nez v0, :cond_0

    .line 916
    iget-object v0, p0, Lcom/sec/jewishcalendar/ZmanimActivity$Populater;->this$0:Lcom/sec/jewishcalendar/ZmanimActivity;

    invoke-static {v0}, Lcom/sec/jewishcalendar/ZmanimActivity;->access$6(Lcom/sec/jewishcalendar/ZmanimActivity;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/jewishcalendar/ZmanimActivity$Populater;->this$0:Lcom/sec/jewishcalendar/ZmanimActivity;

    invoke-static {v0}, Lcom/sec/jewishcalendar/ZmanimActivity;->access$6(Lcom/sec/jewishcalendar/ZmanimActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 917
    iget-object v0, p0, Lcom/sec/jewishcalendar/ZmanimActivity$Populater;->this$0:Lcom/sec/jewishcalendar/ZmanimActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/jewishcalendar/ZmanimActivity;->dismissDialog(I)V

    .line 918
    iget-object v0, p0, Lcom/sec/jewishcalendar/ZmanimActivity$Populater;->this$0:Lcom/sec/jewishcalendar/ZmanimActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/jewishcalendar/ZmanimActivity;->access$7(Lcom/sec/jewishcalendar/ZmanimActivity;Landroid/app/Dialog;)V

    goto :goto_0
.end method
