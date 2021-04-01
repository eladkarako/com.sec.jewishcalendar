.class public Lcom/sec/shabbatmode/preferences/ShomerShabbatActivity;
.super Landroid/app/Activity;
.source "ShomerShabbatActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Shabbat LauncherActivity"


# instance fields
.field public mActionBarSwitch:Landroid/widget/Switch;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/sec/shabbatmode/preferences/ShomerShabbatActivity;)V
    .locals 0

    .prologue
    .line 347
    invoke-direct {p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatActivity;->clearLED()V

    return-void
.end method

.method private clearLED()V
    .locals 2

    .prologue
    .line 348
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Lcom/sec/shabbatmode/preferences/ShomerShabbatActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 349
    .local v0, "nm":Landroid/app/NotificationManager;
    const/16 v1, 0xfe

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 350
    return-void
.end method

.method private debugBtn01()V
    .locals 1

    .prologue
    .line 281
    invoke-static {p0}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUserPrefsUtils;->getShabbatModeEnabled(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 282
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUserPrefsUtils;->enableShabbatMode(Landroid/content/Context;Z)V

    .line 284
    :cond_0
    invoke-static {p0}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUserPrefsUtils;->activateShabbatMode(Landroid/content/Context;)V

    .line 285
    return-void
.end method

.method private debugBtn02()V
    .locals 2

    .prologue
    .line 289
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/shabbatmode/activities/FiveMinuteAlertActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 290
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x30000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 291
    invoke-virtual {p0, v0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatActivity;->startActivity(Landroid/content/Intent;)V

    .line 292
    return-void
.end method

.method private debugBtn03()V
    .locals 3

    .prologue
    const/16 v2, 0x50

    const/4 v1, 0x1

    .line 296
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/shabbatmode/preferences/utilities/PowerSavingUtilities;->enablePowerSaver(Landroid/content/Context;Ljava/lang/Boolean;)V

    .line 297
    sget-boolean v0, Lcom/sec/shabbatmode/Globals;->mInLightMode:Z

    if-eqz v0, :cond_0

    .line 298
    const-string v0, "Light mode - cannot activate power saver"

    invoke-static {p0, v0, v1, v2}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUtilities;->showCustomWhiteToast(Landroid/content/Context;Ljava/lang/String;II)V

    .line 303
    :goto_0
    return-void

    .line 301
    :cond_0
    const-string v0, "Activating power saving"

    invoke-static {p0, v0, v1, v2}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUtilities;->showCustomWhiteToast(Landroid/content/Context;Ljava/lang/String;II)V

    goto :goto_0
.end method

.method private debugBtn04()V
    .locals 3

    .prologue
    const/16 v2, 0x50

    const/4 v1, 0x1

    .line 307
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/shabbatmode/preferences/utilities/PowerSavingUtilities;->enablePowerSaver(Landroid/content/Context;Ljava/lang/Boolean;)V

    .line 308
    sget-boolean v0, Lcom/sec/shabbatmode/Globals;->mInLightMode:Z

    if-eqz v0, :cond_0

    .line 309
    const-string v0, "Light mode - cannot deactivate power saver"

    invoke-static {p0, v0, v1, v2}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUtilities;->showCustomWhiteToast(Landroid/content/Context;Ljava/lang/String;II)V

    .line 314
    :goto_0
    return-void

    .line 312
    :cond_0
    const-string v0, "Deactivating power saving"

    invoke-static {p0, v0, v1, v2}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUtilities;->showCustomWhiteToast(Landroid/content/Context;Ljava/lang/String;II)V

    goto :goto_0
.end method

.method private debugBtn05()V
    .locals 3

    .prologue
    .line 318
    invoke-static {p0}, Lcom/sec/shabbatmode/preferences/utilities/ClockAlarmUtilities;->disableAllAlarms(Landroid/content/Context;)V

    .line 319
    const-string v0, "Disabling all alarms"

    const/4 v1, 0x1

    const/16 v2, 0x50

    invoke-static {p0, v0, v1, v2}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUtilities;->showCustomWhiteToast(Landroid/content/Context;Ljava/lang/String;II)V

    .line 320
    return-void
.end method

.method private debugBtn06()V
    .locals 3

    .prologue
    .line 324
    invoke-static {p0}, Lcom/sec/shabbatmode/preferences/utilities/ClockAlarmUtilities;->enableAlarms(Landroid/content/Context;)V

    .line 325
    const-string v0, "Enabling alarms back to original"

    const/4 v1, 0x1

    const/16 v2, 0x50

    invoke-static {p0, v0, v1, v2}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUtilities;->showCustomWhiteToast(Landroid/content/Context;Ljava/lang/String;II)V

    .line 326
    return-void
.end method

.method private debugBtn07()V
    .locals 3

    .prologue
    .line 330
    invoke-static {p0}, Lcom/sec/shabbatmode/preferences/utilities/LedIndicatorUtilities;->disableLed(Landroid/content/Context;)V

    .line 331
    const-string v0, "Deactivating led indicator"

    const/4 v1, 0x1

    const/16 v2, 0x50

    invoke-static {p0, v0, v1, v2}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUtilities;->showCustomWhiteToast(Landroid/content/Context;Ljava/lang/String;II)V

    .line 332
    return-void
.end method

.method private debugBtn08()V
    .locals 3

    .prologue
    .line 336
    invoke-static {p0}, Lcom/sec/shabbatmode/preferences/utilities/LedIndicatorUtilities;->enableLed(Landroid/content/Context;)V

    .line 337
    const-string v0, "Reactivating led indicator"

    const/4 v1, 0x1

    const/16 v2, 0x50

    invoke-static {p0, v0, v1, v2}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUtilities;->showCustomWhiteToast(Landroid/content/Context;Ljava/lang/String;II)V

    .line 338
    return-void
.end method

.method private debugBtn09()V
    .locals 3

    .prologue
    .line 342
    const-string v0, "dnd_show_alert"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUserPrefsUtils;->saveBooleanToSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 343
    const-string v0, "Resetting the DND alert dialog"

    const/4 v1, 0x1

    const/16 v2, 0x50

    invoke-static {p0, v0, v1, v2}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUtilities;->showCustomWhiteToast(Landroid/content/Context;Ljava/lang/String;II)V

    .line 344
    return-void
.end method

.method private debugBtn1()V
    .locals 1

    .prologue
    .line 242
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatActivity;->setToShabbatEntrance(I)V

    .line 243
    return-void
.end method

.method private debugBtn2()V
    .locals 1

    .prologue
    .line 246
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatActivity;->setToShabbatEntrance(I)V

    .line 247
    return-void
.end method

.method private debugBtn3()V
    .locals 1

    .prologue
    .line 250
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatActivity;->setToShabbatEnd(I)V

    .line 251
    return-void
.end method

.method private flashLed()V
    .locals 7

    .prologue
    const/16 v4, 0x64

    const/4 v6, 0x1

    .line 354
    const-string v3, "notification"

    invoke-virtual {p0, v3}, Lcom/sec/shabbatmode/preferences/ShomerShabbatActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 355
    .local v1, "nm":Landroid/app/NotificationManager;
    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    .line 356
    .local v2, "notif":Landroid/app/Notification;
    const/high16 v3, -0x10000

    iput v3, v2, Landroid/app/Notification;->ledARGB:I

    .line 357
    iput v6, v2, Landroid/app/Notification;->flags:I

    .line 358
    iput v4, v2, Landroid/app/Notification;->ledOnMS:I

    .line 359
    iput v4, v2, Landroid/app/Notification;->ledOffMS:I

    .line 360
    const/16 v3, 0xfe

    invoke-virtual {v1, v3, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 361
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 362
    .local v0, "handler":Landroid/os/Handler;
    new-instance v3, Lcom/sec/shabbatmode/preferences/ShomerShabbatActivity$1;

    invoke-direct {v3, p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatActivity$1;-><init>(Lcom/sec/shabbatmode/preferences/ShomerShabbatActivity;)V

    .line 367
    const-wide/16 v4, 0x1388

    .line 362
    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 369
    const-string v3, "Showing the led indicator - turn off screen. Lights will finish after 5 seconds."

    const/16 v4, 0x50

    .line 368
    invoke-static {p0, v3, v6, v4}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUtilities;->showCustomWhiteToast(Landroid/content/Context;Ljava/lang/String;II)V

    .line 370
    return-void
.end method

.method private goToCalendar()V
    .locals 2

    .prologue
    .line 175
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/jewishcalendar/JewishCalendarView;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 176
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatActivity;->startActivity(Landroid/content/Intent;)V

    .line 177
    return-void
.end method

.method private hideSwitch(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "hide"    # Ljava/lang/Boolean;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatActivity;->mActionBarSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    .line 122
    iget-object v1, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatActivity;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setVisibility(I)V

    .line 124
    :cond_0
    return-void

    .line 122
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private replace(Landroid/app/Fragment;Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "hideSwitch"    # Ljava/lang/Boolean;

    .prologue
    .line 112
    invoke-direct {p0, p2}, Lcom/sec/shabbatmode/preferences/ShomerShabbatActivity;->hideSwitch(Ljava/lang/Boolean;)V

    .line 113
    invoke-virtual {p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0e000e

    invoke-virtual {v0, v1, p1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 114
    const/16 v1, 0x1001

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 115
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 116
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 117
    return-void
.end method

.method private setOverviewScreenEntry()V
    .locals 7

    .prologue
    .line 77
    invoke-static {}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUtilities;->isOSLollipopOrUp()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 78
    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .line 79
    .local v4, "typedValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    .line 80
    .local v3, "theme":Landroid/content/res/Resources$Theme;
    const v5, 0x1010433

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v4, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 81
    iget v1, v4, Landroid/util/TypedValue;->data:I

    .line 83
    .local v1, "color":I
    invoke-virtual {p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020026

    invoke-static {v5, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 84
    .local v0, "bm":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a006f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5, v0, v1}, Landroid/app/ActivityManager$TaskDescription;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    .line 86
    .local v2, "td":Landroid/app/ActivityManager$TaskDescription;
    invoke-virtual {p0, v2}, Lcom/sec/shabbatmode/preferences/ShomerShabbatActivity;->setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V

    .line 87
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 89
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .end local v1    # "color":I
    .end local v2    # "td":Landroid/app/ActivityManager$TaskDescription;
    .end local v3    # "theme":Landroid/content/res/Resources$Theme;
    .end local v4    # "typedValue":Landroid/util/TypedValue;
    :cond_0
    return-void
.end method

.method private setToShabbatEnd(I)V
    .locals 8
    .param p1, "minutesBeforeShabbat"    # I

    .prologue
    .line 269
    sget-boolean v1, Lcom/sec/shabbatmode/Globals;->mInLightMode:Z

    if-eqz v1, :cond_0

    .line 270
    const-string v1, "You are in Light mode. This option is not valid."

    const/4 v4, 0x0

    invoke-static {p0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 277
    :goto_0
    return-void

    .line 273
    :cond_0
    invoke-static {p0}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUserPrefsUtils;->getShabbatEndTimeInMillis(Landroid/content/Context;)J

    move-result-wide v4

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    int-to-long v6, p1

    invoke-virtual {v1, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    sub-long v2, v4, v6

    .line 274
    .local v2, "miliShabbat":J
    const-string v1, "alarm"

    invoke-virtual {p0, v1}, Lcom/sec/shabbatmode/preferences/ShomerShabbatActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 275
    .local v0, "am":Landroid/app/AlarmManager;
    invoke-virtual {v0, v2, v3}, Landroid/app/AlarmManager;->setTime(J)V

    goto :goto_0
.end method

.method private setToShabbatEntrance(I)V
    .locals 10
    .param p1, "minutesBeforeShabbat"    # I

    .prologue
    .line 254
    sget-boolean v4, Lcom/sec/shabbatmode/Globals;->mInLightMode:Z

    if-eqz v4, :cond_0

    .line 255
    const-string v4, "You are in Light mode. This option is not valid."

    const/4 v5, 0x0

    invoke-static {p0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 267
    :goto_0
    return-void

    .line 258
    :cond_0
    const-string v4, "alarm"

    invoke-virtual {p0, v4}, Lcom/sec/shabbatmode/preferences/ShomerShabbatActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 259
    .local v0, "am":Landroid/app/AlarmManager;
    invoke-static {p0}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUserPrefsUtils;->getShabbatEntranceTimeInMillis(Landroid/content/Context;)J

    move-result-wide v4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    int-to-long v8, p1

    invoke-virtual {v6, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    sub-long v2, v4, v6

    .line 260
    .local v2, "miliShabbat":J
    invoke-virtual {v0, v2, v3}, Landroid/app/AlarmManager;->setTime(J)V

    .line 261
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "setToShabbatEntrance   Shabbt entrance time: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUserPrefsUtils;->getShabbatEntranceTimeInMillis(Landroid/content/Context;)J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUtilities;->getFullDateStringFromMilliSeconds(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 262
    const-string v5, "\n Shabbat exit time: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p0}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUserPrefsUtils;->getShabbatEndTimeString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 263
    const-string v5, "\n******Time set to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2, v3}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUtilities;->getFullDateStringFromMilliSeconds(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Shabbat*****"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 261
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 265
    .local v1, "msg":Ljava/lang/String;
    const-string v4, "Shabbat LauncherActivity"

    invoke-static {v4, v1}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public debugClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 187
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 188
    .local v0, "viewID":I
    packed-switch v0, :pswitch_data_0

    .line 231
    :goto_0
    return-void

    .line 190
    :pswitch_0
    invoke-direct {p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatActivity;->debugBtn1()V

    goto :goto_0

    .line 193
    :pswitch_1
    invoke-direct {p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatActivity;->debugBtn2()V

    goto :goto_0

    .line 196
    :pswitch_2
    invoke-direct {p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatActivity;->debugBtn3()V

    goto :goto_0

    .line 199
    :pswitch_3
    invoke-direct {p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatActivity;->debugBtn01()V

    goto :goto_0

    .line 202
    :pswitch_4
    invoke-direct {p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatActivity;->debugBtn02()V

    goto :goto_0

    .line 205
    :pswitch_5
    invoke-direct {p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatActivity;->debugBtn03()V

    goto :goto_0

    .line 208
    :pswitch_6
    invoke-direct {p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatActivity;->debugBtn04()V

    goto :goto_0

    .line 211
    :pswitch_7
    invoke-direct {p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatActivity;->debugBtn05()V

    goto :goto_0

    .line 214
    :pswitch_8
    invoke-direct {p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatActivity;->debugBtn06()V

    goto :goto_0

    .line 217
    :pswitch_9
    invoke-direct {p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatActivity;->debugBtn07()V

    goto :goto_0

    .line 220
    :pswitch_a
    invoke-direct {p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatActivity;->debugBtn08()V

    goto :goto_0

    .line 223
    :pswitch_b
    invoke-direct {p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatActivity;->debugBtn09()V

    goto :goto_0

    .line 226
    :pswitch_c
    invoke-direct {p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatActivity;->flashLed()V

    goto :goto_0

    .line 188
    :pswitch_data_0
    .packed-switch 0x7f0e001f
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_c
        :pswitch_b
    .end packed-switch
.end method

.method public goToCalendar(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 180
    invoke-direct {p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatActivity;->goToCalendar()V

    .line 181
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    .line 136
    .local v0, "backStackCount":I
    packed-switch v0, :pswitch_data_0

    .line 147
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 148
    return-void

    .line 138
    :pswitch_0
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/shabbatmode/preferences/ShomerShabbatActivity;->hideSwitch(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 141
    :pswitch_1
    invoke-virtual {p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatActivity;->finish()V

    goto :goto_0

    .line 136
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 152
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 153
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 53
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    const v1, 0x7f030003

    invoke-virtual {p0, v1}, Lcom/sec/shabbatmode/preferences/ShomerShabbatActivity;->setContentView(I)V

    .line 55
    const v1, 0x7f0a006f

    invoke-virtual {p0, v1}, Lcom/sec/shabbatmode/preferences/ShomerShabbatActivity;->setTitle(I)V

    .line 57
    const-string v1, "Shabbat LauncherActivity"

    const-string v2, "LauncherActivity onCreate"

    invoke-static {v1, v2}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    sget-boolean v1, Lcom/sec/shabbatmode/Globals;->mInLightMode:Z

    if-eqz v1, :cond_0

    .line 62
    new-instance v0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;

    invoke-direct {v0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;-><init>()V

    .line 67
    .local v0, "fragment":Landroid/app/Fragment;
    :goto_0
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sec/shabbatmode/preferences/ShomerShabbatActivity;->replace(Landroid/app/Fragment;Ljava/lang/Boolean;)V

    .line 73
    invoke-direct {p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatActivity;->setOverviewScreenEntry()V

    .line 74
    return-void

    .line 65
    .end local v0    # "fragment":Landroid/app/Fragment;
    :cond_0
    new-instance v0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;

    invoke-direct {v0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;-><init>()V

    .restart local v0    # "fragment":Landroid/app/Fragment;
    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d0003

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 158
    const/4 v0, 0x1

    return v0
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 2
    .param p1, "featureId"    # I
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 163
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 171
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 165
    :pswitch_0
    invoke-static {p0}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUtilities;->addShomerShabbatShortcut(Landroid/content/Context;)V

    goto :goto_0

    .line 168
    :pswitch_1
    invoke-direct {p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatActivity;->goToCalendar()V

    goto :goto_0

    .line 163
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e00b8
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 93
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 98
    invoke-direct {p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatActivity;->setOverviewScreenEntry()V

    .line 99
    return-void
.end method

.method public replaceToDeleteFragment(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 107
    invoke-static {p1}, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListDel;->newInstance(I)Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListDel;

    move-result-object v0

    .line 108
    .local v0, "fragment":Landroid/app/Fragment;
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sec/shabbatmode/preferences/ShomerShabbatActivity;->replace(Landroid/app/Fragment;Ljava/lang/Boolean;)V

    .line 109
    return-void
.end method

.method public replaceToListFragment()V
    .locals 2

    .prologue
    .line 102
    new-instance v0, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomList;

    invoke-direct {v0}, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomList;-><init>()V

    .line 103
    .local v0, "fragment":Landroid/app/Fragment;
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sec/shabbatmode/preferences/ShomerShabbatActivity;->replace(Landroid/app/Fragment;Ljava/lang/Boolean;)V

    .line 104
    return-void
.end method
