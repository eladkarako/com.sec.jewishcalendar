.class Lcom/sec/jewishcalendar/JewishCalendarView$2;
.super Ljava/lang/Object;
.source "JewishCalendarView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/jewishcalendar/JewishCalendarView;->displayNewFeaturesAlert()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/jewishcalendar/JewishCalendarView;


# direct methods
.method constructor <init>(Lcom/sec/jewishcalendar/JewishCalendarView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/jewishcalendar/JewishCalendarView$2;->this$0:Lcom/sec/jewishcalendar/JewishCalendarView;

    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 255
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 256
    return-void
.end method
