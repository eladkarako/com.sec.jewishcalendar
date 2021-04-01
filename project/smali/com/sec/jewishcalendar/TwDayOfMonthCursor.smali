.class public Lcom/sec/jewishcalendar/TwDayOfMonthCursor;
.super Landroid/util/MonthDisplayHelper;
.source "TwDayOfMonthCursor.java"

# interfaces
.implements Lcom/sec/jewishcalendar/TwDayOfMonthCursorInterface;


# static fields
.field private static mPrevColumn:I


# instance fields
.field private mColumn:I

.field private mOnCursorMoveListener:Lcom/sec/jewishcalendar/TwDayOfMonthCursorInterface$OnCursorMoveListener;

.field private mRow:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, -0x1

    sput v0, Lcom/sec/jewishcalendar/TwDayOfMonthCursor;->mPrevColumn:I

    return-void
.end method

.method public constructor <init>(III)V
    .locals 1
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Landroid/util/MonthDisplayHelper;-><init>(II)V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/jewishcalendar/TwDayOfMonthCursor;->mOnCursorMoveListener:Lcom/sec/jewishcalendar/TwDayOfMonthCursorInterface$OnCursorMoveListener;

    .line 45
    invoke-super {p0, p3}, Landroid/util/MonthDisplayHelper;->getRowOf(I)I

    move-result v0

    iput v0, p0, Lcom/sec/jewishcalendar/TwDayOfMonthCursor;->mRow:I

    .line 46
    invoke-virtual {p0, p3}, Lcom/sec/jewishcalendar/TwDayOfMonthCursor;->getColumnOf(I)I

    move-result v0

    iput v0, p0, Lcom/sec/jewishcalendar/TwDayOfMonthCursor;->mColumn:I

    .line 47
    return-void
.end method


