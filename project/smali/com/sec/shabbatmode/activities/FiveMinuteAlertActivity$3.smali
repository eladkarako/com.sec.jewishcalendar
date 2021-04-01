.class Lcom/sec/shabbatmode/activities/FiveMinuteAlertActivity$3;
.super Ljava/lang/Object;
.source "FiveMinuteAlertActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/shabbatmode/activities/FiveMinuteAlertActivity;->playSound()V
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
    iput-object p1, p0, Lcom/sec/shabbatmode/activities/FiveMinuteAlertActivity$3;->this$0:Lcom/sec/shabbatmode/activities/FiveMinuteAlertActivity;

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/sec/shabbatmode/activities/FiveMinuteAlertActivity$3;->this$0:Lcom/sec/shabbatmode/activities/FiveMinuteAlertActivity;

    invoke-static {v0}, Lcom/sec/shabbatmode/activities/FiveMinuteAlertActivity;->access$0(Lcom/sec/shabbatmode/activities/FiveMinuteAlertActivity;)V

    .line 122
    return-void
.end method
