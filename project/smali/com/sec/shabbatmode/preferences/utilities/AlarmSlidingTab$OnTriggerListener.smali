.class public interface abstract Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$OnTriggerListener;
.super Ljava/lang/Object;
.source "AlarmSlidingTab.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnTriggerListener"
.end annotation


# static fields
.field public static final LEFT_HANDLE:I = 0x1

.field public static final NO_HANDLE:I = 0x0

.field public static final RIGHT_HANDLE:I = 0x2


# virtual methods
.method public abstract onGrabbedStateChange(Landroid/view/View;I)V
.end method

.method public abstract onTrigger(Landroid/view/View;I)V
.end method
