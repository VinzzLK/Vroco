.class public Lcom/miui/home/recents/views/TaskStackViewsAlgorithmHorizontal;
.super Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;
.source "TaskStackViewsAlgorithmHorizontal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/recents/views/TaskStackViewsAlgorithmHorizontal$IHorizontalLayoutConfig;
    }
.end annotation


# instance fields
.field private mRecentLayoutConfig:Lcom/miui/home/recents/views/TaskStackViewsAlgorithmHorizontal$IHorizontalLayoutConfig;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private calculateTaskViewCenterYInWindowFraction()F
    .locals 1

    .line 118
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->isLandscapeVisually()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    iget-object p0, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmHorizontal;->mRecentLayoutConfig:Lcom/miui/home/recents/views/TaskStackViewsAlgorithmHorizontal$IHorizontalLayoutConfig;

    invoke-interface {p0}, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmHorizontal$IHorizontalLayoutConfig;->getTaskViewCenterYInWindowFractionForLandscape()F

    move-result p0

    return p0

    .line 121
    :cond_0
    iget-object p0, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmHorizontal;->mRecentLayoutConfig:Lcom/miui/home/recents/views/TaskStackViewsAlgorithmHorizontal$IHorizontalLayoutConfig;

    invoke-interface {p0}, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmHorizontal$IHorizontalLayoutConfig;->getTaskViewCenterYInWindowFraction()F

    move-result p0

    return p0
.end method

.method private getPreloadWidth()I
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mTaskStackViewRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    return p0
.end method

.method private getTaskViewOffsetY()I
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mTaskStackViewPaddingRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mWindowRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    iget-object p0, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mTaskViewRectF:Landroid/graphics/RectF;

    iget p0, p0, Landroid/graphics/RectF;->top:F

    float-to-int p0, p0

    sub-int/2addr v0, p0

    return v0
.end method


# virtual methods
.method protected afterFrictionValue(FF)F
    .locals 3

    const/4 p0, 0x0

    cmpl-float p0, p1, p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    .line 165
    :goto_0
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    div-float/2addr p1, p2

    .line 166
    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    int-to-float p0, p0

    mul-float v0, p1, p1

    mul-float v1, v0, p1

    const/high16 v2, 0x40400000    # 3.0f

    div-float/2addr v1, v2

    sub-float/2addr v1, v0

    add-float/2addr v1, p1

    mul-float/2addr p0, v1

    mul-float/2addr p0, p2

    return p0
.end method

.method protected calculateGap(II)V
    .locals 1

    .line 114
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mWindowRectIgnoreMultiWindowMode:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    iget-object p2, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmHorizontal;->mRecentLayoutConfig:Lcom/miui/home/recents/views/TaskStackViewsAlgorithmHorizontal$IHorizontalLayoutConfig;

    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->isLandscapeVisually()Z

    move-result v0

    invoke-interface {p2, v0}, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmHorizontal$IHorizontalLayoutConfig;->getHorizontalGapInWindowFraction(Z)F

    move-result p2

    mul-float/2addr p1, p2

    iput p1, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mHorizontalGap:F

    return-void
.end method

