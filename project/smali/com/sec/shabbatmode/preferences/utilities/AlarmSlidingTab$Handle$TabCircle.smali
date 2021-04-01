.class public Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TabCircle;
.super Landroid/view/View;
.source "AlarmSlidingTab.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TabCircle"
.end annotation


# instance fields
.field private mFRadius:F

.field private mLinePaint:Landroid/graphics/Paint;

.field private mRadius:F

.field private mRadiusInCircle:F

.field final synthetic this$1:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;


# direct methods
.method public constructor <init>(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;Landroid/content/Context;F)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "radius"    # F

    .prologue
    .line 1812
    iput-object p1, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TabCircle;->this$1:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;

    .line 1813
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1814
    invoke-direct {p0, p3}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TabCircle;->init(F)V

    .line 1815
    return-void
.end method

.method static synthetic access$0(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TabCircle;F)V
    .locals 0

    .prologue
    .line 1806
    iput p1, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TabCircle;->mRadius:F

    return-void
.end method

.method private init(F)V
    .locals 2
    .param p1, "radius"    # F

    .prologue
    .line 1824
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TabCircle;->mLinePaint:Landroid/graphics/Paint;

    .line 1825
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TabCircle;->mLinePaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1826
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TabCircle;->mLinePaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TabCircle;->this$1:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;

    invoke-static {v1}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->access$8(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1827
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TabCircle;->mLinePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1828
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TabCircle;->mLinePaint:Landroid/graphics/Paint;

    const/16 v1, 0xcc

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1830
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TabCircle;->this$1:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;

    invoke-static {v0}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->access$17(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;)Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->access$5(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;)Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v1, 0xa0

    if-ne v0, v1, :cond_0

    .line 1831
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TabCircle;->this$1:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;

    invoke-static {v0}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->access$9(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/shabbatmode/preferences/utilities/ClockUtils;->isTablet800dpMdpi(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1832
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TabCircle;->mLinePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40400000    # 3.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1841
    :goto_0
    iput p1, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TabCircle;->mFRadius:F

    .line 1842
    iput p1, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TabCircle;->mRadius:F

    .line 1843
    iput p1, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TabCircle;->mRadiusInCircle:F

    .line 1844
    return-void

    .line 1833
    :cond_0
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TabCircle;->this$1:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;

    invoke-static {v0}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->access$9(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/shabbatmode/preferences/utilities/ClockUtils;->isTablet800dpXhdpi(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1834
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TabCircle;->mLinePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41400000    # 12.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto :goto_0

    .line 1835
    :cond_1
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TabCircle;->this$1:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;

    invoke-static {v0}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->access$17(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;)Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->access$5(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;)Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v1, 0x1e0

    if-ne v0, v1, :cond_2

    .line 1836
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TabCircle;->mLinePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41500000    # 13.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto :goto_0

    .line 1838
    :cond_2
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TabCircle;->mLinePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40c00000    # 6.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto :goto_0
.end method


# virtual methods
.method public getLengthToTarget(FF)D
    .locals 14
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 1892
    const/4 v9, 0x2

    new-array v8, v9, [I

    .line 1893
    .local v8, "tmpPos":[I
    invoke-virtual {p0, v8}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TabCircle;->getLocationOnScreen([I)V

    .line 1894
    const/4 v9, 0x0

    aget v9, v8, v9

    invoke-virtual {p0}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TabCircle;->getWidth()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v9, v10

    int-to-float v4, v9

    .line 1895
    .local v4, "pivotX":F
    const/4 v9, 0x1

    aget v9, v8, v9

    invoke-virtual {p0}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TabCircle;->getHeight()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v9, v10

    iget-object v10, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TabCircle;->this$1:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;

    invoke-static {v10}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->access$10(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;)I

    move-result v10

    sub-int/2addr v9, v10

    int-to-float v5, v9

    .line 1896
    .local v5, "pivotY":F
    sub-float v9, p1, v4

    float-to-double v10, v9

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    .line 1897
    .local v0, "dx":D
    sub-float v9, p2, v5

    float-to-double v10, v9

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    .line 1898
    .local v2, "dy":D
    mul-double v10, v0, v0

    mul-double v12, v2, v2

    add-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    .line 1899
    .local v6, "posLength":D
    return-wide v6
.end method

.method public isInCircle(FF)Z
    .locals 20
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 1860
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TabCircle;->this$1:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->access$17(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;)Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->access$0(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;)Z

    move-result v16

    if-eqz v16, :cond_1

    .line 1861
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 1862
    .local v8, "mRect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TabCircle;->this$1:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->access$4(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;)Landroid/widget/ImageView;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 1864
    iget v0, v8, Landroid/graphics/Rect;->left:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    cmpg-float v16, v16, p1

    if-gtz v16, :cond_0

    iget v0, v8, Landroid/graphics/Rect;->right:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    cmpl-float v16, v16, p1

    if-ltz v16, :cond_0

    .line 1865
    iget v0, v8, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    cmpg-float v16, v16, p2

    if-gtz v16, :cond_0

    iget v0, v8, Landroid/graphics/Rect;->bottom:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    cmpl-float v16, v16, p2

    if-ltz v16, :cond_0

    .line 1866
    const/16 v16, 0x1

    .line 1886
    .end local v8    # "mRect":Landroid/graphics/Rect;
    :goto_0
    return v16

    .line 1868
    .restart local v8    # "mRect":Landroid/graphics/Rect;
    :cond_0
    const/16 v16, 0x0

    goto :goto_0

    .line 1871
    .end local v8    # "mRect":Landroid/graphics/Rect;
    :cond_1
    const-wide v2, 0x3ff4cccccccccccdL    # 1.3

    .line 1873
    .local v2, "ACTIVE_RATIO":D
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 1874
    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v11, v0, [I

    .line 1875
    .local v11, "tmpPos":[I
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TabCircle;->getLocationOnScreen([I)V

    .line 1876
    const/16 v16, 0x0

    aget v16, v11, v16

    invoke-virtual/range {p0 .. p0}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TabCircle;->getWidth()I

    move-result v17

    div-int/lit8 v17, v17, 0x2

    add-int v16, v16, v17

    move/from16 v0, v16

    int-to-float v9, v0

    .line 1877
    .local v9, "pivotX":F
    const/16 v16, 0x1

    aget v16, v11, v16

    invoke-virtual/range {p0 .. p0}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TabCircle;->getHeight()I

    move-result v17

    div-int/lit8 v17, v17, 0x2

    add-int v16, v16, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TabCircle;->this$1:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->access$10(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;)I

    move-result v17

    sub-int v16, v16, v17

    move/from16 v0, v16

    int-to-float v10, v0

    .line 1878
    .local v10, "pivotY":F
    sub-float v16, p1, v9

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    .line 1879
    .local v4, "dx":D
    sub-float v16, p2, v10

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    .line 1880
    .local v6, "dy":D
    mul-double v16, v4, v4

    mul-double v18, v6, v6

    add-double v16, v16, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    .line 1881
    .local v12, "posLength":D
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TabCircle;->mRadiusInCircle:F

    move/from16 v16, v0

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    div-double v14, v12, v16

    .line 1883
    .local v14, "ratio":D
    cmpg-double v16, v14, v2

    if-gez v16, :cond_2

    .line 1884
    const/16 v16, 0x1

    goto :goto_0

    .line 1886
    :cond_2
    const/16 v16, 0x0

    goto :goto_0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1904
    invoke-virtual {p0}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TabCircle;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TabCircle;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TabCircle;->mRadius:F

    iget-object v3, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TabCircle;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1905
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 1818
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TabCircle;->mLinePaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 1819
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TabCircle;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1821
    :cond_0
    return-void
.end method

.method public setRadius(ZF)V
    .locals 2
    .param p1, "full"    # Z
    .param p2, "radius"    # F

    .prologue
    .line 1847
    if-eqz p1, :cond_0

    .line 1848
    iget v0, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TabCircle;->mFRadius:F

    iput v0, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TabCircle;->mRadius:F

    .line 1853
    :goto_0
    invoke-virtual {p0}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TabCircle;->invalidate()V

    .line 1854
    return-void

    .line 1850
    :cond_0
    iget v0, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TabCircle;->mFRadius:F

    const/high16 v1, 0x41f00000    # 30.0f

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TabCircle;->mRadius:F

    goto :goto_0
.end method
