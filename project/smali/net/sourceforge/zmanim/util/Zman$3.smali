.class Lnet/sourceforge/zmanim/util/Zman$3;
.super Ljava/lang/Object;
.source "Zman.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sourceforge/zmanim/util/Zman;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lnet/sourceforge/zmanim/util/Zman;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lnet/sourceforge/zmanim/util/Zman;

    check-cast p2, Lnet/sourceforge/zmanim/util/Zman;

    invoke-virtual {p0, p1, p2}, Lnet/sourceforge/zmanim/util/Zman$3;->compare(Lnet/sourceforge/zmanim/util/Zman;Lnet/sourceforge/zmanim/util/Zman;)I

    move-result v0

    return v0
.end method

.method public compare(Lnet/sourceforge/zmanim/util/Zman;Lnet/sourceforge/zmanim/util/Zman;)I
    .locals 4
    .param p1, "z1"    # Lnet/sourceforge/zmanim/util/Zman;
    .param p2, "z2"    # Lnet/sourceforge/zmanim/util/Zman;

    .prologue
    .line 82
    invoke-virtual {p1}, Lnet/sourceforge/zmanim/util/Zman;->getDuration()J

    move-result-wide v0

    invoke-virtual {p2}, Lnet/sourceforge/zmanim/util/Zman;->getDuration()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    .line 83
    :cond_0
    invoke-virtual {p1}, Lnet/sourceforge/zmanim/util/Zman;->getDuration()J

    move-result-wide v0

    invoke-virtual {p2}, Lnet/sourceforge/zmanim/util/Zman;->getDuration()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method
