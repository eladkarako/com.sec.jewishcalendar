.class public interface abstract Lcom/sec/jewishcalendar/TwDayOfMonthCursorInterface;
.super Ljava/lang/Object;
.source "TwDayOfMonthCursorInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/jewishcalendar/TwDayOfMonthCursorInterface$OnCursorMoveListener;
    }
.end annotation


# virtual methods
.method public abstract down()Z
.end method

.method public abstract getColOfDay(I)I
.end method

.method public abstract getCurDay()I
.end method

.method public abstract getCurMonth()I
.end method

.method public abstract getCurYear()I
.end method

.method public abstract getDayAtPlace(II)I
.end method

.method public abstract getNumberOfDaysMonth()I
.end method

.method public abstract getRowOfDay(I)I
.end method

.method public abstract getSelectedColumn()I
.end method

.method public abstract getSelectedDayOfMonth()I
.end method

.method public abstract getSelectedMonthOffset()I
.end method

.method public abstract getSelectedRow()I
.end method

.method public abstract isInCurrentMonth(II)Z
.end method

.method public abstract isSelected(II)Z
.end method

.method public abstract isValid(II)Z
.end method

.method public abstract left()Z
.end method

.method public abstract right()Z
.end method

.method public abstract setOnCursorMoveListener(Lcom/sec/jewishcalendar/TwDayOfMonthCursorInterface$OnCursorMoveListener;)V
.end method

.method public abstract setSelectedDayOfMonth(I)V
.end method

.method public abstract setSelectedRowColumn(II)V
.end method

.method public abstract up()Z
.end method
