.class Lcom/sec/jewishcalendar/events/Event$1;
.super Ljava/lang/Object;
.source "Event.java"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


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
    iput-object p1, p0, Lcom/sec/jewishcalendar/events/Event$1;->this$0:Lcom/sec/jewishcalendar/events/Event;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 14
    .param p1, "view"    # Landroid/widget/DatePicker;
    .param p2, "year"    # I
    .param p3, "monthOfYear"    # I
    .param p4, "dayOfMonth"    # I

    .prologue
    .line 73
    iget-object v10, p0, Lcom/sec/jewishcalendar/events/Event$1;->this$0:Lcom/sec/jewishcalendar/events/Event;

    invoke-static {v10}, Lcom/sec/jewishcalendar/events/Event;->access$0(Lcom/sec/jewishcalendar/events/Event;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 75
    iget-object v10, p0, Lcom/sec/jewishcalendar/events/Event$1;->this$0:Lcom/sec/jewishcalendar/events/Event;

    invoke-static {v10}, Lcom/sec/jewishcalendar/events/Event;->access$1(Lcom/sec/jewishcalendar/events/Event;)Lcom/sec/jewishcalendar/events/DateAndTime;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/jewishcalendar/events/DateAndTime;->toTime()Landroid/text/format/Time;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v6

    .line 76
    .local v6, "prevFromTimeInMilliSeconds":J
    iget-object v10, p0, Lcom/sec/jewishcalendar/events/Event$1;->this$0:Lcom/sec/jewishcalendar/events/Event;

    invoke-static {v10}, Lcom/sec/jewishcalendar/events/Event;->access$2(Lcom/sec/jewishcalendar/events/Event;)Lcom/sec/jewishcalendar/events/DateAndTime;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/jewishcalendar/events/DateAndTime;->toTime()Landroid/text/format/Time;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v8

    .line 77
    .local v8, "prevToTimeInMilliSeconds":J
    iget-object v10, p0, Lcom/sec/jewishcalendar/events/Event$1;->this$0:Lcom/sec/jewishcalendar/events/Event;

    invoke-static {v10}, Lcom/sec/jewishcalendar/events/Event;->access$1(Lcom/sec/jewishcalendar/events/Event;)Lcom/sec/jewishcalendar/events/DateAndTime;

    move-result-object v10

    move/from16 v0, p2

    iput v0, v10, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nYear:I

    .line 78
    iget-object v10, p0, Lcom/sec/jewishcalendar/events/Event$1;->this$0:Lcom/sec/jewishcalendar/events/Event;

    invoke-static {v10}, Lcom/sec/jewishcalendar/events/Event;->access$1(Lcom/sec/jewishcalendar/events/Event;)Lcom/sec/jewishcalendar/events/DateAndTime;

    move-result-object v10

    move/from16 v0, p3

    iput v0, v10, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nMonth:I

    .line 79
    iget-object v10, p0, Lcom/sec/jewishcalendar/events/Event$1;->this$0:Lcom/sec/jewishcalendar/events/Event;

    invoke-static {v10}, Lcom/sec/jewishcalendar/events/Event;->access$1(Lcom/sec/jewishcalendar/events/Event;)Lcom/sec/jewishcalendar/events/DateAndTime;

    move-result-object v10

    move/from16 v0, p4

    iput v0, v10, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nDay:I

    .line 80
    iget-object v10, p0, Lcom/sec/jewishcalendar/events/Event$1;->this$0:Lcom/sec/jewishcalendar/events/Event;

    invoke-static {v10}, Lcom/sec/jewishcalendar/events/Event;->access$3(Lcom/sec/jewishcalendar/events/Event;)Lcom/sec/jewishcalendar/calculation/HdateClass;

    move-result-object v10

    add-int/lit8 v11, p3, 0x1

    move/from16 v0, p4

    move/from16 v1, p2

    invoke-static {v10, v0, v11, v1}, Lcom/sec/jewishcalendar/calculation/JewishCal;->SetGdate(Lcom/sec/jewishcalendar/calculation/HdateClass;III)I

    .line 81
    iget-object v10, p0, Lcom/sec/jewishcalendar/events/Event$1;->this$0:Lcom/sec/jewishcalendar/events/Event;

    invoke-static {v10}, Lcom/sec/jewishcalendar/events/Event;->access$4(Lcom/sec/jewishcalendar/events/Event;)V

    .line 83
    cmp-long v10, v6, v8

    if-gtz v10, :cond_0

    .line 85
    iget-object v10, p0, Lcom/sec/jewishcalendar/events/Event$1;->this$0:Lcom/sec/jewishcalendar/events/Event;

    invoke-static {v10}, Lcom/sec/jewishcalendar/events/Event;->access$1(Lcom/sec/jewishcalendar/events/Event;)Lcom/sec/jewishcalendar/events/DateAndTime;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/jewishcalendar/events/DateAndTime;->toTime()Landroid/text/format/Time;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    .line 86
    .local v2, "currentFromTimeInMilliSeconds":J
    sub-long v4, v2, v6

    .line 87
    .local v4, "diffInMilliSeconds":J
    iget-object v10, p0, Lcom/sec/jewishcalendar/events/Event$1;->this$0:Lcom/sec/jewishcalendar/events/Event;

    .line 88
    iget-object v11, p0, Lcom/sec/jewishcalendar/events/Event$1;->this$0:Lcom/sec/jewishcalendar/events/Event;

    invoke-static {v11}, Lcom/sec/jewishcalendar/events/Event;->access$2(Lcom/sec/jewishcalendar/events/Event;)Lcom/sec/jewishcalendar/events/DateAndTime;

    move-result-object v11

    invoke-virtual {v11, v4, v5}, Lcom/sec/jewishcalendar/events/DateAndTime;->getMilliSecondsAfterDateAndTime(J)Lcom/sec/jewishcalendar/events/DateAndTime;

    move-result-object v11

    .line 87
    invoke-static {v10, v11}, Lcom/sec/jewishcalendar/events/Event;->access$5(Lcom/sec/jewishcalendar/events/Event;Lcom/sec/jewishcalendar/events/DateAndTime;)V

    .line 90
    iget-object v10, p0, Lcom/sec/jewishcalendar/events/Event$1;->this$0:Lcom/sec/jewishcalendar/events/Event;

    invoke-static {v10}, Lcom/sec/jewishcalendar/events/Event;->access$6(Lcom/sec/jewishcalendar/events/Event;)Lcom/sec/jewishcalendar/calculation/HdateClass;

    move-result-object v10

    iget-object v11, p0, Lcom/sec/jewishcalendar/events/Event$1;->this$0:Lcom/sec/jewishcalendar/events/Event;

    invoke-static {v11}, Lcom/sec/jewishcalendar/events/Event;->access$2(Lcom/sec/jewishcalendar/events/Event;)Lcom/sec/jewishcalendar/events/DateAndTime;

    move-result-object v11

    iget v11, v11, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nDay:I

    iget-object v12, p0, Lcom/sec/jewishcalendar/events/Event$1;->this$0:Lcom/sec/jewishcalendar/events/Event;

    invoke-static {v12}, Lcom/sec/jewishcalendar/events/Event;->access$2(Lcom/sec/jewishcalendar/events/Event;)Lcom/sec/jewishcalendar/events/DateAndTime;

    move-result-object v12

    iget v12, v12, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nMonth:I

    add-int/lit8 v12, v12, 0x1

    .line 91
    iget-object v13, p0, Lcom/sec/jewishcalendar/events/Event$1;->this$0:Lcom/sec/jewishcalendar/events/Event;

    invoke-static {v13}, Lcom/sec/jewishcalendar/events/Event;->access$2(Lcom/sec/jewishcalendar/events/Event;)Lcom/sec/jewishcalendar/events/DateAndTime;

    move-result-object v13

    iget v13, v13, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nYear:I

    .line 90
    invoke-static {v10, v11, v12, v13}, Lcom/sec/jewishcalendar/calculation/JewishCal;->SetGdate(Lcom/sec/jewishcalendar/calculation/HdateClass;III)I

    .line 93
    iget-object v10, p0, Lcom/sec/jewishcalendar/events/Event$1;->this$0:Lcom/sec/jewishcalendar/events/Event;

    invoke-static {v10}, Lcom/sec/jewishcalendar/events/Event;->access$7(Lcom/sec/jewishcalendar/events/Event;)Landroid/app/DatePickerDialog;

    move-result-object v10

    iget-object v11, p0, Lcom/sec/jewishcalendar/events/Event$1;->this$0:Lcom/sec/jewishcalendar/events/Event;

    invoke-static {v11}, Lcom/sec/jewishcalendar/events/Event;->access$2(Lcom/sec/jewishcalendar/events/Event;)Lcom/sec/jewishcalendar/events/DateAndTime;

    move-result-object v11

    iget v11, v11, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nYear:I

    iget-object v12, p0, Lcom/sec/jewishcalendar/events/Event$1;->this$0:Lcom/sec/jewishcalendar/events/Event;

    invoke-static {v12}, Lcom/sec/jewishcalendar/events/Event;->access$2(Lcom/sec/jewishcalendar/events/Event;)Lcom/sec/jewishcalendar/events/DateAndTime;

    move-result-object v12

    iget v12, v12, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nMonth:I

    .line 94
    iget-object v13, p0, Lcom/sec/jewishcalendar/events/Event$1;->this$0:Lcom/sec/jewishcalendar/events/Event;

    invoke-static {v13}, Lcom/sec/jewishcalendar/events/Event;->access$2(Lcom/sec/jewishcalendar/events/Event;)Lcom/sec/jewishcalendar/events/DateAndTime;

    move-result-object v13

    iget v13, v13, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nDay:I

    .line 93
    invoke-virtual {v10, v11, v12, v13}, Landroid/app/DatePickerDialog;->updateDate(III)V

    .line 95
    iget-object v10, p0, Lcom/sec/jewishcalendar/events/Event$1;->this$0:Lcom/sec/jewishcalendar/events/Event;

    invoke-static {v10}, Lcom/sec/jewishcalendar/events/Event;->access$8(Lcom/sec/jewishcalendar/events/Event;)V

    .line 106
    .end local v2    # "currentFromTimeInMilliSeconds":J
    .end local v4    # "diffInMilliSeconds":J
    .end local v6    # "prevFromTimeInMilliSeconds":J
    .end local v8    # "prevToTimeInMilliSeconds":J
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    iget-object v10, p0, Lcom/sec/jewishcalendar/events/Event$1;->this$0:Lcom/sec/jewishcalendar/events/Event;

    invoke-static {v10}, Lcom/sec/jewishcalendar/events/Event;->access$2(Lcom/sec/jewishcalendar/events/Event;)Lcom/sec/jewishcalendar/events/DateAndTime;

    move-result-object v10

    move/from16 v0, p2

    iput v0, v10, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nYear:I

    .line 101
    iget-object v10, p0, Lcom/sec/jewishcalendar/events/Event$1;->this$0:Lcom/sec/jewishcalendar/events/Event;

    invoke-static {v10}, Lcom/sec/jewishcalendar/events/Event;->access$2(Lcom/sec/jewishcalendar/events/Event;)Lcom/sec/jewishcalendar/events/DateAndTime;

    move-result-object v10

    move/from16 v0, p3

    iput v0, v10, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nMonth:I

    .line 102
    iget-object v10, p0, Lcom/sec/jewishcalendar/events/Event$1;->this$0:Lcom/sec/jewishcalendar/events/Event;

    invoke-static {v10}, Lcom/sec/jewishcalendar/events/Event;->access$2(Lcom/sec/jewishcalendar/events/Event;)Lcom/sec/jewishcalendar/events/DateAndTime;

    move-result-object v10

    move/from16 v0, p4

    iput v0, v10, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nDay:I

    .line 103
    iget-object v10, p0, Lcom/sec/jewishcalendar/events/Event$1;->this$0:Lcom/sec/jewishcalendar/events/Event;

    invoke-static {v10}, Lcom/sec/jewishcalendar/events/Event;->access$6(Lcom/sec/jewishcalendar/events/Event;)Lcom/sec/jewishcalendar/calculation/HdateClass;

    move-result-object v10

    add-int/lit8 v11, p3, 0x1

    move/from16 v0, p4

    move/from16 v1, p2

    invoke-static {v10, v0, v11, v1}, Lcom/sec/jewishcalendar/calculation/JewishCal;->SetGdate(Lcom/sec/jewishcalendar/calculation/HdateClass;III)I

    .line 104
    iget-object v10, p0, Lcom/sec/jewishcalendar/events/Event$1;->this$0:Lcom/sec/jewishcalendar/events/Event;

    invoke-static {v10}, Lcom/sec/jewishcalendar/events/Event;->access$8(Lcom/sec/jewishcalendar/events/Event;)V

    goto :goto_0
.end method
