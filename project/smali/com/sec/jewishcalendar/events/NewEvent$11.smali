.class Lcom/sec/jewishcalendar/events/NewEvent$11;
.super Ljava/lang/Object;
.source "NewEvent.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/jewishcalendar/events/NewEvent;->initScreenElements(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/jewishcalendar/events/NewEvent;


# direct methods
.method constructor <init>(Lcom/sec/jewishcalendar/events/NewEvent;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/jewishcalendar/events/NewEvent$11;->this$0:Lcom/sec/jewishcalendar/events/NewEvent;

    .line 330
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 334
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/NewEvent$11;->this$0:Lcom/sec/jewishcalendar/events/NewEvent;

    invoke-static {v0}, Lcom/sec/jewishcalendar/events/NewEvent;->access$16(Lcom/sec/jewishcalendar/events/NewEvent;)V

    .line 335
    return-void
.end method
