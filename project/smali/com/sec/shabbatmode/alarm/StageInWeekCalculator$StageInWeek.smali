.class public final enum Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;
.super Ljava/lang/Enum;
.source "StageInWeekCalculator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/shabbatmode/alarm/StageInWeekCalculator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StageInWeek"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BEFORE_FRIDAY:Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;

.field private static final synthetic ENUM$VALUES:[Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;

.field public static final enum FIVE_MINUTES_BEFORE:Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;

.field public static final enum FRIDAY:Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;

.field public static final enum FRIDAY_CLOSE_TO_SHABBAT_ENTRANCE:Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;

.field public static final enum ONE_MINUTE_BEFORE:Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;

.field public static final enum SHABBAT:Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;

.field public static final enum SHABBAT_END:Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;

.field public static final enum SHABBAT_ENTRANCE:Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;

.field public static final enum UNKNOWN:Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 29
    new-instance v0, Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;

    const-string v1, "BEFORE_FRIDAY"

    invoke-direct {v0, v1, v3}, Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;->BEFORE_FRIDAY:Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;

    .line 30
    new-instance v0, Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;

    const-string v1, "FRIDAY"

    invoke-direct {v0, v1, v4}, Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;->FRIDAY:Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;

    .line 31
    new-instance v0, Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;

    const-string v1, "FRIDAY_CLOSE_TO_SHABBAT_ENTRANCE"

    invoke-direct {v0, v1, v5}, Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;->FRIDAY_CLOSE_TO_SHABBAT_ENTRANCE:Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;

    .line 32
    new-instance v0, Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;

    const-string v1, "ONE_MINUTE_BEFORE"

    invoke-direct {v0, v1, v6}, Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;->ONE_MINUTE_BEFORE:Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;

    .line 33
    new-instance v0, Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;

    const-string v1, "FIVE_MINUTES_BEFORE"

    invoke-direct {v0, v1, v7}, Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;->FIVE_MINUTES_BEFORE:Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;

    .line 34
    new-instance v0, Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;

    const-string v1, "SHABBAT_ENTRANCE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;->SHABBAT_ENTRANCE:Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;

    .line 35
    new-instance v0, Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;

    const-string v1, "SHABBAT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;->SHABBAT:Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;

    .line 36
    new-instance v0, Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;

    const-string v1, "SHABBAT_END"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;->SHABBAT_END:Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;

    .line 37
    new-instance v0, Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;

    const-string v1, "UNKNOWN"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;->UNKNOWN:Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;

    .line 28
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;

    sget-object v1, Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;->BEFORE_FRIDAY:Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;->FRIDAY:Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;->FRIDAY_CLOSE_TO_SHABBAT_ENTRANCE:Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;->ONE_MINUTE_BEFORE:Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;->FIVE_MINUTES_BEFORE:Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;->SHABBAT_ENTRANCE:Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;->SHABBAT:Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;->SHABBAT_END:Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;->UNKNOWN:Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;->ENUM$VALUES:[Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;

    return-object v0
.end method

.method public static values()[Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;->ENUM$VALUES:[Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;

    array-length v1, v0

    new-array v2, v1, [Lcom/sec/shabbatmode/alarm/StageInWeekCalculator$StageInWeek;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
