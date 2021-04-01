.class Lcom/sec/jewishcalendar/JewishCalendarView$4;
.super Ljava/lang/Object;
.source "JewishCalendarView.java"

# interfaces
.implements Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePickerDialog$OnJewishDateSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/jewishcalendar/JewishCalendarView;->InitializeUI()V
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
    iput-object p1, p0, Lcom/sec/jewishcalendar/JewishCalendarView$4;->this$0:Lcom/sec/jewishcalendar/JewishCalendarView;

    .line 386
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateSet(Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;III)V
    .locals 1
    .param p1, "view"    # Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;
    .param p2, "year"    # I
    .param p3, "monthOfYear"    # I
    .param p4, "dayOfMonth"    # I

    .prologue
    .line 390
    iget-object v0, p0, Lcom/sec/jewishcalendar/JewishCalendarView$4;->this$0:Lcom/sec/jewishcalendar/JewishCalendarView;

    invoke-virtual {v0, p4, p3, p2}, Lcom/sec/jewishcalendar/JewishCalendarView;->HGoTo(III)V

    .line 391
    return-void
.end method
