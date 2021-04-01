.class Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight$9$1;
.super Ljava/lang/Object;
.source "ShomerShabbatMainFragmentLight.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight$9;->onBindView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight$9;


# direct methods
.method constructor <init>(Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight$9;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight$9$1;->this$1:Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight$9;

    .line 472
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 4
    .param p1, "group"    # Landroid/widget/RadioGroup;
    .param p2, "checkedId"    # I

    .prologue
    const v3, 0x7f0e0015

    const/4 v1, 0x1

    .line 476
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight$9$1;->this$1:Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight$9;

    invoke-static {v0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight$9;->access$0(Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight$9;)Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;

    move-result-object v2

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->access$15(Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;Ljava/lang/Boolean;)V

    .line 477
    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 478
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight$9$1;->this$1:Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight$9;

    invoke-static {v0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight$9;->access$0(Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight$9;)Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->access$0(Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUserPrefsUtils;->resetManualLocationIndex(Landroid/content/Context;)V

    .line 479
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight$9$1;->this$1:Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight$9;

    invoke-static {v0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight$9;->access$0(Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight$9;)Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->searchForLocation(Ljava/lang/Boolean;)V

    .line 484
    :goto_1
    return-void

    .line 476
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 482
    :cond_1
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight$9$1;->this$1:Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight$9;

    invoke-static {v0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight$9;->access$0(Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight$9;)Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->access$16(Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;)V

    goto :goto_1
.end method
