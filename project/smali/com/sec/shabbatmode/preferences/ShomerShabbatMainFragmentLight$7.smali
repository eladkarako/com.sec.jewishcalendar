.class Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight$7;
.super Landroid/preference/Preference;
.source "ShomerShabbatMainFragmentLight.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->initLocationPref()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;


# direct methods
.method constructor <init>(Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;Landroid/content/Context;)V
    .locals 0
    .param p2, "$anonymous0"    # Landroid/content/Context;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight$7;->this$0:Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;

    .line 387
    invoke-direct {p0, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$0(Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight$7;)Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight$7;->this$0:Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;

    return-object v0
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 391
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 393
    const v1, 0x7f0e0061

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 394
    .local v0, "mUpdateLoc":Landroid/widget/ImageButton;
    iget-object v2, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight$7;->this$0:Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;

    const v1, 0x7f0e0063

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v2, v1}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->access$10(Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;Landroid/widget/TextView;)V

    .line 395
    iget-object v2, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight$7;->this$0:Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;

    const v1, 0x7f0e0064

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v2, v1}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->access$11(Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;Landroid/widget/TextView;)V

    .line 396
    iget-object v1, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight$7;->this$0:Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;

    invoke-static {v1}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->access$12(Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;)V

    .line 398
    new-instance v1, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight$7$1;

    invoke-direct {v1, p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight$7$1;-><init>(Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight$7;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 404
    new-instance v1, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight$7$2;

    invoke-direct {v1, p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight$7$2;-><init>(Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight$7;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 412
    return-void
.end method
