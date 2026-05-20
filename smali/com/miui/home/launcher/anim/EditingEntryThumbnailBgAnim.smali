.class public Lcom/miui/home/launcher/anim/EditingEntryThumbnailBgAnim;
.super Lcom/miui/home/launcher/anim/ThumbnailBackgroundAnimController;
.source "EditingEntryThumbnailBgAnim.java"


# instance fields
.field private final mBorderLineAlphaAnimator:Landroid/animation/ValueAnimator;

.field private final mBorderLineAnimatorSet:Landroid/animation/AnimatorSet;

.field private final mBorderLinePaint:Landroid/graphics/Paint;

.field private final mBorderLineRadiusAnimator:Landroid/animation/ValueAnimator;

.field private mBorderLineWidth:F

.field private mBorderlineController:Lcom/miui/home/launcher/anim/EditingEntryBackgroundLineController;

.field private mBorderlineSelectedColor:I

.field private mCurType:Lcom/miui/home/launcher/anim/BackgroundType;

.field private mCurrentAlpha:I

.field private mPadding:F


# direct methods
.method public static synthetic $r8$lambda$6tHZ2IthLkfR-MpB3eZNH4246Iw(Lcom/miui/home/launcher/anim/EditingEntryThumbnailBgAnim;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/anim/EditingEntryThumbnailBgAnim;->lambda$initAnimation$1(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$97Ai9-0PYUsi4c3EDF39KlU5OHI(Lcom/miui/home/launcher/anim/EditingEntryThumbnailBgAnim;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/anim/EditingEntryThumbnailBgAnim;->lambda$initAnimation$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>(Lcom/miui/home/launcher/AutoLayoutThumbnailItem;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/anim/ThumbnailBackgroundAnimController;-><init>(Landroid/view/View;)V

    .line 17
    new-instance p1, Landroid/animation/ValueAnimator;

    invoke-direct {p1}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/anim/EditingEntryThumbnailBgAnim;->mBorderLineAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 18
    new-instance p1, Landroid/animation/ValueAnimator;

    invoke-direct {p1}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/anim/EditingEntryThumbnailBgAnim;->mBorderLineRadiusAnimator:Landroid/animation/ValueAnimator;

    .line 19
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/anim/EditingEntryThumbnailBgAnim;->mBorderLineAnimatorSet:Landroid/animation/AnimatorSet;

    .line 30
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/anim/EditingEntryThumbnailBgAnim;->mBorderLinePaint:Landroid/graphics/Paint;

    const/4 p1, 0x0

    .line 34
    iput p1, p0, Lcom/miui/home/launcher/anim/EditingEntryThumbnailBgAnim;->mCurrentAlpha:I

    .line 38
    invoke-direct {p0}, Lcom/miui/home/launcher/anim/EditingEntryThumbnailBgAnim;->initColor()V

    .line 39
    invoke-direct {p0}, Lcom/miui/home/launcher/anim/EditingEntryThumbnailBgAnim;->initParam()V

    .line 40
    invoke-direct {p0}, Lcom/miui/home/launcher/anim/EditingEntryThumbnailBgAnim;->initAnimation()V

    .line 41
    invoke-direct {p0}, Lcom/miui/home/launcher/anim/EditingEntryThumbnailBgAnim;->initController()V

    return-void
.end method

.method private initAnimation()V
    .locals 4

    .line 65
    iget-object v0, p0, Lcom/miui/home/launcher/anim/EditingEntryThumbnailBgAnim;->mBorderLineAlphaAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/miui/home/launcher/common/Ease$Cubic;->easeOut:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 66
    iget-object v0, p0, Lcom/miui/home/launcher/anim/EditingEntryThumbnailBgAnim;->mBorderLineAlphaAnimator:Landroid/animation/ValueAnimator;

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 67
    iget-object v0, p0, Lcom/miui/home/launcher/anim/EditingEntryThumbnailBgAnim;->mBorderLineAlphaAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/miui/home/launcher/anim/EditingEntryThumbnailBgAnim$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lcom/miui/home/launcher/anim/EditingEntryThumbnailBgAnim$$ExternalSyntheticLambda1;-><init>(Lcom/miui/home/launcher/anim/EditingEntryThumbnailBgAnim;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 74
    iget-object v0, p0, Lcom/miui/home/launcher/anim/EditingEntryThumbnailBgAnim;->mBorderLineRadiusAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 75
    iget-object v0, p0, Lcom/miui/home/launcher/anim/EditingEntryThumbnailBgAnim;->mBorderLineRadiusAnimator:Landroid/animation/ValueAnimator;

    new-array v1, v2, [F

    fill-array-data v1, :array_1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 76
    iget-object v0, p0, Lcom/miui/home/launcher/anim/EditingEntryThumbnailBgAnim;->mBorderLineRadiusAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/miui/home/launcher/anim/EditingEntryThumbnailBgAnim$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/anim/EditingEntryThumbnailBgAnim$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/launcher/anim/EditingEntryThumbnailBgAnim;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 82
    iget-object v0, p0, Lcom/miui/home/launcher/anim/EditingEntryThumbnailBgAnim;->mBorderLineAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v1, v2, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/miui/home/launcher/anim/EditingEntryThumbnailBgAnim;->mBorderLineAlphaAnimator:Landroid/animation/ValueAnimator;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/miui/home/launcher/anim/EditingEntryThumbnailBgAnim;->mBorderLineRadiusAnimator:Landroid/animation/ValueAnimator;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 83
    iget-object p0, p0, Lcom/miui/home/launcher/anim/EditingEntryThumbnailBgAnim;->mBorderLineAnimatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v0, 0xc8

    invoke-virtual {p0, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f666666    # 0.9f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private initColor()V
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/miui/home/launcher/anim/ThumbnailBackgroundAnimController;->mTargetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 46
    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->hasAppliedLightWallpaper()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f06004d

    .line 47
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/anim/EditingEntryThumbnailBgAnim;->mBorderlineSelectedColor:I

    goto :goto_0

    :cond_0
    const v1, 0x7f0606d3

    .line 49
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/anim/EditingEntryThumbnailBgAnim;->mBorderlineSelectedColor:I

    :goto_0
    return-void
.end method

.method private initController()V
    .locals 3

    .line 87
    iget-object v0, p0, Lcom/miui/home/launcher/anim/ThumbnailBackgroundAnimController;->mTargetView:Landroid/view/View;

    .line 88
    instance-of v1, v0, Lcom/miui/home/launcher/AutoLayoutThumbnailItem;

    if-eqz v1, :cond_0

    .line 89
    check-cast v0, Lcom/miui/home/launcher/AutoLayoutThumbnailItem;

    invoke-virtual {v0}, Lcom/miui/home/launcher/AutoLayoutThumbnailItem;->autoChangeBgView()Landroid/view/View;

    move-result-object v0

    .line 91
    :cond_0
    new-instance v1, Lcom/miui/home/launcher/anim/EditingEntryBackgroundLineController;

    iget v2, p0, Lcom/miui/home/launcher/anim/EditingEntryThumbnailBgAnim;->mBorderlineSelectedColor:I

    invoke-direct {v1, v0, v2}, Lcom/miui/home/launcher/anim/EditingEntryBackgroundLineController;-><init>(Landroid/view/View;I)V

    iput-object v1, p0, Lcom/miui/home/launcher/anim/EditingEntryThumbnailBgAnim;->mBorderlineController:Lcom/miui/home/launcher/anim/EditingEntryBackgroundLineController;

    .line 92
    iget-object p0, p0, Lcom/miui/home/launcher/anim/EditingEntryThumbnailBgAnim;->mBorderLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p0}, Lcom/miui/home/launcher/anim/EditingEntryBackgroundLineController;->setBgdPaint(Landroid/graphics/Paint;)V

    return-void
.end method

.method private initParam()V
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/miui/home/launcher/anim/ThumbnailBackgroundAnimController;->mTargetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0702ae

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/anim/EditingEntryThumbnailBgAnim;->mBorderLineWidth:F

    .line 55
    iget-object v0, p0, Lcom/miui/home/launcher/anim/EditingEntryThumbnailBgAnim;->mBorderLinePaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 56
    iget-object v0, p0, Lcom/miui/home/launcher/anim/EditingEntryThumbnailBgAnim;->mBorderLinePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 57
    iget-object v0, p0, Lcom/miui/home/launcher/anim/EditingEntryThumbnailBgAnim;->mBorderLinePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/miui/home/launcher/anim/EditingEntryThumbnailBgAnim;->mBorderLineWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 58
    iget-object v0, p0, Lcom/miui/home/launcher/anim/EditingEntryThumbnailBgAnim;->mBorderLinePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/miui/home/launcher/anim/EditingEntryThumbnailBgAnim;->mBorderlineSelectedColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 59
    iget-object v0, p0, Lcom/miui/home/launcher/anim/EditingEntryThumbnailBgAnim;->mBorderLinePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/miui/home/launcher/anim/EditingEntryThumbnailBgAnim;->mCurrentAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 60
    sget-object v0, Lcom/miui/home/launcher/anim/BackgroundType;->NORMAL:Lcom/miui/home/launcher/anim/BackgroundType;

    iput-object v0, p0, Lcom/miui/home/launcher/anim/EditingEntryThumbnailBgAnim;->mCurType:Lcom/miui/home/launcher/anim/BackgroundType;

    .line 61
    iget v0, p0, Lcom/miui/home/launcher/anim/EditingEntryThumbnailBgAnim;->mBorderLineWidth:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/miui/home/launcher/anim/EditingEntryThumbnailBgAnim;->mPadding:F

    return-void
.end method

.method private synthetic lambda$initAnimation$0(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 68
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    .line 69
    iput p1, p0, Lcom/miui/home/launcher/anim/EditingEntryThumbnailBgAnim;->mCurrentAlpha:I

    .line 70
    iget-object v0, p0, Lcom/miui/home/launcher/anim/EditingEntryThumbnailBgAnim;->mBorderLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 71
    iget-object p0, p0, Lcom/miui/home/launcher/anim/ThumbnailBackgroundAnimController;->mTargetView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic lambda$initAnimation$1(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 77
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 78
    iget v0, p0, Lcom/miui/home/launcher/anim/EditingEntryThumbnailBgAnim;->mBorderLineWidth:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float v2, v0, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    mul-float/2addr v0, v1

    add-float/2addr v2, v0

    iput v2, p0, Lcom/miui/home/launcher/anim/EditingEntryThumbnailBgAnim;->mPadding:F

    .line 79
    iget-object p0, p0, Lcom/miui/home/launcher/anim/ThumbnailBackgroundAnimController;->mTargetView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method public drawBackground(Landroid/graphics/Canvas;)V
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/miui/home/launcher/anim/ThumbnailBackgroundAnimController;->mTargetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0702aa

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 105
    iget-object v1, p0, Lcom/miui/home/launcher/anim/EditingEntryThumbnailBgAnim;->mBorderlineController:Lcom/miui/home/launcher/anim/EditingEntryBackgroundLineController;

    iget p0, p0, Lcom/miui/home/launcher/anim/EditingEntryThumbnailBgAnim;->mPadding:F

    invoke-virtual {v1, p1, p0, v0}, Lcom/miui/home/launcher/anim/EditingEntryBackgroundLineController;->drawBackground(Landroid/graphics/Canvas;FI)V

    return-void
.end method

.method public onWallpaperColorChanged()V
    .locals 2

    .line 96
    invoke-direct {p0}, Lcom/miui/home/launcher/anim/EditingEntryThumbnailBgAnim;->initColor()V

    .line 97
    iget-object v0, p0, Lcom/miui/home/launcher/anim/EditingEntryThumbnailBgAnim;->mBorderLinePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/miui/home/launcher/anim/EditingEntryThumbnailBgAnim;->mBorderlineSelectedColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 98
    iget-object v0, p0, Lcom/miui/home/launcher/anim/EditingEntryThumbnailBgAnim;->mBorderLinePaint:Landroid/graphics/Paint;

    iget p0, p0, Lcom/miui/home/launcher/anim/EditingEntryThumbnailBgAnim;->mCurrentAlpha:I

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public updateBackground(Lcom/miui/home/launcher/anim/BackgroundType;Z)V
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/miui/home/launcher/anim/EditingEntryThumbnailBgAnim;->mCurType:Lcom/miui/home/launcher/anim/BackgroundType;

    if-ne v0, p1, :cond_0

    return-void

    .line 111
    :cond_0
    iput-object p1, p0, Lcom/miui/home/launcher/anim/EditingEntryThumbnailBgAnim;->mCurType:Lcom/miui/home/launcher/anim/BackgroundType;

    if-eqz p2, :cond_2

    .line 113
    sget-object p2, Lcom/miui/home/launcher/anim/BackgroundType;->SELECT:Lcom/miui/home/launcher/anim/BackgroundType;

    const/4 v0, 0x2

    if-ne p1, p2, :cond_1

    .line 114
    iget-object p1, p0, Lcom/miui/home/launcher/anim/EditingEntryThumbnailBgAnim;->mBorderLineAlphaAnimator:Landroid/animation/ValueAnimator;

    sget-object p2, Lcom/miui/home/launcher/common/Ease$Cubic;->easeIn:Landroid/animation/TimeInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 115
    iget-object p1, p0, Lcom/miui/home/launcher/anim/EditingEntryThumbnailBgAnim;->mBorderLineRadiusAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 116
    iget-object p1, p0, Lcom/miui/home/launcher/anim/EditingEntryThumbnailBgAnim;->mBorderLineAlphaAnimator:Landroid/animation/ValueAnimator;

    new-array p2, v0, [F

    fill-array-data p2, :array_0

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 117
    iget-object p1, p0, Lcom/miui/home/launcher/anim/EditingEntryThumbnailBgAnim;->mBorderLineRadiusAnimator:Landroid/animation/ValueAnimator;

    new-array p2, v0, [F

    fill-array-data p2, :array_1

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    goto :goto_0

    .line 119
    :cond_1
    iget-object p1, p0, Lcom/miui/home/launcher/anim/EditingEntryThumbnailBgAnim;->mBorderLineAlphaAnimator:Landroid/animation/ValueAnimator;

    sget-object p2, Lcom/miui/home/launcher/common/Ease$Cubic;->easeOut:Landroid/animation/TimeInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 120
    iget-object p1, p0, Lcom/miui/home/launcher/anim/EditingEntryThumbnailBgAnim;->mBorderLineRadiusAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 121
    iget-object p1, p0, Lcom/miui/home/launcher/anim/EditingEntryThumbnailBgAnim;->mBorderLineAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 122
    iget-object p1, p0, Lcom/miui/home/launcher/anim/EditingEntryThumbnailBgAnim;->mBorderLineAlphaAnimator:Landroid/animation/ValueAnimator;

    new-array p2, v0, [F

    fill-array-data p2, :array_2

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 123
    iget-object p1, p0, Lcom/miui/home/launcher/anim/EditingEntryThumbnailBgAnim;->mBorderLineRadiusAnimator:Landroid/animation/ValueAnimator;

    new-array p2, v0, [F

    fill-array-data p2, :array_3

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 125
    :goto_0
    iget-object p0, p0, Lcom/miui/home/launcher/anim/EditingEntryThumbnailBgAnim;->mBorderLineAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_1

    .line 127
    :cond_2
    iget-object p1, p0, Lcom/miui/home/launcher/anim/EditingEntryThumbnailBgAnim;->mBorderLinePaint:Landroid/graphics/Paint;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 128
    iget-object p0, p0, Lcom/miui/home/launcher/anim/ThumbnailBackgroundAnimController;->mTargetView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :goto_1
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f666666    # 0.9f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x3f666666    # 0.9f
    .end array-data
.end method

.method public updateColor()V
    .locals 0

    .line 135
    invoke-direct {p0}, Lcom/miui/home/launcher/anim/EditingEntryThumbnailBgAnim;->initColor()V

    return-void
.end method
