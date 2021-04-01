.class Lcom/sec/shabbatmode/activities/ScreenLockActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "ScreenLockActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/shabbatmode/activities/ScreenLockActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/shabbatmode/activities/ScreenLockActivity;


# direct methods
.method constructor <init>(Lcom/sec/shabbatmode/activities/ScreenLockActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/shabbatmode/activities/ScreenLockActivity$1;->this$0:Lcom/sec/shabbatmode/activities/ScreenLockActivity;

    .line 94
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 98
    const-string v0, "Shabbat ScreenLockActivitys"

    const-string v1, "ScreenLockActivity recieved closeActivity braodcast"

    invoke-static {v0, v1}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/sec/shabbatmode/activities/ScreenLockActivity$1;->this$0:Lcom/sec/shabbatmode/activities/ScreenLockActivity;

    invoke-static {v0}, Lcom/sec/shabbatmode/activities/ScreenLockActivity;->access$0(Lcom/sec/shabbatmode/activities/ScreenLockActivity;)V

    .line 100
    iget-object v0, p0, Lcom/sec/shabbatmode/activities/ScreenLockActivity$1;->this$0:Lcom/sec/shabbatmode/activities/ScreenLockActivity;

    invoke-static {v0}, Lcom/sec/shabbatmode/activities/ScreenLockActivity;->access$1(Lcom/sec/shabbatmode/activities/ScreenLockActivity;)V

    .line 101
    iget-object v0, p0, Lcom/sec/shabbatmode/activities/ScreenLockActivity$1;->this$0:Lcom/sec/shabbatmode/activities/ScreenLockActivity;

    invoke-virtual {v0}, Lcom/sec/shabbatmode/activities/ScreenLockActivity;->finish()V

    .line 102
    return-void
.end method
