.class Lcom/sec/jewishcalendar/events/NewEvent$6;
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
    iput-object p1, p0, Lcom/sec/jewishcalendar/events/NewEvent$6;->this$0:Lcom/sec/jewishcalendar/events/NewEvent;

    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 274
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/NewEvent$6;->this$0:Lcom/sec/jewishcalendar/events/NewEvent;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/jewishcalendar/events/NewEvent;->access$11(Lcom/sec/jewishcalendar/events/NewEvent;Z)V

    .line 275
    invoke-static {}, Lcom/sec/jewishcalendar/JewishCalendarView;->isJewishCalendar()Z

    move-result v0

    if-nez v0, :cond_0

    .line 276
    new-instance v0, Landroid/app/DatePickerDialog;

    iget-object v1, p0, Lcom/sec/jewishcalendar/events/NewEvent$6;->this$0:Lcom/sec/jewishcalendar/events/NewEvent;

    iget-object v2, p0, Lcom/sec/jewishcalendar/events/NewEvent$6;->this$0:Lcom/sec/jewishcalendar/events/NewEvent;

    invoke-static {v2}, Lcom/sec/jewishcalendar/events/NewEvent;->access$13(Lcom/sec/jewishcalendar/events/NewEvent;)Landroid/app/DatePickerDialog$OnDateSetListener;

    move-result-object v2

    .line 277
    iget-object v3, p0, Lcom/sec/jewishcalendar/events/NewEvent$6;->this$0:Lcom/sec/jewishcalendar/events/NewEvent;

    invoke-static {v3}, Lcom/sec/jewishcalendar/events/NewEvent;->access$1(Lcom/sec/jewishcalendar/events/NewEvent;)Lcom/sec/jewishcalendar/events/DateAndTime;

    move-result-object v3

    iget v3, v3, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nYear:I

    iget-object v4, p0, Lcom/sec/jewishcalendar/events/NewEvent$6;->this$0:Lcom/sec/jewishcalendar/events/NewEvent;

    invoke-static {v4}, Lcom/sec/jewishcalendar/events/NewEvent;->access$1(Lcom/sec/jewishcalendar/events/NewEvent;)Lcom/sec/jewishcalendar/events/DateAndTime;

    move-result-object v4

    iget v4, v4, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nMonth:I

    .line 278
    iget-object v5, p0, Lcom/sec/jewishcalendar/events/NewEvent$6;->this$0:Lcom/sec/jewishcalendar/events/NewEvent;

    invoke-static {v5}, Lcom/sec/jewishcalendar/events/NewEvent;->access$1(Lcom/sec/jewishcalendar/events/NewEvent;)Lcom/sec/jewishcalendar/events/DateAndTime;

    move-result-object v5

    iget v5, v5, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nDay:I

    .line 276
    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 278
    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->show()V

    .line 287
    :goto_0
    return-void

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/sec/jewishcalendar/events/NewEvent$6;->this$0:Lcom/sec/jewishcalendar/events/NewEvent;

    invoke-static {v0}, Lcom/sec/jewishcalendar/events/NewEvent;->access$9(Lcom/sec/jewishcalendar/events/NewEvent;)Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePickerDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePickerDialog;->show()V

    goto :goto_0
.end method
