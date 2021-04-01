.class final enum Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;
.super Ljava/lang/Enum;
.source "GoogleGeocoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/jewishcalendar/location/GoogleGeocoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ParseState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ADDRESS:Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;

.field public static final enum ADDRESS_LONG:Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;

.field public static final enum ADDRESS_SHORT:Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;

.field public static final enum ADDRESS_TYPE:Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;

.field private static final synthetic ENUM$VALUES:[Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;

.field public static final enum FINISH:Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;

.field public static final enum GEOMETRY:Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;

.field public static final enum LOCATION:Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;

.field public static final enum LOC_LAT:Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;

.field public static final enum LOC_LNG:Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;

.field public static final enum RESULT:Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;

.field public static final enum RESULT_FORMATTED:Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;

.field public static final enum RESULT_TYPE:Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;

.field public static final enum ROOT:Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;

.field public static final enum START:Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;

.field public static final enum STATUS:Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 230
    new-instance v0, Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;

    const-string v1, "START"

    invoke-direct {v0, v1, v3}, Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;->START:Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;

    new-instance v0, Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;

    const-string v1, "ROOT"

    invoke-direct {v0, v1, v4}, Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;->ROOT:Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;

    new-instance v0, Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;

    const-string v1, "STATUS"

    invoke-direct {v0, v1, v5}, Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;->STATUS:Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;

    new-instance v0, Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;

    const-string v1, "RESULT"

    invoke-direct {v0, v1, v6}, Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;->RESULT:Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;

    new-instance v0, Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;

    const-string v1, "RESULT_TYPE"

    invoke-direct {v0, v1, v7}, Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;->RESULT_TYPE:Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;

    new-instance v0, Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;

    const-string v1, "RESULT_FORMATTED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;->RESULT_FORMATTED:Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;

    new-instance v0, Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;

    const-string v1, "ADDRESS"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;->ADDRESS:Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;

    new-instance v0, Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;

    const-string v1, "ADDRESS_TYPE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;->ADDRESS_TYPE:Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;

    new-instance v0, Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;

    const-string v1, "ADDRESS_LONG"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;->ADDRESS_LONG:Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;

    new-instance v0, Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;

    const-string v1, "ADDRESS_SHORT"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;->ADDRESS_SHORT:Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;

    new-instance v0, Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;

    const-string v1, "GEOMETRY"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;->GEOMETRY:Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;

    new-instance v0, Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;

    const-string v1, "LOCATION"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;->LOCATION:Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;

    new-instance v0, Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;

    const-string v1, "LOC_LAT"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;->LOC_LAT:Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;

    new-instance v0, Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;

    const-string v1, "LOC_LNG"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;->LOC_LNG:Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;

    new-instance v0, Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;

    const-string v1, "FINISH"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;->FINISH:Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;

    .line 229
    const/16 v0, 0xf

    new-array v0, v0, [Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;

    sget-object v1, Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;->START:Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;->ROOT:Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;->STATUS:Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;->RESULT:Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;->RESULT_TYPE:Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;->RESULT_FORMATTED:Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;->ADDRESS:Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;->ADDRESS_TYPE:Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;->ADDRESS_LONG:Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;->ADDRESS_SHORT:Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;->GEOMETRY:Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;->LOCATION:Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;->LOC_LAT:Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;->LOC_LNG:Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;->FINISH:Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;->ENUM$VALUES:[Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 229
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;

    return-object v0
.end method

.method public static values()[Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;->ENUM$VALUES:[Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;

    array-length v1, v0

    new-array v2, v1, [Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
