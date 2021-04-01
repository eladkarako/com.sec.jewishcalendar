.class Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUtilities$1;
.super Ljava/lang/Object;
.source "ShomerShabbatUtilities.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUtilities;->putTheDeviceToSleep(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUtilities$1;->val$context:Landroid/content/Context;

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUtilities$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUtilities;->lockDevice(Landroid/content/Context;)V

    .line 232
    return-void
.end method
