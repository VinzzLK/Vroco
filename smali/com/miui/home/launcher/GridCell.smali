.class public Lcom/miui/home/launcher/GridCell;
.super Landroid/graphics/drawable/Drawable;
.source "GridCell.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# static fields
.field private static final ACTIVATED:[I

.field private static final EMPTY_STATE:[I

.field private static final HOVERED:[I

.field private static sActivatedDrawable:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private static sHoveredDrawable:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mActivatedDrawable:Landroid/graphics/drawable/Drawable;

.field private mAlpha:I

.field private mAnimate:Z

.field private mBottom:I

.field private mContext:Landroid/content/Context;

.field private mCornerRadius:I

.field private mCurrentDrawable:Landroid/graphics/drawable/Drawable;

.field mHideSpringAnimator:Lcom/miui/home/launcher/animate/SpringAnimator;

.field private mHoveredDrawable:Landroid/graphics/drawable/Drawable;

.field private mLastDrawable:Landroid/graphics/drawable/Drawable;

.field private mLeft:I

.field private mRight:I

.field private mScale:F

.field mShowSpringAnimator:Lcom/miui/home/launcher/animate/SpringAnimator;

.field private mTop:I

.field private mTranslationX:I

.field private mTranslationY:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const v2, 0x1010369

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 39
    sput-object v1, Lcom/miui/home/launcher/GridCell;->HOVERED:[I

    new-array v1, v0, [I

    const v2, 0x10102fe

    aput v2, v1, v3

    .line 40
    sput-object v1, Lcom/miui/home/launcher/GridCell;->ACTIVATED:[I

    new-array v0, v0, [I

    const v1, 0x10100a9

    aput v1, v0, v3

    .line 41
    sput-object v0, Lcom/miui/home/launcher/GridCell;->EMPTY_STATE:[I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 68
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 60
    iput v0, p0, Lcom/miui/home/launcher/GridCell;->mScale:F

    const/4 v0, 0x0

    .line 87
    iput v0, p0, Lcom/miui/home/launcher/GridCell;->mCornerRadius:I

    .line 69
    iput-object p1, p0, Lcom/miui/home/launcher/GridCell;->mContext:Landroid/content/Context;

    .line 70
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/GridCell;->setAlpha(I)V

    return-void
.end method

.method static synthetic access$002(Lcom/miui/home/launcher/GridCell;I)I
    .locals 0

    .line 37
    iput p1, p0, Lcom/miui/home/launcher/GridCell;->mAlpha:I

    return p1
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/GridCell;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/miui/home/launcher/GridCell;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/GridCell;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/miui/home/launcher/GridCell;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public static create(Landroid/content/Context;Z)Lcom/miui/home/launcher/GridCell;
    .locals 1

    .line 74
    new-instance v0, Lcom/miui/home/launcher/GridCell;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/GridCell;-><init>(Landroid/content/Context;)V

    if-eqz p1, :cond_0

    .line 77
    invoke-static {p0}, Lcom/miui/home/launcher/widget/RoundedCornerEnforcement;->computeEnforcedRadius(Landroid/content/Context;)F

    move-result p0

    goto :goto_0

    .line 79
    :cond_0
    invoke-static {p0}, Lcom/miui/home/launcher/widget/RoundedCornerEnforcement;->computeEnforcedIconRadius(Landroid/content/Context;)I

    move-result p0

    int-to-float p0, p0

    .line 80
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getIconScale()F

    move-result p1

    mul-float/2addr p0, p1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDefaultScale()F

    move-result p1

    div-float/2addr p0, p1

    :goto_0
    float-to-int p0, p0

    .line 82
    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/GridCell;->setCornerRadius(I)V

    return-object v0
.end method

.method private initAnimator()V
    .locals 4

    .line 250
    iget-object v0, p0, Lcom/miui/home/launcher/GridCell;->mShowSpringAnimator:Lcom/miui/home/launcher/animate/SpringAnimator;

    const v1, 0x3b808081

    const v2, 0x3f7ae148    # 0.98f

    if-nez v0, :cond_0

    .line 251
    new-instance v0, Lcom/miui/home/launcher/animate/SpringAnimator;

    invoke-direct {v0}, Lcom/miui/home/launcher/animate/SpringAnimator;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/GridCell;->mShowSpringAnimator:Lcom/miui/home/launcher/animate/SpringAnimator;

    const v3, 0x3eb33333    # 0.35f

    .line 252
    invoke-virtual {v0, v2, v3}, Lcom/miui/home/launcher/animate/SpringAnimator;->setDampingResponse(FF)Lcom/miui/home/launcher/animate/SpringAnimator;

    move-result-object v0

    new-instance v3, Lcom/miui/home/launcher/GridCell$1;

    invoke-direct {v3, p0}, Lcom/miui/home/launcher/GridCell$1;-><init>(Lcom/miui/home/launcher/GridCell;)V

    .line 253
    invoke-virtual {v0, v3}, Lcom/miui/home/launcher/animate/SpringAnimator;->setUpdateListener(Lcom/miui/home/launcher/animate/SpringAnimator$UpdateListener;)Lcom/miui/home/launcher/animate/SpringAnimator;

    move-result-object v0

    .line 262
    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/animate/SpringAnimator;->setMinVisibleChange(F)V

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/GridCell;->mHideSpringAnimator:Lcom/miui/home/launcher/animate/SpringAnimator;

    if-nez v0, :cond_1

    .line 266
    new-instance v0, Lcom/miui/home/launcher/animate/SpringAnimator;

    invoke-direct {v0}, Lcom/miui/home/launcher/animate/SpringAnimator;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/GridCell;->mHideSpringAnimator:Lcom/miui/home/launcher/animate/SpringAnimator;

    const/high16 v3, 0x3e800000    # 0.25f

    .line 267
    invoke-virtual {v0, v2, v3}, Lcom/miui/home/launcher/animate/SpringAnimator;->setDampingResponse(FF)Lcom/miui/home/launcher/animate/SpringAnimator;

    move-result-object v0

    new-instance v2, Lcom/miui/home/launcher/GridCell$2;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/GridCell$2;-><init>(Lcom/miui/home/launcher/GridCell;)V

    .line 268
    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/animate/SpringAnimator;->setUpdateListener(Lcom/miui/home/launcher/animate/SpringAnimator$UpdateListener;)Lcom/miui/home/launcher/animate/SpringAnimator;

    move-result-object p0

    .line 277
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/animate/SpringAnimator;->setMinVisibleChange(F)V

    :cond_1
    return-void
.end method

.method private selectDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 5

    .line 336
    iget-object v0, p0, Lcom/miui/home/launcher/GridCell;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    if-ne v0, p1, :cond_0

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v0

    if-nez v0, :cond_5

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/GridCell;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    const/high16 v1, 0x437f0000    # 255.0f

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v0, :cond_2

    if-eq v0, p1, :cond_2

    .line 339
    iget-boolean v3, p0, Lcom/miui/home/launcher/GridCell;->mAnimate:Z

    if-eqz v3, :cond_1

    .line 340
    invoke-direct {p0}, Lcom/miui/home/launcher/GridCell;->initAnimator()V

    .line 341
    iget-object v0, p0, Lcom/miui/home/launcher/GridCell;->mHideSpringAnimator:Lcom/miui/home/launcher/animate/SpringAnimator;

    invoke-virtual {v0}, Lcom/miui/home/launcher/animate/SpringAnimator;->cancel()V

    .line 342
    iget-object v0, p0, Lcom/miui/home/launcher/GridCell;->mHideSpringAnimator:Lcom/miui/home/launcher/animate/SpringAnimator;

    iget-object v3, p0, Lcom/miui/home/launcher/GridCell;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v2

    div-float/2addr v3, v1

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lcom/miui/home/launcher/animate/SpringAnimator;->setStartEnd(FF)Lcom/miui/home/launcher/animate/SpringAnimator;

    .line 343
    iget-object v0, p0, Lcom/miui/home/launcher/GridCell;->mHideSpringAnimator:Lcom/miui/home/launcher/animate/SpringAnimator;

    invoke-virtual {v0}, Lcom/miui/home/launcher/animate/SpringAnimator;->start()V

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 345
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 346
    iget-object v0, p0, Lcom/miui/home/launcher/GridCell;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 349
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/miui/home/launcher/GridCell;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/miui/home/launcher/GridCell;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    if-ne v0, p1, :cond_3

    const/4 v0, 0x0

    .line 351
    iput-object v0, p0, Lcom/miui/home/launcher/GridCell;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    .line 354
    :cond_3
    iput-object p1, p0, Lcom/miui/home/launcher/GridCell;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_5

    .line 357
    iget-boolean v0, p0, Lcom/miui/home/launcher/GridCell;->mAnimate:Z

    if-eqz v0, :cond_4

    .line 358
    invoke-direct {p0}, Lcom/miui/home/launcher/GridCell;->initAnimator()V

    .line 359
    iget-object p1, p0, Lcom/miui/home/launcher/GridCell;->mShowSpringAnimator:Lcom/miui/home/launcher/animate/SpringAnimator;

    invoke-virtual {p1}, Lcom/miui/home/launcher/animate/SpringAnimator;->cancel()V

    .line 360
    iget-object p1, p0, Lcom/miui/home/launcher/GridCell;->mShowSpringAnimator:Lcom/miui/home/launcher/animate/SpringAnimator;

    iget-object v0, p0, Lcom/miui/home/launcher/GridCell;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v2

    div-float/2addr v0, v1

    invoke-virtual {p1, v0, v2}, Lcom/miui/home/launcher/animate/SpringAnimator;->setStartEnd(FF)Lcom/miui/home/launcher/animate/SpringAnimator;

    .line 361
    iget-object p0, p0, Lcom/miui/home/launcher/GridCell;->mShowSpringAnimator:Lcom/miui/home/launcher/animate/SpringAnimator;

    invoke-virtual {p0}, Lcom/miui/home/launcher/animate/SpringAnimator;->start()V

    goto :goto_1

    :cond_4
    const/16 v0, 0xff

    .line 363
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 364
    iget-object p0, p0, Lcom/miui/home/launcher/GridCell;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_5
    :goto_1
    return-void
.end method

.method private updateBounds()V
    .locals 7

    .line 378
    iget v0, p0, Lcom/miui/home/launcher/GridCell;->mRight:I

    iget v1, p0, Lcom/miui/home/launcher/GridCell;->mLeft:I

    sub-int v2, v0, v1

    int-to-float v2, v2

    .line 379
    iget v3, p0, Lcom/miui/home/launcher/GridCell;->mScale:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 381
    iget v4, p0, Lcom/miui/home/launcher/GridCell;->mBottom:I

    iget v5, p0, Lcom/miui/home/launcher/GridCell;->mTop:I

    sub-int v6, v4, v5

    int-to-float v6, v6

    mul-float/2addr v6, v3

    float-to-int v3, v6

    add-int/2addr v0, v1

    .line 383
    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/miui/home/launcher/GridCell;->mTranslationX:I

    add-int/2addr v0, v1

    add-int/2addr v5, v4

    .line 384
    div-int/lit8 v5, v5, 0x2

    iget v1, p0, Lcom/miui/home/launcher/GridCell;->mTranslationY:I

    add-int/2addr v5, v1

    .line 385
    div-int/lit8 v2, v2, 0x2

    sub-int v1, v0, v2

    div-int/lit8 v3, v3, 0x2

    sub-int v4, v5, v3

    add-int/2addr v0, v2

    add-int/2addr v5, v3

    invoke-virtual {p0, v1, v4, v0, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/miui/home/launcher/GridCell;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 105
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/GridCell;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_1

    .line 106
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    return-void
.end method

.method public getHeight()I
    .locals 1

    .line 223
    iget v0, p0, Lcom/miui/home/launcher/GridCell;->mBottom:I

    iget p0, p0, Lcom/miui/home/launcher/GridCell;->mTop:I

    sub-int/2addr v0, p0

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 0

    .line 207
    invoke-virtual {p0}, Lcom/miui/home/launcher/GridCell;->getHeight()I

    move-result p0

    return p0
.end method

.method public getIntrinsicWidth()I
    .locals 0

    .line 203
    invoke-virtual {p0}, Lcom/miui/home/launcher/GridCell;->getWidth()I

    move-result p0

    return p0
.end method

.method public getOpacity()I
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/miui/home/launcher/GridCell;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 159
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/GridCell;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result p0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, -0x2

    :goto_1
    return p0
.end method

.method public getWidth()I
    .locals 1

    .line 219
    iget v0, p0, Lcom/miui/home/launcher/GridCell;->mRight:I

    iget p0, p0, Lcom/miui/home/launcher/GridCell;->mLeft:I

    sub-int/2addr v0, p0

    return v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 174
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 175
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    invoke-interface {p1, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public isHide()Z
    .locals 1

    .line 246
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p0

    sget-object v0, Lcom/miui/home/launcher/GridCell;->EMPTY_STATE:[I

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isHovered()Z
    .locals 1

    .line 237
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p0

    sget-object v0, Lcom/miui/home/launcher/GridCell;->HOVERED:[I

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/miui/home/launcher/GridCell;->mActivatedDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 165
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 167
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/GridCell;->mHoveredDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_1

    .line 168
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_1
    return-void
.end method

.method protected onStateChange([I)Z
    .locals 4

    .line 286
    sget-object v0, Lcom/miui/home/launcher/GridCell;->ACTIVATED:[I

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-ne p1, v0, :cond_4

    .line 287
    iget-object v0, p0, Lcom/miui/home/launcher/GridCell;->mActivatedDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_3

    .line 288
    sget-object v0, Lcom/miui/home/launcher/GridCell;->sActivatedDrawable:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-nez v0, :cond_1

    .line 290
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getIconCache()Lcom/miui/home/launcher/IconCache;

    move-result-object v0

    .line 291
    invoke-virtual {v0}, Lcom/miui/home/launcher/IconCache;->getGridCellDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 292
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v3, Lcom/miui/home/launcher/GridCell;->sActivatedDrawable:Ljava/lang/ref/WeakReference;

    .line 294
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/GridCell;->mActivatedDrawable:Landroid/graphics/drawable/Drawable;

    .line 296
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 297
    iget-object v0, p0, Lcom/miui/home/launcher/GridCell;->mActivatedDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v3, v0, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v3, :cond_2

    .line 298
    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    iget v3, p0, Lcom/miui/home/launcher/GridCell;->mCornerRadius:I

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 300
    :cond_2
    iget-object v0, p0, Lcom/miui/home/launcher/GridCell;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/GridCell;->onWallpaperColorChanged(Landroid/content/Context;)V

    .line 301
    iget-object v0, p0, Lcom/miui/home/launcher/GridCell;->mActivatedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 303
    iget-object v0, p0, Lcom/miui/home/launcher/GridCell;->mActivatedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 305
    :cond_3
    iget-object v0, p0, Lcom/miui/home/launcher/GridCell;->mActivatedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/GridCell;->selectDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 308
    :cond_4
    sget-object v0, Lcom/miui/home/launcher/GridCell;->HOVERED:[I

    if-ne p1, v0, :cond_9

    .line 309
    iget-object v0, p0, Lcom/miui/home/launcher/GridCell;->mHoveredDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_8

    .line 310
    sget-object v0, Lcom/miui/home/launcher/GridCell;->sHoveredDrawable:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_5
    move-object v0, v2

    :goto_1
    if-nez v0, :cond_6

    .line 312
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getIconCache()Lcom/miui/home/launcher/IconCache;

    move-result-object v0

    .line 313
    invoke-virtual {v0}, Lcom/miui/home/launcher/IconCache;->getGridCellHoverDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 314
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v3, Lcom/miui/home/launcher/GridCell;->sHoveredDrawable:Ljava/lang/ref/WeakReference;

    .line 316
    :cond_6
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/GridCell;->mHoveredDrawable:Landroid/graphics/drawable/Drawable;

    .line 317
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 318
    iget-object v0, p0, Lcom/miui/home/launcher/GridCell;->mHoveredDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v3, v0, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v3, :cond_7

    .line 319
    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    iget v3, p0, Lcom/miui/home/launcher/GridCell;->mCornerRadius:I

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 321
    :cond_7
    iget-object v0, p0, Lcom/miui/home/launcher/GridCell;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/GridCell;->onWallpaperColorChanged(Landroid/content/Context;)V

    .line 322
    iget-object v0, p0, Lcom/miui/home/launcher/GridCell;->mHoveredDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 323
    iget-object v0, p0, Lcom/miui/home/launcher/GridCell;->mHoveredDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 325
    :cond_8
    iget-object v0, p0, Lcom/miui/home/launcher/GridCell;->mHoveredDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/GridCell;->selectDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 328
    :cond_9
    sget-object v0, Lcom/miui/home/launcher/GridCell;->EMPTY_STATE:[I

    if-ne p1, v0, :cond_a

    .line 329
    invoke-direct {p0, v2}, Lcom/miui/home/launcher/GridCell;->selectDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_a
    const/4 p0, 0x1

    return p0
.end method

.method public onWallpaperColorChanged(Landroid/content/Context;)V
    .locals 1

    .line 123
    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->hasAppliedLightWallpaper()Z

    move-result v0

    .line 124
    invoke-virtual {p0, p1, v0}, Lcom/miui/home/launcher/GridCell;->onWallpaperColorChanged(Landroid/content/Context;Z)V

    return-void
.end method

.method public onWallpaperColorChanged(Landroid/content/Context;Z)V
    .locals 3

    .line 129
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 130
    iget-object v0, p0, Lcom/miui/home/launcher/GridCell;->mActivatedDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    const v0, 0x7f0600f5

    .line 131
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_0

    :cond_0
    const v0, 0x7f0600f4

    .line 132
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 133
    :goto_0
    iget-object v1, p0, Lcom/miui/home/launcher/GridCell;->mActivatedDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    const v2, 0x7f07024d

    .line 134
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 133
    invoke-virtual {v1, v2, v0}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 137
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/GridCell;->mHoveredDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_3

    if-eqz p2, :cond_2

    const p2, 0x7f0600f7

    .line 138
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    goto :goto_1

    :cond_2
    const p2, 0x7f0600f6

    .line 139
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    .line 140
    :goto_1
    iget-object p0, p0, Lcom/miui/home/launcher/GridCell;->mHoveredDrawable:Landroid/graphics/drawable/Drawable;

    check-cast p0, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    :cond_3
    return-void
.end method

.method public reset()V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 403
    iput v0, p0, Lcom/miui/home/launcher/GridCell;->mScale:F

    const/4 v0, 0x0

    .line 404
    iput v0, p0, Lcom/miui/home/launcher/GridCell;->mTranslationX:I

    .line 405
    iput v0, p0, Lcom/miui/home/launcher/GridCell;->mTranslationY:I

    .line 406
    invoke-direct {p0}, Lcom/miui/home/launcher/GridCell;->updateBounds()V

    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 0

    .line 181
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 182
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    invoke-interface {p1, p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method public setActivated(Z)V
    .locals 0

    .line 227
    iput-boolean p1, p0, Lcom/miui/home/launcher/GridCell;->mAnimate:Z

    .line 228
    sget-object p1, Lcom/miui/home/launcher/GridCell;->ACTIVATED:[I

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .line 112
    iput p1, p0, Lcom/miui/home/launcher/GridCell;->mAlpha:I

    .line 113
    iget-object v0, p0, Lcom/miui/home/launcher/GridCell;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 117
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/GridCell;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_1

    .line 118
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_1
    return-void
.end method

.method public setCellBounds(IIII)V
    .locals 0

    .line 194
    iput p1, p0, Lcom/miui/home/launcher/GridCell;->mLeft:I

    .line 195
    iput p2, p0, Lcom/miui/home/launcher/GridCell;->mTop:I

    .line 196
    iput p3, p0, Lcom/miui/home/launcher/GridCell;->mRight:I

    .line 197
    iput p4, p0, Lcom/miui/home/launcher/GridCell;->mBottom:I

    .line 198
    invoke-virtual {p0}, Lcom/miui/home/launcher/GridCell;->reset()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/miui/home/launcher/GridCell;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 148
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 151
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/GridCell;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_1

    .line 152
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_1
    return-void
.end method

.method public setCornerRadius(I)V
    .locals 2

    .line 89
    iput p1, p0, Lcom/miui/home/launcher/GridCell;->mCornerRadius:I

    .line 90
    iget-object v0, p0, Lcom/miui/home/launcher/GridCell;->mActivatedDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v1, :cond_0

    .line 91
    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 94
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/GridCell;->mHoveredDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, p0, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_1

    .line 95
    check-cast p0, Landroid/graphics/drawable/GradientDrawable;

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    :cond_1
    return-void
.end method

.method public setHide()V
    .locals 1

    const/4 v0, 0x1

    .line 241
    iput-boolean v0, p0, Lcom/miui/home/launcher/GridCell;->mAnimate:Z

    .line 242
    sget-object v0, Lcom/miui/home/launcher/GridCell;->EMPTY_STATE:[I

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    return-void
.end method

.method public setHovered()V
    .locals 1

    const/4 v0, 0x1

    .line 232
    iput-boolean v0, p0, Lcom/miui/home/launcher/GridCell;->mAnimate:Z

    .line 233
    sget-object v0, Lcom/miui/home/launcher/GridCell;->HOVERED:[I

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0

    .line 188
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 189
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    invoke-interface {p1, p0, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
