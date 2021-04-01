.class Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$7;
.super Landroid/preference/Preference;
.source "ShomerShabbatMainFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->initLocationPref()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;


# direct methods
.method constructor <init>(Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;Landroid/content/Context;)V
    .locals 0
    .param p2, "$anonymous0"    # Landroid/content/Context;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$7;->this$0:Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;

    .line 425
    invoke-direct {p0, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$0(Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$7;)Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$7;->this$0:Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;

    return-object v0
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 429
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 431
    const v1, 0x7f0e0061

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 432
    .local v0, "mUpdateLoc":Landroid/widget/ImageButton;
    iget-object v2, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$7;->this$0:Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;

    const v1, 0x7f0e0063

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v2, v1}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->access$11(Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;Landroid/widget/TextView;)V

    .line 433
    iget-object v2, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$7;->this$0:Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;

    const v1, 0x7f0e0064

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v2, v1}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->access$12(Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;Landroid/widget/TextView;)V

    .line 434
    iget-object v1, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$7;->this$0:Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;

    invoke-static {v1}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->access$13(Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;)V

    .line 436
    new-instance v1, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$7$1;

    invoke-direct {v1, p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$7$1;-><init>(Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$7;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 442
    new-instance v1, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$7$2;

    invoke-direct {v1, p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$7$2;-><init>(Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$7;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 450
    return-void
.end method
