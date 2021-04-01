.class public Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUserPrefsUtils;
.super Ljava/lang/Object;
.source "ShomerShabbatUserPrefsUtils.java"


# static fields
.field static final TAG:Ljava/lang/String; = "Shabbat ShabbatModeUserPrefsUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static activateShabbatMode(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 107
    const-string v1, "Shabbat ShabbatModeUserPrefsUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "called activateShabbatMode getShabbatModeOn = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUserPrefsUtils;->getShabbatModeOn(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 108
    const-string v3, " \nScreenOnReceiverWrapperService.mBisRunning = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/sec/shabbatmode/services/ScreenOnReceiverWrapperService;->mBisRunning:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 107
    invoke-static {v1, v2}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-static {}, Lcom/sec/shabbatmode/ShabbatModeApplication;->stopZmanimGetterLocationManager()V

    .line 115
    sget-boolean v1, Lcom/sec/shabbatmode/services/ScreenOnReceiverWrapperService;->mBisRunning:Z

    if-nez v1, :cond_0

    .line 116
    const-string v1, "Shabbat ShabbatModeUserPrefsUtils"

    const-string v2, "Starting ScreenOnReceiverWrapperService"

    invoke-static {v1, v2}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/shabbatmode/services/ScreenOnReceiverWrapperService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 118
    .local v0, "screenOnListenerService":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 124
    .end local v0    # "screenOnListenerService":Landroid/content/Intent;
    :cond_0
    const/16 v1, 0x5dc

    invoke-static {p0, v1}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatPrefMethods;->putTheDeviceToSleepWithDelay(Landroid/content/Context;I)V

    .line 130
    new-instance v1, Lcom/sec/shabbatmode/preferences/utilities/UpdateShabbatMode;

    invoke-direct {v1, p0}, Lcom/sec/shabbatmode/preferences/utilities/UpdateShabbatMode;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/sec/shabbatmode/preferences/utilities/UpdateShabbatMode;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 131
    return-void
.end method

.method public static disableShabbatMode(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 337
    invoke-static {p0, v0}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUserPrefsUtils;->enableShabbatMode(Landroid/content/Context;Z)V

    .line 338
    invoke-static {}, Lcom/sec/shabbatmode/ShabbatModeApplication;->cancelShabbatAlarms()V

    .line 339
    invoke-static {}, Lcom/sec/shabbatmode/ShabbatModeApplication;->stopZmanimGetterLocationManager()V

    .line 340
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUtilities;->sendCandlesNotificationBroadcast(Landroid/content/Context;Ljava/lang/Boolean;)V

    .line 341
    return-void
.end method

.method public static enableShabbatMode(Landroid/content/Context;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isOn"    # Z

    .prologue
    .line 40
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 41
    const-string v1, "SHABBAT_MODE_ENABLED"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 42
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 43
    return-void
.end method

.method public static exitShabbatMode(Ljava/lang/Boolean;Landroid/content/Context;)V
    .locals 5
    .param p0, "shouldDeactivateShabbatModeSwitch"    # Ljava/lang/Boolean;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 295
    invoke-static {p1}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUserPrefsUtils;->getShabbatModeOn(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 296
    const-string v3, "Shabbat ShabbatModeUserPrefsUtils"

    const-string v4, "exitShabbatMode"

    invoke-static {v3, v4}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/sec/shabbatmode/services/ScreenOnReceiverWrapperService;

    invoke-direct {v1, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 301
    .local v1, "screenOnListenerService":Landroid/content/Intent;
    invoke-virtual {p1, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 304
    invoke-static {p1}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUserPrefsUtils;->setUserGeneralSettings(Landroid/content/Context;)V

    .line 305
    invoke-static {p1, v2}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUserPrefsUtils;->setUserDataSaved(Landroid/content/Context;Z)V

    .line 306
    invoke-static {p1, v2}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUserPrefsUtils;->setShabbatMode(Landroid/content/Context;Z)V

    .line 312
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUtilities;->sendCandlesNotificationBroadcast(Landroid/content/Context;Ljava/lang/Boolean;)V

    .line 319
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 320
    .local v0, "local1":Landroid/content/Intent;
    const-string v2, "close_lock_activity"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 321
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 324
    .end local v0    # "local1":Landroid/content/Intent;
    .end local v1    # "screenOnListenerService":Landroid/content/Intent;
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 325
    invoke-static {p1}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUserPrefsUtils;->disableShabbatMode(Landroid/content/Context;)V

    .line 326
    const-string v2, "Shabbat ShabbatModeUserPrefsUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "shouldDeactivateShabbatModeSwitch "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    :cond_1
    return-void

    .line 312
    .restart local v1    # "screenOnListenerService":Landroid/content/Intent;
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private static getAndSaveAllPreferences(Landroid/content/Context;)V
    .locals 24
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 218
    .line 219
    const-string v21, "audio"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    .line 218
    check-cast v13, Landroid/media/AudioManager;

    .line 220
    .local v13, "mAudioManager":Landroid/media/AudioManager;
    invoke-virtual {v13}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v16

    .line 221
    .local v16, "ringerMode":I
    const/16 v21, 0x2

    move/from16 v0, v21

    invoke-virtual {v13, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v17

    .line 222
    .local v17, "ringerVolume":I
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v13, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v19

    .line 223
    .local v19, "systemVolume":I
    const/16 v21, 0x5

    move/from16 v0, v21

    invoke-virtual {v13, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v15

    .line 225
    .local v15, "notifVolume":I
    const/16 v18, 0x0

    .line 227
    .local v18, "screenTimeOut":I
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "screen_off_timeout"

    invoke-static/range {v21 .. v22}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v18

    .line 232
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    .line 233
    const-string v22, "screen_brightness"

    const/16 v23, 0x64

    .line 232
    invoke-static/range {v21 .. v23}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 235
    .local v4, "brightness":I
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    .line 236
    const-string v22, "screen_brightness_mode"

    .line 237
    const/16 v23, 0x0

    .line 235
    invoke-static/range {v21 .. v23}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 239
    .local v5, "brightnessMode":I
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    .line 240
    const-string v22, "wifi_on"

    const/16 v23, 0x0

    .line 239
    invoke-static/range {v21 .. v23}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v20

    .line 242
    .local v20, "wifiState":I
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    .line 243
    const-string v22, "bluetooth_on"

    const/16 v23, 0x0

    .line 242
    invoke-static/range {v21 .. v23}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 245
    .local v3, "bluetoothState":I
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    .line 246
    const-string v22, "airplane_mode_on"

    const/16 v23, 0x0

    .line 245
    invoke-static/range {v21 .. v23}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 248
    .local v7, "flighModeState":I
    invoke-static/range {p0 .. p0}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatPrefMethods;->getMobileDataState(Landroid/content/Context;)I

    move-result v14

    .line 253
    .local v14, "mobileDataState":I
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    .line 254
    const-string v22, "led_indicator_charing"

    const/16 v23, 0x0

    .line 253
    invoke-static/range {v21 .. v23}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 255
    .local v8, "led_charging":I
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    .line 256
    const-string v22, "led_indicator_low_battery"

    const/16 v23, 0x0

    .line 255
    invoke-static/range {v21 .. v23}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    .line 257
    .local v9, "led_low":I
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    .line 258
    const-string v22, "led_indicator_missed_event"

    const/16 v23, 0x0

    .line 257
    invoke-static/range {v21 .. v23}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    .line 259
    .local v10, "led_missed":I
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    .line 260
    const-string v22, "led_indicator_voice_recording"

    const/16 v23, 0x0

    .line 259
    invoke-static/range {v21 .. v23}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    .line 261
    .local v12, "led_voice":I
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    .line 262
    const-string v22, "led_indicator_incoming_notification"

    const/16 v23, 0x0

    .line 261
    invoke-static/range {v21 .. v23}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    .line 264
    .local v11, "led_notification":I
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v21

    .line 265
    const-string v22, "WIFI_STATE"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v21

    .line 266
    const-string v22, "BLUETOOTH_STATE"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v21

    .line 267
    const-string v22, "SCREEN_BRIGHTNESS"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v21

    .line 268
    const-string v22, "SCREEN_BRIGHTNESS_MODE"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v21

    .line 269
    const-string v22, "SCREEN_TIMEOUT"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v18

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v21

    .line 270
    const-string v22, "AIRPLANE_MODE_ON"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v0, v1, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v21

    .line 271
    const-string v22, "RINGER_MODE"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v16

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v21

    .line 272
    const-string v22, "RINGER_VOLUME"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v17

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v21

    .line 273
    const-string v22, "AUDIO_STREAM_SYSTEM"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v19

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v21

    .line 274
    const-string v22, "AUDIO_STREAM_NOITFICATION"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v0, v1, v15}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v21

    .line 275
    const-string v22, "MOBILE_DATA_STATE"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v0, v1, v14}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v21

    .line 276
    const-string v22, "led_indicator_charing"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v0, v1, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v21

    .line 277
    const-string v22, "led_indicator_low_battery"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v0, v1, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v21

    .line 278
    const-string v22, "led_indicator_missed_event"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v0, v1, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v21

    .line 279
    const-string v22, "led_indicator_voice_recording"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v0, v1, v12}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v21

    .line 280
    const-string v22, "led_indicator_incoming_notification"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v0, v1, v11}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v21

    .line 282
    invoke-interface/range {v21 .. v21}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 283
    return-void

    .line 228
    .end local v3    # "bluetoothState":I
    .end local v4    # "brightness":I
    .end local v5    # "brightnessMode":I
    .end local v7    # "flighModeState":I
    .end local v8    # "led_charging":I
    .end local v9    # "led_low":I
    .end local v10    # "led_missed":I
    .end local v11    # "led_notification":I
    .end local v12    # "led_voice":I
    .end local v14    # "mobileDataState":I
    .end local v20    # "wifiState":I
    :catch_0
    move-exception v6

    .line 229
    .local v6, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v6}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method private static getAndSaveDormantMode(Landroid/content/Context;)V
    .locals 15
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v14, 0x0

    .line 151
    invoke-static {}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUtilities;->isOSLollipopOrUp()Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 152
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v12

    invoke-interface {v12}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v12

    .line 153
    const-string v13, "zen_mode"

    invoke-static {p0}, Lcom/sec/shabbatmode/preferences/utilities/ZenModeUtilities;->getInterruptionsMode(Landroid/content/Context;)I

    move-result v14

    invoke-interface {v12, v13, v14}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v12

    .line 154
    invoke-interface {v12}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 186
    :goto_0
    return-void

    .line 157
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "dormant_switch_onoff"

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    .line 158
    .local v10, "dormantSwitchOnOff":I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "dormant_always"

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 159
    .local v1, "dormantAlways":I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "dormant_disable_alarm_and_timer"

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 160
    .local v2, "dormantDisableAlarmAndTimer":I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "dormant_disable_incoming_calls"

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 161
    .local v3, "dormantDisableIncomingCalls":I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "dormant_disable_led_indicator"

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 162
    .local v4, "dormantDisableLedIndicator":I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "dormant_disable_notifications"

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 163
    .local v5, "dormantDisableNotifications":I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "wifi_active_roaming"

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    .line 164
    .local v11, "dormantWifiActiveRoaming":I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "dormant_allow_list"

    invoke-static {v12, v13}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 165
    .local v0, "dormantAllowedList":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "dormant_start_hour"

    invoke-static {v12, v13}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 166
    .local v8, "dormantStartHour":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "dormant_start_min"

    invoke-static {v12, v13}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 167
    .local v9, "dormantStartMinute":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "dormant_end_hour"

    invoke-static {v12, v13}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 168
    .local v6, "dormantEndHour":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "dormant_end_min"

    invoke-static {v12, v13}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 170
    .local v7, "dormantEndMinute":Ljava/lang/String;
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v12

    invoke-interface {v12}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v12

    .line 171
    const-string v13, "dormant_switch_onoff"

    invoke-interface {v12, v13, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v12

    .line 172
    const-string v13, "dormant_disable_incoming_calls"

    invoke-interface {v12, v13, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v12

    .line 173
    const-string v13, "dormant_disable_alarm_and_timer"

    invoke-interface {v12, v13, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v12

    .line 174
    const-string v13, "dormant_disable_led_indicator"

    invoke-interface {v12, v13, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v12

    .line 175
    const-string v13, "dormant_disable_notifications"

    invoke-interface {v12, v13, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v12

    .line 176
    const-string v13, "wifi_active_roaming"

    invoke-interface {v12, v13, v11}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v12

    .line 177
    const-string v13, "dormant_always"

    invoke-interface {v12, v13, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v12

    .line 178
    const-string v13, "dormant_allow_list"

    invoke-interface {v12, v13, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v12

    .line 179
    const-string v13, "dormant_start_hour"

    invoke-interface {v12, v13, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v12

    .line 180
    const-string v13, "dormant_start_min"

    invoke-interface {v12, v13, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v12

    .line 181
    const-string v13, "dormant_end_hour"

    invoke-interface {v12, v13, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v12

    .line 182
    const-string v13, "dormant_end_min"

    invoke-interface {v12, v13, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v12

    .line 184
    invoke-interface {v12}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0
.end method

.method public static getBooleanFromSharedPreferences(Landroid/content/Context;I)Ljava/lang/Boolean;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # I

    .prologue
    .line 559
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 560
    .local v0, "keyString":Ljava/lang/String;
    invoke-static {p0, v0}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUserPrefsUtils;->getBooleanFromSharedPreferences(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public static getBooleanFromSharedPreferences(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 563
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 564
    .local v1, "sharedPreferences":Landroid/content/SharedPreferences;
    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 565
    .local v0, "onBoolean":Ljava/lang/Boolean;
    return-object v0
.end method

.method public static getDormantModeAlwaysPreference(Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 208
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 209
    .local v1, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v4, "dormant_always"

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_0

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 210
    .local v0, "dormantSwitchBoolean":Ljava/lang/Boolean;
    return-object v0

    .end local v0    # "dormantSwitchBoolean":Ljava/lang/Boolean;
    :cond_0
    move v2, v3

    .line 209
    goto :goto_0
.end method

.method public static getDormantModeSwitchPreference(Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 196
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 197
    .local v1, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v4, "dormant_switch_onoff"

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_0

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 198
    .local v0, "dormantSwitchBoolean":Ljava/lang/Boolean;
    return-object v0

    .end local v0    # "dormantSwitchBoolean":Ljava/lang/Boolean;
    :cond_0
    move v2, v3

    .line 197
    goto :goto_0
.end method

.method public static getIntFromSharedPreferences(Landroid/content/Context;Ljava/lang/String;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 599
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 600
    .local v1, "sharedPreferences":Landroid/content/SharedPreferences;
    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 601
    .local v0, "num":I
    return v0
.end method

.method public static getIsInAutoUpdateMode(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 376
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 377
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    const v1, 0x7f0a0003

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static getIsInManualLocationMode(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 386
    invoke-static {p0}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUserPrefsUtils;->getIsInAutoUpdateMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 390
    :goto_0
    return v1

    .line 389
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 390
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    const v2, 0x7f0a000f

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_0
.end method

.method public static getLocationCoordinatesString(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 484
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 485
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v1, "COORDINATES_STRING"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getLocationString(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 480
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 481
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v1, "LOCATION_STRING"

    const v2, 0x7f0a008a

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getLongFromSharedPreferences(Landroid/content/Context;Ljava/lang/String;)J
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 573
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 574
    .local v2, "sharedPreferences":Landroid/content/SharedPreferences;
    const-wide/16 v4, 0x0

    invoke-interface {v2, p1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 575
    .local v0, "num":J
    return-wide v0
.end method

.method public static getManualLocationIndex(Landroid/content/Context;)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const v5, 0x7f0a00b4

    const/4 v4, -0x1

    .line 408
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 409
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v1, "Shabbat ShabbatModeUserPrefsUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getManualLocationIndex "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static getOriginalDormantList(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 446
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 447
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v1, "ORIGINAL_DORMANT_LIST"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getShabbatEndTimeInMillis(Landroid/content/Context;)J
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 499
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 500
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v1, "SHABBAT_END_TIME_LONG"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    return-wide v2
.end method

.method public static getShabbatEndTimeString(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 489
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 490
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v1, "SHABBAT_END_TIME_STRING"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getShabbatEntranceGregorianDateString(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 509
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 510
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v1, "SHABBAT_ENTRANCE_GREGORIAN_DATE_STRING"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getShabbatEntranceGregorianJustDateString(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 528
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 529
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v1, "SHABBAT_ENTRANCE_GREGORIAN_JUST_DATE_STRING"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getShabbatEntranceHebrewDateString(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 504
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 505
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v1, "SHABBAT_ENTRANCE_HEBREW_DATE_STRING"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getShabbatEntranceHebrewJustDateString(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 523
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 524
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v1, "SHABBAT_ENTRANCE_HEBREW_JUST_DATE_STRING"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getShabbatEntranceTimeInMillis(Landroid/content/Context;)J
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 494
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 495
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v1, "SHABBAT_ENTRANCE_TIME_LONG"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    return-wide v2
.end method

.method public static getShabbatEntranceTimeString(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 543
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 544
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v1, "SHABBAT_ENTRANCE_TIME_STRING"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getShabbatExitGregorianDateString(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 519
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 520
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v1, "SHABBAT_EXIT_GREGORIAN_DATE_STRING"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getShabbatExitGregorianJustDateString(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 538
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 539
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v1, "SHABBAT_EXIT_GREGORIAN_JUST_DATE_STRING"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getShabbatExitHebrewDateString(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 514
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 515
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v1, "SHABBAT_EXIT_HEBREW_DATE_STRING"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getShabbatExitHebrewJustDateString(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 533
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 534
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v1, "SHABBAT_EXIT_HEBREW_JUST_DATE_STRING"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getShabbatExitTimeString(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 548
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 549
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v1, "SHABBAT_END_TIME_STRING"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getShabbatModeEnabled(Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 28
    .local v1, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v2, "SHABBAT_MODE_ENABLED"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 29
    .local v0, "onBoolean":Ljava/lang/Boolean;
    return-object v0
.end method

.method public static getShabbatModeOn(Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 54
    .local v1, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v2, "SHABBAT_MODE_ON"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 55
    .local v0, "onBoolean":Ljava/lang/Boolean;
    return-object v0
.end method

.method public static getStringFromSharedPreferences(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 583
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 584
    .local v1, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v2, "none_saved"

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 585
    .local v0, "num":Ljava/lang/String;
    return-object v0
.end method

.method public static isUserDataSaved(Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 81
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 82
    .local v1, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v2, "USER_DATA_SAVED"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 83
    .local v0, "onBoolean":Ljava/lang/Boolean;
    return-object v0
.end method

.method public static resetManualLocationIndex(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const v5, 0x7f0a000e

    .line 418
    const-string v0, "Shabbat ShabbatModeUserPrefsUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "resetManualLocationIndex "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "-1"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 421
    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 422
    const v1, 0x7f0a00b4

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 423
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 424
    const-string v0, "Shabbat ShabbatModeUserPrefsUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "resetManualLocationIndex "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "-1"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    return-void
.end method

.method public static saveBooleanToSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Boolean;

    .prologue
    .line 568
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 569
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 570
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 571
    return-void
.end method

.method public static saveIntToSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 593
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 594
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 595
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 596
    return-void
.end method

.method public static saveLocation(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "location"    # Ljava/lang/String;
    .param p2, "coordinates"    # Ljava/lang/String;
    .param p3, "shabbatEntranceGregorianDate"    # Ljava/lang/String;
    .param p4, "shabbatEntranceGregorianJustDate"    # Ljava/lang/String;
    .param p5, "shabbatEntranceHebrewDate"    # Ljava/lang/String;
    .param p6, "shabbatEntranceHebrewJustDate"    # Ljava/lang/String;
    .param p7, "shabbatExitGregorianDate"    # Ljava/lang/String;
    .param p8, "shabbatExitGregorianJustDate"    # Ljava/lang/String;
    .param p9, "shabbatExitHebrewDate"    # Ljava/lang/String;
    .param p10, "shabbatExitHebrewJustDate"    # Ljava/lang/String;
    .param p11, "shabbatStartTime"    # Ljava/lang/String;
    .param p12, "shabbatEndTime"    # Ljava/lang/String;
    .param p13, "mShabbatEntranceInMillis"    # J
    .param p15, "mShabbatEndInMillis"    # J

    .prologue
    .line 461
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 462
    const-string v3, "SHABBAT_ENTRANCE_HEBREW_DATE_STRING"

    invoke-interface {v2, v3, p5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 463
    const-string v3, "SHABBAT_ENTRANCE_GREGORIAN_DATE_STRING"

    invoke-interface {v2, v3, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 464
    const-string v3, "SHABBAT_ENTRANCE_TIME_STRING"

    move-object/from16 v0, p11

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 465
    const-string v3, "SHABBAT_EXIT_HEBREW_DATE_STRING"

    invoke-interface {v2, v3, p9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 466
    const-string v3, "SHABBAT_EXIT_GREGORIAN_DATE_STRING"

    invoke-interface {v2, v3, p7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 467
    const-string v3, "SHABBAT_END_TIME_STRING"

    move-object/from16 v0, p12

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 468
    const-string v3, "SHABBAT_ENTRANCE_TIME_LONG"

    move-wide/from16 v0, p13

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 469
    const-string v3, "SHABBAT_END_TIME_LONG"

    move-wide/from16 v0, p15

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 470
    const-string v3, "COORDINATES_STRING"

    invoke-interface {v2, v3, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 471
    const-string v3, "LOCATION_STRING"

    invoke-interface {v2, v3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 472
    const-string v3, "SHABBAT_ENTRANCE_HEBREW_JUST_DATE_STRING"

    invoke-interface {v2, v3, p6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 473
    const-string v3, "SHABBAT_ENTRANCE_GREGORIAN_JUST_DATE_STRING"

    invoke-interface {v2, v3, p4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 474
    const-string v3, "SHABBAT_EXIT_GREGORIAN_JUST_DATE_STRING"

    invoke-interface {v2, v3, p8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 475
    const-string v3, "SHABBAT_EXIT_HEBREW_JUST_DATE_STRING"

    invoke-interface {v2, v3, p10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 476
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 477
    return-void
.end method

.method public static saveLongToSharedPreferences(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 578
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 579
    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 580
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 581
    return-void
.end method

.method public static saveOriginalDormantList(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dormantString"    # Ljava/lang/String;

    .prologue
    .line 434
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 435
    const-string v1, "ORIGINAL_DORMANT_LIST"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 436
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 437
    const-string v0, "Shabbat ShabbatModeUserPrefsUtils"

    const-string v1, "saveOriginalDormantList"

    invoke-static {v0, v1}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    return-void
.end method

.method public static saveStringToSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 588
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 589
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 590
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 591
    return-void
.end method

.method public static saveUserGeneralSettings(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 137
    invoke-static {p0}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUserPrefsUtils;->isUserDataSaved(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 139
    invoke-static {p0}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUserPrefsUtils;->getAndSaveDormantMode(Landroid/content/Context;)V

    .line 140
    invoke-static {p0}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUserPrefsUtils;->getAndSaveAllPreferences(Landroid/content/Context;)V

    .line 141
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUserPrefsUtils;->setUserDataSaved(Landroid/content/Context;Z)V

    .line 142
    invoke-static {p0}, Lcom/sec/shabbatmode/preferences/utilities/PowerSavingUtilities;->getAndSaveUserPowerPreferences(Landroid/content/Context;)V

    .line 144
    :cond_0
    return-void
.end method

.method public static setShabbatMode(Landroid/content/Context;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isOn"    # Z

    .prologue
    .line 66
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 67
    const-string v1, "SHABBAT_MODE_ON"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 68
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 69
    return-void
.end method

.method public static setUserDataSaved(Landroid/content/Context;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "saved"    # Z

    .prologue
    .line 93
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 94
    const-string v1, "USER_DATA_SAVED"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 95
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 96
    return-void
.end method

.method private static setUserGeneralSettings(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 348
    const-string v1, "Shabbat ShabbatModeUserPrefsUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setUserGeneralSettings isUserDataSaved = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUserPrefsUtils;->isUserDataSaved(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 355
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-static {p0}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUserPrefsUtils;->isUserDataSaved(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 356
    invoke-static {p0, v0}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatPrefMethods;->setSoundsSettings(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    .line 357
    invoke-static {p0, v0}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatPrefMethods;->setScreenSettings(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    .line 358
    invoke-static {p0, v0}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatPrefMethods;->setWifi(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    .line 359
    invoke-static {v0}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatPrefMethods;->setBluetooth(Landroid/content/SharedPreferences;)V

    .line 360
    invoke-static {p0, v0}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatPrefMethods;->setAirplaneModeSettings(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    .line 361
    invoke-static {p0, v0}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatPrefMethods;->setDormantMode(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    .line 362
    invoke-static {p0, v0}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatPrefMethods;->setMobileData(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    .line 363
    invoke-static {p0}, Lcom/sec/shabbatmode/preferences/utilities/ZenModeUtilities;->setInterruptionsBack(Landroid/content/Context;)V

    .line 364
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 365
    invoke-static {p0}, Lcom/sec/shabbatmode/preferences/utilities/PowerSavingUtilities;->setUserPowerPreferences(Landroid/content/Context;)V

    .line 368
    :cond_0
    return-void
.end method