# virtual methods
.method public down()Z
    .locals 3

    .prologue
    .line 133
    iget v1, p0, Lcom/sec/jewishcalendar/TwDayOfMonthCursor;->mRow:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/sec/jewishcalendar/TwDayOfMonthCursor;->mColumn:I

    invoke-virtual {p0, v1, v2}, Lcom/sec/jewishcalendar/TwDayOfMonthCursor;->isWithinCurrentMonth(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 135
    iget v1, p0, Lcom/sec/jewishcalendar/TwDayOfMonthCursor;->mRow:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sec/jewishcalendar/TwDayOfMonthCursor;->mRow:I

    .line 136
    const/4 v0, 0x0

    .line 146
    .local v0, "returnValue":Z
    :goto_0
    iget-object v1, p0, Lcom/sec/jewishcalendar/TwDayOfMonthCursor;->mOnCursorMoveListener:Lcom/sec/jewishcalendar/TwDayOfMonthCursorInterface$OnCursorMoveListener;

    if-eqz v1, :cond_0

    .line 147
    iget-object v1, p0, Lcom/sec/jewishcalendar/TwDayOfMonthCursor;->mOnCursorMoveListener:Lcom/sec/jewishcalendar/TwDayOfMonthCursorInterface$OnCursorMoveListener;

    invoke-interface {v1}, Lcom/sec/jewishcalendar/TwDayOfMonthCursorInterface$OnCursorMoveListener;->onCusorMoved()V

    .line 149
    :cond_0
    iget v1, p0, Lcom/sec/jewishcalendar/TwDayOfMonthCursor;->mColumn:I

    sput v1, Lcom/sec/jewishcalendar/TwDayOfMonthCursor;->mPrevColumn:I

    .line 150
    return v0

    .line 139
    .end local v0    # "returnValue":Z
    :cond_1
    invoke-super {p0}, Landroid/util/MonthDisplayHelper;->nextMonth()V

    .line 140
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/jewishcalendar/TwDayOfMonthCursor;->mRow:I

    .line 141
    :goto_1
    iget v1, p0, Lcom/sec/jewishcalendar/TwDayOfMonthCursor;->mRow:I

    iget v2, p0, Lcom/sec/jewishcalendar/TwDayOfMonthCursor;->mColumn:I

    invoke-virtual {p0, v1, v2}, Lcom/sec/jewishcalendar/TwDayOfMonthCursor;->isWithinCurrentMonth(II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 144
    const/4 v0, 0x1

    .restart local v0    # "returnValue":Z
    goto :goto_0

    .line 142
    .end local v0    # "returnValue":Z
    :cond_2
    iget v1, p0, Lcom/sec/jewishcalendar/TwDayOfMonthCursor;->mRow:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sec/jewishcalendar/TwDayOfMonthCursor;->mRow:I

    goto :goto_1
.end method

.method public getColOfDay(I)I
    .locals 1
    .param p1, "dayOfMonth"    # I

    .prologue
    .line 283
    invoke-virtual {p0, p1}, Lcom/sec/jewishcalendar/TwDayOfMonthCursor;->getColumnOf(I)I

    move-result v0

    return v0
.end method

.method public getColumnOf(I)I
    .locals 1
    .param p1, "day"    # I

    .prologue
    .line 235
    invoke-super {p0, p1}, Landroid/util/MonthDisplayHelper;->getColumnOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getCurDay()I
    .locals 2

    .prologue
    .line 307
    iget v0, p0, Lcom/sec/jewishcalendar/TwDayOfMonthCursor;->mRow:I

    iget v1, p0, Lcom/sec/jewishcalendar/TwDayOfMonthCursor;->mColumn:I

    invoke-virtual {p0, v0, v1}, Lcom/sec/jewishcalendar/TwDayOfMonthCursor;->getDayAt(II)I

    move-result v0

    return v0
.end method

.method public getCurMonth()I
    .locals 1

    .prologue
    .line 298
    invoke-super {p0}, Landroid/util/MonthDisplayHelper;->getMonth()I

    move-result v0

    return v0
.end method

.method public getCurYear()I
    .locals 1

    .prologue
    .line 303
    invoke-super {p0}, Landroid/util/MonthDisplayHelper;->getYear()I

    move-result v0

    return v0
.end method

.method public getDayAt(II)I
    .locals 2
    .param p1, "row"    # I
    .param p2, "column"    # I

    .prologue
    .line 225
    if-nez p2, :cond_0

    const/4 v0, 0x0

    .line 226
    .local v0, "c":I
    :goto_0
    invoke-super {p0, p1, v0}, Landroid/util/MonthDisplayHelper;->getDayAt(II)I

    move-result v1

    return v1

    .line 225
    .end local v0    # "c":I
    :cond_0
    add-int/lit8 v0, p2, -0x1

    goto :goto_0
.end method

.method public getDayAtPlace(II)I
    .locals 1
    .param p1, "row"    # I
    .param p2, "column"    # I

    .prologue
    .line 293
    invoke-virtual {p0, p1, p2}, Lcom/sec/jewishcalendar/TwDayOfMonthCursor;->getDayAt(II)I

    move-result v0

    return v0
.end method

.method public getNumberOfDaysMonth()I
    .locals 1

    .prologue
    .line 288
    invoke-super {p0}, Landroid/util/MonthDisplayHelper;->getNumberOfDaysInMonth()I

    move-result v0

    return v0
.end method

.method public getRowOfDay(I)I
    .locals 1
    .param p1, "dayOfMonth"    # I

    .prologue
    .line 278
    invoke-super {p0, p1}, Landroid/util/MonthDisplayHelper;->getRowOf(I)I

    move-result v0

    return v0
.end method

.method public getSelectedColumn()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/sec/jewishcalendar/TwDayOfMonthCursor;->mColumn:I

    return v0
.end method

.method public getSelectedDayOfMonth()I
    .locals 2

    .prologue
    .line 67
    iget v0, p0, Lcom/sec/jewishcalendar/TwDayOfMonthCursor;->mRow:I

    iget v1, p0, Lcom/sec/jewishcalendar/TwDayOfMonthCursor;->mColumn:I

    invoke-virtual {p0, v0, v1}, Lcom/sec/jewishcalendar/TwDayOfMonthCursor;->getDayAt(II)I

    move-result v0

    return v0
.end method

.method public getSelectedMonthOffset()I
    .locals 2

    .prologue
    .line 75
    iget v0, p0, Lcom/sec/jewishcalendar/TwDayOfMonthCursor;->mRow:I

    iget v1, p0, Lcom/sec/jewishcalendar/TwDayOfMonthCursor;->mColumn:I

    invoke-virtual {p0, v0, v1}, Lcom/sec/jewishcalendar/TwDayOfMonthCursor;->isWithinCurrentMonth(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    const/4 v0, 0x0

    .line 81
    :goto_0
    return v0

    .line 78
    :cond_0
    iget v0, p0, Lcom/sec/jewishcalendar/TwDayOfMonthCursor;->mRow:I

    if-nez v0, :cond_1

    .line 79
    const/4 v0, -0x1

    goto :goto_0

    .line 81
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getSelectedRow()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/sec/jewishcalendar/TwDayOfMonthCursor;->mRow:I

    return v0
.end method

.method public isInCurrentMonth(II)Z
    .locals 1
    .param p1, "row"    # I
    .param p2, "column"    # I

    .prologue
    .line 311
    invoke-virtual {p0, p1, p2}, Lcom/sec/jewishcalendar/TwDayOfMonthCursor;->isWithinCurrentMonth(II)Z

    move-result v0

    return v0
.end method

.method public isSelected(II)Z
    .locals 1
    .param p1, "row"    # I
    .param p2, "column"    # I

    .prologue
    .line 96
    iget v0, p0, Lcom/sec/jewishcalendar/TwDayOfMonthCursor;->mRow:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/sec/jewishcalendar/TwDayOfMonthCursor;->mColumn:I

    if-ne v0, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isValid(II)Z
    .locals 4
    .param p1, "row"    # I
    .param p2, "column"    # I

    .prologue
    .line 249
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    .line 251
    .local v1, "time":Landroid/text/format/Time;
    invoke-super {p0}, Landroid/util/MonthDisplayHelper;->getMonth()I

    move-result v0

    .line 252
    .local v0, "month":I
    invoke-virtual {p0, p1, p2}, Lcom/sec/jewishcalendar/TwDayOfMonthCursor;->isWithinCurrentMonth(II)Z

    move-result v2

    if-nez v2, :cond_0

    .line 253
    if-nez p1, :cond_1

    .line 254
    add-int/lit8 v0, v0, -0x1

    .line 258
    :cond_0
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/sec/jewishcalendar/TwDayOfMonthCursor;->getDayAt(II)I

    move-result v2

    invoke-super {p0}, Landroid/util/MonthDisplayHelper;->getYear()I

    move-result v3

    invoke-virtual {v1, v2, v0, v3}, Landroid/text/format/Time;->set(III)V

    .line 269
    const/4 v2, 0x1

    return v2

    .line 256
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public isWithinCurrentMonth(II)Z
    .locals 2
    .param p1, "row"    # I
    .param p2, "column"    # I

    .prologue
    .line 244
    if-nez p2, :cond_0

    const/4 v0, 0x0

    .line 245
    .local v0, "c":I
    :goto_0
    invoke-super {p0, p1, v0}, Landroid/util/MonthDisplayHelper;->isWithinCurrentMonth(II)Z

    move-result v1

    return v1

    .line 244
    .end local v0    # "c":I
    :cond_0
    add-int/lit8 v0, p2, -0x1

    goto :goto_0
.end method

.method public left()Z
    .locals 4

    .prologue
    .line 160
    iget v2, p0, Lcom/sec/jewishcalendar/TwDayOfMonthCursor;->mColumn:I

    if-nez v2, :cond_1

    .line 161
    iget v2, p0, Lcom/sec/jewishcalendar/TwDayOfMonthCursor;->mRow:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/sec/jewishcalendar/TwDayOfMonthCursor;->mRow:I

    .line 162
    const/4 v2, 0x7

    iput v2, p0, Lcom/sec/jewishcalendar/TwDayOfMonthCursor;->mColumn:I

    .line 167
    :goto_0
    iget v2, p0, Lcom/sec/jewishcalendar/TwDayOfMonthCursor;->mRow:I

    iget v3, p0, Lcom/sec/jewishcalendar/TwDayOfMonthCursor;->mColumn:I

    invoke-virtual {p0, v2, v3}, Lcom/sec/jewishcalendar/TwDayOfMonthCursor;->isWithinCurrentMonth(II)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 168
    const/4 v1, 0x0

    .line 177
    .local v1, "returnValue":Z
    :goto_1
    iget-object v2, p0, Lcom/sec/jewishcalendar/TwDayOfMonthCursor;->mOnCursorMoveListener:Lcom/sec/jewishcalendar/TwDayOfMonthCursorInterface$OnCursorMoveListener;

    if-eqz v2, :cond_0

    .line 178
    iget-object v2, p0, Lcom/sec/jewishcalendar/TwDayOfMonthCursor;->mOnCursorMoveListener:Lcom/sec/jewishcalendar/TwDayOfMonthCursorInterface$OnCursorMoveListener;

    invoke-interface {v2}, Lcom/sec/jewishcalendar/TwDayOfMonthCursorInterface$OnCursorMoveListener;->onCusorMoved()V

    .line 180
    :cond_0
    return v1

    .line 164
    .end local v1    # "returnValue":Z
    :cond_1
    iget v2, p0, Lcom/sec/jewishcalendar/TwDayOfMonthCursor;->mColumn:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/sec/jewishcalendar/TwDayOfMonthCursor;->mColumn:I

    goto :goto_0

    .line 171
    :cond_2
    invoke-super {p0}, Landroid/util/MonthDisplayHelper;->previousMonth()V

    .line 172
    invoke-super {p0}, Landroid/util/MonthDisplayHelper;->getNumberOfDaysInMonth()I

    move-result v0

    .line 173
    .local v0, "lastDay":I
    invoke-super {p0, v0}, Landroid/util/MonthDisplayHelper;->getRowOf(I)I

    move-result v2

    iput v2, p0, Lcom/sec/jewishcalendar/TwDayOfMonthCursor;->mRow:I

    .line 174
    invoke-virtual {p0, v0}, Lcom/sec/jewishcalendar/TwDayOfMonthCursor;->getColumnOf(I)I

    move-result v2

    iput v2, p0, Lcom/sec/jewishcalendar/TwDayOfMonthCursor;->mColumn:I

    .line 175
    const/4 v1, 0x1

    .restart local v1    # "returnValue":Z
    goto :goto_1
.end method

.method public right()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 190
    iget v1, p0, Lcom/sec/jewishcalendar/TwDayOfMonthCursor;->mColumn:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_1

    .line 191
    iget v1, p0, Lcom/sec/jewishcalendar/TwDayOfMonthCursor;->mRow:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sec/jewishcalendar/TwDayOfMonthCursor;->mRow:I

    .line 192
    iput v3, p0, Lcom/sec/jewishcalendar/TwDayOfMonthCursor;->mColumn:I

    .line 197
    :goto_0
    iget v1, p0, Lcom/sec/jewishcalendar/TwDayOfMonthCursor;->mRow:I

    iget v2, p0, Lcom/sec/jewishcalendar/TwDayOfMonthCursor;->mColumn:I

    invoke-virtual {p0, v1, v2}, Lcom/sec/jewishcalendar/TwDayOfMonthCursor;->isWithinCurrentMonth(II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 198
    const/4 v0, 0x0

    .line 209
    .local v0, "returnValue":Z
    :goto_1
    iget-object v1, p0, Lcom/sec/jewishcalendar/TwDayOfMonthCursor;->mOnCursorMoveListener:Lcom/sec/jewishcalendar/TwDayOfMonthCursorInterface$OnCursorMoveListener;

    if-eqz v1, :cond_0

    .line 210
    iget-object v1, p0, Lcom/sec/jewishcalendar/TwDayOfMonthCursor;->mOnCursorMoveListener:Lcom/sec/jewishcalendar/TwDayOfMonthCursorInterface$OnCursorMoveListener;

    invoke-interface {v1}, Lcom/sec/jewishcalendar/TwDayOfMonthCursorInterface$OnCursorMoveListener;->onCusorMoved()V

    .line 212
    :cond_0
    return v0

    .line 194
    .end local v0    # "returnValue":Z
    :cond_1
    iget v1, p0, Lcom/sec/jewishcalendar/TwDayOfMonthCursor;->mColumn:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sec/jewishcalendar/TwDayOfMonthCursor;->mColumn:I

    goto :goto_0

    .line 201
    :cond_2
    invoke-super {p0}, Landroid/util/MonthDisplayHelper;->nextMonth()V

    .line 202
    iput v3, p0, Lcom/sec/jewishcalendar/TwDayOfMonthCursor;->mRow:I

    .line 203
    iput v3, p0, Lcom/sec/jewishcalendar/TwDayOfMonthCursor;->mColumn:I

    .line 204
    :goto_2
    iget v1, p0, Lcom/sec/jewishcalendar/TwDayOfMonthCursor;->mRow:I

    iget v2, p0, Lcom/sec/jewishcalendar/TwDayOfMonthCursor;->mColumn:I

    invoke-virtual {p0, v1, v2}, Lcom/sec/jewishcalendar/TwDayOfMonthCursor;->isWithinCurrentMonth(II)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 207
    const/4 v0, 0x1

    .restart local v0    # "returnValue":Z
    goto :goto_1

    .line 205
    .end local v0    # "returnValue":Z
    :cond_3
    iget v1, p0, Lcom/sec/jewishcalendar/TwDayOfMonthCursor;->mColumn:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sec/jewishcalendar/TwDayOfMonthCursor;->mColumn:I

    goto :goto_2
.end method

.method public setOnCursorMoveListener(Lcom/sec/jewishcalendar/TwDayOfMonthCursorInterface$OnCursorMoveListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sec/jewishcalendar/TwDayOfMonthCursorInterface$OnCursorMoveListener;

    .prologue
    .line 216
    iput-object p1, p0, Lcom/sec/jewishcalendar/TwDayOfMonthCursor;->mOnCursorMoveListener:Lcom/sec/jewishcalendar/TwDayOfMonthCursorInterface$OnCursorMoveListener;

    .line 217
    return-void
.end method

.method public setSelectedDayOfMonth(I)V
    .locals 1
    .param p1, "dayOfMonth"    # I

    .prologue
    .line 85
    invoke-super {p0, p1}, Landroid/util/MonthDisplayHelper;->getRowOf(I)I

    move-result v0

    iput v0, p0, Lcom/sec/jewishcalendar/TwDayOfMonthCursor;->mRow:I

    .line 86
    invoke-virtual {p0, p1}, Lcom/sec/jewishcalendar/TwDayOfMonthCursor;->getColumnOf(I)I

    move-result v0

    iput v0, p0, Lcom/sec/jewishcalendar/TwDayOfMonthCursor;->mColumn:I

    .line 87
    sget v0, Lcom/sec/jewishcalendar/TwDayOfMonthCursor;->mPrevColumn:I

    if-nez v0, :cond_0

    .line 88
    iget v0, p0, Lcom/sec/jewishcalendar/TwDayOfMonthCursor;->mColumn:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sec/jewishcalendar/TwDayOfMonthCursor;->mColumn:I

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/sec/jewishcalendar/TwDayOfMonthCursor;->mOnCursorMoveListener:Lcom/sec/jewishcalendar/TwDayOfMonthCursorInterface$OnCursorMoveListener;

    if-eqz v0, :cond_1

    .line 91
    iget-object v0, p0, Lcom/sec/jewishcalendar/TwDayOfMonthCursor;->mOnCursorMoveListener:Lcom/sec/jewishcalendar/TwDayOfMonthCursorInterface$OnCursorMoveListener;

    invoke-interface {v0}, Lcom/sec/jewishcalendar/TwDayOfMonthCursorInterface$OnCursorMoveListener;->onCusorMoved()V

    .line 93
    :cond_1
    return-void
.end method

.method public setSelectedRowColumn(II)V
    .locals 1
    .param p1, "row"    # I
    .param p2, "col"    # I

    .prologue
    .line 59
    iput p1, p0, Lcom/sec/jewishcalendar/TwDayOfMonthCursor;->mRow:I

    .line 60
    iput p2, p0, Lcom/sec/jewishcalendar/TwDayOfMonthCursor;->mColumn:I

    .line 61
    iget-object v0, p0, Lcom/sec/jewishcalendar/TwDayOfMonthCursor;->mOnCursorMoveListener:Lcom/sec/jewishcalendar/TwDayOfMonthCursorInterface$OnCursorMoveListener;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/sec/jewishcalendar/TwDayOfMonthCursor;->mOnCursorMoveListener:Lcom/sec/jewishcalendar/TwDayOfMonthCursorInterface$OnCursorMoveListener;

    invoke-interface {v0}, Lcom/sec/jewishcalendar/TwDayOfMonthCursorInterface$OnCursorMoveListener;->onCusorMoved()V

    .line 64
    :cond_0
    return-void
.end method

.method public up()Z
    .locals 3

    .prologue
    .line 106
    iget v1, p0, Lcom/sec/jewishcalendar/TwDayOfMonthCursor;->mRow:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/sec/jewishcalendar/TwDayOfMonthCursor;->mColumn:I

    invoke-virtual {p0, v1, v2}, Lcom/sec/jewishcalendar/TwDayOfMonthCursor;->isWithinCurrentMonth(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 108
    iget v1, p0, Lcom/sec/jewishcalendar/TwDayOfMonthCursor;->mRow:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/sec/jewishcalendar/TwDayOfMonthCursor;->mRow:I

    .line 109
    const/4 v0, 0x0

    .line 119
    .local v0, "returnValue":Z
    :goto_0
    iget-object v1, p0, Lcom/sec/jewishcalendar/TwDayOfMonthCursor;->mOnCursorMoveListener:Lcom/sec/jewishcalendar/TwDayOfMonthCursorInterface$OnCursorMoveListener;

    if-eqz v1, :cond_0

    .line 120
    iget-object v1, p0, Lcom/sec/jewishcalendar/TwDayOfMonthCursor;->mOnCursorMoveListener:Lcom/sec/jewishcalendar/TwDayOfMonthCursorInterface$OnCursorMoveListener;

    invoke-interface {v1}, Lcom/sec/jewishcalendar/TwDayOfMonthCursorInterface$OnCursorMoveListener;->onCusorMoved()V

    .line 122
    :cond_0
    iget v1, p0, Lcom/sec/jewishcalendar/TwDayOfMonthCursor;->mColumn:I

    sput v1, Lcom/sec/jewishcalendar/TwDayOfMonthCursor;->mPrevColumn:I

    .line 123
    return v0

    .line 112
    .end local v0    # "returnValue":Z
    :cond_1
    invoke-super {p0}, Landroid/util/MonthDisplayHelper;->previousMonth()V

    .line 113
    const/4 v1, 0x5

    iput v1, p0, Lcom/sec/jewishcalendar/TwDayOfMonthCursor;->mRow:I

    .line 114
    :goto_1
    iget v1, p0, Lcom/sec/jewishcalendar/TwDayOfMonthCursor;->mRow:I

    iget v2, p0, Lcom/sec/jewishcalendar/TwDayOfMonthCursor;->mColumn:I

    invoke-virtual {p0, v1, v2}, Lcom/sec/jewishcalendar/TwDayOfMonthCursor;->isWithinCurrentMonth(II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 117
    const/4 v0, 0x1

    .restart local v0    # "returnValue":Z
    goto :goto_0

    .line 115
    .end local v0    # "returnValue":Z
    :cond_2
    iget v1, p0, Lcom/sec/jewishcalendar/TwDayOfMonthCursor;->mRow:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/sec/jewishcalendar/TwDayOfMonthCursor;->mRow:I

    goto :goto_1
.end method
