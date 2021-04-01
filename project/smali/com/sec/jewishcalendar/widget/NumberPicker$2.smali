.class Lcom/sec/jewishcalendar/widget/NumberPicker$2;
.super Ljava/lang/Object;
.source "NumberPicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/jewishcalendar/widget/NumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/jewishcalendar/widget/NumberPicker;


# direct methods
.method constructor <init>(Lcom/sec/jewishcalendar/widget/NumberPicker;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/jewishcalendar/widget/NumberPicker$2;->this$0:Lcom/sec/jewishcalendar/widget/NumberPicker;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sec/jewishcalendar/widget/NumberPicker$2;->this$0:Lcom/sec/jewishcalendar/widget/NumberPicker;

    invoke-static {v0}, Lcom/sec/jewishcalendar/widget/NumberPicker;->access$0(Lcom/sec/jewishcalendar/widget/NumberPicker;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    iget-object v0, p0, Lcom/sec/jewishcalendar/widget/NumberPicker$2;->this$0:Lcom/sec/jewishcalendar/widget/NumberPicker;

    iget-object v1, p0, Lcom/sec/jewishcalendar/widget/NumberPicker$2;->this$0:Lcom/sec/jewishcalendar/widget/NumberPicker;

    iget v1, v1, Lcom/sec/jewishcalendar/widget/NumberPicker;->mCurrent:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/jewishcalendar/widget/NumberPicker;->changeCurrent(I)V

    .line 84
    iget-object v0, p0, Lcom/sec/jewishcalendar/widget/NumberPicker$2;->this$0:Lcom/sec/jewishcalendar/widget/NumberPicker;

    invoke-static {v0}, Lcom/sec/jewishcalendar/widget/NumberPicker;->access$1(Lcom/sec/jewishcalendar/widget/NumberPicker;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/jewishcalendar/widget/NumberPicker$2;->this$0:Lcom/sec/jewishcalendar/widget/NumberPicker;

    invoke-static {v1}, Lcom/sec/jewishcalendar/widget/NumberPicker;->access$2(Lcom/sec/jewishcalendar/widget/NumberPicker;)J

    move-result-wide v2

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    iget-object v0, p0, Lcom/sec/jewishcalendar/widget/NumberPicker$2;->this$0:Lcom/sec/jewishcalendar/widget/NumberPicker;

    invoke-static {v0}, Lcom/sec/jewishcalendar/widget/NumberPicker;->access$3(Lcom/sec/jewishcalendar/widget/NumberPicker;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/sec/jewishcalendar/widget/NumberPicker$2;->this$0:Lcom/sec/jewishcalendar/widget/NumberPicker;

    iget-object v1, p0, Lcom/sec/jewishcalendar/widget/NumberPicker$2;->this$0:Lcom/sec/jewishcalendar/widget/NumberPicker;

    iget v1, v1, Lcom/sec/jewishcalendar/widget/NumberPicker;->mCurrent:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/sec/jewishcalendar/widget/NumberPicker;->changeCurrent(I)V

    .line 87
    iget-object v0, p0, Lcom/sec/jewishcalendar/widget/NumberPicker$2;->this$0:Lcom/sec/jewishcalendar/widget/NumberPicker;

    invoke-static {v0}, Lcom/sec/jewishcalendar/widget/NumberPicker;->access$1(Lcom/sec/jewishcalendar/widget/NumberPicker;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/jewishcalendar/widget/NumberPicker$2;->this$0:Lcom/sec/jewishcalendar/widget/NumberPicker;

    invoke-static {v1}, Lcom/sec/jewishcalendar/widget/NumberPicker;->access$2(Lcom/sec/jewishcalendar/widget/NumberPicker;)J

    move-result-wide v2

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
