.class Lcom/sec/jewishcalendar/events/NewEvent$5;
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
    iput-object p1, p0, Lcom/sec/jewishcalendar/events/NewEvent$5;->this$0:Lcom/sec/jewishcalendar/events/NewEvent;

    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 265
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/NewEvent$5;->this$0:Lcom/sec/jewishcalendar/events/NewEvent;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/jewishcalendar/events/NewEvent;->access$11(Lcom/sec/jewishcalendar/events/NewEvent;Z)V

    .line 266
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/NewEvent$5;->this$0:Lcom/sec/jewishcalendar/events/NewEvent;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/jewishcalendar/events/NewEvent;->showDialog(I)V

    .line 267
    return-void
.end method
