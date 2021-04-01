.class public Lnet/sourceforge/zmanim/util/Time;
.super Ljava/lang/Object;
.source "Time.java"


# static fields
.field private static final HOUR_MILLIS:J = 0x36ee80L

.field private static final MINUTE_MILLIS:J = 0xea60L

.field private static final SECOND_MILLIS:J = 0x3e8L


# instance fields
.field private hours:I

.field private isNegative:Z

.field private milliseconds:J

.field private minutes:I

.field private seconds:I


# direct methods
.method public constructor <init>(D)V
    .locals 3
    .param p1, "millis"    # D

    .prologue
    .line 53
    double-to-long v0, p1

    invoke-direct {p0, v0, v1}, Lnet/sourceforge/zmanim/util/Time;-><init>(J)V

    .line 54
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 3
    .param p1, "hours"    # I
    .param p2, "minutes"    # I
    .param p3, "seconds"    # I
    .param p4, "milliseconds"    # I

    .prologue
    const/4 v2, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput v2, p0, Lnet/sourceforge/zmanim/util/Time;->hours:I

    .line 37
    iput v2, p0, Lnet/sourceforge/zmanim/util/Time;->minutes:I

    .line 39
    iput v2, p0, Lnet/sourceforge/zmanim/util/Time;->seconds:I

    .line 41
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lnet/sourceforge/zmanim/util/Time;->milliseconds:J

    .line 43
    iput-boolean v2, p0, Lnet/sourceforge/zmanim/util/Time;->isNegative:Z

    .line 46
    iput p1, p0, Lnet/sourceforge/zmanim/util/Time;->hours:I

    .line 47
    iput p2, p0, Lnet/sourceforge/zmanim/util/Time;->minutes:I

    .line 48
    iput p3, p0, Lnet/sourceforge/zmanim/util/Time;->seconds:I

    .line 49
    int-to-long v0, p4

    iput-wide v0, p0, Lnet/sourceforge/zmanim/util/Time;->milliseconds:J

    .line 50
    return-void
.end method

.method public constructor <init>(J)V
    .locals 13
    .param p1, "millis"    # J

    .prologue
    const-wide/32 v10, 0x36ee80

    const-wide/32 v8, 0xea60

    const-wide/16 v6, 0x3e8

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput v2, p0, Lnet/sourceforge/zmanim/util/Time;->hours:I

    .line 37
    iput v2, p0, Lnet/sourceforge/zmanim/util/Time;->minutes:I

    .line 39
    iput v2, p0, Lnet/sourceforge/zmanim/util/Time;->seconds:I

    .line 41
    iput-wide v4, p0, Lnet/sourceforge/zmanim/util/Time;->milliseconds:J

    .line 43
    iput-boolean v2, p0, Lnet/sourceforge/zmanim/util/Time;->isNegative:Z

    .line 57
    move-wide v0, p1

    .line 58
    .local v0, "adjustedMillis":J
    cmp-long v2, v0, v4

    if-gez v2, :cond_0

    .line 59
    const/4 v2, 0x1

    iput-boolean v2, p0, Lnet/sourceforge/zmanim/util/Time;->isNegative:Z

    .line 60
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    .line 62
    :cond_0
    div-long v2, v0, v10

    long-to-int v2, v2

    iput v2, p0, Lnet/sourceforge/zmanim/util/Time;->hours:I

    .line 63
    iget v2, p0, Lnet/sourceforge/zmanim/util/Time;->hours:I

    int-to-long v2, v2

    mul-long/2addr v2, v10

    sub-long/2addr v0, v2

    .line 65
    div-long v2, v0, v8

    long-to-int v2, v2

    iput v2, p0, Lnet/sourceforge/zmanim/util/Time;->minutes:I

    .line 66
    iget v2, p0, Lnet/sourceforge/zmanim/util/Time;->minutes:I

    int-to-long v2, v2

    mul-long/2addr v2, v8

    sub-long/2addr v0, v2

    .line 68
    div-long v2, v0, v6

    long-to-int v2, v2

    iput v2, p0, Lnet/sourceforge/zmanim/util/Time;->seconds:I

    .line 69
    iget v2, p0, Lnet/sourceforge/zmanim/util/Time;->seconds:I

    int-to-long v2, v2

    mul-long/2addr v2, v6

    sub-long/2addr v0, v2

    .line 71
    iput-wide v0, p0, Lnet/sourceforge/zmanim/util/Time;->milliseconds:J

    .line 72
    return-void
.end method


# virtual methods
.method public getHours()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lnet/sourceforge/zmanim/util/Time;->hours:I

    return v0
.end method

.method public getMilliseconds()J
    .locals 2

    .prologue
    .line 131
    iget-wide v0, p0, Lnet/sourceforge/zmanim/util/Time;->milliseconds:J

    return-wide v0
.end method

.method public getMinutes()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lnet/sourceforge/zmanim/util/Time;->minutes:I

    return v0
.end method

.method public getSeconds()I
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lnet/sourceforge/zmanim/util/Time;->seconds:I

    return v0
.end method

.method public getTime()D
    .locals 6

    .prologue
    .line 143
    iget v0, p0, Lnet/sourceforge/zmanim/util/Time;->hours:I

    int-to-long v0, v0

    const-wide/32 v2, 0x36ee80

    mul-long/2addr v0, v2

    iget v2, p0, Lnet/sourceforge/zmanim/util/Time;->minutes:I

    int-to-long v2, v2

    const-wide/32 v4, 0xea60

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    iget v2, p0, Lnet/sourceforge/zmanim/util/Time;->seconds:I

    int-to-long v2, v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 144
    iget-wide v2, p0, Lnet/sourceforge/zmanim/util/Time;->milliseconds:J

    .line 143
    add-long/2addr v0, v2

    long-to-double v0, v0

    return-wide v0
.end method

.method public isNegative()Z
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Lnet/sourceforge/zmanim/util/Time;->isNegative:Z

    return v0
.end method

.method public setHours(I)V
    .locals 0
    .param p1, "hours"    # I

    .prologue
    .line 94
    iput p1, p0, Lnet/sourceforge/zmanim/util/Time;->hours:I

    .line 95
    return-void
.end method

.method public setIsNegative(Z)V
    .locals 0
    .param p1, "isNegative"    # Z

    .prologue
    .line 79
    iput-boolean p1, p0, Lnet/sourceforge/zmanim/util/Time;->isNegative:Z

    .line 80
    return-void
.end method

.method public setMilliseconds(J)V
    .locals 1
    .param p1, "milliseconds"    # J

    .prologue
    .line 139
    iput-wide p1, p0, Lnet/sourceforge/zmanim/util/Time;->milliseconds:J

    .line 140
    return-void
.end method

.method public setMinutes(I)V
    .locals 0
    .param p1, "minutes"    # I

    .prologue
    .line 109
    iput p1, p0, Lnet/sourceforge/zmanim/util/Time;->minutes:I

    .line 110
    return-void
.end method

.method public setSeconds(I)V
    .locals 0
    .param p1, "seconds"    # I

    .prologue
    .line 124
    iput p1, p0, Lnet/sourceforge/zmanim/util/Time;->seconds:I

    .line 125
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 148
    new-instance v0, Lnet/sourceforge/zmanim/util/ZmanimFormatter;

    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/sourceforge/zmanim/util/ZmanimFormatter;-><init>(Ljava/util/TimeZone;)V

    invoke-virtual {v0, p0}, Lnet/sourceforge/zmanim/util/ZmanimFormatter;->format(Lnet/sourceforge/zmanim/util/Time;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
