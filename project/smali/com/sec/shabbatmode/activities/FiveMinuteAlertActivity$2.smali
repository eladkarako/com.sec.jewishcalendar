.class Lcom/sec/shabbatmode/activities/FiveMinuteAlertActivity$2;
.super Ljava/lang/Object;
.source "FiveMinuteAlertActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/shabbatmode/activities/FiveMinuteAlertActivity;->show5MinuteAlert()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/shabbatmode/activities/FiveMinuteAlertActivity;


# direct methods
.method constructor <init>(Lcom/sec/shabbatmode/activities/FiveMinuteAlertActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/shabbatmode/activities/FiveMinuteAlertActivity$2;->this$0:Lcom/sec/shabbatmode/activities/FiveMinuteAlertActivity;

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/sec/shabbatmode/activities/FiveMinuteAlertActivity$2;->this$0:Lcom/sec/shabbatmode/activities/FiveMinuteAlertActivity;

    invoke-static {v0}, Lcom/sec/shabbatmode/activities/FiveMinuteAlertActivity;->access$0(Lcom/sec/shabbatmode/activities/FiveMinuteAlertActivity;)V

    .line 92
    return-void
.end method
