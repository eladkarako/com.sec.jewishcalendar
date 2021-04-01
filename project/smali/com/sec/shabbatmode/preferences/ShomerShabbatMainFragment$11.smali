.class Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$11;
.super Ljava/lang/Object;
.source "ShomerShabbatMainFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


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
.method constructor <init>(Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$11;->this$0:Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;

    .line 576
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 580
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

    .line 581
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$11;->this$0:Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;

    invoke-static {v0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->access$0(Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$11;->this$0:Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;

    invoke-virtual {v1}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00b4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 582
    iget-object v2, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$11;->this$0:Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;

    invoke-static {v2}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->access$19(Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;)Landroid/preference/ListPreference;

    move-result-object v2

    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {v2, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    .line 581
    invoke-static {v0, v1, v2}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUserPrefsUtils;->saveIntToSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 583
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$11;->this$0:Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;

    invoke-static {v0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->access$15(Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;)V

    .line 584
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$11;->this$0:Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->searchForLocation(Ljava/lang/Boolean;)V

    .line 585
    const/4 v0, 0x1

    return v0
.end method
