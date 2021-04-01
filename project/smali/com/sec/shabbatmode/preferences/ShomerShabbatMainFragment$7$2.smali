.class Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$7$2;
.super Ljava/lang/Object;
.source "ShomerShabbatMainFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$7;->onBindView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$7;


# direct methods
.method constructor <init>(Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$7;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$7$2;->this$1:Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$7;

    .line 442
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 445
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$7$2;->this$1:Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$7;

    invoke-static {v0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$7;->access$0(Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$7;)Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->access$0(Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUserPrefsUtils;->resetManualLocationIndex(Landroid/content/Context;)V

    .line 446
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$7$2;->this$1:Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$7;

    invoke-static {v0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$7;->access$0(Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$7;)Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->searchForLocation(Ljava/lang/Boolean;)V

    .line 447
    return-void
.end method
