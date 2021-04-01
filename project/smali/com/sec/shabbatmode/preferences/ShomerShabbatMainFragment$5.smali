.class Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$5;
.super Landroid/preference/Preference;
.source "ShomerShabbatMainFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->initConnectivityPreference()V
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
    iput-object p1, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$5;->this$0:Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;

    .line 342
    invoke-direct {p0, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$0(Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$5;)Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$5;->this$0:Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;

    return-object v0
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 346
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 348
    const v2, 0x7f0e0014

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    .line 349
    .local v0, "radioGroup":Landroid/widget/RadioGroup;
    new-instance v2, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$5$1;

    invoke-direct {v2, p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$5$1;-><init>(Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$5;)V

    invoke-virtual {v0, v2}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 357
    iget-object v2, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$5;->this$0:Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;

    invoke-static {v2}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->access$8(Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    const v1, 0x7f0e0016

    .line 358
    .local v1, "viewID":I
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    .line 360
    const v2, 0x7f0e0017

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$5$2;

    invoke-direct {v3, p0, v0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$5$2;-><init>(Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$5;Landroid/widget/RadioGroup;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 369
    const v2, 0x7f0e0018

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$5$3;

    invoke-direct {v3, p0, v0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$5$3;-><init>(Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$5;Landroid/widget/RadioGroup;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 378
    return-void

    .line 357
    .end local v1    # "viewID":I
    :cond_0
    const v1, 0x7f0e0015

    goto :goto_0
.end method
