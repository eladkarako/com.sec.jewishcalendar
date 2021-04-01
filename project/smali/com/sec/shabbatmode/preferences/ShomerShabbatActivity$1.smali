.class Lcom/sec/shabbatmode/preferences/ShomerShabbatActivity$1;
.super Ljava/lang/Object;
.source "ShomerShabbatActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/shabbatmode/preferences/ShomerShabbatActivity;->flashLed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/shabbatmode/preferences/ShomerShabbatActivity;


# direct methods
.method constructor <init>(Lcom/sec/shabbatmode/preferences/ShomerShabbatActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatActivity$1;->this$0:Lcom/sec/shabbatmode/preferences/ShomerShabbatActivity;

    .line 362
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/ShomerShabbatActivity$1;->this$0:Lcom/sec/shabbatmode/preferences/ShomerShabbatActivity;

    invoke-static {v0}, Lcom/sec/shabbatmode/preferences/ShomerShabbatActivity;->access$0(Lcom/sec/shabbatmode/preferences/ShomerShabbatActivity;)V

    .line 366
    return-void
.end method
