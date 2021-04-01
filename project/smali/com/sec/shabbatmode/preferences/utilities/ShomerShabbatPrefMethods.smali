.class public Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatPrefMethods;
.super Ljava/lang/Object;
.source "ShomerShabbatPrefMethods.java"


# static fields
.field static final TAG:Ljava/lang/String; = "Shabbat ShabbatModePrefMethods"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blockAllConnectivity(Ljava/lang/Boolean;Landroid/content/Context;)V
    .locals 1
    .param p0, "block"    # Ljava/lang/Boolean;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 176
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0, p1}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatPrefMethods;->setBlockWifiMode(ZLandroid/content/Context;)V

    .line 177
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0, p1}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatPrefMethods;->setBlockBluetoothMode(ZLandroid/content/Context;)V

    .line 178
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0, p1}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatPrefMethods;->setBlockDataMode(ZLandroid/content/Context;)V

    .line 179
    return-void
.end method

.method public static enableOrDisableAlarm(ZLandroid/content/Context;)V
    .locals 8
    .param p0, "isChecked"    # Z
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 267
    invoke-static {}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUtilities;->isOSLollipopOrUp()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_8

    .line 269
    invoke-static {p1}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUserPrefsUtils;->getDormantModeSwitchPreference(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v2

    .line 270
    .local v2, "dormanSwitchState":Ljava/lang/Boolean;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "dormant_disable_alarm_and_timer"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v5, :cond_3

    move v4, v5

    :goto_0
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 271
    .local v0, "alarmAndTimerState":Ljava/lang/Boolean;
    invoke-static {p1}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUserPrefsUtils;->getDormantModeAlwaysPreference(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v1

    .line 273
    .local v1, "dormanAlways":Ljava/lang/Boolean;
    if-nez p0, :cond_1

    .line 274
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 275
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_2

    .line 276
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "dormant_disable_alarm_and_timer"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 287
    :cond_1
    if-eqz p0, :cond_7

    .line 288
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 308
    .end local v0    # "alarmAndTimerState":Ljava/lang/Boolean;
    .end local v1    # "dormanAlways":Ljava/lang/Boolean;
    .end local v2    # "dormanSwitchState":Ljava/lang/Boolean;
    :cond_2
    :goto_1
    return-void

    .restart local v2    # "dormanSwitchState":Ljava/lang/Boolean;
    :cond_3
    move v4, v6

    .line 270
    goto :goto_0

    .line 291
    .restart local v0    # "alarmAndTimerState":Ljava/lang/Boolean;
    .restart local v1    # "dormanAlways":Ljava/lang/Boolean;
    :cond_4
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_5

    .line 292
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "dormant_switch_onoff"

    invoke-static {v4, v6, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 294
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_6

    .line 295
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "dormant_disable_alarm_and_timer"

    invoke-static {v4, v6, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 297
    :cond_6
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_7

    .line 298
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "dormant_always"

    invoke-static {v4, v6, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 302
    :cond_7
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.settings.DORMANTMODE_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 303
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {p1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .line 305
    .end local v0    # "alarmAndTimerState":Ljava/lang/Boolean;
    .end local v1    # "dormanAlways":Ljava/lang/Boolean;
    .end local v2    # "dormanSwitchState":Ljava/lang/Boolean;
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_8
    if-eqz p0, :cond_2

    .line 306
    invoke-static {p1}, Lcom/sec/shabbatmode/preferences/utilities/ClockAlarmUtilities;->disableAllAlarms(Landroid/content/Context;)V

    goto :goto_1
.end method

.method public static enableOrDisableLed(ZLandroid/content/Context;)V
    .locals 8
    .param p0, "isChecked"    # Z
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 318
    invoke-static {}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUtilities;->isOSLollipopOrUp()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_8

    .line 320
    invoke-static {p1}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUserPrefsUtils;->getDormantModeSwitchPreference(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v1

    .line 321
    .local v1, "dormanSwitchState":Ljava/lang/Boolean;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "dormant_disable_led_indicator"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v5, :cond_3

    move v4, v5

    :goto_0
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 322
    .local v3, "ledIndicatorState":Ljava/lang/Boolean;
    invoke-static {p1}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUserPrefsUtils;->getDormantModeAlwaysPreference(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    .line 324
    .local v0, "dormanAlways":Ljava/lang/Boolean;
    if-nez p0, :cond_1

    .line 325
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 326
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_2

    .line 327
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "dormant_disable_led_indicator"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 338
    :cond_1
    if-eqz p0, :cond_7

    .line 339
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 360
    .end local v0    # "dormanAlways":Ljava/lang/Boolean;
    .end local v1    # "dormanSwitchState":Ljava/lang/Boolean;
    .end local v3    # "ledIndicatorState":Ljava/lang/Boolean;
    :cond_2
    :goto_1
    return-void

    .restart local v1    # "dormanSwitchState":Ljava/lang/Boolean;
    :cond_3
    move v4, v6

    .line 321
    goto :goto_0

    .line 342
    .restart local v0    # "dormanAlways":Ljava/lang/Boolean;
    .restart local v3    # "ledIndicatorState":Ljava/lang/Boolean;
    :cond_4
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_5

    .line 343
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "dormant_switch_onoff"

    invoke-static {v4, v6, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 345
    :cond_5
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_6

    .line 346
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "dormant_disable_led_indicator"

    invoke-static {v4, v6, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 348
    :cond_6
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_7

    .line 349
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "dormant_always"

    invoke-static {v4, v6, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 353
    :cond_7
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.settings.DORMANTMODE_CHANGED"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 354
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .line 357
    .end local v0    # "dormanAlways":Ljava/lang/Boolean;
    .end local v1    # "dormanSwitchState":Ljava/lang/Boolean;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "ledIndicatorState":Ljava/lang/Boolean;
    :cond_8
    if-eqz p0, :cond_2

    .line 358
    invoke-static {p1}, Lcom/sec/shabbatmode/preferences/utilities/LedIndicatorUtilities;->disableLed(Landroid/content/Context;)V

    goto :goto_1
.end method

.method public static getMobileDataState(Landroid/content/Context;)I
    .locals 15
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 506
    const/4 v8, 0x0

    .line 507
    .local v8, "mobileDataState":I
    invoke-static {}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUtilities;->isOSLollipopOrUp()Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-nez v10, :cond_2

    .line 508
    const-string v10, "connectivity"

    invoke-virtual {p0, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 510
    .local v1, "cm":Landroid/net/ConnectivityManager;
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 511
    .local v2, "cmClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v10, "getMobileDataEnabled"

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Class;

    invoke-virtual {v2, v10, v13}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 512
    .local v6, "method":Ljava/lang/reflect/Method;
    const/4 v10, 0x1

    invoke-virtual {v6, v10}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 513
    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {v6, v1, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 514
    .local v0, "boolean1":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    if-eqz v10, :cond_1

    move v8, v11

    .end local v0    # "boolean1":Ljava/lang/Boolean;
    .end local v1    # "cm":Landroid/net/ConnectivityManager;
    .end local v2    # "cmClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "method":Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    move v12, v8

    .line 533
    :goto_1
    return v12

    .restart local v0    # "boolean1":Ljava/lang/Boolean;
    .restart local v1    # "cm":Landroid/net/ConnectivityManager;
    .restart local v2    # "cmClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v6    # "method":Ljava/lang/reflect/Method;
    :cond_1
    move v8, v12

    .line 514
    goto :goto_0

    .line 515
    .end local v0    # "boolean1":Ljava/lang/Boolean;
    .end local v2    # "cmClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v3

    .line 516
    .local v3, "e":Ljava/lang/Exception;
    const-string v10, "Shabbat ShabbatModePrefMethods"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v13, "getMobileDataPref "

    invoke-direct {v11, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 520
    .end local v1    # "cm":Landroid/net/ConnectivityManager;
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_2
    sget-boolean v10, Lcom/sec/shabbatmode/Globals;->mInLightMode:Z

    if-nez v10, :cond_0

    .line 522
    :try_start_1
    const-string v10, "phone"

    invoke-virtual {p0, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/telephony/TelephonyManager;

    .line 523
    .local v9, "telephonyService":Landroid/telephony/TelephonyManager;
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    const-string v13, "getDataEnabled"

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Class;

    invoke-virtual {v10, v13, v14}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 524
    .local v5, "getMobileDataEnabledMethod":Ljava/lang/reflect/Method;
    if-eqz v5, :cond_0

    .line 525
    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {v5, v9, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v7

    .line 526
    .local v7, "mobileDataEnabled":Z
    if-eqz v7, :cond_3

    move v8, v11

    :goto_2
    goto :goto_0

    :cond_3
    move v8, v12

    goto :goto_2

    .line 529
    .end local v5    # "getMobileDataEnabledMethod":Ljava/lang/reflect/Method;
    .end local v7    # "mobileDataEnabled":Z
    .end local v9    # "telephonyService":Landroid/telephony/TelephonyManager;
    :catch_1
    move-exception v4

    .line 530
    .local v4, "ex":Ljava/lang/Exception;
    const-string v10, "Shabbat ShabbatModePrefMethods"

    const-string v11, "Error getting mobile data state"

    invoke-static {v10, v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static muteSystemSounds(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 31
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 32
    .local v0, "audioManager":Landroid/media/AudioManager;
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 33
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v2, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 34
    return-void
.end method

.method public static putTheDeviceToSleepWithDelay(Landroid/content/Context;I)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "delay"    # I

    .prologue
    .line 363
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 366
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatPrefMethods$1;

    invoke-direct {v1, p0}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatPrefMethods$1;-><init>(Landroid/content/Context;)V

    .line 371
    int-to-long v2, p1

    .line 366
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 372
    return-void
.end method

.method public static setAirplaneModeSettings(Landroid/content/Context;Landroid/content/SharedPreferences;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;

    .prologue
    .line 457
    sget-boolean v2, Lcom/sec/shabbatmode/Globals;->mInLightMode:Z

    if-nez v2, :cond_0

    .line 458
    const-string v2, "AIRPLANE_MODE_ON"

    const/4 v3, 0x0

    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 459
    .local v1, "isOn":I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 460
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 461
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "state"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 462
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 464
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "isOn":I
    :cond_0
    return-void
.end method

.method public static setAllowedListInDormant(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "smAllowedMode"    # Ljava/lang/String;

    .prologue
    .line 113
    invoke-static {}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUtilities;->isOSLollipopOrUp()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 114
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dormant_allow_list"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 115
    const-string v0, "Shabbat ShabbatModePrefMethods"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setAllowedListInDormant "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a008f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    invoke-static {p0}, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListUtilities;->getShabbatCustomContactsList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListUtilities;->switchDormantListToShabbatMode(Landroid/content/Context;Ljava/util/List;)V

    .line 121
    :cond_0
    return-void
.end method

.method public static setBlockBluetoothMode(ZLandroid/content/Context;)V
    .locals 2
    .param p0, "block"    # Z
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 200
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 201
    .local v0, "bluetoothAdapter":Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    .line 202
    .local v1, "isEnabled":Z
    if-eqz p0, :cond_0

    if-eqz v1, :cond_0

    .line 203
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 205
    :cond_0
    return-void
.end method

.method public static setBlockCallsMode(ZLjava/lang/String;Landroid/content/Context;)V
    .locals 9
    .param p0, "isChecked"    # Z
    .param p1, "smAllowedString"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 62
    invoke-static {}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUtilities;->isOSLollipopOrUp()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_9

    .line 63
    invoke-static {p2}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUserPrefsUtils;->getDormantModeSwitchPreference(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v1

    .line 64
    .local v1, "dormanSwitchState":Ljava/lang/Boolean;
    invoke-static {p2}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUserPrefsUtils;->getDormantModeAlwaysPreference(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    .line 65
    .local v0, "dormanAlways":Ljava/lang/Boolean;
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 66
    const-string v8, "dormant_disable_incoming_calls"

    .line 65
    invoke-static {v5, v8, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v6, :cond_1

    move v5, v6

    :goto_0
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 67
    .local v3, "dormantDisableInComingCalls":Ljava/lang/Boolean;
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "dormant_allow_list"

    invoke-static {v5, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 69
    .local v2, "dormantAllowedMode":Ljava/lang/String;
    if-nez p0, :cond_3

    .line 70
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_2

    .line 105
    .end local v0    # "dormanAlways":Ljava/lang/Boolean;
    .end local v1    # "dormanSwitchState":Ljava/lang/Boolean;
    .end local v2    # "dormantAllowedMode":Ljava/lang/String;
    .end local v3    # "dormantDisableInComingCalls":Ljava/lang/Boolean;
    :cond_0
    :goto_1
    return-void

    .restart local v0    # "dormanAlways":Ljava/lang/Boolean;
    .restart local v1    # "dormanSwitchState":Ljava/lang/Boolean;
    :cond_1
    move v5, v7

    .line 65
    goto :goto_0

    .line 73
    .restart local v2    # "dormantAllowedMode":Ljava/lang/String;
    .restart local v3    # "dormantDisableInComingCalls":Ljava/lang/Boolean;
    :cond_2
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 74
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "dormant_disable_incoming_calls"

    invoke-static {v5, v8, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 78
    :cond_3
    if-eqz p0, :cond_8

    .line 79
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 80
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 81
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 82
    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 83
    invoke-static {p2, p1}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatPrefMethods;->setAllowedListInDormant(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 87
    :cond_4
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_5

    .line 88
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v7, "dormant_switch_onoff"

    invoke-static {v5, v7, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 90
    :cond_5
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_6

    .line 91
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v7, "dormant_disable_incoming_calls"

    invoke-static {v5, v7, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 93
    :cond_6
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_7

    .line 94
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v7, "dormant_always"

    invoke-static {v5, v7, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 96
    :cond_7
    invoke-static {p2, p1}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatPrefMethods;->setAllowedListInDormant(Landroid/content/Context;Ljava/lang/String;)V

    .line 98
    :cond_8
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.settings.DORMANTMODE_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 99
    .local v4, "intent":Landroid/content/Intent;
    invoke-virtual {p2, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .line 101
    .end local v0    # "dormanAlways":Ljava/lang/Boolean;
    .end local v1    # "dormanSwitchState":Ljava/lang/Boolean;
    .end local v2    # "dormantAllowedMode":Ljava/lang/String;
    .end local v3    # "dormantDisableInComingCalls":Ljava/lang/Boolean;
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_9
    if-eqz p0, :cond_0

    .line 102
    invoke-static {p2}, Lcom/sec/shabbatmode/preferences/utilities/ZenModeUtilities;->setInterruptionsNone(Landroid/content/Context;)V

    .line 103
    invoke-static {p2}, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListUtilities;->getAllowedPhoneNumbers(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/shabbatmode/ShabbatModeApplication;->setAllowedNumbers(Ljava/util/ArrayList;)V

    goto :goto_1
.end method

.method public static setBlockDataMode(ZLandroid/content/Context;)V
    .locals 14
    .param p0, "block"    # Z
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 213
    invoke-static {}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUtilities;->isOSLollipopOrUp()Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 215
    :try_start_0
    const-string v9, "phone"

    invoke-virtual {p1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/TelephonyManager;

    .line 216
    .local v8, "telephonyService":Landroid/telephony/TelephonyManager;
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    const-string v10, "setDataEnabled"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Class;

    const/4 v12, 0x0

    sget-object v13, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v13, v11, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 217
    .local v7, "setMobileDataEnabledMethod":Ljava/lang/reflect/Method;
    if-eqz v7, :cond_0

    .line 218
    const/4 v9, 0x1

    new-array v10, v9, [Ljava/lang/Object;

    const/4 v11, 0x0

    if-eqz p0, :cond_1

    const/4 v9, 0x0

    :goto_0
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v10, v11

    invoke-virtual {v7, v8, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    .end local v7    # "setMobileDataEnabledMethod":Ljava/lang/reflect/Method;
    .end local v8    # "telephonyService":Landroid/telephony/TelephonyManager;
    :cond_0
    :goto_1
    return-void

    .line 218
    .restart local v7    # "setMobileDataEnabledMethod":Ljava/lang/reflect/Method;
    .restart local v8    # "telephonyService":Landroid/telephony/TelephonyManager;
    :cond_1
    const/4 v9, 0x1

    goto :goto_0

    .line 221
    .end local v7    # "setMobileDataEnabledMethod":Ljava/lang/reflect/Method;
    .end local v8    # "telephonyService":Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v3

    .line 222
    .local v3, "ex":Ljava/lang/Exception;
    const-string v9, "Shabbat ShabbatModePrefMethods"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Error setting mobile data state "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 227
    .end local v3    # "ex":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    const-string v9, "connectivity"

    invoke-virtual {p1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 228
    .local v0, "conman":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 229
    .local v1, "conmanClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v9, "mService"

    invoke-virtual {v1, v9}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    .line 230
    .local v6, "iConnectivityManagerField":Ljava/lang/reflect/Field;
    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 231
    invoke-virtual {v6, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 232
    .local v4, "iConnectivityManager":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 233
    .local v5, "iConnectivityManagerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v9, "setMobileDataEnabled"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    sget-object v12, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v11

    invoke-virtual {v5, v9, v10}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 234
    .restart local v7    # "setMobileDataEnabledMethod":Ljava/lang/reflect/Method;
    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 235
    const/4 v9, 0x1

    new-array v10, v9, [Ljava/lang/Object;

    const/4 v11, 0x0

    if-eqz p0, :cond_3

    const/4 v9, 0x0

    :goto_2
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v10, v11

    invoke-virtual {v7, v4, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 237
    .end local v0    # "conman":Landroid/net/ConnectivityManager;
    .end local v1    # "conmanClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "iConnectivityManager":Ljava/lang/Object;
    .end local v5    # "iConnectivityManagerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "iConnectivityManagerField":Ljava/lang/reflect/Field;
    .end local v7    # "setMobileDataEnabledMethod":Ljava/lang/reflect/Method;
    :catch_1
    move-exception v2

    .line 238
    .local v2, "e":Ljava/lang/Exception;
    const-string v9, "Shabbat ShabbatModePrefMethods"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "**********"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 235
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "conman":Landroid/net/ConnectivityManager;
    .restart local v1    # "conmanClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v4    # "iConnectivityManager":Ljava/lang/Object;
    .restart local v5    # "iConnectivityManagerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v6    # "iConnectivityManagerField":Ljava/lang/reflect/Field;
    .restart local v7    # "setMobileDataEnabledMethod":Ljava/lang/reflect/Method;
    :cond_3
    const/4 v9, 0x1

    goto :goto_2
.end method

.method public static setBlockNotificationsMode(ZLandroid/content/Context;)V
    .locals 8
    .param p0, "isChecked"    # Z
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 131
    invoke-static {}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUtilities;->isOSLollipopOrUp()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_1

    .line 133
    invoke-static {p1}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUserPrefsUtils;->getDormantModeSwitchPreference(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v1

    .line 134
    .local v1, "dormanSwitchState":Ljava/lang/Boolean;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 135
    const-string v7, "dormant_disable_notifications"

    .line 134
    invoke-static {v4, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v5, :cond_2

    move v4, v5

    :goto_0
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 136
    .local v2, "dormantDisableNotifications":Ljava/lang/Boolean;
    invoke-static {p1}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUserPrefsUtils;->getDormantModeAlwaysPreference(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    .line 138
    .local v0, "dormanAlways":Ljava/lang/Boolean;
    if-nez p0, :cond_0

    .line 139
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_0

    .line 140
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 141
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "dormant_disable_notifications"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 149
    :cond_0
    if-eqz p0, :cond_6

    .line 150
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 168
    .end local v0    # "dormanAlways":Ljava/lang/Boolean;
    .end local v1    # "dormanSwitchState":Ljava/lang/Boolean;
    .end local v2    # "dormantDisableNotifications":Ljava/lang/Boolean;
    :cond_1
    :goto_1
    return-void

    .restart local v1    # "dormanSwitchState":Ljava/lang/Boolean;
    :cond_2
    move v4, v6

    .line 134
    goto :goto_0

    .line 153
    .restart local v0    # "dormanAlways":Ljava/lang/Boolean;
    .restart local v2    # "dormantDisableNotifications":Ljava/lang/Boolean;
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_4

    .line 154
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "dormant_switch_onoff"

    invoke-static {v4, v6, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 156
    :cond_4
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_5

    .line 157
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "dormant_disable_notifications"

    invoke-static {v4, v6, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 159
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_6

    .line 160
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "dormant_always"

    invoke-static {v4, v6, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 164
    :cond_6
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.settings.DORMANTMODE_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 166
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {p1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method public static setBlockWifiMode(ZLandroid/content/Context;)V
    .locals 3
    .param p0, "block"    # Z
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 187
    const-string v2, "wifi"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 188
    .local v1, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    .line 189
    .local v0, "isEnabled":Z
    if-eqz p0, :cond_0

    if-eqz v0, :cond_0

    .line 190
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 192
    :cond_0
    return-void
.end method

.method public static setBlockWifiTethering(ZLandroid/content/Context;)V
    .locals 10
    .param p0, "block"    # Z
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 244
    const-string v6, "wifi"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 246
    .local v3, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    .line 247
    .local v2, "methods":[Ljava/lang/reflect/Method;
    array-length v7, v2

    move v6, v4

    :goto_0
    if-lt v6, v7, :cond_0

    .line 258
    :goto_1
    return-void

    .line 247
    :cond_0
    aget-object v1, v2, v6

    .line 248
    .local v1, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "setWifiApEnabled"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 250
    const/4 v6, 0x2

    :try_start_0
    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const/4 v8, 0x0

    aput-object v8, v6, v7

    const/4 v7, 0x1

    if-eqz p0, :cond_1

    :goto_2
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v6, v7

    invoke-virtual {v1, v3, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 251
    :catch_0
    move-exception v0

    .line 252
    .local v0, "ex":Ljava/lang/Exception;
    const-string v4, "Shabbat ShabbatModePrefMethods"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "**********"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_1
    move v4, v5

    .line 250
    goto :goto_2

    .line 247
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method

.method public static setBluetooth(Landroid/content/SharedPreferences;)V
    .locals 4
    .param p0, "sharedPreferences"    # Landroid/content/SharedPreferences;

    .prologue
    .line 390
    const-string v2, "BLUETOOTH_STATE"

    const/4 v3, 0x0

    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 391
    .local v1, "onBoolean":I
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 393
    .local v0, "bluetoothAdapter":Landroid/bluetooth/BluetoothAdapter;
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 394
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 399
    :goto_0
    return-void

    .line 397
    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    goto :goto_0
.end method

.method public static setDormantMode(Landroid/content/Context;Landroid/content/SharedPreferences;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;

    .prologue
    const/4 v5, 0x0

    .line 473
    invoke-static {}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUtilities;->isOSLollipopOrUp()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    .line 475
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "dormant_switch_onoff"

    const-string v4, "dormant_switch_onoff"

    invoke-interface {p1, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 476
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "dormant_always"

    const-string v4, "dormant_always"

    invoke-interface {p1, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 477
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "dormant_disable_alarm_and_timer"

    const-string v4, "dormant_disable_alarm_and_timer"

    invoke-interface {p1, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 478
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "dormant_disable_incoming_calls"

    const-string v4, "dormant_disable_incoming_calls"

    invoke-interface {p1, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 479
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "dormant_disable_led_indicator"

    const-string v4, "dormant_disable_led_indicator"

    invoke-interface {p1, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 480
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "dormant_disable_notifications"

    const-string v4, "dormant_disable_notifications"

    invoke-interface {p1, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 481
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_active_roaming"

    const-string v4, "wifi_active_roaming"

    invoke-interface {p1, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 482
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "dormant_allow_list"

    const-string v4, "dormant_allow_list"

    const-string v5, "None"

    invoke-interface {p1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 483
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "dormant_start_hour"

    const-string v4, "dormant_start_hour"

    const-string v5, ""

    invoke-interface {p1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 484
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "dormant_start_min"

    const-string v4, "dormant_start_min"

    const-string v5, ""

    invoke-interface {p1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 485
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "dormant_end_hour"

    const-string v4, "dormant_end_hour"

    const-string v5, ""

    invoke-interface {p1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 486
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "dormant_end_min"

    const-string v4, "dormant_end_min"

    const-string v5, ""

    invoke-interface {p1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 488
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0005

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a008c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 489
    .local v1, "smAllowedMode":Ljava/lang/String;
    const-string v2, "Shabbat ShabbatModePrefMethods"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "setAllowedListInDormant "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a008f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 492
    const-string v2, "Shabbat ShabbatModePrefMethods"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "setAllowedListInDormant2 "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    invoke-static {p0}, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListUtilities;->resetDormantListToOriginal(Landroid/content/Context;)V

    .line 496
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.settings.DORMANTMODE_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 497
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 503
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "smAllowedMode":Ljava/lang/String;
    :goto_0
    return-void

    .line 500
    :cond_1
    invoke-static {p0}, Lcom/sec/shabbatmode/preferences/utilities/ClockAlarmUtilities;->enableAlarms(Landroid/content/Context;)V

    .line 501
    invoke-static {p0}, Lcom/sec/shabbatmode/preferences/utilities/LedIndicatorUtilities;->enableLedFromPreferences(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static setFlightMode(ZLandroid/content/Context;)V
    .locals 4
    .param p0, "airplane_mode_on"    # Z
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    sget-boolean v1, Lcom/sec/shabbatmode/Globals;->mInLightMode:Z

    if-nez v1, :cond_0

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    if-eqz p0, :cond_1

    const-string v1, "1"

    :goto_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 44
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 45
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "state"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 46
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 48
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void

    .line 43
    :cond_1
    const-string v1, "0"

    goto :goto_0
.end method

.method public static setMobileData(Landroid/content/Context;Landroid/content/SharedPreferences;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;

    .prologue
    const/4 v1, 0x1

    .line 380
    const-string v2, "MOBILE_DATA_STATE"

    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 381
    .local v0, "onBoolean":I
    if-nez v0, :cond_0

    :goto_0
    invoke-static {v1, p0}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatPrefMethods;->setBlockDataMode(ZLandroid/content/Context;)V

    .line 382
    return-void

    .line 381
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static setScreenSettings(Landroid/content/Context;Landroid/content/SharedPreferences;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;

    .prologue
    const/4 v4, 0x0

    .line 408
    const-string v3, "SCREEN_BRIGHTNESS"

    invoke-interface {p1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 409
    .local v0, "brightness":I
    const-string v3, "SCREEN_BRIGHTNESS_MODE"

    invoke-interface {p1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 410
    .local v1, "brightnessMode":I
    const-string v3, "SCREEN_TIMEOUT"

    const/16 v4, 0x3a98

    invoke-interface {p1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 412
    .local v2, "screenTimeOut":I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 413
    const-string v4, "screen_brightness"

    .line 412
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 414
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 415
    const-string v4, "screen_brightness_mode"

    .line 414
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 416
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 417
    const-string v4, "screen_off_timeout"

    .line 416
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 418
    return-void
.end method

.method public static setSoundsSettings(Landroid/content/Context;Landroid/content/SharedPreferences;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;

    .prologue
    const/4 v3, 0x0

    .line 427
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 428
    .local v0, "mAudioManager":Landroid/media/AudioManager;
    const-string v1, "RINGER_MODE"

    invoke-interface {p1, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 429
    const/4 v1, 0x2

    const-string v2, "RINGER_VOLUME"

    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 430
    const/4 v1, 0x1

    const-string v2, "AUDIO_STREAM_SYSTEM"

    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 431
    const/4 v1, 0x5

    const-string v2, "AUDIO_STREAM_NOITFICATION"

    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 432
    return-void
.end method

.method public static setWifi(Landroid/content/Context;Landroid/content/SharedPreferences;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 385
    const-string v1, "WIFI_STATE"

    invoke-interface {p1, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 386
    .local v0, "wifiOn":I
    const-string v1, "wifi"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    if-ne v0, v2, :cond_0

    :goto_0
    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 387
    return-void

    :cond_0
    move v2, v3

    .line 386
    goto :goto_0
.end method

.method public static silenceRinger(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 439
    sget-boolean v1, Lcom/sec/shabbatmode/Globals;->mInLightMode:Z

    if-eqz v1, :cond_0

    .line 440
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 441
    .local v0, "audioManager":Landroid/media/AudioManager;
    invoke-static {}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUtilities;->isOSLollipop2OrUp()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 442
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 448
    .end local v0    # "audioManager":Landroid/media/AudioManager;
    :cond_0
    :goto_0
    return-void

    .line 445
    .restart local v0    # "audioManager":Landroid/media/AudioManager;
    :cond_1
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0
.end method
