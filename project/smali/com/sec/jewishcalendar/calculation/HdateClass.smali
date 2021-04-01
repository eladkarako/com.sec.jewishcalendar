.class public Lcom/sec/jewishcalendar/calculation/HdateClass;
.super Ljava/lang/Object;
.source "HdateClass.java"


# instance fields
.field public gday:I

.field public gmonth:I

.field public gyear:I

.field public hDayWeek:I

.field public hDays:I

.field public hJulianDay:I

.field public hNewYearDayWeek:I

.field public hSizeOfYear:I

.field public hWeeks:I

.field public hYearType:I

.field public hday:I

.field public hmonth:I

.field public hyear:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput v1, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->gday:I

    .line 11
    iput v1, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->gmonth:I

    .line 13
    const/16 v0, 0x7bc

    iput v0, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->gyear:I

    .line 15
    iput v1, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hday:I

    .line 17
    iput v1, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hmonth:I

    .line 19
    const/16 v0, 0x161d

    iput v0, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hyear:I

    .line 6
    return-void
.end method


# virtual methods
.method public toJewishDateString([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "JC_LETTERS"    # [Ljava/lang/String;
    .param p2, "JC_MONTHS"    # [Ljava/lang/String;
    .param p3, "JC_DAYS"    # [Ljava/lang/String;

    .prologue
    .line 37
    iget v2, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hyear:I

    invoke-static {v2, p1}, Lcom/sec/jewishcalendar/calculation/JewishCal;->GetJewishYearString(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 39
    .local v1, "sYear":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/text/Semitic;->isLocaleRTL()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 40
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hday:I

    aget-object v3, p3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hmonth:I

    aget-object v3, p2, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, "jewishDateStr":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 41
    .end local v0    # "jewishDateStr":Ljava/lang/String;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hday:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hmonth:I

    aget-object v3, p2, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/jewishcalendar/calculation/HdateClass;->hyear:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
