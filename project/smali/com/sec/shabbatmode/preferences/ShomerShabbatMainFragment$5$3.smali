.class Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$5$3;
.super Ljava/lang/Object;
.source "ShomerShabbatMainFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$5;->onBindView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$5;

.field private final synthetic val$radioGroup:Landroid/widget/RadioGroup;


# direct methods
.method constructor <init>(Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$5;Landroid/widget/RadioGroup;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$5$3;->this$1:Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$5;

    iput-object p2, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$5$3;->val$radioGroup:Landroid/widget/RadioGroup;

    .line 369
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 373
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$5$3;->this$1:Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$5;

    invoke-static {v0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$5;->access$0(Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$5;)Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->access$6(Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;Ljava/lang/Boolean;)V

    .line 374
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$5$3;->this$1:Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$5;

    invoke-static {v0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$5;->access$0(Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$5;)Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->access$7(Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;)V

    .line 375
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$5$3;->val$radioGroup:Landroid/widget/RadioGroup;

    const v1, 0x7f0e0016

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    .line 376
    return-void
.end method
