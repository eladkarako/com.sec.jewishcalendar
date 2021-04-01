.class Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;
.super Ljava/lang/Object;
.source "AlarmSlidingTab.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Handle"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TabCircle;,
        Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TargetCircle;
    }
.end annotation


# static fields
.field public static final STATE_ACTIVE:I = 0x1

.field public static final STATE_INACTIVE:I = 0x2

.field public static final STATE_NORMAL:I = 0x0

.field public static final STATE_STOP:I = 0x3


# instance fields
.field private final ARROW_ANI_DURATION:I

.field private ARROW_COUNT:I

.field private final FIRST_WAVE_DELAY:I

.field private final MAKE_TARGET_DURATION:I

.field private final RESET_DURATION:I

.field private final SECOND_WAVE_DELAY:I

.field private final START_WAVE:I

.field private final STOP_THREAD:I

.field arrowImage_left:Landroid/widget/ImageView;

.field arrowImage_right:Landroid/widget/ImageView;

.field private diameter:I

.field private mArrowContainer:Landroid/widget/LinearLayout;

.field private mArrowImageViews:[Landroid/widget/ImageView;

.field private mCircleColor:I

.field private mContainer:Landroid/widget/FrameLayout;

.field private mContext:Landroid/content/Context;

.field private mCurrentState:I

.field private mHandleType:I

.field private mHandler:Landroid/os/Handler;

.field private mLeftArrowContainer:Landroid/widget/LinearLayout;

.field private mLeftArrowImageViews:[Landroid/widget/ImageView;

.field private mLeftHandler:Landroid/os/Handler;

.field private mParent:Landroid/view/ViewGroup;

.field private mTab:Landroid/widget/ImageView;

.field private mTabCircle:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TabCircle;

.field private mTargetCircle:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TargetCircle;

.field private mTopOffset:I

.field final synthetic this$0:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;


# direct methods
.method public constructor <init>(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;Landroid/content/Context;Landroid/view/ViewGroup;I)V
    .locals 3
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .param p4, "handleType"    # I

    .prologue
    const/16 v2, 0x384

    const/4 v1, 0x0

    .line 527
    iput-object p1, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->this$0:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 485
    iput v2, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->FIRST_WAVE_DELAY:I

    .line 487
    const/16 v0, 0x96

    iput v0, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->SECOND_WAVE_DELAY:I

    .line 489
    const/16 v0, 0x64

    iput v0, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->START_WAVE:I

    .line 491
    const/16 v0, 0x65

    iput v0, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->STOP_THREAD:I

    .line 493
    iput v2, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->ARROW_ANI_DURATION:I

    .line 495
    iput-object v1, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContext:Landroid/content/Context;

    .line 497
    iput-object v1, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mParent:Landroid/view/ViewGroup;

    .line 499
    iput-object v1, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    .line 503
    iput-object v1, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mTab:Landroid/widget/ImageView;

    .line 505
    const/4 v0, 0x4

    iput v0, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->ARROW_COUNT:I

    .line 509
    iput-object v1, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mLeftArrowContainer:Landroid/widget/LinearLayout;

    .line 511
    iput-object v1, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mLeftArrowImageViews:[Landroid/widget/ImageView;

    .line 513
    iput-object v1, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mTabCircle:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TabCircle;

    .line 515
    iput-object v1, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mTargetCircle:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TargetCircle;

    .line 519
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mHandleType:I

    .line 1078
    iput-object v1, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->arrowImage_right:Landroid/widget/ImageView;

    .line 1080
    new-instance v0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$1;

    invoke-direct {v0, p0}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$1;-><init>(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;)V

    iput-object v0, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mHandler:Landroid/os/Handler;

    .line 1132
    iput-object v1, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->arrowImage_left:Landroid/widget/ImageView;

    .line 1134
    new-instance v0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$2;

    invoke-direct {v0, p0}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$2;-><init>(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;)V

    iput-object v0, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mLeftHandler:Landroid/os/Handler;

    .line 1556
    const/16 v0, 0x190

    iput v0, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->MAKE_TARGET_DURATION:I

    .line 1558
    const/16 v0, 0xc8

    iput v0, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->RESET_DURATION:I

    .line 528
    iput-object p2, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContext:Landroid/content/Context;

    .line 529
    iput-object p3, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mParent:Landroid/view/ViewGroup;

    .line 530
    iput p4, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mHandleType:I

    .line 531
    invoke-direct {p0}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->init()V

    .line 532
    return-void
.end method

.method static synthetic access$0(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;I)V
    .locals 0

    .prologue
    .line 505
    iput p1, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->ARROW_COUNT:I

    return-void
.end method

.method static synthetic access$1(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;)I
    .locals 1

    .prologue
    .line 505
    iget v0, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->ARROW_COUNT:I

    return v0
.end method

.method static synthetic access$10(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;)I
    .locals 1

    .prologue
    .line 523
    iget v0, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mTopOffset:I

    return v0
.end method

.method static synthetic access$11(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;Z)V
    .locals 0

    .prologue
    .line 1022
    invoke-direct {p0, p1}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->showArrow(Z)V

    return-void
.end method

.method static synthetic access$12(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;)V
    .locals 0

    .prologue
    .line 1050
    invoke-direct {p0}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->hideArrow()V

    return-void
.end method

.method static synthetic access$13(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;)V
    .locals 0

    .prologue
    .line 1680
    invoke-direct {p0}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->clearDrawable()V

    return-void
.end method

.method static synthetic access$14(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;)V
    .locals 0

    .prologue
    .line 1640
    invoke-direct {p0}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->invalidateCircle()V

    return-void
.end method

.method static synthetic access$15(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;)V
    .locals 0

    .prologue
    .line 637
    invoke-direct {p0}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->reInit()V

    return-void
.end method

.method static synthetic access$16(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 499
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$17(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;)Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;
    .locals 1

    .prologue
    .line 475
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->this$0:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;

    return-object v0
.end method

.method static synthetic access$2(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;)I
    .locals 1

    .prologue
    .line 519
    iget v0, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mHandleType:I

    return v0
.end method

.method static synthetic access$3(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;)[Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 507
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mArrowImageViews:[Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$4(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 503
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mTab:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$5(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;)Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TabCircle;
    .locals 1

    .prologue
    .line 513
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mTabCircle:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TabCircle;

    return-object v0
.end method

.method static synthetic access$6(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;)Landroid/view/animation/AlphaAnimation;
    .locals 1

    .prologue
    .line 1183
    invoke-direct {p0}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->makeArrowAnimation()Landroid/view/animation/AlphaAnimation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;)[Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 511
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mLeftArrowImageViews:[Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$8(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;)I
    .locals 1

    .prologue
    .line 517
    iget v0, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mCircleColor:I

    return v0
.end method

.method static synthetic access$9(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private clearDrawable()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1681
    iget-object v2, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mTab:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 1682
    iget-object v2, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mTab:Landroid/widget/ImageView;

    invoke-direct {p0, v2}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->destroyImageView(Landroid/widget/ImageView;)V

    .line 1685
    :cond_0
    iget-object v2, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mLeftArrowImageViews:[Landroid/widget/ImageView;

    if-eqz v2, :cond_1

    .line 1686
    iget-object v3, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mLeftArrowImageViews:[Landroid/widget/ImageView;

    array-length v4, v3

    move v2, v1

    :goto_0
    if-lt v2, v4, :cond_9

    .line 1692
    :cond_1
    iget-object v2, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mArrowImageViews:[Landroid/widget/ImageView;

    if-eqz v2, :cond_2

    .line 1693
    iget-object v2, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mArrowImageViews:[Landroid/widget/ImageView;

    array-length v3, v2

    :goto_1
    if-lt v1, v3, :cond_a

    .line 1699
    :cond_2
    iget-object v1, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mTabCircle:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TabCircle;

    if-eqz v1, :cond_3

    .line 1700
    iget-object v1, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mTabCircle:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TabCircle;

    invoke-virtual {v1}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TabCircle;->clearAnimation()V

    .line 1703
    :cond_3
    iget-object v1, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mTargetCircle:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TargetCircle;

    if-eqz v1, :cond_4

    .line 1704
    iget-object v1, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mTargetCircle:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TargetCircle;

    invoke-virtual {v1}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TargetCircle;->clearAnimation()V

    .line 1707
    :cond_4
    iget-object v1, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mArrowContainer:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_5

    .line 1708
    iget-object v1, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 1711
    :cond_5
    iget-object v1, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mLeftArrowContainer:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_6

    .line 1712
    iget-object v1, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mLeftArrowContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1715
    :cond_6
    iget-object v1, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_7

    .line 1716
    iget-object v1, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 1719
    :cond_7
    iget-object v1, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mParent:Landroid/view/ViewGroup;

    if-eqz v1, :cond_8

    .line 1720
    iget-object v1, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1722
    :cond_8
    return-void

    .line 1686
    :cond_9
    aget-object v0, v3, v2

    .line 1687
    .local v0, "imageView":Landroid/widget/ImageView;
    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 1688
    invoke-direct {p0, v0}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->destroyImageView(Landroid/widget/ImageView;)V

    .line 1686
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1693
    .end local v0    # "imageView":Landroid/widget/ImageView;
    :cond_a
    aget-object v0, v2, v1

    .line 1694
    .restart local v0    # "imageView":Landroid/widget/ImageView;
    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 1695
    invoke-direct {p0, v0}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->destroyImageView(Landroid/widget/ImageView;)V

    .line 1693
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private destroyImageView(Landroid/widget/ImageView;)V
    .locals 3
    .param p1, "iv"    # Landroid/widget/ImageView;

    .prologue
    const/4 v2, 0x0

    .line 1666
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1668
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 1670
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1675
    :cond_0
    :goto_0
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1676
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1677
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1678
    return-void

    .line 1671
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private hideArrow()V
    .locals 6

    .prologue
    const/16 v4, 0x64

    const/4 v5, 0x4

    const/4 v1, 0x0

    .line 1051
    const-string v2, "AlarmSlidingTab"

    const-string v3, "hideArrow()"

    invoke-static {v2, v3}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 1053
    iget-object v2, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    .line 1054
    iget-object v2, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1057
    :cond_0
    iget-object v2, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mLeftHandler:Landroid/os/Handler;

    if-eqz v2, :cond_1

    .line 1058
    iget-object v2, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mLeftHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1061
    :cond_1
    iget-object v2, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mLeftArrowContainer:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_2

    .line 1062
    iget-object v2, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mLeftArrowContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1064
    iget-object v2, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mLeftArrowImageViews:[Landroid/widget/ImageView;

    if-eqz v2, :cond_2

    .line 1065
    iget-object v3, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mLeftArrowImageViews:[Landroid/widget/ImageView;

    array-length v4, v3

    move v2, v1

    :goto_0
    if-lt v2, v4, :cond_3

    .line 1071
    :cond_2
    iget-object v2, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mArrowContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1073
    iget-object v2, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mArrowImageViews:[Landroid/widget/ImageView;

    array-length v3, v2

    :goto_1
    if-lt v1, v3, :cond_4

    .line 1076
    return-void

    .line 1065
    :cond_3
    aget-object v0, v3, v2

    .line 1066
    .local v0, "imageView":Landroid/widget/ImageView;
    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 1065
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1073
    .end local v0    # "imageView":Landroid/widget/ImageView;
    :cond_4
    aget-object v0, v2, v1

    .line 1074
    .restart local v0    # "imageView":Landroid/widget/ImageView;
    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 1073
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private init()V
    .locals 10

    .prologue
    const/16 v9, 0x1e0

    const/4 v8, 0x0

    const/4 v7, -0x2

    const/4 v6, 0x4

    .line 535
    const-string v3, "AlarmSlidingTab"

    const-string v4, "Handle - init()"

    invoke-static {v3, v4}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    iput v8, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mCurrentState:I

    .line 538
    new-instance v3, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$3;

    iget-object v4, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContext:Landroid/content/Context;

    invoke-direct {v3, p0, v4}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$3;-><init>(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    .line 554
    iget-object v3, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 555
    .local v2, "metrics":Landroid/util/DisplayMetrics;
    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v4, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    mul-int/lit8 v3, v3, 0x4

    div-int/lit8 v3, v3, 0x5

    iput v3, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->diameter:I

    .line 556
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->diameter:I

    iget v4, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->diameter:I

    mul-int/lit8 v4, v4, 0x9

    div-int/lit8 v4, v4, 0x32

    add-int/2addr v3, v4

    .line 557
    iget v4, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->diameter:I

    iget v5, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->diameter:I

    mul-int/lit8 v5, v5, 0x9

    div-int/lit8 v5, v5, 0x32

    add-int/2addr v4, v5

    .line 556
    invoke-direct {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 558
    .local v0, "containerParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v3, 0xc

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 559
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 560
    const/16 v3, 0x11

    .line 559
    invoke-direct {v1, v7, v7, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 562
    .local v1, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    new-instance v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mTab:Landroid/widget/ImageView;

    .line 564
    iget v3, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mHandleType:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 565
    const/16 v3, 0x9

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 566
    iget-object v3, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mTab:Landroid/widget/ImageView;

    const/high16 v4, 0x7f020000

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 574
    iget-object v3, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->this$0:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;

    invoke-static {v3}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->access$5(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;)Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    if-ne v3, v9, :cond_1

    .line 575
    const v3, -0x29ebfa

    iput v3, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mCircleColor:I

    .line 593
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->this$0:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;

    invoke-static {v3}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->access$5(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;)Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v4, 0x140

    if-ne v3, v4, :cond_5

    .line 594
    iget-object v3, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/shabbatmode/preferences/utilities/ClockUtils;->isTablet800dpXhdpi(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 595
    new-instance v3, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TabCircle;

    iget-object v4, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->diameter:I

    div-int/lit8 v5, v5, 0x7

    add-int/lit8 v5, v5, -0xf

    int-to-float v5, v5

    invoke-direct {v3, p0, v4, v5}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TabCircle;-><init>(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;Landroid/content/Context;F)V

    iput-object v3, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mTabCircle:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TabCircle;

    .line 596
    new-instance v3, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TargetCircle;

    iget-object v4, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->diameter:I

    div-int/lit8 v5, v5, 0x2

    add-int/lit16 v5, v5, -0x8c

    int-to-float v5, v5

    invoke-direct {v3, p0, v4, v5}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TargetCircle;-><init>(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;Landroid/content/Context;F)V

    iput-object v3, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mTargetCircle:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TargetCircle;

    .line 617
    :goto_1
    iget-object v3, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/shabbatmode/preferences/utilities/ClockUtils;->isTablet(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 618
    new-instance v3, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TargetCircle;

    iget-object v4, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->diameter:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-direct {v3, p0, v4, v5}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TargetCircle;-><init>(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;Landroid/content/Context;F)V

    iput-object v3, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mTargetCircle:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TargetCircle;

    .line 619
    iget-object v3, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mTargetCircle:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TargetCircle;

    invoke-virtual {v3, v6}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TargetCircle;->setVisibility(I)V

    .line 620
    iget-object v3, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mTabCircle:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TabCircle;

    invoke-virtual {v3, v6}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TabCircle;->setVisibility(I)V

    .line 628
    :goto_2
    iget-object v3, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mTab:Landroid/widget/ImageView;

    invoke-virtual {v3, v4, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 629
    iget-object v3, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mTabCircle:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TabCircle;

    invoke-virtual {v3, v4, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 630
    iget-object v3, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    iget v4, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->diameter:I

    invoke-direct {p0, v3, v4}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->makeArrowViews(Landroid/widget/FrameLayout;I)V

    .line 631
    iget-object v3, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mTargetCircle:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TargetCircle;

    invoke-virtual {v3, v6}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TargetCircle;->setVisibility(I)V

    .line 632
    iget-object v3, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mTargetCircle:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TargetCircle;

    invoke-virtual {v3, v4, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 633
    iget-object v3, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 634
    iget-object v3, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mParent:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 635
    return-void

    .line 577
    :cond_1
    const v3, -0x57e5f1

    iput v3, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mCircleColor:I

    goto/16 :goto_0

    .line 579
    :cond_2
    iget v3, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mHandleType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 580
    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 581
    iget-object v3, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mTab:Landroid/widget/ImageView;

    const v4, 0x7f020003

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 586
    iget-object v3, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->this$0:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;

    invoke-static {v3}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->access$5(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;)Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    if-ne v3, v9, :cond_3

    .line 587
    const/16 v3, -0x2b00

    iput v3, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mCircleColor:I

    goto/16 :goto_0

    .line 589
    :cond_3
    const v3, -0x951d1

    iput v3, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mCircleColor:I

    goto/16 :goto_0

    .line 598
    :cond_4
    new-instance v3, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TabCircle;

    iget-object v4, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->diameter:I

    mul-int/lit8 v5, v5, 0x3

    div-int/lit8 v5, v5, 0x14

    int-to-float v5, v5

    invoke-direct {v3, p0, v4, v5}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TabCircle;-><init>(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;Landroid/content/Context;F)V

    iput-object v3, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mTabCircle:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TabCircle;

    .line 599
    new-instance v3, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TargetCircle;

    iget-object v4, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->diameter:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-direct {v3, p0, v4, v5}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TargetCircle;-><init>(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;Landroid/content/Context;F)V

    iput-object v3, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mTargetCircle:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TargetCircle;

    goto/16 :goto_1

    .line 602
    :cond_5
    iget-object v3, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->this$0:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;

    invoke-static {v3}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->access$0(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 603
    new-instance v3, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TabCircle;

    iget-object v4, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->diameter:I

    mul-int/lit8 v5, v5, 0x9

    div-int/lit8 v5, v5, 0x3c

    int-to-float v5, v5

    invoke-direct {v3, p0, v4, v5}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TabCircle;-><init>(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;Landroid/content/Context;F)V

    iput-object v3, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mTabCircle:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TabCircle;

    .line 604
    new-instance v3, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TargetCircle;

    iget-object v4, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->diameter:I

    div-int/lit8 v5, v5, 0x3

    add-int/lit8 v5, v5, -0x9

    int-to-float v5, v5

    invoke-direct {v3, p0, v4, v5}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TargetCircle;-><init>(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;Landroid/content/Context;F)V

    iput-object v3, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mTargetCircle:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TargetCircle;

    goto/16 :goto_1

    .line 605
    :cond_6
    iget-object v3, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/shabbatmode/preferences/utilities/ClockUtils;->isTablet600dpTvdpi(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 606
    new-instance v3, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TabCircle;

    iget-object v4, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContext:Landroid/content/Context;

    const/high16 v5, 0x42a60000    # 83.0f

    invoke-direct {v3, p0, v4, v5}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TabCircle;-><init>(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;Landroid/content/Context;F)V

    iput-object v3, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mTabCircle:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TabCircle;

    .line 607
    new-instance v3, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TargetCircle;

    iget-object v4, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->diameter:I

    div-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, -0x9

    int-to-float v5, v5

    invoke-direct {v3, p0, v4, v5}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TargetCircle;-><init>(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;Landroid/content/Context;F)V

    iput-object v3, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mTargetCircle:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TargetCircle;

    goto/16 :goto_1

    .line 608
    :cond_7
    iget-object v3, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/shabbatmode/preferences/utilities/ClockUtils;->isTablet800dpMdpi(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 609
    new-instance v3, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TabCircle;

    iget-object v4, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContext:Landroid/content/Context;

    const/high16 v5, 0x429c0000    # 78.0f

    invoke-direct {v3, p0, v4, v5}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TabCircle;-><init>(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;Landroid/content/Context;F)V

    iput-object v3, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mTabCircle:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TabCircle;

    .line 610
    new-instance v3, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TargetCircle;

    iget-object v4, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->diameter:I

    div-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, -0x9

    int-to-float v5, v5

    invoke-direct {v3, p0, v4, v5}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TargetCircle;-><init>(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;Landroid/content/Context;F)V

    iput-object v3, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mTargetCircle:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TargetCircle;

    goto/16 :goto_1

    .line 612
    :cond_8
    new-instance v3, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TabCircle;

    iget-object v4, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->diameter:I

    mul-int/lit8 v5, v5, 0x9

    div-int/lit8 v5, v5, 0x37

    int-to-float v5, v5

    invoke-direct {v3, p0, v4, v5}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TabCircle;-><init>(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;Landroid/content/Context;F)V

    iput-object v3, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mTabCircle:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TabCircle;

    .line 613
    new-instance v3, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TargetCircle;

    iget-object v4, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->diameter:I

    div-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, -0x9

    int-to-float v5, v5

    invoke-direct {v3, p0, v4, v5}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TargetCircle;-><init>(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;Landroid/content/Context;F)V

    iput-object v3, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mTargetCircle:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TargetCircle;

    goto/16 :goto_1

    .line 621
    :cond_9
    iget-object v3, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/shabbatmode/preferences/utilities/ClockUtils;->isTablet800dpXhdpi(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 622
    iget-object v3, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/shabbatmode/preferences/utilities/ClockUtils;->isTablet600dpTvdpi(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 623
    :cond_a
    iget-object v3, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mTabCircle:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TabCircle;

    invoke-virtual {v3, v6}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TabCircle;->setVisibility(I)V

    goto/16 :goto_2

    .line 625
    :cond_b
    iget-object v3, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mTabCircle:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TabCircle;

    invoke-virtual {v3, v8}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TabCircle;->setVisibility(I)V

    goto/16 :goto_2
.end method

.method private invalidateCircle()V
    .locals 1

    .prologue
    .line 1641
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mTabCircle:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TabCircle;

    invoke-virtual {v0}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TabCircle;->invalidate()V

    .line 1642
    return-void
.end method

.method private makeAlarmLeftArrowViews(Landroid/widget/FrameLayout;I)V
    .locals 13
    .param p1, "container"    # Landroid/widget/FrameLayout;
    .param p2, "diameter"    # I

    .prologue
    .line 761
    new-instance v9, Landroid/widget/LinearLayout;

    iget-object v10, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContext:Landroid/content/Context;

    invoke-direct {v9, v10}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mLeftArrowContainer:Landroid/widget/LinearLayout;

    .line 762
    const/high16 v0, 0x41a00000    # 20.0f

    .line 763
    .local v0, "ALPHA_GAP":F
    iget v9, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->ARROW_COUNT:I

    new-array v9, v9, [Landroid/widget/ImageView;

    iput-object v9, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mLeftArrowImageViews:[Landroid/widget/ImageView;

    .line 764
    const/4 v2, 0x0

    .line 765
    .local v2, "arrowResId":I
    const/4 v4, 0x0

    .line 766
    .local v4, "layoutGravity":I
    const/4 v8, 0x0

    .line 768
    .local v8, "paddingLpValue":I
    iget-object v9, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/sec/shabbatmode/preferences/utilities/ClockUtils;->isTablet600dpTvdpi(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 769
    const/16 v8, 0x5a

    .line 778
    :goto_0
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    mul-int/lit8 v9, p2, 0x3

    .line 779
    div-int/2addr v9, v8

    mul-int/lit8 v10, p2, 0x3

    div-int/lit8 v10, v10, 0x50

    const/4 v11, 0x0

    .line 778
    invoke-direct {v7, v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 781
    .local v7, "paddingLp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v9, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/sec/shabbatmode/preferences/utilities/ClockUtils;->is360Hdpi(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 782
    iget v9, v7, Landroid/widget/LinearLayout$LayoutParams;->width:I

    add-int/lit8 v9, v9, -0x3

    iput v9, v7, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 785
    :cond_0
    iget-object v9, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/sec/shabbatmode/preferences/utilities/ClockUtils;->isTablet600dpTvdpi(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 786
    iget v9, v7, Landroid/widget/LinearLayout$LayoutParams;->width:I

    add-int/lit8 v9, v9, -0x9

    iput v9, v7, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 789
    :cond_1
    const v2, 0x7f020007

    .line 791
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget v9, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->ARROW_COUNT:I

    if-lt v3, v9, :cond_5

    .line 813
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 814
    const/4 v9, -0x2

    const/4 v10, -0x2

    .line 813
    invoke-direct {v5, v9, v10, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 815
    .local v5, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v9, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mLeftArrowContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v9, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 816
    iget-object v9, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mLeftArrowContainer:Landroid/widget/LinearLayout;

    .line 817
    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 816
    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 819
    .local v6, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget-object v9, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->this$0:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;

    invoke-static {v9}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->access$0(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 820
    const/16 v9, 0x1a4

    iput v9, v6, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 833
    :goto_2
    iget-object v9, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mLeftArrowContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 834
    return-void

    .line 770
    .end local v3    # "i":I
    .end local v5    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v6    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v7    # "paddingLp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_2
    iget-object v9, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/sec/shabbatmode/preferences/utilities/ClockUtils;->isTablet800dpMdpi(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 771
    const/16 v8, 0x64

    .line 772
    goto :goto_0

    :cond_3
    iget-object v9, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/sec/shabbatmode/preferences/utilities/ClockUtils;->isTablet800dpXhdpi(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 773
    const/16 v8, 0x64

    .line 774
    goto :goto_0

    .line 775
    :cond_4
    const/16 v8, 0x118

    goto :goto_0

    .line 792
    .restart local v3    # "i":I
    .restart local v7    # "paddingLp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_5
    iget-object v9, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mLeftArrowImageViews:[Landroid/widget/ImageView;

    new-instance v10, Landroid/widget/ImageView;

    iget-object v11, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContext:Landroid/content/Context;

    invoke-direct {v10, v11}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    aput-object v10, v9, v3

    .line 793
    const/4 v1, 0x0

    .line 794
    .local v1, "alpha":I
    const/high16 v9, 0x437f0000    # 255.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x41a00000    # 20.0f

    int-to-float v12, v3

    mul-float/2addr v11, v12

    const/high16 v12, 0x42c80000    # 100.0f

    div-float/2addr v11, v12

    sub-float/2addr v10, v11

    mul-float/2addr v9, v10

    float-to-int v1, v9

    .line 796
    iget-object v9, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->this$0:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;

    invoke-static {v9}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->access$0(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 797
    const/16 v4, 0x15

    .line 802
    :goto_3
    iget-object v9, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mLeftArrowContainer:Landroid/widget/LinearLayout;

    iget-object v10, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mLeftArrowImageViews:[Landroid/widget/ImageView;

    aget-object v10, v10, v3

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 805
    iget v9, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->ARROW_COUNT:I

    add-int/lit8 v9, v9, -0x1

    if-eq v3, v9, :cond_6

    .line 806
    iget-object v9, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mLeftArrowContainer:Landroid/widget/LinearLayout;

    new-instance v10, Landroid/view/View;

    iget-object v11, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContext:Landroid/content/Context;

    invoke-direct {v10, v11}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9, v10, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 809
    :cond_6
    iget-object v9, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mLeftArrowImageViews:[Landroid/widget/ImageView;

    aget-object v9, v9, v3

    invoke-virtual {v9, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 810
    iget-object v9, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mLeftArrowImageViews:[Landroid/widget/ImageView;

    aget-object v9, v9, v3

    invoke-virtual {v9, v1}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 791
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 799
    :cond_7
    const/16 v4, 0x13

    goto :goto_3

    .line 822
    .end local v1    # "alpha":I
    .restart local v5    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v6    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_8
    iget-object v9, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/sec/shabbatmode/preferences/utilities/ClockUtils;->isTablet600dpTvdpi(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 823
    mul-int/lit8 v9, p2, 0xb

    div-int/lit16 v9, v9, 0xb4

    add-int/lit8 v9, v9, 0x3c

    iput v9, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto/16 :goto_2

    .line 824
    :cond_9
    iget-object v9, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/sec/shabbatmode/preferences/utilities/ClockUtils;->isTablet800dpMdpi(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 825
    mul-int/lit8 v9, p2, 0xb

    div-int/lit16 v9, v9, 0xb4

    add-int/lit8 v9, v9, 0x28

    iput v9, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto/16 :goto_2

    .line 826
    :cond_a
    iget-object v9, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/sec/shabbatmode/preferences/utilities/ClockUtils;->isTablet800dpXhdpi(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 827
    mul-int/lit8 v9, p2, 0xb

    div-int/lit8 v9, v9, 0x5a

    iput v9, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto/16 :goto_2

    .line 829
    :cond_b
    const/16 v9, 0x5a

    iput v9, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto/16 :goto_2
.end method

.method private makeArrowAnimation()Landroid/view/animation/AlphaAnimation;
    .locals 4

    .prologue
    .line 1184
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3f19999a    # 0.6f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1185
    .local v0, "alphaAni":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0x384

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1186
    iget-object v1, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContext:Landroid/content/Context;

    .line 1187
    const v2, 0x10a0005

    .line 1186
    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1188
    return-object v0
.end method

.method private makeArrowViews(Landroid/widget/FrameLayout;I)V
    .locals 14
    .param p1, "container"    # Landroid/widget/FrameLayout;
    .param p2, "diameter"    # I

    .prologue
    .line 838
    const-string v10, "AlarmSlidingTab"

    const-string v11, "makeArrowViews"

    invoke-static {v10, v11}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 839
    new-instance v10, Landroid/widget/LinearLayout;

    iget-object v11, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContext:Landroid/content/Context;

    invoke-direct {v10, v11}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mArrowContainer:Landroid/widget/LinearLayout;

    .line 840
    const/high16 v0, 0x41a00000    # 20.0f

    .line 841
    .local v0, "ALPHA_GAP":F
    iget v10, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->ARROW_COUNT:I

    new-array v10, v10, [Landroid/widget/ImageView;

    iput-object v10, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mArrowImageViews:[Landroid/widget/ImageView;

    .line 842
    const/4 v2, 0x0

    .line 843
    .local v2, "arrowResId":I
    const/4 v4, 0x0

    .line 844
    .local v4, "layoutGravity":I
    const/4 v9, 0x0

    .line 845
    .local v9, "paddingLpValue":I
    const/4 v7, 0x0

    .line 847
    .local v7, "marginValue":I
    iget-object v10, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/sec/shabbatmode/preferences/utilities/ClockUtils;->isTablet800dpXhdpi(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 848
    const/16 v9, 0x64

    .line 849
    mul-int/lit8 v10, p2, 0xb

    div-int/lit8 v7, v10, 0x5a

    .line 866
    :goto_0
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    mul-int/lit8 v10, p2, 0x3

    .line 867
    div-int/2addr v10, v9

    mul-int/lit8 v11, p2, 0x3

    div-int/lit8 v11, v11, 0x50

    const/4 v12, 0x0

    .line 866
    invoke-direct {v8, v10, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 869
    .local v8, "paddingLp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v10, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/sec/shabbatmode/preferences/utilities/ClockUtils;->is360Hdpi(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 870
    iget v10, v8, Landroid/widget/LinearLayout$LayoutParams;->width:I

    add-int/lit8 v10, v10, -0x3

    iput v10, v8, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 873
    :cond_0
    iget-object v10, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/sec/shabbatmode/preferences/utilities/ClockUtils;->isTablet600dpTvdpi(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 874
    iget v10, v8, Landroid/widget/LinearLayout$LayoutParams;->width:I

    add-int/lit8 v10, v10, -0x9

    iput v10, v8, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 877
    :cond_1
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget v10, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->ARROW_COUNT:I

    if-lt v3, v10, :cond_7

    .line 920
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 921
    const/4 v10, -0x2

    const/4 v11, -0x2

    .line 920
    invoke-direct {v5, v10, v11, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 922
    .local v5, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v10, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mArrowContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v10, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 923
    iget-object v10, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mArrowContainer:Landroid/widget/LinearLayout;

    .line 924
    invoke-virtual {v10}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 923
    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 926
    .local v6, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v10, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mHandleType:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_1a

    .line 927
    const-string v10, "AlarmSlidingTab"

    const-string v11, "makeArrowViews() - OnTriggerListener.LEFT_HANDLE"

    invoke-static {v10, v11}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 929
    iget-object v10, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/sec/shabbatmode/preferences/utilities/ClockUtils;->isTablet(Landroid/content/Context;)Z

    move-result v10

    if-nez v10, :cond_12

    .line 930
    iget-object v10, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->this$0:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;

    invoke-static {v10}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->access$0(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 931
    iget-object v10, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->this$0:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;

    invoke-static {v10}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->access$1(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 932
    const/16 v10, 0x1b8

    iput v10, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1019
    :cond_2
    :goto_2
    iget-object v10, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mArrowContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1020
    return-void

    .line 850
    .end local v3    # "i":I
    .end local v5    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v6    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v8    # "paddingLp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_3
    iget-object v10, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/sec/shabbatmode/preferences/utilities/ClockUtils;->isTablet600dpTvdpi(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 851
    const/16 v9, 0x5a

    .line 852
    mul-int/lit8 v10, p2, 0xb

    div-int/lit16 v10, v10, 0xb4

    add-int/lit8 v7, v10, 0x3c

    .line 853
    goto :goto_0

    :cond_4
    iget-object v10, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/sec/shabbatmode/preferences/utilities/ClockUtils;->isTablet800dpMdpi(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 854
    const/16 v9, 0x64

    .line 855
    mul-int/lit8 v10, p2, 0xb

    div-int/lit16 v10, v10, 0xb4

    add-int/lit8 v7, v10, 0x28

    .line 856
    goto/16 :goto_0

    .line 857
    :cond_5
    iget-object v10, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->this$0:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;

    invoke-static {v10}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->access$4(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 858
    const/16 v9, 0x118

    .line 859
    mul-int/lit8 v10, p2, 0xb

    div-int/lit16 v7, v10, 0xb4

    .line 860
    goto/16 :goto_0

    .line 861
    :cond_6
    const/16 v9, 0x118

    .line 862
    mul-int/lit8 v10, p2, 0x11

    div-int/lit16 v7, v10, 0xb4

    goto/16 :goto_0

    .line 878
    .restart local v3    # "i":I
    .restart local v8    # "paddingLp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_7
    iget-object v10, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mArrowImageViews:[Landroid/widget/ImageView;

    new-instance v11, Landroid/widget/ImageView;

    iget-object v12, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContext:Landroid/content/Context;

    invoke-direct {v11, v12}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    aput-object v11, v10, v3

    .line 879
    const/4 v1, 0x0

    .line 881
    .local v1, "alpha":I
    iget v10, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mHandleType:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_b

    .line 882
    const v2, 0x7f020008

    .line 884
    iget-object v10, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->this$0:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;

    invoke-static {v10}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->access$0(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 885
    const/16 v4, 0x13

    .line 890
    :goto_3
    const/high16 v10, 0x437f0000    # 255.0f

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v12, 0x41a00000    # 20.0f

    iget v13, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->ARROW_COUNT:I

    sub-int/2addr v13, v3

    add-int/lit8 v13, v13, -0x1

    int-to-float v13, v13

    mul-float/2addr v12, v13

    const/high16 v13, 0x42c80000    # 100.0f

    div-float/2addr v12, v13

    sub-float/2addr v11, v12

    mul-float/2addr v10, v11

    float-to-int v1, v10

    .line 893
    if-eqz v3, :cond_8

    .line 894
    iget-object v10, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mArrowContainer:Landroid/widget/LinearLayout;

    new-instance v11, Landroid/view/View;

    iget-object v12, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContext:Landroid/content/Context;

    invoke-direct {v11, v12}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v10, v11, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 897
    :cond_8
    iget-object v10, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mArrowContainer:Landroid/widget/LinearLayout;

    iget-object v11, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mArrowImageViews:[Landroid/widget/ImageView;

    aget-object v11, v11, v3

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 916
    :cond_9
    :goto_4
    iget-object v10, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mArrowImageViews:[Landroid/widget/ImageView;

    aget-object v10, v10, v3

    invoke-virtual {v10, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 917
    iget-object v10, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mArrowImageViews:[Landroid/widget/ImageView;

    aget-object v10, v10, v3

    invoke-virtual {v10, v1}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 877
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 887
    :cond_a
    const/16 v4, 0x15

    goto :goto_3

    .line 899
    :cond_b
    const/high16 v10, 0x437f0000    # 255.0f

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v12, 0x41a00000    # 20.0f

    int-to-float v13, v3

    mul-float/2addr v12, v13

    const/high16 v13, 0x42c80000    # 100.0f

    div-float/2addr v12, v13

    sub-float/2addr v11, v12

    mul-float/2addr v10, v11

    float-to-int v1, v10

    .line 900
    const v2, 0x7f02000a

    .line 902
    iget-object v10, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->this$0:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;

    invoke-static {v10}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->access$0(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 903
    const/16 v4, 0x15

    .line 908
    :goto_5
    iget-object v10, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mArrowContainer:Landroid/widget/LinearLayout;

    iget-object v11, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mArrowImageViews:[Landroid/widget/ImageView;

    aget-object v11, v11, v3

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 911
    iget v10, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->ARROW_COUNT:I

    add-int/lit8 v10, v10, -0x1

    if-eq v3, v10, :cond_9

    .line 912
    iget-object v10, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mArrowContainer:Landroid/widget/LinearLayout;

    new-instance v11, Landroid/view/View;

    iget-object v12, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContext:Landroid/content/Context;

    invoke-direct {v11, v12}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v10, v11, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_4

    .line 905
    :cond_c
    const/16 v4, 0x13

    goto :goto_5

    .line 934
    .end local v1    # "alpha":I
    .restart local v5    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v6    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_d
    const/16 v10, 0x1a4

    iput v10, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto/16 :goto_2

    .line 936
    :cond_e
    iget-object v10, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->this$0:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;

    invoke-static {v10}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->access$4(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;)Z

    move-result v10

    if-eqz v10, :cond_f

    .line 937
    const/16 v10, 0x5a

    iput v10, v6, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto/16 :goto_2

    .line 938
    :cond_f
    iget-object v10, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/sec/shabbatmode/preferences/utilities/ClockUtils;->is360Xhdpi(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_10

    .line 939
    const/16 v10, 0x46

    iput v10, v6, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 940
    const/16 v10, 0x1e

    iput v10, v6, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto/16 :goto_2

    .line 941
    :cond_10
    iget-object v10, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/sec/shabbatmode/preferences/utilities/ClockUtils;->is360Hdpi(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_11

    .line 942
    const/16 v10, 0x3c

    iput v10, v6, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 943
    const/16 v10, 0x14

    iput v10, v6, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto/16 :goto_2

    .line 945
    :cond_11
    const/16 v10, 0x73

    iput v10, v6, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 946
    const/16 v10, 0x32

    iput v10, v6, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto/16 :goto_2

    .line 949
    :cond_12
    iget-object v10, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->this$0:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;

    invoke-static {v10}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->access$0(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;)Z

    move-result v10

    if-eqz v10, :cond_14

    .line 950
    iget-object v10, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->this$0:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;

    invoke-static {v10}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->access$1(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;)Z

    move-result v10

    if-eqz v10, :cond_13

    .line 951
    const/16 v10, 0x1b8

    iput v10, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto/16 :goto_2

    .line 953
    :cond_13
    const/16 v10, 0x1a4

    iput v10, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto/16 :goto_2

    .line 955
    :cond_14
    iget-object v10, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/sec/shabbatmode/preferences/utilities/ClockUtils;->isTablet600dpTvdpi(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_16

    .line 956
    iget-object v10, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->this$0:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;

    invoke-static {v10}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->access$4(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;)Z

    move-result v10

    if-eqz v10, :cond_15

    .line 957
    iput v7, v6, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 958
    const/4 v10, 0x0

    iput v10, v6, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto/16 :goto_2

    .line 960
    :cond_15
    const/16 v10, 0xa0

    iput v10, v6, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto/16 :goto_2

    .line 962
    :cond_16
    iget-object v10, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/sec/shabbatmode/preferences/utilities/ClockUtils;->isTablet800dpMdpi(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_18

    .line 963
    iget-object v10, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->this$0:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;

    invoke-static {v10}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->access$4(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;)Z

    move-result v10

    if-eqz v10, :cond_17

    .line 964
    iput v7, v6, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto/16 :goto_2

    .line 966
    :cond_17
    const/16 v10, 0x8c

    iput v10, v6, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto/16 :goto_2

    .line 968
    :cond_18
    iget-object v10, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/sec/shabbatmode/preferences/utilities/ClockUtils;->isTablet800dpXhdpi(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 969
    iget-object v10, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->this$0:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;

    invoke-static {v10}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->access$4(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;)Z

    move-result v10

    if-eqz v10, :cond_19

    .line 970
    iput v7, v6, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto/16 :goto_2

    .line 972
    :cond_19
    const/16 v10, 0xfa

    iput v10, v6, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto/16 :goto_2

    .line 977
    :cond_1a
    const-string v10, "AlarmSlidingTab"

    const-string v11, "makeArrowViews() - OnTriggerListener.Right_HANDLE"

    invoke-static {v10, v11}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 979
    iget-object v10, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/sec/shabbatmode/preferences/utilities/ClockUtils;->isTablet(Landroid/content/Context;)Z

    move-result v10

    if-nez v10, :cond_20

    .line 980
    iget-object v10, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->this$0:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;

    invoke-static {v10}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->access$0(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;)Z

    move-result v10

    if-eqz v10, :cond_1c

    .line 981
    iget-object v10, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->this$0:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;

    invoke-static {v10}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->access$1(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;)Z

    move-result v10

    if-eqz v10, :cond_1b

    .line 982
    const/16 v10, 0x1b8

    iput v10, v6, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto/16 :goto_2

    .line 984
    :cond_1b
    const/16 v10, 0x1a4

    iput v10, v6, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto/16 :goto_2

    .line 986
    :cond_1c
    iget-object v10, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->this$0:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;

    invoke-static {v10}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->access$4(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;)Z

    move-result v10

    if-eqz v10, :cond_1d

    .line 987
    const/4 v10, 0x0

    iput v10, v6, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto/16 :goto_2

    .line 988
    :cond_1d
    iget-object v10, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/sec/shabbatmode/preferences/utilities/ClockUtils;->is360Xhdpi(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_1e

    .line 989
    const/16 v10, 0x46

    iput v10, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 990
    const/16 v10, 0x1e

    iput v10, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto/16 :goto_2

    .line 991
    :cond_1e
    iget-object v10, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/sec/shabbatmode/preferences/utilities/ClockUtils;->is360Hdpi(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_1f

    .line 992
    const/16 v10, 0x3c

    iput v10, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 993
    const/16 v10, 0x14

    iput v10, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto/16 :goto_2

    .line 995
    :cond_1f
    const/16 v10, 0x73

    iput v10, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 996
    const/16 v10, 0x32

    iput v10, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto/16 :goto_2

    .line 999
    :cond_20
    iget-object v10, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->this$0:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;

    invoke-static {v10}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->access$0(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;)Z

    move-result v10

    if-eqz v10, :cond_22

    .line 1000
    iget-object v10, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->this$0:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;

    invoke-static {v10}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->access$1(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;)Z

    move-result v10

    if-eqz v10, :cond_21

    .line 1001
    const/16 v10, 0x1b8

    iput v10, v6, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto/16 :goto_2

    .line 1003
    :cond_21
    const/16 v10, 0x1a4

    iput v10, v6, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto/16 :goto_2

    .line 1005
    :cond_22
    iget-object v10, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/sec/shabbatmode/preferences/utilities/ClockUtils;->isTablet600dpTvdpi(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_23

    .line 1006
    const/16 v10, 0xa0

    iput v10, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto/16 :goto_2

    .line 1007
    :cond_23
    iget-object v10, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/sec/shabbatmode/preferences/utilities/ClockUtils;->isTablet800dpMdpi(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_24

    .line 1008
    const/16 v10, 0x8c

    iput v10, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto/16 :goto_2

    .line 1009
    :cond_24
    iget-object v10, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/sec/shabbatmode/preferences/utilities/ClockUtils;->isTablet800dpXhdpi(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_25

    .line 1010
    add-int/lit8 v10, v7, 0x64

    iput v10, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto/16 :goto_2

    .line 1011
    :cond_25
    iget-object v10, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->this$0:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;

    invoke-static {v10}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->access$0(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;)Z

    move-result v10

    if-nez v10, :cond_26

    .line 1012
    const/16 v10, 0xf0

    iput v10, v6, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto/16 :goto_2

    .line 1014
    :cond_26
    iput v7, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto/16 :goto_2
.end method

.method private reInit()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, -0x2

    const/4 v7, 0x0

    .line 638
    const-string v5, "AlarmSlidingTab"

    const-string v6, "Handle - reInit()"

    invoke-static {v5, v6}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    iget-object v5, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mParent:Landroid/view/ViewGroup;

    iget-object v6, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 640
    iput-object v7, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mTab:Landroid/widget/ImageView;

    .line 641
    iput-object v7, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    .line 642
    iput-object v7, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mLeftArrowContainer:Landroid/widget/LinearLayout;

    .line 643
    iput-object v7, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mLeftArrowImageViews:[Landroid/widget/ImageView;

    .line 644
    new-instance v5, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$4;

    iget-object v6, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContext:Landroid/content/Context;

    invoke-direct {v5, p0, v6}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$4;-><init>(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;Landroid/content/Context;)V

    iput-object v5, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    .line 658
    iget-object v5, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 659
    .local v3, "metrics":Landroid/util/DisplayMetrics;
    iget v5, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v6, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    mul-int/lit8 v5, v5, 0x4

    div-int/lit8 v1, v5, 0x5

    .line 660
    .local v1, "diameter":I
    move v4, v1

    .line 662
    .local v4, "param":I
    iget-object v5, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/shabbatmode/preferences/utilities/ClockUtils;->isTablet600dpTvdpi(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 663
    add-int/lit8 v4, v4, 0x64

    .line 666
    :cond_0
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    add-int/lit8 v5, v4, -0x64

    invoke-direct {v0, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 667
    .local v0, "containerParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v5, 0xc

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 668
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 669
    const/16 v5, 0x11

    .line 668
    invoke-direct {v2, v8, v8, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 671
    .local v2, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    new-instance v5, Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mTab:Landroid/widget/ImageView;

    .line 672
    const/16 v5, 0x9

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 673
    iget-object v5, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mTab:Landroid/widget/ImageView;

    const/high16 v6, 0x7f020000

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 678
    iget-object v5, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-direct {p0, v5, v1}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->makeAlarmLeftArrowViews(Landroid/widget/FrameLayout;I)V

    .line 680
    iget-object v5, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->this$0:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;

    invoke-static {v5}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->access$0(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 681
    new-instance v5, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TabCircle;

    iget-object v6, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContext:Landroid/content/Context;

    div-int/lit8 v7, v1, 0x7

    int-to-float v7, v7

    invoke-direct {v5, p0, v6, v7}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TabCircle;-><init>(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;Landroid/content/Context;F)V

    iput-object v5, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mTabCircle:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TabCircle;

    .line 697
    :goto_0
    iget-object v5, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-direct {p0, v5, v1}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->makeArrowViews(Landroid/widget/FrameLayout;I)V

    .line 699
    iget-object v5, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->this$0:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;

    invoke-static {v5}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->access$0(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 700
    new-instance v5, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TargetCircle;

    iget-object v6, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContext:Landroid/content/Context;

    div-int/lit8 v7, v1, 0x3

    int-to-float v7, v7

    invoke-direct {v5, p0, v6, v7}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TargetCircle;-><init>(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;Landroid/content/Context;F)V

    iput-object v5, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mTargetCircle:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TargetCircle;

    .line 707
    :goto_1
    iget-object v5, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mTabCircle:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TabCircle;

    invoke-virtual {v5, v9}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TabCircle;->setVisibility(I)V

    .line 708
    iget-object v5, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mTab:Landroid/widget/ImageView;

    invoke-virtual {v5, v6, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 709
    iget-object v5, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mTabCircle:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TabCircle;

    invoke-virtual {v5, v6, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 710
    iget-object v5, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mTargetCircle:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TargetCircle;

    invoke-virtual {v5, v9}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TargetCircle;->setVisibility(I)V

    .line 711
    iget-object v5, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mTargetCircle:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TargetCircle;

    invoke-virtual {v5, v6, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 712
    iget-object v5, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 713
    iget-object v5, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mParent:Landroid/view/ViewGroup;

    iget-object v6, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 714
    return-void

    .line 682
    :cond_1
    iget-object v5, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/shabbatmode/preferences/utilities/ClockUtils;->isTablet600dpi(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 683
    new-instance v5, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TabCircle;

    iget-object v6, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContext:Landroid/content/Context;

    const/high16 v7, 0x428c0000    # 70.0f

    invoke-direct {v5, p0, v6, v7}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TabCircle;-><init>(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;Landroid/content/Context;F)V

    iput-object v5, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mTabCircle:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TabCircle;

    goto :goto_0

    .line 684
    :cond_2
    iget-object v5, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/shabbatmode/preferences/utilities/ClockUtils;->isTablet600dpTvdpi(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 685
    new-instance v5, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TabCircle;

    iget-object v6, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContext:Landroid/content/Context;

    const/high16 v7, 0x42a60000    # 83.0f

    invoke-direct {v5, p0, v6, v7}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TabCircle;-><init>(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;Landroid/content/Context;F)V

    iput-object v5, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mTabCircle:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TabCircle;

    goto :goto_0

    .line 686
    :cond_3
    iget-object v5, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/shabbatmode/preferences/utilities/ClockUtils;->isTablet800dpMdpi(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 687
    new-instance v5, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TabCircle;

    iget-object v6, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContext:Landroid/content/Context;

    const/high16 v7, 0x429c0000    # 78.0f

    invoke-direct {v5, p0, v6, v7}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TabCircle;-><init>(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;Landroid/content/Context;F)V

    iput-object v5, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mTabCircle:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TabCircle;

    goto :goto_0

    .line 688
    :cond_4
    iget-object v5, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/shabbatmode/preferences/utilities/ClockUtils;->isTablet800dpXhdpi(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 689
    new-instance v5, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TabCircle;

    iget-object v6, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContext:Landroid/content/Context;

    div-int/lit8 v7, v1, 0x7

    add-int/lit8 v7, v7, -0xf

    int-to-float v7, v7

    invoke-direct {v5, p0, v6, v7}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TabCircle;-><init>(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;Landroid/content/Context;F)V

    iput-object v5, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mTabCircle:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TabCircle;

    goto/16 :goto_0

    .line 690
    :cond_5
    iget-object v5, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/shabbatmode/preferences/utilities/ClockUtils;->isTablet800dpi(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 691
    new-instance v5, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TabCircle;

    iget-object v6, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContext:Landroid/content/Context;

    mul-int/lit8 v7, v1, 0x9

    div-int/lit8 v7, v7, 0x37

    int-to-float v7, v7

    invoke-direct {v5, p0, v6, v7}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TabCircle;-><init>(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;Landroid/content/Context;F)V

    iput-object v5, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mTabCircle:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TabCircle;

    goto/16 :goto_0

    .line 693
    :cond_6
    new-instance v5, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TabCircle;

    iget-object v6, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContext:Landroid/content/Context;

    div-int/lit8 v7, v1, 0x6

    int-to-float v7, v7

    invoke-direct {v5, p0, v6, v7}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TabCircle;-><init>(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;Landroid/content/Context;F)V

    iput-object v5, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mTabCircle:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TabCircle;

    goto/16 :goto_0

    .line 701
    :cond_7
    iget-object v5, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/shabbatmode/preferences/utilities/ClockUtils;->isTablet800dpXhdpi(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 702
    new-instance v5, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TargetCircle;

    iget-object v6, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContext:Landroid/content/Context;

    div-int/lit8 v7, v1, 0x2

    add-int/lit16 v7, v7, -0x8c

    int-to-float v7, v7

    invoke-direct {v5, p0, v6, v7}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TargetCircle;-><init>(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;Landroid/content/Context;F)V

    iput-object v5, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mTargetCircle:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TargetCircle;

    goto/16 :goto_1

    .line 704
    :cond_8
    new-instance v5, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TargetCircle;

    iget-object v6, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContext:Landroid/content/Context;

    div-int/lit8 v7, v1, 0x2

    int-to-float v7, v7

    invoke-direct {v5, p0, v6, v7}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TargetCircle;-><init>(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;Landroid/content/Context;F)V

    iput-object v5, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mTargetCircle:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TargetCircle;

    goto/16 :goto_1
.end method

.method private reset()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v1, 0x3f800000    # 1.0f

    .line 1614
    const-string v3, "AlarmSlidingTab"

    const-string v4, " reset() "

    invoke-static {v3, v4}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 1615
    new-instance v8, Landroid/view/animation/AnimationSet;

    invoke-direct {v8, v10}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1616
    .local v8, "aniSet":Landroid/view/animation/AnimationSet;
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    .line 1617
    iget-object v3, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mTargetCircle:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TargetCircle;

    invoke-virtual {v3}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TargetCircle;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v5, v3

    iget-object v3, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mTargetCircle:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TargetCircle;

    invoke-virtual {v3}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TargetCircle;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v6, v3

    move v3, v1

    move v4, v2

    .line 1616
    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 1618
    .local v0, "scaleAni":Landroid/view/animation/ScaleAnimation;
    invoke-virtual {v8, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1619
    new-instance v7, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    invoke-direct {v7, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1620
    .local v7, "alphaAni":Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v8, v7}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1621
    const-wide/16 v2, 0x190

    invoke-virtual {v8, v2, v3}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 1622
    iget-object v1, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContext:Landroid/content/Context;

    .line 1623
    const v2, 0x10a0005

    .line 1622
    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1624
    iget-object v1, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mTargetCircle:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TargetCircle;

    invoke-virtual {v1}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TargetCircle;->clearAnimation()V

    .line 1625
    iget-object v1, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mTargetCircle:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TargetCircle;

    invoke-virtual {v1, v8}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TargetCircle;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1626
    iget-object v1, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mTargetCircle:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TargetCircle;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TargetCircle;->setVisibility(I)V

    .line 1627
    iget-object v1, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mTabCircle:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TabCircle;

    invoke-virtual {v1}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TabCircle;->clearAnimation()V

    .line 1628
    iget-object v1, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mTabCircle:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TabCircle;

    invoke-virtual {v1, v8}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TabCircle;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1629
    iget-object v1, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mTabCircle:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TabCircle;

    invoke-virtual {v1, v9}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TabCircle;->setVisibility(I)V

    .line 1631
    iget v1, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mHandleType:I

    if-ne v1, v10, :cond_0

    .line 1632
    iget-object v1, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mTab:Landroid/widget/ImageView;

    const/high16 v2, 0x7f020000

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1637
    :goto_0
    invoke-direct {p0, v9}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->showArrow(Z)V

    .line 1638
    return-void

    .line 1634
    :cond_0
    iget-object v1, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mTab:Landroid/widget/ImageView;

    const v2, 0x7f020003

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method private setDisable()V
    .locals 6

    .prologue
    const v5, 0x7f020001

    const/4 v4, 0x1

    .line 1649
    const-string v1, "AlarmSlidingTab"

    const-string v2, " setDisable() "

    invoke-static {v1, v2}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 1650
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3eb33333    # 0.35f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1651
    .local v0, "alphaAni":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1652
    invoke-virtual {v0, v4}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 1654
    iget v1, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mHandleType:I

    if-ne v1, v4, :cond_0

    .line 1655
    iget-object v1, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mTab:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1660
    :goto_0
    iget-object v1, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mTab:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1661
    iget-object v1, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mTabCircle:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TabCircle;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TabCircle;->setVisibility(I)V

    .line 1662
    invoke-direct {p0}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->hideArrow()V

    .line 1663
    return-void

    .line 1657
    :cond_0
    iget-object v1, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mTab:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method private setEnable()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1729
    const-string v1, "AlarmSlidingTab"

    const-string v2, " setEnable() "

    invoke-static {v1, v2}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 1730
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const v1, 0x3eb33333    # 0.35f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1731
    .local v0, "tabAni":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1732
    invoke-virtual {v0, v4}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 1734
    iget v1, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mHandleType:I

    if-ne v1, v4, :cond_0

    .line 1735
    iget-object v1, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mTab:Landroid/widget/ImageView;

    const/high16 v2, 0x7f020000

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1740
    :goto_0
    iget-object v1, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mTab:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1741
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->showArrow(Z)V

    .line 1742
    return-void

    .line 1737
    :cond_0
    iget-object v1, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mTab:Landroid/widget/ImageView;

    const v2, 0x7f020003

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method private showArrow(Z)V
    .locals 6
    .param p1, "isDelayReq"    # Z

    .prologue
    const-wide/16 v4, 0x258

    const/4 v3, 0x0

    const/16 v2, 0x64

    .line 1023
    const-string v0, "AlarmSlidingTab"

    const-string v1, "showArrow()"

    invoke-static {v0, v1}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 1025
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isShown()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1026
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mLeftArrowContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 1027
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mLeftArrowContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1030
    :cond_0
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mArrowContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1032
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1033
    if-eqz p1, :cond_3

    .line 1034
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1040
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mLeftHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mLeftHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1041
    if-eqz p1, :cond_4

    .line 1042
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mLeftHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1048
    :cond_2
    :goto_1
    return-void

    .line 1036
    :cond_3
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1044
    :cond_4
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mLeftHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1
.end method

.method private showTarget()V
    .locals 13

    .prologue
    const/high16 v1, 0x3f000000    # 0.5f

    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 1565
    const-string v3, "AlarmSlidingTab"

    const-string v4, " showTarget()"

    invoke-static {v3, v4}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 1567
    iget-object v3, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->this$0:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;

    invoke-static {v3}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->access$9(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1568
    iget-object v1, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->this$0:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;

    iget v2, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mHandleType:I

    invoke-static {v1, v2}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->access$10(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;I)V

    .line 1607
    :goto_0
    return-void

    .line 1572
    :cond_0
    new-instance v8, Landroid/view/animation/AnimationSet;

    invoke-direct {v8, v11}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1573
    .local v8, "aniSet":Landroid/view/animation/AnimationSet;
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    .line 1574
    iget-object v3, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mTargetCircle:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TargetCircle;

    invoke-virtual {v3}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TargetCircle;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v5, v3

    iget-object v3, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mTargetCircle:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TargetCircle;

    invoke-virtual {v3}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TargetCircle;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v6, v3

    move v3, v1

    move v4, v2

    .line 1573
    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 1575
    .local v0, "scaleAni":Landroid/view/animation/ScaleAnimation;
    invoke-virtual {v8, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1576
    new-instance v7, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    invoke-direct {v7, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1577
    .local v7, "alphaAni":Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v8, v7}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1578
    const-wide/16 v2, 0x190

    invoke-virtual {v8, v2, v3}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 1579
    iget-object v1, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContext:Landroid/content/Context;

    .line 1580
    const v2, 0x10a0006

    .line 1579
    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1581
    invoke-virtual {v8, v11}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 1582
    iget-object v1, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mTargetCircle:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TargetCircle;

    invoke-virtual {v1, v8}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TargetCircle;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1583
    iget-object v1, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mTabCircle:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TabCircle;

    invoke-virtual {v1, v8}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TabCircle;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1584
    iget-object v1, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mTabCircle:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TabCircle;

    invoke-virtual {v1, v10}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TabCircle;->setVisibility(I)V

    .line 1585
    iget-object v1, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mTargetCircle:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TargetCircle;

    invoke-virtual {v1, v10}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TargetCircle;->setVisibility(I)V

    .line 1587
    iget-object v1, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mTab:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    .line 1588
    iget-object v1, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mTab:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 1590
    .local v9, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v9, :cond_1

    .line 1592
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v9, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1597
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mTab:Landroid/widget/ImageView;

    invoke-virtual {v1, v12}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1598
    iget-object v1, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mTab:Landroid/widget/ImageView;

    invoke-virtual {v1, v12}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1599
    iget-object v1, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mTab:Landroid/widget/ImageView;

    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1602
    .end local v9    # "d":Landroid/graphics/drawable/Drawable;
    :cond_2
    iget v1, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mHandleType:I

    if-ne v1, v11, :cond_3

    .line 1603
    iget-object v1, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mTab:Landroid/widget/ImageView;

    const v2, 0x7f020002

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 1605
    :cond_3
    iget-object v1, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mTab:Landroid/widget/ImageView;

    const v2, 0x7f020002

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 1593
    .restart local v9    # "d":Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public getState()I
    .locals 1

    .prologue
    .line 1553
    iget v0, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mCurrentState:I

    return v0
.end method

.method public isHandleSelected(FF)Z
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 1786
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 1787
    iget-object v1, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->this$0:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;

    invoke-static {v1}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->access$5(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;)Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1789
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->this$0:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;

    invoke-static {v0}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->access$5(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;)Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-object v1, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->this$0:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;

    invoke-virtual {v1}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mTopOffset:I

    .line 1791
    iget v0, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mTopOffset:I

    if-gez v0, :cond_0

    .line 1792
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mTopOffset:I

    .line 1795
    :cond_0
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mTabCircle:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TabCircle;

    invoke-virtual {v0, p1, p2}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TabCircle;->isInCircle(FF)Z

    move-result v0

    return v0
.end method

.method public makeLayout()V
    .locals 10

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 1196
    iget-object v5, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->this$0:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;

    invoke-static {v5}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->access$8(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;)Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 1197
    const/4 v2, 0x0

    .line 1199
    .local v2, "marginX":I
    iget-object v5, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->this$0:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;

    invoke-static {v5}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->access$5(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;)Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v6, 0x140

    if-ne v5, v6, :cond_1

    .line 1200
    iget-object v5, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v5

    mul-int/lit8 v5, v5, 0x25

    div-int/lit16 v2, v5, 0x80

    .line 1205
    :goto_0
    iget-object v5, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->this$0:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;

    invoke-virtual {v5}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    if-ne v5, v7, :cond_d

    .line 1206
    iget v5, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mHandleType:I

    if-ne v5, v7, :cond_7

    .line 1207
    iget-object v5, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v5

    sub-int v0, v5, v2

    .line 1208
    .local v0, "leftHandleLeft":I
    const/4 v1, 0x0

    .line 1210
    .local v1, "leftHandleTop":I
    iget-object v5, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->this$0:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;

    invoke-virtual {v5}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/shabbatmode/preferences/utilities/ClockUtils;->isTablet(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1211
    iget-object v5, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/shabbatmode/preferences/utilities/ClockUtils;->isTablet600dpi(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1212
    add-int/lit8 v0, v0, 0x32

    .line 1213
    const/16 v1, 0x26c

    .line 1232
    :goto_1
    iget-object v5, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v6

    .line 1233
    add-int/2addr v6, v0

    iget-object v7, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v7

    add-int/2addr v7, v1

    .line 1232
    invoke-virtual {v5, v0, v1, v6, v7}, Landroid/widget/FrameLayout;->layout(IIII)V

    .line 1436
    .end local v0    # "leftHandleLeft":I
    .end local v1    # "leftHandleTop":I
    .end local v2    # "marginX":I
    :cond_0
    :goto_2
    return-void

    .line 1202
    .restart local v2    # "marginX":I
    :cond_1
    iget-object v5, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v5

    mul-int/lit8 v5, v5, 0x27

    div-int/lit16 v2, v5, 0x80

    goto :goto_0

    .line 1214
    .restart local v0    # "leftHandleLeft":I
    .restart local v1    # "leftHandleTop":I
    :cond_2
    iget-object v5, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/shabbatmode/preferences/utilities/ClockUtils;->isTablet800dpMdpi(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1215
    add-int/lit8 v0, v0, -0xa

    .line 1216
    const/16 v1, 0x26c

    .line 1217
    goto :goto_1

    :cond_3
    iget-object v5, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/shabbatmode/preferences/utilities/ClockUtils;->isTablet800dpXhdpi(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1218
    add-int/lit8 v0, v0, -0x64

    .line 1219
    iget-object v5, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getTop()I

    move-result v5

    iget-object v6, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getTop()I

    move-result v6

    div-int/lit8 v6, v6, 0xa

    add-int/2addr v5, v6

    add-int/lit8 v1, v5, 0x50

    .line 1220
    goto :goto_1

    .line 1221
    :cond_4
    iget-object v5, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getTop()I

    move-result v5

    iget-object v6, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getTop()I

    move-result v6

    div-int/lit8 v6, v6, 0xa

    add-int v1, v5, v6

    .line 1223
    goto :goto_1

    .line 1224
    :cond_5
    iget-object v5, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/shabbatmode/preferences/utilities/ClockUtils;->is360Xhdpi(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1225
    const/16 v0, -0xd7

    .line 1226
    const/16 v1, 0x2ab

    .line 1227
    goto :goto_1

    .line 1228
    :cond_6
    iget-object v5, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getTop()I

    move-result v5

    iget-object v6, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x10

    add-int v1, v5, v6

    goto :goto_1

    .line 1234
    .end local v0    # "leftHandleLeft":I
    .end local v1    # "leftHandleTop":I
    :cond_7
    iget v5, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mHandleType:I

    if-ne v5, v8, :cond_0

    .line 1235
    iget-object v5, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v5

    add-int v3, v5, v2

    .line 1236
    .local v3, "rightHandleLeft":I
    const/4 v4, 0x0

    .line 1238
    .local v4, "rightHandleTop":I
    iget-object v5, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->this$0:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;

    invoke-virtual {v5}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/shabbatmode/preferences/utilities/ClockUtils;->isTablet(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 1239
    iget-object v5, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/shabbatmode/preferences/utilities/ClockUtils;->isTablet600dpi(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1240
    add-int/lit8 v3, v3, -0x32

    .line 1241
    const/16 v4, 0x26c

    .line 1261
    :goto_3
    iget-object v5, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v6

    .line 1262
    add-int/2addr v6, v3

    iget-object v7, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v7

    add-int/2addr v7, v4

    .line 1261
    invoke-virtual {v5, v3, v4, v6, v7}, Landroid/widget/FrameLayout;->layout(IIII)V

    goto/16 :goto_2

    .line 1242
    :cond_8
    iget-object v5, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/shabbatmode/preferences/utilities/ClockUtils;->isTablet800dpMdpi(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1243
    add-int/lit8 v3, v3, 0x14

    .line 1244
    const/16 v4, 0x26c

    .line 1245
    goto :goto_3

    :cond_9
    iget-object v5, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/shabbatmode/preferences/utilities/ClockUtils;->isTablet800dpXhdpi(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1246
    add-int/lit8 v3, v3, 0x64

    .line 1247
    iget-object v5, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getTop()I

    move-result v5

    iget-object v6, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getTop()I

    move-result v6

    div-int/lit8 v6, v6, 0xa

    add-int/2addr v5, v6

    add-int/lit8 v4, v5, 0x50

    .line 1249
    goto :goto_3

    .line 1250
    :cond_a
    iget-object v5, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getTop()I

    move-result v5

    iget-object v6, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getTop()I

    move-result v6

    div-int/lit8 v6, v6, 0xa

    add-int v4, v5, v6

    .line 1252
    goto :goto_3

    .line 1253
    :cond_b
    iget-object v5, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/shabbatmode/preferences/utilities/ClockUtils;->is360Xhdpi(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 1254
    const/16 v3, 0x101

    .line 1255
    const/16 v4, 0x2ab

    .line 1256
    goto :goto_3

    .line 1257
    :cond_c
    iget-object v5, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getTop()I

    move-result v5

    iget-object v6, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x10

    add-int v4, v5, v6

    goto :goto_3

    .line 1265
    .end local v3    # "rightHandleLeft":I
    .end local v4    # "rightHandleTop":I
    :cond_d
    const/4 v1, 0x0

    .line 1266
    .restart local v1    # "leftHandleTop":I
    const/4 v0, 0x0

    .line 1268
    .restart local v0    # "leftHandleLeft":I
    iget v5, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mHandleType:I

    if-ne v5, v7, :cond_16

    .line 1269
    iget-object v5, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->this$0:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;

    invoke-virtual {v5}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/shabbatmode/preferences/utilities/ClockUtils;->isTablet(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 1270
    iget-object v5, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v5

    iget-object v6, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v6

    mul-int/lit8 v6, v6, 0x5

    div-int/lit8 v6, v6, 0x28

    sub-int v0, v5, v6

    .line 1272
    iget-object v5, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/shabbatmode/preferences/utilities/ClockUtils;->isTablet600dpTvdpi(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 1273
    add-int/lit16 v0, v0, -0x82

    .line 1274
    add-int/lit16 v1, v1, 0xdc

    .line 1302
    :cond_e
    :goto_4
    iget-object v5, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/shabbatmode/preferences/utilities/ClockUtils;->isTablet800dpXhdpi(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 1303
    iget-object v5, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    add-int/lit16 v6, v0, -0x10e

    add-int/lit16 v7, v1, 0x1ef

    .line 1304
    iget-object v8, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v8

    add-int/2addr v8, v0

    add-int/lit16 v8, v8, -0x10e

    .line 1305
    iget-object v9, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v9

    add-int/2addr v9, v1

    add-int/lit16 v9, v9, 0x1ef

    .line 1303
    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/widget/FrameLayout;->layout(IIII)V

    goto/16 :goto_2

    .line 1275
    :cond_f
    iget-object v5, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/shabbatmode/preferences/utilities/ClockUtils;->isTablet600dpi(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 1276
    add-int/lit8 v0, v0, -0x50

    .line 1277
    const/16 v1, 0x46

    .line 1278
    goto :goto_4

    :cond_10
    iget-object v5, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/shabbatmode/preferences/utilities/ClockUtils;->isTablet800dpMdpi(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 1279
    add-int/lit8 v0, v0, -0x78

    .line 1280
    add-int/lit16 v1, v1, 0xfa

    .line 1282
    goto :goto_4

    .line 1283
    :cond_11
    iget-object v5, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v5

    iget-object v6, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v6

    mul-int/lit8 v6, v6, 0x5

    div-int/lit8 v6, v6, 0x14

    sub-int v0, v5, v6

    .line 1286
    iget-object v5, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/shabbatmode/preferences/utilities/ClockUtils;->is360Xhdpi(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 1287
    const/16 v1, 0xe4

    .line 1288
    goto :goto_4

    :cond_12
    iget-object v5, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/shabbatmode/preferences/utilities/ClockUtils;->is360Xxhdp(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 1290
    iget-object v5, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getTop()I

    move-result v5

    iget-object v6, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    .line 1291
    div-int/lit8 v6, v6, 0x8

    .line 1290
    add-int/2addr v5, v6

    add-int/lit8 v1, v5, 0x19

    .line 1292
    goto :goto_4

    :cond_13
    iget-object v5, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/shabbatmode/preferences/utilities/ClockUtils;->is360Xxxhdp(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 1294
    iget-object v5, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getTop()I

    move-result v5

    iget-object v6, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    .line 1295
    div-int/lit8 v6, v6, 0x8

    .line 1294
    add-int/2addr v5, v6

    add-int/lit8 v1, v5, 0x23

    .line 1296
    goto/16 :goto_4

    .line 1297
    :cond_14
    iget-object v5, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getTop()I

    move-result v5

    iget-object v6, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    .line 1298
    div-int/lit8 v6, v6, 0x8

    .line 1297
    add-int v1, v5, v6

    goto/16 :goto_4

    .line 1307
    :cond_15
    iget-object v5, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v6

    .line 1308
    add-int/2addr v6, v0

    iget-object v7, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v7

    add-int/2addr v7, v1

    .line 1307
    invoke-virtual {v5, v0, v1, v6, v7}, Landroid/widget/FrameLayout;->layout(IIII)V

    goto/16 :goto_2

    .line 1310
    :cond_16
    iget v5, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mHandleType:I

    if-ne v5, v8, :cond_0

    .line 1311
    const/4 v4, 0x0

    .line 1312
    .restart local v4    # "rightHandleTop":I
    const/4 v3, 0x0

    .line 1314
    .restart local v3    # "rightHandleLeft":I
    iget-object v5, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->this$0:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;

    invoke-virtual {v5}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/shabbatmode/preferences/utilities/ClockUtils;->isTablet(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 1315
    iget-object v5, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v5

    iget-object v6, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v6

    mul-int/lit8 v6, v6, 0x5

    div-int/lit8 v6, v6, 0x28

    add-int v3, v5, v6

    .line 1317
    iget-object v5, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/shabbatmode/preferences/utilities/ClockUtils;->isTablet600dpTvdpi(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 1318
    add-int/lit16 v3, v3, 0x82

    .line 1319
    add-int/lit16 v4, v4, 0xdc

    .line 1347
    :cond_17
    :goto_5
    iget-object v5, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/shabbatmode/preferences/utilities/ClockUtils;->isTablet800dpXhdpi(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 1348
    iget-object v5, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    add-int/lit16 v6, v3, 0x10e

    add-int/lit16 v7, v4, 0x1ef

    .line 1349
    iget-object v8, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v8

    add-int/2addr v8, v3

    add-int/lit16 v8, v8, 0x10e

    .line 1350
    iget-object v9, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v9

    add-int/2addr v9, v4

    add-int/lit16 v9, v9, 0x1ef

    .line 1348
    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/widget/FrameLayout;->layout(IIII)V

    goto/16 :goto_2

    .line 1320
    :cond_18
    iget-object v5, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/shabbatmode/preferences/utilities/ClockUtils;->isTablet600dpi(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 1321
    add-int/lit8 v3, v3, 0x50

    .line 1322
    const/16 v4, 0x46

    .line 1323
    goto :goto_5

    :cond_19
    iget-object v5, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/shabbatmode/preferences/utilities/ClockUtils;->isTablet800dpMdpi(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 1324
    add-int/lit8 v3, v3, 0x78

    .line 1325
    add-int/lit16 v4, v4, 0xfa

    .line 1327
    goto :goto_5

    .line 1328
    :cond_1a
    iget-object v5, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v5

    iget-object v6, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v6

    mul-int/lit8 v6, v6, 0x5

    div-int/lit8 v6, v6, 0x14

    add-int v3, v5, v6

    .line 1331
    iget-object v5, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/shabbatmode/preferences/utilities/ClockUtils;->is360Xhdpi(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 1332
    const/16 v4, 0xe4

    .line 1333
    goto :goto_5

    :cond_1b
    iget-object v5, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/shabbatmode/preferences/utilities/ClockUtils;->is360Xxhdp(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 1335
    iget-object v5, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getTop()I

    move-result v5

    iget-object v6, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    .line 1336
    div-int/lit8 v6, v6, 0x8

    .line 1335
    add-int/2addr v5, v6

    add-int/lit8 v4, v5, 0x19

    .line 1337
    goto :goto_5

    :cond_1c
    iget-object v5, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/shabbatmode/preferences/utilities/ClockUtils;->is360Xxxhdp(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 1339
    iget-object v5, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getTop()I

    move-result v5

    iget-object v6, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    .line 1340
    div-int/lit8 v6, v6, 0x8

    .line 1339
    add-int/2addr v5, v6

    add-int/lit8 v4, v5, 0x23

    .line 1341
    goto/16 :goto_5

    .line 1342
    :cond_1d
    iget-object v5, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getTop()I

    move-result v5

    iget-object v6, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    .line 1343
    div-int/lit8 v6, v6, 0x8

    .line 1342
    add-int v4, v5, v6

    goto/16 :goto_5

    .line 1352
    :cond_1e
    iget-object v5, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    .line 1353
    iget-object v6, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v6

    add-int/2addr v6, v3

    iget-object v7, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v7

    .line 1354
    add-int/2addr v7, v4

    .line 1352
    invoke-virtual {v5, v3, v4, v6, v7}, Landroid/widget/FrameLayout;->layout(IIII)V

    goto/16 :goto_2

    .line 1359
    .end local v0    # "leftHandleLeft":I
    .end local v1    # "leftHandleTop":I
    .end local v2    # "marginX":I
    .end local v3    # "rightHandleLeft":I
    .end local v4    # "rightHandleTop":I
    :cond_1f
    const/4 v1, 0x0

    .line 1360
    .restart local v1    # "leftHandleTop":I
    const/4 v0, 0x0

    .line 1362
    .restart local v0    # "leftHandleLeft":I
    iget-object v5, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->this$0:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;

    invoke-virtual {v5}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    if-ne v5, v7, :cond_25

    .line 1363
    iget-object v5, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->this$0:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;

    invoke-virtual {v5}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/shabbatmode/preferences/utilities/ClockUtils;->isTablet(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_23

    .line 1364
    iget-object v5, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/shabbatmode/preferences/utilities/ClockUtils;->isTablet600dpi(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_21

    .line 1365
    const/16 v1, 0x26c

    .line 1370
    :goto_6
    iget-object v5, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/shabbatmode/preferences/utilities/ClockUtils;->isTablet800dpXhdpi(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_22

    .line 1371
    iget-object v5, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v5

    iget-object v6, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x8

    add-int/2addr v5, v6

    add-int/lit8 v0, v5, -0x3f

    .line 1372
    iget-object v5, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getTop()I

    move-result v5

    iget-object v6, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getTop()I

    move-result v6

    div-int/lit8 v6, v6, 0xa

    add-int/2addr v5, v6

    add-int/lit8 v1, v5, -0xa

    .line 1433
    :cond_20
    :goto_7
    iget-object v5, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v6

    .line 1434
    add-int/2addr v6, v0

    iget-object v7, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v7

    add-int/2addr v7, v1

    .line 1433
    invoke-virtual {v5, v0, v1, v6, v7}, Landroid/widget/FrameLayout;->layout(IIII)V

    goto/16 :goto_2

    .line 1367
    :cond_21
    iget-object v5, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getTop()I

    move-result v5

    iget-object v6, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getTop()I

    move-result v6

    div-int/lit8 v6, v6, 0xa

    add-int v1, v5, v6

    goto :goto_6

    .line 1374
    :cond_22
    iget-object v5, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v5

    iget-object v6, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x8

    add-int v0, v5, v6

    .line 1376
    goto :goto_7

    .line 1377
    :cond_23
    iget-object v5, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/shabbatmode/preferences/utilities/ClockUtils;->is360Xhdpi(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_24

    .line 1378
    const/16 v1, 0x2ab

    .line 1379
    const/16 v0, 0x18

    .line 1380
    goto :goto_7

    .line 1381
    :cond_24
    iget-object v5, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getTop()I

    move-result v5

    iget-object v6, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x10

    add-int/2addr v5, v6

    add-int/lit8 v1, v5, -0x32

    .line 1382
    iget-object v5, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v5

    iget-object v6, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x8

    add-int/2addr v5, v6

    add-int/lit8 v0, v5, -0x3c

    .line 1385
    goto :goto_7

    .line 1386
    :cond_25
    iget-object v5, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v5

    iget-object v6, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v6

    mul-int/lit8 v6, v6, 0x9

    div-int/lit8 v6, v6, 0x10

    add-int v0, v5, v6

    .line 1388
    iget-object v5, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->this$0:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;

    invoke-virtual {v5}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/shabbatmode/preferences/utilities/ClockUtils;->isTablet(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_29

    .line 1389
    iget-object v5, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/shabbatmode/preferences/utilities/ClockUtils;->isTablet600dpi(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_26

    .line 1390
    const/16 v1, 0xfa

    .line 1391
    goto/16 :goto_7

    :cond_26
    iget-object v5, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/shabbatmode/preferences/utilities/ClockUtils;->isTablet800dpMdpi(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_27

    .line 1392
    iget-object v5, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v5

    iget-object v6, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v6

    mul-int/lit8 v6, v6, 0x9

    div-int/lit8 v6, v6, 0x10

    add-int/2addr v5, v6

    add-int/lit8 v0, v5, -0x28

    .line 1394
    iget-object v5, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getTop()I

    move-result v5

    iget-object v6, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    div-int/lit8 v6, v6, 0xa

    add-int v1, v5, v6

    .line 1395
    goto/16 :goto_7

    :cond_27
    iget-object v5, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/shabbatmode/preferences/utilities/ClockUtils;->isTablet800dpXhdpi(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_28

    .line 1396
    iget-object v5, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v5

    iget-object v6, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v6

    mul-int/lit8 v6, v6, 0x9

    div-int/lit8 v6, v6, 0x10

    add-int/2addr v5, v6

    add-int/lit16 v0, v5, -0xbe

    .line 1398
    iget-object v5, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getTop()I

    move-result v5

    iget-object v6, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    div-int/lit8 v6, v6, 0xa

    add-int/2addr v5, v6

    add-int/lit8 v1, v5, 0x50

    .line 1400
    goto/16 :goto_7

    :cond_28
    iget-object v5, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/shabbatmode/preferences/utilities/ClockUtils;->isTablet600dpTvdpi(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_20

    .line 1401
    iget-object v5, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getTop()I

    move-result v5

    iget-object v6, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    div-int/lit8 v6, v6, 0xa

    add-int v1, v5, v6

    .line 1402
    iget-object v5, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v5

    iget-object v6, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v6

    mul-int/lit8 v6, v6, 0x9

    div-int/lit8 v6, v6, 0x10

    add-int/2addr v5, v6

    add-int/lit8 v0, v5, -0x28

    .line 1405
    goto/16 :goto_7

    .line 1412
    :cond_29
    iget-object v5, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v5

    iget-object v6, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v6

    mul-int/lit8 v6, v6, 0x9

    div-int/lit8 v6, v6, 0x10

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x1e

    add-int/lit8 v0, v5, -0x64

    .line 1417
    iget-object v5, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/shabbatmode/preferences/utilities/ClockUtils;->is360Xhdpi(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_2a

    .line 1418
    const/16 v1, 0xe4

    .line 1419
    goto/16 :goto_7

    :cond_2a
    iget-object v5, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/shabbatmode/preferences/utilities/ClockUtils;->is360Xxhdp(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 1420
    iget-object v5, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getTop()I

    move-result v5

    iget-object v6, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    div-int/lit8 v6, v6, 0x8

    add-int/2addr v5, v6

    add-int/lit8 v1, v5, 0x8

    .line 1422
    goto/16 :goto_7

    :cond_2b
    iget-object v5, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/shabbatmode/preferences/utilities/ClockUtils;->is360Xxxhdp(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_2c

    .line 1424
    iget-object v5, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getTop()I

    move-result v5

    iget-object v6, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    div-int/lit8 v6, v6, 0x8

    add-int/2addr v5, v6

    add-int/lit8 v1, v5, 0x5

    .line 1426
    goto/16 :goto_7

    .line 1427
    :cond_2c
    iget-object v5, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getTop()I

    move-result v5

    iget-object v6, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    div-int/lit8 v6, v6, 0x8

    add-int/2addr v5, v6

    add-int/lit8 v1, v5, 0x2d

    goto/16 :goto_7
.end method

.method public makeMWLayout(IIII)V
    .locals 12
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    .line 1442
    iget-object v6, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->this$0:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;

    invoke-virtual {v6}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1444
    .local v3, "r":Landroid/content/res/Resources;
    iget-object v6, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->this$0:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;

    invoke-static {v6}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->access$8(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1445
    const/4 v2, 0x0

    .line 1447
    .local v2, "marginX":I
    iget-object v6, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->this$0:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;

    invoke-static {v6}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->access$5(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;)Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v7, 0x140

    if-ne v6, v7, :cond_1

    .line 1448
    iget-object v6, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v6

    mul-int/lit8 v6, v6, 0x25

    div-int/lit16 v2, v6, 0x80

    .line 1453
    :goto_0
    const/4 v1, 0x0

    .line 1454
    .local v1, "leftHandleTop":I
    iget-object v6, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v6

    sub-int v0, v6, v2

    .line 1456
    .local v0, "leftHandleLeft":I
    iget v6, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mHandleType:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3

    .line 1457
    iget-object v6, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->this$0:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;

    invoke-virtual {v6}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/shabbatmode/preferences/utilities/ClockUtils;->isTablet(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1458
    const/16 v1, -0x190

    .line 1464
    :goto_1
    iget-object v6, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    iget-object v7, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v7

    .line 1465
    add-int/2addr v7, v0

    iget-object v8, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v8

    add-int/2addr v8, v1

    .line 1464
    invoke-virtual {v6, v0, v1, v7, v8}, Landroid/widget/FrameLayout;->layout(IIII)V

    .line 1502
    .end local v2    # "marginX":I
    :cond_0
    :goto_2
    return-void

    .line 1450
    .end local v0    # "leftHandleLeft":I
    .end local v1    # "leftHandleTop":I
    .restart local v2    # "marginX":I
    :cond_1
    iget-object v6, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v6

    mul-int/lit8 v6, v6, 0x27

    div-int/lit16 v2, v6, 0x80

    goto :goto_0

    .line 1460
    .restart local v0    # "leftHandleLeft":I
    .restart local v1    # "leftHandleTop":I
    :cond_2
    iget-object v6, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v6

    iget-object v7, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v7

    mul-int/lit8 v7, v7, 0x5

    div-int/lit8 v7, v7, 0x14

    sub-int v0, v6, v7

    .line 1461
    iget-object v6, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getTop()I

    move-result v6

    iget-object v7, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x6

    add-int v1, v6, v7

    goto :goto_1

    .line 1466
    :cond_3
    iget v6, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mHandleType:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    .line 1467
    const/4 v5, 0x0

    .line 1468
    .local v5, "rightHandleTop":I
    iget-object v6, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v6

    add-int v4, v6, v2

    .line 1470
    .local v4, "rightHandleLeft":I
    iget-object v6, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->this$0:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;

    invoke-virtual {v6}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/shabbatmode/preferences/utilities/ClockUtils;->isTablet(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1471
    const/16 v5, -0x190

    .line 1477
    :goto_3
    iget-object v6, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    iget-object v7, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v7

    .line 1478
    add-int/2addr v7, v4

    iget-object v8, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v8

    add-int/2addr v8, v5

    .line 1477
    invoke-virtual {v6, v4, v5, v7, v8}, Landroid/widget/FrameLayout;->layout(IIII)V

    goto :goto_2

    .line 1473
    :cond_4
    iget-object v6, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v6

    iget-object v7, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v7

    mul-int/lit8 v7, v7, 0x5

    div-int/lit8 v7, v7, 0x14

    add-int v4, v6, v7

    .line 1474
    iget-object v6, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getTop()I

    move-result v6

    iget-object v7, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x6

    add-int v5, v6, v7

    goto :goto_3

    .line 1481
    .end local v0    # "leftHandleLeft":I
    .end local v1    # "leftHandleTop":I
    .end local v2    # "marginX":I
    .end local v4    # "rightHandleLeft":I
    .end local v5    # "rightHandleTop":I
    :cond_5
    const/4 v1, 0x0

    .line 1482
    .restart local v1    # "leftHandleTop":I
    iget-object v6, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v6

    iget-object v7, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v7

    mul-int/lit8 v7, v7, 0x9

    div-int/lit8 v7, v7, 0x10

    add-int v0, v6, v7

    .line 1484
    .restart local v0    # "leftHandleLeft":I
    iget-object v6, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->this$0:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;

    invoke-virtual {v6}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/shabbatmode/preferences/utilities/ClockUtils;->isTablet(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 1485
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 v7, 0x228

    if-ne v6, v7, :cond_6

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    const/16 v7, 0x400

    if-eq v6, v7, :cond_7

    .line 1486
    :cond_6
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 v7, 0x400

    if-ne v6, v7, :cond_8

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    const/16 v7, 0x228

    if-ne v6, v7, :cond_8

    .line 1487
    :cond_7
    iget-object v6, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getTop()I

    move-result v6

    iget-object v7, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    div-int/lit8 v7, v7, 0x7

    add-int v1, v6, v7

    .line 1488
    iget-object v6, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v6

    iget-object v7, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    div-int/lit8 v7, v7, 0x3

    add-int v0, v6, v7

    .line 1493
    :goto_4
    const/16 v1, -0x190

    .line 1494
    int-to-double v6, p3

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    iget-object v8, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v8

    int-to-double v8, v8

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v8, v10

    sub-double/2addr v6, v8

    double-to-int v0, v6

    .line 1499
    :goto_5
    iget-object v6, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    iget-object v7, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v7

    .line 1500
    add-int/2addr v7, v0

    iget-object v8, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v8

    add-int/2addr v8, v1

    .line 1499
    invoke-virtual {v6, v0, v1, v7, v8}, Landroid/widget/FrameLayout;->layout(IIII)V

    goto/16 :goto_2

    .line 1490
    :cond_8
    iget-object v6, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getTop()I

    move-result v6

    iget-object v7, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    div-int/lit8 v7, v7, 0xa

    add-int v1, v6, v7

    goto :goto_4

    .line 1496
    :cond_9
    iget-object v6, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getTop()I

    move-result v6

    iget-object v7, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    div-int/lit8 v7, v7, 0x8

    add-int v1, v6, v7

    goto :goto_5
.end method

.method public processMoveEvent(Landroid/view/MotionEvent;)V
    .locals 6
    .param p1, "motion"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    .line 1750
    iget v2, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mCurrentState:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1751
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 1752
    .local v0, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 1754
    .local v1, "y":F
    iget-object v2, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mTargetCircle:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TargetCircle;

    invoke-virtual {v2, v0, v1}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TargetCircle;->isThresholdReached(FF)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1755
    iget-object v2, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mTargetCircle:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TargetCircle;

    invoke-virtual {v2}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TargetCircle;->clearAnimation()V

    .line 1756
    iget-object v2, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mTabCircle:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TabCircle;

    invoke-virtual {v2}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TabCircle;->clearAnimation()V

    .line 1757
    iget-object v2, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mTabCircle:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TabCircle;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TabCircle;->setVisibility(I)V

    .line 1758
    iget-object v2, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->this$0:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;

    invoke-static {v2, v4}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->access$11(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;Z)V

    .line 1759
    iget-object v2, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->this$0:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;

    iget v3, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mHandleType:I

    invoke-static {v2, v3}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->access$10(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;I)V

    .line 1760
    iget-object v2, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->this$0:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;

    invoke-static {v2, v4}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->access$12(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;I)V

    .line 1762
    iget-object v2, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    .line 1763
    iget-object v2, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$5;

    invoke-direct {v3, p0}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$5;-><init>(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;)V

    .line 1769
    const-wide/16 v4, 0x1f4

    .line 1763
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1783
    .end local v0    # "x":F
    .end local v1    # "y":F
    :cond_0
    :goto_0
    return-void

    .line 1772
    .restart local v0    # "x":F
    .restart local v1    # "y":F
    :cond_1
    iget-object v2, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mTabCircle:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TabCircle;

    invoke-virtual {v2, v0, v1}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TabCircle;->isInCircle(FF)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1773
    invoke-direct {p0, v4}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->showArrow(Z)V

    .line 1778
    :goto_1
    iget-object v2, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mTabCircle:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TabCircle;

    const/16 v3, 0x7f

    invoke-virtual {v2, v3}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TabCircle;->setAlpha(I)V

    .line 1779
    iget-object v2, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mTabCircle:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TabCircle;

    iget-object v3, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mTabCircle:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TabCircle;

    invoke-virtual {v3, v0, v1}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TabCircle;->getLengthToTarget(FF)D

    move-result-wide v4

    double-to-int v3, v4

    int-to-float v3, v3

    invoke-static {v2, v3}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TabCircle;->access$0(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TabCircle;F)V

    .line 1780
    iget-object v2, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mTabCircle:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TabCircle;

    invoke-virtual {v2}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TabCircle;->invalidate()V

    goto :goto_0

    .line 1775
    :cond_2
    invoke-direct {p0}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->hideArrow()V

    goto :goto_1
.end method

.method public remake(Z)V
    .locals 12
    .param p1, "full"    # Z

    .prologue
    .line 717
    iget-object v2, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->this$0:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;

    invoke-static {v2}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->access$0(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 718
    iget-object v2, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 721
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    if-nez p1, :cond_4

    .line 722
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    mul-int/lit8 v2, v2, 0x4

    div-int/lit8 v0, v2, 0x8

    .line 723
    .local v0, "diameter":I
    int-to-double v2, v0

    int-to-double v4, v0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v4, v6

    iget v6, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v6, v6

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    div-double/2addr v4, v6

    iget v6, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v6, v6

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    iget-object v8, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->this$0:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;

    invoke-static {v8}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->access$7(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;)I

    move-result v8

    int-to-double v8, v8

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v8, v10

    sub-double/2addr v6, v8

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    double-to-int v0, v2

    .line 725
    if-gez v0, :cond_0

    .line 726
    const/4 v0, 0x0

    .line 729
    :cond_0
    iget-object v2, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mTabCircle:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TabCircle;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TabCircle;->setRadius(ZF)V

    .line 730
    iget-object v2, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mTargetCircle:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TargetCircle;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TargetCircle;->setRadius(ZF)V

    .line 732
    iget v2, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mHandleType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 733
    iget-object v2, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mTab:Landroid/widget/ImageView;

    const v3, 0x7f02001d

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 749
    :goto_0
    iget-object v2, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->this$0:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;

    invoke-static {v2}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;->access$8(Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 750
    iget-object v2, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mArrowContainer:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_1

    .line 751
    iget-object v2, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mArrowContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 754
    :cond_1
    iget-object v2, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-direct {p0, v2, v0}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->makeArrowViews(Landroid/widget/FrameLayout;I)V

    .line 757
    .end local v0    # "diameter":I
    .end local v1    # "metrics":Landroid/util/DisplayMetrics;
    :cond_2
    return-void

    .line 735
    .restart local v0    # "diameter":I
    .restart local v1    # "metrics":Landroid/util/DisplayMetrics;
    :cond_3
    iget-object v2, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mTab:Landroid/widget/ImageView;

    const v3, 0x7f02001f

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 738
    .end local v0    # "diameter":I
    :cond_4
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    mul-int/lit8 v2, v2, 0x4

    div-int/lit8 v0, v2, 0x5

    .line 739
    .restart local v0    # "diameter":I
    iget-object v2, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mTabCircle:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TabCircle;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TabCircle;->setRadius(ZF)V

    .line 740
    iget-object v2, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mTargetCircle:Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TargetCircle;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle$TargetCircle;->setRadius(ZF)V

    .line 742
    iget v2, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mHandleType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    .line 743
    iget-object v2, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mTab:Landroid/widget/ImageView;

    const v3, 0x7f02001c

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 745
    :cond_5
    iget-object v2, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mTab:Landroid/widget/ImageView;

    const v3, 0x7f02001e

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public setState(I)V
    .locals 5
    .param p1, "newState"    # I

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x65

    const/16 v2, 0x64

    .line 1509
    iget v0, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mCurrentState:I

    .line 1510
    .local v0, "preState":I
    iput p1, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mCurrentState:I

    .line 1512
    iget v1, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mCurrentState:I

    packed-switch v1, :pswitch_data_0

    .line 1546
    :cond_0
    :goto_0
    return-void

    .line 1514
    :pswitch_0
    invoke-direct {p0}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->showTarget()V

    goto :goto_0

    .line 1518
    :pswitch_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1519
    invoke-direct {p0}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->reset()V

    goto :goto_0

    .line 1520
    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1521
    invoke-direct {p0}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->setEnable()V

    goto :goto_0

    .line 1526
    :pswitch_2
    invoke-direct {p0}, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->setDisable()V

    goto :goto_0

    .line 1530
    :pswitch_3
    iget-object v1, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_2

    .line 1531
    iget-object v1, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1532
    iget-object v1, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1533
    iput-object v4, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mHandler:Landroid/os/Handler;

    .line 1536
    :cond_2
    iget-object v1, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mLeftHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 1537
    iget-object v1, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mLeftHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1538
    iget-object v1, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mLeftHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1539
    iput-object v4, p0, Lcom/sec/shabbatmode/preferences/utilities/AlarmSlidingTab$Handle;->mLeftHandler:Landroid/os/Handler;

    goto :goto_0

    .line 1512
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
