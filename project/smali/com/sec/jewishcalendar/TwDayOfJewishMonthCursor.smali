.class public Lcom/sec/jewishcalendar/TwDayOfJewishMonthCursor;
.super Ljava/lang/Object;
.source "TwDayOfJewishMonthCursor.java"

# interfaces
.implements Lcom/sec/jewishcalendar/TwDayOfMonthCursorInterface;


# static fields
.field private static mPrevColumn:I


# instance fields
.field jcdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

.field private mColumn:I

.field mFirstJDay:I

.field private mOnCursorMoveListener:Lcom/sec/jewishcalendar/TwDayOfMonthCursorInterface$OnCursorMoveListener;

.field private mRow:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, -0x1

    sput v0, Lcom/sec/jewishcalendar/TwDayOfJewishMonthCursor;->mPrevColumn:I

    return-void
.end method

.method public constructor <init>(III)V
    .locals 1
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/jewishcalendar/TwDayOfJewishMonthCursor;->mOnCursorMoveListener:Lcom/sec/jewishcalendar/TwDayOfMonthCursorInterface$OnCursorMoveListener;

    .line 35
    new-instance v0, Lcom/sec/jewishcalendar/calculation/HdateClass;

    invoke-direct {v0}, Lcom/sec/jewishcalendar/calculation/HdateClass;-><init>()V

    iput-object v0, p0, Lcom/sec/jewishcalendar/TwDayOfJewishMonthCursor;->jcdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/jewishcalendar/TwDayOfJewishMonthCursor;->mFirstJDay:I

    .line 47
    iget-object v0, p0, Lcom/sec/jewishcalendar/TwDayOfJewishMonthCursor;->jcdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    invoke-static {v0, p3, p2, p1}, Lcom/sec/jewishcalendar/calculation/JewishCal;->SetHdate(Lcom/sec/jewishcalendar/calculation/HdateClass;III)I

    .line 48
    invoke-virtual {p0, p3}, Lcom/sec/jewishcalendar/TwDayOfJewishMonthCursor;->getRowOfDay(I)I

    move-result v0

    iput v0, p0, Lcom/sec/jewishcalendar/TwDayOfJewishMonthCursor;->mRow:I

    .line 49
    invoke-virtual {p0, p3}, Lcom/sec/jewishcalendar/TwDayOfJewishMonthCursor;->getColOfDay(I)I

    move-result v0

    iput v0, p0, Lcom/sec/jewishcalendar/TwDayOfJewishMonthCursor;->mColumn:I

    .line 50
    invoke-virtual {p0}, Lcom/sec/jewishcalendar/TwDayOfJewishMonthCursor;->getMonthFirstJday()I

    move-result v0

    iput v0, p0, Lcom/sec/jewishcalendar/TwDayOfJewishMonthCursor;->mFirstJDay:I

    .line 51
    return-void
.end method


