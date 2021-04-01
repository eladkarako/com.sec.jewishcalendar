.class Lcom/sec/jewishcalendar/events/Event$13;
.super Ljava/lang/Object;
.source "Event.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/jewishcalendar/events/Event;->chooseRepeatFrequency()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/jewishcalendar/events/Event;


# direct methods
.method constructor <init>(Lcom/sec/jewishcalendar/events/Event;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/jewishcalendar/events/Event$13;->this$0:Lcom/sec/jewishcalendar/events/Event;

    .line 357
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "item"    # I

    .prologue
    .line 359
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/Event$13;->this$0:Lcom/sec/jewishcalendar/events/Event;

    invoke-static {v0, p2}, Lcom/sec/jewishcalendar/events/Event;->access$16(Lcom/sec/jewishcalendar/events/Event;I)V

    .line 360
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/Event$13;->this$0:Lcom/sec/jewishcalendar/events/Event;

    invoke-static {v0}, Lcom/sec/jewishcalendar/events/Event;->access$17(Lcom/sec/jewishcalendar/events/Event;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/jewishcalendar/events/Event$13;->this$0:Lcom/sec/jewishcalendar/events/Event;

    invoke-static {v1}, Lcom/sec/jewishcalendar/events/Event;->access$18(Lcom/sec/jewishcalendar/events/Event;)[Ljava/lang/CharSequence;

    move-result-object v1

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 361
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 362
    return-void
.end method
