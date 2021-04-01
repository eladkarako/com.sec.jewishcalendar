.class Lcom/sec/shabbatmode/ZmanimGetter$Populater;
.super Ljava/lang/Thread;
.source "ZmanimGetter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/shabbatmode/ZmanimGetter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Populater"
.end annotation


# instance fields
.field private cancelled:Z

.field private forceSearch:Z

.field private final loc:Landroid/location/Location;

.field final synthetic this$0:Lcom/sec/shabbatmode/ZmanimGetter;


# direct methods
.method public constructor <init>(Lcom/sec/shabbatmode/ZmanimGetter;Landroid/location/Location;Ljava/lang/Boolean;)V
    .locals 1
    .param p2, "location"    # Landroid/location/Location;
    .param p3, "_forceSearch"    # Ljava/lang/Boolean;

    .prologue
    const/4 v0, 0x0

    .line 1021
    iput-object p1, p0, Lcom/sec/shabbatmode/ZmanimGetter$Populater;->this$0:Lcom/sec/shabbatmode/ZmanimGetter;

    .line 1022
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1013
    iput-boolean v0, p0, Lcom/sec/shabbatmode/ZmanimGetter$Populater;->cancelled:Z

    .line 1014
    iput-boolean v0, p0, Lcom/sec/shabbatmode/ZmanimGetter$Populater;->forceSearch:Z

    .line 1023
    iput-object p2, p0, Lcom/sec/shabbatmode/ZmanimGetter$Populater;->loc:Landroid/location/Location;

    .line 1024
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/shabbatmode/ZmanimGetter$Populater;->forceSearch:Z

    .line 1025
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 1043
    const-string v0, "Shabbat ZmanimActivity"

    const-string v1, "Populater.cancel"

    invoke-static {v0, v1}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 1044
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/shabbatmode/ZmanimGetter$Populater;->cancelled:Z

    .line 1045
    return-void
.end method

.method public run()V
    .locals 3

    .prologue
    .line 1028
    const-string v0, "Shabbat ZmanimActivity"

    const-string v1, "Populater.run"

    invoke-static {v0, v1}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 1029
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 1031
    iget-boolean v0, p0, Lcom/sec/shabbatmode/ZmanimGetter$Populater;->cancelled:Z

    if-eqz v0, :cond_1

    .line 1040
    :cond_0
    :goto_0
    return-void

    .line 1033
    :cond_1
    iget-object v0, p0, Lcom/sec/shabbatmode/ZmanimGetter$Populater;->this$0:Lcom/sec/shabbatmode/ZmanimGetter;

    iget-object v1, p0, Lcom/sec/shabbatmode/ZmanimGetter$Populater;->loc:Landroid/location/Location;

    iget-boolean v2, p0, Lcom/sec/shabbatmode/ZmanimGetter$Populater;->forceSearch:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/shabbatmode/ZmanimGetter;->access$0(Lcom/sec/shabbatmode/ZmanimGetter;Landroid/location/Location;Ljava/lang/Boolean;)V

    .line 1034
    iget-boolean v0, p0, Lcom/sec/shabbatmode/ZmanimGetter$Populater;->cancelled:Z

    if-nez v0, :cond_0

    .line 1036
    iget-object v0, p0, Lcom/sec/shabbatmode/ZmanimGetter$Populater;->this$0:Lcom/sec/shabbatmode/ZmanimGetter;

    iget-boolean v1, p0, Lcom/sec/shabbatmode/ZmanimGetter$Populater;->forceSearch:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/shabbatmode/ZmanimGetter;->access$1(Lcom/sec/shabbatmode/ZmanimGetter;Ljava/lang/Boolean;)V

    .line 1037
    iget-boolean v0, p0, Lcom/sec/shabbatmode/ZmanimGetter$Populater;->cancelled:Z

    if-nez v0, :cond_0

    .line 1039
    iget-object v0, p0, Lcom/sec/shabbatmode/ZmanimGetter$Populater;->this$0:Lcom/sec/shabbatmode/ZmanimGetter;

    invoke-static {v0}, Lcom/sec/shabbatmode/ZmanimGetter;->access$2(Lcom/sec/shabbatmode/ZmanimGetter;)V

    goto :goto_0
.end method
