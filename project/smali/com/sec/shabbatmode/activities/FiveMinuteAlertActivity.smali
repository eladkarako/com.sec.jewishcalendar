.class public Lcom/sec/shabbatmode/activities/FiveMinuteAlertActivity;
.super Landroid/app/Activity;
.source "FiveMinuteAlertActivity.java"

# interfaces
.implements Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$OnTriggerListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "Shabbat ShabbatModeNotiReceiver"


# instance fields
.field handler:Landroid/os/Handler;

.field mAlertDialog:Landroid/app/AlertDialog;

.field mRingtone:Landroid/media/Ringtone;

.field private mSelector:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;

.field stopSound:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 36
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/shabbatmode/activities/FiveMinuteAlertActivity;->handler:Landroid/os/Handler;

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/shabbatmode/activities/FiveMinuteAlertActivity;->mRingtone:Landroid/media/Ringtone;

    .line 33
    return-void
.end method

.method static synthetic access$0(Lcom/sec/shabbatmode/activities/FiveMinuteAlertActivity;)V
    .locals 0

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/sec/shabbatmode/activities/FiveMinuteAlertActivity;->finishAlert()V

    return-void
.end method

.method private defaultStop()V
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/sec/shabbatmode/activities/FiveMinuteAlertActivity;->mSelector:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/sec/shabbatmode/activities/FiveMinuteAlertActivity;->mSelector:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;

    invoke-virtual {v0}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->clearDrawable()V

    .line 211
    iget-object v0, p0, Lcom/sec/shabbatmode/activities/FiveMinuteAlertActivity;->mSelector:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;

    invoke-virtual {v0}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->removeAllViews()V

    .line 213
    :cond_0
    invoke-direct {p0}, Lcom/sec/shabbatmode/activities/FiveMinuteAlertActivity;->finishAlert()V

    .line 214
    return-void
.end method

.method private finishAlert()V
    .locals 2

    .prologue
    .line 175
    const-string v0, "Shabbat ShabbatModeNotiReceiver"

    const-string v1, "FiveMinuteAlertActivity finishAlert"

    invoke-static {v0, v1}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcom/sec/shabbatmode/activities/FiveMinuteAlertActivity;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/sec/shabbatmode/activities/FiveMinuteAlertActivity;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/sec/shabbatmode/activities/FiveMinuteAlertActivity;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/shabbatmode/activities/FiveMinuteAlertActivity;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 180
    iget-object v0, p0, Lcom/sec/shabbatmode/activities/FiveMinuteAlertActivity;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 182
    :cond_1
    iget-object v0, p0, Lcom/sec/shabbatmode/activities/FiveMinuteAlertActivity;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 183
    iget-object v0, p0, Lcom/sec/shabbatmode/activities/FiveMinuteAlertActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/shabbatmode/activities/FiveMinuteAlertActivity;->stopSound:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 185
    :cond_2
    invoke-virtual {p0}, Lcom/sec/shabbatmode/activities/FiveMinuteAlertActivity;->finish()V

    .line 186
    return-void
.end method

