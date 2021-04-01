.class Lcom/sec/shabbatmode/receivers/IncomingTextReceiver$1;
.super Ljava/lang/Object;
.source "IncomingTextReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/shabbatmode/receivers/IncomingTextReceiver;->resetBooleansWithDelay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/shabbatmode/receivers/IncomingTextReceiver;


# direct methods
.method constructor <init>(Lcom/sec/shabbatmode/receivers/IncomingTextReceiver;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/shabbatmode/receivers/IncomingTextReceiver$1;->this$0:Lcom/sec/shabbatmode/receivers/IncomingTextReceiver;

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 110
    const-string v0, "Shabbat IncomingTextReceiver"

    const-string v1, "resetBooleansWithDelay.run"

    invoke-static {v0, v1}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sec/shabbatmode/ShabbatModeApplication;->mReceiveSMSBoolean:Ljava/lang/Boolean;

    .line 112
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sec/shabbatmode/ShabbatModeApplication;->mReceiveAllowedSMSBoolean:Ljava/lang/Boolean;

    .line 113
    return-void
.end method
