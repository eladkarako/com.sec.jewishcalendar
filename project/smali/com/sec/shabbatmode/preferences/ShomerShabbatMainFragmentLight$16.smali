.class Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight$16;
.super Ljava/lang/Object;
.source "ShomerShabbatMainFragmentLight.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->showDNDDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;


# direct methods
.method constructor <init>(Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight$16;->this$0:Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;

    .line 796
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 798
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight$16;->this$0:Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;

    invoke-static {v0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->access$0(Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/shabbatmode/preferences/utilities/ZenModeUtilities;->moveToInterruptionsActivity(Landroid/content/Context;)V

    .line 799
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 800
    return-void
.end method
