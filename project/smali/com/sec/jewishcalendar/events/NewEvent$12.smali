.class Lcom/sec/jewishcalendar/events/NewEvent$12;
.super Ljava/lang/Object;
.source "NewEvent.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/jewishcalendar/events/NewEvent;->closeKeyboard()V
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
    iput-object p1, p0, Lcom/sec/jewishcalendar/events/NewEvent$12;->this$0:Lcom/sec/jewishcalendar/events/NewEvent;

    .line 358
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 361
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/NewEvent$12;->this$0:Lcom/sec/jewishcalendar/events/NewEvent;

    invoke-static {v0}, Lcom/sec/jewishcalendar/events/NewEvent;->access$17(Lcom/sec/jewishcalendar/events/NewEvent;)Landroid/widget/EditText;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/NewEvent$12;->this$0:Lcom/sec/jewishcalendar/events/NewEvent;

    invoke-virtual {v0}, Lcom/sec/jewishcalendar/events/NewEvent;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 364
    iget-object v1, p0, Lcom/sec/jewishcalendar/events/NewEvent$12;->this$0:Lcom/sec/jewishcalendar/events/NewEvent;

    invoke-static {v1}, Lcom/sec/jewishcalendar/events/NewEvent;->access$17(Lcom/sec/jewishcalendar/events/NewEvent;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    .line 363
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 366
    :cond_0
    return-void
.end method
