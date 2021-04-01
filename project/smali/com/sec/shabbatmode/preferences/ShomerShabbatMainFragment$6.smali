.class Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$6;
.super Ljava/lang/Object;
.source "ShomerShabbatMainFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->initAllowedContactsPref()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;


# direct methods
.method constructor <init>(Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$6;->this$0:Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;

    .line 387
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 391
    const-string v1, "Shabbat MainPreferencesFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "New value: "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    iget-object v1, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$6;->this$0:Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;

    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$6;->this$0:Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;

    invoke-static {v0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->access$9(Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;)Landroid/preference/ListPreference;

    move-result-object v2

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    invoke-static {v1, v0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->access$10(Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;I)V

    move-object v0, p2

    .line 402
    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$6;->this$0:Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;

    invoke-virtual {v1}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a008c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 403
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$6;->this$0:Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->access$6(Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;Ljava/lang/Boolean;)V

    .line 406
    :cond_0
    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$6;->this$0:Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;

    invoke-virtual {v0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a008f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 407
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$6;->this$0:Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;

    invoke-virtual {v0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/sec/shabbatmode/preferences/ShomerShabbatActivity;

    invoke-virtual {v0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatActivity;->replaceToListFragment()V

    .line 409
    :cond_1
    const/4 v0, 0x1

    return v0
.end method
