.class Lcom/sec/shabbatmode/alarm/ShabbatAlarm$2;
.super Ljava/lang/Object;
.source "ShabbatAlarm.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/shabbatmode/alarm/ShabbatAlarm;->showShabbatModeCanceledDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/shabbatmode/alarm/ShabbatAlarm;


# direct methods
.method constructor <init>(Lcom/sec/shabbatmode/alarm/ShabbatAlarm;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/shabbatmode/alarm/ShabbatAlarm$2;->this$0:Lcom/sec/shabbatmode/alarm/ShabbatAlarm;

    .line 467
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 471
    iget-object v0, p0, Lcom/sec/shabbatmode/alarm/ShabbatAlarm$2;->this$0:Lcom/sec/shabbatmode/alarm/ShabbatAlarm;

    invoke-static {v0}, Lcom/sec/shabbatmode/alarm/ShabbatAlarm;->access$1(Lcom/sec/shabbatmode/alarm/ShabbatAlarm;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUtilities;->openMainPreferenceActivity(Landroid/content/Context;)V

    .line 472
    return-void
.end method
