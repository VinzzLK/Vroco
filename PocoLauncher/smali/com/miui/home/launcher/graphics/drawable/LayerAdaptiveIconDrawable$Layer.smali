.class public abstract Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;
.super Ljava/lang/Object;
.source "LayerAdaptiveIconDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Layer"
.end annotation


# static fields
.field static final TRANSLATION_X:Landroidx/dynamicanimation/animation/FloatPropertyCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;",
            ">;"
        }
    .end annotation
.end field

.field static final TRANSLATION_Y:Landroidx/dynamicanimation/animation/FloatPropertyCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAnimationIndex:I

.field private final mContainer:Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;

.field private final mDrawable:Landroid/graphics/drawable/Drawable;

.field private mScaleX:F

.field private mScaleY:F

.field private final mSpringAnimationX:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private final mSpringAnimationY:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private mTranslationX:F

.field private mTranslationY:F


# direct methods
.method public static synthetic $r8$lambda$5gA2vDL8t_VATT4cB2D_3kW2_yY(Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->lambda$invalidate$0()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 268
    new-instance v0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer$1;

    const-string/jumbo v1, "translationX"

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->TRANSLATION_X:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    .line 280
    new-instance v0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer$2;

    const-string/jumbo v1, "translationY"

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    return-void
.end method

.method private constructor <init>(Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;Landroid/graphics/drawable/Drawable;I)V
    .locals 1

    .line 302
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 296
    iput v0, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->mScaleX:F

    .line 297
    iput v0, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->mScaleY:F

    .line 303
    iput-object p1, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->mContainer:Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;

    .line 304
    iput-object p2, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 305
    iput p3, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->mAnimationIndex:I

    .line 306
    new-instance p1, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object p2, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->TRANSLATION_X:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    const/4 p3, 0x0

    invoke-direct {p1, p0, p2, p3}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;F)V

    iput-object p1, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->mSpringAnimationX:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 307
    new-instance p1, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object p2, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    invoke-direct {p1, p0, p2, p3}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;F)V

    iput-object p1, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->mSpringAnimationY:Landroidx/dynamicanimation/animation/SpringAnimation;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;Landroid/graphics/drawable/Drawable;ILcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$1;)V
    .locals 0

    .line 267
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;-><init>(Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;Landroid/graphics/drawable/Drawable;I)V

    return-void
.end method

.method private synthetic lambda$invalidate$0()V
    .locals 0

    .line 344
    iget-object p0, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->mContainer:Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;

    invoke-virtual {p0}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;->invalidateSelf()V

    return-void
.end method


# virtual methods
.method cancelAnimating()V
    .locals 1

    .line 338
    iget-object v0, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->mSpringAnimationX:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    .line 339
    iget-object v0, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->mSpringAnimationY:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    const/4 v0, 0x0

    .line 340
    iput v0, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->mTranslationY:F

    iput v0, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->mTranslationX:F

    return-void
.end method

.method final draw(Landroid/graphics/Canvas;Landroid/graphics/Path;)V
    .locals 3

    .line 316
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 317
    iget v0, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->mTranslationX:F

    iget v1, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->mScaleX:F

    div-float/2addr v0, v1

    iget v1, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->mTranslationY:F

    iget v2, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->mScaleY:F

    div-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 318
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->onDraw(Landroid/graphics/Canvas;Landroid/graphics/Path;)V

    .line 319
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getCurrentShowDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 416
    iget-object p0, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 412
    iget-object p0, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method getDrawableBounds()Landroid/graphics/Rect;
    .locals 0

    .line 352
    iget-object p0, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method getParentBounds()Landroid/graphics/Rect;
    .locals 0

    .line 348
    iget-object p0, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->mContainer:Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public getScaleX()F
    .locals 0

    .line 360
    iget p0, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->mScaleX:F

    return p0
.end method

.method public getScaleY()F
    .locals 0

    .line 364
    iget p0, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->mScaleY:F

    return p0
.end method

.method public getTranslationX()F
    .locals 0

    .line 368
    iget p0, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->mTranslationX:F

    return p0
.end method

.method public getTranslationY()F
    .locals 0

    .line 372
    iget p0, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->mTranslationY:F

    return p0
.end method

.method invalidate()V
    .locals 2

    .line 344
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v1, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method isAnimating()Z
    .locals 2

    .line 333
    iget v0, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->mTranslationX:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget v0, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->mTranslationY:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->mSpringAnimationX:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 334
    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->mSpringAnimationY:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method onBoundsChange(Landroid/graphics/Rect;FF)V
    .locals 0

    .line 311
    iput p2, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->mScaleX:F

    .line 312
    iput p3, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->mScaleY:F

    return-void
.end method

.method abstract onDraw(Landroid/graphics/Canvas;Landroid/graphics/Path;)V
.end method

.method public onPause()V
    .locals 0

    .line 437
    invoke-virtual {p0}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->cancelAnimating()V

    .line 438
    invoke-virtual {p0}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->getCurrentShowDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/launcher/utils/MamlUtils;->onPause(Ljava/lang/Object;)V

    return-void
.end method

.method public onPresent()V
    .locals 1

    .line 442
    invoke-virtual {p0}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->getCurrentShowDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    const-string v0, "present"

    invoke-static {p0, v0}, Lcom/miui/launcher/utils/MamlUtils;->onCommand(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 433
    invoke-virtual {p0}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->getCurrentShowDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/launcher/utils/MamlUtils;->onResume(Ljava/lang/Object;)V

    return-void
.end method

.method public prepareBackAnim()V
    .locals 0

    return-void
.end method

.method public resetBackAnim()V
    .locals 0

    return-void
.end method

.method public setAlpha(I)V
    .locals 0

    .line 452
    iget-object p0, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_0

    .line 453
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .line 446
    iget-object p0, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_0

    .line 447
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_0
    return-void
.end method

.method public setTranslationX(F)V
    .locals 0

    .line 376
    iput p1, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->mTranslationX:F

    .line 377
    invoke-virtual {p0}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->invalidate()V

    return-void
.end method

.method public setTranslationY(F)V
    .locals 0

    .line 381
    iput p1, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->mTranslationY:F

    .line 382
    invoke-virtual {p0}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->invalidate()V

    return-void
.end method

.method updateBackAnim(Ljava/lang/String;F)V
    .locals 0

    return-void
.end method