.method protected calculateMaxScrollP()F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected calculateMinScrollP()F
    .locals 3

    .line 89
    iget v0, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mNumStackTasks:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmHorizontal;->calculateTaskViewOffsetXAndY(I)[I

    move-result-object v0

    const/4 v1, 0x0

    .line 90
    aget v0, v0, v1

    iget-object v1, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mTaskViewRectF:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    .line 91
    iget-object v1, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mTaskStackViewRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mTaskStackViewPaddingRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->getDeltaPForX(FF)F

    move-result p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method

.method public calculatePer(FF)F
    .locals 0

    neg-float p1, p1

    div-float/2addr p1, p2

    const/4 p2, 0x0

    cmpg-float p2, p1, p2

    if-gez p2, :cond_0

    const p2, 0x3e4ccccd    # 0.2f

    .line 149
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmHorizontal;->afterFrictionValue(FF)F

    move-result p1

    :cond_0
    return p1
.end method

.method protected calculateStackScroll([I[I)F
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mTaskViewRectF:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 104
    aget p2, p2, v1

    aget p1, p1, v1

    sub-int/2addr p2, p1

    int-to-float p1, p2

    mul-float/2addr p1, v0

    iget-object p0, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mTaskViewRectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result p0

    div-float/2addr p1, p0

    return p1
.end method

.method public calculateTaskRatio(FFFZ)F
    .locals 0

    return p1
.end method

.method protected calculateTaskViewOffsetXAndY(I)[I
    .locals 4

    .line 58
    iget v0, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mNumStackTasks:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 59
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mTaskStackViewRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result p1

    int-to-float p1, p1

    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mTaskViewRectF:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    sub-float/2addr p1, v0

    float-to-int p1, p1

    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->getTransXForCenterTask()I

    move-result v0

    add-int/2addr p1, v0

    goto :goto_0

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mTaskStackViewRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mTaskStackViewPaddingRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    iget-object v2, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mTaskViewRectF:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    add-int/lit8 v3, p1, 0x1

    int-to-float v3, v3

    mul-float/2addr v2, v3

    sub-float/2addr v0, v2

    iget v2, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mHorizontalGap:F

    int-to-float p1, p1

    mul-float/2addr v2, p1

    sub-float/2addr v0, v2

    iget-object p1, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mTaskViewRectF:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, p1

    float-to-int p1, v0

    :goto_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v2, 0x0

    aput p1, v0, v2

    .line 64
    invoke-direct {p0}, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmHorizontal;->getTaskViewOffsetY()I

    move-result p0

    aput p0, v0, v1

    return-object v0
.end method

.method protected computeTaskStackViewPadding(I)V
    .locals 4

    .line 127
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->isLandscapeVisually()Z

    move-result p1

    .line 128
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mTaskStackViewPaddingRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mWindowRectIgnoreMultiWindowMode:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {p0}, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmHorizontal;->calculateTaskViewCenterYInWindowFraction()F

    move-result v2

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mTaskViewRectF:Landroid/graphics/RectF;

    .line 129
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 130
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mTaskStackViewPaddingRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 131
    iget-object v1, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mWindowRectIgnoreMultiWindowMode:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmHorizontal;->mRecentLayoutConfig:Lcom/miui/home/recents/views/TaskStackViewsAlgorithmHorizontal$IHorizontalLayoutConfig;

    invoke-interface {v2, p1}, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmHorizontal$IHorizontalLayoutConfig;->getLeftPaddingInWindowFraction(Z)F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 132
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mTaskStackViewPaddingRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mWindowRectIgnoreMultiWindowMode:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmHorizontal;->mRecentLayoutConfig:Lcom/miui/home/recents/views/TaskStackViewsAlgorithmHorizontal$IHorizontalLayoutConfig;

    invoke-interface {v2, p1}, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmHorizontal$IHorizontalLayoutConfig;->getRightPaddingInWindowFraction(Z)F

    move-result p1

    mul-float/2addr v1, p1

    float-to-int p1, v1

    iput p1, v0, Landroid/graphics/Rect;->right:I

    .line 133
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mTaskStackViewPaddingRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->computePaddingForFloatingIfNeed(Landroid/graphics/Rect;)V

    return-void
.end method

.method public getDefaultCenterTaskViewIndex()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getTargetTaskViewIndex(ZII)I
    .locals 0

    if-eqz p1, :cond_0

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 p2, p3, 0x1

    :goto_0
    const/4 p1, 0x0

    .line 109
    iget p0, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mNumStackTasks:I

    add-int/lit8 p0, p0, -0x1

    invoke-static {p2, p1, p0}, Lcom/miui/home/recents/util/Utilities;->clamp(III)I

    move-result p0

    return p0
.end method

.method public getTaskViewTransform(IFLcom/miui/home/recents/views/TaskViewTransform;)V
    .locals 3

    .line 39
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmHorizontal;->calculateTaskViewOffsetXAndY(I)[I

    move-result-object p1

    const/4 v0, 0x0

    .line 40
    aget v1, p1, v0

    const/4 v2, 0x0

    invoke-virtual {p0, v2, p2}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->getXForDeltaP(FF)I

    move-result p2

    add-int/2addr v1, p2

    const/high16 p2, 0x3f800000    # 1.0f

    .line 42
    iput p2, p3, Lcom/miui/home/recents/views/TaskViewTransform;->scale:F

    .line 43
    iput p2, p3, Lcom/miui/home/recents/views/TaskViewTransform;->alpha:F

    .line 44
    iget-object p2, p3, Lcom/miui/home/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mTaskViewRectF:Landroid/graphics/RectF;

    invoke-virtual {p2, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 45
    iget-object p2, p3, Lcom/miui/home/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    int-to-float v1, v1

    const/4 v2, 0x1

    aget p1, p1, v2

    int-to-float p1, p1

    invoke-virtual {p2, v1, p1}, Landroid/graphics/RectF;->offset(FF)V

    .line 47
    iget-object p1, p3, Lcom/miui/home/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->left:F

    iget-object p2, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mTaskStackViewRect:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->right:I

    invoke-direct {p0}, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmHorizontal;->getPreloadWidth()I

    move-result v1

    add-int/2addr p2, v1

    int-to-float p2, p2

    cmpg-float p1, p1, p2

    if-gez p1, :cond_0

    iget-object p1, p3, Lcom/miui/home/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->right:F

    iget-object p2, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mTaskStackViewRect:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->left:I

    .line 48
    invoke-direct {p0}, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmHorizontal;->getPreloadWidth()I

    move-result p0

    sub-int/2addr p2, p0

    int-to-float p0, p2

    cmpl-float p0, p1, p0

    if-lez p0, :cond_0

    move v0, v2

    .line 47
    :cond_0
    invoke-virtual {p3, v0}, Lcom/miui/home/recents/views/TaskViewTransform;->setVisible(Z)V

    return-void
.end method

.method public initRecentLayoutConfig()V
    .locals 1

    .line 78
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFlip()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    new-instance v0, Lcom/miui/home/recents/layoutconfig/TaskHorizonalLayoutConfigForSpecial;

    invoke-direct {v0}, Lcom/miui/home/recents/layoutconfig/TaskHorizonalLayoutConfigForSpecial;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmHorizontal;->mRecentLayoutConfig:Lcom/miui/home/recents/views/TaskStackViewsAlgorithmHorizontal$IHorizontalLayoutConfig;

    goto :goto_1

    .line 80
    :cond_0
    invoke-static {}, Lcom/miui/home/recents/util/Utilities;->isNeedInnerTaskScale()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 81
    new-instance v0, Lcom/miui/home/recents/layoutconfig/TaskInnerHorizonalLayoutConfig;

    invoke-direct {v0}, Lcom/miui/home/recents/layoutconfig/TaskInnerHorizonalLayoutConfig;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmHorizontal;->mRecentLayoutConfig:Lcom/miui/home/recents/views/TaskStackViewsAlgorithmHorizontal$IHorizontalLayoutConfig;

    goto :goto_1

    .line 83
    :cond_1
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->IS_FOLD_DEVICE:Z

    if-eqz v0, :cond_2

    new-instance v0, Lcom/miui/home/recents/layoutconfig/TaskOuterHorizonalLayoutConfig;

    invoke-direct {v0}, Lcom/miui/home/recents/layoutconfig/TaskOuterHorizonalLayoutConfig;-><init>()V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/miui/home/recents/layoutconfig/TaskHorizonalLayoutConfig;

    invoke-direct {v0}, Lcom/miui/home/recents/layoutconfig/TaskHorizonalLayoutConfig;-><init>()V

    :goto_0
    iput-object v0, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmHorizontal;->mRecentLayoutConfig:Lcom/miui/home/recents/views/TaskStackViewsAlgorithmHorizontal$IHorizontalLayoutConfig;

    :goto_1
    return-void
.end method

.method protected scaleTaskView(Landroid/graphics/RectF;)V
    .locals 1

    .line 138
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->isLandscapeVisually()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    iget-object p0, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmHorizontal;->mRecentLayoutConfig:Lcom/miui/home/recents/views/TaskStackViewsAlgorithmHorizontal$IHorizontalLayoutConfig;

    invoke-interface {p0}, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmHorizontal$IHorizontalLayoutConfig;->getTaskViewScaleForLandscape()F

    move-result p0

    invoke-static {p1, p0}, Lcom/miui/home/recents/util/Utilities;->scaleRectAboutCenter(Landroid/graphics/RectF;F)V

    goto :goto_0

    .line 141
    :cond_0
    iget-object p0, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmHorizontal;->mRecentLayoutConfig:Lcom/miui/home/recents/views/TaskStackViewsAlgorithmHorizontal$IHorizontalLayoutConfig;

    invoke-interface {p0}, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmHorizontal$IHorizontalLayoutConfig;->getTaskViewScale()F

    move-result p0

    invoke-static {p1, p0}, Lcom/miui/home/recents/util/Utilities;->scaleRectAboutCenter(Landroid/graphics/RectF;F)V

    :goto_0
    return-void
.end method
