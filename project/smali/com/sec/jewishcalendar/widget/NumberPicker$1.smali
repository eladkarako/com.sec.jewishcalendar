.class Lcom/sec/jewishcalendar/widget/NumberPicker$1;
.super Ljava/lang/Object;
.source "NumberPicker.java"

# interfaces
.implements Lcom/sec/jewishcalendar/widget/NumberPicker$Formatter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/jewishcalendar/widget/NumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final mArgs:[Ljava/lang/Object;

.field final mBuilder:Ljava/lang/StringBuilder;

.field final mFmt:Ljava/util/Formatter;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/sec/jewishcalendar/widget/NumberPicker$1;->mBuilder:Ljava/lang/StringBuilder;

    .line 68
    new-instance v0, Ljava/util/Formatter;

    iget-object v1, p0, Lcom/sec/jewishcalendar/widget/NumberPicker$1;->mBuilder:Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    iput-object v0, p0, Lcom/sec/jewishcalendar/widget/NumberPicker$1;->mFmt:Ljava/util/Formatter;

    .line 69
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/sec/jewishcalendar/widget/NumberPicker$1;->mArgs:[Ljava/lang/Object;

    .line 1
    return-void
.end method


# virtual methods
.method public toString(I)Ljava/lang/String;
    .locals 3
    .param p1, "value"    # I

    .prologue
    const/4 v2, 0x0

    .line 72
    iget-object v0, p0, Lcom/sec/jewishcalendar/widget/NumberPicker$1;->mArgs:[Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    .line 73
    iget-object v0, p0, Lcom/sec/jewishcalendar/widget/NumberPicker$1;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/jewishcalendar/widget/NumberPicker$1;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 74
    iget-object v0, p0, Lcom/sec/jewishcalendar/widget/NumberPicker$1;->mFmt:Ljava/util/Formatter;

    const-string v1, "%02d"

    iget-object v2, p0, Lcom/sec/jewishcalendar/widget/NumberPicker$1;->mArgs:[Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 75
    iget-object v0, p0, Lcom/sec/jewishcalendar/widget/NumberPicker$1;->mFmt:Ljava/util/Formatter;

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
