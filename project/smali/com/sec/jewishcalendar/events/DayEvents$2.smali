.class Lcom/sec/jewishcalendar/events/DayEvents$2;
.super Ljava/lang/Object;
.source "DayEvents.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/jewishcalendar/events/DayEvents;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/jewishcalendar/events/DayEvents;


# direct methods
.method constructor <init>(Lcom/sec/jewishcalendar/events/DayEvents;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/jewishcalendar/events/DayEvents$2;->this$0:Lcom/sec/jewishcalendar/events/DayEvents;

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 90
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/jewishcalendar/events/DayEvents$2;->this$0:Lcom/sec/jewishcalendar/events/DayEvents;

    invoke-virtual {v2}, Lcom/sec/jewishcalendar/events/DayEvents;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/sec/jewishcalendar/events/NewEvent;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 91
    .local v1, "newEventIntent":Landroid/content/Intent;
    const-string v2, "YEAR"

    iget-object v3, p0, Lcom/sec/jewishcalendar/events/DayEvents$2;->this$0:Lcom/sec/jewishcalendar/events/DayEvents;

    iget-object v3, v3, Lcom/sec/jewishcalendar/events/DayEvents;->mDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    iget v3, v3, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nYear:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 92
    const-string v2, "MONTH"

    iget-object v3, p0, Lcom/sec/jewishcalendar/events/DayEvents$2;->this$0:Lcom/sec/jewishcalendar/events/DayEvents;

    iget-object v3, v3, Lcom/sec/jewishcalendar/events/DayEvents;->mDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    iget v3, v3, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nMonth:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 93
    const-string v2, "DAY"

    iget-object v3, p0, Lcom/sec/jewishcalendar/events/DayEvents$2;->this$0:Lcom/sec/jewishcalendar/events/DayEvents;

    iget-object v3, v3, Lcom/sec/jewishcalendar/events/DayEvents;->mDateAndTime:Lcom/sec/jewishcalendar/events/DateAndTime;

    iget v3, v3, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nDay:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 94
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 95
    .local v0, "c":Ljava/util/Calendar;
    const-string v2, "HOUR"

    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 96
    const-string v2, "MINUTE"

    const/16 v3, 0xc

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 97
    iget-object v2, p0, Lcom/sec/jewishcalendar/events/DayEvents$2;->this$0:Lcom/sec/jewishcalendar/events/DayEvents;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Lcom/sec/jewishcalendar/events/DayEvents;->startActivityForResult(Landroid/content/Intent;I)V

    .line 98
    return-void
.end method
