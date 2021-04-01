.class Lcom/sec/shabbatmode/receivers/ScreenOnReceiver$1;
.super Ljava/lang/Object;
.source "ScreenOnReceiver.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/shabbatmode/receivers/ScreenOnReceiver;->showExitAlertDialog(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/shabbatmode/receivers/ScreenOnReceiver;

.field private final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/sec/shabbatmode/receivers/ScreenOnReceiver;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/shabbatmode/receivers/ScreenOnReceiver$1;->this$0:Lcom/sec/shabbatmode/receivers/ScreenOnReceiver;

    iput-object p2, p0, Lcom/sec/shabbatmode/receivers/ScreenOnReceiver$1;->val$context:Landroid/content/Context;

    .line 169
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

    .line 173
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/shabbatmode/receivers/ScreenOnReceiver$1;->val$context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUserPrefsUtils;->exitShabbatMode(Ljava/lang/Boolean;Landroid/content/Context;)V

    .line 178
    iget-object v0, p0, Lcom/sec/shabbatmode/receivers/ScreenOnReceiver$1;->val$context:Landroid/content/Context;

    .line 179
    iget-object v1, p0, Lcom/sec/shabbatmode/receivers/ScreenOnReceiver$1;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00a2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 180
    const/16 v2, 0x11

    .line 178
    invoke-static {v0, v1, v3, v2}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUtilities;->showCustomWhiteToast(Landroid/content/Context;Ljava/lang/String;II)V

    .line 182
    iget-object v0, p0, Lcom/sec/shabbatmode/receivers/ScreenOnReceiver$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUtilities;->openMainPreferenceActivity(Landroid/content/Context;)V

    .line 183
    return-void
.end method
