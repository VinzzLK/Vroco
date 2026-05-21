.class public Lcom/miui/home/launcher/LayoutPreviewBgAnim;
.super Lcom/miui/home/launcher/anim/ThumbnailBackgroundAnimController;
.source "LayoutPreviewBgAnim.java"


# instance fields
.field private final mBorderLineAnimator:Landroid/animation/ValueAnimator;

.field private final mBorderLinePaint:Landroid/graphics/Paint;

.field private mBorderLineWidth:F

.field private mBorderlineController:Lcom/miui/home/launcher/anim/CommonBackgroundAnim;

.field private mBorderlineDefaultColor:I

.field private mBorderlineNormalColor:I

.field private mBorderlineSelectedColor:I

.field private mCurType:Lcom/miui/home/launcher/anim/BackgroundType;

.field private mExternalBorderRadius:F

.field private mViewTopPadding:F


# direct methods
.method public static synthetic $r8$lambda$jwFqVanzbLp73Wyex4eZno3epOA(Lcom/miui/home/launcher/LayoutPreviewBgAnim;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/LayoutPreviewBgAnim;->lambda$initAnimation$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>(Lcom/miui/home/launcher/LayoutPreviewBorder;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/anim/ThumbnailBackgroundAnimController;-><init>(Landroid/view/View;)V

    .line 20
    new-instance p1, Landroid/animation/ValueAnimator;

    invoke-direct {p1}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/LayoutPreviewBgAnim;->mBorderLineAnimator:Landroid/animation/ValueAnimator;

    .line 28
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/LayoutPreviewBgAnim;->mBorderLinePaint:Landroid/graphics/Paint;

    .line 34
    invoke-direct {p0}, Lcom/miui/home/launcher/LayoutPreviewBgAnim;->initColor()V

    .line 35
    invoke-direct {p0}, Lcom/miui/home/launcher/LayoutPreviewBgAnim;->initParam()V

    .line 36
    invoke-direct {p0}, Lcom/miui/home/launcher/LayoutPreviewBgAnim;->initAnimation()V

    .line 37
    invoke-direct {p0}, Lcom/miui/home/launcher/LayoutPreviewBgAnim;->initController()V

    return-void
.end method

.method private initAnimation()V
    .locals 3

    .line 64
    iget-object v0, p0, Lcom/miui/home/launcher/LayoutPreviewBgAnim;->mBorderLineAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 65
    iget-object v0, p0, Lcom/miui/home/launcher/LayoutPreviewBgAnim;->mBorderLineAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/miui/home/launcher/common/Ease$Cubic;->easeOut:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 66
    iget-object v0, p0, Lcom/miui/home/launcher/LayoutPreviewBgAnim;->mBorderLineAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 67
    iget-object v0, p0, Lcom/miui/home/launcher/LayoutPreviewBgAnim;->mBorderLineAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/miui/home/launcher/LayoutPreviewBgAnim$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/LayoutPreviewBgAnim$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/launcher/LayoutPreviewBgAnim;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private initColor()V
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/miui/home/launcher/anim/ThumbnailBackgroundAnimController;->mTargetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 42
    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->hasAppliedLightWallpaper()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0600b1

    .line 43
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/miui/home/launcher/LayoutPreviewBgAnim;->mBorderlineNormalColor:I

    const v1, 0x7f0600b3

    .line 44
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/miui/home/launcher/LayoutPreviewBgAnim;->mBorderlineSelectedColor:I

    goto :goto_0

    :cond_0
    const v1, 0x7f0600b0

    .line 46
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/miui/home/launcher/LayoutPreviewBgAnim;->mBorderlineNormalColor:I

    const v1, 0x7f0600b2

    .line 47
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/miui/home/launcher/LayoutPreviewBgAnim;->mBorderlineSelectedColor:I

    :goto_0
    const v1, 0x7f0600af

    .line 49
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/LayoutPreviewBgAnim;->mBorderlineDefaultColor:I

    return-void
.end method

.method private initController()V
    .locals 4

    .line 75
    iget-object v0, p0, Lcom/miui/home/launcher/anim/ThumbnailBackgroundAnimController;->mTargetView:Landroid/view/View;

    .line 76
    instance-of v1, v0, Lcom/miui/home/launcher/LayoutPreviewBorder;

    if-eqz v1, :cond_0

    .line 77
    check-cast v0, Lcom/miui/home/launcher/LayoutPreviewBorder;

    invoke-virtual {v0}, Lcom/miui/home/launcher/LayoutPreviewBorder;->autoChangeBgView()Landroid/view/View;

    move-result-object v0

    .line 79
    :cond_0
    new-instance v1, Lcom/miui/home/launcher/anim/CommonBackgroundAnim;

    iget v2, p0, Lcom/miui/home/launcher/LayoutPreviewBgAnim;->mBorderlineDefaultColor:I

    iget v3, p0, Lcom/miui/home/launcher/LayoutPreviewBgAnim;->mBorderlineSelectedColor:I

    invoke-direct {v1, v0, v2, v3}, Lcom/miui/home/launcher/anim/CommonBackgroundAnim;-><init>(Landroid/view/View;II)V

    iput-object v1, p0, Lcom/miui/home/launcher/LayoutPreviewBgAnim;->mBorderlineController:Lcom/miui/home/launcher/anim/CommonBackgroundAnim;

    .line 80
    iget-object v0, p0, Lcom/miui/home/launcher/LayoutPreviewBgAnim;->mBorderLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/anim/CommonBackgroundAnim;->setBgdPaint(Landroid/graphics/Paint;)V

    .line 81
    iget-object v0, p0, Lcom/miui/home/launcher/LayoutPreviewBgAnim;->mBorderlineController:Lcom/miui/home/launcher/anim/CommonBackgroundAnim;

    iget v1, p0, Lcom/miui/home/launcher/LayoutPreviewBgAnim;->mExternalBorderRadius:F

    iget p0, p0, Lcom/miui/home/launcher/LayoutPreviewBgAnim;->mBorderLineWidth:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr p0, v2

    sub-float/2addr v1, p0

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/anim/CommonBackgroundAnim;->setBgRadius(F)V

    return-void
.end method

.method private initParam()V
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/miui/home/launcher/anim/ThumbnailBackgroundAnimController;->mTargetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0702ae

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/LayoutPreviewBgAnim;->mBorderLineWidth:F

    .line 54
    iget-object v0, p0, Lcom/miui/home/launcher/LayoutPreviewBgAnim;->mBorderLinePaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 55
    iget-object v0, p0, Lcom/miui/home/launcher/LayoutPreviewBgAnim;->mBorderLinePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 56
    iget-object v0, p0, Lcom/miui/home/launcher/LayoutPreviewBgAnim;->mBorderLinePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/miui/home/launcher/LayoutPreviewBgAnim;->mBorderLineWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 57
    iget-object v0, p0, Lcom/miui/home/launcher/LayoutPreviewBgAnim;->mBorderLinePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/miui/home/launcher/LayoutPreviewBgAnim;->mBorderlineDefaultColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 58
    sget-object v0, Lcom/miui/home/launcher/anim/BackgroundType;->DEFAULT:Lcom/miui/home/launcher/anim/BackgroundType;

    iput-object v0, p0, Lcom/miui/home/launcher/LayoutPreviewBgAnim;->mCurType:Lcom/miui/home/launcher/anim/BackgroundType;

    .line 59
    iget-object v0, p0, Lcom/miui/home/launcher/anim/ThumbnailBackgroundAnimController;->mTargetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0702af

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/LayoutPreviewBgAnim;->mExternalBorderRadius:F

    .line 60
    iget-object v0, p0, Lcom/miui/home/launcher/anim/ThumbnailBackgroundAnimController;->mTargetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0702b4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/LayoutPreviewBgAnim;->mViewTopPadding:F

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

    .line 69
    iget-object v0, p0, Lcom/miui/home/launcher/LayoutPreviewBgAnim;->mBorderlineController:Lcom/miui/home/launcher/anim/CommonBackgroundAnim;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/anim/CommonBackgroundAnim;->updateBackgroundColor(F)I

    .line 70
    iget-object p0, p0, Lcom/miui/home/launcher/anim/ThumbnailBackgroundAnimController;->mTargetView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private refreshBorderColor()V
    .locals 2

    .line 118
    iget-object v0, p0, Lcom/miui/home/launcher/anim/ThumbnailBackgroundAnimController;->mTargetView:Landroid/view/View;

    instance-of v0, v0, Lcom/miui/home/launcher/LayoutPreviewBorder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/LayoutPreviewBgAnim;->mCurType:Lcom/miui/home/launcher/anim/BackgroundType;

    if-eqz v0, :cond_0

    .line 119
    iget-object v1, p0, Lcom/miui/home/launcher/LayoutPreviewBgAnim;->mBorderLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/LayoutPreviewBgAnim;->getBackgroundTypeColor(Lcom/miui/home/launcher/anim/BackgroundType;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 120
    iget-object p0, p0, Lcom/miui/home/launcher/anim/ThumbnailBackgroundAnimController;->mTargetView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method


# virtual methods
.method public drawBackground(Landroid/graphics/Canvas;)V
    .locals 6

    .line 87
    iget-object v0, p0, Lcom/miui/home/launcher/LayoutPreviewBgAnim;->mBorderlineController:Lcom/miui/home/launcher/anim/CommonBackgroundAnim;

    iget v2, p0, Lcom/miui/home/launcher/LayoutPreviewBgAnim;->mBorderLineWidth:F

    iget p0, p0, Lcom/miui/home/launcher/LayoutPreviewBgAnim;->mViewTopPadding:F

    add-float v3, v2, p0

    neg-float v4, v2

    neg-float v1, v2

    add-float v5, v1, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/miui/home/launcher/anim/CommonBackgroundAnim;->drawBackground(Landroid/graphics/Canvas;FFFF)V

    return-void
.end method

.method protected getBackgroundTypeColor(Lcom/miui/home/launcher/anim/BackgroundType;)I
    .locals 1

    .line 100
    sget-object v0, Lcom/miui/home/launcher/LayoutPreviewBgAnim$1;->$SwitchMap$com$miui$home$launcher$anim$BackgroundType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 108
    iget p0, p0, Lcom/miui/home/launcher/LayoutPreviewBgAnim;->mBorderlineDefaultColor:I

    return p0

    .line 104
    :cond_0
    iget p0, p0, Lcom/miui/home/launcher/LayoutPreviewBgAnim;->mBorderlineSelectedColor:I

    return p0

    .line 102
    :cond_1
    iget p0, p0, Lcom/miui/home/launcher/LayoutPreviewBgAnim;->mBorderlineNormalColor:I

    return p0
.end method

.method public updateBackground(Lcom/miui/home/launcher/anim/BackgroundType;Z)V
    .locals 2

    .line 93
    iget-object p2, p0, Lcom/miui/home/launcher/LayoutPreviewBgAnim;->mCurType:Lcom/miui/home/launcher/anim/BackgroundType;

    if-ne p2, p1, :cond_0

    return-void

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/LayoutPreviewBgAnim;->mBorderlineController:Lcom/miui/home/launcher/anim/CommonBackgroundAnim;

    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/LayoutPreviewBgAnim;->getBackgroundTypeColor(Lcom/miui/home/launcher/anim/BackgroundType;)I

    move-result p2

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/LayoutPreviewBgAnim;->getBackgroundTypeColor(Lcom/miui/home/launcher/anim/BackgroundType;)I

    move-result v1

    invoke-virtual {v0, p2, v1}, Lcom/miui/home/launcher/anim/CommonBackgroundAnim;->updateStartEndColor(II)V

    .line 95
    iget-object p2, p0, Lcom/miui/home/launcher/LayoutPreviewBgAnim;->mBorderLineAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->start()V

    .line 96
    iput-object p1, p0, Lcom/miui/home/launcher/LayoutPreviewBgAnim;->mCurType:Lcom/miui/home/launcher/anim/BackgroundType;

    return-void
.end method

.method public updateColor()V
    .locals 0

    .line 113
    invoke-direct {p0}, Lcom/miui/home/launcher/LayoutPreviewBgAnim;->initColor()V

    .line 114
    invoke-direct {p0}, Lcom/miui/home/launcher/LayoutPreviewBgAnim;->refreshBorderColor()V

    return-void
.end method
