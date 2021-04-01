.class Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$10;
.super Landroid/preference/Preference;
.source "ShomerShabbatMainFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->initLocationRadioButtonsPreference()V
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
    iput-object p1, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$10;->this$0:Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;

    .line 505
    invoke-direct {p0, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$0(Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$10;)Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;
    .locals 1

    .prologue
    .line 505
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$10;->this$0:Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;

    return-object v0
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const v5, 0x7f0e0016

    const v6, 0x7f0e0015

    .line 509
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 511
    const v7, 0x7f0e0014

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioGroup;

    .line 512
    .local v4, "radioGroup":Landroid/widget/RadioGroup;
    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    .line 513
    .local v1, "button1":Landroid/widget/RadioButton;
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    .line 514
    .local v2, "button2":Landroid/widget/RadioButton;
    iget-object v7, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$10;->this$0:Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;

    invoke-static {v7}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->access$16(Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;)V

    .line 516
    iget-object v7, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$10;->this$0:Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;

    invoke-static {v7}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->access$17(Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;)Landroid/preference/CheckBoxPreference;

    move-result-object v7

    invoke-virtual {v7}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 517
    .local v5, "viewID":I
    :goto_0
    invoke-virtual {v4, v5}, Landroid/widget/RadioGroup;->check(I)V

    .line 519
    new-instance v6, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$10$1;

    invoke-direct {v6, p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$10$1;-><init>(Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$10;)V

    invoke-virtual {v4, v6}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 534
    const v6, 0x7f0e0017

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 535
    .local v0, "autoTextView":Landroid/widget/TextView;
    iget-object v6, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$10;->this$0:Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;

    invoke-virtual {v6}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0086

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 536
    new-instance v6, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$10$2;

    invoke-direct {v6, p0, v1}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$10$2;-><init>(Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$10;Landroid/widget/RadioButton;)V

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 545
    const v6, 0x7f0e0018

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 546
    .local v3, "manualTextView":Landroid/widget/TextView;
    iget-object v6, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$10;->this$0:Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;

    invoke-virtual {v6}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a00b4

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 547
    new-instance v6, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$10$3;

    invoke-direct {v6, p0, v2}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$10$3;-><init>(Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$10;Landroid/widget/RadioButton;)V

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 566
    return-void

    .end local v0    # "autoTextView":Landroid/widget/TextView;
    .end local v3    # "manualTextView":Landroid/widget/TextView;
    .end local v5    # "viewID":I
    :cond_0
    move v5, v6

    .line 516
    goto :goto_0
.end method
