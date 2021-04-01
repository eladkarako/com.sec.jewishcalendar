.class public Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatLifecycleHandler;
.super Ljava/lang/Object;
.source "ShomerShabbatLifecycleHandler.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# static fields
.field private static final TAG:Ljava/lang/String; = "Shabbat ShabbatModeLifecycleHandler"

.field private static paused:I

.field private static resumed:I

.field private static started:I

.field private static stopped:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isApplicationInForeground()Z
    .locals 2

    .prologue
    .line 58
    sget v0, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatLifecycleHandler;->resumed:I

    sget v1, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatLifecycleHandler;->paused:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isApplicationVisible()Z
    .locals 2

    .prologue
    .line 54
    sget v0, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatLifecycleHandler;->started:I

    sget v1, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatLifecycleHandler;->stopped:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 20
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 24
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 33
    sget v0, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatLifecycleHandler;->paused:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatLifecycleHandler;->paused:I

    .line 34
    const-string v1, "Shabbat ShabbatModeLifecycleHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "application is in foreground: "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v0, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatLifecycleHandler;->resumed:I

    sget v3, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatLifecycleHandler;->paused:I

    if-le v0, v3, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    return-void

    .line 34
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 28
    sget v0, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatLifecycleHandler;->resumed:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatLifecycleHandler;->resumed:I

    .line 29
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 39
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 43
    sget v0, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatLifecycleHandler;->started:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatLifecycleHandler;->started:I

    .line 44
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 48
    sget v0, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatLifecycleHandler;->stopped:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatLifecycleHandler;->stopped:I

    .line 49
    const-string v1, "Shabbat ShabbatModeLifecycleHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "application is visible: "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v0, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatLifecycleHandler;->started:I

    sget v3, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatLifecycleHandler;->stopped:I

    if-le v0, v3, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    return-void

    .line 49
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
