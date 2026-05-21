.class public Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;
.super Landroid/widget/FrameLayout;
.source "Carousel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel$OnChildAddedListener;,
        Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel$OnChildRemovedListener;,
        Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel$OnSelectedChildChangedListener;,
        Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel$SlidingDirection;
    }
.end annotation


# static fields
.field private static final BACK_ALPHA_DELTA:F = 0.2f

.field private static final BACK_SCALE_DELTA:F = 0.05f

.field private static final DEFAULT_DURATION:I = 0xfa

.field private static final FORE_SCALE_DELTA:F = 0.053f

.field private static final TAG:Ljava/lang/String; = "Carousel"


# instance fields
.field private final animationTranslate:F

.field private final changedDispatcher:Lcom/miui/miuiwidget/servicedelivery/view/carousel/CarouselChangedDispatcher;

.field private final changedListenerRegistry:Lcom/miui/miuiwidget/servicedelivery/view/carousel/CarouselChangedListenerRegistryImpl;

.field private downX:F

.field private downY:F

.field private drawSnapShot:Z

.field private isScroll:Z

.field private mSlidingUp:Z

.field private moveX:F

.field private moveY:F

.field private final overScroller:Landroid/widget/OverScroller;

.field private pendingSelectedPosition:I

.field private selectedPosition:I

.field private final selectedPositionChangeLine:F

.field private shouldScroll:Z

.field private startDragging:Z

.field private startFakeSliding:Z

