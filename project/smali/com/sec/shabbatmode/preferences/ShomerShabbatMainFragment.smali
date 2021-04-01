.class public Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;
.super Landroid/preference/PreferenceFragment;
.source "ShomerShabbatMainFragment.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "InflateParams"
    }
.end annotation


# static fields
.field private static final STOP_HELP_DIALOG:Ljava/lang/String; = "dont_show_help"

.field private static final TAG:Ljava/lang/String; = "Shabbat MainPreferencesFragment"


# instance fields
.field private codeEnabling:Ljava/lang/Boolean;

.field private mAllowedListPreference:Landroid/preference/Preference;

.field private mAllowedModePreference:Landroid/preference/ListPreference;

.field private mAutoLocationPreference:Landroid/preference/CheckBoxPreference;

.field private mBlockCallsPreference:Landroid/preference/CheckBoxPreference;

.field private mConnectivityCategory:Landroid/preference/PreferenceCategory;

.field private mConnectivityPreference:Landroid/preference/Preference;

.field private mContactsCategory:Landroid/preference/PreferenceCategory;

.field private mContext:Landroid/content/Context;

.field private mCoordinatesString:Ljava/lang/String;

.field private mCustomLocationListPreference:Landroid/preference/ListPreference;

.field private mCustomLocationPreference:Landroid/preference/CheckBoxPreference;

.field private mFeaturesCategory:Landroid/preference/PreferenceCategory;

.field private mFlightModePreference:Landroid/preference/CheckBoxPreference;

.field private mLocationCategory:Landroid/preference/PreferenceCategory;

.field private mLocationInfoPreference:Landroid/preference/Preference;

.field private mLocationSearchPreference:Landroid/preference/Preference;

.field private mLocationString:Ljava/lang/String;

.field private mProgress:Landroid/app/ProgressDialog;

.field private mShabbatEntranceDetailsString:Ljava/lang/String;

.field private mShabbatExitDetailsString:Ljava/lang/String;

.field private shabbatEntranceTextView:Landroid/widget/TextView;

.field private shabbatLocationTextView:Landroid/widget/TextView;

