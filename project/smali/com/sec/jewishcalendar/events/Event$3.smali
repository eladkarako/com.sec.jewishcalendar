.class Lcom/sec/jewishcalendar/events/Event$3;
.super Ljava/lang/Object;
.source "Event.java"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/jewishcalendar/events/Event;
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
    iput-object p1, p0, Lcom/sec/jewishcalendar/events/Event$3;->this$0:Lcom/sec/jewishcalendar/events/Event;

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 11
    .param p1, "view"    # Landroid/widget/TimePicker;
    .param p2, "hourOfDay"    # I
    .param p3, "minute"    # I

    .prologue
    const/4 v9, 0x0

    .line 154
    iget-object v8, p0, Lcom/sec/jewishcalendar/events/Event$3;->this$0:Lcom/sec/jewishcalendar/events/Event;

    invoke-static {v8}, Lcom/sec/jewishcalendar/events/Event;->access$0(Lcom/sec/jewishcalendar/events/Event;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 156
    iget-object v8, p0, Lcom/sec/jewishcalendar/events/Event$3;->this$0:Lcom/sec/jewishcalendar/events/Event;

    invoke-static {v8}, Lcom/sec/jewishcalendar/events/Event;->access$1(Lcom/sec/jewishcalendar/events/Event;)Lcom/sec/jewishcalendar/events/DateAndTime;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/jewishcalendar/events/DateAndTime;->toTime()Landroid/text/format/Time;

    move-result-object v8

    invoke-virtual {v8, v9}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    .line 157
    .local v4, "prevFromTimeInMilliSeconds":J
    iget-object v8, p0, Lcom/sec/jewishcalendar/events/Event$3;->this$0:Lcom/sec/jewishcalendar/events/Event;

    invoke-static {v8}, Lcom/sec/jewishcalendar/events/Event;->access$2(Lcom/sec/jewishcalendar/events/Event;)Lcom/sec/jewishcalendar/events/DateAndTime;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/jewishcalendar/events/DateAndTime;->toTime()Landroid/text/format/Time;

    move-result-object v8

    invoke-virtual {v8, v9}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v6

    .line 158
    .local v6, "prevToTimeInMilliSeconds":J
    iget-object v8, p0, Lcom/sec/jewishcalendar/events/Event$3;->this$0:Lcom/sec/jewishcalendar/events/Event;

    invoke-static {v8}, Lcom/sec/jewishcalendar/events/Event;->access$1(Lcom/sec/jewishcalendar/events/Event;)Lcom/sec/jewishcalendar/events/DateAndTime;

    move-result-object v8

    iput p2, v8, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nHour:I

    .line 159
    iget-object v8, p0, Lcom/sec/jewishcalendar/events/Event$3;->this$0:Lcom/sec/jewishcalendar/events/Event;

    invoke-static {v8}, Lcom/sec/jewishcalendar/events/Event;->access$1(Lcom/sec/jewishcalendar/events/Event;)Lcom/sec/jewishcalendar/events/DateAndTime;

    move-result-object v8

    iput p3, v8, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nMinute:I

    .line 160
    iget-object v8, p0, Lcom/sec/jewishcalendar/events/Event$3;->this$0:Lcom/sec/jewishcalendar/events/Event;

    invoke-static {v8}, Lcom/sec/jewishcalendar/events/Event;->access$4(Lcom/sec/jewishcalendar/events/Event;)V

    .line 162
    cmp-long v8, v4, v6

    if-gtz v8, :cond_0

    .line 164
    iget-object v8, p0, Lcom/sec/jewishcalendar/events/Event$3;->this$0:Lcom/sec/jewishcalendar/events/Event;

    invoke-static {v8}, Lcom/sec/jewishcalendar/events/Event;->access$1(Lcom/sec/jewishcalendar/events/Event;)Lcom/sec/jewishcalendar/events/DateAndTime;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/jewishcalendar/events/DateAndTime;->toTime()Landroid/text/format/Time;

    move-result-object v8

    invoke-virtual {v8, v9}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v0

    .line 165
    .local v0, "currentFromTimeInMilliSeconds":J
    sub-long v2, v0, v4

    .line 166
    .local v2, "diffInMilliSeconds":J
    iget-object v8, p0, Lcom/sec/jewishcalendar/events/Event$3;->this$0:Lcom/sec/jewishcalendar/events/Event;

    .line 167
    iget-object v9, p0, Lcom/sec/jewishcalendar/events/Event$3;->this$0:Lcom/sec/jewishcalendar/events/Event;

    invoke-static {v9}, Lcom/sec/jewishcalendar/events/Event;->access$2(Lcom/sec/jewishcalendar/events/Event;)Lcom/sec/jewishcalendar/events/DateAndTime;

    move-result-object v9

    invoke-virtual {v9, v2, v3}, Lcom/sec/jewishcalendar/events/DateAndTime;->getMilliSecondsAfterDateAndTime(J)Lcom/sec/jewishcalendar/events/DateAndTime;

    move-result-object v9

    .line 166
    invoke-static {v8, v9}, Lcom/sec/jewishcalendar/events/Event;->access$5(Lcom/sec/jewishcalendar/events/Event;Lcom/sec/jewishcalendar/events/DateAndTime;)V

    .line 168
    iget-object v8, p0, Lcom/sec/jewishcalendar/events/Event$3;->this$0:Lcom/sec/jewishcalendar/events/Event;

    invoke-static {v8}, Lcom/sec/jewishcalendar/events/Event;->access$10(Lcom/sec/jewishcalendar/events/Event;)Landroid/app/TimePickerDialog;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/jewishcalendar/events/Event$3;->this$0:Lcom/sec/jewishcalendar/events/Event;

    invoke-static {v9}, Lcom/sec/jewishcalendar/events/Event;->access$2(Lcom/sec/jewishcalendar/events/Event;)Lcom/sec/jewishcalendar/events/DateAndTime;

    move-result-object v9

    iget v9, v9, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nHour:I

    iget-object v10, p0, Lcom/sec/jewishcalendar/events/Event$3;->this$0:Lcom/sec/jewishcalendar/events/Event;

    invoke-static {v10}, Lcom/sec/jewishcalendar/events/Event;->access$2(Lcom/sec/jewishcalendar/events/Event;)Lcom/sec/jewishcalendar/events/DateAndTime;

    move-result-object v10

    iget v10, v10, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nMinute:I

    invoke-virtual {v8, v9, v10}, Landroid/app/TimePickerDialog;->updateTime(II)V

    .line 169
    iget-object v8, p0, Lcom/sec/jewishcalendar/events/Event$3;->this$0:Lcom/sec/jewishcalendar/events/Event;

    invoke-static {v8}, Lcom/sec/jewishcalendar/events/Event;->access$8(Lcom/sec/jewishcalendar/events/Event;)V

    .line 178
    .end local v0    # "currentFromTimeInMilliSeconds":J
    .end local v2    # "diffInMilliSeconds":J
    .end local v4    # "prevFromTimeInMilliSeconds":J
    .end local v6    # "prevToTimeInMilliSeconds":J
    :cond_0
    :goto_0
    return-void

    .line 174
    :cond_1
    iget-object v8, p0, Lcom/sec/jewishcalendar/events/Event$3;->this$0:Lcom/sec/jewishcalendar/events/Event;

    invoke-static {v8}, Lcom/sec/jewishcalendar/events/Event;->access$2(Lcom/sec/jewishcalendar/events/Event;)Lcom/sec/jewishcalendar/events/DateAndTime;

    move-result-object v8

    iput p2, v8, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nHour:I

    .line 175
    iget-object v8, p0, Lcom/sec/jewishcalendar/events/Event$3;->this$0:Lcom/sec/jewishcalendar/events/Event;

    invoke-static {v8}, Lcom/sec/jewishcalendar/events/Event;->access$2(Lcom/sec/jewishcalendar/events/Event;)Lcom/sec/jewishcalendar/events/DateAndTime;

    move-result-object v8

    iput p3, v8, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nMinute:I

    .line 176
    iget-object v8, p0, Lcom/sec/jewishcalendar/events/Event$3;->this$0:Lcom/sec/jewishcalendar/events/Event;

    invoke-static {v8}, Lcom/sec/jewishcalendar/events/Event;->access$8(Lcom/sec/jewishcalendar/events/Event;)V

    goto :goto_0
.end method
