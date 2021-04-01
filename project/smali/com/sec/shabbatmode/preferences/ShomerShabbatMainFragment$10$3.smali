.class Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$10$3;
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

.field private final synthetic val$button2:Landroid/widget/RadioButton;


# direct methods
.method constructor <init>(Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$10;Landroid/widget/RadioButton;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$10$3;->this$1:Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$10;

    iput-object p2, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$10$3;->val$button2:Landroid/widget/RadioButton;

    .line 547
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 551
    iget-object v2, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$10$3;->this$1:Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$10;

    invoke-static {v2}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$10;->access$0(Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$10;)Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;

    move-result-object v2

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->access$18(Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;Ljava/lang/Boolean;)V

    .line 552
    iget-object v2, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$10$3;->this$1:Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$10;

    invoke-static {v2}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$10;->access$0(Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$10;)Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->access$15(Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;)V

    .line 553
    iget-object v2, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$10$3;->this$1:Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$10;

    invoke-static {v2}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$10;->access$0(Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$10;)Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;

    move-result-object v2

    const-string v4, "preferenceScreen"

    invoke-virtual {v2, v4}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    .line 554
    .local v0, "preferenceScreen":Landroid/preference/PreferenceScreen;
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v7

    .line 555
    .local v7, "listAdapter":Landroid/widget/ListAdapter;
    invoke-interface {v7}, Landroid/widget/ListAdapter;->getCount()I

    move-result v6

    .line 557
    .local v6, "itemsCount":I
    const/4 v3, 0x0

    .local v3, "itemNumber":I
    :goto_0
    if-lt v3, v6, :cond_0

    .line 563
    :goto_1
    iget-object v1, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$10$3;->val$button2:Landroid/widget/RadioButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 564
    return-void

    .line 558
    :cond_0
    invoke-interface {v7, v3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    iget-object v4, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$10$3;->this$1:Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$10;

    invoke-static {v4}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$10;->access$0(Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$10;)Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->access$19(Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;)Landroid/preference/ListPreference;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 559
    const-wide/16 v4, 0x0

    move-object v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/preference/PreferenceScreen;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    goto :goto_1

    .line 557
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method
