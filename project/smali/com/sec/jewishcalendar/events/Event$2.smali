.class Lcom/sec/jewishcalendar/events/Event$2;
.super Ljava/lang/Object;
.source "Event.java"

# interfaces
.implements Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePickerDialog$OnJewishDateSetListener;


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
    iput-object p1, p0, Lcom/sec/jewishcalendar/events/Event$2;->this$0:Lcom/sec/jewishcalendar/events/Event;

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateSet(Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;III)V
    .locals 16
    .param p1, "view"    # Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;
    .param p2, "year"    # I
    .param p3, "monthOfYear"    # I
    .param p4, "dayOfMonth"    # I

    .prologue
    .line 115
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/jewishcalendar/events/Event$2;->this$0:Lcom/sec/jewishcalendar/events/Event;

    invoke-static {v12}, Lcom/sec/jewishcalendar/events/Event;->access$0(Lcom/sec/jewishcalendar/events/Event;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 117
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/jewishcalendar/events/Event$2;->this$0:Lcom/sec/jewishcalendar/events/Event;

    invoke-static {v12}, Lcom/sec/jewishcalendar/events/Event;->access$1(Lcom/sec/jewishcalendar/events/Event;)Lcom/sec/jewishcalendar/events/DateAndTime;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/jewishcalendar/events/DateAndTime;->toTime()Landroid/text/format/Time;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v8

    .line 118
    .local v8, "prevFromTimeInMilliSeconds":J
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/jewishcalendar/events/Event$2;->this$0:Lcom/sec/jewishcalendar/events/Event;

    invoke-static {v12}, Lcom/sec/jewishcalendar/events/Event;->access$2(Lcom/sec/jewishcalendar/events/Event;)Lcom/sec/jewishcalendar/events/DateAndTime;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/jewishcalendar/events/DateAndTime;->toTime()Landroid/text/format/Time;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v10

    .line 119
    .local v10, "prevToTimeInMilliSeconds":J
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/jewishcalendar/events/Event$2;->this$0:Lcom/sec/jewishcalendar/events/Event;

    invoke-static {v12}, Lcom/sec/jewishcalendar/events/Event;->access$3(Lcom/sec/jewishcalendar/events/Event;)Lcom/sec/jewishcalendar/calculation/HdateClass;

    move-result-object v12

    move/from16 v0, p4

    move/from16 v1, p3

    move/from16 v2, p2

    invoke-static {v12, v0, v1, v2}, Lcom/sec/jewishcalendar/calculation/JewishCal;->SetHdate(Lcom/sec/jewishcalendar/calculation/HdateClass;III)I

    .line 120
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/jewishcalendar/events/Event$2;->this$0:Lcom/sec/jewishcalendar/events/Event;

    invoke-static {v12}, Lcom/sec/jewishcalendar/events/Event;->access$1(Lcom/sec/jewishcalendar/events/Event;)Lcom/sec/jewishcalendar/events/DateAndTime;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/jewishcalendar/events/Event$2;->this$0:Lcom/sec/jewishcalendar/events/Event;

    invoke-static {v13}, Lcom/sec/jewishcalendar/events/Event;->access$3(Lcom/sec/jewishcalendar/events/Event;)Lcom/sec/jewishcalendar/calculation/HdateClass;

    move-result-object v13

    iget v13, v13, Lcom/sec/jewishcalendar/calculation/HdateClass;->gyear:I

    iput v13, v12, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nYear:I

    .line 121
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/jewishcalendar/events/Event$2;->this$0:Lcom/sec/jewishcalendar/events/Event;

    invoke-static {v12}, Lcom/sec/jewishcalendar/events/Event;->access$1(Lcom/sec/jewishcalendar/events/Event;)Lcom/sec/jewishcalendar/events/DateAndTime;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/jewishcalendar/events/Event$2;->this$0:Lcom/sec/jewishcalendar/events/Event;

    invoke-static {v13}, Lcom/sec/jewishcalendar/events/Event;->access$3(Lcom/sec/jewishcalendar/events/Event;)Lcom/sec/jewishcalendar/calculation/HdateClass;

    move-result-object v13

    iget v13, v13, Lcom/sec/jewishcalendar/calculation/HdateClass;->gmonth:I

    add-int/lit8 v13, v13, -0x1

    iput v13, v12, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nMonth:I

    .line 122
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/jewishcalendar/events/Event$2;->this$0:Lcom/sec/jewishcalendar/events/Event;

    invoke-static {v12}, Lcom/sec/jewishcalendar/events/Event;->access$1(Lcom/sec/jewishcalendar/events/Event;)Lcom/sec/jewishcalendar/events/DateAndTime;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/jewishcalendar/events/Event$2;->this$0:Lcom/sec/jewishcalendar/events/Event;

    invoke-static {v13}, Lcom/sec/jewishcalendar/events/Event;->access$3(Lcom/sec/jewishcalendar/events/Event;)Lcom/sec/jewishcalendar/calculation/HdateClass;

    move-result-object v13

    iget v13, v13, Lcom/sec/jewishcalendar/calculation/HdateClass;->gday:I

    iput v13, v12, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nDay:I

    .line 123
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/jewishcalendar/events/Event$2;->this$0:Lcom/sec/jewishcalendar/events/Event;

    invoke-static {v12}, Lcom/sec/jewishcalendar/events/Event;->access$4(Lcom/sec/jewishcalendar/events/Event;)V

    .line 125
    cmp-long v12, v8, v10

    if-gtz v12, :cond_0

    .line 127
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/jewishcalendar/events/Event$2;->this$0:Lcom/sec/jewishcalendar/events/Event;

    invoke-static {v12}, Lcom/sec/jewishcalendar/events/Event;->access$1(Lcom/sec/jewishcalendar/events/Event;)Lcom/sec/jewishcalendar/events/DateAndTime;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/jewishcalendar/events/DateAndTime;->toTime()Landroid/text/format/Time;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    .line 128
    .local v4, "currentFromTimeInMilliSeconds":J
    sub-long v6, v4, v8

    .line 129
    .local v6, "diffInMilliSeconds":J
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/jewishcalendar/events/Event$2;->this$0:Lcom/sec/jewishcalendar/events/Event;

    .line 130
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/jewishcalendar/events/Event$2;->this$0:Lcom/sec/jewishcalendar/events/Event;

    invoke-static {v13}, Lcom/sec/jewishcalendar/events/Event;->access$2(Lcom/sec/jewishcalendar/events/Event;)Lcom/sec/jewishcalendar/events/DateAndTime;

    move-result-object v13

    invoke-virtual {v13, v6, v7}, Lcom/sec/jewishcalendar/events/DateAndTime;->getMilliSecondsAfterDateAndTime(J)Lcom/sec/jewishcalendar/events/DateAndTime;

    move-result-object v13

    .line 129
    invoke-static {v12, v13}, Lcom/sec/jewishcalendar/events/Event;->access$5(Lcom/sec/jewishcalendar/events/Event;Lcom/sec/jewishcalendar/events/DateAndTime;)V

    .line 131
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/jewishcalendar/events/Event$2;->this$0:Lcom/sec/jewishcalendar/events/Event;

    invoke-static {v12}, Lcom/sec/jewishcalendar/events/Event;->access$6(Lcom/sec/jewishcalendar/events/Event;)Lcom/sec/jewishcalendar/calculation/HdateClass;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/jewishcalendar/events/Event$2;->this$0:Lcom/sec/jewishcalendar/events/Event;

    invoke-static {v13}, Lcom/sec/jewishcalendar/events/Event;->access$2(Lcom/sec/jewishcalendar/events/Event;)Lcom/sec/jewishcalendar/events/DateAndTime;

    move-result-object v13

    iget v13, v13, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nDay:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/jewishcalendar/events/Event$2;->this$0:Lcom/sec/jewishcalendar/events/Event;

    invoke-static {v14}, Lcom/sec/jewishcalendar/events/Event;->access$2(Lcom/sec/jewishcalendar/events/Event;)Lcom/sec/jewishcalendar/events/DateAndTime;

    move-result-object v14

    iget v14, v14, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nMonth:I

    add-int/lit8 v14, v14, 0x1

    .line 132
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/jewishcalendar/events/Event$2;->this$0:Lcom/sec/jewishcalendar/events/Event;

    invoke-static {v15}, Lcom/sec/jewishcalendar/events/Event;->access$2(Lcom/sec/jewishcalendar/events/Event;)Lcom/sec/jewishcalendar/events/DateAndTime;

    move-result-object v15

    iget v15, v15, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nYear:I

    .line 131
    invoke-static {v12, v13, v14, v15}, Lcom/sec/jewishcalendar/calculation/JewishCal;->SetGdate(Lcom/sec/jewishcalendar/calculation/HdateClass;III)I

    .line 133
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/jewishcalendar/events/Event$2;->this$0:Lcom/sec/jewishcalendar/events/Event;

    invoke-static {v12}, Lcom/sec/jewishcalendar/events/Event;->access$9(Lcom/sec/jewishcalendar/events/Event;)Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePickerDialog;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/jewishcalendar/events/Event$2;->this$0:Lcom/sec/jewishcalendar/events/Event;

    invoke-static {v13}, Lcom/sec/jewishcalendar/events/Event;->access$6(Lcom/sec/jewishcalendar/events/Event;)Lcom/sec/jewishcalendar/calculation/HdateClass;

    move-result-object v13

    iget v13, v13, Lcom/sec/jewishcalendar/calculation/HdateClass;->hyear:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/jewishcalendar/events/Event$2;->this$0:Lcom/sec/jewishcalendar/events/Event;

    invoke-static {v14}, Lcom/sec/jewishcalendar/events/Event;->access$6(Lcom/sec/jewishcalendar/events/Event;)Lcom/sec/jewishcalendar/calculation/HdateClass;

    move-result-object v14

    iget v14, v14, Lcom/sec/jewishcalendar/calculation/HdateClass;->hmonth:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/jewishcalendar/events/Event$2;->this$0:Lcom/sec/jewishcalendar/events/Event;

    invoke-static {v15}, Lcom/sec/jewishcalendar/events/Event;->access$6(Lcom/sec/jewishcalendar/events/Event;)Lcom/sec/jewishcalendar/calculation/HdateClass;

    move-result-object v15

    iget v15, v15, Lcom/sec/jewishcalendar/calculation/HdateClass;->hday:I

    invoke-virtual {v12, v13, v14, v15}, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePickerDialog;->updateDate(III)V

    .line 134
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/jewishcalendar/events/Event$2;->this$0:Lcom/sec/jewishcalendar/events/Event;

    invoke-static {v12}, Lcom/sec/jewishcalendar/events/Event;->access$8(Lcom/sec/jewishcalendar/events/Event;)V

    .line 145
    .end local v4    # "currentFromTimeInMilliSeconds":J
    .end local v6    # "diffInMilliSeconds":J
    .end local v8    # "prevFromTimeInMilliSeconds":J
    .end local v10    # "prevToTimeInMilliSeconds":J
    :cond_0
    :goto_0
    return-void

    .line 139
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/jewishcalendar/events/Event$2;->this$0:Lcom/sec/jewishcalendar/events/Event;

    invoke-static {v12}, Lcom/sec/jewishcalendar/events/Event;->access$6(Lcom/sec/jewishcalendar/events/Event;)Lcom/sec/jewishcalendar/calculation/HdateClass;

    move-result-object v12

    move/from16 v0, p4

    move/from16 v1, p3

    move/from16 v2, p2

    invoke-static {v12, v0, v1, v2}, Lcom/sec/jewishcalendar/calculation/JewishCal;->SetHdate(Lcom/sec/jewishcalendar/calculation/HdateClass;III)I

    .line 140
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/jewishcalendar/events/Event$2;->this$0:Lcom/sec/jewishcalendar/events/Event;

    invoke-static {v12}, Lcom/sec/jewishcalendar/events/Event;->access$2(Lcom/sec/jewishcalendar/events/Event;)Lcom/sec/jewishcalendar/events/DateAndTime;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/jewishcalendar/events/Event$2;->this$0:Lcom/sec/jewishcalendar/events/Event;

    invoke-static {v13}, Lcom/sec/jewishcalendar/events/Event;->access$6(Lcom/sec/jewishcalendar/events/Event;)Lcom/sec/jewishcalendar/calculation/HdateClass;

    move-result-object v13

    iget v13, v13, Lcom/sec/jewishcalendar/calculation/HdateClass;->gyear:I

    iput v13, v12, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nYear:I

    .line 141
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/jewishcalendar/events/Event$2;->this$0:Lcom/sec/jewishcalendar/events/Event;

    invoke-static {v12}, Lcom/sec/jewishcalendar/events/Event;->access$2(Lcom/sec/jewishcalendar/events/Event;)Lcom/sec/jewishcalendar/events/DateAndTime;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/jewishcalendar/events/Event$2;->this$0:Lcom/sec/jewishcalendar/events/Event;

    invoke-static {v13}, Lcom/sec/jewishcalendar/events/Event;->access$6(Lcom/sec/jewishcalendar/events/Event;)Lcom/sec/jewishcalendar/calculation/HdateClass;

    move-result-object v13

    iget v13, v13, Lcom/sec/jewishcalendar/calculation/HdateClass;->gmonth:I

    add-int/lit8 v13, v13, -0x1

    iput v13, v12, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nMonth:I

    .line 142
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/jewishcalendar/events/Event$2;->this$0:Lcom/sec/jewishcalendar/events/Event;

    invoke-static {v12}, Lcom/sec/jewishcalendar/events/Event;->access$2(Lcom/sec/jewishcalendar/events/Event;)Lcom/sec/jewishcalendar/events/DateAndTime;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/jewishcalendar/events/Event$2;->this$0:Lcom/sec/jewishcalendar/events/Event;

    invoke-static {v13}, Lcom/sec/jewishcalendar/events/Event;->access$6(Lcom/sec/jewishcalendar/events/Event;)Lcom/sec/jewishcalendar/calculation/HdateClass;

    move-result-object v13

    iget v13, v13, Lcom/sec/jewishcalendar/calculation/HdateClass;->gday:I

    iput v13, v12, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nDay:I

    .line 143
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/jewishcalendar/events/Event$2;->this$0:Lcom/sec/jewishcalendar/events/Event;

    invoke-static {v12}, Lcom/sec/jewishcalendar/events/Event;->access$8(Lcom/sec/jewishcalendar/events/Event;)V

    goto :goto_0
.end method
