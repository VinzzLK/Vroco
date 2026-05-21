.class public Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;
.super Lcom/miui/home/launcher/anim/ThumbnailBackgroundAnimController;
.source "NormalThumbnailBgAnim.java"


# instance fields
.field protected final mBackgroundAnimator:Landroid/animation/ValueAnimator;

.field protected mBackgroundController:Lcom/miui/home/launcher/anim/CommonBackgroundAnim;

.field protected mBackgroundDragInColor:I

.field private mBackgroundDragingColor:I

.field protected mBackgroundNormalColor:I

.field private mBackgroundNotDragingColor:I

.field private mBackgroundRadius:F

.field private mBackgroundSelectColor:I

.field private mBoardLineRadius:F

.field private final mBorderLineAnimator:Landroid/animation/ValueAnimator;

.field private mBorderLinePadding:F

.field private final mBorderLinePaint:Landroid/graphics/Paint;

.field private mBorderLineWidth:F

.field private mBorderlineController:Lcom/miui/home/launcher/anim/CommonBackgroundAnim;

.field private mBorderlineNormalColor:I

.field private mBorderlineSelectedColor:I

.field private mExternalBorderRadius:F

.field private mExternalThumbnailRadius:F

.field protected mPreType:Lcom/miui/home/launcher/anim/BackgroundType;


