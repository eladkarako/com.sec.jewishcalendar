.class Lcom/sec/jewishcalendar/events/Event$12;
.super Ljava/lang/Object;
.source "Event.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/jewishcalendar/events/Event;->closeKeyboard()V
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
    iput-object p1, p0, Lcom/sec/jewishcalendar/events/Event$12;->this$0:Lcom/sec/jewishcalendar/events/Event;

    .line 336
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 339
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/Event$12;->this$0:Lcom/sec/jewishcalendar/events/Event;

    invoke-static {v0}, Lcom/sec/jewishcalendar/events/Event;->access$15(Lcom/sec/jewishcalendar/events/Event;)Landroid/widget/EditText;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/Event$12;->this$0:Lcom/sec/jewishcalendar/events/Event;

    invoke-virtual {v0}, Lcom/sec/jewishcalendar/events/Event;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 342
    iget-object v1, p0, Lcom/sec/jewishcalendar/events/Event$12;->this$0:Lcom/sec/jewishcalendar/events/Event;

    invoke-static {v1}, Lcom/sec/jewishcalendar/events/Event;->access$15(Lcom/sec/jewishcalendar/events/Event;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    .line 341
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 345
    :cond_0
    return-void
.end method
