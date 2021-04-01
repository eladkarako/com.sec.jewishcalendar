.class Lcom/sec/shabbatmode/preferences/utilities/HomeKeyLocker$OverlayDialog;
.super Landroid/app/AlertDialog;
.source "HomeKeyLocker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/shabbatmode/preferences/utilities/HomeKeyLocker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OverlayDialog"
.end annotation


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v4, 0x0

    .line 38
    const v1, 0x7f0b000b

    invoke-direct {p0, p1, v1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 39
    invoke-virtual {p0}, Lcom/sec/shabbatmode/preferences/utilities/HomeKeyLocker$OverlayDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 40
    .local v0, "params":Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x7da

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 41
    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 42
    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 43
    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 44
    const/16 v1, 0x50

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 45
    invoke-virtual {p0}, Lcom/sec/shabbatmode/preferences/utilities/HomeKeyLocker$OverlayDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 46
    invoke-virtual {p0}, Lcom/sec/shabbatmode/preferences/utilities/HomeKeyLocker$OverlayDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x80020

    const v3, 0xffffff

    invoke-virtual {v1, v2, v3}, Landroid/view/Window;->setFlags(II)V

    .line 47
    invoke-virtual {p0, p1}, Lcom/sec/shabbatmode/preferences/utilities/HomeKeyLocker$OverlayDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 48
    invoke-virtual {p0, v4}, Lcom/sec/shabbatmode/preferences/utilities/HomeKeyLocker$OverlayDialog;->setCancelable(Z)V

    .line 49
    return-void
.end method


# virtual methods
.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "motionevent"    # Landroid/view/MotionEvent;

    .prologue
    .line 52
    const/4 v0, 0x1

    return v0
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 56
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 57
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/sec/shabbatmode/preferences/utilities/HomeKeyLocker$OverlayDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 58
    .local v0, "framelayout":Landroid/widget/FrameLayout;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 59
    invoke-virtual {p0, v0}, Lcom/sec/shabbatmode/preferences/utilities/HomeKeyLocker$OverlayDialog;->setContentView(Landroid/view/View;)V

    .line 60
    return-void
.end method
