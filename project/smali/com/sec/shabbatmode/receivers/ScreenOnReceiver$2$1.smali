.class Lcom/sec/shabbatmode/receivers/ScreenOnReceiver$2$1;
.super Ljava/lang/Object;
.source "ScreenOnReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/shabbatmode/receivers/ScreenOnReceiver$2;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/shabbatmode/receivers/ScreenOnReceiver$2;

.field private final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/sec/shabbatmode/receivers/ScreenOnReceiver$2;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/shabbatmode/receivers/ScreenOnReceiver$2$1;->this$1:Lcom/sec/shabbatmode/receivers/ScreenOnReceiver$2;

    iput-object p2, p0, Lcom/sec/shabbatmode/receivers/ScreenOnReceiver$2$1;->val$context:Landroid/content/Context;

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/sec/shabbatmode/receivers/ScreenOnReceiver$2$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUtilities;->lockDevice(Landroid/content/Context;)V

    .line 196
    return-void
.end method
