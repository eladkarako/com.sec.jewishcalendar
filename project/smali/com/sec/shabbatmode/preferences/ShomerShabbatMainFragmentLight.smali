.class public Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;
.super Landroid/preference/PreferenceFragment;
.source "ShomerShabbatMainFragmentLight.java"


# static fields
.field private static final DEVICE_ADMIN_CODE:I = 0x209

.field private static final STOP_HELP_DIALOG:Ljava/lang/String; = "dont_show_help"

.field private static final TAG:Ljava/lang/String; = "Shabbat ShomerShabbatMainFragmentLight"


# instance fields
.field private codeEnabling:Ljava/lang/Boolean;

.field devAdminReceiver:Landroid/content/ComponentName;

.field private mAllowedListPreference:Landroid/preference/Preference;

.field private mAllowedModePreference:Landroid/preference/ListPreference;

.field private mAutoLocationPreference:Landroid/preference/CheckBoxPreference;

.field private mBlockKeysPreference:Landroid/preference/CheckBoxPreference;

.field private mContactsCategory:Landroid/preference/PreferenceCategory;

.field private mContext:Landroid/content/Context;

.field private mCoordinatesString:Ljava/lang/String;

.field private mCustomLocationListPreference:Landroid/preference/ListPreference;

.field private mCustomLocationPreference:Landroid/preference/CheckBoxPreference;

