.class public Lcom/sec/shabbatmode/receivers/ScreenOnReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ScreenOnReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Shabbat ScreenOnReceiver"

.field public static mAlertDialog:Landroid/app/AlertDialog;

.field private static mNnumberOfRecentTurnOnTimes:I

.field private static mRecentScreenOnTimes:[J

.field private static mTimeToCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x3

    sput v0, Lcom/sec/shabbatmode/receivers/ScreenOnReceiver;->mNnumberOfRecentTurnOnTimes:I

    .line 38
    const v0, 0xea60

    sput v0, Lcom/sec/shabbatmode/receivers/ScreenOnReceiver;->mTimeToCount:I

    .line 44
    sget v0, Lcom/sec/shabbatmode/receivers/ScreenOnReceiver;->mNnumberOfRecentTurnOnTimes:I

    new-array v0, v0, [J

    sput-object v0, Lcom/sec/shabbatmode/receivers/ScreenOnReceiver;->mRecentScreenOnTimes:[J

    .line 46
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static dismissAlertDialog()V
    .locals 2

    .prologue
    .line 216
    sget-object v0, Lcom/sec/shabbatmode/receivers/ScreenOnReceiver;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/shabbatmode/receivers/ScreenOnReceiver;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    sget-object v0, Lcom/sec/shabbatmode/receivers/ScreenOnReceiver;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 218
    const-string v0, "Shabbat ScreenOnReceiver"

    const-string v1, "dismissAlertDialog incomingCall"

    invoke-static {v0, v1}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    :cond_0
    return-void
.end method

.method public static getmAlertDialog()Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/sec/shabbatmode/receivers/ScreenOnReceiver;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method public static setmAlertDialog(Landroid/app/AlertDialog;)V
    .locals 0
    .param p0, "AlertDialog"    # Landroid/app/AlertDialog;

    .prologue
    .line 53
    sput-object p0, Lcom/sec/shabbatmode/receivers/ScreenOnReceiver;->mAlertDialog:Landroid/app/AlertDialog;

    .line 54
    return-void
.end method

.method private showExitAlertDialog(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x0

    const/4 v7, -0x2

    .line 159
    const-string v0, "Shabbat ScreenOnReceiver"

    const-string v2, "ScreenOnReceiver = showExitAlertDialog"

    invoke-static {v0, v2}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    sget v0, Lcom/sec/shabbatmode/receivers/ScreenOnReceiver;->mNnumberOfRecentTurnOnTimes:I

    new-array v0, v0, [J

    sput-object v0, Lcom/sec/shabbatmode/receivers/ScreenOnReceiver;->mRecentScreenOnTimes:[J

    .line 162
    invoke-static {}, Lcom/sec/shabbatmode/receivers/IncomingCallReceiver;->isAlertShowing()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/sec/shabbatmode/receivers/IncomingTextReceiver;->isAlertShowing()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 163
    sget-object v0, Lcom/sec/shabbatmode/receivers/ScreenOnReceiver;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/shabbatmode/receivers/ScreenOnReceiver;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 165
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a0070

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 168
    .local v1, "msg":Ljava/lang/String;
    const v0, 0x7f0a0073

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 169
    new-instance v3, Lcom/sec/shabbatmode/receivers/ScreenOnReceiver$1;

    invoke-direct {v3, p0, p1}, Lcom/sec/shabbatmode/receivers/ScreenOnReceiver$1;-><init>(Lcom/sec/shabbatmode/receivers/ScreenOnReceiver;Landroid/content/Context;)V

    .line 185
    const v0, 0x7f0a0074

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 186
    new-instance v5, Lcom/sec/shabbatmode/receivers/ScreenOnReceiver$2;

    invoke-direct {v5, p0, p1}, Lcom/sec/shabbatmode/receivers/ScreenOnReceiver$2;-><init>(Lcom/sec/shabbatmode/receivers/ScreenOnReceiver;Landroid/content/Context;)V

    move-object v0, p1

    .line 167
    invoke-static/range {v0 .. v5}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUtilities;->getSystemAlertDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/shabbatmode/receivers/ScreenOnReceiver;->setmAlertDialog(Landroid/app/AlertDialog;)V

    .line 204
    sget-object v0, Lcom/sec/shabbatmode/receivers/ScreenOnReceiver;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 205
    sget-object v0, Lcom/sec/shabbatmode/receivers/ScreenOnReceiver;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 206
    invoke-static {}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUtilities;->isOSLollipopOrUp()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 207
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 208
    .local v6, "buttonLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v0, 0x32

    const/16 v2, 0x64

    invoke-virtual {v6, v0, v8, v2, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 209
    sget-object v0, Lcom/sec/shabbatmode/receivers/ScreenOnReceiver;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 210
    sget-object v0, Lcom/sec/shabbatmode/receivers/ScreenOnReceiver;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 213
    .end local v1    # "msg":Ljava/lang/String;
    .end local v6    # "buttonLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    return-void
.end method

.method private showScreenSaver(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 223
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/shabbatmode/activities/ScreenLockActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 224
    .local v0, "activityIntent":Landroid/content/Intent;
    const/high16 v1, 0x30000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 225
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 226
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 59
    invoke-static/range {p1 .. p1}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUserPrefsUtils;->getShabbatModeEnabled(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    .line 60
    .local v9, "isShabbatModeOn":Z
    invoke-static/range {p1 .. p1}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUserPrefsUtils;->getShabbatModeOn(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    .line 62
    .local v8, "isShabbat":Z
    if-eqz v9, :cond_0

    if-nez v8, :cond_1

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 67
    .local v6, "intentAction":Ljava/lang/String;
    const-string v14, "Shabbat ScreenOnReceiver"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "ScreenOnReceiver = "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const-string v14, "SCREEN_ON_DISMISS_DIALOG"

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 73
    invoke-static {}, Lcom/sec/shabbatmode/receivers/ScreenOnReceiver;->dismissAlertDialog()V

    .line 80
    :cond_2
    const-string v14, "com.samsung.sec.android.clockpackage.alarm.ALARM_ALERT"

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 81
    invoke-static/range {p1 .. p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const/high16 v16, 0x7f0a0000

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    if-eqz v14, :cond_3

    const/4 v14, 0x0

    :goto_1
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 83
    .local v2, "alarmAndTimerState":Ljava/lang/Boolean;
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-eqz v14, :cond_0

    .line 84
    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    sput-object v14, Lcom/sec/shabbatmode/ShabbatModeApplication;->mAllowAlarmBoolean:Ljava/lang/Boolean;

    .line 85
    invoke-static/range {p1 .. p1}, Lcom/sec/shabbatmode/preferences/utilities/ZenModeUtilities;->setInterruptionsPriority(Landroid/content/Context;)V

    goto :goto_0

    .line 81
    .end local v2    # "alarmAndTimerState":Ljava/lang/Boolean;
    :cond_3
    const/4 v14, 0x1

    goto :goto_1

    .line 93
    :cond_4
    const-string v14, "com.samsung.sec.android.clockpackage.alarm.ALARM_STOPPED_IN_ALERT"

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 94
    sget-object v14, Lcom/sec/shabbatmode/ShabbatModeApplication;->mAllowAlarmBoolean:Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-eqz v14, :cond_0

    .line 95
    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    sput-object v14, Lcom/sec/shabbatmode/ShabbatModeApplication;->mAllowAlarmBoolean:Ljava/lang/Boolean;

    .line 96
    const/4 v14, 0x0

    const v15, 0x7f0a0071

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-static {v0, v14, v15}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUtilities;->getWantToExitDialog(Landroid/content/Context;Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUtilities$WantToExitDialogListener;Ljava/lang/String;)Landroid/app/AlertDialog;

    move-result-object v14

    invoke-static {v14}, Lcom/sec/shabbatmode/receivers/ScreenOnReceiver;->setmAlertDialog(Landroid/app/AlertDialog;)V

    .line 97
    sget-object v14, Lcom/sec/shabbatmode/receivers/ScreenOnReceiver;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v14}, Landroid/app/AlertDialog;->show()V

    .line 98
    invoke-static/range {p1 .. p1}, Lcom/sec/shabbatmode/preferences/utilities/ZenModeUtilities;->setInterruptionsNone(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 107
    :cond_5
    const-string v14, "android.intent.action.SCREEN_ON"

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    sget-object v14, Lcom/sec/shabbatmode/ShabbatModeApplication;->mReceiveSMSBoolean:Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-eqz v14, :cond_6

    .line 108
    const/16 v14, 0x1388

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUtilities;->putTheDeviceToSleep(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 115
    :cond_6
    const-string v14, "android.intent.action.SCREEN_ON"

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    sget-object v14, Lcom/sec/shabbatmode/ShabbatModeApplication;->mReceiveAllowedSMSBoolean:Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-eqz v14, :cond_7

    .line 116
    invoke-static {}, Lcom/sec/shabbatmode/receivers/IncomingTextReceiver;->showAlertDialog()V

    goto/16 :goto_0

    .line 120
    :cond_7
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v10

    .line 122
    .local v10, "lCDateTime":Ljava/util/Calendar;
    const-string v14, "android.intent.action.SCREEN_ON"

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a

    sget-object v14, Lcom/sec/shabbatmode/ShabbatModeApplication;->mInCallBoolean:Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-nez v14, :cond_a

    .line 123
    sget-object v14, Lcom/sec/shabbatmode/ShabbatModeApplication;->mAllowAlarmBoolean:Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-nez v14, :cond_a

    .line 125
    invoke-direct/range {p0 .. p1}, Lcom/sec/shabbatmode/receivers/ScreenOnReceiver;->showScreenSaver(Landroid/content/Context;)V

    .line 126
    invoke-virtual {v10}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v12

    .line 127
    .local v12, "timeOfCurrentScreenOnInMilliSeconds":J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    sget v14, Lcom/sec/shabbatmode/receivers/ScreenOnReceiver;->mNnumberOfRecentTurnOnTimes:I

    add-int/lit8 v14, v14, -0x1

    if-lt v3, v14, :cond_8

    .line 129
    sget-object v14, Lcom/sec/shabbatmode/receivers/ScreenOnReceiver;->mRecentScreenOnTimes:[J

    sget v15, Lcom/sec/shabbatmode/receivers/ScreenOnReceiver;->mNnumberOfRecentTurnOnTimes:I

    add-int/lit8 v15, v15, -0x1

    aput-wide v12, v14, v15

    .line 131
    sget-object v14, Lcom/sec/shabbatmode/receivers/ScreenOnReceiver;->mRecentScreenOnTimes:[J

    sget v15, Lcom/sec/shabbatmode/receivers/ScreenOnReceiver;->mNnumberOfRecentTurnOnTimes:I

    add-int/lit8 v15, v15, -0x1

    aget-wide v14, v14, v15

    .line 132
    sget-object v16, Lcom/sec/shabbatmode/receivers/ScreenOnReceiver;->mRecentScreenOnTimes:[J

    const/16 v17, 0x0

    aget-wide v16, v16, v17

    .line 131
    sub-long v4, v14, v16

    .line 134
    .local v4, "diffInMillis":J
    invoke-static/range {p1 .. p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v11

    .line 135
    .local v11, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0a0002

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-interface {v11, v14, v15}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 137
    .local v7, "isScreenLockModeOn":Z
    sget v14, Lcom/sec/shabbatmode/receivers/ScreenOnReceiver;->mTimeToCount:I

    int-to-long v14, v14

    cmp-long v14, v4, v14

    if-lez v14, :cond_9

    if-eqz v7, :cond_9

    .line 138
    const/16 v14, 0x320

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUtilities;->putTheDeviceToSleep(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 128
    .end local v4    # "diffInMillis":J
    .end local v7    # "isScreenLockModeOn":Z
    .end local v11    # "sharedPreferences":Landroid/content/SharedPreferences;
    :cond_8
    sget-object v14, Lcom/sec/shabbatmode/receivers/ScreenOnReceiver;->mRecentScreenOnTimes:[J

    sget-object v15, Lcom/sec/shabbatmode/receivers/ScreenOnReceiver;->mRecentScreenOnTimes:[J

    add-int/lit8 v16, v3, 0x1

    aget-wide v16, v15, v16

    aput-wide v16, v14, v3

    .line 127
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 141
    .restart local v4    # "diffInMillis":J
    .restart local v7    # "isScreenLockModeOn":Z
    .restart local v11    # "sharedPreferences":Landroid/content/SharedPreferences;
    :cond_9
    invoke-direct/range {p0 .. p1}, Lcom/sec/shabbatmode/receivers/ScreenOnReceiver;->showExitAlertDialog(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 145
    .end local v3    # "i":I
    .end local v4    # "diffInMillis":J
    .end local v7    # "isScreenLockModeOn":Z
    .end local v11    # "sharedPreferences":Landroid/content/SharedPreferences;
    .end local v12    # "timeOfCurrentScreenOnInMilliSeconds":J
    :cond_a
    const-string v14, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 146
    const-string v14, "Shabbat ScreenOnReceiver"

    const-string v15, "+++ScreenOnReceiver = ACTION_SCREEN_OFF"

    invoke-static {v14, v15}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-static {}, Lcom/sec/shabbatmode/receivers/IncomingCallReceiver;->dismissAlertDialog()V

    .line 148
    invoke-static {}, Lcom/sec/shabbatmode/receivers/IncomingTextReceiver;->dismissAlertDialog()V

    .line 149
    invoke-static {}, Lcom/sec/shabbatmode/receivers/ScreenOnReceiver;->dismissAlertDialog()V

    goto/16 :goto_0
.end method
