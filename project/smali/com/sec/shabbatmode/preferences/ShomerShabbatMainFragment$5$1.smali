.class Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$5$1;
.super Ljava/lang/Object;
.source "ShomerShabbatMainFragment.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


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


# direct methods
.method constructor <init>(Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$5;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$5$1;->this$1:Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$5;

    .line 349
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 3
    .param p1, "group"    # Landroid/widget/RadioGroup;
    .param p2, "checkedId"    # I

    .prologue
    .line 353
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$5$1;->this$1:Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$5;

    invoke-static {v0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$5;->access$0(Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$5;)Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;

    move-result-object v1

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    const v2, 0x7f0e0015

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->access$6(Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;Ljava/lang/Boolean;)V

    .line 354
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$5$1;->this$1:Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$5;

    invoke-static {v0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$5;->access$0(Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$5;)Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->access$7(Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;)V

    .line 355
    return-void

    .line 353
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
