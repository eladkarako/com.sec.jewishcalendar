.class public Lcom/sec/os/Build$VERSION;
.super Landroid/os/Build$VERSION;
.source "Build.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/os/Build;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VERSION"
.end annotation


# static fields
.field private static mSdkInt:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/os/Build$VERSION;-><init>()V

    return-void
.end method

.method public static SDK_INT()I
    .locals 1

    .prologue
    .line 25
    sget v0, Lcom/sec/os/Build$VERSION;->mSdkInt:I

    if-nez v0, :cond_0

    .line 26
    sget v0, Lcom/sec/os/Build$VERSION;->SDK_INT:I

    sput v0, Lcom/sec/os/Build$VERSION;->mSdkInt:I

    .line 28
    :cond_0
    sget v0, Lcom/sec/os/Build$VERSION;->mSdkInt:I

    return v0
.end method
