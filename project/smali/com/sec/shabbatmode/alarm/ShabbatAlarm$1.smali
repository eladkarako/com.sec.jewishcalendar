.class Lcom/sec/shabbatmode/alarm/ShabbatAlarm$1;
.super Ljava/lang/Object;
.source "ShabbatAlarm.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/shabbatmode/alarm/ShabbatAlarm;->showOneMinuteAlert()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/shabbatmode/alarm/ShabbatAlarm;


# direct methods
.method constructor <init>(Lcom/sec/shabbatmode/alarm/ShabbatAlarm;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/shabbatmode/alarm/ShabbatAlarm$1;->this$0:Lcom/sec/shabbatmode/alarm/ShabbatAlarm;

    .line 424
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 428
    iget-object v0, p0, Lcom/sec/shabbatmode/alarm/ShabbatAlarm$1;->this$0:Lcom/sec/shabbatmode/alarm/ShabbatAlarm;

    invoke-static {v0}, Lcom/sec/shabbatmode/alarm/ShabbatAlarm;->access$1(Lcom/sec/shabbatmode/alarm/ShabbatAlarm;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUserPrefsUtils;->disableShabbatMode(Landroid/content/Context;)V

    .line 429
    iget-object v0, p0, Lcom/sec/shabbatmode/alarm/ShabbatAlarm$1;->this$0:Lcom/sec/shabbatmode/alarm/ShabbatAlarm;

    iget-object v0, v0, Lcom/sec/shabbatmode/alarm/ShabbatAlarm;->showToast:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 430
    iget-object v0, p0, Lcom/sec/shabbatmode/alarm/ShabbatAlarm$1;->this$0:Lcom/sec/shabbatmode/alarm/ShabbatAlarm;

    invoke-static {v0}, Lcom/sec/shabbatmode/alarm/ShabbatAlarm;->access$1(Lcom/sec/shabbatmode/alarm/ShabbatAlarm;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/shabbatmode/alarm/ShabbatAlarm$1;->this$0:Lcom/sec/shabbatmode/alarm/ShabbatAlarm;

    invoke-static {v1}, Lcom/sec/shabbatmode/alarm/ShabbatAlarm;->access$1(Lcom/sec/shabbatmode/alarm/ShabbatAlarm;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00a2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 431
    const/4 v2, 0x1

    const/16 v3, 0x11

    .line 430
    invoke-static {v0, v1, v2, v3}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUtilities;->showCustomWhiteToast(Landroid/content/Context;Ljava/lang/String;II)V

    .line 432
    iget-object v0, p0, Lcom/sec/shabbatmode/alarm/ShabbatAlarm$1;->this$0:Lcom/sec/shabbatmode/alarm/ShabbatAlarm;

    invoke-static {v0}, Lcom/sec/shabbatmode/alarm/ShabbatAlarm;->access$1(Lcom/sec/shabbatmode/alarm/ShabbatAlarm;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUtilities;->openMainPreferenceActivity(Landroid/content/Context;)V

    .line 438
    :goto_0
    return-void

    .line 436
    :cond_0
    iget-object v0, p0, Lcom/sec/shabbatmode/alarm/ShabbatAlarm$1;->this$0:Lcom/sec/shabbatmode/alarm/ShabbatAlarm;

    invoke-static {v0}, Lcom/sec/shabbatmode/alarm/ShabbatAlarm;->access$2(Lcom/sec/shabbatmode/alarm/ShabbatAlarm;)V

    goto :goto_0
.end method
