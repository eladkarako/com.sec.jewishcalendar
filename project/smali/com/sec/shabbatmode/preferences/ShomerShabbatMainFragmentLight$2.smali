.class Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight$2;
.super Ljava/lang/Object;
.source "ShomerShabbatMainFragmentLight.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->initShabbatSwitchBtn()V
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
    iput-object p1, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight$2;->this$0:Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;

    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "arg0"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 253
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight$2;->this$0:Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;

    invoke-virtual {v0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUserPrefsUtils;->enableShabbatMode(Landroid/content/Context;Z)V

    .line 259
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight$2;->this$0:Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->access$2(Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;Ljava/lang/Boolean;)V

    .line 265
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight$2;->this$0:Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;

    invoke-static {v0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->access$3(Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 266
    if-eqz p2, :cond_2

    .line 267
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight$2;->this$0:Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;

    invoke-virtual {v0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUtilities;->haveAdminRights(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 268
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight$2;->this$0:Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;

    invoke-virtual {v0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->activateAdminRights()V

    .line 277
    :goto_0
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight$2;->this$0:Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;

    invoke-virtual {v0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "START_NOTIFICATION"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUserPrefsUtils;->saveBooleanToSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 278
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight$2;->this$0:Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;

    invoke-virtual {v0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUtilities;->sendCandlesNotificationBroadcast(Landroid/content/Context;Ljava/lang/Boolean;)V

    .line 280
    :cond_0
    const-string v1, "Shabbat ShomerShabbatMainFragmentLight"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "Switch is currently + "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_3

    const-string v0, "ON"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    return-void

    .line 271
    :cond_1
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight$2;->this$0:Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->access$4(Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;Z)V

    goto :goto_0

    .line 275
    :cond_2
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight$2;->this$0:Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;

    invoke-virtual {v0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUserPrefsUtils;->disableShabbatMode(Landroid/content/Context;)V

    goto :goto_0

    .line 280
    :cond_3
    const-string v0, "OFF"

    goto :goto_1
.end method
