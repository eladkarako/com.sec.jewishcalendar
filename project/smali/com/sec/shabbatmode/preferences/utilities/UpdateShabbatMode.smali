.class public Lcom/sec/shabbatmode/preferences/utilities/UpdateShabbatMode;
.super Landroid/os/AsyncTask;
.source "UpdateShabbatMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "Shabbat UpdateShabbatMode"


# instance fields
.field mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/sec/shabbatmode/preferences/utilities/UpdateShabbatMode;->mContext:Landroid/content/Context;

    .line 20
    return-void
.end method

.method private setSettingsLightMode()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 46
    iget-object v1, p0, Lcom/sec/shabbatmode/preferences/utilities/UpdateShabbatMode;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 50
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    iget-object v1, p0, Lcom/sec/shabbatmode/preferences/utilities/UpdateShabbatMode;->mContext:Landroid/content/Context;

    invoke-static {v1, v4}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUserPrefsUtils;->setShabbatMode(Landroid/content/Context;Z)V

    .line 51
    iget-object v1, p0, Lcom/sec/shabbatmode/preferences/utilities/UpdateShabbatMode;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUserPrefsUtils;->saveUserGeneralSettings(Landroid/content/Context;)V

    .line 54
    iget-object v1, p0, Lcom/sec/shabbatmode/preferences/utilities/UpdateShabbatMode;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatPrefMethods;->muteSystemSounds(Landroid/content/Context;)V

    .line 57
    iget-object v1, p0, Lcom/sec/shabbatmode/preferences/utilities/UpdateShabbatMode;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_off_timeout"

    const/16 v3, 0x2710

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 64
    iget-object v1, p0, Lcom/sec/shabbatmode/preferences/utilities/UpdateShabbatMode;->mContext:Landroid/content/Context;

    invoke-static {v4, v1}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatPrefMethods;->setBlockWifiTethering(ZLandroid/content/Context;)V

    .line 65
    iget-object v1, p0, Lcom/sec/shabbatmode/preferences/utilities/UpdateShabbatMode;->mContext:Landroid/content/Context;

    invoke-static {v4, v1}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatPrefMethods;->setBlockBluetoothMode(ZLandroid/content/Context;)V

    .line 70
    iget-object v1, p0, Lcom/sec/shabbatmode/preferences/utilities/UpdateShabbatMode;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f0a0000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iget-object v2, p0, Lcom/sec/shabbatmode/preferences/utilities/UpdateShabbatMode;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatPrefMethods;->enableOrDisableAlarm(ZLandroid/content/Context;)V

    .line 71
    iget-object v1, p0, Lcom/sec/shabbatmode/preferences/utilities/UpdateShabbatMode;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0009

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iget-object v2, p0, Lcom/sec/shabbatmode/preferences/utilities/UpdateShabbatMode;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatPrefMethods;->enableOrDisableLed(ZLandroid/content/Context;)V

    .line 72
    invoke-static {}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUtilities;->isOSLollipopOrUp()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 73
    iget-object v1, p0, Lcom/sec/shabbatmode/preferences/utilities/UpdateShabbatMode;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatPrefMethods;->silenceRinger(Landroid/content/Context;)V

    .line 76
    :cond_0
    iget-object v1, p0, Lcom/sec/shabbatmode/preferences/utilities/UpdateShabbatMode;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 77
    iget-object v2, p0, Lcom/sec/shabbatmode/preferences/utilities/UpdateShabbatMode;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a008c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 76
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 77
    iget-object v2, p0, Lcom/sec/shabbatmode/preferences/utilities/UpdateShabbatMode;->mContext:Landroid/content/Context;

    .line 75
    invoke-static {v4, v1, v2}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatPrefMethods;->setBlockCallsMode(ZLjava/lang/String;Landroid/content/Context;)V

    .line 79
    iget-object v1, p0, Lcom/sec/shabbatmode/preferences/utilities/UpdateShabbatMode;->mContext:Landroid/content/Context;

    invoke-static {v4, v1}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatPrefMethods;->setBlockNotificationsMode(ZLandroid/content/Context;)V

    .line 81
    iget-object v1, p0, Lcom/sec/shabbatmode/preferences/utilities/UpdateShabbatMode;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 82
    iget-object v1, p0, Lcom/sec/shabbatmode/preferences/utilities/UpdateShabbatMode;->mContext:Landroid/content/Context;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/shabbatmode/preferences/utilities/PowerSavingUtilities;->enablePowerSaver(Landroid/content/Context;Ljava/lang/Boolean;)V

    .line 84
    :cond_1
    return-void
.end method

