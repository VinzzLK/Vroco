.class public Lmiuix/graphics/shadow/DropShadowHelper;
.super Ljava/lang/Object;
.source "DropShadowHelper.java"


# instance fields
.field protected mAlpha:F

.field protected mBlurRadiusPx:F

.field protected mContext:Landroid/content/Context;

.field protected mDropShadowConfig:Lmiuix/graphics/shadow/DropShadowConfig;

.field protected mEnableMiShadow:Z

.field protected mEnableShadow:Z

.field protected mIsLightTheme:Z

.field protected mLastDensity:F

.field protected mOffsetXPx:F

.field protected mOffsetYPx:F

.field protected mOriginViewParentClipState:[Z

.field protected mShadowColor:I

.field protected mShadowColorAlpha:I

.field protected mShadowPaint:Landroid/graphics/Paint;

.field protected mShadowRect:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lmiuix/graphics/shadow/DropShadowConfig;Z)V
    .locals 3

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput v0, p0, Lmiuix/graphics/shadow/DropShadowHelper;->mOffsetXPx:F

    .line 26
    iput v0, p0, Lmiuix/graphics/shadow/DropShadowHelper;->mOffsetYPx:F

    .line 27
    iput v0, p0, Lmiuix/graphics/shadow/DropShadowHelper;->mBlurRadiusPx:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 28
    iput v1, p0, Lmiuix/graphics/shadow/DropShadowHelper;->mAlpha:F

    .line 29
    iput v0, p0, Lmiuix/graphics/shadow/DropShadowHelper;->mLastDensity:F

    .line 30
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lmiuix/graphics/shadow/DropShadowHelper;->mShadowRect:Landroid/graphics/RectF;

    .line 32
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lmiuix/graphics/shadow/DropShadowHelper;->mShadowPaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lmiuix/graphics/shadow/DropShadowHelper;->mEnableShadow:Z

    .line 41
    iput-object p1, p0, Lmiuix/graphics/shadow/DropShadowHelper;->mContext:Landroid/content/Context;

    .line 42
    iput-object p2, p0, Lmiuix/graphics/shadow/DropShadowHelper;->mDropShadowConfig:Lmiuix/graphics/shadow/DropShadowConfig;

    .line 43
    iput-boolean p3, p0, Lmiuix/graphics/shadow/DropShadowHelper;->mIsLightTheme:Z

    .line 44
    invoke-static {}, Lmiuix/core/util/RomUtils;->getHyperOsVersion()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    sget-boolean v1, Lmiuix/core/util/MiShadowUtils;->SUPPORT_MI_SHADOW:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lmiuix/graphics/shadow/DropShadowHelper;->mEnableMiShadow:Z

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 48
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 46
    invoke-virtual {p0, p3, p1, p2}, Lmiuix/graphics/shadow/DropShadowHelper;->updateShadowValues(ZFLmiuix/graphics/shadow/DropShadowConfig;)V

    return-void
.end method


