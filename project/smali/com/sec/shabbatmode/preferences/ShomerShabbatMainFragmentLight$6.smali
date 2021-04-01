.class Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight$6;
.super Ljava/lang/Object;
.source "ShomerShabbatMainFragmentLight.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->initAllowedContactsPref()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;


# direct methods
.method constructor <init>(Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight$6;->this$0:Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;

    .line 351
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    .line 355
    const-string v2, "Shabbat ShomerShabbatMainFragmentLight"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v1, "New value: "

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    iget-object v1, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight$6;->this$0:Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;

    invoke-static {v1}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->access$6(Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;)Landroid/preference/ListPreference;

    move-result-object v2

    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 358
    .local v0, "index":I
    iget-object v1, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight$6;->this$0:Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;

    invoke-static {v1, v0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->access$7(Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;I)V

    .line 360
    iget-object v1, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight$6;->this$0:Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;

    invoke-static {v1, v0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->access$8(Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;I)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 361
    iget-object v1, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight$6;->this$0:Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;

    invoke-static {v1}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->access$9(Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;)V

    .line 362
    iget-object v1, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight$6;->this$0:Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;

    invoke-virtual {v1}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "dnd_show_alert"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUserPrefsUtils;->saveBooleanToSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 366
    :cond_0
    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    iget-object v1, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight$6;->this$0:Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;

    invoke-virtual {v1}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a008f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 367
    iget-object v1, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight$6;->this$0:Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;

    invoke-virtual {v1}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/sec/shabbatmode/preferences/ShomerShabbatActivity;

    invoke-virtual {v1}, Lcom/sec/shabbatmode/preferences/ShomerShabbatActivity;->replaceToListFragment()V

    .line 370
    :cond_1
    return v4
.end method