# virtual methods
.method public down()Z
    .locals 3

    .prologue
    .line 142
    iget v1, p0, Lcom/sec/jewishcalendar/TwDayOfJewishMonthCursor;->mRow:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/sec/jewishcalendar/TwDayOfJewishMonthCursor;->mColumn:I

    invoke-virtual {p0, v1, v2}, Lcom/sec/jewishcalendar/TwDayOfJewishMonthCursor;->isWithinCurrentMonth(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 144
    iget v1, p0, Lcom/sec/jewishcalendar/TwDayOfJewishMonthCursor;->mRow:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sec/jewishcalendar/TwDayOfJewishMonthCursor;->mRow:I

    .line 145
    const/4 v0, 0x0

    .line 156
    .local v0, "returnValue":Z
    :goto_0
    iget-object v1, p0, Lcom/sec/jewishcalendar/TwDayOfJewishMonthCursor;->mOnCursorMoveListener:Lcom/sec/jewishcalendar/TwDayOfMonthCursorInterface$OnCursorMoveListener;

    if-eqz v1, :cond_0

    .line 157
    iget-object v1, p0, Lcom/sec/jewishcalendar/TwDayOfJewishMonthCursor;->mOnCursorMoveListener:Lcom/sec/jewishcalendar/TwDayOfMonthCursorInterface$OnCursorMoveListener;

    invoke-interface {v1}, Lcom/sec/jewishcalendar/TwDayOfMonthCursorInterface$OnCursorMoveListener;->onCusorMoved()V

    .line 159
    :cond_0
    iget v1, p0, Lcom/sec/jewishcalendar/TwDayOfJewishMonthCursor;->mColumn:I

    sput v1, Lcom/sec/jewishcalendar/TwDayOfJewishMonthCursor;->mPrevColumn:I

    .line 160
    return v0

    .line 149
    .end local v0    # "returnValue":Z
    :cond_1
    iget-object v1, p0, Lcom/sec/jewishcalendar/TwDayOfJewishMonthCursor;->jcdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    invoke-static {v1}, Lcom/sec/jewishcalendar/calculation/JewishCal;->MoveToNextMonth(Lcom/sec/jewishcalendar/calculation/HdateClass;)I

    .line 150
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/jewishcalendar/TwDayOfJewishMonthCursor;->mRow:I

    .line 151
    :goto_1
    iget v1, p0, Lcom/sec/jewishcalendar/TwDayOfJewishMonthCursor;->mRow:I

    iget v2, p0, Lcom/sec/jewishcalendar/TwDayOfJewishMonthCursor;->mColumn:I

    invoke-virtual {p0, v1, v2}, Lcom/sec/jewishcalendar/TwDayOfJewishMonthCursor;->isWithinCurrentMonth(II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 154
    const/4 v0, 0x1

    .restart local v0    # "returnValue":Z
    goto :goto_0

    .line 152
    .end local v0    # "returnValue":Z
    :cond_2
    iget v1, p0, Lcom/sec/jewishcalendar/TwDayOfJewishMonthCursor;->mRow:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sec/jewishcalendar/TwDayOfJewishMonthCursor;->mRow:I

    goto :goto_1
.end method

.method public getColOfDay(I)I
    .locals 2
    .param p1, "dayOfMonth"    # I

    .prologue
    .line 344
    invoke-virtual {p0}, Lcom/sec/jewishcalendar/TwDayOfJewishMonthCursor;->getMonthFirstJday()I

    move-result v1

    add-int/2addr v1, p1

    add-int/lit8 v1, v1, -0x1

    rem-int/lit8 v0, v1, 0x7

    .line 345
    .local v0, "col":I
    if-nez v0, :cond_0

    const/4 v0, 0x7

    .line 347
    :cond_0
    return v0
.end method

.method public getCurDay()I
    .locals 4

    .prologue
    .line 414
    invoke-virtual {p0}, Lcom/sec/jewishcalendar/TwDayOfJewishMonthCursor;->getSelectedDayOfMonth()I

    move-result v1

    .line 415
    .local v1, "sday":I
    new-instance v0, Lcom/sec/jewishcalendar/calculation/HdateClass;

    invoke-direct {v0}, Lcom/sec/jewishcalendar/calculation/HdateClass;-><init>()V

    .line 416
    .local v0, "htemp":Lcom/sec/jewishcalendar/calculation/HdateClass;
    iget-object v2, p0, Lcom/sec/jewishcalendar/TwDayOfJewishMonthCursor;->jcdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    iget v2, v2, Lcom/sec/jewishcalendar/calculation/HdateClass;->hmonth:I

    iget-object v3, p0, Lcom/sec/jewishcalendar/TwDayOfJewishMonthCursor;->jcdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    iget v3, v3, Lcom/sec/jewishcalendar/calculation/HdateClass;->hyear:I

    invoke-static {v0, v1, v2, v3}, Lcom/sec/jewishcalendar/calculation/JewishCal;->SetHdate(Lcom/sec/jewishcalendar/calculation/HdateClass;III)I

    .line 418
    iget v2, v0, Lcom/sec/jewishcalendar/calculation/HdateClass;->gday:I

    return v2
.end method

.method public getCurMonth()I
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lcom/sec/jewishcalendar/TwDayOfJewishMonthCursor;->jcdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    iget v0, v0, Lcom/sec/jewishcalendar/calculation/HdateClass;->gmonth:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getCurYear()I
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Lcom/sec/jewishcalendar/TwDayOfJewishMonthCursor;->jcdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    iget v0, v0, Lcom/sec/jewishcalendar/calculation/HdateClass;->gyear:I

    return v0
.end method

.method public getDayAt(II)I
    .locals 9
    .param p1, "row"    # I
    .param p2, "column"    # I

    .prologue
    const/4 v8, 0x1

    .line 364
    const/4 v3, 0x0

    .line 365
    .local v3, "dayNum":I
    mul-int/lit8 v6, p1, 0x7

    add-int v2, v6, p2

    .line 366
    .local v2, "dayBoxNum":I
    invoke-virtual {p0}, Lcom/sec/jewishcalendar/TwDayOfJewishMonthCursor;->getMonthFirstJday()I

    move-result v0

    .line 367
    .local v0, "FirstJday":I
    add-int/lit8 v4, v0, -0x1

    .line 368
    .local v4, "endPrevMonthWeekDay":I
    invoke-virtual {p0}, Lcom/sec/jewishcalendar/TwDayOfJewishMonthCursor;->getMonthLastJday()I

    move-result v1

    .line 369
    .local v1, "LastJday":I
    new-instance v5, Lcom/sec/jewishcalendar/calculation/HdateClass;

    invoke-direct {v5}, Lcom/sec/jewishcalendar/calculation/HdateClass;-><init>()V

    .line 372
    .local v5, "tmpjcdate":Lcom/sec/jewishcalendar/calculation/HdateClass;
    invoke-virtual {p0, p1, p2}, Lcom/sec/jewishcalendar/TwDayOfJewishMonthCursor;->isInCurrentMonth(II)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 374
    mul-int/lit8 v6, p1, 0x7

    add-int/2addr v6, p2

    sub-int/2addr v6, v0

    add-int/lit8 v3, v6, 0x1

    .line 396
    :cond_0
    :goto_0
    return v3

    .line 378
    :cond_1
    if-ge v2, v0, :cond_2

    .line 381
    iget-object v6, p0, Lcom/sec/jewishcalendar/TwDayOfJewishMonthCursor;->jcdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    iget v6, v6, Lcom/sec/jewishcalendar/calculation/HdateClass;->hmonth:I

    iget-object v7, p0, Lcom/sec/jewishcalendar/TwDayOfJewishMonthCursor;->jcdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    iget v7, v7, Lcom/sec/jewishcalendar/calculation/HdateClass;->hyear:I

    invoke-static {v5, v8, v6, v7}, Lcom/sec/jewishcalendar/calculation/JewishCal;->SetHdate(Lcom/sec/jewishcalendar/calculation/HdateClass;III)I

    .line 382
    invoke-static {v5}, Lcom/sec/jewishcalendar/calculation/JewishCal;->MoveToPrevMonth(Lcom/sec/jewishcalendar/calculation/HdateClass;)I

    .line 384
    invoke-static {v5}, Lcom/sec/jewishcalendar/calculation/JewishCal;->GetDayOfMonth(Lcom/sec/jewishcalendar/calculation/HdateClass;)I

    move-result v6

    sub-int/2addr v6, v4

    add-int v3, v6, v2

    .line 385
    goto :goto_0

    .line 386
    :cond_2
    add-int v6, v1, v0

    add-int/lit8 v6, v6, -0x1

    if-le v2, v6, :cond_0

    .line 389
    iget-object v6, p0, Lcom/sec/jewishcalendar/TwDayOfJewishMonthCursor;->jcdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    iget v6, v6, Lcom/sec/jewishcalendar/calculation/HdateClass;->hmonth:I

    iget-object v7, p0, Lcom/sec/jewishcalendar/TwDayOfJewishMonthCursor;->jcdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    iget v7, v7, Lcom/sec/jewishcalendar/calculation/HdateClass;->hyear:I

    invoke-static {v5, v8, v6, v7}, Lcom/sec/jewishcalendar/calculation/JewishCal;->SetHdate(Lcom/sec/jewishcalendar/calculation/HdateClass;III)I

    .line 390
    invoke-static {v5}, Lcom/sec/jewishcalendar/calculation/JewishCal;->MoveToNextMonth(Lcom/sec/jewishcalendar/calculation/HdateClass;)I

    .line 392
    add-int v6, v1, v0

    add-int/lit8 v6, v6, -0x1

    sub-int v3, v2, v6

    goto :goto_0
.end method

.method public getDayAtPlace(II)I
    .locals 1
    .param p1, "row"    # I
    .param p2, "column"    # I

    .prologue
    .line 358
    invoke-virtual {p0, p1, p2}, Lcom/sec/jewishcalendar/TwDayOfJewishMonthCursor;->getDayAt(II)I

    move-result v0

    return v0
.end method

.method public getMonthFirstJday()I
    .locals 5

    .prologue
    .line 256
    new-instance v1, Lcom/sec/jewishcalendar/calculation/HdateClass;

    invoke-direct {v1}, Lcom/sec/jewishcalendar/calculation/HdateClass;-><init>()V

    .line 257
    .local v1, "tmpjcdate":Lcom/sec/jewishcalendar/calculation/HdateClass;
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/sec/jewishcalendar/TwDayOfJewishMonthCursor;->jcdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    iget v3, v3, Lcom/sec/jewishcalendar/calculation/HdateClass;->hmonth:I

    iget-object v4, p0, Lcom/sec/jewishcalendar/TwDayOfJewishMonthCursor;->jcdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    iget v4, v4, Lcom/sec/jewishcalendar/calculation/HdateClass;->hyear:I

    invoke-static {v1, v2, v3, v4}, Lcom/sec/jewishcalendar/calculation/JewishCal;->SetHdate(Lcom/sec/jewishcalendar/calculation/HdateClass;III)I

    .line 258
    iget v0, v1, Lcom/sec/jewishcalendar/calculation/HdateClass;->hDayWeek:I

    .line 260
    .local v0, "monthFirstJday":I
    return v0
.end method

.method public getMonthLastJday()I
    .locals 2

    .prologue
    .line 266
    iget-object v1, p0, Lcom/sec/jewishcalendar/TwDayOfJewishMonthCursor;->jcdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    invoke-static {v1}, Lcom/sec/jewishcalendar/calculation/JewishCal;->GetDayOfMonth(Lcom/sec/jewishcalendar/calculation/HdateClass;)I

    move-result v0

    .line 268
    .local v0, "monthLastJday":I
    return v0
.end method

.method public getNumberOfDaysMonth()I
    .locals 1

    .prologue
    .line 352
    invoke-virtual {p0}, Lcom/sec/jewishcalendar/TwDayOfJewishMonthCursor;->getMonthLastJday()I

    move-result v0

    return v0
.end method

.method public getRowOfDay(I)I
    .locals 2
    .param p1, "dayOfMonth"    # I

    .prologue
    .line 335
    invoke-virtual {p0}, Lcom/sec/jewishcalendar/TwDayOfJewishMonthCursor;->getMonthFirstJday()I

    move-result v1

    add-int/2addr v1, p1

    add-int/lit8 v1, v1, -0x1

    div-int/lit8 v0, v1, 0x7

    .line 336
    .local v0, "row":I
    invoke-virtual {p0}, Lcom/sec/jewishcalendar/TwDayOfJewishMonthCursor;->getMonthFirstJday()I

    move-result v1

    add-int/2addr v1, p1

    add-int/lit8 v1, v1, -0x1

    rem-int/lit8 v1, v1, 0x7

    if-nez v1, :cond_0

    .line 337
    add-int/lit8 v0, v0, -0x1

    .line 339
    :cond_0
    return v0
.end method

.method public getSelectedColumn()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/sec/jewishcalendar/TwDayOfJewishMonthCursor;->mColumn:I

    return v0
.end method

.method public getSelectedDayOfMonth()I
    .locals 2

    .prologue
    .line 72
    iget v0, p0, Lcom/sec/jewishcalendar/TwDayOfJewishMonthCursor;->mRow:I

    iget v1, p0, Lcom/sec/jewishcalendar/TwDayOfJewishMonthCursor;->mColumn:I

    invoke-virtual {p0, v0, v1}, Lcom/sec/jewishcalendar/TwDayOfJewishMonthCursor;->getDayAtPlace(II)I

    move-result v0

    return v0
.end method

.method public getSelectedMonthOffset()I
    .locals 2

    .prologue
    .line 80
    iget v0, p0, Lcom/sec/jewishcalendar/TwDayOfJewishMonthCursor;->mRow:I

    iget v1, p0, Lcom/sec/jewishcalendar/TwDayOfJewishMonthCursor;->mColumn:I

    invoke-virtual {p0, v0, v1}, Lcom/sec/jewishcalendar/TwDayOfJewishMonthCursor;->isWithinCurrentMonth(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    const/4 v0, 0x0

    .line 86
    :goto_0
    return v0

    .line 83
    :cond_0
    iget v0, p0, Lcom/sec/jewishcalendar/TwDayOfJewishMonthCursor;->mRow:I

    if-nez v0, :cond_1

    .line 84
    const/4 v0, -0x1

    goto :goto_0

    .line 86
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getSelectedRow()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/sec/jewishcalendar/TwDayOfJewishMonthCursor;->mRow:I

    return v0
.end method

.method public isInCurrentMonth(II)Z
    .locals 1
    .param p1, "row"    # I
    .param p2, "column"    # I

    .prologue
    .line 424
    invoke-virtual {p0, p1, p2}, Lcom/sec/jewishcalendar/TwDayOfJewishMonthCursor;->isWithinCurrentMonth(II)Z

    move-result v0

    return v0
.end method

.method public isSelected(II)Z
    .locals 1
    .param p1, "row"    # I
    .param p2, "column"    # I

    .prologue
    .line 104
    iget v0, p0, Lcom/sec/jewishcalendar/TwDayOfJewishMonthCursor;->mRow:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/sec/jewishcalendar/TwDayOfJewishMonthCursor;->mColumn:I

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
    .line 304
    new-instance v0, Lcom/sec/jewishcalendar/calculation/HdateClass;

    invoke-direct {v0}, Lcom/sec/jewishcalendar/calculation/HdateClass;-><init>()V

    .line 305
    .local v0, "hDtemp":Lcom/sec/jewishcalendar/calculation/HdateClass;
    invoke-virtual {p0, p1, p2}, Lcom/sec/jewishcalendar/TwDayOfJewishMonthCursor;->getDayAt(II)I

    move-result v1

    iget-object v2, p0, Lcom/sec/jewishcalendar/TwDayOfJewishMonthCursor;->jcdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    iget v2, v2, Lcom/sec/jewishcalendar/calculation/HdateClass;->hmonth:I

    iget-object v3, p0, Lcom/sec/jewishcalendar/TwDayOfJewishMonthCursor;->jcdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    iget v3, v3, Lcom/sec/jewishcalendar/calculation/HdateClass;->hyear:I

    invoke-static {v0, v1, v2, v3}, Lcom/sec/jewishcalendar/calculation/JewishCal;->SetHdate(Lcom/sec/jewishcalendar/calculation/HdateClass;III)I

    .line 306
    invoke-virtual {p0, p1, p2}, Lcom/sec/jewishcalendar/TwDayOfJewishMonthCursor;->isWithinCurrentMonth(II)Z

    move-result v1

    if-nez v1, :cond_0

    .line 309
    if-nez p1, :cond_2

    .line 310
    invoke-static {v0}, Lcom/sec/jewishcalendar/calculation/JewishCal;->MoveToPrevMonth(Lcom/sec/jewishcalendar/calculation/HdateClass;)I

    .line 323
    :cond_0
    :goto_0
    iget v1, v0, Lcom/sec/jewishcalendar/calculation/HdateClass;->gyear:I

    const/16 v2, 0x771

    if-lt v1, v2, :cond_1

    iget v1, v0, Lcom/sec/jewishcalendar/calculation/HdateClass;->gyear:I

    const/16 v2, 0x7f4

    if-le v1, v2, :cond_3

    .line 324
    :cond_1
    const/4 v1, 0x0

    .line 327
    :goto_1
    return v1

    .line 312
    :cond_2
    invoke-static {v0}, Lcom/sec/jewishcalendar/calculation/JewishCal;->MoveToNextMonth(Lcom/sec/jewishcalendar/calculation/HdateClass;)I

    goto :goto_0

    .line 327
    :cond_3
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public isWithinCurrentMonth(II)Z
    .locals 4
    .param p1, "row"    # I
    .param p2, "column"    # I

    .prologue
    .line 234
    const/4 v0, 0x0

    .line 235
    .local v0, "WithinCurrentJewishMonth":Z
    const/4 v2, 0x0

    .line 236
    .local v2, "dayNum":I
    const/4 v1, 0x0

    .line 237
    .local v1, "dayBoxNum":I
    if-eqz p2, :cond_0

    .line 238
    mul-int/lit8 v3, p1, 0x7

    add-int v1, v3, p2

    .line 240
    :cond_0
    invoke-virtual {p0}, Lcom/sec/jewishcalendar/TwDayOfJewishMonthCursor;->getMonthFirstJday()I

    move-result v3

    iput v3, p0, Lcom/sec/jewishcalendar/TwDayOfJewishMonthCursor;->mFirstJDay:I

    .line 241
    iget v3, p0, Lcom/sec/jewishcalendar/TwDayOfJewishMonthCursor;->mFirstJDay:I

    add-int/lit8 v3, v3, -0x1

    if-le v1, v3, :cond_1

    .line 243
    iget v3, p0, Lcom/sec/jewishcalendar/TwDayOfJewishMonthCursor;->mFirstJDay:I

    sub-int v3, v1, v3

    add-int/lit8 v2, v3, 0x1

    .line 244
    invoke-virtual {p0}, Lcom/sec/jewishcalendar/TwDayOfJewishMonthCursor;->getMonthLastJday()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    if-ge v2, v3, :cond_1

    .line 246
    const/4 v0, 0x1

    .line 250
    :cond_1
    return v0
.end method

.method public left()Z
    .locals 4

    .prologue
    .line 170
    iget v2, p0, Lcom/sec/jewishcalendar/TwDayOfJewishMonthCursor;->mColumn:I

    if-nez v2, :cond_1

    .line 171
    iget v2, p0, Lcom/sec/jewishcalendar/TwDayOfJewishMonthCursor;->mRow:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/sec/jewishcalendar/TwDayOfJewishMonthCursor;->mRow:I

    .line 172
    const/4 v2, 0x7

    iput v2, p0, Lcom/sec/jewishcalendar/TwDayOfJewishMonthCursor;->mColumn:I

    .line 177
    :goto_0
    iget v2, p0, Lcom/sec/jewishcalendar/TwDayOfJewishMonthCursor;->mRow:I

    iget v3, p0, Lcom/sec/jewishcalendar/TwDayOfJewishMonthCursor;->mColumn:I

    invoke-virtual {p0, v2, v3}, Lcom/sec/jewishcalendar/TwDayOfJewishMonthCursor;->isWithinCurrentMonth(II)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 178
    const/4 v1, 0x0

    .line 188
    .local v1, "returnValue":Z
    :goto_1
    iget-object v2, p0, Lcom/sec/jewishcalendar/TwDayOfJewishMonthCursor;->mOnCursorMoveListener:Lcom/sec/jewishcalendar/TwDayOfMonthCursorInterface$OnCursorMoveListener;

    if-eqz v2, :cond_0

    .line 189
    iget-object v2, p0, Lcom/sec/jewishcalendar/TwDayOfJewishMonthCursor;->mOnCursorMoveListener:Lcom/sec/jewishcalendar/TwDayOfMonthCursorInterface$OnCursorMoveListener;

    invoke-interface {v2}, Lcom/sec/jewishcalendar/TwDayOfMonthCursorInterface$OnCursorMoveListener;->onCusorMoved()V

    .line 191
    :cond_0
    return v1

    .line 174
    .end local v1    # "returnValue":Z
    :cond_1
    iget v2, p0, Lcom/sec/jewishcalendar/TwDayOfJewishMonthCursor;->mColumn:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/sec/jewishcalendar/TwDayOfJewishMonthCursor;->mColumn:I

    goto :goto_0

    .line 182
    :cond_2
    iget-object v2, p0, Lcom/sec/jewishcalendar/TwDayOfJewishMonthCursor;->jcdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    invoke-static {v2}, Lcom/sec/jewishcalendar/calculation/JewishCal;->MoveToNextMonth(Lcom/sec/jewishcalendar/calculation/HdateClass;)I

    .line 183
    invoke-virtual {p0}, Lcom/sec/jewishcalendar/TwDayOfJewishMonthCursor;->getNumberOfDaysMonth()I

    move-result v0

    .line 184
    .local v0, "lastDay":I
    invoke-virtual {p0, v0}, Lcom/sec/jewishcalendar/TwDayOfJewishMonthCursor;->getRowOfDay(I)I

    move-result v2

    iput v2, p0, Lcom/sec/jewishcalendar/TwDayOfJewishMonthCursor;->mRow:I

    .line 185
    invoke-virtual {p0, v0}, Lcom/sec/jewishcalendar/TwDayOfJewishMonthCursor;->getColOfDay(I)I

    move-result v2

    iput v2, p0, Lcom/sec/jewishcalendar/TwDayOfJewishMonthCursor;->mColumn:I

    .line 186
    const/4 v1, 0x1

    .restart local v1    # "returnValue":Z
    goto :goto_1
.end method

.method public right()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 201
    iget v1, p0, Lcom/sec/jewishcalendar/TwDayOfJewishMonthCursor;->mColumn:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_1

    .line 202
    iget v1, p0, Lcom/sec/jewishcalendar/TwDayOfJewishMonthCursor;->mRow:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sec/jewishcalendar/TwDayOfJewishMonthCursor;->mRow:I

    .line 203
    iput v3, p0, Lcom/sec/jewishcalendar/TwDayOfJewishMonthCursor;->mColumn:I

    .line 208
    :goto_0
    iget v1, p0, Lcom/sec/jewishcalendar/TwDayOfJewishMonthCursor;->mRow:I

    iget v2, p0, Lcom/sec/jewishcalendar/TwDayOfJewishMonthCursor;->mColumn:I

    invoke-virtual {p0, v1, v2}, Lcom/sec/jewishcalendar/TwDayOfJewishMonthCursor;->isWithinCurrentMonth(II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 209
    const/4 v0, 0x0

    .line 221
    .local v0, "returnValue":Z
    :goto_1
    iget-object v1, p0, Lcom/sec/jewishcalendar/TwDayOfJewishMonthCursor;->mOnCursorMoveListener:Lcom/sec/jewishcalendar/TwDayOfMonthCursorInterface$OnCursorMoveListener;

    if-eqz v1, :cond_0

    .line 222
    iget-object v1, p0, Lcom/sec/jewishcalendar/TwDayOfJewishMonthCursor;->mOnCursorMoveListener:Lcom/sec/jewishcalendar/TwDayOfMonthCursorInterface$OnCursorMoveListener;

    invoke-interface {v1}, Lcom/sec/jewishcalendar/TwDayOfMonthCursorInterface$OnCursorMoveListener;->onCusorMoved()V

    .line 224
    :cond_0
    return v0

    .line 205
    .end local v0    # "returnValue":Z
    :cond_1
    iget v1, p0, Lcom/sec/jewishcalendar/TwDayOfJewishMonthCursor;->mColumn:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sec/jewishcalendar/TwDayOfJewishMonthCursor;->mColumn:I

    goto :goto_0

    .line 213
    :cond_2
    iget-object v1, p0, Lcom/sec/jewishcalendar/TwDayOfJewishMonthCursor;->jcdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    invoke-static {v1}, Lcom/sec/jewishcalendar/calculation/JewishCal;->MoveToPrevMonth(Lcom/sec/jewishcalendar/calculation/HdateClass;)I

    .line 214
    iput v3, p0, Lcom/sec/jewishcalendar/TwDayOfJewishMonthCursor;->mRow:I

    .line 215
    iput v3, p0, Lcom/sec/jewishcalendar/TwDayOfJewishMonthCursor;->mColumn:I

    .line 216
    :goto_2
    iget v1, p0, Lcom/sec/jewishcalendar/TwDayOfJewishMonthCursor;->mRow:I

    iget v2, p0, Lcom/sec/jewishcalendar/TwDayOfJewishMonthCursor;->mColumn:I

    invoke-virtual {p0, v1, v2}, Lcom/sec/jewishcalendar/TwDayOfJewishMonthCursor;->isWithinCurrentMonth(II)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 219
    const/4 v0, 0x1

    .restart local v0    # "returnValue":Z
    goto :goto_1

    .line 217
    .end local v0    # "returnValue":Z
    :cond_3
    iget v1, p0, Lcom/sec/jewishcalendar/TwDayOfJewishMonthCursor;->mColumn:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sec/jewishcalendar/TwDayOfJewishMonthCursor;->mColumn:I

    goto :goto_2
.end method

.method public setOnCursorMoveListener(Lcom/sec/jewishcalendar/TwDayOfMonthCursorInterface$OnCursorMoveListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sec/jewishcalendar/TwDayOfMonthCursorInterface$OnCursorMoveListener;

    .prologue
    .line 228
    iput-object p1, p0, Lcom/sec/jewishcalendar/TwDayOfJewishMonthCursor;->mOnCursorMoveListener:Lcom/sec/jewishcalendar/TwDayOfMonthCursorInterface$OnCursorMoveListener;

    .line 229
    return-void
.end method

.method public setSelectedDayOfMonth(I)V
    .locals 3
    .param p1, "dayOfMonth"    # I

    .prologue
    .line 90
    invoke-virtual {p0, p1}, Lcom/sec/jewishcalendar/TwDayOfJewishMonthCursor;->getRowOfDay(I)I

    move-result v0

    iput v0, p0, Lcom/sec/jewishcalendar/TwDayOfJewishMonthCursor;->mRow:I

    .line 91
    invoke-virtual {p0, p1}, Lcom/sec/jewishcalendar/TwDayOfJewishMonthCursor;->getColOfDay(I)I

    move-result v0

    iput v0, p0, Lcom/sec/jewishcalendar/TwDayOfJewishMonthCursor;->mColumn:I

    .line 92
    iget-object v0, p0, Lcom/sec/jewishcalendar/TwDayOfJewishMonthCursor;->jcdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    iget-object v1, p0, Lcom/sec/jewishcalendar/TwDayOfJewishMonthCursor;->jcdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    iget v1, v1, Lcom/sec/jewishcalendar/calculation/HdateClass;->hmonth:I

    iget-object v2, p0, Lcom/sec/jewishcalendar/TwDayOfJewishMonthCursor;->jcdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    iget v2, v2, Lcom/sec/jewishcalendar/calculation/HdateClass;->hyear:I

    invoke-static {v0, p1, v1, v2}, Lcom/sec/jewishcalendar/calculation/JewishCal;->SetHdate(Lcom/sec/jewishcalendar/calculation/HdateClass;III)I

    .line 93
    sget v0, Lcom/sec/jewishcalendar/TwDayOfJewishMonthCursor;->mPrevColumn:I

    if-nez v0, :cond_0

    .line 94
    iget v0, p0, Lcom/sec/jewishcalendar/TwDayOfJewishMonthCursor;->mColumn:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sec/jewishcalendar/TwDayOfJewishMonthCursor;->mColumn:I

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/sec/jewishcalendar/TwDayOfJewishMonthCursor;->mOnCursorMoveListener:Lcom/sec/jewishcalendar/TwDayOfMonthCursorInterface$OnCursorMoveListener;

    if-eqz v0, :cond_1

    .line 97
    iget-object v0, p0, Lcom/sec/jewishcalendar/TwDayOfJewishMonthCursor;->mOnCursorMoveListener:Lcom/sec/jewishcalendar/TwDayOfMonthCursorInterface$OnCursorMoveListener;

    invoke-interface {v0}, Lcom/sec/jewishcalendar/TwDayOfMonthCursorInterface$OnCursorMoveListener;->onCusorMoved()V

    .line 99
    :cond_1
    return-void
.end method

.method public setSelectedRowColumn(II)V
    .locals 4
    .param p1, "row"    # I
    .param p2, "col"    # I

    .prologue
    .line 63
    iput p1, p0, Lcom/sec/jewishcalendar/TwDayOfJewishMonthCursor;->mRow:I

    .line 64
    iput p2, p0, Lcom/sec/jewishcalendar/TwDayOfJewishMonthCursor;->mColumn:I

    .line 65
    iget-object v0, p0, Lcom/sec/jewishcalendar/TwDayOfJewishMonthCursor;->jcdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    invoke-virtual {p0, p1, p2}, Lcom/sec/jewishcalendar/TwDayOfJewishMonthCursor;->getDayAt(II)I

    move-result v1

    iget-object v2, p0, Lcom/sec/jewishcalendar/TwDayOfJewishMonthCursor;->jcdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    iget v2, v2, Lcom/sec/jewishcalendar/calculation/HdateClass;->hmonth:I

    iget-object v3, p0, Lcom/sec/jewishcalendar/TwDayOfJewishMonthCursor;->jcdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    iget v3, v3, Lcom/sec/jewishcalendar/calculation/HdateClass;->hyear:I

    invoke-static {v0, v1, v2, v3}, Lcom/sec/jewishcalendar/calculation/JewishCal;->SetHdate(Lcom/sec/jewishcalendar/calculation/HdateClass;III)I

    .line 66
    iget-object v0, p0, Lcom/sec/jewishcalendar/TwDayOfJewishMonthCursor;->mOnCursorMoveListener:Lcom/sec/jewishcalendar/TwDayOfMonthCursorInterface$OnCursorMoveListener;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/sec/jewishcalendar/TwDayOfJewishMonthCursor;->mOnCursorMoveListener:Lcom/sec/jewishcalendar/TwDayOfMonthCursorInterface$OnCursorMoveListener;

    invoke-interface {v0}, Lcom/sec/jewishcalendar/TwDayOfMonthCursorInterface$OnCursorMoveListener;->onCusorMoved()V

    .line 69
    :cond_0
    return-void
.end method

.method public up()Z
    .locals 3

    .prologue
    .line 114
    iget v1, p0, Lcom/sec/jewishcalendar/TwDayOfJewishMonthCursor;->mRow:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/sec/jewishcalendar/TwDayOfJewishMonthCursor;->mColumn:I

    invoke-virtual {p0, v1, v2}, Lcom/sec/jewishcalendar/TwDayOfJewishMonthCursor;->isWithinCurrentMonth(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 116
    iget v1, p0, Lcom/sec/jewishcalendar/TwDayOfJewishMonthCursor;->mRow:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/sec/jewishcalendar/TwDayOfJewishMonthCursor;->mRow:I

    .line 117
    const/4 v0, 0x0

    .line 128
    .local v0, "returnValue":Z
    :goto_0
    iget-object v1, p0, Lcom/sec/jewishcalendar/TwDayOfJewishMonthCursor;->mOnCursorMoveListener:Lcom/sec/jewishcalendar/TwDayOfMonthCursorInterface$OnCursorMoveListener;

    if-eqz v1, :cond_0

    .line 129
    iget-object v1, p0, Lcom/sec/jewishcalendar/TwDayOfJewishMonthCursor;->mOnCursorMoveListener:Lcom/sec/jewishcalendar/TwDayOfMonthCursorInterface$OnCursorMoveListener;

    invoke-interface {v1}, Lcom/sec/jewishcalendar/TwDayOfMonthCursorInterface$OnCursorMoveListener;->onCusorMoved()V

    .line 131
    :cond_0
    iget v1, p0, Lcom/sec/jewishcalendar/TwDayOfJewishMonthCursor;->mColumn:I

    sput v1, Lcom/sec/jewishcalendar/TwDayOfJewishMonthCursor;->mPrevColumn:I

    .line 132
    return v0

    .line 121
    .end local v0    # "returnValue":Z
    :cond_1
    iget-object v1, p0, Lcom/sec/jewishcalendar/TwDayOfJewishMonthCursor;->jcdate:Lcom/sec/jewishcalendar/calculation/HdateClass;

    invoke-static {v1}, Lcom/sec/jewishcalendar/calculation/JewishCal;->MoveToPrevMonth(Lcom/sec/jewishcalendar/calculation/HdateClass;)I

    .line 122
    const/4 v1, 0x5

    iput v1, p0, Lcom/sec/jewishcalendar/TwDayOfJewishMonthCursor;->mRow:I

    .line 123
    :goto_1
    iget v1, p0, Lcom/sec/jewishcalendar/TwDayOfJewishMonthCursor;->mRow:I

    iget v2, p0, Lcom/sec/jewishcalendar/TwDayOfJewishMonthCursor;->mColumn:I

    invoke-virtual {p0, v1, v2}, Lcom/sec/jewishcalendar/TwDayOfJewishMonthCursor;->isWithinCurrentMonth(II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 126
    const/4 v0, 0x1

    .restart local v0    # "returnValue":Z
    goto :goto_0

    .line 124
    .end local v0    # "returnValue":Z
    :cond_2
    iget v1, p0, Lcom/sec/jewishcalendar/TwDayOfJewishMonthCursor;->mRow:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/sec/jewishcalendar/TwDayOfJewishMonthCursor;->mRow:I

    goto :goto_1
.end method
