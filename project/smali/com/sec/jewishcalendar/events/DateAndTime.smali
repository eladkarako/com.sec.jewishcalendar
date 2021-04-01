.class public Lcom/sec/jewishcalendar/events/DateAndTime;
.super Ljava/lang/Object;
.source "DateAndTime.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/sec/jewishcalendar/events/DateAndTime;",
        ">;"
    }
.end annotation


# instance fields
.field public m_nDay:I

.field public m_nHour:I

.field public m_nMinute:I

.field public m_nMonth:I

.field public m_nSecond:I

.field public m_nYear:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 21
    .local v0, "c":Ljava/util/Calendar;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nYear:I

    .line 22
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nMonth:I

    .line 23
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nDay:I

    .line 24
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nHour:I

    .line 25
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nMinute:I

    .line 26
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nSecond:I

    .line 27
    return-void
.end method

.method public constructor <init>(III)V
    .locals 0
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput p1, p0, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nYear:I

    .line 41
    iput p2, p0, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nMonth:I

    .line 42
    iput p3, p0, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nDay:I

    .line 43
    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 0
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I
    .param p4, "hour"    # I
    .param p5, "minute"    # I

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput p1, p0, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nYear:I

    .line 32
    iput p2, p0, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nMonth:I

    .line 33
    iput p3, p0, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nDay:I

    .line 34
    iput p4, p0, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nHour:I

    .line 35
    iput p5, p0, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nMinute:I

    .line 36
    return-void
.end method

