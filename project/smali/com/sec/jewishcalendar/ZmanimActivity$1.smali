.class Lcom/sec/jewishcalendar/ZmanimActivity$1;
.super Ljava/lang/Object;
.source "ZmanimActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/jewishcalendar/ZmanimActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/jewishcalendar/ZmanimActivity;


# direct methods
.method constructor <init>(Lcom/sec/jewishcalendar/ZmanimActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/jewishcalendar/ZmanimActivity$1;->this$0:Lcom/sec/jewishcalendar/ZmanimActivity;

    .line 929
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    .line 935
    invoke-static {}, Lcom/sec/jewishcalendar/ZmanimActivity;->access$0()Landroid/location/Location;

    move-result-object v8

    .line 936
    .local v8, "loc":Landroid/location/Location;
    if-nez v8, :cond_1

    .line 966
    :cond_0
    :goto_0
    return-void

    .line 938
    :cond_1
    iget-object v13, p0, Lcom/sec/jewishcalendar/ZmanimActivity$1;->this$0:Lcom/sec/jewishcalendar/ZmanimActivity;

    invoke-static {v13, v8}, Lcom/sec/jewishcalendar/ZmanimActivity;->access$1(Lcom/sec/jewishcalendar/ZmanimActivity;Landroid/location/Location;)Ljava/lang/String;

    move-result-object v9

    .line 939
    .local v9, "locationName":Ljava/lang/String;
    if-nez v9, :cond_2

    .line 940
    iget-object v13, p0, Lcom/sec/jewishcalendar/ZmanimActivity$1;->this$0:Lcom/sec/jewishcalendar/ZmanimActivity;

    const v14, 0x7f0a004b

    invoke-virtual {v13, v14}, Lcom/sec/jewishcalendar/ZmanimActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 941
    :cond_2
    invoke-virtual {v8}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    .line 942
    .local v6, "latitude":D
    invoke-virtual {v8}, Landroid/location/Location;->getLongitude()D

    move-result-wide v10

    .line 946
    .local v10, "longitude":D
    const/4 v13, 0x2

    .line 945
    invoke-static {v6, v7, v13}, Landroid/location/Location;->convert(DI)Ljava/lang/String;

    move-result-object v5

    .line 948
    .local v5, "latitudeText":Ljava/lang/String;
    const/4 v13, 0x2

    .line 947
    invoke-static {v10, v11, v13}, Landroid/location/Location;->convert(DI)Ljava/lang/String;

    move-result-object v12

    .line 949
    .local v12, "longitudeText":Ljava/lang/String;
    iget-object v13, p0, Lcom/sec/jewishcalendar/ZmanimActivity$1;->this$0:Lcom/sec/jewishcalendar/ZmanimActivity;

    const v14, 0x7f0a004c

    invoke-virtual {v13, v14}, Lcom/sec/jewishcalendar/ZmanimActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 950
    .local v2, "coordsFormat":Ljava/lang/String;
    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v5, v13, v14

    const/4 v14, 0x1

    .line 951
    aput-object v12, v13, v14

    .line 950
    invoke-static {v2, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 954
    .local v3, "coordsText":Ljava/lang/String;
    iget-object v13, p0, Lcom/sec/jewishcalendar/ZmanimActivity$1;->this$0:Lcom/sec/jewishcalendar/ZmanimActivity;

    invoke-static {v13}, Lcom/sec/jewishcalendar/ZmanimActivity;->access$2(Lcom/sec/jewishcalendar/ZmanimActivity;)Landroid/view/View;

    move-result-object v4

    .line 955
    .local v4, "header":Landroid/view/View;
    if-eqz v4, :cond_0

    .line 958
    const v13, 0x7f0e00aa

    invoke-virtual {v4, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 959
    .local v0, "address":Landroid/widget/TextView;
    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 961
    const v13, 0x7f0e00ab

    invoke-virtual {v4, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 960
    check-cast v1, Landroid/widget/TextView;

    .line 962
    .local v1, "coordinates":Landroid/widget/TextView;
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 965
    iget-object v13, p0, Lcom/sec/jewishcalendar/ZmanimActivity$1;->this$0:Lcom/sec/jewishcalendar/ZmanimActivity;

    invoke-static {v13}, Lcom/sec/jewishcalendar/ZmanimActivity;->access$3(Lcom/sec/jewishcalendar/ZmanimActivity;)V

    goto :goto_0
.end method
