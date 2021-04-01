.class Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUtilities$4;
.super Ljava/lang/Object;
.source "ShomerShabbatUtilities.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

.field private final synthetic val$stopWakeLock:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUtilities$4;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUtilities$4;->val$handler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUtilities$4;->val$stopWakeLock:Ljava/lang/Runnable;

    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 299
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUtilities$4;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUtilities$4;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a009d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 300
    const/4 v2, 0x1

    const/16 v3, 0x11

    .line 299
    invoke-static {v0, v1, v2, v3}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUtilities;->showCustomWhiteToast(Landroid/content/Context;Ljava/lang/String;II)V

    .line 301
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUtilities$4;->val$context:Landroid/content/Context;

    const/16 v1, 0x7d0

    invoke-static {v0, v1}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUtilities;->putTheDeviceToSleep(Landroid/content/Context;I)V

    .line 302
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUtilities$4;->val$handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUtilities$4;->val$stopWakeLock:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 303
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUtilities$4;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_off_timeout"

    const/16 v2, 0x2710

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 304
    return-void
.end method