# virtual methods
.method public drawShadow(Landroid/graphics/Canvas;F)V
    .locals 1

    .line 74
    iget-boolean v0, p0, Lmiuix/graphics/shadow/DropShadowHelper;->mEnableMiShadow:Z

    if-eqz v0, :cond_0

    return-void

    .line 77
    :cond_0
    iget-object v0, p0, Lmiuix/graphics/shadow/DropShadowHelper;->mShadowRect:Landroid/graphics/RectF;

    iget-object p0, p0, Lmiuix/graphics/shadow/DropShadowHelper;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p2, p2, p0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public enableViewShadow(Landroid/view/View;ZI)V
    .locals 8

    .line 107
    iget-boolean v0, p0, Lmiuix/graphics/shadow/DropShadowHelper;->mEnableShadow:Z

    if-ne v0, p2, :cond_0

    return-void

    .line 110
    :cond_0
    iput-boolean p2, p0, Lmiuix/graphics/shadow/DropShadowHelper;->mEnableShadow:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    .line 113
    iget-boolean p2, p0, Lmiuix/graphics/shadow/DropShadowHelper;->mEnableMiShadow:Z

    if-eqz p2, :cond_1

    .line 114
    iget v2, p0, Lmiuix/graphics/shadow/DropShadowHelper;->mShadowColor:I

    iget v3, p0, Lmiuix/graphics/shadow/DropShadowHelper;->mOffsetXPx:F

    iget v4, p0, Lmiuix/graphics/shadow/DropShadowHelper;->mOffsetYPx:F

    iget v5, p0, Lmiuix/graphics/shadow/DropShadowHelper;->mBlurRadiusPx:F

    iget-object p2, p0, Lmiuix/graphics/shadow/DropShadowHelper;->mDropShadowConfig:Lmiuix/graphics/shadow/DropShadowConfig;

    iget v6, p2, Lmiuix/graphics/shadow/DropShadowConfig;->dispersion:F

    iget-boolean v7, p2, Lmiuix/graphics/shadow/DropShadowConfig;->clipShadowEnable:Z

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Lmiuix/core/util/MiShadowUtils;->setMiShadow(Landroid/view/View;IFFFFZ)V

    .line 121
    :cond_1
    new-array p2, p3, [Z

    iput-object p2, p0, Lmiuix/graphics/shadow/DropShadowHelper;->mOriginViewParentClipState:[Z

    move p2, v0

    :goto_0
    if-ge p2, p3, :cond_5

    .line 123
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 125
    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    .line 126
    iget-object v2, p0, Lmiuix/graphics/shadow/DropShadowHelper;->mOriginViewParentClipState:[Z

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getClipChildren()Z

    move-result v3

    aput-boolean v3, v2, p2

    .line 127
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 128
    check-cast p1, Landroid/view/View;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 134
    :cond_2
    iget-boolean p2, p0, Lmiuix/graphics/shadow/DropShadowHelper;->mEnableMiShadow:Z

    if-eqz p2, :cond_3

    .line 135
    invoke-static {p1}, Lmiuix/core/util/MiShadowUtils;->clearMiShadow(Landroid/view/View;)V

    :cond_3
    :goto_1
    if-ge v0, p3, :cond_4

    .line 138
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 140
    move-object p2, p1

    check-cast p2, Landroid/view/ViewGroup;

    .line 141
    iget-object v1, p0, Lmiuix/graphics/shadow/DropShadowHelper;->mOriginViewParentClipState:[Z

    aget-boolean v1, v1, v0

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 142
    check-cast p1, Landroid/view/View;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    .line 147
    iput-object p1, p0, Lmiuix/graphics/shadow/DropShadowHelper;->mOriginViewParentClipState:[Z

    :cond_5
    return-void
.end method

.method public getShadowRect()Landroid/graphics/RectF;
    .locals 0

    .line 84
    iget-object p0, p0, Lmiuix/graphics/shadow/DropShadowHelper;->mShadowRect:Landroid/graphics/RectF;

    return-object p0
.end method

.method public onConfigChanged(Landroid/view/View;Landroid/content/res/Configuration;Z)V
    .locals 7

    .line 152
    iput-boolean p3, p0, Lmiuix/graphics/shadow/DropShadowHelper;->mIsLightTheme:Z

    .line 153
    iget p2, p2, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float p2, p2

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float/2addr p2, v0

    const/high16 v0, 0x43200000    # 160.0f

    div-float/2addr p2, v0

    .line 154
    iget-object v0, p0, Lmiuix/graphics/shadow/DropShadowHelper;->mDropShadowConfig:Lmiuix/graphics/shadow/DropShadowConfig;

    invoke-virtual {p0, p3, p2, v0}, Lmiuix/graphics/shadow/DropShadowHelper;->updateShadowValues(ZFLmiuix/graphics/shadow/DropShadowConfig;)V

    .line 155
    iget-boolean p2, p0, Lmiuix/graphics/shadow/DropShadowHelper;->mEnableMiShadow:Z

    if-eqz p2, :cond_0

    .line 156
    iget v1, p0, Lmiuix/graphics/shadow/DropShadowHelper;->mShadowColor:I

    iget v2, p0, Lmiuix/graphics/shadow/DropShadowHelper;->mOffsetXPx:F

    iget v3, p0, Lmiuix/graphics/shadow/DropShadowHelper;->mOffsetYPx:F

    iget v4, p0, Lmiuix/graphics/shadow/DropShadowHelper;->mBlurRadiusPx:F

    iget-object p0, p0, Lmiuix/graphics/shadow/DropShadowHelper;->mDropShadowConfig:Lmiuix/graphics/shadow/DropShadowConfig;

    iget v5, p0, Lmiuix/graphics/shadow/DropShadowConfig;->dispersion:F

    iget-boolean v6, p0, Lmiuix/graphics/shadow/DropShadowConfig;->clipShadowEnable:Z

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Lmiuix/core/util/MiShadowUtils;->setMiShadow(Landroid/view/View;IFFFFZ)V

    :cond_0
    return-void
.end method

.method protected onDensityChanged(FLmiuix/graphics/shadow/DropShadowConfig;)V
    .locals 1

    .line 177
    iget v0, p2, Lmiuix/graphics/shadow/DropShadowConfig;->offsetXDp:F

    invoke-static {p1, v0}, Lmiuix/core/util/MiuixUIUtils;->dp2px(FF)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lmiuix/graphics/shadow/DropShadowHelper;->mOffsetXPx:F

    .line 178
    iget v0, p2, Lmiuix/graphics/shadow/DropShadowConfig;->offsetYDp:F

    invoke-static {p1, v0}, Lmiuix/core/util/MiuixUIUtils;->dp2px(FF)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lmiuix/graphics/shadow/DropShadowHelper;->mOffsetYPx:F

    .line 179
    iget p2, p2, Lmiuix/graphics/shadow/DropShadowConfig;->blurRadiusDp:F

    invoke-static {p1, p2}, Lmiuix/core/util/MiuixUIUtils;->dp2px(FF)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lmiuix/graphics/shadow/DropShadowHelper;->mBlurRadiusPx:F

    return-void
.end method

.method public setEnableMiShadow(Z)V
    .locals 0

    .line 53
    iput-boolean p1, p0, Lmiuix/graphics/shadow/DropShadowHelper;->mEnableMiShadow:Z

    return-void
.end method

.method public updateShadowRect(IIII)V
    .locals 0

    .line 70
    iget-object p0, p0, Lmiuix/graphics/shadow/DropShadowHelper;->mShadowRect:Landroid/graphics/RectF;

    int-to-float p3, p3

    int-to-float p1, p1

    sub-float/2addr p3, p1

    int-to-float p1, p4

    int-to-float p2, p2

    sub-float/2addr p1, p2

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p2, p3, p1}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method protected updateShadowValues(ZFLmiuix/graphics/shadow/DropShadowConfig;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 166
    iget p1, p3, Lmiuix/graphics/shadow/DropShadowConfig;->shadowColor:I

    goto :goto_0

    :cond_0
    iget p1, p3, Lmiuix/graphics/shadow/DropShadowConfig;->shadowDarkColor:I

    :goto_0
    iput p1, p0, Lmiuix/graphics/shadow/DropShadowHelper;->mShadowColor:I

    shr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    .line 167
    iput v0, p0, Lmiuix/graphics/shadow/DropShadowHelper;->mShadowColorAlpha:I

    .line 168
    iget-object v0, p0, Lmiuix/graphics/shadow/DropShadowHelper;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 169
    iget p1, p0, Lmiuix/graphics/shadow/DropShadowHelper;->mLastDensity:F

    cmpl-float p1, p1, p2

    if-eqz p1, :cond_1

    .line 170
    iput p2, p0, Lmiuix/graphics/shadow/DropShadowHelper;->mLastDensity:F

    .line 172
    :cond_1
    invoke-virtual {p0, p2, p3}, Lmiuix/graphics/shadow/DropShadowHelper;->onDensityChanged(FLmiuix/graphics/shadow/DropShadowConfig;)V

    .line 173
    iget-object p1, p0, Lmiuix/graphics/shadow/DropShadowHelper;->mShadowPaint:Landroid/graphics/Paint;

    iget p2, p0, Lmiuix/graphics/shadow/DropShadowHelper;->mBlurRadiusPx:F

    iget p3, p0, Lmiuix/graphics/shadow/DropShadowHelper;->mOffsetXPx:F

    iget v0, p0, Lmiuix/graphics/shadow/DropShadowHelper;->mOffsetYPx:F

    iget p0, p0, Lmiuix/graphics/shadow/DropShadowHelper;->mShadowColor:I

    invoke-virtual {p1, p2, p3, v0, p0}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    return-void
.end method
