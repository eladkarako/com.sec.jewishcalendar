.class Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$10$2;
.super Ljava/lang/Object;
.source "ShomerShabbatMainFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$10;->onBindView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$10;

.field private final synthetic val$button1:Landroid/widget/RadioButton;


# direct methods
.method constructor <init>(Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$10;Landroid/widget/RadioButton;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$10$2;->this$1:Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$10;

    iput-object p2, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$10$2;->val$button1:Landroid/widget/RadioButton;

    .line 536
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 540
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$10$2;->this$1:Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$10;

    invoke-static {v0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$10;->access$0(Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$10;)Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->access$18(Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;Ljava/lang/Boolean;)V

    .line 541
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$10$2;->val$button1:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 542
    return-void
.end method