.field private velocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 69
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    .line 37
    iput v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;->selectedPosition:I

    .line 38
    iput v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;->pendingSelectedPosition:I

    const/4 v0, 0x0

    .line 40
    iput v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;->downY:F

    .line 41
    iput v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;->downX:F

    .line 42
    iput v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;->moveX:F

    .line 43
    iput v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;->moveY:F

    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;->shouldScroll:Z

    .line 45
    iput-boolean v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;->startDragging:Z

    .line 49
    iput-boolean v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;->mSlidingUp:Z

    .line 50
    iput-boolean v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;->startFakeSliding:Z

    .line 58
    iput-boolean v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;->drawSnapShot:Z

    .line 60
    iput-boolean v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;->isScroll:Z

    .line 62
    new-instance v0, Lcom/miui/miuiwidget/servicedelivery/view/carousel/CarouselChangedListenerRegistryImpl;

    invoke-direct {v0}, Lcom/miui/miuiwidget/servicedelivery/view/carousel/CarouselChangedListenerRegistryImpl;-><init>()V

    iput-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;->changedListenerRegistry:Lcom/miui/miuiwidget/servicedelivery/view/carousel/CarouselChangedListenerRegistryImpl;

    .line 64
    new-instance v1, Lcom/miui/miuiwidget/servicedelivery/view/carousel/CarouselChangedDispatcher;

    invoke-direct {v1, v0}, Lcom/miui/miuiwidget/servicedelivery/view/carousel/CarouselChangedDispatcher;-><init>(Lcom/miui/miuiwidget/servicedelivery/view/carousel/CarouselChangedListenerRegistryImpl;)V

    iput-object v1, p0, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;->changedDispatcher:Lcom/miui/miuiwidget/servicedelivery/view/carousel/CarouselChangedDispatcher;

    .line 70
    new-instance v0, Landroid/widget/OverScroller;

    invoke-direct {v0, p1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;->overScroller:Landroid/widget/OverScroller;

    .line 71
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/miui/miuiwidget/R$dimen;->delivery_widget_animation_translate:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;->animationTranslate:F

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    .line 72
    iput p1, p0, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;->selectedPositionChangeLine:F

    const/4 p1, 0x1

    .line 73
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    return-void
.end method

.method private clipRoundCorner(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 6

    .line 519
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 520
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 521
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 522
    new-instance v3, Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    .line 523
    new-instance v4, Landroid/graphics/BitmapShader;

    sget-object v5, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v4, p1, v5, v5}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 525
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/miui/miuiwidget/R$dimen;->delivery_widget_radius:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    .line 526
    new-instance p1, Landroid/graphics/Canvas;

    invoke-direct {p1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 527
    new-instance v4, Landroid/graphics/RectF;

    int-to-float v0, v0

    int-to-float v1, v1

    const/4 v5, 0x0

    invoke-direct {v4, v5, v5, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v4, p0, p0, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-object v2
.end method

.method private computeFakeSlidingFactor(ZF)F
    .locals 4

    .line 352
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p0

    int-to-float p0, p0

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float/2addr p0, v0

    div-float/2addr p2, p0

    .line 353
    invoke-static {v0, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    if-eqz p1, :cond_0

    float-to-double p1, p2

    .line 355
    invoke-static {p1, p2}, Ljava/lang/Math;->asin(D)D

    move-result-wide p1

    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    div-double/2addr p1, v2

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide p1

    goto :goto_0

    :cond_0
    const-wide v2, 0x3ff921fb54442d18L    # 1.5707963267948966

    float-to-double p1, p2

    mul-double/2addr p1, v2

    .line 357
    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide p1

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide p1

    :goto_0
    float-to-double v0, p0

    mul-double/2addr p1, v0

    double-to-float p1, p1

    div-float/2addr p1, p0

    return p1
.end method

.method private computeSlidingFactor(ZF)F
    .locals 5

    .line 336
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p0

    int-to-float p0, p0

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float/2addr p0, v0

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    add-float/2addr p2, p0

    .line 338
    invoke-static {p0, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v3, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    div-float/2addr p1, p0

    .line 339
    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    float-to-double p1, p1

    .line 340
    invoke-static {p1, p2}, Ljava/lang/Math;->asin(D)D

    move-result-wide p1

    const-wide/high16 v3, 0x3ff8000000000000L    # 1.5

    div-double/2addr p1, v3

    invoke-static {p1, p2, v1, v2}, Ljava/lang/Math;->min(DD)D

    move-result-wide p1

    goto :goto_0

    .line 342
    :cond_0
    invoke-static {p0, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v3, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    div-float/2addr p1, p0

    .line 343
    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const-wide v3, 0x3ff921fb54442d18L    # 1.5707963267948966

    float-to-double p1, p1

    mul-double/2addr p1, v3

    .line 344
    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide p1

    invoke-static {p1, p2, v1, v2}, Ljava/lang/Math;->min(DD)D

    move-result-wide p1

    :goto_0
    float-to-double v0, p0

    mul-double/2addr p1, v0

    double-to-float p1, p1

    div-float/2addr p1, p0

    return p1
.end method

.method private drawSnapShot(Landroid/graphics/Canvas;)V
    .locals 6

    .line 501
    iget v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;->selectedPosition:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 502
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 503
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 504
    invoke-virtual {v0, v2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 506
    invoke-direct {p0, v1}, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;->clipRoundCorner(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 507
    new-instance v0, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    .line 508
    new-instance v2, Landroid/graphics/BitmapShader;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v2, p0, v3, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 509
    new-instance v2, Landroid/graphics/RectF;

    .line 512
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v3, 0x0

    .line 509
    invoke-virtual {p1, p0, v3, v2, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 514
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 515
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    return-void
.end method

.method private findViewIndex(Landroid/view/View;)I
    .locals 3

    .line 454
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 456
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-ne v2, p1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private isScrolling()Z
    .locals 1

    .line 434
    iget v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;->pendingSelectedPosition:I

    iget p0, p0, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;->selectedPosition:I

    if-eq v0, p0, :cond_0

    if-ltz v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private resetChildren()V
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    .line 101
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 102
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 103
    iget v3, p0, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;->selectedPosition:I

    if-ne v1, v3, :cond_0

    move v3, v0

    goto :goto_1

    :cond_0
    const/4 v3, 0x4

    :goto_1
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 104
    iget v3, p0, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;->selectedPosition:I

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    if-ne v1, v3, :cond_1

    move v3, v5

    goto :goto_2

    :cond_1
    move v3, v4

    :goto_2
    invoke-virtual {v2, v3}, Landroid/view/View;->setZ(F)V

    .line 105
    invoke-virtual {v2, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 106
    invoke-virtual {v2, v5}, Landroid/view/View;->setAlpha(F)V

    .line 107
    invoke-virtual {v2, v5}, Landroid/view/View;->setScaleX(F)V

    .line 108
    invoke-virtual {v2, v5}, Landroid/view/View;->setScaleY(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private resetSlidingParams()V
    .locals 1

    const/4 v0, 0x0

    .line 462
    iput v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;->moveX:F

    .line 463
    iput v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;->moveY:F

    .line 464
    iput v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;->downY:F

    const/4 v0, 0x0

    .line 465
    iput-boolean v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;->startDragging:Z

    .line 466
    iput-boolean v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;->shouldScroll:Z

    .line 467
    iget v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;->selectedPosition:I

    iput v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;->pendingSelectedPosition:I

    return-void
.end method

.method private setAccessibility()V
    .locals 2

    .line 372
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    const/4 v0, 0x2

    .line 374
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setImportantForAccessibility(I)V

    goto :goto_0

    .line 376
    :cond_0
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setImportantForAccessibility(I)V

    :goto_0
    return-void
.end method

.method private sliding(ZF)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 246
    iget-boolean v3, v0, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;->isScroll:Z

    if-nez v3, :cond_0

    .line 248
    iput-boolean v1, v0, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;->mSlidingUp:Z

    :cond_0
    const/4 v3, 0x1

    .line 250
    iput-boolean v3, v0, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;->isScroll:Z

    .line 251
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v4

    if-nez v4, :cond_1

    return-void

    .line 254
    :cond_1
    iget v5, v0, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;->selectedPosition:I

    sub-int/2addr v5, v3

    add-int/2addr v5, v4

    rem-int/2addr v5, v4

    .line 255
    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 256
    iget v7, v0, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;->selectedPosition:I

    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 257
    iget v8, v0, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;->selectedPosition:I

    add-int/2addr v8, v3

    rem-int/2addr v8, v4

    .line 258
    invoke-virtual {v0, v8}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v7, :cond_a

    if-eqz v1, :cond_2

    if-eqz v4, :cond_a

    :cond_2
    if-nez v1, :cond_3

    if-nez v6, :cond_3

    goto/16 :goto_4

    .line 266
    :cond_3
    iget v9, v0, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;->animationTranslate:F

    mul-float/2addr v9, v2

    if-eqz v1, :cond_4

    move-object v10, v6

    goto :goto_0

    :cond_4
    move-object v10, v4

    :goto_0
    if-eqz v10, :cond_5

    const/4 v11, 0x4

    .line 270
    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    const-wide/high16 v11, 0x3fe0000000000000L    # 0.5

    const v13, 0x3e4ccccd    # 0.2f

    const v14, 0x3d4ccccd    # 0.05f

    const/4 v15, 0x0

    const/4 v3, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    if-eqz v1, :cond_7

    .line 276
    invoke-virtual {v7, v15}, Landroid/view/View;->setZ(F)V

    .line 277
    invoke-virtual {v7, v3}, Landroid/view/View;->setVisibility(I)V

    .line 278
    invoke-virtual {v7, v15}, Landroid/view/View;->setTranslationY(F)V

    sub-float v1, v10, v2

    mul-float/2addr v14, v1

    sub-float v5, v10, v14

    .line 279
    invoke-virtual {v7, v5}, Landroid/view/View;->setScaleX(F)V

    .line 280
    invoke-virtual {v7, v5}, Landroid/view/View;->setScaleY(F)V

    mul-float/2addr v1, v13

    sub-float v1, v10, v1

    .line 281
    invoke-virtual {v7, v1}, Landroid/view/View;->setAlpha(F)V

    .line 283
    invoke-virtual {v4, v10}, Landroid/view/View;->setZ(F)V

    .line 284
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 285
    invoke-virtual {v4, v9}, Landroid/view/View;->setTranslationY(F)V

    mul-float v1, v2, v2

    sub-float/2addr v10, v1

    .line 286
    invoke-virtual {v4, v10}, Landroid/view/View;->setAlpha(F)V

    float-to-double v1, v2

    cmpg-double v1, v1, v11

    if-gez v1, :cond_6

    move v5, v8

    goto :goto_1

    .line 290
    :cond_6
    iget v1, v0, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;->selectedPosition:I

    move v5, v1

    :goto_1
    const/4 v1, 0x1

    goto :goto_3

    .line 296
    :cond_7
    invoke-virtual {v6, v15}, Landroid/view/View;->setZ(F)V

    .line 297
    invoke-virtual {v6, v3}, Landroid/view/View;->setVisibility(I)V

    .line 298
    invoke-virtual {v6, v15}, Landroid/view/View;->setTranslationY(F)V

    sub-float v1, v10, v2

    mul-float/2addr v14, v1

    sub-float v4, v10, v14

    .line 299
    invoke-virtual {v6, v4}, Landroid/view/View;->setScaleX(F)V

    .line 300
    invoke-virtual {v6, v4}, Landroid/view/View;->setScaleY(F)V

    mul-float/2addr v1, v13

    sub-float v1, v10, v1

    .line 301
    invoke-virtual {v6, v1}, Landroid/view/View;->setAlpha(F)V

    .line 303
    invoke-virtual {v7, v10}, Landroid/view/View;->setZ(F)V

    .line 304
    invoke-virtual {v7, v3}, Landroid/view/View;->setVisibility(I)V

    .line 305
    invoke-virtual {v7, v9}, Landroid/view/View;->setTranslationY(F)V

    mul-float v1, v2, v2

    mul-float/2addr v1, v2

    sub-float/2addr v10, v1

    .line 306
    invoke-virtual {v7, v10}, Landroid/view/View;->setAlpha(F)V

    float-to-double v1, v2

    cmpl-double v1, v1, v11

    if-lez v1, :cond_8

    goto :goto_2

    .line 310
    :cond_8
    iget v5, v0, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;->selectedPosition:I

    :goto_2
    const/4 v1, 0x2

    .line 313
    :goto_3
    iget v2, v0, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;->pendingSelectedPosition:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_9

    .line 314
    iget v2, v0, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;->selectedPosition:I

    iput v2, v0, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;->pendingSelectedPosition:I

    .line 316
    :cond_9
    iget v2, v0, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;->pendingSelectedPosition:I

    if-eq v5, v2, :cond_a

    .line 317
    iget-object v4, v0, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;->changedDispatcher:Lcom/miui/miuiwidget/servicedelivery/view/carousel/CarouselChangedDispatcher;

    invoke-virtual {v4, v2, v5, v1, v3}, Lcom/miui/miuiwidget/servicedelivery/view/carousel/CarouselChangedDispatcher;->dispatchSelectedChildChanged(IIIZ)V

    .line 323
    iput v5, v0, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;->pendingSelectedPosition:I

    :cond_a
    :goto_4
    return-void
.end method

.method private startFakeSliding(F)V
    .locals 7

    .line 194
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 196
    iput-boolean v1, p0, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;->startFakeSliding:Z

    .line 197
    iget-object v2, p0, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;->velocityTracker:Landroid/view/VelocityTracker;

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 199
    iget-boolean v2, p0, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;->mSlidingUp:Z

    const/4 v3, 0x0

    cmpg-float v4, p1, v3

    if-gez v4, :cond_1

    move v4, v1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    if-eq v2, v4, :cond_2

    move p1, v3

    :cond_2
    if-eqz v2, :cond_3

    .line 202
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, p1

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result p1

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    :goto_1
    invoke-static {v3, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 204
    iget-object v2, p0, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v2, v2, v4

    if-lez v2, :cond_6

    .line 206
    iget-boolean v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;->mSlidingUp:Z

    if-eqz v0, :cond_5

    :cond_4
    neg-float v0, p1

    goto :goto_5

    :cond_5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    :goto_2
    int-to-float v0, v0

    sub-float/2addr v0, p1

    goto :goto_5

    .line 208
    :cond_6
    iget-boolean v2, p0, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;->mSlidingUp:Z

    if-eqz v2, :cond_7

    iget v2, p0, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;->selectedPosition:I

    add-int/2addr v2, v1

    rem-int/2addr v2, v0

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    goto :goto_3

    :cond_7
    iget v1, p0, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;->selectedPosition:I

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 209
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "slidingUp:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;->mSlidingUp:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " selectedPosition:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;->selectedPosition:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " childCount:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Carousel"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_8

    goto :goto_4

    .line 210
    :cond_8
    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v3

    .line 211
    :goto_4
    iget v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;->selectedPositionChangeLine:F

    cmpl-float v0, v3, v0

    if-ltz v0, :cond_4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    goto :goto_2

    .line 213
    :goto_5
    iget-object v1, p0, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;->overScroller:Landroid/widget/OverScroller;

    const/4 v2, 0x0

    float-to-int v3, p1

    const/4 v4, 0x0

    float-to-int v5, v0

    const/16 v6, 0x1f4

    invoke-virtual/range {v1 .. v6}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 214
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 215
    iget-object p1, p0, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    .line 216
    iget-object p0, p0, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p0}, Landroid/view/VelocityTracker;->recycle()V

    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 1

    .line 382
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 383
    iget-object p1, p0, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;->changedDispatcher:Lcom/miui/miuiwidget/servicedelivery/view/carousel/CarouselChangedDispatcher;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Lcom/miui/miuiwidget/servicedelivery/view/carousel/CarouselChangedDispatcher;->dispatchChildAdded(I)V

    .line 384
    invoke-direct {p0}, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;->setAccessibility()V

    return-void
.end method

.method public computeScroll()V
    .locals 7

    .line 221
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeScroll()V

    .line 222
    iget-boolean v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;->startFakeSliding:Z

    if-nez v0, :cond_0

    return-void

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;->overScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_3

    .line 224
    iget-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;->overScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    .line 225
    iget-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;->overScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v0

    int-to-float v0, v0

    float-to-double v1, v0

    .line 228
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    int-to-double v3, v3

    const-wide v5, 0x3fef0a3d70a3d70aL    # 0.97

    mul-double/2addr v3, v5

    cmpl-double v3, v1, v3

    if-gtz v3, :cond_1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    int-to-double v3, v3

    const-wide v5, 0x3f9eb851eb851eb8L    # 0.03

    mul-double/2addr v3, v5

    cmpg-double v1, v1, v3

    if-gez v1, :cond_2

    .line 229
    :cond_1
    iget-object v1, p0, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;->overScroller:Landroid/widget/OverScroller;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/OverScroller;->forceFinished(Z)V

    .line 232
    :cond_2
    iget-boolean v1, p0, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;->mSlidingUp:Z

    invoke-direct {p0, v1, v0}, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;->computeFakeSlidingFactor(ZF)F

    move-result v0

    invoke-direct {p0, v1, v0}, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;->sliding(ZF)V

    .line 233
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .line 235
    iput-boolean v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;->isScroll:Z

    .line 236
    iput-boolean v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;->startFakeSliding:Z

    .line 237
    iget v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;->pendingSelectedPosition:I

    iput v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;->selectedPosition:I

    .line 238
    invoke-direct {p0}, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;->resetChildren()V

    :goto_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 439
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    .line 441
    iget-boolean v1, p0, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;->drawSnapShot:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;->selectedPosition:I

    if-ltz v1, :cond_0

    if-ge v1, v0, :cond_0

    .line 442
    invoke-direct {p0, p1}, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;->drawSnapShot(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 444
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method public getChangedListenerRegistry()Lcom/miui/miuiwidget/servicedelivery/view/carousel/CarouselChangedListenerRegistry;
    .locals 0

    .line 493
    iget-object p0, p0, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;->changedListenerRegistry:Lcom/miui/miuiwidget/servicedelivery/view/carousel/CarouselChangedListenerRegistryImpl;

    return-object p0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 114
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;->velocityTracker:Landroid/view/VelocityTracker;

    .line 115
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    .line 117
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    if-eq v0, v1, :cond_1

    .line 143
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0

    .line 127
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    iget v3, p0, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;->downX:F

    sub-float/2addr v0, v3

    .line 128
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    add-float/2addr p1, v1

    iget v1, p0, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;->downY:F

    sub-float/2addr p1, v1

    .line 129
    iget-boolean v1, p0, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;->startDragging:Z

    if-nez v1, :cond_2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    int-to-float v1, v1

    cmpl-float p1, p1, v1

    if-lez p1, :cond_2

    .line 130
    iput-boolean v2, p0, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;->startDragging:Z

    .line 131
    iput-boolean v2, p0, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;->shouldScroll:Z

    .line 132
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 134
    :cond_2
    iget-boolean p1, p0, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;->startDragging:Z

    if-nez p1, :cond_3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_3

    .line 135
    iput-boolean v2, p0, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;->startDragging:Z

    const/4 v2, 0x0

    goto :goto_0

    .line 138
    :cond_3
    iget-boolean v2, p0, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;->shouldScroll:Z

    goto :goto_0

    .line 119
    :cond_4
    invoke-direct {p0}, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;->resetSlidingParams()V

    .line 120
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;->downX:F

    .line 121
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;->downY:F

    .line 122
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    :goto_0
    return v2
.end method

.method public onLayout(ZIIII)V
    .locals 3

    .line 78
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 79
    :cond_0
    iget v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;->selectedPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const-string v0, "Carousel"

    const-string v2, "onLayout: dispatchSelectedChildChanged 0"

    .line 80
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 81
    iput v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;->selectedPosition:I

    .line 82
    iget-object v2, p0, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;->changedDispatcher:Lcom/miui/miuiwidget/servicedelivery/view/carousel/CarouselChangedDispatcher;

    invoke-virtual {v2, v1, v0, v0, v0}, Lcom/miui/miuiwidget/servicedelivery/view/carousel/CarouselChangedDispatcher;->dispatchSelectedChildChanged(IIIZ)V

    .line 85
    :cond_1
    iget-boolean v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;->isScroll:Z

    if-nez v0, :cond_2

    .line 86
    invoke-direct {p0}, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;->resetChildren()V

    :cond_2
    const/4 v0, 0x1

    .line 88
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setClipToOutline(Z)V

    .line 89
    new-instance v0, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel$1;

    invoke-direct {v0, p0}, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel$1;-><init>(Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 97
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 152
    iget-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 153
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    if-eq v0, v1, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_4

    .line 188
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    .line 163
    :cond_0
    iput-boolean v1, p0, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;->shouldScroll:Z

    .line 164
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;->downY:F

    sub-float/2addr p1, v0

    const/4 v0, 0x0

    cmpg-float v2, p1, v0

    if-gez v2, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 166
    :goto_0
    invoke-direct {p0, v2, p1}, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;->computeSlidingFactor(ZF)F

    move-result p1

    .line 167
    iget-boolean v3, p0, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;->isScroll:Z

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;->mSlidingUp:Z

    if-eq v3, v2, :cond_3

    if-eqz v3, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    .line 169
    :cond_2
    invoke-direct {p0, v3, v0}, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;->sliding(ZF)V

    goto :goto_1

    .line 172
    :cond_3
    invoke-direct {p0, v2, p1}, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;->sliding(ZF)V

    :goto_1
    return v1

    .line 179
    :cond_4
    iget-boolean v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;->shouldScroll:Z

    if-eqz v0, :cond_5

    .line 180
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;->downY:F

    sub-float/2addr p1, v0

    invoke-direct {p0, p1}, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;->startFakeSliding(F)V

    return v1

    .line 183
    :cond_5
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    .line 155
    :cond_6
    invoke-direct {p0}, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;->resetSlidingParams()V

    .line 156
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;->downY:F

    .line 157
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;->moveX:F

    .line 158
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;->moveY:F

    return v1
.end method

.method public removeAllViews()V
    .locals 1

    .line 365
    invoke-super {p0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 366
    iget-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;->changedDispatcher:Lcom/miui/miuiwidget/servicedelivery/view/carousel/CarouselChangedDispatcher;

    invoke-virtual {v0}, Lcom/miui/miuiwidget/servicedelivery/view/carousel/CarouselChangedDispatcher;->clearSelectedPosition()V

    const/4 v0, -0x1

    .line 367
    iput v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;->selectedPosition:I

    .line 368
    iput v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;->pendingSelectedPosition:I

    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    .line 396
    :cond_0
    iget v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;->selectedPosition:I

    .line 399
    invoke-direct {p0}, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;->isScrolling()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 400
    iget v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;->pendingSelectedPosition:I

    .line 402
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    add-int/lit8 v2, v1, -0x1

    .line 403
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 404
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 405
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result v4

    .line 406
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "removeView childCount:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " selectedPosition"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " indexOfChild:"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "Carousel"

    invoke-static {v5, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v2, v3, :cond_3

    if-le v0, v4, :cond_2

    goto :goto_0

    :cond_2
    move v1, v0

    goto :goto_1

    :cond_3
    :goto_0
    add-int/lit8 v1, v0, -0x1

    .line 411
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    if-ne v0, v1, :cond_4

    if-ne v0, v4, :cond_5

    .line 413
    :cond_4
    iget-object p1, p0, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;->changedDispatcher:Lcom/miui/miuiwidget/servicedelivery/view/carousel/CarouselChangedDispatcher;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/miui/miuiwidget/servicedelivery/view/carousel/CarouselChangedDispatcher;->dispatchSelectedChildChanged(IIIZ)V

    .line 420
    :cond_5
    invoke-direct {p0}, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;->isScrolling()Z

    move-result p1

    if-nez p1, :cond_6

    .line 421
    iput v1, p0, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;->selectedPosition:I

    .line 423
    :cond_6
    iput v1, p0, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;->pendingSelectedPosition:I

    .line 424
    iget-object p1, p0, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;->changedDispatcher:Lcom/miui/miuiwidget/servicedelivery/view/carousel/CarouselChangedDispatcher;

    invoke-virtual {p1, v1}, Lcom/miui/miuiwidget/servicedelivery/view/carousel/CarouselChangedDispatcher;->dispatchChildRemoved(I)V

    .line 425
    invoke-direct {p0}, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;->setAccessibility()V

    return-void
.end method

.method public removeViewAt(I)V
    .locals 0

    .line 389
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public resetSelectedChild()V
    .locals 1

    const/4 v0, -0x1

    .line 449
    iput v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;->selectedPosition:I

    .line 450
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method public setDrawSnapShot(Z)V
    .locals 0

    .line 497
    iput-boolean p1, p0, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;->drawSnapShot:Z

    return-void
.end method
