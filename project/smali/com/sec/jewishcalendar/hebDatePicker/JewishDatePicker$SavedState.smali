.class Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "JewishDatePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation


# instance fields
.field private final mDay:I

.field private final mMonth:I

.field private final mYear:I


# direct methods
.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 298
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 299
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker$SavedState;->mYear:I

    .line 300
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker$SavedState;->mMonth:I

    .line 301
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker$SavedState;->mDay:I

    .line 302
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcelable;III)V
    .locals 0
    .param p1, "superState"    # Landroid/os/Parcelable;
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "day"    # I

    .prologue
    .line 288
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 289
    iput p2, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker$SavedState;->mYear:I

    .line 290
    iput p3, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker$SavedState;->mMonth:I

    .line 291
    iput p4, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker$SavedState;->mDay:I

    .line 292
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcelable;IIILcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker$SavedState;)V
    .locals 0

    .prologue
    .line 287
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker$SavedState;-><init>(Landroid/os/Parcelable;III)V

    return-void
.end method


# virtual methods
.method public getDay()I
    .locals 1

    .prologue
    .line 313
    iget v0, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker$SavedState;->mDay:I

    return v0
.end method

.method public getMonth()I
    .locals 1

    .prologue
    .line 309
    iget v0, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker$SavedState;->mMonth:I

    return v0
.end method

.method public getYear()I
    .locals 1

    .prologue
    .line 305
    iget v0, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker$SavedState;->mYear:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 318
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 319
    iget v0, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker$SavedState;->mYear:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 320
    iget v0, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker$SavedState;->mMonth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 321
    iget v0, p0, Lcom/sec/jewishcalendar/hebDatePicker/JewishDatePicker$SavedState;->mDay:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 322
    return-void
.end method
