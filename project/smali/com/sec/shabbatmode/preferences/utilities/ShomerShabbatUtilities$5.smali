.class Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUtilities$5;
.super Ljava/lang/Object;
.source "ShomerShabbatUtilities.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUtilities;->getWantToExitDialog(Landroid/content/Context;Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUtilities$WantToExitDialogListener;Ljava/lang/String;)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$handler:Landroid/os/Handler;

.field private final synthetic val$listener:Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUtilities$WantToExitDialogListener;

.field private final synthetic val$stopWakeLock:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroid/os/Handler;Ljava/lang/Runnable;Landroid/content/Context;Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUtilities$WantToExitDialogListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUtilities$5;->val$handler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUtilities$5;->val$stopWakeLock:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUtilities$5;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUtilities$5;->val$listener:Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUtilities$WantToExitDialogListener;

    .line 312
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 316
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUtilities$5;->val$handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUtilities$5;->val$stopWakeLock:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 317
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUtilities$5;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUserPrefsUtils;->getShabbatModeOn(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUtilities$5;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_off_timeout"

    const/16 v2, 0x2710

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUtilities$5;->val$listener:Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUtilities$WantToExitDialogListener;

    if-eqz v0, :cond_1

    .line 321
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUtilities$5;->val$listener:Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUtilities$WantToExitDialogListener;

    invoke-interface {v0}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUtilities$WantToExitDialogListener;->onDismissAlert()V

    .line 322
    const-string v0, "Shabbat ShabbatModeUtilities"

    const-string v1, "WantToExitDialogListener onDismissAlert"

    invoke-static {v0, v1}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    :cond_1
    return-void
.end method
