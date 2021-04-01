.class Lcom/sec/shabbatmode/receivers/ScreenOnReceiver$2;
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
    iput-object p1, p0, Lcom/sec/shabbatmode/receivers/ScreenOnReceiver$2;->this$0:Lcom/sec/shabbatmode/receivers/ScreenOnReceiver;

    iput-object p2, p0, Lcom/sec/shabbatmode/receivers/ScreenOnReceiver$2;->val$context:Landroid/content/Context;

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 191
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 192
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/sec/shabbatmode/receivers/ScreenOnReceiver$2$1;

    iget-object v2, p0, Lcom/sec/shabbatmode/receivers/ScreenOnReceiver$2;->val$context:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/sec/shabbatmode/receivers/ScreenOnReceiver$2$1;-><init>(Lcom/sec/shabbatmode/receivers/ScreenOnReceiver$2;Landroid/content/Context;)V

    .line 197
    const-wide/16 v2, 0xfa0

    .line 192
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 199
    iget-object v1, p0, Lcom/sec/shabbatmode/receivers/ScreenOnReceiver$2;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/shabbatmode/receivers/ScreenOnReceiver$2;->val$context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a009d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 200
    const/4 v3, 0x1

    const/16 v4, 0x11

    .line 199
    invoke-static {v1, v2, v3, v4}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUtilities;->showCustomWhiteToast(Landroid/content/Context;Ljava/lang/String;II)V

    .line 201
    return-void
.end method
