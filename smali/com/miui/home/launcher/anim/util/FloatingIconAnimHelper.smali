.class public Lcom/miui/home/launcher/anim/util/FloatingIconAnimHelper;
.super Ljava/lang/Object;
.source "FloatingIconAnimHelper.java"


# instance fields
.field mBackgroundBitmapDrawable:Landroid/graphics/drawable/Drawable;

.field private mBackgroundDrawPaint:Landroid/graphics/Paint;

.field private mIconHeight:I

.field private mIconWidth:I

.field private mIsClamp:Z

.field private mIsCutting:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/anim/util/FloatingIconAnimHelper;->mBackgroundDrawPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    .line 30
    iput-boolean v0, p0, Lcom/miui/home/launcher/anim/util/FloatingIconAnimHelper;->mIsClamp:Z

    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lcom/miui/home/launcher/anim/util/FloatingIconAnimHelper;->mIsCutting:Z

    return-void
.end method

.method private canClamp()Z
    .locals 1

    .line 110
    iget-boolean v0, p0, Lcom/miui/home/launcher/anim/util/FloatingIconAnimHelper;->mIsClamp:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/miui/home/launcher/anim/util/FloatingIconAnimHelper;->mBackgroundBitmapDrawable:Landroid/graphics/drawable/Drawable;

    instance-of p0, p0, Lcom/miui/maml/FancyDrawable;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private centerImage(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/widget/FrameLayout$LayoutParams;Landroid/graphics/Rect;)V
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/miui/home/launcher/anim/util/FloatingIconAnimHelper;->mBackgroundBitmapDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    return-void

    .line 132
    :cond_0
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 133
    iget p2, p3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    int-to-float p2, p2

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p2, v0

    .line 134
    iget p3, p3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    int-to-float p3, p3

    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result p4

    int-to-float p4, p4

    mul-float/2addr p4, p2

    sub-float/2addr p3, p4

    const/high16 p4, 0x40000000    # 2.0f

    div-float/2addr p3, p4

    const/4 p4, 0x0

    invoke-virtual {p1, p3, p4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 135
    invoke-virtual {p1, p2, p2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 136
    iget-object p0, p0, Lcom/miui/home/launcher/anim/util/FloatingIconAnimHelper;->mBackgroundBitmapDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private cuttingImage(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/widget/FrameLayout$LayoutParams;Landroid/graphics/Rect;)V
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/miui/home/launcher/anim/util/FloatingIconAnimHelper;->mBackgroundBitmapDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    return-void

    .line 143
    :cond_0
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 144
    iget p2, p3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    int-to-float p2, p2

    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p2, p3

    .line 145
    invoke-virtual {p1, p2, p2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 146
    iget-object p0, p0, Lcom/miui/home/launcher/anim/util/FloatingIconAnimHelper;->mBackgroundBitmapDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private extendImage(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/widget/FrameLayout$LayoutParams;Landroid/graphics/Rect;)V
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/miui/home/launcher/anim/util/FloatingIconAnimHelper;->mBackgroundDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private fixImage(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/widget/FrameLayout$LayoutParams;Landroid/graphics/Rect;)V
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/miui/home/launcher/anim/util/FloatingIconAnimHelper;->mBackgroundBitmapDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    return-void

    .line 117
    :cond_0
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 118
    iget p2, p3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    int-to-float p2, p2

    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p2, v0

    iget v0, p3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    int-to-float v0, v0

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(FF)F

    move-result p2

    .line 119
    iget v0, p3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    int-to-float v0, v0

    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p2

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget p3, p3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    int-to-float p3, p3

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result p4

    int-to-float p4, p4

    mul-float/2addr p4, p2

    sub-float/2addr p3, p4

    div-float/2addr p3, v1

    invoke-virtual {p1, v0, p3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 120
    invoke-virtual {p1, p2, p2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 121
    iget-object p0, p0, Lcom/miui/home/launcher/anim/util/FloatingIconAnimHelper;->mBackgroundBitmapDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private setShaderIfNeed()V
    .locals 3

    .line 58
    invoke-direct {p0}, Lcom/miui/home/launcher/anim/util/FloatingIconAnimHelper;->canClamp()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 60
    iget-object v0, p0, Lcom/miui/home/launcher/anim/util/FloatingIconAnimHelper;->mBackgroundBitmapDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    .line 61
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 63
    :cond_0
    iget v1, p0, Lcom/miui/home/launcher/anim/util/FloatingIconAnimHelper;->mIconWidth:I

    iget v2, p0, Lcom/miui/home/launcher/anim/util/FloatingIconAnimHelper;->mIconHeight:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/home/launcher/anim/util/FloatingIconAnimHelper;->drawableToBitmap(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    return-void

    .line 68
    :cond_1
    new-instance v1, Landroid/graphics/BitmapShader;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v1, v0, v2, v2}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 69
    iget-object p0, p0, Lcom/miui/home/launcher/anim/util/FloatingIconAnimHelper;->mBackgroundDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_2
    return-void
.end method


# virtual methods
.method public drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/widget/FrameLayout$LayoutParams;I)Z
    .locals 4

    .line 90
    iget-object v0, p0, Lcom/miui/home/launcher/anim/util/FloatingIconAnimHelper;->mBackgroundBitmapDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    .line 91
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 92
    iget-object v1, p0, Lcom/miui/home/launcher/anim/util/FloatingIconAnimHelper;->mBackgroundBitmapDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 93
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 94
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    if-eqz p4, :cond_0

    .line 96
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/miui/home/launcher/anim/util/FloatingIconAnimHelper;->fixImage(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/widget/FrameLayout$LayoutParams;Landroid/graphics/Rect;)V

    goto :goto_1

    :cond_0
    cmpg-float p4, v1, v2

    if-ltz p4, :cond_3

    .line 97
    iget-boolean p4, p0, Lcom/miui/home/launcher/anim/util/FloatingIconAnimHelper;->mIsCutting:Z

    if-eqz p4, :cond_1

    goto :goto_0

    .line 99
    :cond_1
    invoke-direct {p0}, Lcom/miui/home/launcher/anim/util/FloatingIconAnimHelper;->canClamp()Z

    move-result p4

    if-eqz p4, :cond_2

    .line 100
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/miui/home/launcher/anim/util/FloatingIconAnimHelper;->extendImage(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/widget/FrameLayout$LayoutParams;Landroid/graphics/Rect;)V

    goto :goto_1

    .line 102
    :cond_2
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/miui/home/launcher/anim/util/FloatingIconAnimHelper;->centerImage(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/widget/FrameLayout$LayoutParams;Landroid/graphics/Rect;)V

    goto :goto_1

    .line 98
    :cond_3
    :goto_0
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/miui/home/launcher/anim/util/FloatingIconAnimHelper;->cuttingImage(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/widget/FrameLayout$LayoutParams;Landroid/graphics/Rect;)V

    :goto_1
    const/4 p0, 0x1

    return p0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method public drawableToBitmap(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;
    .locals 2

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 78
    :cond_0
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 79
    invoke-static {p2, p3, p0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 80
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v1, 0x0

    .line 81
    invoke-virtual {p1, v1, v1, p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 82
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object p0
.end method

.method public recycle()V
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/miui/home/launcher/anim/util/FloatingIconAnimHelper;->mBackgroundBitmapDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 155
    iput-object v0, p0, Lcom/miui/home/launcher/anim/util/FloatingIconAnimHelper;->mBackgroundBitmapDrawable:Landroid/graphics/drawable/Drawable;

    :cond_0
    return-void
.end method

.method public setIconWidthAndHeight(II)V
    .locals 0

    .line 37
    iput p1, p0, Lcom/miui/home/launcher/anim/util/FloatingIconAnimHelper;->mIconWidth:I

    .line 38
    iput p2, p0, Lcom/miui/home/launcher/anim/util/FloatingIconAnimHelper;->mIconHeight:I

    return-void
.end method

.method public setIsClamp(Z)V
    .locals 0

    .line 125
    iput-boolean p1, p0, Lcom/miui/home/launcher/anim/util/FloatingIconAnimHelper;->mIsClamp:Z

    return-void
.end method

.method public setIsCutting(Z)V
    .locals 0

    .line 160
    iput-boolean p1, p0, Lcom/miui/home/launcher/anim/util/FloatingIconAnimHelper;->mIsCutting:Z

    return-void
.end method

.method public setUpForegroundDrawPaint(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    if-nez p1, :cond_0

    .line 46
    new-instance p0, Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    const-string p1, "FloatingIconAnimHelper"

    const-string/jumbo v0, "setUpForegroundDrawPaint: background is null, return"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    .line 49
    :cond_0
    iput-object p1, p0, Lcom/miui/home/launcher/anim/util/FloatingIconAnimHelper;->mBackgroundBitmapDrawable:Landroid/graphics/drawable/Drawable;

    .line 51
    iget v0, p0, Lcom/miui/home/launcher/anim/util/FloatingIconAnimHelper;->mIconWidth:I

    iget v1, p0, Lcom/miui/home/launcher/anim/util/FloatingIconAnimHelper;->mIconHeight:I

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 53
    iget-object p1, p0, Lcom/miui/home/launcher/anim/util/FloatingIconAnimHelper;->mBackgroundDrawPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 54
    invoke-direct {p0}, Lcom/miui/home/launcher/anim/util/FloatingIconAnimHelper;->setShaderIfNeed()V

    return-void
.end method
