.class Lcom/sec/jewishcalendar/events/NewEvent$2;
.super Ljava/lang/Object;
.source "NewEvent.java"

# interfaces
.implements Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePickerDialog$OnJewishDateSetListener;


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
    iput-object p1, p0, Lcom/sec/jewishcalendar/events/NewEvent$2;->this$0:Lcom/sec/jewishcalendar/events/NewEvent;

    .line 110
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
    .line 114
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/jewishcalendar/events/NewEvent$2;->this$0:Lcom/sec/jewishcalendar/events/NewEvent;

    invoke-static {v12}, Lcom/sec/jewishcalendar/events/NewEvent;->access$0(Lcom/sec/jewishcalendar/events/NewEvent;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 116
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/jewishcalendar/events/NewEvent$2;->this$0:Lcom/sec/jewishcalendar/events/NewEvent;

    invoke-static {v12}, Lcom/sec/jewishcalendar/events/NewEvent;->access$1(Lcom/sec/jewishcalendar/events/NewEvent;)Lcom/sec/jewishcalendar/events/DateAndTime;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/jewishcalendar/events/DateAndTime;->toTime()Landroid/text/format/Time;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v8

    .line 117
    .local v8, "prevFromTimeInMilliSeconds":J
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/jewishcalendar/events/NewEvent$2;->this$0:Lcom/sec/jewishcalendar/events/NewEvent;

    invoke-static {v12}, Lcom/sec/jewishcalendar/events/NewEvent;->access$2(Lcom/sec/jewishcalendar/events/NewEvent;)Lcom/sec/jewishcalendar/events/DateAndTime;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/jewishcalendar/events/DateAndTime;->toTime()Landroid/text/format/Time;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v10

    .line 118
    .local v10, "prevToTimeInMilliSeconds":J
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/jewishcalendar/events/NewEvent$2;->this$0:Lcom/sec/jewishcalendar/events/NewEvent;

    invoke-static {v12}, Lcom/sec/jewishcalendar/events/NewEvent;->access$3(Lcom/sec/jewishcalendar/events/NewEvent;)Lcom/sec/jewishcalendar/calculation/HdateClass;

    move-result-object v12

    move/from16 v0, p4

    move/from16 v1, p3

    move/from16 v2, p2

    invoke-static {v12, v0, v1, v2}, Lcom/sec/jewishcalendar/calculation/JewishCal;->SetHdate(Lcom/sec/jewishcalendar/calculation/HdateClass;III)I

    .line 119
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/jewishcalendar/events/NewEvent$2;->this$0:Lcom/sec/jewishcalendar/events/NewEvent;

    invoke-static {v12}, Lcom/sec/jewishcalendar/events/NewEvent;->access$1(Lcom/sec/jewishcalendar/events/NewEvent;)Lcom/sec/jewishcalendar/events/DateAndTime;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/jewishcalendar/events/NewEvent$2;->this$0:Lcom/sec/jewishcalendar/events/NewEvent;

    invoke-static {v13}, Lcom/sec/jewishcalendar/events/NewEvent;->access$3(Lcom/sec/jewishcalendar/events/NewEvent;)Lcom/sec/jewishcalendar/calculation/HdateClass;

    move-result-object v13

    iget v13, v13, Lcom/sec/jewishcalendar/calculation/HdateClass;->gyear:I

    iput v13, v12, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nYear:I

    .line 120
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/jewishcalendar/events/NewEvent$2;->this$0:Lcom/sec/jewishcalendar/events/NewEvent;

    invoke-static {v12}, Lcom/sec/jewishcalendar/events/NewEvent;->access$1(Lcom/sec/jewishcalendar/events/NewEvent;)Lcom/sec/jewishcalendar/events/DateAndTime;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/jewishcalendar/events/NewEvent$2;->this$0:Lcom/sec/jewishcalendar/events/NewEvent;

    invoke-static {v13}, Lcom/sec/jewishcalendar/events/NewEvent;->access$3(Lcom/sec/jewishcalendar/events/NewEvent;)Lcom/sec/jewishcalendar/calculation/HdateClass;

    move-result-object v13

    iget v13, v13, Lcom/sec/jewishcalendar/calculation/HdateClass;->gmonth:I

    add-int/lit8 v13, v13, -0x1

    iput v13, v12, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nMonth:I

    .line 121
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/jewishcalendar/events/NewEvent$2;->this$0:Lcom/sec/jewishcalendar/events/NewEvent;

    invoke-static {v12}, Lcom/sec/jewishcalendar/events/NewEvent;->access$1(Lcom/sec/jewishcalendar/events/NewEvent;)Lcom/sec/jewishcalendar/events/DateAndTime;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/jewishcalendar/events/NewEvent$2;->this$0:Lcom/sec/jewishcalendar/events/NewEvent;

    invoke-static {v13}, Lcom/sec/jewishcalendar/events/NewEvent;->access$3(Lcom/sec/jewishcalendar/events/NewEvent;)Lcom/sec/jewishcalendar/calculation/HdateClass;

    move-result-object v13

    iget v13, v13, Lcom/sec/jewishcalendar/calculation/HdateClass;->gday:I

    iput v13, v12, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nDay:I

    .line 122
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/jewishcalendar/events/NewEvent$2;->this$0:Lcom/sec/jewishcalendar/events/NewEvent;

    invoke-static {v12}, Lcom/sec/jewishcalendar/events/NewEvent;->access$4(Lcom/sec/jewishcalendar/events/NewEvent;)V

    .line 124
    cmp-long v12, v8, v10

    if-gtz v12, :cond_0

    .line 126
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/jewishcalendar/events/NewEvent$2;->this$0:Lcom/sec/jewishcalendar/events/NewEvent;

    invoke-static {v12}, Lcom/sec/jewishcalendar/events/NewEvent;->access$1(Lcom/sec/jewishcalendar/events/NewEvent;)Lcom/sec/jewishcalendar/events/DateAndTime;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/jewishcalendar/events/DateAndTime;->toTime()Landroid/text/format/Time;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    .line 127
    .local v4, "currentFromTimeInMilliSeconds":J
    sub-long v6, v4, v8

    .line 128
    .local v6, "diffInMilliSeconds":J
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/jewishcalendar/events/NewEvent$2;->this$0:Lcom/sec/jewishcalendar/events/NewEvent;

    .line 129
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/jewishcalendar/events/NewEvent$2;->this$0:Lcom/sec/jewishcalendar/events/NewEvent;

    invoke-static {v13}, Lcom/sec/jewishcalendar/events/NewEvent;->access$2(Lcom/sec/jewishcalendar/events/NewEvent;)Lcom/sec/jewishcalendar/events/DateAndTime;

    move-result-object v13

    invoke-virtual {v13, v6, v7}, Lcom/sec/jewishcalendar/events/DateAndTime;->getMilliSecondsAfterDateAndTime(J)Lcom/sec/jewishcalendar/events/DateAndTime;

    move-result-object v13

    .line 128
    invoke-static {v12, v13}, Lcom/sec/jewishcalendar/events/NewEvent;->access$5(Lcom/sec/jewishcalendar/events/NewEvent;Lcom/sec/jewishcalendar/events/DateAndTime;)V

    .line 130
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/jewishcalendar/events/NewEvent$2;->this$0:Lcom/sec/jewishcalendar/events/NewEvent;

    invoke-static {v12}, Lcom/sec/jewishcalendar/events/NewEvent;->access$6(Lcom/sec/jewishcalendar/events/NewEvent;)Lcom/sec/jewishcalendar/calculation/HdateClass;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/jewishcalendar/events/NewEvent$2;->this$0:Lcom/sec/jewishcalendar/events/NewEvent;

    invoke-static {v13}, Lcom/sec/jewishcalendar/events/NewEvent;->access$2(Lcom/sec/jewishcalendar/events/NewEvent;)Lcom/sec/jewishcalendar/events/DateAndTime;

    move-result-object v13

    iget v13, v13, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nDay:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/jewishcalendar/events/NewEvent$2;->this$0:Lcom/sec/jewishcalendar/events/NewEvent;

    invoke-static {v14}, Lcom/sec/jewishcalendar/events/NewEvent;->access$2(Lcom/sec/jewishcalendar/events/NewEvent;)Lcom/sec/jewishcalendar/events/DateAndTime;

    move-result-object v14

    iget v14, v14, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nMonth:I

    add-int/lit8 v14, v14, 0x1

    .line 131
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/jewishcalendar/events/NewEvent$2;->this$0:Lcom/sec/jewishcalendar/events/NewEvent;

    invoke-static {v15}, Lcom/sec/jewishcalendar/events/NewEvent;->access$2(Lcom/sec/jewishcalendar/events/NewEvent;)Lcom/sec/jewishcalendar/events/DateAndTime;

    move-result-object v15

    iget v15, v15, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nYear:I

    .line 130
    invoke-static {v12, v13, v14, v15}, Lcom/sec/jewishcalendar/calculation/JewishCal;->SetGdate(Lcom/sec/jewishcalendar/calculation/HdateClass;III)I

    .line 132
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/jewishcalendar/events/NewEvent$2;->this$0:Lcom/sec/jewishcalendar/events/NewEvent;

    invoke-static {v12}, Lcom/sec/jewishcalendar/events/NewEvent;->access$9(Lcom/sec/jewishcalendar/events/NewEvent;)Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePickerDialog;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/jewishcalendar/events/NewEvent$2;->this$0:Lcom/sec/jewishcalendar/events/NewEvent;

    invoke-static {v13}, Lcom/sec/jewishcalendar/events/NewEvent;->access$6(Lcom/sec/jewishcalendar/events/NewEvent;)Lcom/sec/jewishcalendar/calculation/HdateClass;

    move-result-object v13

    iget v13, v13, Lcom/sec/jewishcalendar/calculation/HdateClass;->hyear:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/jewishcalendar/events/NewEvent$2;->this$0:Lcom/sec/jewishcalendar/events/NewEvent;

    invoke-static {v14}, Lcom/sec/jewishcalendar/events/NewEvent;->access$6(Lcom/sec/jewishcalendar/events/NewEvent;)Lcom/sec/jewishcalendar/calculation/HdateClass;

    move-result-object v14

    iget v14, v14, Lcom/sec/jewishcalendar/calculation/HdateClass;->hmonth:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/jewishcalendar/events/NewEvent$2;->this$0:Lcom/sec/jewishcalendar/events/NewEvent;

    invoke-static {v15}, Lcom/sec/jewishcalendar/events/NewEvent;->access$6(Lcom/sec/jewishcalendar/events/NewEvent;)Lcom/sec/jewishcalendar/calculation/HdateClass;

    move-result-object v15

    iget v15, v15, Lcom/sec/jewishcalendar/calculation/HdateClass;->hday:I

    invoke-virtual {v12, v13, v14, v15}, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePickerDialog;->updateDate(III)V

    .line 133
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/jewishcalendar/events/NewEvent$2;->this$0:Lcom/sec/jewishcalendar/events/NewEvent;

    invoke-static {v12}, Lcom/sec/jewishcalendar/events/NewEvent;->access$8(Lcom/sec/jewishcalendar/events/NewEvent;)V

    .line 144
    .end local v4    # "currentFromTimeInMilliSeconds":J
    .end local v6    # "diffInMilliSeconds":J
    .end local v8    # "prevFromTimeInMilliSeconds":J
    .end local v10    # "prevToTimeInMilliSeconds":J
    :cond_0
    :goto_0
    return-void

    .line 138
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/jewishcalendar/events/NewEvent$2;->this$0:Lcom/sec/jewishcalendar/events/NewEvent;

    invoke-static {v12}, Lcom/sec/jewishcalendar/events/NewEvent;->access$6(Lcom/sec/jewishcalendar/events/NewEvent;)Lcom/sec/jewishcalendar/calculation/HdateClass;

    move-result-object v12

    move/from16 v0, p4

    move/from16 v1, p3

    move/from16 v2, p2

    invoke-static {v12, v0, v1, v2}, Lcom/sec/jewishcalendar/calculation/JewishCal;->SetHdate(Lcom/sec/jewishcalendar/calculation/HdateClass;III)I

    .line 139
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/jewishcalendar/events/NewEvent$2;->this$0:Lcom/sec/jewishcalendar/events/NewEvent;

    invoke-static {v12}, Lcom/sec/jewishcalendar/events/NewEvent;->access$2(Lcom/sec/jewishcalendar/events/NewEvent;)Lcom/sec/jewishcalendar/events/DateAndTime;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/jewishcalendar/events/NewEvent$2;->this$0:Lcom/sec/jewishcalendar/events/NewEvent;

    invoke-static {v13}, Lcom/sec/jewishcalendar/events/NewEvent;->access$6(Lcom/sec/jewishcalendar/events/NewEvent;)Lcom/sec/jewishcalendar/calculation/HdateClass;

    move-result-object v13

    iget v13, v13, Lcom/sec/jewishcalendar/calculation/HdateClass;->gyear:I

    iput v13, v12, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nYear:I

    .line 140
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/jewishcalendar/events/NewEvent$2;->this$0:Lcom/sec/jewishcalendar/events/NewEvent;

    invoke-static {v12}, Lcom/sec/jewishcalendar/events/NewEvent;->access$2(Lcom/sec/jewishcalendar/events/NewEvent;)Lcom/sec/jewishcalendar/events/DateAndTime;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/jewishcalendar/events/NewEvent$2;->this$0:Lcom/sec/jewishcalendar/events/NewEvent;

    invoke-static {v13}, Lcom/sec/jewishcalendar/events/NewEvent;->access$6(Lcom/sec/jewishcalendar/events/NewEvent;)Lcom/sec/jewishcalendar/calculation/HdateClass;

    move-result-object v13

    iget v13, v13, Lcom/sec/jewishcalendar/calculation/HdateClass;->gmonth:I

    add-int/lit8 v13, v13, -0x1

    iput v13, v12, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nMonth:I

    .line 141
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/jewishcalendar/events/NewEvent$2;->this$0:Lcom/sec/jewishcalendar/events/NewEvent;

    invoke-static {v12}, Lcom/sec/jewishcalendar/events/NewEvent;->access$2(Lcom/sec/jewishcalendar/events/NewEvent;)Lcom/sec/jewishcalendar/events/DateAndTime;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/jewishcalendar/events/NewEvent$2;->this$0:Lcom/sec/jewishcalendar/events/NewEvent;

    invoke-static {v13}, Lcom/sec/jewishcalendar/events/NewEvent;->access$6(Lcom/sec/jewishcalendar/events/NewEvent;)Lcom/sec/jewishcalendar/calculation/HdateClass;

    move-result-object v13

    iget v13, v13, Lcom/sec/jewishcalendar/calculation/HdateClass;->gday:I

    iput v13, v12, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nDay:I

    .line 142
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/jewishcalendar/events/NewEvent$2;->this$0:Lcom/sec/jewishcalendar/events/NewEvent;

    invoke-static {v12}, Lcom/sec/jewishcalendar/events/NewEvent;->access$8(Lcom/sec/jewishcalendar/events/NewEvent;)V

    goto :goto_0
.end method
