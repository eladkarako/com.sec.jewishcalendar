.class public Lcom/sec/shabbatmode/preferences/utilities/HomeKeyLocker;
.super Ljava/lang/Object;
.source "HomeKeyLocker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/shabbatmode/preferences/utilities/HomeKeyLocker$OverlayDialog;
    }
.end annotation


# instance fields
.field private mOverlayDialog:Lcom/sec/shabbatmode/preferences/utilities/HomeKeyLocker$OverlayDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public lock(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/utilities/HomeKeyLocker;->mOverlayDialog:Lcom/sec/shabbatmode/preferences/utilities/HomeKeyLocker$OverlayDialog;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Lcom/sec/shabbatmode/preferences/utilities/HomeKeyLocker$OverlayDialog;

    invoke-direct {v0, p1}, Lcom/sec/shabbatmode/preferences/utilities/HomeKeyLocker$OverlayDialog;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/sec/shabbatmode/preferences/utilities/HomeKeyLocker;->mOverlayDialog:Lcom/sec/shabbatmode/preferences/utilities/HomeKeyLocker$OverlayDialog;

    .line 24
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/utilities/HomeKeyLocker;->mOverlayDialog:Lcom/sec/shabbatmode/preferences/utilities/HomeKeyLocker$OverlayDialog;

    invoke-virtual {v0}, Lcom/sec/shabbatmode/preferences/utilities/HomeKeyLocker$OverlayDialog;->show()V

    .line 26
    :cond_0
    return-void
.end method

.method public unlock()V
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/utilities/HomeKeyLocker;->mOverlayDialog:Lcom/sec/shabbatmode/preferences/utilities/HomeKeyLocker$OverlayDialog;

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/utilities/HomeKeyLocker;->mOverlayDialog:Lcom/sec/shabbatmode/preferences/utilities/HomeKeyLocker$OverlayDialog;

    invoke-virtual {v0}, Lcom/sec/shabbatmode/preferences/utilities/HomeKeyLocker$OverlayDialog;->dismiss()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/shabbatmode/preferences/utilities/HomeKeyLocker;->mOverlayDialog:Lcom/sec/shabbatmode/preferences/utilities/HomeKeyLocker$OverlayDialog;

    .line 33
    :cond_0
    return-void
.end method
