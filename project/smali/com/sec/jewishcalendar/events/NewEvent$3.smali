.class Lcom/sec/jewishcalendar/events/NewEvent$3;
.super Ljava/lang/Object;
.source "NewEvent.java"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/jewishcalendar/events/NewEvent;
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
    iput-object p1, p0, Lcom/sec/jewishcalendar/events/NewEvent$3;->this$0:Lcom/sec/jewishcalendar/events/NewEvent;

    .line 149
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

    .line 153
    iget-object v8, p0, Lcom/sec/jewishcalendar/events/NewEvent$3;->this$0:Lcom/sec/jewishcalendar/events/NewEvent;

    invoke-static {v8}, Lcom/sec/jewishcalendar/events/NewEvent;->access$0(Lcom/sec/jewishcalendar/events/NewEvent;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 155
    iget-object v8, p0, Lcom/sec/jewishcalendar/events/NewEvent$3;->this$0:Lcom/sec/jewishcalendar/events/NewEvent;

    invoke-static {v8}, Lcom/sec/jewishcalendar/events/NewEvent;->access$1(Lcom/sec/jewishcalendar/events/NewEvent;)Lcom/sec/jewishcalendar/events/DateAndTime;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/jewishcalendar/events/DateAndTime;->toTime()Landroid/text/format/Time;

    move-result-object v8

    invoke-virtual {v8, v9}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    .line 156
    .local v4, "prevFromTimeInMilliSeconds":J
    iget-object v8, p0, Lcom/sec/jewishcalendar/events/NewEvent$3;->this$0:Lcom/sec/jewishcalendar/events/NewEvent;

    invoke-static {v8}, Lcom/sec/jewishcalendar/events/NewEvent;->access$2(Lcom/sec/jewishcalendar/events/NewEvent;)Lcom/sec/jewishcalendar/events/DateAndTime;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/jewishcalendar/events/DateAndTime;->toTime()Landroid/text/format/Time;

    move-result-object v8

    invoke-virtual {v8, v9}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v6

    .line 157
    .local v6, "prevToTimeInMilliSeconds":J
    iget-object v8, p0, Lcom/sec/jewishcalendar/events/NewEvent$3;->this$0:Lcom/sec/jewishcalendar/events/NewEvent;

    invoke-static {v8}, Lcom/sec/jewishcalendar/events/NewEvent;->access$1(Lcom/sec/jewishcalendar/events/NewEvent;)Lcom/sec/jewishcalendar/events/DateAndTime;

    move-result-object v8

    iput p2, v8, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nHour:I

    .line 158
    iget-object v8, p0, Lcom/sec/jewishcalendar/events/NewEvent$3;->this$0:Lcom/sec/jewishcalendar/events/NewEvent;

    invoke-static {v8}, Lcom/sec/jewishcalendar/events/NewEvent;->access$1(Lcom/sec/jewishcalendar/events/NewEvent;)Lcom/sec/jewishcalendar/events/DateAndTime;

    move-result-object v8

    iput p3, v8, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nMinute:I

    .line 159
    iget-object v8, p0, Lcom/sec/jewishcalendar/events/NewEvent$3;->this$0:Lcom/sec/jewishcalendar/events/NewEvent;

    invoke-static {v8}, Lcom/sec/jewishcalendar/events/NewEvent;->access$1(Lcom/sec/jewishcalendar/events/NewEvent;)Lcom/sec/jewishcalendar/events/DateAndTime;

    move-result-object v8

    iput v9, v8, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nSecond:I

    .line 160
    iget-object v8, p0, Lcom/sec/jewishcalendar/events/NewEvent$3;->this$0:Lcom/sec/jewishcalendar/events/NewEvent;

    invoke-static {v8}, Lcom/sec/jewishcalendar/events/NewEvent;->access$4(Lcom/sec/jewishcalendar/events/NewEvent;)V

    .line 162
    cmp-long v8, v4, v6

    if-gtz v8, :cond_0

    .line 164
    iget-object v8, p0, Lcom/sec/jewishcalendar/events/NewEvent$3;->this$0:Lcom/sec/jewishcalendar/events/NewEvent;

    invoke-static {v8}, Lcom/sec/jewishcalendar/events/NewEvent;->access$1(Lcom/sec/jewishcalendar/events/NewEvent;)Lcom/sec/jewishcalendar/events/DateAndTime;

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
    iget-object v8, p0, Lcom/sec/jewishcalendar/events/NewEvent$3;->this$0:Lcom/sec/jewishcalendar/events/NewEvent;

    .line 167
    iget-object v9, p0, Lcom/sec/jewishcalendar/events/NewEvent$3;->this$0:Lcom/sec/jewishcalendar/events/NewEvent;

    invoke-static {v9}, Lcom/sec/jewishcalendar/events/NewEvent;->access$2(Lcom/sec/jewishcalendar/events/NewEvent;)Lcom/sec/jewishcalendar/events/DateAndTime;

    move-result-object v9

    invoke-virtual {v9, v2, v3}, Lcom/sec/jewishcalendar/events/DateAndTime;->getMilliSecondsAfterDateAndTime(J)Lcom/sec/jewishcalendar/events/DateAndTime;

    move-result-object v9

    .line 166
    invoke-static {v8, v9}, Lcom/sec/jewishcalendar/events/NewEvent;->access$5(Lcom/sec/jewishcalendar/events/NewEvent;Lcom/sec/jewishcalendar/events/DateAndTime;)V

    .line 168
    iget-object v8, p0, Lcom/sec/jewishcalendar/events/NewEvent$3;->this$0:Lcom/sec/jewishcalendar/events/NewEvent;

    invoke-static {v8}, Lcom/sec/jewishcalendar/events/NewEvent;->access$10(Lcom/sec/jewishcalendar/events/NewEvent;)Landroid/app/TimePickerDialog;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/jewishcalendar/events/NewEvent$3;->this$0:Lcom/sec/jewishcalendar/events/NewEvent;

    invoke-static {v9}, Lcom/sec/jewishcalendar/events/NewEvent;->access$2(Lcom/sec/jewishcalendar/events/NewEvent;)Lcom/sec/jewishcalendar/events/DateAndTime;

    move-result-object v9

    iget v9, v9, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nHour:I

    .line 169
    iget-object v10, p0, Lcom/sec/jewishcalendar/events/NewEvent$3;->this$0:Lcom/sec/jewishcalendar/events/NewEvent;

    invoke-static {v10}, Lcom/sec/jewishcalendar/events/NewEvent;->access$2(Lcom/sec/jewishcalendar/events/NewEvent;)Lcom/sec/jewishcalendar/events/DateAndTime;

    move-result-object v10

    iget v10, v10, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nMinute:I

    .line 168
    invoke-virtual {v8, v9, v10}, Landroid/app/TimePickerDialog;->updateTime(II)V

    .line 170
    iget-object v8, p0, Lcom/sec/jewishcalendar/events/NewEvent$3;->this$0:Lcom/sec/jewishcalendar/events/NewEvent;

    invoke-static {v8}, Lcom/sec/jewishcalendar/events/NewEvent;->access$8(Lcom/sec/jewishcalendar/events/NewEvent;)V

    .line 180
    .end local v0    # "currentFromTimeInMilliSeconds":J
    .end local v2    # "diffInMilliSeconds":J
    .end local v4    # "prevFromTimeInMilliSeconds":J
    .end local v6    # "prevToTimeInMilliSeconds":J
    :cond_0
    :goto_0
    return-void

    .line 175
    :cond_1
    iget-object v8, p0, Lcom/sec/jewishcalendar/events/NewEvent$3;->this$0:Lcom/sec/jewishcalendar/events/NewEvent;

    invoke-static {v8}, Lcom/sec/jewishcalendar/events/NewEvent;->access$2(Lcom/sec/jewishcalendar/events/NewEvent;)Lcom/sec/jewishcalendar/events/DateAndTime;

    move-result-object v8

    iput p2, v8, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nHour:I

    .line 176
    iget-object v8, p0, Lcom/sec/jewishcalendar/events/NewEvent$3;->this$0:Lcom/sec/jewishcalendar/events/NewEvent;

    invoke-static {v8}, Lcom/sec/jewishcalendar/events/NewEvent;->access$2(Lcom/sec/jewishcalendar/events/NewEvent;)Lcom/sec/jewishcalendar/events/DateAndTime;

    move-result-object v8

    iput p3, v8, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nMinute:I

    .line 177
    iget-object v8, p0, Lcom/sec/jewishcalendar/events/NewEvent$3;->this$0:Lcom/sec/jewishcalendar/events/NewEvent;

    invoke-static {v8}, Lcom/sec/jewishcalendar/events/NewEvent;->access$2(Lcom/sec/jewishcalendar/events/NewEvent;)Lcom/sec/jewishcalendar/events/DateAndTime;

    move-result-object v8

    iput v9, v8, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nSecond:I

    .line 178
    iget-object v8, p0, Lcom/sec/jewishcalendar/events/NewEvent$3;->this$0:Lcom/sec/jewishcalendar/events/NewEvent;

    invoke-static {v8}, Lcom/sec/jewishcalendar/events/NewEvent;->access$8(Lcom/sec/jewishcalendar/events/NewEvent;)V

    goto :goto_0
.end method
