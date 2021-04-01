.class Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUtilities$3;
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
.method constructor <init>(Landroid/os/Handler;Ljava/lang/Runnable;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUtilities$3;->val$handler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUtilities$3;->val$stopWakeLock:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUtilities$3;->val$context:Landroid/content/Context;

    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v3, 0x1

    .line 285
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUtilities$3;->val$handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUtilities$3;->val$stopWakeLock:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 286
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUtilities$3;->val$context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUserPrefsUtils;->exitShabbatMode(Ljava/lang/Boolean;Landroid/content/Context;)V

    .line 288
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUtilities$3;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUtilities$3;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00a2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 289
    const/16 v2, 0x11

    .line 288
    invoke-static {v0, v1, v3, v2}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUtilities;->showCustomWhiteToast(Landroid/content/Context;Ljava/lang/String;II)V

    .line 290
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUtilities$3;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUtilities;->openMainPreferenceActivity(Landroid/content/Context;)V

    .line 291
    return-void
.end method
