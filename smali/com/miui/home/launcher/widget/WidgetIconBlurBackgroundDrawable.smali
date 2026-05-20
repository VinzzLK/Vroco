.class public Lcom/miui/home/launcher/widget/WidgetIconBlurBackgroundDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "WidgetIconBlurBackgroundDrawable.java"


# instance fields
.field private final WIDGET_PADDING:I

.field private final backgroundBlurColor:I

.field private isNeedClipTop:Z

.field private final mPaint:Landroid/graphics/Paint;

.field private final mRadius:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    .line 34
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 22
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getMiuiWidgetPaddingTop()I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/widget/WidgetIconBlurBackgroundDrawable;->WIDGET_PADDING:I

    .line 24
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/widget/WidgetIconBlurBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    .line 35
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isDarkMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isMiuiLauncher()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0606d4

    .line 36
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/widget/WidgetIconBlurBackgroundDrawable;->backgroundBlurColor:I

    goto :goto_0

    :cond_0
    const v0, 0x7f0606d5

    .line 38
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/widget/WidgetIconBlurBackgroundDrawable;->backgroundBlurColor:I

    .line 40
    :goto_0
    iput-boolean p2, p0, Lcom/miui/home/launcher/widget/WidgetIconBlurBackgroundDrawable;->isNeedClipTop:Z

    .line 42
    invoke-static {p1}, Lcom/miui/home/launcher/widget/RoundedCornerEnforcement;->computeEnforcedRadius(Landroid/content/Context;)F

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/widget/WidgetIconBlurBackgroundDrawable;->mRadius:F

    .line 43
    invoke-direct {p0}, Lcom/miui/home/launcher/widget/WidgetIconBlurBackgroundDrawable;->initPaint()V

    return-void
.end method

.method private initPaint()V
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/miui/home/launcher/widget/WidgetIconBlurBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/miui/home/launcher/widget/WidgetIconBlurBackgroundDrawable;->backgroundBlurColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 48
    iget-object v0, p0, Lcom/miui/home/launcher/widget/WidgetIconBlurBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 49
    iget-object p0, p0, Lcom/miui/home/launcher/widget/WidgetIconBlurBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 54
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 55
    new-instance v1, Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    .line 56
    iget-boolean v4, p0, Lcom/miui/home/launcher/widget/WidgetIconBlurBackgroundDrawable;->isNeedClipTop:Z

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/miui/home/launcher/widget/WidgetIconBlurBackgroundDrawable;->WIDGET_PADDING:I

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    add-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, v0, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    invoke-direct {v1, v2, v3, v4, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v0, p0, Lcom/miui/home/launcher/widget/WidgetIconBlurBackgroundDrawable;->mRadius:F

    iget-object p0, p0, Lcom/miui/home/launcher/widget/WidgetIconBlurBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    .line 55
    invoke-virtual {p1, v1, v0, v0, p0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getOpacity()I
    .locals 0

    const/4 p0, -0x3

    return p0
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/miui/home/launcher/widget/WidgetIconBlurBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 68
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
