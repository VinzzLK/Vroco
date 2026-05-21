.class public Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;
.super Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;
.source "TaskStackViewsAlgorithmVertical.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical$IVerticalLayoutConfig;
    }
.end annotation


# instance fields
.field private mAccelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

.field private mPaddingRatio:F

.field private mRecentLayoutConfig:Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical$IVerticalLayoutConfig;

.field private mVerticalGap:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;-><init>(Landroid/content/Context;)V

    .line 24
    new-instance p1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mAccelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

    return-void
.end method

.method private getPreloadHeight()I
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mTaskStackViewRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    div-int/lit8 p0, p0, 0x5

    return p0
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

    .line 217
    :goto_0
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    div-float/2addr p1, p2

    .line 218
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
    .locals 3

    .line 158
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->isMultiWindowMode()Z

    move-result v0

    const/high16 v1, 0x40400000    # 3.0f

    const/high16 v2, 0x40000000    # 2.0f

    if-eqz v0, :cond_0

    mul-int/lit8 p2, p2, 0x2

    sub-int/2addr p1, p2

    .line 159
    iget-object p2, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mTaskStackViewPaddingRect:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr p1, p2

    int-to-float p1, p1

    iget p2, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mPaddingRatio:F

    mul-float/2addr p2, v2

    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mWindowRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr p2, v0

    sub-float/2addr p1, p2

    div-float/2addr p1, v1

    iput p1, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mHorizontalGap:F

    goto :goto_0

    :cond_0
    mul-int/lit8 p2, p2, 0x2

    sub-int/2addr p1, p2

    .line 161
    iget-object p2, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mTaskStackViewPaddingRect:Landroid/graphics/Rect;

    iget v0, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr p1, v0

    iget p2, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr p1, p2

    int-to-float p1, p1

    iget p2, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mPaddingRatio:F

    mul-float/2addr p2, v2

    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mWindowRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr p2, v0

    sub-float/2addr p1, p2

    div-float/2addr p1, v1

    iput p1, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mHorizontalGap:F

    .line 164
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->isMultiWindowMode()Z

    move-result p1

    if-eqz p1, :cond_1

    const-wide p1, 0x3fe999999999999aL    # 0.8

    .line 165
    iget v0, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mRecentsTaskViewHeaderHeight:I

    int-to-double v0, v0

    mul-double/2addr v0, p1

    double-to-int p1, v0

    iput p1, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mVerticalGap:I

    goto :goto_1

    .line 167
    :cond_1
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mRecentLayoutConfig:Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical$IVerticalLayoutConfig;

    invoke-interface {p1}, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical$IVerticalLayoutConfig;->getVerticalGapFraction()F

    move-result p1

    iget p2, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mRecentsTaskViewHeaderHeight:I

    int-to-float p2, p2

    mul-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mVerticalGap:I

    :goto_1
    return-void
.end method

