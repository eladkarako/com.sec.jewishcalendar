.class Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePickerDialog$1;
.super Landroid/content/BroadcastReceiver;
.source "JewishDatePickerDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePickerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePickerDialog;


# direct methods
.method constructor <init>(Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePickerDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePickerDialog$1;->this$0:Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePickerDialog;

    .line 254
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 257
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePickerDialog$1;->this$0:Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePickerDialog;

    invoke-static {v0}, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePickerDialog;->access$0(Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePickerDialog;)Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;->clearFocus()V

    .line 259
    iget-object v0, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePickerDialog$1;->this$0:Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePickerDialog;

    invoke-static {v0}, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePickerDialog;->access$1(Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePickerDialog;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePickerDialog$1;->this$0:Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePickerDialog;

    invoke-static {v0}, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePickerDialog;->access$1(Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePickerDialog;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 261
    iget-object v1, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePickerDialog$1;->this$0:Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePickerDialog;

    invoke-virtual {v1}, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePickerDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    .line 260
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 264
    :cond_0
    return-void
.end method
