.class public Lcom/sec/jewishapps/JewishAppsMainActivity;
.super Landroid/app/Activity;
.source "JewishAppsMainActivity.java"


# static fields
.field public static final CALENDAR:I = 0x1

.field public static final DEF_ACTIVITY:Ljava/lang/String; = "def_activity"

.field public static final SHOMER_SHABBAT:I = 0x2

.field public static SHOW_FIRST_TIME_ALERT:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-string v0, "SHOW_FIRST_TIME_ALERT"

    sput-object v0, Lcom/sec/jewishapps/JewishAppsMainActivity;->SHOW_FIRST_TIME_ALERT:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/sec/jewishapps/JewishAppsMainActivity;)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/sec/jewishapps/JewishAppsMainActivity;->goToCalendar()V

    return-void
.end method

.method static synthetic access$1(Lcom/sec/jewishapps/JewishAppsMainActivity;)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/sec/jewishapps/JewishAppsMainActivity;->goToShomerShabbat()V

    return-void
.end method

.method private goToCalendar()V
    .locals 2

    .prologue
    .line 68
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/jewishcalendar/JewishCalendarView;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 69
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/sec/jewishapps/JewishAppsMainActivity;->startActivity(Landroid/content/Intent;)V

    .line 70
    invoke-virtual {p0}, Lcom/sec/jewishapps/JewishAppsMainActivity;->finish()V

    .line 71
    return-void
.end method

.method private goToShomerShabbat()V
    .locals 2

    .prologue
    .line 73
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/shabbatmode/preferences/ShomerShabbatActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 74
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/sec/jewishapps/JewishAppsMainActivity;->startActivity(Landroid/content/Intent;)V

    .line 75
    invoke-virtual {p0}, Lcom/sec/jewishapps/JewishAppsMainActivity;->finish()V

    .line 76
    return-void
.end method

.method private initButtons()V
    .locals 2

    .prologue
    .line 49
    const v0, 0x7f0e0006

    invoke-virtual {p0, v0}, Lcom/sec/jewishapps/JewishAppsMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/sec/jewishapps/JewishAppsMainActivity$1;

    invoke-direct {v1, p0}, Lcom/sec/jewishapps/JewishAppsMainActivity$1;-><init>(Lcom/sec/jewishapps/JewishAppsMainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    const v0, 0x7f0e0009

    invoke-virtual {p0, v0}, Lcom/sec/jewishapps/JewishAppsMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/sec/jewishapps/JewishAppsMainActivity$2;

    invoke-direct {v1, p0}, Lcom/sec/jewishapps/JewishAppsMainActivity$2;-><init>(Lcom/sec/jewishapps/JewishAppsMainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    return-void
.end method

.method private showFirstScreen()V
    .locals 1

    .prologue
    .line 44
    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Lcom/sec/jewishapps/JewishAppsMainActivity;->setContentView(I)V

    .line 45
    invoke-direct {p0}, Lcom/sec/jewishapps/JewishAppsMainActivity;->initButtons()V

    .line 46
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 27
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    invoke-static {p0}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUtilities;->getDefaultLauncherActivity(Landroid/content/Context;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 37
    invoke-direct {p0}, Lcom/sec/jewishapps/JewishAppsMainActivity;->goToCalendar()V

    .line 40
    :goto_0
    return-void

    .line 31
    :pswitch_0
    invoke-direct {p0}, Lcom/sec/jewishapps/JewishAppsMainActivity;->goToCalendar()V

    goto :goto_0

    .line 34
    :pswitch_1
    invoke-direct {p0}, Lcom/sec/jewishapps/JewishAppsMainActivity;->goToShomerShabbat()V

    goto :goto_0

    .line 29
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