.method protected calculateMaxScrollP()F
    .locals 3

    .line 143
    iget v0, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mNumStackTasks:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->calculateTaskViewOffsetXAndY(I)[I

    move-result-object v0

    .line 144
    aget v0, v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mTaskViewRectF:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, v2

    .line 145
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mWindowRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mTaskStackViewPaddingRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget-object p0, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mTaskViewRectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result p0

    div-float/2addr v0, p0

    const/4 p0, 0x0

    .line 144
    invoke-static {p0, v0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method protected calculateMinScrollP()F
    .locals 0

    const/4 p0, 0x0

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

    .line 193
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->afterFrictionValue(FF)F

    move-result p1

    :cond_0
    return p1
.end method

.method protected calculateStackScroll([I[I)F
    .locals 2

    .line 150
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mTaskViewRectF:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x1

    .line 153
    aget p2, p2, v1

    aget p1, p1, v1

    sub-int/2addr p2, p1

    int-to-float p1, p2

    mul-float/2addr p1, v0

    iget-object p0, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mTaskViewRectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result p0

    div-float/2addr p1, p0

    return p1
.end method

.method public calculateTaskRatio(FFFZ)F
    .locals 0

    return p1
.end method

.method protected calculateTaskViewOffsetXAndY(I)[I
    .locals 8

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 71
    iget-object v1, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mTaskStackViewPaddingRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 74
    iget v2, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mHorizontalGap:F

    iget v3, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mPaddingRatio:F

    iget-object v4, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mWindowRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    .line 78
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->isMultiWindowMode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 79
    iget-object v3, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mTaskStackViewRect:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v2

    iget-object v5, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mTaskViewRectF:Landroid/graphics/RectF;

    iget v6, v5, Landroid/graphics/RectF;->left:F

    float-to-int v6, v6

    sub-int/2addr v4, v6

    .line 80
    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v2

    iget v2, v5, Landroid/graphics/RectF;->right:F

    float-to-int v2, v2

    sub-int/2addr v3, v2

    iget-object v2, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mTaskStackViewPaddingRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 82
    :cond_0
    iget-object v3, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mTaskStackViewRect:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v2

    iget-object v5, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mTaskViewRectF:Landroid/graphics/RectF;

    iget v6, v5, Landroid/graphics/RectF;->left:F

    float-to-int v6, v6

    sub-int/2addr v4, v6

    iget-object v6, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mTaskStackViewPaddingRect:Landroid/graphics/Rect;

    iget v7, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v7

    .line 83
    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v2

    iget v2, v5, Landroid/graphics/RectF;->right:F

    float-to-int v2, v2

    sub-int/2addr v3, v2

    iget v2, v6, Landroid/graphics/Rect;->right:I

    :goto_0
    sub-int/2addr v3, v2

    const/4 v2, 0x0

    move v5, v1

    move v6, v2

    :goto_1
    if-ge v6, p1, :cond_4

    if-nez v6, :cond_2

    .line 88
    iget-boolean v7, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mIsRtlLayout:Z

    if-nez v7, :cond_1

    .line 89
    iget v7, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mVerticalGap:I

    add-int/2addr v1, v7

    iget-object v7, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mFirstTaskRectF:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    goto :goto_3

    .line 91
    :cond_1
    iget v7, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mVerticalGap:I

    add-int/2addr v5, v7

    iget-object v7, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mFirstTaskRectF:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    goto :goto_2

    :cond_2
    if-le v1, v5, :cond_3

    .line 97
    iget v7, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mVerticalGap:I

    add-int/2addr v5, v7

    iget-object v7, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mTaskViewRectF:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    :goto_2
    float-to-int v7, v7

    add-int/2addr v5, v7

    goto :goto_4

    .line 99
    :cond_3
    iget v7, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mVerticalGap:I

    add-int/2addr v1, v7

    iget-object v7, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mTaskViewRectF:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    :goto_3
    float-to-int v7, v7

    add-int/2addr v1, v7

    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_4
    const/4 v6, 0x1

    if-gt v1, v5, :cond_6

    .line 102
    iget-boolean v7, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mIsRtlLayout:Z

    if-eqz v7, :cond_5

    if-nez p1, :cond_5

    goto :goto_5

    :cond_5
    aput v4, v0, v2

    .line 107
    iget p1, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mVerticalGap:I

    add-int/2addr v1, p1

    iget-object p1, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mWindowRect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, p1

    iget-object p0, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mTaskViewRectF:Landroid/graphics/RectF;

    iget p0, p0, Landroid/graphics/RectF;->top:F

    float-to-int p0, p0

    sub-int/2addr v1, p0

    aput v1, v0, v6

    goto :goto_6

    :cond_6
    :goto_5
    aput v3, v0, v2

    .line 104
    iget p1, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mVerticalGap:I

    add-int/2addr v5, p1

    iget-object p1, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mWindowRect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, p1

    iget-object p0, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mTaskViewRectF:Landroid/graphics/RectF;

    iget p0, p0, Landroid/graphics/RectF;->top:F

    float-to-int p0, p0

    sub-int/2addr v5, p0

    aput v5, v0, v6

    :goto_6
    return-object v0
.end method

.method protected computeTaskStackViewPadding(I)V
    .locals 4

    if-gtz p1, :cond_0

    return-void

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mRecentLayoutConfig:Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical$IVerticalLayoutConfig;

    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->isMultiWindowMode()Z

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical$IVerticalLayoutConfig;->getTopRatio(ZI)F

    move-result v0

    .line 175
    iget-object v1, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mRecentLayoutConfig:Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical$IVerticalLayoutConfig;

    invoke-interface {v1}, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical$IVerticalLayoutConfig;->getBottomRatio()F

    move-result v1

    .line 176
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "computeTaskStackViewPadding topRatio:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ",bottomRatio: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TaskStackViewsAlgorithmVertical"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object v2, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mTaskStackViewPaddingRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mTaskViewRectF:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    mul-float/2addr v3, v0

    float-to-int v0, v3

    iput v0, v2, Landroid/graphics/Rect;->top:I

    .line 178
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mTaskStackViewPaddingRect:Landroid/graphics/Rect;

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-gt p1, v2, :cond_1

    move p1, v3

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mTaskViewRectF:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    mul-float/2addr p1, v1

    float-to-int p1, p1

    :goto_0
    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    .line 179
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mTaskStackViewPaddingRect:Landroid/graphics/Rect;

    iput v3, p1, Landroid/graphics/Rect;->left:I

    .line 180
    iput v3, p1, Landroid/graphics/Rect;->right:I

    .line 181
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->computePaddingForFloatingIfNeed(Landroid/graphics/Rect;)V

    return-void
.end method

.method public getDefaultCenterTaskViewIndex()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getTargetTaskViewIndex(ZII)I
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move p2, p3

    :goto_0
    const/4 p1, 0x0

    .line 138
    iget p0, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mNumStackTasks:I

    add-int/lit8 p0, p0, -0x1

    invoke-static {p2, p1, p0}, Lcom/miui/home/recents/util/Utilities;->clamp(III)I

    move-result p0

    return p0
.end method

.method public getTaskViewTransform(IFLcom/miui/home/recents/views/TaskViewTransform;)V
    .locals 4

    const/high16 v0, 0x3f800000    # 1.0f

    .line 46
    iput v0, p3, Lcom/miui/home/recents/views/TaskViewTransform;->scale:F

    const/4 v1, 0x0

    cmpl-float v2, p2, v1

    if-ltz v2, :cond_0

    goto :goto_0

    .line 48
    :cond_0
    iget-object v2, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mAccelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/animation/AccelerateInterpolator;->getInterpolation(F)F

    move-result v2

    const/high16 v3, 0x40400000    # 3.0f

    div-float/2addr v2, v3

    sub-float/2addr v0, v2

    :goto_0
    iput v0, p3, Lcom/miui/home/recents/views/TaskViewTransform;->alpha:F

    .line 49
    iput v1, p3, Lcom/miui/home/recents/views/TaskViewTransform;->translationZ:F

    .line 50
    iput v1, p3, Lcom/miui/home/recents/views/TaskViewTransform;->viewOutlineAlpha:F

    .line 52
    iget-object v0, p3, Lcom/miui/home/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    const/4 v1, 0x1

    if-nez p1, :cond_1

    iget v2, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mNumStackTasks:I

    if-le v2, v1, :cond_1

    iget-object v2, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mFirstTaskRectF:Landroid/graphics/RectF;

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mTaskViewRectF:Landroid/graphics/RectF;

    :goto_1
    invoke-virtual {v0, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 54
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->calculateTaskViewOffsetXAndY(I)[I

    move-result-object p1

    .line 55
    iget v0, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mNumStackTasks:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->getTransXForCenterTask()I

    move-result v0

    goto :goto_2

    :cond_2
    aget v0, p1, v2

    :goto_2
    aput v0, p1, v2

    .line 56
    aget v0, p1, v1

    int-to-float v0, v0

    iget-object v3, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mTaskViewRectF:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    mul-float/2addr p2, v3

    sub-float/2addr v0, p2

    float-to-int p2, v0

    aput p2, p1, v1

    .line 58
    iget-object p2, p3, Lcom/miui/home/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    aget v0, p1, v2

    int-to-float v0, v0

    aget p1, p1, v1

    int-to-float p1, p1

    invoke-virtual {p2, v0, p1}, Landroid/graphics/RectF;->offset(FF)V

    .line 60
    iget-object p1, p3, Lcom/miui/home/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    iget-object p2, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mWindowRect:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->top:I

    invoke-direct {p0}, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->getPreloadHeight()I

    move-result v0

    sub-int/2addr p2, v0

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_3

    iget-object p1, p3, Lcom/miui/home/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->top:F

    iget-object p2, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mWindowRect:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    .line 61
    invoke-direct {p0}, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->getPreloadHeight()I

    move-result p0

    add-int/2addr p2, p0

    int-to-float p0, p2

    cmpg-float p0, p1, p0

    if-gez p0, :cond_3

    goto :goto_3

    :cond_3
    move v1, v2

    .line 60
    :goto_3
    invoke-virtual {p3, v1}, Lcom/miui/home/recents/views/TaskViewTransform;->setVisible(Z)V

    return-void
.end method

.method public initRecentLayoutConfig()V
    .locals 1

    .line 119
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFlip()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->isLandscapeVisually()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/miui/home/recents/layoutconfig/TaskVerticalLayoutLandscapeConfigForSpecial;

    invoke-direct {v0}, Lcom/miui/home/recents/layoutconfig/TaskVerticalLayoutLandscapeConfigForSpecial;-><init>()V

    goto :goto_0

    .line 121
    :cond_0
    new-instance v0, Lcom/miui/home/recents/layoutconfig/TaskVerticalLayoutConfigForSpecial;

    invoke-direct {v0}, Lcom/miui/home/recents/layoutconfig/TaskVerticalLayoutConfigForSpecial;-><init>()V

    :goto_0
    iput-object v0, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mRecentLayoutConfig:Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical$IVerticalLayoutConfig;

    goto :goto_3

    .line 122
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreen()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 123
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->isLandscapeVisually()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/miui/home/recents/layoutconfig/TaskInnerVerticalLayoutWhenLandscapeConfig;

    invoke-direct {v0}, Lcom/miui/home/recents/layoutconfig/TaskInnerVerticalLayoutWhenLandscapeConfig;-><init>()V

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/miui/home/recents/layoutconfig/TaskInnerVerticalLayoutConfig;

    invoke-direct {v0}, Lcom/miui/home/recents/layoutconfig/TaskInnerVerticalLayoutConfig;-><init>()V

    :goto_1
    iput-object v0, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mRecentLayoutConfig:Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical$IVerticalLayoutConfig;

    goto :goto_3

    .line 125
    :cond_3
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->isLandscapeVisually()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/miui/home/recents/layoutconfig/TaskVerticalLayoutWhenLandscapeConfig;

    invoke-direct {v0}, Lcom/miui/home/recents/layoutconfig/TaskVerticalLayoutWhenLandscapeConfig;-><init>()V

    goto :goto_2

    .line 126
    :cond_4
    new-instance v0, Lcom/miui/home/recents/layoutconfig/TaskVerticalLayoutConfig;

    invoke-direct {v0}, Lcom/miui/home/recents/layoutconfig/TaskVerticalLayoutConfig;-><init>()V

    :goto_2
    iput-object v0, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mRecentLayoutConfig:Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical$IVerticalLayoutConfig;

    .line 128
    :goto_3
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/recents/util/Utilities;->getTaskViewPaddingRatio(Landroid/content/Context;)F

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mPaddingRatio:F

    return-void
.end method

.method protected scaleTaskView(Landroid/graphics/RectF;)V
    .locals 0

    .line 186
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/home/recents/util/Utilities;->getTaskViewScale(Landroid/content/Context;)F

    move-result p0

    invoke-static {p1, p0}, Lcom/miui/home/recents/util/Utilities;->scaleRectAboutCenter(Landroid/graphics/RectF;F)V

    return-void
.end method
