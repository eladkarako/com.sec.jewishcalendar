.class public Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUtilities;
.super Ljava/lang/Object;
.source "ShomerShabbatUtilities.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUtilities$WantToExitDialogListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Shabbat ShabbatModeUtilities"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addShomerShabbatShortcut(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 353
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 354
    const-class v3, Lcom/sec/shabbatmode/preferences/ShomerShabbatActivity;

    .line 353
    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 356
    .local v1, "shortcutIntent":Landroid/content/Intent;
    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 358
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 360
    .local v0, "addIntent":Landroid/content/Intent;
    const-string v2, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 361
    const-string v2, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a006f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 362
    const-string v2, "android.intent.extra.shortcut.ICON_RESOURCE"

    .line 363
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 364
    const v4, 0x7f020026

    .line 363
    invoke-static {v3, v4}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v3

    .line 362
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 365
    const-string v2, "com.android.launcher.action.UNINSTALL_SHORTCUT"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 366
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 368
    const-string v2, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 369
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 370
    return-void
.end method

.method public static dismissKeyboard(Landroid/app/Activity;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 417
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 418
    .local v0, "im":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 419
    return-void
.end method

.method public static getDefaultLauncherActivity(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 379
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 380
    const-string v1, "def_activity"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 379
    return v0
.end method

.method public static getFullDateStringFromMilliSeconds(J)Ljava/lang/String;
    .locals 2
    .param p0, "milliSeconds"    # J

    .prologue
    .line 135
    invoke-static {}, Ljava/text/SimpleDateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v0

    .line 136
    .local v0, "formatter":Ljava/text/DateFormat;
    invoke-static {p0, p1, v0}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUtilities;->getStringFromMilliseconds(JLjava/text/DateFormat;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getOnlyDateStringDateFromDate(Ljava/util/Date;)Ljava/lang/String;
    .locals 3
    .param p0, "date"    # Ljava/util/Date;

    .prologue
    .line 118
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "MMMM d"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 119
    .local v1, "sdf":Ljava/text/DateFormat;
    invoke-static {}, Lcom/samsung/android/text/Semitic;->isLocaleRTL()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 120
    new-instance v1, Ljava/text/SimpleDateFormat;

    .end local v1    # "sdf":Ljava/text/DateFormat;
    const-string v2, "d MMMM"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 122
    .restart local v1    # "sdf":Ljava/text/DateFormat;
    :cond_0
    invoke-virtual {v1, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, "formattedTime":Ljava/lang/String;
    return-object v0
.end method

.method public static getSDKVersion()I
    .locals 1

    .prologue
    .line 335
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

.method public static getStringDateFromDate(Ljava/util/Date;)Ljava/lang/String;
    .locals 3
    .param p0, "date"    # Ljava/util/Date;

    .prologue
    .line 98
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/text/SimpleDateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v1

    .line 99
    .local v1, "sdf":Ljava/text/DateFormat;
    invoke-virtual {v1, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, "formattedTime":Ljava/lang/String;
    return-object v0
.end method

.method public static getStringDateUserFormat(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 76
    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    .line 77
    .local v1, "sdf":Ljava/text/DateFormat;
    invoke-virtual {v1, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "formattedTime":Ljava/lang/String;
    return-object v0
.end method

.method private static getStringFromMilliseconds(JLjava/text/DateFormat;)Ljava/lang/String;
    .locals 2
    .param p0, "milliSeconds"    # J
    .param p2, "formatter"    # Ljava/text/DateFormat;

    .prologue
    .line 149
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 150
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 151
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getStringTimeFromDate(Ljava/util/Date;)Ljava/lang/String;
    .locals 3
    .param p0, "date"    # Ljava/util/Date;

    .prologue
    .line 108
    const/4 v2, 0x3

    invoke-static {v2}, Ljava/text/SimpleDateFormat;->getTimeInstance(I)Ljava/text/DateFormat;

    move-result-object v1

    .line 109
    .local v1, "sdf":Ljava/text/DateFormat;
    invoke-virtual {v1, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, "formattedTime":Ljava/lang/String;
    return-object v0
.end method

.method public static getSystemAlertDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "positiveButton"    # Ljava/lang/String;
    .param p3, "positiveOnClickListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p4, "negativeButton"    # Ljava/lang/String;
    .param p5, "negativeOnClickListener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 190
    new-instance v1, Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0b0002

    invoke-direct {v1, p0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 191
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 193
    if-eqz p2, :cond_0

    .line 194
    invoke-virtual {v1, p2, p3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 196
    :cond_0
    if-eqz p4, :cond_1

    .line 197
    invoke-virtual {v1, p4, p5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 199
    :cond_1
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 200
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 202
    return-object v0
.end method

.method public static getTimeFromDateUserFormat(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 87
    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    .line 88
    .local v1, "sdf":Ljava/text/DateFormat;
    invoke-virtual {v1, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, "formattedTime":Ljava/lang/String;
    return-object v0
.end method

.method public static getTimeStringFromMilliSeconds(J)Ljava/lang/String;
    .locals 2
    .param p0, "milliSeconds"    # J

    .prologue
    .line 142
    invoke-static {}, Ljava/text/SimpleDateFormat;->getTimeInstance()Ljava/text/DateFormat;

    move-result-object v0

    .line 143
    .local v0, "formatter":Ljava/text/DateFormat;
    invoke-static {p0, p1, v0}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUtilities;->getStringFromMilliseconds(JLjava/text/DateFormat;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getWantToExitDialog(Landroid/content/Context;Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUtilities$WantToExitDialogListener;Ljava/lang/String;)Landroid/app/AlertDialog;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listener"    # Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUtilities$WantToExitDialogListener;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 262
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_off_timeout"

    const/16 v2, 0x4e20

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 264
    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7}, Landroid/os/Handler;-><init>()V

    .line 265
    .local v7, "handler":Landroid/os/Handler;
    new-instance v8, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUtilities$2;

    invoke-direct {v8, p0}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUtilities$2;-><init>(Landroid/content/Context;)V

    .line 273
    .local v8, "stopWakeLock":Ljava/lang/Runnable;
    const-wide/32 v0, 0x3d090

    invoke-virtual {v7, v8, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 279
    const v0, 0x7f0a0073

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 282
    new-instance v3, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUtilities$3;

    invoke-direct {v3, v7, v8, p0}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUtilities$3;-><init>(Landroid/os/Handler;Ljava/lang/Runnable;Landroid/content/Context;)V

    .line 293
    const v0, 0x7f0a0074

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 295
    new-instance v5, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUtilities$4;

    invoke-direct {v5, p0, v7, v8}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUtilities$4;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/Runnable;)V

    move-object v0, p0

    move-object v1, p2

    .line 277
    invoke-static/range {v0 .. v5}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUtilities;->getSystemAlertDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v6

    .line 312
    .local v6, "alertDialog":Landroid/app/AlertDialog;
    new-instance v0, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUtilities$5;

    invoke-direct {v0, v7, v8, p0, p1}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUtilities$5;-><init>(Landroid/os/Handler;Ljava/lang/Runnable;Landroid/content/Context;Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUtilities$WantToExitDialogListener;)V

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 326
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 327
    return-object v6
.end method

.method public static haveAdminRights(Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 384
    const-string v3, "device_policy"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 385
    .local v1, "dPM":Landroid/app/admin/DevicePolicyManager;
    new-instance v2, Landroid/content/ComponentName;

    const-class v3, Lcom/sec/shabbatmode/deviceadmin/DeviceAdmin;

    invoke-direct {v2, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 386
    .local v2, "devAdminReceiver":Landroid/content/ComponentName;
    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v0

    .line 387
    .local v0, "admin":Z
    const-string v3, "Shabbat ShabbatModeUtilities"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "haveAdminRights: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    return-object v3
.end method

.method public static isAutoTimeUpdateOn(Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 422
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "auto_time"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public static isCallActive(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 431
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 432
    .local v0, "manager":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 433
    const/4 v1, 0x1

    .line 436
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isHebrewLocale()Z
    .locals 2

    .prologue
    .line 426
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 427
    .local v0, "currentLang":Ljava/lang/String;
    const-string v1, "he"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "iw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isLocationEnabled(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 52
    const/4 v1, 0x0

    .line 55
    .local v1, "locationMode":I
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x13

    if-lt v5, v6, :cond_1

    .line 57
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "location_mode"

    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 62
    if-eqz v1, :cond_0

    move v3, v4

    .line 66
    :cond_0
    :goto_0
    return v3

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 65
    .end local v0    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "location_providers_allowed"

    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 66
    .local v2, "locationProviders":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    move v3, v4

    goto :goto_0
.end method

.method public static isOSLollipop2OrUp()Ljava/lang/Boolean;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 343
    invoke-static {}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUtilities;->getSDKVersion()I

    move-result v0

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 344
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 349
    :goto_0
    return-object v0

    .line 346
    :cond_0
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v1, "5.0.2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 347
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 349
    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public static isOSLollipopOrUp()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 339
    invoke-static {}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUtilities;->getSDKVersion()I

    move-result v0

    const/16 v1, 0x14

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public static lockDevice(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 397
    sget-boolean v0, Lcom/sec/shabbatmode/Globals;->mInLightMode:Z

    if-eqz v0, :cond_0

    .line 398
    invoke-static {p0}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUtilities;->lockDeviceLight(Landroid/content/Context;)V

    .line 404
    :cond_0
    return-void
.end method

.method private static lockDeviceLight(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 407
    const-string v3, "device_policy"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    .line 408
    .local v2, "mDPM":Landroid/app/admin/DevicePolicyManager;
    new-instance v1, Landroid/content/ComponentName;

    const-class v3, Lcom/sec/shabbatmode/deviceadmin/DeviceAdmin;

    invoke-direct {v1, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 409
    .local v1, "devAdminReceiver":Landroid/content/ComponentName;
    invoke-virtual {v2, v1}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v0

    .line 410
    .local v0, "admin":Z
    if-eqz v0, :cond_0

    .line 411
    invoke-virtual {v2}, Landroid/app/admin/DevicePolicyManager;->lockNow()V

    .line 413
    :cond_0
    return-void
.end method

.method public static numberIsOnAllowedList(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "incomingNumber"    # Ljava/lang/String;

    .prologue
    const v7, 0x7f0a008c

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 441
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0005

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 442
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 441
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 443
    .local v1, "modeString":Ljava/lang/String;
    const-string v2, "Shabbat ShabbatModeUtilities"

    invoke-static {v2, v1}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 446
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 461
    :goto_0
    return-object v2

    .line 448
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a008d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 449
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0

    .line 452
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 453
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0

    .line 455
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-static {}, Lcom/sec/shabbatmode/ShabbatModeApplication;->getAllowedNumbers()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_3

    .line 461
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0

    .line 456
    :cond_3
    invoke-static {}, Lcom/sec/shabbatmode/ShabbatModeApplication;->getAllowedNumbers()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {p0, v2, p1}, Landroid/telephony/PhoneNumberUtils;->compare(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 457
    const-string v2, "Shabbat ShabbatModeUtilities"

    const-string v3, "numberIsOnAllowedList number: true"

    invoke-static {v2, v3}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0

    .line 455
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static openMainPreferenceActivity(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 212
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/shabbatmode/preferences/ShomerShabbatActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 213
    .local v0, "shabbatModeIntent":Landroid/content/Intent;
    const/high16 v1, 0x34010000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 218
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 219
    return-void
.end method

.method public static putTheDeviceToSleep(Landroid/content/Context;I)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "delayMilliSeconds"    # I

    .prologue
    .line 227
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 228
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUtilities$1;

    invoke-direct {v1, p0}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUtilities$1;-><init>(Landroid/content/Context;)V

    .line 233
    int-to-long v2, p1

    .line 228
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 234
    return-void
.end method

.method public static resetDeviceAdmin(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 391
    const-string v2, "device_policy"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 392
    .local v0, "dPM":Landroid/app/admin/DevicePolicyManager;
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/sec/shabbatmode/deviceadmin/DeviceAdmin;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 393
    .local v1, "devAdminReceiver":Landroid/content/ComponentName;
    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->removeActiveAdmin(Landroid/content/ComponentName;)V

    .line 394
    return-void
.end method

.method public static saveDefaultLauncherToPreferences(Landroid/content/Context;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "activity"    # I

    .prologue
    .line 373
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 374
    const-string v1, "def_activity"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 375
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 376
    return-void
.end method

.method public static sendCandlesNotificationBroadcast(Landroid/content/Context;Ljava/lang/Boolean;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "notificationOn"    # Ljava/lang/Boolean;

    .prologue
    .line 242
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.sec.shabbatmode.preferences.SHABBAT_MODE_SWITCH_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 243
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 244
    .local v1, "state":I
    :goto_0
    const-string v2, "state"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 245
    const-string v3, "Shabbat ShabbatModeUtilities"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v2, "sendCandlesNotificationBroadcast + "

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "ON"

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 247
    return-void

    .line 243
    .end local v1    # "state":I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 245
    .restart local v1    # "state":I
    :cond_1
    const-string v2, "OFF"

    goto :goto_1
.end method

.method public static setRingerToAllowCallIn(Landroid/content/Context;Ljava/lang/Boolean;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isAllowedNum"    # Ljava/lang/Boolean;

    .prologue
    const/4 v4, 0x2

    .line 465
    const-string v1, "Shabbat ShabbatModeUtilities"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setRingerToAllowCallIn allow: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    invoke-static {}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUtilities;->isOSLollipopOrUp()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-boolean v1, Lcom/sec/shabbatmode/Globals;->mInLightMode:Z

    if-nez v1, :cond_2

    .line 468
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 469
    invoke-static {p0}, Lcom/sec/shabbatmode/preferences/utilities/ZenModeUtilities;->setInterruptionsOff(Landroid/content/Context;)V

    .line 486
    :cond_0
    :goto_0
    return-void

    .line 472
    :cond_1
    invoke-static {p0}, Lcom/sec/shabbatmode/preferences/utilities/ZenModeUtilities;->setInterruptionsNone(Landroid/content/Context;)V

    goto :goto_0

    .line 475
    :cond_2
    sget-boolean v1, Lcom/sec/shabbatmode/Globals;->mInLightMode:Z

    if-eqz v1, :cond_0

    .line 476
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 478
    .local v0, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 479
    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 480
    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v4, v1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0

    .line 483
    :cond_3
    invoke-static {p0}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatPrefMethods;->silenceRinger(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static showCustomWhiteToast(Landroid/content/Context;Ljava/lang/String;II)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "length"    # I
    .param p3, "gravity"    # I

    .prologue
    const/4 v6, 0x0

    .line 163
    const-string v4, "layout_inflater"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 164
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x7f030009

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 165
    .local v3, "view":Landroid/view/View;
    const v4, 0x7f0e001e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 166
    .local v1, "textView":Landroid/widget/TextView;
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    new-instance v2, Landroid/widget/Toast;

    invoke-direct {v2, p0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 169
    .local v2, "toast":Landroid/widget/Toast;
    invoke-virtual {v2, p3, v6, v6}, Landroid/widget/Toast;->setGravity(III)V

    .line 170
    invoke-virtual {v2, p2}, Landroid/widget/Toast;->setDuration(I)V

    .line 171
    invoke-virtual {v2, v3}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 172
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 173
    return-void
.end method