.field private writeLocationAndTimeReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 126
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->codeEnabling:Ljava/lang/Boolean;

    .line 760
    new-instance v0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$1;

    invoke-direct {v0, p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$1;-><init>(Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;)V

    iput-object v0, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->writeLocationAndTimeReceiver:Landroid/content/BroadcastReceiver;

    .line 55
    return-void
.end method

.method static synthetic access$0(Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1(Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 1

    .prologue
    .line 659
    invoke-direct/range {p0 .. p12}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->writeLocationAndTimes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V

    return-void
.end method

.method static synthetic access$10(Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;I)V
    .locals 0

    .prologue
    .line 628
    invoke-direct {p0, p1}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->enableAllowedContactsPrefs(I)V

    return-void
.end method

.method static synthetic access$11(Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->shabbatLocationTextView:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic access$12(Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->shabbatEntranceTextView:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic access$13(Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;)V
    .locals 0

    .prologue
    .line 671
    invoke-direct {p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->setLocationsAndTimeTextViews()V

    return-void
.end method

.method static synthetic access$14(Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;)Landroid/preference/CheckBoxPreference;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->mAutoLocationPreference:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$15(Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;)V
    .locals 0

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->stopZmanimGetter()V

    return-void
.end method

.method static synthetic access$16(Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;)V
    .locals 0

    .prologue
    .line 607
    invoke-direct {p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->enableCustomLocationPrefs()V

    return-void
.end method

.method static synthetic access$17(Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;)Landroid/preference/CheckBoxPreference;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->mCustomLocationPreference:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$18(Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 602
    invoke-direct {p0, p1}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->switchBetweenManualAndAutoSearch(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$19(Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;)Landroid/preference/ListPreference;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->mCustomLocationListPreference:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$2(Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 286
    invoke-direct {p0, p1}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->enableAllPreferences(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$3(Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->codeEnabling:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$4(Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;Z)V
    .locals 0

    .prologue
    .line 483
    invoke-direct {p0, p1}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->searchForLocationIfNotShabbat(Z)V

    return-void
.end method

.method static synthetic access$5(Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;)V
    .locals 0

    .prologue
    .line 789
    invoke-direct {p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->showHelpDialog()V

    return-void
.end method

.method static synthetic access$6(Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 612
    invoke-direct {p0, p1}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->switchBetweenFlightModeAndLogs(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$7(Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;)V
    .locals 0

    .prologue
    .line 619
    invoke-direct {p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->enableAllowedContactsPrefs()V

    return-void
.end method

.method static synthetic access$8(Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;)Landroid/preference/CheckBoxPreference;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->mBlockCallsPreference:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$9(Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;)Landroid/preference/ListPreference;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->mAllowedModePreference:Landroid/preference/ListPreference;

    return-object v0
.end method

.method private enableAllPreferences(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "enable"    # Ljava/lang/Boolean;

    .prologue
    .line 287
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->mLocationCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 288
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->mContactsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 289
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->mConnectivityCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 290
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->mFeaturesCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 291
    return-void
.end method

.method private enableAllowedContactsPrefs()V
    .locals 3

    .prologue
    .line 620
    iget-object v1, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->mAllowedModePreference:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->mAllowedModePreference:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 621
    .local v0, "index":I
    invoke-direct {p0, v0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->enableAllowedContactsPrefs(I)V

    .line 622
    return-void
.end method

.method private enableAllowedContactsPrefs(I)V
    .locals 7
    .param p1, "index"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 629
    iget-object v2, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->mAllowedModePreference:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a008f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 630
    .local v0, "customIndex":I
    if-ne p1, v0, :cond_0

    move v2, v3

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 631
    .local v1, "enable":Ljava/lang/Boolean;
    iget-object v2, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->mAllowedListPreference:Landroid/preference/Preference;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->mBlockCallsPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_1

    :goto_1
    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 632
    iget-object v2, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->mAllowedModePreference:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->mBlockCallsPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 633
    return-void

    .end local v1    # "enable":Ljava/lang/Boolean;
    :cond_0
    move v2, v4

    .line 630
    goto :goto_0

    .restart local v1    # "enable":Ljava/lang/Boolean;
    :cond_1
    move v3, v4

    .line 631
    goto :goto_1
.end method

.method private enableCustomLocationPrefs()V
    .locals 2

    .prologue
    .line 608
    iget-object v1, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->mCustomLocationListPreference:Landroid/preference/ListPreference;

    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->mCustomLocationPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 609
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->mAutoLocationPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 608
    :goto_0
    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 610
    return-void

    .line 609
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getAllPreferences()V
    .locals 2

    .prologue
    .line 303
    invoke-virtual {p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->mLocationCategory:Landroid/preference/PreferenceCategory;

    .line 304
    invoke-virtual {p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->mFeaturesCategory:Landroid/preference/PreferenceCategory;

    .line 305
    invoke-virtual {p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->mConnectivityCategory:Landroid/preference/PreferenceCategory;

    .line 306
    invoke-virtual {p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->mContactsCategory:Landroid/preference/PreferenceCategory;

    .line 309
    invoke-virtual {p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->mBlockCallsPreference:Landroid/preference/CheckBoxPreference;

    .line 310
    invoke-virtual {p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->mAutoLocationPreference:Landroid/preference/CheckBoxPreference;

    .line 311
    invoke-virtual {p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->mFlightModePreference:Landroid/preference/CheckBoxPreference;

    .line 312
    invoke-virtual {p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->mAllowedModePreference:Landroid/preference/ListPreference;

    .line 313
    invoke-virtual {p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->mAllowedListPreference:Landroid/preference/Preference;

    .line 314
    invoke-virtual {p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->mCustomLocationPreference:Landroid/preference/CheckBoxPreference;

    .line 315
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->mAllowedListPreference:Landroid/preference/Preference;

    new-instance v1, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$3;

    invoke-direct {v1, p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$3;-><init>(Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 323
    return-void
.end method

.method private hideDebuggingLayout(Z)V
    .locals 2
    .param p1, "hide"    # Z

    .prologue
    .line 783
    if-eqz p1, :cond_0

    .line 784
    const-string v0, "preferenceScreen"

    invoke-virtual {p0, v0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    .line 785
    const-string v1, "shabbat_debug_category"

    invoke-virtual {p0, v1}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 787
    :cond_0
    return-void
.end method

.method private initAllowedContactsPref()V
    .locals 2

    .prologue
    .line 386
    invoke-direct {p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->enableAllowedContactsPrefs()V

    .line 387
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->mAllowedModePreference:Landroid/preference/ListPreference;

    new-instance v1, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$6;

    invoke-direct {v1, p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$6;-><init>(Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;)V

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 412
    return-void
.end method

.method private initCustomLocationListPref()V
    .locals 5

    .prologue
    const v4, 0x7f0a00b6

    const v3, 0x7f060009

    .line 591
    new-instance v0, Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->mCustomLocationListPreference:Landroid/preference/ListPreference;

    .line 592
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->mCustomLocationListPreference:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a000e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setKey(Ljava/lang/String;)V

    .line 593
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->mCustomLocationListPreference:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 594
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->mCustomLocationListPreference:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 595
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->mCustomLocationListPreference:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 596
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->mCustomLocationListPreference:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 597
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->mCustomLocationListPreference:Landroid/preference/ListPreference;

    const v1, 0x7f03001a

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setWidgetLayoutResource(I)V

    .line 598
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->mCustomLocationListPreference:Landroid/preference/ListPreference;

    const v1, 0x7f03000a

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setLayoutResource(I)V

    .line 599
    return-void
.end method

.method private initHelp()V
    .locals 2

    .prologue
    .line 326
    const-string v0, "shabbat_mode_help"

    invoke-virtual {p0, v0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    new-instance v1, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$4;

    invoke-direct {v1, p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$4;-><init>(Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 334
    return-void
.end method

.method private initLocationPref()V
    .locals 2

    .prologue
    .line 422
    invoke-virtual {p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->initLocationRadioButtonsPreference()V

    .line 424
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->mLocationInfoPreference:Landroid/preference/Preference;

    if-nez v0, :cond_0

    .line 425
    new-instance v0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$7;

    iget-object v1, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$7;-><init>(Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->mLocationInfoPreference:Landroid/preference/Preference;

    .line 453
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->mLocationInfoPreference:Landroid/preference/Preference;

    const v1, 0x7f03001e

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 454
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->mLocationCategory:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->mLocationInfoPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 456
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->mLocationInfoPreference:Landroid/preference/Preference;

    new-instance v1, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$8;

    invoke-direct {v1, p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$8;-><init>(Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 467
    :cond_0
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->mAutoLocationPreference:Landroid/preference/CheckBoxPreference;

    new-instance v1, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$9;

    invoke-direct {v1, p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$9;-><init>(Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;)V

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 481
    return-void
.end method

.method private initLocationReceiver()V
    .locals 3

    .prologue
    .line 233
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 234
    .local v0, "writerFilter":Landroid/content/IntentFilter;
    const-string v1, "location_and_times_updated"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 235
    iget-object v1, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->writeLocationAndTimeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 236
    return-void
.end method

.method private initProgressDialog()V
    .locals 2

    .prologue
    .line 226
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->mProgress:Landroid/app/ProgressDialog;

    .line 227
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->mProgress:Landroid/app/ProgressDialog;

    const v1, 0x7f0a0049

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 228
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->mProgress:Landroid/app/ProgressDialog;

    const v1, 0x7f0a004a

    invoke-virtual {p0, v1}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 229
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->mProgress:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 230
    return-void
.end method

.method private initShabbatStrings()V
    .locals 8

    .prologue
    .line 210
    iget-object v6, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUserPrefsUtils;->getLocationString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->mLocationString:Ljava/lang/String;

    .line 211
    iget-object v6, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUserPrefsUtils;->getLocationCoordinatesString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->mCoordinatesString:Ljava/lang/String;

    .line 213
    iget-object v6, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUserPrefsUtils;->getShabbatEntranceGregorianDateString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 214
    .local v0, "shabbatEntranceGregorianDate":Ljava/lang/String;
    iget-object v6, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUserPrefsUtils;->getShabbatEntranceHebrewDateString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 215
    .local v1, "shabbatEntranceHebrewDate":Ljava/lang/String;
    iget-object v6, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUserPrefsUtils;->getShabbatExitGregorianDateString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 216
    .local v3, "shabbatExitGregorianDate":Ljava/lang/String;
    iget-object v6, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUserPrefsUtils;->getShabbatExitHebrewDateString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 217
    .local v4, "shabbatExitHebrewDate":Ljava/lang/String;
    iget-object v6, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUserPrefsUtils;->getShabbatEntranceTimeString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 218
    .local v2, "shabbatEntranceTime":Ljava/lang/String;
    iget-object v6, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUserPrefsUtils;->getShabbatExitTimeString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 220
    .local v5, "shabbatExitTime":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->mShabbatEntranceDetailsString:Ljava/lang/String;

    .line 221
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->mShabbatExitDetailsString:Ljava/lang/String;

    .line 222
    invoke-direct {p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->setLocationsAndTimeTextViews()V

    .line 223
    return-void
.end method

.method private initVars()V
    .locals 0

    .prologue
    .line 192
    invoke-direct {p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->initShabbatStrings()V

    .line 193
    return-void
.end method

.method private searchForLocationIfNotShabbat(Z)V
    .locals 3
    .param p1, "forceSearch"    # Z

    .prologue
    .line 485
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 486
    .local v0, "currentDate":Ljava/util/Calendar;
    iget-object v2, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/sec/shabbatmode/alarm/StageInWeekCalculator;->getStageInWeek(Landroid/content/Context;Ljava/util/Calendar;)Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;

    move-result-object v1

    .line 487
    .local v1, "stageInWeek":Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;
    sget-object v2, Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;->SHABBAT:Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;

    if-ne v1, v2, :cond_0

    .line 489
    invoke-static {}, Lcom/sec/shabbatmode/ShabbatModeApplication;->handleShabbatAlarm()V

    .line 498
    :goto_0
    return-void

    .line 496
    :cond_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->searchForLocation(Ljava/lang/Boolean;)V

    goto :goto_0
.end method

.method private setLocationsAndTimeTextViews()V
    .locals 5

    .prologue
    .line 672
    invoke-virtual {p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->shabbatEntranceTextView:Landroid/widget/TextView;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->shabbatLocationTextView:Landroid/widget/TextView;

    if-eqz v2, :cond_2

    .line 675
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "<b>"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->mLocationString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</b>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 676
    .local v0, "locationString":Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->mCoordinatesString:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 677
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "<br>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->mCoordinatesString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 679
    :cond_0
    iget-object v2, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->shabbatLocationTextView:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 682
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0095

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ":\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 683
    iget-object v3, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->mShabbatEntranceDetailsString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 682
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 685
    .local v1, "shabbatTimes":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a009a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 686
    iget-object v3, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->mShabbatExitDetailsString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 685
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 688
    iget-object v2, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->mShabbatEntranceDetailsString:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->mShabbatEntranceDetailsString:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xa

    if-ge v2, v3, :cond_3

    .line 689
    :cond_1
    iget-object v2, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->shabbatEntranceTextView:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 697
    .end local v0    # "locationString":Ljava/lang/String;
    .end local v1    # "shabbatTimes":Ljava/lang/String;
    :cond_2
    :goto_0
    return-void

    .line 693
    .restart local v0    # "locationString":Ljava/lang/String;
    .restart local v1    # "shabbatTimes":Ljava/lang/String;
    :cond_3
    iget-object v2, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->shabbatEntranceTextView:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 694
    iget-object v2, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->shabbatEntranceTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private showHelpDialog()V
    .locals 12

    .prologue
    .line 790
    invoke-virtual {p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const v9, 0x7f03000d

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 791
    .local v2, "checkBoxView2":Landroid/view/View;
    const v8, 0x7f0e002f

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 792
    .local v5, "text":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a00aa

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 793
    .local v6, "textString":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 795
    const v8, 0x7f0e002d

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 797
    .local v1, "checkBoxView":Landroid/view/View;
    const v8, 0x7f0e0011

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 798
    .local v0, "checkBox":Landroid/widget/CheckBox;
    invoke-virtual {p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const-string v9, "dont_show_help"

    invoke-static {v8, v9}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUserPrefsUtils;->getBooleanFromSharedPreferences(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-virtual {v0, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 800
    new-instance v8, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$15;

    invoke-direct {v8, p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$15;-><init>(Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;)V

    invoke-virtual {v0, v8}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 808
    new-instance v8, Landroid/app/AlertDialog$Builder;

    new-instance v9, Landroid/view/ContextThemeWrapper;

    iget-object v10, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->mContext:Landroid/content/Context;

    const v11, 0x7f0b0002

    invoke-direct {v9, v10, v11}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v8, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 809
    iget-object v9, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a00a7

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 810
    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 811
    invoke-virtual {v8, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 812
    iget-object v9, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a001f

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$16;

    invoke-direct {v10, p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$16;-><init>(Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;)V

    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 817
    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v3

    .line 819
    .local v3, "dialog":Landroid/app/AlertDialog;
    new-instance v4, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v4}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 820
    .local v4, "lp":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    .line 821
    .local v7, "window":Landroid/view/Window;
    invoke-virtual {v7}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 822
    const/4 v8, -0x1

    iput v8, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 823
    const/4 v8, -0x2

    iput v8, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 824
    invoke-virtual {v7, v4}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 826
    return-void
.end method

.method private showNoLocationAlert(Ljava/lang/Boolean;)V
    .locals 13
    .param p1, "clicked"    # Ljava/lang/Boolean;

    .prologue
    const/4 v12, 0x0

    const/4 v11, -0x2

    .line 706
    invoke-virtual {p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const-string v9, "dont_display_location_alert"

    invoke-static {v8, v9}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUserPrefsUtils;->getBooleanFromSharedPreferences(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    .line 707
    .local v5, "hideAlertCheckBoolean":Ljava/lang/Boolean;
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-nez v8, :cond_0

    .line 708
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-nez v8, :cond_1

    .line 709
    :cond_0
    invoke-virtual {p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const v9, 0x7f030005

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 710
    .local v4, "checkBoxView":Landroid/view/View;
    const v8, 0x7f0e0011

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    .line 711
    .local v3, "checkBox":Landroid/widget/CheckBox;
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-virtual {v3, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 713
    new-instance v8, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$12;

    invoke-direct {v8, p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$12;-><init>(Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;)V

    invoke-virtual {v3, v8}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 721
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->mContext:Landroid/content/Context;

    invoke-direct {v1, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 723
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v8, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a0091

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 724
    iget-object v9, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a0090

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 725
    invoke-virtual {v8, v12}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 726
    invoke-virtual {v8, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 727
    iget-object v9, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a0092

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$13;

    invoke-direct {v10, p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$13;-><init>(Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;)V

    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 736
    iget-object v9, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a0093

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$14;

    invoke-direct {v10, p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$14;-><init>(Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;)V

    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 743
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 744
    .local v0, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 745
    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v6}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 746
    .local v6, "lp":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    .line 747
    .local v7, "window":Landroid/view/Window;
    invoke-virtual {v7}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 748
    const/4 v8, -0x1

    iput v8, v6, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 749
    iput v11, v6, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 750
    invoke-virtual {v7, v6}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 751
    invoke-static {}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUtilities;->isOSLollipopOrUp()Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 752
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v11, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 753
    .local v2, "buttonLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v8, 0x32

    const/16 v9, 0x64

    invoke-virtual {v2, v8, v12, v9, v12}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 754
    invoke-virtual {v0, v11}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 755
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 758
    .end local v0    # "alert":Landroid/app/AlertDialog;
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v2    # "buttonLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v3    # "checkBox":Landroid/widget/CheckBox;
    .end local v4    # "checkBoxView":Landroid/view/View;
    .end local v6    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v7    # "window":Landroid/view/Window;
    :cond_1
    return-void
.end method

.method private stopZmanimGetter()V
    .locals 0

    .prologue
    .line 176
    invoke-static {}, Lcom/sec/shabbatmode/ShabbatModeApplication;->stopZmanimGetterLocationManager()V

    .line 177
    invoke-static {}, Lcom/sec/shabbatmode/ShabbatModeApplication;->setZmanimGetterNotInForeground()V

    .line 178
    return-void
.end method

.method private switchBarFromPreferences()V
    .locals 3

    .prologue
    .line 652
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->codeEnabling:Ljava/lang/Boolean;

    .line 653
    invoke-virtual {p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/sec/shabbatmode/preferences/ShomerShabbatActivity;

    .line 654
    .local v0, "activity":Lcom/sec/shabbatmode/preferences/ShomerShabbatActivity;
    iget-object v1, v0, Lcom/sec/shabbatmode/preferences/ShomerShabbatActivity;->mActionBarSwitch:Landroid/widget/Switch;

    if-eqz v1, :cond_0

    .line 655
    iget-object v1, v0, Lcom/sec/shabbatmode/preferences/ShomerShabbatActivity;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUserPrefsUtils;->getShabbatModeEnabled(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 656
    :cond_0
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->codeEnabling:Ljava/lang/Boolean;

    .line 657
    return-void
.end method

.method private switchBetweenFlightModeAndLogs(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "flightModeOn"    # Ljava/lang/Boolean;

    .prologue
    .line 613
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->mFlightModePreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 614
    iget-object v1, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->mBlockCallsPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 615
    return-void

    .line 614
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private switchBetweenManualAndAutoSearch(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "autoLocationOn"    # Ljava/lang/Boolean;

    .prologue
    .line 603
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->mAutoLocationPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 604
    iget-object v1, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->mCustomLocationPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 605
    invoke-direct {p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->enableCustomLocationPrefs()V

    .line 606
    return-void

    .line 604
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private unRegisterReceivers()V
    .locals 3

    .prologue
    .line 197
    :try_start_0
    iget-object v1, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->writeLocationAndTimeReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 198
    invoke-virtual {p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->writeLocationAndTimeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    :cond_0
    :goto_0
    return-void

    .line 200
    :catch_0
    move-exception v0

    .line 201
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Shabbat MainPreferencesFragment"

    const-string v2, "unregister exeption: "

    invoke-static {v1, v2}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private writeLocationAndTimes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 2
    .param p1, "location"    # Ljava/lang/String;
    .param p2, "coordinates"    # Ljava/lang/String;
    .param p3, "shabbatEntranceGregorianDate"    # Ljava/lang/String;
    .param p4, "shabbatEntranceHebrewDate"    # Ljava/lang/String;
    .param p5, "shabbatExitGregorianDate"    # Ljava/lang/String;
    .param p6, "shabbatExitHebrewDate"    # Ljava/lang/String;
    .param p7, "shabbatEntranceTime"    # Ljava/lang/String;
    .param p8, "shabbatExitTime"    # Ljava/lang/String;
    .param p9, "shabbatEntranceInMillis"    # J
    .param p11, "shabbatEndInMillis"    # J

    .prologue
    .line 663
    iput-object p1, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->mLocationString:Ljava/lang/String;

    .line 664
    iput-object p2, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->mCoordinatesString:Ljava/lang/String;

    .line 665
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->mShabbatEntranceDetailsString:Ljava/lang/String;

    .line 666
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->mShabbatExitDetailsString:Ljava/lang/String;

    .line 668
    invoke-direct {p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->setLocationsAndTimeTextViews()V

    .line 669
    return-void
.end method


# virtual methods
.method public initConnectivityPreference()V
    .locals 2

    .prologue
    .line 340
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->mConnectivityCategory:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->mBlockCallsPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 341
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->mConnectivityCategory:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->mFlightModePreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 342
    new-instance v0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$5;

    iget-object v1, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$5;-><init>(Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->mConnectivityPreference:Landroid/preference/Preference;

    .line 381
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->mConnectivityPreference:Landroid/preference/Preference;

    const v1, 0x7f030007

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 382
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->mConnectivityCategory:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->mConnectivityPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 383
    return-void
.end method

.method public initLocationRadioButtonsPreference()V
    .locals 2

    .prologue
    .line 503
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->mLocationCategory:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->mCustomLocationPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 504
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->mLocationCategory:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->mAutoLocationPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 505
    new-instance v0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$10;

    iget-object v1, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$10;-><init>(Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->mLocationSearchPreference:Landroid/preference/Preference;

    .line 569
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->mLocationSearchPreference:Landroid/preference/Preference;

    const v1, 0x7f030007

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 570
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->mLocationCategory:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->mLocationSearchPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 572
    invoke-direct {p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->initCustomLocationListPref()V

    .line 574
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->mLocationCategory:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->mCustomLocationListPreference:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 576
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->mCustomLocationListPreference:Landroid/preference/ListPreference;

    new-instance v1, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$11;

    invoke-direct {v1, p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$11;-><init>(Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;)V

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 588
    return-void
.end method

.method public initPreferences()V
    .locals 0

    .prologue
    .line 294
    invoke-direct {p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->getAllPreferences()V

    .line 295
    invoke-direct {p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->initLocationPref()V

    .line 296
    invoke-direct {p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->initAllowedContactsPref()V

    .line 297
    invoke-virtual {p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->initConnectivityPreference()V

    .line 298
    invoke-direct {p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->initHelp()V

    .line 299
    return-void
.end method

.method initShabbatSwitchBtn()V
    .locals 7

    .prologue
    const/16 v5, 0x10

    const/4 v4, 0x0

    const/4 v6, -0x2

    .line 239
    invoke-virtual {p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/sec/shabbatmode/preferences/ShomerShabbatActivity;

    .line 240
    .local v0, "activity":Lcom/sec/shabbatmode/preferences/ShomerShabbatActivity;
    new-instance v2, Landroid/widget/Switch;

    invoke-direct {v2, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/sec/shabbatmode/preferences/ShomerShabbatActivity;->mActionBarSwitch:Landroid/widget/Switch;

    .line 242
    invoke-virtual {v0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 243
    const v3, 0x7f08003e

    .line 242
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 244
    .local v1, "padding":I
    iget-object v2, v0, Lcom/sec/shabbatmode/preferences/ShomerShabbatActivity;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v1, v4, v1, v4}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 245
    invoke-virtual {v0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v5, v5}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 247
    invoke-virtual {v0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    .line 248
    iget-object v3, v0, Lcom/sec/shabbatmode/preferences/ShomerShabbatActivity;->mActionBarSwitch:Landroid/widget/Switch;

    .line 249
    new-instance v4, Landroid/app/ActionBar$LayoutParams;

    .line 250
    const v5, 0x800015

    .line 249
    invoke-direct {v4, v6, v6, v5}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    .line 247
    invoke-virtual {v2, v3, v4}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 253
    iget-object v2, v0, Lcom/sec/shabbatmode/preferences/ShomerShabbatActivity;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v3, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$2;

    invoke-direct {v3, p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment$2;-><init>(Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 284
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v3, 0x7f050001

    const/4 v0, 0x0

    .line 130
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 131
    const-string v1, "Shabbat MainPreferencesFragment"

    const-string v2, "MainPreferencesFragment onCreate"

    invoke-static {v1, v2}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    invoke-virtual {p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->mContext:Landroid/content/Context;

    .line 135
    iget-object v1, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->mContext:Landroid/content/Context;

    invoke-static {v1, v3, v0}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    .line 136
    iget-object v1, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 137
    invoke-virtual {p0, v3}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->addPreferencesFromResource(I)V

    .line 139
    invoke-direct {p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->initProgressDialog()V

    .line 140
    invoke-virtual {p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->initPreferences()V

    .line 141
    invoke-virtual {p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->initShabbatSwitchBtn()V

    .line 143
    sget-boolean v1, Lcom/sec/shabbatmode/Globals;->mInDebuggingMode:Z

    if-eqz v1, :cond_1

    :goto_0
    invoke-direct {p0, v0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->hideDebuggingLayout(Z)V

    .line 145
    invoke-virtual {p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "dont_show_help"

    invoke-static {v0, v1}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUserPrefsUtils;->getBooleanFromSharedPreferences(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 146
    invoke-direct {p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->showHelpDialog()V

    .line 148
    :cond_0
    return-void

    .line 143
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 182
    const-string v0, "Shabbat MainPreferencesFragment"

    const-string v1, "MainPreferencesFragment onDestroy"

    invoke-static {v0, v1}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    .line 185
    invoke-virtual {p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 186
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 162
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onPause()V

    .line 163
    const-string v0, "Shabbat MainPreferencesFragment"

    const-string v1, "MainPreferencesFragment onPause"

    invoke-static {v0, v1}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    invoke-direct {p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->stopZmanimGetter()V

    .line 167
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->mProgress:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 171
    :cond_0
    invoke-direct {p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->unRegisterReceivers()V

    .line 172
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 152
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 153
    const-string v0, "Shabbat MainPreferencesFragment"

    const-string v1, "MainPreferencesFragment onResume"

    invoke-static {v0, v1}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-direct {p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->initVars()V

    .line 156
    invoke-direct {p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->initLocationReceiver()V

    .line 157
    invoke-direct {p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->switchBarFromPreferences()V

    .line 158
    return-void
.end method

.method public searchForLocation(Ljava/lang/Boolean;)V
    .locals 6
    .param p1, "forceSearch"    # Ljava/lang/Boolean;

    .prologue
    const/4 v3, 0x1

    .line 639
    const-string v0, "Shabbat MainPreferencesFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "searchForLocation forceSearch = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->mProgress:Landroid/app/ProgressDialog;

    const/4 v2, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object v4, p1

    invoke-static/range {v0 .. v5}, Lcom/sec/shabbatmode/ShabbatModeApplication;->startZmanimGetter(Landroid/content/Context;Landroid/app/ProgressDialog;ZZLjava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 643
    invoke-virtual {p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUtilities;->isLocationEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 644
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUserPrefsUtils;->getIsInManualLocationMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 645
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUserPrefsUtils;->getManualLocationIndex(Landroid/content/Context;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 646
    invoke-direct {p0, p1}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->showNoLocationAlert(Ljava/lang/Boolean;)V

    .line 648
    :cond_0
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragment;->mContext:Landroid/content/Context;

    const-string v1, "START_NOTIFICATION"

    invoke-static {v0, v1, p1}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUserPrefsUtils;->saveBooleanToSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 649
    return-void
.end method
