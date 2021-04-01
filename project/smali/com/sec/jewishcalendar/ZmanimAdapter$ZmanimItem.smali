.class public Lcom/sec/jewishcalendar/ZmanimAdapter$ZmanimItem;
.super Ljava/lang/Object;
.source "ZmanimAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/jewishcalendar/ZmanimAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ZmanimItem"
.end annotation


# instance fields
.field public bgColor:I

.field public description:Ljava/lang/CharSequence;

.field public icon:Landroid/graphics/drawable/Drawable;

.field public label:Ljava/lang/CharSequence;

.field public time:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/jewishcalendar/ZmanimAdapter$ZmanimItem;->bgColor:I

    .line 49
    return-void
.end method
