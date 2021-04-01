.class public Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TargetCircle;
.super Landroid/view/View;
.source "AlarmSlidingTab.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TargetCircle"
.end annotation


# instance fields
.field private jog_tab_bg_effect_pressed:Landroid/graphics/Bitmap;

.field private mFRadius:F

.field private mLinePaint:Landroid/graphics/Paint;

.field private mRadius:F

.field final synthetic this$1:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;


# direct methods
.method public constructor <init>(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;Landroid/content/Context;F)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "radius"    # F

    .prologue
    .line 1922
    iput-object p1, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TargetCircle;->this$1:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;

    .line 1923
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1920
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TargetCircle;->jog_tab_bg_effect_pressed:Landroid/graphics/Bitmap;

    .line 1924
    invoke-direct {p0, p3}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TargetCircle;->init(F)V

    .line 1925
    return-void
.end method

.method private init(F)V
    .locals 2
    .param p1, "radius"    # F

    .prologue
    .line 1928
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TargetCircle;->mLinePaint:Landroid/graphics/Paint;

    .line 1929
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TargetCircle;->mLinePaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1930
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TargetCircle;->mLinePaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TargetCircle;->this$1:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;

    invoke-static {v1}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->access$8(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1931
    invoke-virtual {p0}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TargetCircle;->setDrawable()V

    .line 1932
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TargetCircle;->mLinePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1933
    iput p1, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TargetCircle;->mRadius:F

    .line 1934
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TargetCircle;->mLinePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40400000    # 3.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1936
    iget v0, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TargetCircle;->mRadius:F

    iput v0, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TargetCircle;->mFRadius:F

    .line 1937
    return-void
.end method


# virtual methods
.method public getTargetProximityRatio(FF)D
    .locals 14
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 1988
    const/4 v10, 0x2

    new-array v7, v10, [I

    .line 1989
    .local v7, "tmpPos":[I
    invoke-virtual {p0, v7}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TargetCircle;->getLocationOnScreen([I)V

    .line 1993
    iget-object v10, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TargetCircle;->this$1:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;

    invoke-static {v10}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->access$17(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;)Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;

    move-result-object v10

    invoke-static {v10}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->access$0(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1994
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 1995
    .local v4, "mRect":Landroid/graphics/Rect;
    iget-object v10, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TargetCircle;->this$1:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;

    invoke-static {v10}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->access$4(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;)Landroid/widget/ImageView;

    move-result-object v10

    invoke-virtual {v10, v4}, Landroid/widget/ImageView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 1996
    iget v10, v4, Landroid/graphics/Rect;->left:I

    iget v11, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v10, v11

    div-int/lit8 v10, v10, 0x2

    int-to-float v5, v10

    .line 1997
    .local v5, "pivotX":F
    iget v10, v4, Landroid/graphics/Rect;->top:I

    iget v11, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v10, v11

    div-int/lit8 v10, v10, 0x2

    int-to-float v6, v10

    .line 2003
    .end local v4    # "mRect":Landroid/graphics/Rect;
    .local v6, "pivotY":F
    :goto_0
    sub-float v10, p1, v5

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    .line 2004
    .local v0, "dx":D
    sub-float v10, p2, v6

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    .line 2005
    .local v2, "dy":D
    mul-double v10, v0, v0

    mul-double v12, v2, v2

    add-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    .line 2007
    .local v8, "posLength":D
    iget-object v10, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TargetCircle;->this$1:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;

    invoke-static {v10}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->access$17(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;)Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;

    move-result-object v10

    invoke-static {v10}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->access$0(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 2008
    iget v10, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TargetCircle;->mFRadius:F

    float-to-double v10, v10

    div-double v10, v8, v10

    .line 2010
    :goto_1
    return-wide v10

    .line 1999
    .end local v0    # "dx":D
    .end local v2    # "dy":D
    .end local v5    # "pivotX":F
    .end local v6    # "pivotY":F
    .end local v8    # "posLength":D
    :cond_0
    const/4 v10, 0x0

    aget v10, v7, v10

    invoke-virtual {p0}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TargetCircle;->getWidth()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    add-int/2addr v10, v11

    int-to-float v5, v10

    .line 2000
    .restart local v5    # "pivotX":F
    const/4 v10, 0x1

    aget v10, v7, v10

    invoke-virtual {p0}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TargetCircle;->getHeight()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    add-int/2addr v10, v11

    iget-object v11, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TargetCircle;->this$1:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;

    invoke-static {v11}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->access$10(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;)I

    move-result v11

    sub-int/2addr v10, v11

    int-to-float v6, v10

    .restart local v6    # "pivotY":F
    goto :goto_0

    .line 2010
    .restart local v0    # "dx":D
    .restart local v2    # "dy":D
    .restart local v8    # "posLength":D
    :cond_1
    iget v10, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TargetCircle;->mRadius:F

    float-to-double v10, v10

    div-double v10, v8, v10

    goto :goto_1
.end method

.method public isThresholdReached(FF)Z
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 1975
    const-wide v0, 0x3fee666666666666L    # 0.95

    .line 1976
    .local v0, "REACHED_RATIO":D
    invoke-virtual {p0, p1, p2}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TargetCircle;->getTargetProximityRatio(FF)D

    move-result-wide v2

    .line 1977
    .local v2, "ratio":D
    const-wide v4, 0x3fee666666666666L    # 0.95

    cmpl-double v4, v2, v4

    if-ltz v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 2016
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TargetCircle;->jog_tab_bg_effect_pressed:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TargetCircle;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 2017
    iget-object v2, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TargetCircle;->jog_tab_bg_effect_pressed:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TargetCircle;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    .line 2018
    iget-object v3, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TargetCircle;->jog_tab_bg_effect_pressed:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TargetCircle;->mLinePaint:Landroid/graphics/Paint;

    .line 2016
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 2019
    return-void
.end method

.method public setDrawable()V
    .locals 4

    .prologue
    const v3, 0x7f020032

    const/4 v2, 0x1

    .line 1951
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1952
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 1953
    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1954
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 1956
    iget-object v1, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TargetCircle;->this$1:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;

    invoke-static {v1}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->access$2(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;)I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 1958
    iget-object v1, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TargetCircle;->this$1:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;

    invoke-static {v1}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->access$17(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;)Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->access$6(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1957
    invoke-static {v1, v3, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TargetCircle;->jog_tab_bg_effect_pressed:Landroid/graphics/Bitmap;

    .line 1965
    :goto_0
    return-void

    .line 1962
    :cond_0
    iget-object v1, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TargetCircle;->this$1:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;

    invoke-static {v1}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->access$17(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;)Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->access$6(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1961
    invoke-static {v1, v3, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TargetCircle;->jog_tab_bg_effect_pressed:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public setRadius(ZF)V
    .locals 2
    .param p1, "full"    # Z
    .param p2, "radius"    # F

    .prologue
    .line 1940
    if-eqz p1, :cond_0

    .line 1941
    iget v0, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TargetCircle;->mFRadius:F

    iput v0, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TargetCircle;->mRadius:F

    .line 1946
    :goto_0
    invoke-virtual {p0}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TargetCircle;->invalidate()V

    .line 1947
    return-void

    .line 1943
    :cond_0
    iget v0, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TargetCircle;->mFRadius:F

    const/high16 v1, 0x41f00000    # 30.0f

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TargetCircle;->mRadius:F

    goto :goto_0
.end method
