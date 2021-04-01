.class Lnet/sourceforge/zmanim/util/Zman$1;
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
    .line 68
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

    invoke-virtual {p0, p1, p2}, Lnet/sourceforge/zmanim/util/Zman$1;->compare(Lnet/sourceforge/zmanim/util/Zman;Lnet/sourceforge/zmanim/util/Zman;)I

    move-result v0

    return v0
.end method

.method public compare(Lnet/sourceforge/zmanim/util/Zman;Lnet/sourceforge/zmanim/util/Zman;)I
    .locals 2
    .param p1, "z1"    # Lnet/sourceforge/zmanim/util/Zman;
    .param p2, "z2"    # Lnet/sourceforge/zmanim/util/Zman;

    .prologue
    .line 70
    invoke-virtual {p1}, Lnet/sourceforge/zmanim/util/Zman;->getZman()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p2}, Lnet/sourceforge/zmanim/util/Zman;->getZman()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v0

    return v0
.end method