# direct methods
.method public static synthetic $r8$lambda$IbUYKhBvDRSGIvEetadVuei7l6I(Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->lambda$initAnimation$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tciSn5bEHRWDdCo_fbdlZOqir3w(Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->lambda$initAnimation$1(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/anim/ThumbnailBackgroundAnimController;-><init>(Landroid/view/View;)V

    .line 22
    new-instance p1, Landroid/animation/ValueAnimator;

    invoke-direct {p1}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->mBackgroundAnimator:Landroid/animation/ValueAnimator;

    .line 32
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->mBorderLinePaint:Landroid/graphics/Paint;

    .line 33
    new-instance p1, Landroid/animation/ValueAnimator;

    invoke-direct {p1}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->mBorderLineAnimator:Landroid/animation/ValueAnimator;

    .line 51
    invoke-virtual {p0}, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->initColor()V

    .line 52
    invoke-direct {p0}, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->initParam()V

    .line 53
    invoke-direct {p0}, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->initAnimation()V

    .line 54
    invoke-direct {p0}, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->initController()V

    return-void
.end method

.method private getBorderlineTypeColor(Lcom/miui/home/launcher/anim/BackgroundType;)I
    .locals 1

    .line 107
    sget-object v0, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim$1;->$SwitchMap$com$miui$home$launcher$anim$BackgroundType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    .line 117
    iget p0, p0, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->mBorderlineNormalColor:I

    return p0

    .line 111
    :cond_0
    iget p0, p0, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->mBorderlineSelectedColor:I

    return p0

    .line 113
    :cond_1
    iget p0, p0, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->mBackgroundDragingColor:I

    return p0

    .line 109
    :cond_2
    iget p0, p0, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->mBorderlineNormalColor:I

    return p0
.end method

.method private initAnimation()V
    .locals 6

    .line 166
    iget-object v0, p0, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->mBackgroundAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 167
    iget-object v0, p0, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->mBackgroundAnimator:Landroid/animation/ValueAnimator;

    sget-object v3, Lcom/miui/home/launcher/common/Ease$Cubic;->easeOut:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 168
    iget-object v0, p0, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->mBackgroundAnimator:Landroid/animation/ValueAnimator;

    const/4 v4, 0x2

    new-array v5, v4, [F

    fill-array-data v5, :array_0

    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 169
    iget-object v0, p0, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->mBackgroundAnimator:Landroid/animation/ValueAnimator;

    new-instance v5, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0}, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;)V

    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 176
    iget-object v0, p0, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->mBorderLineAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 177
    iget-object v0, p0, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->mBorderLineAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 178
    iget-object v0, p0, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->mBorderLineAnimator:Landroid/animation/ValueAnimator;

    new-array v1, v4, [F

    fill-array-data v1, :array_1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 179
    iget-object v0, p0, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->mBorderLineAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim$$ExternalSyntheticLambda1;-><init>(Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private initController()V
    .locals 4

    .line 188
    new-instance v0, Lcom/miui/home/launcher/anim/CommonBackgroundAnim;

    iget-object v1, p0, Lcom/miui/home/launcher/anim/ThumbnailBackgroundAnimController;->mTargetView:Landroid/view/View;

    iget v2, p0, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->mBackgroundNormalColor:I

    iget v3, p0, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->mBackgroundDragInColor:I

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/home/launcher/anim/CommonBackgroundAnim;-><init>(Landroid/view/View;II)V

    iput-object v0, p0, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->mBackgroundController:Lcom/miui/home/launcher/anim/CommonBackgroundAnim;

    .line 189
    iget v1, p0, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->mBackgroundRadius:F

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/anim/CommonBackgroundAnim;->setBgRadius(F)V

    .line 191
    new-instance v0, Lcom/miui/home/launcher/anim/CommonBackgroundAnim;

    iget-object v1, p0, Lcom/miui/home/launcher/anim/ThumbnailBackgroundAnimController;->mTargetView:Landroid/view/View;

    iget v2, p0, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->mBorderlineNormalColor:I

    iget v3, p0, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->mBorderlineSelectedColor:I

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/home/launcher/anim/CommonBackgroundAnim;-><init>(Landroid/view/View;II)V

    iput-object v0, p0, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->mBorderlineController:Lcom/miui/home/launcher/anim/CommonBackgroundAnim;

    .line 192
    iget-object v1, p0, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->mBorderLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/anim/CommonBackgroundAnim;->setBgdPaint(Landroid/graphics/Paint;)V

    .line 193
    iget-object v0, p0, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->mBorderlineController:Lcom/miui/home/launcher/anim/CommonBackgroundAnim;

    iget p0, p0, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->mBoardLineRadius:F

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/anim/CommonBackgroundAnim;->setBgRadius(F)V

    return-void
.end method

.method private initParam()V
    .locals 3

    .line 150
    iget-object v0, p0, Lcom/miui/home/launcher/anim/ThumbnailBackgroundAnimController;->mTargetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0702ae

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->mBorderLineWidth:F

    .line 151
    iget-object v0, p0, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->mBorderLinePaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 152
    iget-object v0, p0, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->mBorderLinePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 153
    iget-object v0, p0, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->mBorderLinePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->mBorderLineWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 154
    iget-object v0, p0, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->mBorderLinePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->mBorderlineNormalColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 156
    sget-object v0, Lcom/miui/home/launcher/anim/BackgroundType;->NORMAL:Lcom/miui/home/launcher/anim/BackgroundType;

    iput-object v0, p0, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->mPreType:Lcom/miui/home/launcher/anim/BackgroundType;

    .line 157
    iget-object v0, p0, Lcom/miui/home/launcher/anim/ThumbnailBackgroundAnimController;->mTargetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070171

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->mExternalBorderRadius:F

    .line 158
    iget-object v0, p0, Lcom/miui/home/launcher/anim/ThumbnailBackgroundAnimController;->mTargetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07017e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->mExternalThumbnailRadius:F

    .line 160
    iget-object v0, p0, Lcom/miui/home/launcher/anim/ThumbnailBackgroundAnimController;->mTargetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070705

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iget v1, p0, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->mBorderLineWidth:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->mBorderLinePadding:F

    .line 161
    iget-object v0, p0, Lcom/miui/home/launcher/anim/ThumbnailBackgroundAnimController;->mTargetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070760

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->mBoardLineRadius:F

    .line 162
    iget-object v0, p0, Lcom/miui/home/launcher/anim/ThumbnailBackgroundAnimController;->mTargetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0701e4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->mBackgroundRadius:F

    return-void
.end method

.method private synthetic lambda$initAnimation$0(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 170
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 171
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->updateBackgroundColor(F)V

    .line 172
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->updateTargetScale(F)V

    .line 173
    iget-object p0, p0, Lcom/miui/home/launcher/anim/ThumbnailBackgroundAnimController;->mTargetView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic lambda$initAnimation$1(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 180
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 181
    iget-object v0, p0, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->mBorderlineController:Lcom/miui/home/launcher/anim/CommonBackgroundAnim;

    iget v1, p0, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->mBorderlineNormalColor:I

    invoke-virtual {v0, p1, v1}, Lcom/miui/home/launcher/anim/CommonBackgroundAnim;->updateBackgroundColorForBorderline(FI)V

    .line 182
    iget-object p0, p0, Lcom/miui/home/launcher/anim/ThumbnailBackgroundAnimController;->mTargetView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method public drawBackground(Landroid/graphics/Canvas;)V
    .locals 7

    .line 59
    iget-object v0, p0, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->mBackgroundController:Lcom/miui/home/launcher/anim/CommonBackgroundAnim;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/anim/CommonBackgroundAnim;->drawBackground(Landroid/graphics/Canvas;)V

    .line 60
    iget-object v1, p0, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->mBorderlineController:Lcom/miui/home/launcher/anim/CommonBackgroundAnim;

    iget v6, p0, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->mBorderLinePadding:F

    neg-float v3, v6

    neg-float v4, v6

    move-object v2, p1

    move v5, v6

    invoke-virtual/range {v1 .. v6}, Lcom/miui/home/launcher/anim/CommonBackgroundAnim;->drawBackground(Landroid/graphics/Canvas;FFFF)V

    return-void
.end method

.method protected getBackgroundTypeColor(Lcom/miui/home/launcher/anim/BackgroundType;)I
    .locals 1

    if-nez p1, :cond_0

    .line 90
    iget p0, p0, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->mBackgroundNormalColor:I

    return p0

    .line 91
    :cond_0
    sget-object v0, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim$1;->$SwitchMap$com$miui$home$launcher$anim$BackgroundType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    .line 103
    iget p0, p0, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->mBackgroundNormalColor:I

    return p0

    .line 99
    :cond_1
    iget p0, p0, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->mBackgroundNotDragingColor:I

    return p0

    .line 97
    :cond_2
    iget p0, p0, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->mBackgroundDragInColor:I

    return p0

    .line 95
    :cond_3
    iget p0, p0, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->mBackgroundSelectColor:I

    return p0

    .line 93
    :cond_4
    iget p0, p0, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->mBackgroundNormalColor:I

    return p0
.end method

.method protected initColor()V
    .locals 3

    .line 126
    iget-object v0, p0, Lcom/miui/home/launcher/anim/ThumbnailBackgroundAnimController;->mTargetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 127
    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->hasAppliedLightWallpaper()Z

    move-result v1

    const v2, 0x7f0600c1

    if-eqz v1, :cond_0

    .line 128
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->mBorderlineNormalColor:I

    const v1, 0x7f0600c4

    .line 129
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->mBorderlineSelectedColor:I

    const v1, 0x7f0600c0

    .line 130
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->mBackgroundSelectColor:I

    const v1, 0x7f0600be

    .line 131
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->mBackgroundNotDragingColor:I

    const v1, 0x7f0600c6

    .line 132
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->mBackgroundDragingColor:I

    goto :goto_0

    .line 134
    :cond_0
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->mBorderlineNormalColor:I

    const v1, 0x7f0600c3

    .line 135
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->mBorderlineSelectedColor:I

    const v1, 0x7f0600bf

    .line 136
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->mBackgroundSelectColor:I

    const v1, 0x7f0600bd

    .line 137
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->mBackgroundNotDragingColor:I

    const v1, 0x7f0600c5

    .line 138
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->mBackgroundDragingColor:I

    .line 140
    :goto_0
    invoke-static {}, Lcom/miui/home/launcher/common/BlurUtilities;->isBlurSupported()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f0600b6

    .line 141
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->mBackgroundDragInColor:I

    const v1, 0x7f0606b8

    .line 142
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->mBackgroundNormalColor:I

    goto :goto_1

    :cond_1
    const v1, 0x7f0600b7

    .line 144
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->mBackgroundDragInColor:I

    const v1, 0x7f0600bb

    .line 145
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->mBackgroundNormalColor:I

    :goto_1
    return-void
.end method

.method public updateBackground(Lcom/miui/home/launcher/anim/BackgroundType;Z)V
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->mPreType:Lcom/miui/home/launcher/anim/BackgroundType;

    if-ne v0, p1, :cond_0

    return-void

    .line 66
    :cond_0
    sget-object v1, Lcom/miui/home/launcher/anim/BackgroundType;->DRAGGING_IN:Lcom/miui/home/launcher/anim/BackgroundType;

    if-eq p1, v1, :cond_1

    if-ne v0, v1, :cond_4

    :cond_1
    if-eqz p2, :cond_3

    const/4 p2, 0x2

    if-ne p1, v1, :cond_2

    .line 69
    iget-object v0, p0, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->mBackgroundAnimator:Landroid/animation/ValueAnimator;

    new-array p2, p2, [F

    fill-array-data p2, :array_0

    invoke-virtual {v0, p2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 70
    iget-object p2, p0, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->mBackgroundController:Lcom/miui/home/launcher/anim/CommonBackgroundAnim;

    iget-object v0, p0, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->mPreType:Lcom/miui/home/launcher/anim/BackgroundType;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->getBackgroundTypeColor(Lcom/miui/home/launcher/anim/BackgroundType;)I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->getBackgroundTypeColor(Lcom/miui/home/launcher/anim/BackgroundType;)I

    move-result v1

    invoke-virtual {p2, v0, v1}, Lcom/miui/home/launcher/anim/CommonBackgroundAnim;->updateStartEndColor(II)V

    goto :goto_0

    .line 72
    :cond_2
    iget-object v0, p0, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->mBackgroundAnimator:Landroid/animation/ValueAnimator;

    new-array p2, p2, [F

    fill-array-data p2, :array_1

    invoke-virtual {v0, p2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 73
    iget-object p2, p0, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->mBackgroundController:Lcom/miui/home/launcher/anim/CommonBackgroundAnim;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->getBackgroundTypeColor(Lcom/miui/home/launcher/anim/BackgroundType;)I

    move-result v0

    iget-object v1, p0, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->mPreType:Lcom/miui/home/launcher/anim/BackgroundType;

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->getBackgroundTypeColor(Lcom/miui/home/launcher/anim/BackgroundType;)I

    move-result v1

    invoke-virtual {p2, v0, v1}, Lcom/miui/home/launcher/anim/CommonBackgroundAnim;->updateStartEndColor(II)V

    .line 75
    :goto_0
    iget-object p2, p0, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->mBackgroundAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_1

    :cond_3
    const/high16 p2, 0x3f800000    # 1.0f

    .line 78
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->updateBackgroundColor(F)V

    .line 79
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->updateTargetScale(F)V

    .line 82
    :cond_4
    :goto_1
    sget-object p2, Lcom/miui/home/launcher/anim/BackgroundType;->SELECT:Lcom/miui/home/launcher/anim/BackgroundType;

    if-eq p1, p2, :cond_5

    iget-object v0, p0, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->mPreType:Lcom/miui/home/launcher/anim/BackgroundType;

    if-ne v0, p2, :cond_6

    .line 83
    :cond_5
    iget-object p2, p0, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->mBorderlineController:Lcom/miui/home/launcher/anim/CommonBackgroundAnim;

    iget-object v0, p0, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->mPreType:Lcom/miui/home/launcher/anim/BackgroundType;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->getBorderlineTypeColor(Lcom/miui/home/launcher/anim/BackgroundType;)I

    move-result v0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->getBorderlineTypeColor(Lcom/miui/home/launcher/anim/BackgroundType;)I

    move-result v1

    invoke-virtual {p2, v0, v1}, Lcom/miui/home/launcher/anim/CommonBackgroundAnim;->updateStartEndColor(II)V

    .line 84
    iget-object p2, p0, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->mBorderLineAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->start()V

    .line 86
    :cond_6
    iput-object p1, p0, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->mPreType:Lcom/miui/home/launcher/anim/BackgroundType;

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method protected updateBackgroundColor(F)V
    .locals 0

    .line 205
    iget-object p0, p0, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->mBackgroundController:Lcom/miui/home/launcher/anim/CommonBackgroundAnim;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/anim/CommonBackgroundAnim;->updateBackgroundColor(F)I

    return-void
.end method

.method public updateColor()V
    .locals 0

    .line 122
    invoke-virtual {p0}, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->initColor()V

    return-void
.end method

.method public updateTargetScale(F)V
    .locals 1

    const v0, 0x3d6bee00    # 0.05760002f

    mul-float/2addr p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    add-float/2addr p1, v0

    .line 199
    iget-object v0, p0, Lcom/miui/home/launcher/anim/ThumbnailBackgroundAnimController;->mTargetView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleX(F)V

    .line 200
    iget-object v0, p0, Lcom/miui/home/launcher/anim/ThumbnailBackgroundAnimController;->mTargetView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleY(F)V

    .line 201
    iget-object p0, p0, Lcom/miui/home/launcher/anim/ThumbnailBackgroundAnimController;->mTargetView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
