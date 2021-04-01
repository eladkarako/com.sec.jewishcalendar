.class Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight$9;
.super Landroid/preference/Preference;
.source "ShomerShabbatMainFragmentLight.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->initLocationRadioButtonsPreference()V
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
    iput-object p1, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight$9;->this$0:Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;

    .line 458
    invoke-direct {p0, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$0(Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight$9;)Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;
    .locals 1

    .prologue
    .line 458
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight$9;->this$0:Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;

    return-object v0
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const v5, 0x7f0e0016

    const v6, 0x7f0e0015

    .line 462
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 464
    const v7, 0x7f0e0014

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioGroup;

    .line 465
    .local v4, "radioGroup":Landroid/widget/RadioGroup;
    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    .line 466
    .local v1, "button1":Landroid/widget/RadioButton;
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    .line 467
    .local v2, "button2":Landroid/widget/RadioButton;
    iget-object v7, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight$9;->this$0:Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;

    invoke-static {v7}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->access$13(Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;)V

    .line 469
    iget-object v7, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight$9;->this$0:Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;

    invoke-static {v7}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->access$14(Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;)Landroid/preference/CheckBoxPreference;

    move-result-object v7

    invoke-virtual {v7}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 470
    .local v5, "viewID":I
    :goto_0
    invoke-virtual {v4, v5}, Landroid/widget/RadioGroup;->check(I)V

    .line 472
    new-instance v6, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight$9$1;

    invoke-direct {v6, p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight$9$1;-><init>(Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight$9;)V

    invoke-virtual {v4, v6}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 487
    const v6, 0x7f0e0017

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 488
    .local v0, "autoTextView":Landroid/widget/TextView;
    iget-object v6, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight$9;->this$0:Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;

    invoke-virtual {v6}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0086

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 489
    new-instance v6, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight$9$2;

    invoke-direct {v6, p0, v1}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight$9$2;-><init>(Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight$9;Landroid/widget/RadioButton;)V

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 498
    const v6, 0x7f0e0018

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 499
    .local v3, "manualTextView":Landroid/widget/TextView;
    iget-object v6, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight$9;->this$0:Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;

    invoke-virtual {v6}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a00b4

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 500
    new-instance v6, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight$9$3;

    invoke-direct {v6, p0, v2}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight$9$3;-><init>(Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight$9;Landroid/widget/RadioButton;)V

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 519
    return-void

    .end local v0    # "autoTextView":Landroid/widget/TextView;
    .end local v3    # "manualTextView":Landroid/widget/TextView;
    .end local v5    # "viewID":I
    :cond_0
    move v5, v6

    .line 469
    goto :goto_0
.end method