.method public constructor <init>(Lcom/sec/jewishcalendar/events/DateAndTime;)V
    .locals 1
    .param p1, "src"    # Lcom/sec/jewishcalendar/events/DateAndTime;

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iget v0, p1, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nYear:I

    iput v0, p0, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nYear:I

    .line 81
    iget v0, p1, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nMonth:I

    iput v0, p0, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nMonth:I

    .line 82
    iget v0, p1, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nDay:I

    iput v0, p0, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nDay:I

    .line 83
    iget v0, p1, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nHour:I

    iput v0, p0, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nHour:I

    .line 84
    iget v0, p1, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nMinute:I

    iput v0, p0, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nMinute:I

    .line 85
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 12
    .param p1, "sDateAndTime"    # Ljava/lang/String;

    .prologue
    const/16 v11, 0x2d

    const/4 v10, 0x5

    const/4 v9, 0x2

    const/4 v8, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/16 v6, 0x20

    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 51
    .local v5, "spaceLocation":I
    invoke-virtual {p1, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 52
    .local v3, "sDate":Ljava/lang/String;
    add-int/lit8 v6, v5, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 55
    .local v4, "sTime":Ljava/lang/String;
    const-string v6, "Today"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 57
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 58
    .local v0, "c":Ljava/util/Calendar;
    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v6

    iput v6, p0, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nDay:I

    .line 59
    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v6

    iput v6, p0, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nMonth:I

    .line 60
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    iput v6, p0, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nYear:I

    .line 75
    .end local v0    # "c":Ljava/util/Calendar;
    :goto_0
    invoke-virtual {v4, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nHour:I

    .line 76
    const/4 v6, 0x3

    invoke-virtual {v4, v6, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nMinute:I

    .line 77
    return-void

    .line 65
    :cond_0
    invoke-virtual {v3, v11, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 66
    .local v1, "locationOfFirstMinus":I
    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v3, v11, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 68
    .local v2, "locationOfSecondMinus":I
    invoke-virtual {v3, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nDay:I

    .line 69
    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v3, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 70
    add-int/lit8 v6, v6, -0x1

    .line 69
    iput v6, p0, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nMonth:I

    .line 71
    add-int/lit8 v6, v2, 0x1

    .line 72
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    .line 71
    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nYear:I

    goto :goto_0
.end method


# virtual methods
.method public compareTo(Lcom/sec/jewishcalendar/events/DateAndTime;)I
    .locals 3
    .param p1, "obj"    # Lcom/sec/jewishcalendar/events/DateAndTime;

    .prologue
    const/4 v0, 0x0

    .line 109
    invoke-virtual {p0, p1}, Lcom/sec/jewishcalendar/events/DateAndTime;->equals(Lcom/sec/jewishcalendar/events/DateAndTime;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 133
    :cond_0
    :goto_0
    return v0

    .line 111
    :cond_1
    iget v1, p0, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nYear:I

    iget v2, p1, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nYear:I

    if-lt v1, v2, :cond_5

    .line 112
    iget v1, p0, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nYear:I

    iget v2, p1, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nYear:I

    if-ne v1, v2, :cond_2

    .line 113
    iget v1, p0, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nMonth:I

    iget v2, p1, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nMonth:I

    if-lt v1, v2, :cond_5

    .line 114
    :cond_2
    iget v1, p0, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nYear:I

    iget v2, p1, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nYear:I

    if-ne v1, v2, :cond_3

    .line 115
    iget v1, p0, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nMonth:I

    iget v2, p1, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nMonth:I

    if-ne v1, v2, :cond_3

    .line 116
    iget v1, p0, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nDay:I

    iget v2, p1, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nDay:I

    if-lt v1, v2, :cond_5

    .line 117
    :cond_3
    iget v1, p0, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nYear:I

    iget v2, p1, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nYear:I

    if-ne v1, v2, :cond_4

    .line 118
    iget v1, p0, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nMonth:I

    iget v2, p1, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nMonth:I

    if-ne v1, v2, :cond_4

    .line 119
    iget v1, p0, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nDay:I

    iget v2, p1, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nDay:I

    if-ne v1, v2, :cond_4

    .line 120
    iget v1, p0, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nHour:I

    iget v2, p1, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nHour:I

    if-lt v1, v2, :cond_5

    .line 121
    :cond_4
    iget v1, p0, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nYear:I

    iget v2, p1, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nYear:I

    if-ne v1, v2, :cond_6

    .line 122
    iget v1, p0, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nMonth:I

    iget v2, p1, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nMonth:I

    if-ne v1, v2, :cond_6

    .line 123
    iget v1, p0, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nDay:I

    iget v2, p1, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nDay:I

    if-ne v1, v2, :cond_6

    .line 124
    iget v1, p0, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nHour:I

    iget v2, p1, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nHour:I

    if-ne v1, v2, :cond_6

    .line 125
    iget v1, p0, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nMinute:I

    iget v2, p1, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nMinute:I

    if-ge v1, v2, :cond_6

    .line 126
    :cond_5
    const/4 v0, -0x1

    goto :goto_0

    .line 127
    :cond_6
    iget v1, p0, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nYear:I

    iget v2, p1, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nYear:I

    if-ne v1, v2, :cond_7

    .line 128
    iget v1, p0, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nMonth:I

    iget v2, p1, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nMonth:I

    if-ne v1, v2, :cond_7

    .line 129
    iget v1, p0, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nDay:I

    iget v2, p1, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nDay:I

    if-ne v1, v2, :cond_7

    .line 130
    iget v1, p0, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nHour:I

    iget v2, p1, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nHour:I

    if-ne v1, v2, :cond_7

    .line 131
    iget v1, p0, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nMinute:I

    iget v2, p1, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nMinute:I

    if-eq v1, v2, :cond_0

    .line 133
    :cond_7
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lcom/sec/jewishcalendar/events/DateAndTime;

    invoke-virtual {p0, p1}, Lcom/sec/jewishcalendar/events/DateAndTime;->compareTo(Lcom/sec/jewishcalendar/events/DateAndTime;)I

    move-result v0

    return v0
.end method

.method public compareToDay(Lcom/sec/jewishcalendar/events/DateAndTime;)I
    .locals 3
    .param p1, "obj"    # Lcom/sec/jewishcalendar/events/DateAndTime;

    .prologue
    const/4 v0, 0x0

    .line 148
    invoke-virtual {p0, p1}, Lcom/sec/jewishcalendar/events/DateAndTime;->equals(Lcom/sec/jewishcalendar/events/DateAndTime;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 157
    :cond_0
    :goto_0
    return v0

    .line 150
    :cond_1
    iget v1, p0, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nYear:I

    iget v2, p1, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nYear:I

    if-ne v1, v2, :cond_2

    iget v1, p0, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nMonth:I

    iget v2, p1, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nMonth:I

    if-ne v1, v2, :cond_2

    iget v1, p0, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nDay:I

    iget v2, p1, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nDay:I

    if-eq v1, v2, :cond_0

    .line 153
    :cond_2
    iget v0, p0, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nYear:I

    iget v1, p1, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nYear:I

    if-lt v0, v1, :cond_4

    .line 154
    iget v0, p0, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nYear:I

    iget v1, p1, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nYear:I

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nMonth:I

    iget v1, p1, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nMonth:I

    if-lt v0, v1, :cond_4

    .line 155
    :cond_3
    iget v0, p0, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nYear:I

    iget v1, p1, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nYear:I

    if-ne v0, v1, :cond_5

    iget v0, p0, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nMonth:I

    iget v1, p1, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nMonth:I

    if-ne v0, v1, :cond_5

    iget v0, p0, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nDay:I

    iget v1, p1, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nDay:I

    if-ge v0, v1, :cond_5

    .line 156
    :cond_4
    const/4 v0, -0x1

    goto :goto_0

    .line 157
    :cond_5
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public compareToMonth(Lcom/sec/jewishcalendar/events/DateAndTime;)I
    .locals 3
    .param p1, "obj"    # Lcom/sec/jewishcalendar/events/DateAndTime;

    .prologue
    const/4 v0, 0x0

    .line 162
    invoke-virtual {p0, p1}, Lcom/sec/jewishcalendar/events/DateAndTime;->equals(Lcom/sec/jewishcalendar/events/DateAndTime;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 170
    :cond_0
    :goto_0
    return v0

    .line 164
    :cond_1
    iget v1, p0, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nYear:I

    iget v2, p1, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nYear:I

    if-ne v1, v2, :cond_2

    iget v1, p0, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nMonth:I

    iget v2, p1, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nMonth:I

    if-eq v1, v2, :cond_0

    .line 167
    :cond_2
    iget v0, p0, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nYear:I

    iget v1, p1, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nYear:I

    if-lt v0, v1, :cond_3

    .line 168
    iget v0, p0, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nYear:I

    iget v1, p1, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nYear:I

    if-ne v0, v1, :cond_4

    iget v0, p0, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nMonth:I

    iget v1, p1, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nMonth:I

    if-ge v0, v1, :cond_4

    .line 169
    :cond_3
    const/4 v0, -0x1

    goto :goto_0

    .line 170
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public equals(Lcom/sec/jewishcalendar/events/DateAndTime;)Z
    .locals 2
    .param p1, "obj"    # Lcom/sec/jewishcalendar/events/DateAndTime;

    .prologue
    .line 258
    iget v0, p0, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nYear:I

    iget v1, p1, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nYear:I

    if-ne v0, v1, :cond_0

    .line 259
    iget v0, p0, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nMonth:I

    iget v1, p1, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nMonth:I

    if-ne v0, v1, :cond_0

    .line 260
    iget v0, p0, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nDay:I

    iget v1, p1, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nDay:I

    if-ne v0, v1, :cond_0

    .line 261
    iget v0, p0, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nHour:I

    iget v1, p1, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nHour:I

    if-ne v0, v1, :cond_0

    .line 262
    iget v0, p0, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nMinute:I

    iget v1, p1, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nMinute:I

    if-ne v0, v1, :cond_0

    .line 258
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMilliSecondsAfterDateAndTime(J)Lcom/sec/jewishcalendar/events/DateAndTime;
    .locals 11
    .param p1, "milliSecondsBefore"    # J

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/sec/jewishcalendar/events/DateAndTime;->toTime()Landroid/text/format/Time;

    move-result-object v9

    .line 90
    .local v9, "thisTime":Landroid/text/format/Time;
    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v0

    add-long v6, v0, p1

    .line 91
    .local v6, "destMillSec":J
    new-instance v8, Landroid/text/format/Time;

    invoke-direct {v8}, Landroid/text/format/Time;-><init>()V

    .line 92
    .local v8, "destTime":Landroid/text/format/Time;
    invoke-virtual {v8, v6, v7}, Landroid/text/format/Time;->set(J)V

    .line 94
    new-instance v0, Lcom/sec/jewishcalendar/events/DateAndTime;

    iget v1, v8, Landroid/text/format/Time;->year:I

    iget v2, v8, Landroid/text/format/Time;->month:I

    iget v3, v8, Landroid/text/format/Time;->monthDay:I

    iget v4, v8, Landroid/text/format/Time;->hour:I

    iget v5, v8, Landroid/text/format/Time;->minute:I

    invoke-direct/range {v0 .. v5}, Lcom/sec/jewishcalendar/events/DateAndTime;-><init>(IIIII)V

    return-object v0
.end method

.method public getMilliSecondsBeforeDateAndTime(J)Lcom/sec/jewishcalendar/events/DateAndTime;
    .locals 11
    .param p1, "milliSecondsBefore"    # J

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/sec/jewishcalendar/events/DateAndTime;->toTime()Landroid/text/format/Time;

    move-result-object v9

    .line 100
    .local v9, "thisTime":Landroid/text/format/Time;
    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v0

    sub-long v6, v0, p1

    .line 101
    .local v6, "destMillSec":J
    new-instance v8, Landroid/text/format/Time;

    invoke-direct {v8}, Landroid/text/format/Time;-><init>()V

    .line 102
    .local v8, "destTime":Landroid/text/format/Time;
    invoke-virtual {v8, v6, v7}, Landroid/text/format/Time;->set(J)V

    .line 104
    new-instance v0, Lcom/sec/jewishcalendar/events/DateAndTime;

    iget v1, v8, Landroid/text/format/Time;->year:I

    iget v2, v8, Landroid/text/format/Time;->month:I

    iget v3, v8, Landroid/text/format/Time;->monthDay:I

    iget v4, v8, Landroid/text/format/Time;->hour:I

    iget v5, v8, Landroid/text/format/Time;->minute:I

    invoke-direct/range {v0 .. v5}, Lcom/sec/jewishcalendar/events/DateAndTime;-><init>(IIIII)V

    return-object v0
.end method

.method public isSameDay(Lcom/sec/jewishcalendar/events/DateAndTime;)Z
    .locals 2
    .param p1, "obj"    # Lcom/sec/jewishcalendar/events/DateAndTime;

    .prologue
    .line 138
    iget v0, p0, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nYear:I

    iget v1, p1, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nYear:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nMonth:I

    iget v1, p1, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nMonth:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nDay:I

    iget v1, p1, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nDay:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSameMonth(Lcom/sec/jewishcalendar/events/DateAndTime;)Z
    .locals 2
    .param p1, "obj"    # Lcom/sec/jewishcalendar/events/DateAndTime;

    .prologue
    .line 143
    iget v0, p0, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nYear:I

    iget v1, p1, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nYear:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nMonth:I

    iget v1, p1, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nMonth:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toDateString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 212
    invoke-virtual {p0}, Lcom/sec/jewishcalendar/events/DateAndTime;->toString()Ljava/lang/String;

    move-result-object v0

    .line 213
    .local v0, "dateAndTimeStr":Ljava/lang/String;
    const/16 v3, 0x20

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 215
    .local v2, "spaceLocation":I
    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 216
    .local v1, "dateStr":Ljava/lang/String;
    return-object v1
.end method

.method public toDbString()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0xa

    .line 233
    new-instance v2, Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nDay:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nMonth:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nYear:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 236
    .local v0, "date":Ljava/lang/String;
    iget v2, p0, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nHour:I

    if-ge v2, v4, :cond_0

    .line 237
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "0"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nHour:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 240
    .local v1, "time":Ljava/lang/String;
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 241
    iget v2, p0, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nMinute:I

    if-ge v2, v4, :cond_1

    .line 242
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nMinute:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 246
    :goto_1
    new-instance v2, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v2

    .line 239
    .end local v1    # "time":Ljava/lang/String;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nHour:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "time":Ljava/lang/String;
    goto :goto_0

    .line 244
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nMinute:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public toEventListDateTitleString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nDay:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nMonth:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nYear:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0xa

    .line 178
    new-instance v2, Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nDay:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nMonth:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nYear:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 192
    .local v0, "date":Ljava/lang/String;
    iget v2, p0, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nHour:I

    if-ge v2, v4, :cond_0

    .line 193
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "0"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nHour:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 196
    .local v1, "time":Ljava/lang/String;
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 197
    iget v2, p0, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nMinute:I

    if-ge v2, v4, :cond_1

    .line 198
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nMinute:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 202
    :goto_1
    new-instance v2, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v2

    .line 195
    .end local v1    # "time":Ljava/lang/String;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nHour:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "time":Ljava/lang/String;
    goto :goto_0

    .line 200
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nMinute:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public toTime()Landroid/text/format/Time;
    .locals 7

    .prologue
    .line 251
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 252
    .local v0, "time":Landroid/text/format/Time;
    iget v1, p0, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nSecond:I

    iget v2, p0, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nMinute:I

    iget v3, p0, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nHour:I

    iget v4, p0, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nDay:I

    iget v5, p0, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nMonth:I

    iget v6, p0, Lcom/sec/jewishcalendar/events/DateAndTime;->m_nYear:I

    invoke-virtual/range {v0 .. v6}, Landroid/text/format/Time;->set(IIIIII)V

    .line 253
    return-object v0
.end method

.method public toTimeString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 221
    invoke-virtual {p0}, Lcom/sec/jewishcalendar/events/DateAndTime;->toString()Ljava/lang/String;

    move-result-object v0

    .line 222
    .local v0, "dateAndTimeStr":Ljava/lang/String;
    const/16 v3, 0x20

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 224
    .local v1, "spaceLocation":I
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 225
    .local v2, "timeStr":Ljava/lang/String;
    return-object v2
.end method
