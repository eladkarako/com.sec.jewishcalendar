.class Lcom/sec/jewishapps/JewishAppsMainActivity$2;
.super Ljava/lang/Object;
.source "JewishAppsMainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/jewishapps/JewishAppsMainActivity;->initButtons()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/jewishapps/JewishAppsMainActivity;


# direct methods
.method constructor <init>(Lcom/sec/jewishapps/JewishAppsMainActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/jewishapps/JewishAppsMainActivity$2;->this$0:Lcom/sec/jewishapps/JewishAppsMainActivity;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sec/jewishapps/JewishAppsMainActivity$2;->this$0:Lcom/sec/jewishapps/JewishAppsMainActivity;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUtilities;->saveDefaultLauncherToPreferences(Landroid/content/Context;I)V

    .line 62
    iget-object v0, p0, Lcom/sec/jewishapps/JewishAppsMainActivity$2;->this$0:Lcom/sec/jewishapps/JewishAppsMainActivity;

    invoke-static {v0}, Lcom/sec/jewishapps/JewishAppsMainActivity;->access$1(Lcom/sec/jewishapps/JewishAppsMainActivity;)V

    .line 63
    return-void
.end method
