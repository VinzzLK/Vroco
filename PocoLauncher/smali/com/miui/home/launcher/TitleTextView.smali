.class public Lcom/miui/home/launcher/TitleTextView;
.super Landroid/widget/TextView;
.source "TitleTextView.java"


# static fields
.field private static sNullLayoutMethod:Ljava/lang/reflect/Method;


# instance fields
.field private mIndicatorDrawableMargin:I

.field private mIsDrawingInScreenPreview:Z

.field private mIsShowNewInstallNotification:Z

.field private mIsShowSpeedOfLightIndicator:Z

.field private mLastTextLength:I

.field private mNotificationDrawable:Landroid/graphics/drawable/Drawable;

.field private mShadowOffsetY:F

.field private mSpeedOfLightDrawable:Landroid/graphics/drawable/Drawable;

.field private mTitleShadowBound:[F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 44
    :try_start_0
    const-class v0, Landroid/widget/TextView;

    const-string v1, "nullLayouts"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/TitleTextView;->sNullLayoutMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "TitleTextView"

    const-string v2, "Failed to get TextView#nullLayouts() method"

    .line 47
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getIndicatorDrawableMargin()I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/TitleTextView;->mIndicatorDrawableMargin:I

    const/4 p1, 0x0

    .line 38
    iput-boolean p1, p0, Lcom/miui/home/launcher/TitleTextView;->mIsDrawingInScreenPreview:Z

    const/4 p2, 0x2

    new-array p2, p2, [F

    .line 39
    iput-object p2, p0, Lcom/miui/home/launcher/TitleTextView;->mTitleShadowBound:[F

    .line 53
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getIconTitleTextSize()F

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method

.method private calShadowBoundsAndSetDynamicShadow()V
    .locals 2

    .line 177
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/TitleTextView;->mTitleShadowBound:[F

    invoke-static {v0, v1}, Lcom/miui/home/launcher/common/TitleShadowUtils;->getShadowBounds(Landroid/text/Layout;[F)V

    .line 178
    invoke-virtual {p0}, Lcom/miui/home/launcher/TitleTextView;->setTitleDynamicShadow()V

    return-void
.end method

.method private calTitleShadowOffsetY()V
    .locals 4

    .line 196
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getTextHeight()I

    move-result v0

    .line 197
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v1

    mul-int/2addr v1, v0

    .line 198
    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    .line 199
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    int-to-float v1, v1

    div-float/2addr v1, v2

    add-float/2addr v3, v1

    sub-float/2addr v3, v0

    iput v3, p0, Lcom/miui/home/launcher/TitleTextView;->mShadowOffsetY:F

    return-void
.end method

.method private drawNinePatchShadow(Landroid/graphics/Canvas;)V
    .locals 2

    .line 171
    invoke-static {}, Lcom/miui/home/launcher/common/BlurUtilities;->isThreeLayerBlurSupported()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/TitleTextView;->isNeedShowShadow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/miui/home/launcher/TitleTextView;->mTitleShadowBound:[F

    const/4 v1, 0x0

    invoke-static {p1, p0, v0, v1}, Lcom/miui/home/launcher/common/TitleShadowUtils;->drawNinePatchShadow(Landroid/graphics/Canvas;Landroid/widget/TextView;[FI)V

    :cond_0
    return-void
.end method

.method private getNotificationDrawable()Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 139
    iget-object v0, p0, Lcom/miui/home/launcher/TitleTextView;->mNotificationDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 140
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080662

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/TitleTextView;->mNotificationDrawable:Landroid/graphics/drawable/Drawable;

    .line 141
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060127

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 143
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/TitleTextView;->mNotificationDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method private getSeepOfLightDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 132
    iget-object v0, p0, Lcom/miui/home/launcher/TitleTextView;->mSpeedOfLightDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 133
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0806e1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/TitleTextView;->mSpeedOfLightDrawable:Landroid/graphics/drawable/Drawable;

    .line 135
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/TitleTextView;->mSpeedOfLightDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 148
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/TitleTextView;->drawNinePatchShadow(Landroid/graphics/Canvas;)V

    .line 149
    invoke-super {p0, p1}, Landroid/widget/TextView;->draw(Landroid/graphics/Canvas;)V

    .line 150
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    .line 152
    iget-boolean v1, p0, Lcom/miui/home/launcher/TitleTextView;->mIsShowSpeedOfLightIndicator:Z

    if-eqz v1, :cond_0

    .line 153
    invoke-direct {p0}, Lcom/miui/home/launcher/TitleTextView;->getSeepOfLightDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 154
    :cond_0
    iget-boolean v1, p0, Lcom/miui/home/launcher/TitleTextView;->mIsShowNewInstallNotification:Z

    if-eqz v1, :cond_1

    .line 155
    invoke-direct {p0}, Lcom/miui/home/launcher/TitleTextView;->getNotificationDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 158
    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/miui/home/launcher/TitleTextView;->mIndicatorDrawableMargin:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    .line 159
    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->getFirstLineHeight(Landroid/widget/TextView;)I

    move-result p0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    sub-int/2addr p0, v2

    div-int/lit8 p0, p0, 0x2

    int-to-float p0, p0

    const/4 v2, 0x0

    .line 160
    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v3

    float-to-int v3, v3

    float-to-int v4, p0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr p0, v2

    float-to-int p0, p0

    invoke-virtual {v0, v3, v4, v1, p0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 161
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    return-void
.end method

.method public getShadowOffsetY()F
    .locals 0

    .line 203
    iget p0, p0, Lcom/miui/home/launcher/TitleTextView;->mShadowOffsetY:F

    return p0
.end method

.method public getTitleShadowBound()[F
    .locals 0

    .line 207
    iget-object p0, p0, Lcom/miui/home/launcher/TitleTextView;->mTitleShadowBound:[F

    return-object p0
.end method

.method public isNeedShowShadow()Z
    .locals 1

    .line 189
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isNoWordModel()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/home/launcher/TitleTextView;->mIsDrawingInScreenPreview:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 192
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/home/launcher/common/TitleShadowUtils;->isInWorkspace(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 79
    invoke-super/range {p0 .. p5}, Landroid/widget/TextView;->onLayout(ZIIII)V

    if-eqz p1, :cond_0

    .line 81
    invoke-direct {p0}, Lcom/miui/home/launcher/TitleTextView;->calShadowBoundsAndSetDynamicShadow()V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 58
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 60
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getTitleMarginTop()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 62
    :cond_0
    invoke-static {p0}, Lcom/miui/home/launcher/util/OperatorGridUtils;->setMaxLines(Landroid/widget/TextView;)V

    .line 63
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    return-void
.end method

.method public setIsDrawingInScreenPreview(Z)V
    .locals 0

    .line 211
    iput-boolean p1, p0, Lcom/miui/home/launcher/TitleTextView;->mIsDrawingInScreenPreview:Z

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 0

    .line 68
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    if-eqz p1, :cond_0

    .line 69
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 70
    :goto_0
    iget p2, p0, Lcom/miui/home/launcher/TitleTextView;->mLastTextLength:I

    if-eq p1, p2, :cond_1

    .line 71
    iput p1, p0, Lcom/miui/home/launcher/TitleTextView;->mLastTextLength:I

    .line 73
    invoke-direct {p0}, Lcom/miui/home/launcher/TitleTextView;->calShadowBoundsAndSetDynamicShadow()V

    :cond_1
    return-void
.end method

.method public setTitleDynamicShadow()V
    .locals 2

    .line 182
    invoke-static {}, Lcom/miui/home/launcher/common/BlurUtilities;->isThreeLayerBlurSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/TitleTextView;->isNeedShowShadow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    invoke-direct {p0}, Lcom/miui/home/launcher/TitleTextView;->calTitleShadowOffsetY()V

    .line 184
    iget-object v0, p0, Lcom/miui/home/launcher/TitleTextView;->mTitleShadowBound:[F

    iget v1, p0, Lcom/miui/home/launcher/TitleTextView;->mShadowOffsetY:F

    invoke-static {p0, v0, v1}, Lcom/miui/home/launcher/common/TitleShadowUtils;->setDynamicShadow(Landroid/widget/TextView;[FF)V

    :cond_0
    return-void
.end method

.method public updateNewInstallIndicator(Z)V
    .locals 2

    .line 104
    iget-boolean v0, p0, Lcom/miui/home/launcher/TitleTextView;->mIsShowNewInstallNotification:Z

    if-eq v0, p1, :cond_1

    .line 105
    iput-boolean p1, p0, Lcom/miui/home/launcher/TitleTextView;->mIsShowNewInstallNotification:Z

    .line 106
    invoke-direct {p0}, Lcom/miui/home/launcher/TitleTextView;->getNotificationDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 109
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    iget v0, p0, Lcom/miui/home/launcher/TitleTextView;->mIndicatorDrawableMargin:I

    add-int/2addr p1, v0

    goto :goto_0

    .line 111
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getTitlePaddingSide()I

    move-result p1

    .line 113
    :goto_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v1

    invoke-virtual {p0, p1, v0, p1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_1
    return-void
.end method

.method public updateSizeOnIconSizeChanged()V
    .locals 2

    .line 167
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getIconTitleTextSize()F

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method

.method public updateSpeedOfLightIndicator(Z)V
    .locals 2

    .line 118
    iget-boolean v0, p0, Lcom/miui/home/launcher/TitleTextView;->mIsShowSpeedOfLightIndicator:Z

    if-eq v0, p1, :cond_1

    .line 119
    iput-boolean p1, p0, Lcom/miui/home/launcher/TitleTextView;->mIsShowSpeedOfLightIndicator:Z

    .line 120
    invoke-direct {p0}, Lcom/miui/home/launcher/TitleTextView;->getSeepOfLightDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 123
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    iget v0, p0, Lcom/miui/home/launcher/TitleTextView;->mIndicatorDrawableMargin:I

    add-int/2addr p1, v0

    goto :goto_0

    .line 125
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getTitlePaddingSide()I

    move-result p1

    .line 127
    :goto_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v1

    invoke-virtual {p0, p1, v0, p1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_1
    return-void
.end method
