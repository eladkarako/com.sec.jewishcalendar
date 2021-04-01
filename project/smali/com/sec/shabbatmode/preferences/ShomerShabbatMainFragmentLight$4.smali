.class Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight$4;
.super Ljava/lang/Object;
.source "ShomerShabbatMainFragmentLight.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->getAllPreferences()V
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
    iput-object p1, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight$4;->this$0:Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;

    .line 325
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 329
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight$4;->this$0:Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;

    invoke-virtual {v0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUtilities;->haveAdminRights(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight$4;->this$0:Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;

    invoke-virtual {v0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->activateAdminRights()V

    .line 332
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
