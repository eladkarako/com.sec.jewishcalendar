.class Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$15;
.super Ljava/lang/Object;
.source "ShomerShabbatMainFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->showHelpDialog()V
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
    iput-object p1, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$15;->this$0:Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;

    .line 800
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 804
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$15;->this$0:Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;

    invoke-virtual {v0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "dont_show_help"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUserPrefsUtils;->saveBooleanToSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 805
    return-void
.end method