.method private setSettingsNormalMode()V
    .locals 9

    .prologue
    const v8, 0x7f0a0001

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 87
    iget-object v2, p0, Lcom/sec/shabbatmode/preferences/utilities/UpdateShabbatMode;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 92
    .local v1, "sharedPreferences":Landroid/content/SharedPreferences;
    iget-object v2, p0, Lcom/sec/shabbatmode/preferences/utilities/UpdateShabbatMode;->mContext:Landroid/content/Context;

    invoke-static {v2, v7}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUserPrefsUtils;->setShabbatMode(Landroid/content/Context;Z)V

    .line 93
    iget-object v2, p0, Lcom/sec/shabbatmode/preferences/utilities/UpdateShabbatMode;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUserPrefsUtils;->saveUserGeneralSettings(Landroid/content/Context;)V

    .line 96
    iget-object v2, p0, Lcom/sec/shabbatmode/preferences/utilities/UpdateShabbatMode;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatPrefMethods;->muteSystemSounds(Landroid/content/Context;)V

    .line 99
    iget-object v2, p0, Lcom/sec/shabbatmode/preferences/utilities/UpdateShabbatMode;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_off_timeout"

    const/16 v4, 0x2710

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 106
    iget-object v2, p0, Lcom/sec/shabbatmode/preferences/utilities/UpdateShabbatMode;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a000a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 107
    .local v0, "flightModeBoolean":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iget-object v3, p0, Lcom/sec/shabbatmode/preferences/utilities/UpdateShabbatMode;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatPrefMethods;->setFlightMode(ZLandroid/content/Context;)V

    .line 108
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    .line 109
    iget-object v2, p0, Lcom/sec/shabbatmode/preferences/utilities/UpdateShabbatMode;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 110
    iget-object v3, p0, Lcom/sec/shabbatmode/preferences/utilities/UpdateShabbatMode;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0005

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/shabbatmode/preferences/utilities/UpdateShabbatMode;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a008c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/shabbatmode/preferences/utilities/UpdateShabbatMode;->mContext:Landroid/content/Context;

    .line 109
    invoke-static {v2, v3, v4}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatPrefMethods;->setBlockCallsMode(ZLjava/lang/String;Landroid/content/Context;)V

    .line 111
    iget-object v2, p0, Lcom/sec/shabbatmode/preferences/utilities/UpdateShabbatMode;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/shabbatmode/preferences/utilities/UpdateShabbatMode;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatPrefMethods;->blockAllConnectivity(Ljava/lang/Boolean;Landroid/content/Context;)V

    .line 112
    iget-object v2, p0, Lcom/sec/shabbatmode/preferences/utilities/UpdateShabbatMode;->mContext:Landroid/content/Context;

    invoke-static {v7, v2}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatPrefMethods;->setBlockWifiTethering(ZLandroid/content/Context;)V

    .line 119
    :cond_0
    iget-object v2, p0, Lcom/sec/shabbatmode/preferences/utilities/UpdateShabbatMode;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f0a0000

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iget-object v3, p0, Lcom/sec/shabbatmode/preferences/utilities/UpdateShabbatMode;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatPrefMethods;->enableOrDisableAlarm(ZLandroid/content/Context;)V

    .line 120
    iget-object v2, p0, Lcom/sec/shabbatmode/preferences/utilities/UpdateShabbatMode;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0009

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iget-object v3, p0, Lcom/sec/shabbatmode/preferences/utilities/UpdateShabbatMode;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatPrefMethods;->enableOrDisableLed(ZLandroid/content/Context;)V

    .line 121
    iget-object v2, p0, Lcom/sec/shabbatmode/preferences/utilities/UpdateShabbatMode;->mContext:Landroid/content/Context;

    invoke-static {v7, v2}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatPrefMethods;->setBlockNotificationsMode(ZLandroid/content/Context;)V

    .line 123
    iget-object v2, p0, Lcom/sec/shabbatmode/preferences/utilities/UpdateShabbatMode;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a000d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 124
    iget-object v2, p0, Lcom/sec/shabbatmode/preferences/utilities/UpdateShabbatMode;->mContext:Landroid/content/Context;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/shabbatmode/preferences/utilities/PowerSavingUtilities;->enablePowerSaver(Landroid/content/Context;Ljava/lang/Boolean;)V

    .line 126
    :cond_1
    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/shabbatmode/preferences/utilities/UpdateShabbatMode;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 24
    const-string v0, "Shabbat UpdateShabbatMode"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Starting doInBackground isCallActive "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/shabbatmode/preferences/utilities/UpdateShabbatMode;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUtilities;->isCallActive(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/utilities/UpdateShabbatMode;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUserPrefsUtils;->getShabbatModeOn(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 30
    sget-boolean v0, Lcom/sec/shabbatmode/Globals;->mInLightMode:Z

    if-nez v0, :cond_2

    .line 31
    invoke-direct {p0}, Lcom/sec/shabbatmode/preferences/utilities/UpdateShabbatMode;->setSettingsNormalMode()V

    .line 38
    :cond_0
    :goto_0
    const-string v0, "Shabbat UpdateShabbatMode"

    const-string v1, "End doInBackground "

    invoke-static {v0, v1}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/utilities/UpdateShabbatMode;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUtilities;->isCallActive(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 40
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sec/shabbatmode/ShabbatModeApplication;->mInCallBoolean:Ljava/lang/Boolean;

    .line 42
    :cond_1
    const/4 v0, 0x0

    return-object v0

    .line 34
    :cond_2
    invoke-direct {p0}, Lcom/sec/shabbatmode/preferences/utilities/UpdateShabbatMode;->setSettingsLightMode()V

    goto :goto_0
.end method
