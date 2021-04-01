.class public Lcom/sec/shabbatmode/activities/ScreenLockActivity;
.super Landroid/app/Activity;
.source "ScreenLockActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Shabbat ScreenLockActivitys"


# instance fields
.field private closeActivityReceiver:Landroid/content/BroadcastReceiver;

.field private mHomeKeyLocker:Lcom/sec/shabbatmode/preferences/utilities/HomeKeyLocker;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 30
    new-instance v0, Lcom/sec/shabbatmode/preferences/utilities/HomeKeyLocker;

    invoke-direct {v0}, Lcom/sec/shabbatmode/preferences/utilities/HomeKeyLocker;-><init>()V

    iput-object v0, p0, Lcom/sec/shabbatmode/activities/ScreenLockActivity;->mHomeKeyLocker:Lcom/sec/shabbatmode/preferences/utilities/HomeKeyLocker;

    .line 94
    new-instance v0, Lcom/sec/shabbatmode/activities/ScreenLockActivity$1;

    invoke-direct {v0, p0}, Lcom/sec/shabbatmode/activities/ScreenLockActivity$1;-><init>(Lcom/sec/shabbatmode/activities/ScreenLockActivity;)V

    iput-object v0, p0, Lcom/sec/shabbatmode/activities/ScreenLockActivity;->closeActivityReceiver:Landroid/content/BroadcastReceiver;

    .line 27
    return-void
.end method

.method static synthetic access$0(Lcom/sec/shabbatmode/activities/ScreenLockActivity;)V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/sec/shabbatmode/activities/ScreenLockActivity;->unlock()V

    return-void
.end method

.method static synthetic access$1(Lcom/sec/shabbatmode/activities/ScreenLockActivity;)V
    .locals 0

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/sec/shabbatmode/activities/ScreenLockActivity;->unRegisterReceivers()V

    return-void
.end method

.method private unRegisterReceivers()V
    .locals 3

    .prologue
    .line 115
    :try_start_0
    iget-object v1, p0, Lcom/sec/shabbatmode/activities/ScreenLockActivity;->closeActivityReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 116
    iget-object v1, p0, Lcom/sec/shabbatmode/activities/ScreenLockActivity;->closeActivityReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/sec/shabbatmode/activities/ScreenLockActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Shabbat ScreenLockActivitys"

    const-string v2, "unregister exeption: "

    invoke-static {v1, v2}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private unlock()V
    .locals 2

    .prologue
    .line 107
    :try_start_0
    iget-object v1, p0, Lcom/sec/shabbatmode/activities/ScreenLockActivity;->mHomeKeyLocker:Lcom/sec/shabbatmode/preferences/utilities/HomeKeyLocker;

    invoke-virtual {v1}, Lcom/sec/shabbatmode/preferences/utilities/HomeKeyLocker;->unlock()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :goto_0
    return-void

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 84
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 85
    const v0, 0x7f030002

    invoke-virtual {p0, v0}, Lcom/sec/shabbatmode/activities/ScreenLockActivity;->setContentView(I)V

    .line 86
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v7, 0x7f0e000d

    .line 34
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    const v5, 0x7f030002

    invoke-virtual {p0, v5}, Lcom/sec/shabbatmode/activities/ScreenLockActivity;->setContentView(I)V

    .line 36
    const-string v5, "Shabbat ScreenLockActivitys"

    const-string v6, "ScreenLockActivity on create"

    invoke-static {v5, v6}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-virtual {p0}, Lcom/sec/shabbatmode/activities/ScreenLockActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/high16 v6, 0x80000

    invoke-virtual {v5, v6}, Landroid/view/Window;->addFlags(I)V

    .line 39
    invoke-virtual {p0}, Lcom/sec/shabbatmode/activities/ScreenLockActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/high16 v6, 0x400000

    invoke-virtual {v5, v6}, Landroid/view/Window;->addFlags(I)V

    .line 40
    invoke-virtual {p0}, Lcom/sec/shabbatmode/activities/ScreenLockActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x400

    invoke-virtual {v5, v6}, Landroid/view/Window;->addFlags(I)V

    .line 42
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 43
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v5, "close_lock_activity"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 44
    iget-object v5, p0, Lcom/sec/shabbatmode/activities/ScreenLockActivity;->closeActivityReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v5, v0}, Lcom/sec/shabbatmode/activities/ScreenLockActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 49
    invoke-virtual {p0}, Lcom/sec/shabbatmode/activities/ScreenLockActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0002

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUserPrefsUtils;->getBooleanFromSharedPreferences(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 56
    .local v1, "isScreenLockModeOn":Z
    invoke-virtual {p0}, Lcom/sec/shabbatmode/activities/ScreenLockActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    const-string v6, "fonts/DroidSansHebrew-Bold.ttf"

    invoke-static {v5, v6}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    .line 57
    .local v2, "tf":Landroid/graphics/Typeface;
    invoke-virtual {p0}, Lcom/sec/shabbatmode/activities/ScreenLockActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    const-string v6, "fonts/DroidSansHebrew-Regular.ttf"

    invoke-static {v5, v6}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    .line 59
    .local v3, "tf1":Landroid/graphics/Typeface;
    invoke-static {}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUtilities;->isHebrewLocale()Z

    move-result v5

    if-nez v5, :cond_0

    .line 60
    invoke-virtual {p0}, Lcom/sec/shabbatmode/activities/ScreenLockActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    const-string v6, "fonts/SamsungSans-Bold.ttf"

    invoke-static {v5, v6}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    .line 61
    invoke-virtual {p0}, Lcom/sec/shabbatmode/activities/ScreenLockActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    const-string v6, "fonts/SamsungSans-Regular.ttf"

    invoke-static {v5, v6}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    .line 64
    :cond_0
    const v5, 0x7f0e0002

    invoke-virtual {p0, v5}, Lcom/sec/shabbatmode/activities/ScreenLockActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 65
    invoke-virtual {p0, v7}, Lcom/sec/shabbatmode/activities/ScreenLockActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 67
    if-eqz v1, :cond_1

    const/4 v4, 0x0

    .line 68
    .local v4, "visibility":I
    :goto_0
    invoke-virtual {p0, v7}, Lcom/sec/shabbatmode/activities/ScreenLockActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    .line 69
    return-void

    .line 67
    .end local v4    # "visibility":I
    :cond_1
    const/4 v4, 0x4

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 90
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 91
    invoke-direct {p0}, Lcom/sec/shabbatmode/activities/ScreenLockActivity;->unlock()V

    .line 92
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 73
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 79
    iget-object v0, p0, Lcom/sec/shabbatmode/activities/ScreenLockActivity;->mHomeKeyLocker:Lcom/sec/shabbatmode/preferences/utilities/HomeKeyLocker;

    invoke-virtual {v0, p0}, Lcom/sec/shabbatmode/preferences/utilities/HomeKeyLocker;->lock(Landroid/app/Activity;)V

    .line 80
    return-void
.end method