.method private isDormantModeOn()Ljava/lang/Boolean;
    .locals 12

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/sec/shabbatmode/activities/FiveMinuteAlertActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "dormant_switch_onoff"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 140
    .local v2, "dormanSwitchState":I
    invoke-virtual {p0}, Lcom/sec/shabbatmode/activities/FiveMinuteAlertActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "dormant_disable_alarm_and_timer"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 143
    .local v0, "alarmAndTimerState":I
    const/4 v9, 0x1

    if-ne v2, v9, :cond_1

    const/4 v9, 0x1

    if-ne v0, v9, :cond_1

    .line 144
    invoke-virtual {p0}, Lcom/sec/shabbatmode/activities/FiveMinuteAlertActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "dormant_always"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 147
    .local v1, "dormanAlways":I
    const/4 v9, 0x1

    if-ne v1, v9, :cond_0

    .line 148
    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 171
    .end local v1    # "dormanAlways":I
    :goto_0
    return-object v9

    .line 152
    .restart local v1    # "dormanAlways":I
    :cond_0
    invoke-virtual {p0}, Lcom/sec/shabbatmode/activities/FiveMinuteAlertActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "dormant_start_hour"

    invoke-static {v9, v10}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 153
    .local v5, "dormantStartHour":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sec/shabbatmode/activities/FiveMinuteAlertActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "dormant_start_min"

    invoke-static {v9, v10}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 154
    .local v6, "dormantStartMinute":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sec/shabbatmode/activities/FiveMinuteAlertActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "dormant_end_hour"

    invoke-static {v9, v10}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 155
    .local v3, "dormantEndHour":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sec/shabbatmode/activities/FiveMinuteAlertActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "dormant_end_min"

    invoke-static {v9, v10}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 157
    .local v4, "dormantEndMinute":Ljava/lang/String;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    .line 158
    .local v8, "startHour":Ljava/util/Calendar;
    const/16 v9, 0xa

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Ljava/util/Calendar;->set(II)V

    .line 159
    const/16 v9, 0xc

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Ljava/util/Calendar;->set(II)V

    .line 160
    const/16 v9, 0xd

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Ljava/util/Calendar;->set(II)V

    .line 162
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 163
    .local v7, "endHour":Ljava/util/Calendar;
    const/16 v9, 0xa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v7, v9, v10}, Ljava/util/Calendar;->set(II)V

    .line 164
    const/16 v9, 0xc

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v7, v9, v10}, Ljava/util/Calendar;->set(II)V

    .line 165
    const/16 v9, 0xd

    const/4 v10, 0x0

    invoke-virtual {v7, v9, v10}, Ljava/util/Calendar;->set(II)V

    .line 167
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 168
    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    goto/16 :goto_0

    .line 171
    .end local v1    # "dormanAlways":I
    .end local v3    # "dormantEndHour":Ljava/lang/String;
    .end local v4    # "dormantEndMinute":Ljava/lang/String;
    .end local v5    # "dormantStartHour":Ljava/lang/String;
    .end local v6    # "dormantStartMinute":Ljava/lang/String;
    .end local v7    # "endHour":Ljava/util/Calendar;
    .end local v8    # "startHour":Ljava/util/Calendar;
    :cond_1
    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    goto/16 :goto_0
.end method

