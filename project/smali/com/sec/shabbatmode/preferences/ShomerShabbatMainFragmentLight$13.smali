.class Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight$13;
.super Ljava/lang/Object;
.source "ShomerShabbatMainFragmentLight.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->showNoLocationAlert(Ljava/lang/Boolean;)V
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
    iput-object p1, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight$13;->this$0:Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;

    .line 673
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 675
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 676
    return-void
.end method