.field mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mFeaturesCategory:Landroid/preference/PreferenceCategory;

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
    .line 53
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 117
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->codeEnabling:Ljava/lang/Boolean;

    .line 696
    new-instance v0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight$1;

    invoke-direct {v0, p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight$1;-><init>(Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;)V

    iput-object v0, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->writeLocationAndTimeReceiver:Landroid/content/BroadcastReceiver;

    .line 53
    return-void
.end method

.method static synthetic access$0(Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1(Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 1

    .prologue
    .line 598
    invoke-direct/range {p0 .. p12}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->writeLocationAndTimes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V

    return-void
.end method

.method static synthetic access$10(Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->shabbatLocationTextView:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic access$11(Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->shabbatEntranceTextView:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic access$12(Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;)V
    .locals 0

    .prologue
    .line 610
    invoke-direct {p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->setLocationsAndTimeTextViews()V

    return-void
.end method

.method static synthetic access$13(Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;)V
    .locals 0

    .prologue
    .line 430
    invoke-direct {p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->enableCustomLocationPrefs()V

    return-void
.end method

.method static synthetic access$14(Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;)Landroid/preference/CheckBoxPreference;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->mCustomLocationPreference:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$15(Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 555
    invoke-direct {p0, p1}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->switchBetweenManualAndAutoSearch(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$16(Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;)V
    .locals 0

    .prologue
    .line 170
    invoke-direct {p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->stopZmanimGetter()V

    return-void
.end method

.method static synthetic access$17(Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;)Landroid/preference/ListPreference;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->mCustomLocationListPreference:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$2(Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 286
    invoke-direct {p0, p1}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->enableAllPreferences(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$3(Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->codeEnabling:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$4(Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;Z)V
    .locals 0

    .prologue
    .line 435
    invoke-direct {p0, p1}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->searchForLocationIfNotShabbat(Z)V

    return-void
.end method

.method static synthetic access$5(Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;)V
    .locals 0

    .prologue
    .line 725
    invoke-direct {p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->showHelpDialog()V

    return-void
.end method

.method static synthetic access$6(Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;)Landroid/preference/ListPreference;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->mAllowedModePreference:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$7(Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;I)V
    .locals 0

    .prologue
    .line 567
    invoke-direct {p0, p1}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->enableAllowedContactsPrefs(I)V

    return-void
.end method

.method static synthetic access$8(Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;I)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 773
    invoke-direct {p0, p1}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->shouldDisplayDNDAlert(I)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$9(Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;)V
    .locals 0

    .prologue
    .line 790
    invoke-direct {p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->showDNDDialog()V

    return-void
.end method

.method private enableAllPreferences(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "enable"    # Ljava/lang/Boolean;

    .prologue
    .line 287
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->mLocationCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 288
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->mContactsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 289
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->mFeaturesCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 290
    return-void
.end method

.method private enableAllowedContactsPrefs()V
    .locals 3

    .prologue
    .line 563
    iget-object v1, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->mAllowedModePreference:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->mAllowedModePreference:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 564
    .local v0, "index":I
    invoke-direct {p0, v0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->enableAllowedContactsPrefs(I)V

    .line 565
    return-void
.end method

.method private enableAllowedContactsPrefs(I)V
    .locals 5
    .param p1, "index"    # I

    .prologue
    .line 568
    iget-object v2, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->mAllowedModePreference:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a008f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 569
    .local v0, "customIndex":I
    if-ne p1, v0, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 570
    .local v1, "enable":Ljava/lang/Boolean;
    iget-object v2, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->mAllowedListPreference:Landroid/preference/Preference;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 571
    return-void

    .line 569
    .end local v1    # "enable":Ljava/lang/Boolean;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private enableCustomLocationPrefs()V
    .locals 2

    .prologue
    .line 431
    iget-object v1, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->mCustomLocationListPreference:Landroid/preference/ListPreference;

    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->mCustomLocationPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 432
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->mAutoLocationPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 431
    :goto_0
    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 433
    return-void

    .line 432
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getAllPreferences()V
    .locals 2

    .prologue
    .line 301
    invoke-virtual {p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->mLocationCategory:Landroid/preference/PreferenceCategory;

    .line 302
    invoke-virtual {p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->mFeaturesCategory:Landroid/preference/PreferenceCategory;

    .line 303
    invoke-virtual {p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->mContactsCategory:Landroid/preference/PreferenceCategory;

    .line 306
    invoke-virtual {p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->mBlockKeysPreference:Landroid/preference/CheckBoxPreference;

    .line 307
    invoke-virtual {p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->mAutoLocationPreference:Landroid/preference/CheckBoxPreference;

    .line 308
    invoke-virtual {p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->mCustomLocationPreference:Landroid/preference/CheckBoxPreference;

    .line 309
    invoke-virtual {p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->mAllowedModePreference:Landroid/preference/ListPreference;

    .line 310
    invoke-virtual {p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->mAllowedListPreference:Landroid/preference/Preference;

    .line 312
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->mAllowedListPreference:Landroid/preference/Preference;

    new-instance v1, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight$3;

    invoke-direct {v1, p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight$3;-><init>(Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 321
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->mBlockKeysPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUtilities;->haveAdminRights(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->mBlockKeysPreference:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 325
    :cond_0
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->mBlockKeysPreference:Landroid/preference/CheckBoxPreference;

    new-instance v1, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight$4;

    invoke-direct {v1, p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight$4;-><init>(Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;)V

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 335
    return-void
.end method

.method private hideDebuggingLayout(Z)V
    .locals 2
    .param p1, "hide"    # Z

    .prologue
    .line 719
    if-eqz p1, :cond_0

    .line 720
    const-string v0, "preferenceScreen"

    invoke-virtual {p0, v0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    .line 721
    const-string v1, "shabbat_debug_category"

    invoke-virtual {p0, v1}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 723
    :cond_0
    return-void
.end method

.method private initAllowedContactsPref()V
    .locals 2

    .prologue
    .line 350
    invoke-direct {p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->enableAllowedContactsPrefs()V

    .line 351
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->mAllowedModePreference:Landroid/preference/ListPreference;

    new-instance v1, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight$6;

    invoke-direct {v1, p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight$6;-><init>(Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;)V

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 373
    return-void
.end method

.method private initCustomLocationListPref()V
    .locals 5

    .prologue
    const v4, 0x7f0a00b6

    const v3, 0x7f060009

    .line 544
    new-instance v0, Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->mCustomLocationListPreference:Landroid/preference/ListPreference;

    .line 545
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->mCustomLocationListPreference:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a000e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setKey(Ljava/lang/String;)V

    .line 546
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->mCustomLocationListPreference:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 547
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->mCustomLocationListPreference:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 548
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->mCustomLocationListPreference:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 549
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->mCustomLocationListPreference:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 550
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->mCustomLocationListPreference:Landroid/preference/ListPreference;

    const v1, 0x7f03001a

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setWidgetLayoutResource(I)V

    .line 551
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->mCustomLocationListPreference:Landroid/preference/ListPreference;

    const v1, 0x7f03000a

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setLayoutResource(I)V

    .line 552
    return-void
.end method

.method private initHelp()V
    .locals 2

    .prologue
    .line 338
    const-string v0, "shabbat_mode_help"

    invoke-virtual {p0, v0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    new-instance v1, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight$5;

    invoke-direct {v1, p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight$5;-><init>(Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 347
    return-void
.end method

.method private initLocationPref()V
    .locals 2

    .prologue
    .line 384
    invoke-virtual {p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->initLocationRadioButtonsPreference()V

    .line 386
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->mLocationInfoPreference:Landroid/preference/Preference;

    if-nez v0, :cond_0

    .line 387
    new-instance v0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight$7;

    iget-object v1, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight$7;-><init>(Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->mLocationInfoPreference:Landroid/preference/Preference;

    .line 415
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->mLocationInfoPreference:Landroid/preference/Preference;

    const v1, 0x7f03001e

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 416
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->mLocationCategory:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->mLocationInfoPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 418
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->mLocationInfoPreference:Landroid/preference/Preference;

    new-instance v1, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight$8;

    invoke-direct {v1, p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight$8;-><init>(Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 428
    :cond_0
    return-void
.end method

.method private initLocationReceiver()V
    .locals 3

    .prologue
    .line 228
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 229
    .local v0, "writerFilter":Landroid/content/IntentFilter;
    const-string v1, "location_and_times_updated"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 230
    iget-object v1, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->writeLocationAndTimeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 231
    return-void
.end method

.method private initProgressDialog()V
    .locals 2

    .prologue
    .line 221
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->mProgress:Landroid/app/ProgressDialog;

    .line 222
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->mProgress:Landroid/app/ProgressDialog;

    const v1, 0x7f0a0049

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 223
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->mProgress:Landroid/app/ProgressDialog;

    const v1, 0x7f0a004a

    invoke-virtual {p0, v1}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 224
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->mProgress:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 225
    return-void
.end method

.method private initShabbatStrings()V
    .locals 8

    .prologue
    .line 205
    iget-object v6, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUserPrefsUtils;->getLocationString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->mLocationString:Ljava/lang/String;

    .line 206
    iget-object v6, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUserPrefsUtils;->getLocationCoordinatesString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->mCoordinatesString:Ljava/lang/String;

    .line 208
    iget-object v6, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUserPrefsUtils;->getShabbatEntranceGregorianDateString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 209
    .local v0, "shabbatEntranceGregorianDate":Ljava/lang/String;
    iget-object v6, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUserPrefsUtils;->getShabbatEntranceHebrewDateString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 210
    .local v1, "shabbatEntranceHebrewDate":Ljava/lang/String;
    iget-object v6, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUserPrefsUtils;->getShabbatExitGregorianDateString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 211
    .local v3, "shabbatExitGregorianDate":Ljava/lang/String;
    iget-object v6, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUserPrefsUtils;->getShabbatExitHebrewDateString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 212
    .local v4, "shabbatExitHebrewDate":Ljava/lang/String;
    iget-object v6, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUserPrefsUtils;->getShabbatEntranceTimeString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 213
    .local v2, "shabbatEntranceTime":Ljava/lang/String;
    iget-object v6, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUserPrefsUtils;->getShabbatExitTimeString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 215
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

    iput-object v6, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->mShabbatEntranceDetailsString:Ljava/lang/String;

    .line 216
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

    iput-object v6, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->mShabbatExitDetailsString:Ljava/lang/String;

    .line 217
    invoke-direct {p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->setLocationsAndTimeTextViews()V

    .line 218
    return-void
.end method

.method private initVars()V
    .locals 0

    .prologue
    .line 187
    invoke-direct {p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->initShabbatStrings()V

    .line 188
    return-void
.end method

.method private searchForLocationIfNotShabbat(Z)V
    .locals 3
    .param p1, "forceSearch"    # Z

    .prologue
    .line 437
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 438
    .local v0, "currentDate":Ljava/util/Calendar;
    iget-object v2, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/sec/shabbatmode/alarm/StageInWeekCalculator;->getStageInWeek(Landroid/content/Context;Ljava/util/Calendar;)Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;

    move-result-object v1

    .line 439
    .local v1, "stageInWeek":Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;
    sget-object v2, Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;->SHABBAT:Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;

    if-ne v1, v2, :cond_0

    .line 441
    invoke-static {}, Lcom/sec/shabbatmode/ShabbatModeApplication;->handleShabbatAlarm()V

    .line 450
    :goto_0
    return-void

    .line 448
    :cond_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->searchForLocation(Ljava/lang/Boolean;)V

    goto :goto_0
.end method

.method private setLocationsAndTimeTextViews()V
    .locals 5

    .prologue
    .line 611
    invoke-virtual {p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->shabbatEntranceTextView:Landroid/widget/TextView;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->shabbatLocationTextView:Landroid/widget/TextView;

    if-eqz v2, :cond_2

    .line 614
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "<b>"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->mLocationString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</b>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 615
    .local v0, "locationString":Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->mCoordinatesString:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 616
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "<br>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->mCoordinatesString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 618
    :cond_0
    iget-object v2, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->shabbatLocationTextView:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 621
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->getResources()Landroid/content/res/Resources;

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

    .line 622
    iget-object v3, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->mShabbatEntranceDetailsString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 621
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 624
    .local v1, "shabbatTimes":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a009a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 625
    iget-object v3, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->mShabbatExitDetailsString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 624
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 627
    iget-object v2, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->mShabbatEntranceDetailsString:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->mShabbatEntranceDetailsString:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xa

    if-ge v2, v3, :cond_3

    .line 628
    :cond_1
    iget-object v2, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->shabbatEntranceTextView:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 636
    .end local v0    # "locationString":Ljava/lang/String;
    .end local v1    # "shabbatTimes":Ljava/lang/String;
    :cond_2
    :goto_0
    return-void

    .line 632
    .restart local v0    # "locationString":Ljava/lang/String;
    .restart local v1    # "shabbatTimes":Ljava/lang/String;
    :cond_3
    iget-object v2, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->shabbatEntranceTextView:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 633
    iget-object v2, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->shabbatEntranceTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private shouldDisplayDNDAlert(I)Ljava/lang/Boolean;
    .locals 7
    .param p1, "index"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 774
    invoke-static {}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUtilities;->isOSLollipopOrUp()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 775
    iget-object v2, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->mAllowedModePreference:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a008c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 776
    .local v0, "noneIndex":I
    if-eq p1, v0, :cond_0

    move v2, v3

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 777
    .local v1, "show":Ljava/lang/Boolean;
    iget-object v2, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/shabbatmode/preferences/utilities/ZenModeUtilities;->getInterruptionsMode(Landroid/content/Context;)I

    move-result v2

    if-eqz v2, :cond_1

    .line 778
    invoke-virtual {p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v5, "dnd_show_alert"

    invoke-static {v2, v5}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUserPrefsUtils;->getBooleanFromSharedPreferences(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    .line 779
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 780
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 784
    .end local v0    # "noneIndex":I
    .end local v1    # "show":Ljava/lang/Boolean;
    :goto_1
    return-object v2

    .restart local v0    # "noneIndex":I
    :cond_0
    move v2, v4

    .line 776
    goto :goto_0

    .line 784
    .end local v0    # "noneIndex":I
    :cond_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_1
.end method

.method private showDNDDialog()V
    .locals 6

    .prologue
    .line 792
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 793
    iget-object v4, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a00a8

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 794
    iget-object v4, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a00a9

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 795
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 796
    iget-object v4, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0092

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight$16;

    invoke-direct {v5, p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight$16;-><init>(Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 802
    iget-object v4, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0093

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight$17;

    invoke-direct {v5, p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight$17;-><init>(Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 806
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 808
    .local v0, "dialog":Landroid/app/AlertDialog;
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 809
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 810
    .local v2, "window":Landroid/view/Window;
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 811
    const/4 v3, -0x1

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 812
    const/4 v3, -0x2

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 813
    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 815
    return-void
.end method

.method private showHelpDialog()V
    .locals 11

    .prologue
    .line 726
    invoke-virtual {p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const v9, 0x7f03000d

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 727
    .local v2, "checkBoxView2":Landroid/view/View;
    const v8, 0x7f0e002f

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 728
    .local v5, "text":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a00ab

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 729
    .local v6, "textString":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 731
    const v8, 0x7f0e002d

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 733
    .local v1, "checkBoxView":Landroid/view/View;
    const v8, 0x7f0e0011

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 734
    .local v0, "checkBox":Landroid/widget/CheckBox;
    invoke-virtual {p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const-string v9, "dont_show_help"

    invoke-static {v8, v9}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUserPrefsUtils;->getBooleanFromSharedPreferences(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-virtual {v0, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 736
    new-instance v8, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight$14;

    invoke-direct {v8, p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight$14;-><init>(Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;)V

    invoke-virtual {v0, v8}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 744
    new-instance v8, Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 745
    iget-object v9, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a00a7

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 746
    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 747
    invoke-virtual {v8, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 748
    iget-object v9, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a001f

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight$15;

    invoke-direct {v10, p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight$15;-><init>(Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;)V

    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 753
    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v3

    .line 755
    .local v3, "dialog":Landroid/app/AlertDialog;
    new-instance v4, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v4}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 756
    .local v4, "lp":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    .line 757
    .local v7, "window":Landroid/view/Window;
    invoke-virtual {v7}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 758
    const/4 v8, -0x1

    iput v8, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 759
    const/4 v8, -0x2

    iput v8, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 760
    invoke-virtual {v7, v4}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 762
    return-void
.end method

.method private showNoLocationAlert(Ljava/lang/Boolean;)V
    .locals 13
    .param p1, "clicked"    # Ljava/lang/Boolean;

    .prologue
    const/4 v12, 0x0

    const/4 v11, -0x2

    .line 645
    invoke-virtual {p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const-string v9, "dont_display_location_alert"

    invoke-static {v8, v9}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUserPrefsUtils;->getBooleanFromSharedPreferences(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    .line 646
    .local v5, "hideAlertCheckBoolean":Ljava/lang/Boolean;
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-nez v8, :cond_0

    .line 647
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-nez v8, :cond_1

    .line 648
    :cond_0
    invoke-virtual {p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const v9, 0x7f030005

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 649
    .local v4, "checkBoxView":Landroid/view/View;
    const v8, 0x7f0e0011

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    .line 650
    .local v3, "checkBox":Landroid/widget/CheckBox;
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-virtual {v3, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 652
    new-instance v8, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight$11;

    invoke-direct {v8, p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight$11;-><init>(Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;)V

    invoke-virtual {v3, v8}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 660
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->mContext:Landroid/content/Context;

    invoke-direct {v1, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 662
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v8, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a0091

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 663
    iget-object v9, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a0090

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 664
    invoke-virtual {v8, v12}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 665
    invoke-virtual {v8, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 666
    iget-object v9, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a0092

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight$12;

    invoke-direct {v10, p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight$12;-><init>(Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;)V

    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 673
    iget-object v9, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a0093

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight$13;

    invoke-direct {v10, p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight$13;-><init>(Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;)V

    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 678
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 679
    .local v0, "alert":Landroid/app/AlertDialog;
    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 680
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 681
    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v6}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 682
    .local v6, "lp":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    .line 683
    .local v7, "window":Landroid/view/Window;
    invoke-virtual {v7}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 684
    const/4 v8, -0x1

    iput v8, v6, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 685
    iput v11, v6, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 686
    invoke-virtual {v7, v6}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 687
    invoke-static {}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUtilities;->isOSLollipopOrUp()Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 688
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v11, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 689
    .local v2, "buttonLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v8, 0x32

    const/16 v9, 0x64

    invoke-virtual {v2, v8, v12, v9, v12}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 690
    invoke-virtual {v0, v11}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 691
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 694
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
    .line 171
    invoke-static {}, Lcom/sec/shabbatmode/ShabbatModeApplication;->stopZmanimGetterLocationManager()V

    .line 172
    invoke-static {}, Lcom/sec/shabbatmode/ShabbatModeApplication;->setZmanimGetterNotInForeground()V

    .line 173
    return-void
.end method

.method private switchBarFromPreferences()V
    .locals 4

    .prologue
    .line 588
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->codeEnabling:Ljava/lang/Boolean;

    .line 589
    invoke-virtual {p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/sec/shabbatmode/preferences/ShomerShabbatActivity;

    .line 590
    .local v0, "activity":Lcom/sec/shabbatmode/preferences/ShomerShabbatActivity;
    iget-object v1, v0, Lcom/sec/shabbatmode/preferences/ShomerShabbatActivity;->mActionBarSwitch:Landroid/widget/Switch;

    if-eqz v1, :cond_0

    .line 591
    iget-object v1, v0, Lcom/sec/shabbatmode/preferences/ShomerShabbatActivity;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUserPrefsUtils;->getShabbatModeEnabled(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 593
    :cond_0
    const-string v1, "Shabbat ShomerShabbatMainFragmentLight"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "switchBarFromPreferences codeEnabling = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->codeEnabling:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->codeEnabling:Ljava/lang/Boolean;

    .line 596
    return-void
.end method

.method private switchBetweenManualAndAutoSearch(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "autoLocationOn"    # Ljava/lang/Boolean;

    .prologue
    .line 556
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->mAutoLocationPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 557
    iget-object v1, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->mCustomLocationPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 558
    invoke-direct {p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->enableCustomLocationPrefs()V

    .line 559
    return-void

    .line 557
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private unRegisterReceivers()V
    .locals 3

    .prologue
    .line 192
    :try_start_0
    iget-object v1, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->writeLocationAndTimeReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 193
    invoke-virtual {p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->writeLocationAndTimeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 195
    :catch_0
    move-exception v0

    .line 196
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Shabbat ShomerShabbatMainFragmentLight"

    const-string v2, "unregister exeption: "

    invoke-static {v1, v2}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
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
    .line 602
    iput-object p1, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->mLocationString:Ljava/lang/String;

    .line 603
    iput-object p2, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->mCoordinatesString:Ljava/lang/String;

    .line 604
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

    iput-object v0, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->mShabbatEntranceDetailsString:Ljava/lang/String;

    .line 605
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

    iput-object v0, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->mShabbatExitDetailsString:Ljava/lang/String;

    .line 607
    invoke-direct {p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->setLocationsAndTimeTextViews()V

    .line 608
    return-void
.end method


# virtual methods
.method public activateAdminRights()V
    .locals 5

    .prologue
    .line 819
    const-string v2, "Shabbat ShomerShabbatMainFragmentLight"

    const-string v3, "activateAdminRights"

    invoke-static {v2, v3}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 821
    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/sec/shabbatmode/deviceadmin/DeviceAdmin;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 822
    .local v1, "mDeviceAdminSample":Landroid/content/ComponentName;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.app.action.ADD_DEVICE_ADMIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 823
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "android.app.extra.DEVICE_ADMIN"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 824
    const-string v2, "android.app.extra.ADD_EXPLANATION"

    .line 825
    invoke-virtual {p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a00b1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 824
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 826
    const/16 v2, 0x209

    invoke-virtual {p0, v0, v2}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->startActivityForResult(Landroid/content/Intent;I)V

    .line 827
    return-void
.end method

.method public initLocationRadioButtonsPreference()V
    .locals 2

    .prologue
    .line 456
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->mLocationCategory:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->mCustomLocationPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 457
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->mLocationCategory:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->mAutoLocationPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 458
    new-instance v0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight$9;

    iget-object v1, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight$9;-><init>(Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->mLocationSearchPreference:Landroid/preference/Preference;

    .line 522
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->mLocationSearchPreference:Landroid/preference/Preference;

    const v1, 0x7f030007

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 523
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->mLocationCategory:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->mLocationSearchPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 525
    invoke-direct {p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->initCustomLocationListPref()V

    .line 527
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->mLocationCategory:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->mCustomLocationListPreference:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 529
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->mCustomLocationListPreference:Landroid/preference/ListPreference;

    new-instance v1, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight$10;

    invoke-direct {v1, p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight$10;-><init>(Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;)V

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 541
    return-void
.end method

.method public initPreferences()V
    .locals 0

    .prologue
    .line 293
    invoke-direct {p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->getAllPreferences()V

    .line 294
    invoke-direct {p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->initLocationPref()V

    .line 295
    invoke-direct {p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->initAllowedContactsPref()V

    .line 296
    invoke-direct {p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->initHelp()V

    .line 297
    return-void
.end method

.method initShabbatSwitchBtn()V
    .locals 7

    .prologue
    const/16 v5, 0x10

    const/4 v4, 0x0

    const/4 v6, -0x2

    .line 234
    invoke-virtual {p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/sec/shabbatmode/preferences/ShomerShabbatActivity;

    .line 235
    .local v0, "activity":Lcom/sec/shabbatmode/preferences/ShomerShabbatActivity;
    new-instance v2, Landroid/widget/Switch;

    invoke-direct {v2, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/sec/shabbatmode/preferences/ShomerShabbatActivity;->mActionBarSwitch:Landroid/widget/Switch;

    .line 237
    invoke-virtual {v0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 238
    const v3, 0x7f08003e

    .line 237
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 239
    .local v1, "padding":I
    iget-object v2, v0, Lcom/sec/shabbatmode/preferences/ShomerShabbatActivity;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v1, v4, v1, v4}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 240
    invoke-virtual {v0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v5, v5}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 242
    invoke-virtual {v0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    .line 243
    iget-object v3, v0, Lcom/sec/shabbatmode/preferences/ShomerShabbatActivity;->mActionBarSwitch:Landroid/widget/Switch;

    .line 244
    new-instance v4, Landroid/app/ActionBar$LayoutParams;

    .line 245
    const v5, 0x800015

    .line 244
    invoke-direct {v4, v6, v6, v5}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    .line 242
    invoke-virtual {v2, v3, v4}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 248
    iget-object v2, v0, Lcom/sec/shabbatmode/preferences/ShomerShabbatActivity;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v3, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight$2;

    invoke-direct {v3, p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight$2;-><init>(Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;)V

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 284
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 831
    const/16 v0, 0x209

    if-ne p1, v0, :cond_1

    .line 836
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 837
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->mBlockKeysPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 838
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->mBlockKeysPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 841
    :cond_0
    invoke-direct {p0, v1}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->searchForLocationIfNotShabbat(Z)V

    .line 843
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v3, 0x7f050002

    const/4 v0, 0x0

    .line 123
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 124
    const-string v1, "Shabbat ShomerShabbatMainFragmentLight"

    const-string v2, "MainPreferencesFragment onCreate"

    invoke-static {v1, v2}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->mContext:Landroid/content/Context;

    .line 128
    iget-object v1, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->mContext:Landroid/content/Context;

    invoke-static {v1, v3, v0}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    .line 129
    iget-object v1, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 130
    invoke-virtual {p0, v3}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->addPreferencesFromResource(I)V

    .line 132
    invoke-direct {p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->initProgressDialog()V

    .line 133
    invoke-virtual {p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->initPreferences()V

    .line 134
    invoke-virtual {p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->initShabbatSwitchBtn()V

    .line 136
    sget-boolean v1, Lcom/sec/shabbatmode/Globals;->mInDebuggingMode:Z

    if-eqz v1, :cond_1

    :goto_0
    invoke-direct {p0, v0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->hideDebuggingLayout(Z)V

    .line 138
    invoke-virtual {p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "dont_show_help"

    invoke-static {v0, v1}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUserPrefsUtils;->getBooleanFromSharedPreferences(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 139
    invoke-direct {p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->showHelpDialog()V

    .line 141
    :cond_0
    return-void

    .line 136
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 177
    const-string v0, "Shabbat ShomerShabbatMainFragmentLight"

    const-string v1, "MainPreferencesFragment onDestroy"

    invoke-static {v0, v1}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    .line 180
    invoke-virtual {p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 181
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 155
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onPause()V

    .line 156
    const-string v0, "Shabbat ShomerShabbatMainFragmentLight"

    const-string v1, "MainPreferencesFragment onPause"

    invoke-static {v0, v1}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-direct {p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->stopZmanimGetter()V

    .line 160
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->mProgress:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 164
    :cond_0
    invoke-direct {p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->unRegisterReceivers()V

    .line 165
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 145
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 146
    const-string v0, "Shabbat ShomerShabbatMainFragmentLight"

    const-string v1, "MainPreferencesFragment onResume"

    invoke-static {v0, v1}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    invoke-direct {p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->initVars()V

    .line 149
    invoke-direct {p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->initLocationReceiver()V

    .line 150
    invoke-direct {p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->switchBarFromPreferences()V

    .line 151
    return-void
.end method

.method public searchForLocation(Ljava/lang/Boolean;)V
    .locals 6
    .param p1, "forceSearch"    # Ljava/lang/Boolean;

    .prologue
    const/4 v3, 0x1

    .line 578
    const-string v0, "Shabbat ShomerShabbatMainFragmentLight"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "searchForLocation forceSearch = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->mProgress:Landroid/app/ProgressDialog;

    const/4 v2, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object v4, p1

    invoke-static/range {v0 .. v5}, Lcom/sec/shabbatmode/ShabbatModeApplication;->startZmanimGetter(Landroid/content/Context;Landroid/app/ProgressDialog;ZZLjava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 581
    invoke-virtual {p0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUtilities;->isLocationEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 582
    invoke-direct {p0, p1}, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->showNoLocationAlert(Ljava/lang/Boolean;)V

    .line 584
    :cond_0
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatMainFragmentLight;->mContext:Landroid/content/Context;

    const-string v1, "START_NOTIFICATION"

    invoke-static {v0, v1, p1}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUserPrefsUtils;->saveBooleanToSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 585
    return-void
.end method