.method private show5MinuteAlert()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x2

    .line 76
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/shabbatmode/activities/FiveMinuteAlertActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a009e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    const-string v4, " 5 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/shabbatmode/activities/FiveMinuteAlertActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a009f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 76
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 78
    .local v2, "msg":Ljava/lang/String;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 79
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 80
    const v3, 0x7f0a001f

    invoke-virtual {p0, v3}, Lcom/sec/shabbatmode/activities/FiveMinuteAlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/sec/shabbatmode/activities/FiveMinuteAlertActivity$1;

    invoke-direct {v4, p0}, Lcom/sec/shabbatmode/activities/FiveMinuteAlertActivity$1;-><init>(Lcom/sec/shabbatmode/activities/FiveMinuteAlertActivity;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 87
    new-instance v3, Lcom/sec/shabbatmode/activities/FiveMinuteAlertActivity$2;

    invoke-direct {v3, p0}, Lcom/sec/shabbatmode/activities/FiveMinuteAlertActivity$2;-><init>(Lcom/sec/shabbatmode/activities/FiveMinuteAlertActivity;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 95
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/shabbatmode/activities/FiveMinuteAlertActivity;->mAlertDialog:Landroid/app/AlertDialog;

    .line 96
    iget-object v3, p0, Lcom/sec/shabbatmode/activities/FiveMinuteAlertActivity;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 97
    invoke-static {}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUtilities;->isOSLollipopOrUp()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 98
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 99
    .local v1, "buttonLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v3, 0x32

    const/16 v4, 0x64

    invoke-virtual {v1, v3, v7, v4, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 100
    iget-object v3, p0, Lcom/sec/shabbatmode/activities/FiveMinuteAlertActivity;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3, v6}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 101
    iget-object v3, p0, Lcom/sec/shabbatmode/activities/FiveMinuteAlertActivity;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 103
    .end local v1    # "buttonLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 190
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 191
    invoke-direct {p0}, Lcom/sec/shabbatmode/activities/FiveMinuteAlertActivity;->finishAlert()V

    .line 192
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v5, 0x7f0e0002

    .line 44
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    const/high16 v2, 0x7f030000

    invoke-virtual {p0, v2}, Lcom/sec/shabbatmode/activities/FiveMinuteAlertActivity;->setContentView(I)V

    .line 46
    const v2, 0x7f0e0004

    invoke-virtual {p0, v2}, Lcom/sec/shabbatmode/activities/FiveMinuteAlertActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;

    iput-object v2, p0, Lcom/sec/shabbatmode/activities/FiveMinuteAlertActivity;->mSelector:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;

    .line 47
    iget-object v2, p0, Lcom/sec/shabbatmode/activities/FiveMinuteAlertActivity;->mSelector:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;

    invoke-virtual {v2, p0}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->setOnTriggerListener(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$OnTriggerListener;)V

    .line 48
    iget-object v2, p0, Lcom/sec/shabbatmode/activities/FiveMinuteAlertActivity;->mSelector:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;

    if-eqz v2, :cond_0

    .line 49
    iget-object v2, p0, Lcom/sec/shabbatmode/activities/FiveMinuteAlertActivity;->mSelector:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->setSnooze(Z)V

    .line 51
    :cond_0
    const-string v2, "Shabbat ShabbatModeNotiReceiver"

    const-string v3, "FiveMinuteAlertActivity on create"

    invoke-static {v2, v3}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Lcom/sec/shabbatmode/activities/FiveMinuteAlertActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const v3, 0x680480

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 59
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/shabbatmode/activities/FiveMinuteAlertActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a009e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    const-string v3, " 5 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/shabbatmode/activities/FiveMinuteAlertActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a009f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 59
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, "msg":Ljava/lang/String;
    invoke-virtual {p0, v5}, Lcom/sec/shabbatmode/activities/FiveMinuteAlertActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    invoke-virtual {p0}, Lcom/sec/shabbatmode/activities/FiveMinuteAlertActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "fonts/DroidSansHebrew-Bold.ttf"

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 65
    .local v1, "tf":Landroid/graphics/Typeface;
    invoke-static {}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUtilities;->isHebrewLocale()Z

    move-result v2

    if-nez v2, :cond_1

    .line 66
    invoke-virtual {p0}, Lcom/sec/shabbatmode/activities/FiveMinuteAlertActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "fonts/SamsungSans-Bold.ttf"

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 69
    :cond_1
    invoke-virtual {p0, v5}, Lcom/sec/shabbatmode/activities/FiveMinuteAlertActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 70
    invoke-virtual {p0}, Lcom/sec/shabbatmode/activities/FiveMinuteAlertActivity;->playSound()V

    .line 71
    return-void
.end method

.method public onGrabbedStateChange(Landroid/view/View;I)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;
    .param p2, "grabbedState"    # I

    .prologue
    .line 206
    return-void
.end method

.method public onTrigger(Landroid/view/View;I)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "whichHandle"    # I

    .prologue
    .line 197
    const/4 v0, 0x1

    if-ne v0, p2, :cond_0

    .line 198
    invoke-direct {p0}, Lcom/sec/shabbatmode/activities/FiveMinuteAlertActivity;->defaultStop()V

    .line 200
    :cond_0
    return-void
.end method

.method public playSound()V
    .locals 6

    .prologue
    .line 109
    const/4 v2, 0x4

    :try_start_0
    invoke-static {v2}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v1

    .line 111
    .local v1, "notification":Landroid/net/Uri;
    invoke-static {p0, v1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/shabbatmode/activities/FiveMinuteAlertActivity;->mRingtone:Landroid/media/Ringtone;

    .line 112
    iget-object v2, p0, Lcom/sec/shabbatmode/activities/FiveMinuteAlertActivity;->mRingtone:Landroid/media/Ringtone;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 113
    invoke-direct {p0}, Lcom/sec/shabbatmode/activities/FiveMinuteAlertActivity;->isDormantModeOn()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    .line 114
    iget-object v2, p0, Lcom/sec/shabbatmode/activities/FiveMinuteAlertActivity;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v2}, Landroid/media/Ringtone;->play()V

    .line 117
    :cond_0
    new-instance v2, Lcom/sec/shabbatmode/activities/FiveMinuteAlertActivity$3;

    invoke-direct {v2, p0}, Lcom/sec/shabbatmode/activities/FiveMinuteAlertActivity$3;-><init>(Lcom/sec/shabbatmode/activities/FiveMinuteAlertActivity;)V

    iput-object v2, p0, Lcom/sec/shabbatmode/activities/FiveMinuteAlertActivity;->stopSound:Ljava/lang/Runnable;

    .line 125
    iget-object v2, p0, Lcom/sec/shabbatmode/activities/FiveMinuteAlertActivity;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/sec/shabbatmode/activities/FiveMinuteAlertActivity;->stopSound:Ljava/lang/Runnable;

    const-wide/32 v4, 0xea60

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    .end local v1    # "notification":Landroid/net/Uri;
    :goto_0
    return-void

    .line 127
    :catch_0
    move-exception v0

    .line 128
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
