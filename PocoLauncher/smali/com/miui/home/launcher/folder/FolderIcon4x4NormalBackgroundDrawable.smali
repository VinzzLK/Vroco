.class public final Lcom/miui/home/launcher/folder/FolderIcon4x4NormalBackgroundDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "FolderIcon4x4NormalBackgroundDrawable.kt"


# instance fields
.field private isAnimStatus:Z

.field private mAnimBackgroundColor:I

.field private mAnimBackgroundColorBlur:I

.field private mNormalBackgroundColor:I

.field private final mPaint:Landroid/graphics/Paint;

.field private mRadius:F

.field private mStrokeColor:I

.field private final mStrokePaint:Landroid/graphics/Paint;

.field private mStrokeWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/high16 v0, 0x42380000    # 46.0f

    .line 18
    iput v0, p0, Lcom/miui/home/launcher/folder/FolderIcon4x4NormalBackgroundDrawable;->mRadius:F

    .line 19
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/folder/FolderIcon4x4NormalBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    .line 20
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/folder/FolderIcon4x4NormalBackgroundDrawable;->mStrokePaint:Landroid/graphics/Paint;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 21
    iput v0, p0, Lcom/miui/home/launcher/folder/FolderIcon4x4NormalBackgroundDrawable;->mStrokeWidth:F

    .line 25
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isDarkMode()Z

    move-result v0

    const v1, 0x7f0600cd

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isMiuiLauncher()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0600d0

    .line 26
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/folder/FolderIcon4x4NormalBackgroundDrawable;->mNormalBackgroundColor:I

    const v0, 0x7f0600ce

    .line 27
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/folder/FolderIcon4x4NormalBackgroundDrawable;->mAnimBackgroundColor:I

    .line 28
    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/folder/FolderIcon4x4NormalBackgroundDrawable;->mAnimBackgroundColorBlur:I

    const v0, 0x7f0600d2

    .line 29
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/folder/FolderIcon4x4NormalBackgroundDrawable;->mStrokeColor:I

    goto :goto_0

    :cond_0
    const v0, 0x7f0600d1

    .line 31
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/folder/FolderIcon4x4NormalBackgroundDrawable;->mNormalBackgroundColor:I

    const v0, 0x7f0600cf

    .line 32
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/folder/FolderIcon4x4NormalBackgroundDrawable;->mAnimBackgroundColor:I

    .line 33
    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/folder/FolderIcon4x4NormalBackgroundDrawable;->mAnimBackgroundColorBlur:I

    const v0, 0x7f0600d3

    .line 34
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/folder/FolderIcon4x4NormalBackgroundDrawable;->mStrokeColor:I

    .line 37
    :goto_0
    invoke-static {p1}, Lcom/miui/home/launcher/widget/RoundedCornerEnforcement;->computeEnforcedRadius(Landroid/content/Context;)F

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/folder/FolderIcon4x4NormalBackgroundDrawable;->mRadius:F

    if-eqz p2, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    .line 38
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0701b5

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    :goto_1
    iput p1, p0, Lcom/miui/home/launcher/folder/FolderIcon4x4NormalBackgroundDrawable;->mStrokeWidth:F

    .line 39
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIcon4x4NormalBackgroundDrawable;->initPaint()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 6

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    iget v0, p0, Lcom/miui/home/launcher/folder/FolderIcon4x4NormalBackgroundDrawable;->mStrokeWidth:F

    const/4 v1, 0x2

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 45
    new-instance v1, Landroid/graphics/RectF;

    .line 46
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    add-float/2addr v2, v0

    .line 47
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    add-float/2addr v3, v0

    .line 48
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    sub-float/2addr v4, v0

    .line 49
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    sub-float/2addr v5, v0

    .line 45
    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 50
    iget v2, p0, Lcom/miui/home/launcher/folder/FolderIcon4x4NormalBackgroundDrawable;->mRadius:F

    sub-float v3, v2, v0

    sub-float/2addr v2, v0

    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderIcon4x4NormalBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    .line 44
    invoke-virtual {p1, v1, v3, v2, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 52
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iget v1, p0, Lcom/miui/home/launcher/folder/FolderIcon4x4NormalBackgroundDrawable;->mRadius:F

    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderIcon4x4NormalBackgroundDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, p0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getOpacity()I
    .locals 0

    const/4 p0, -0x3

    return p0
.end method

.method public final getPaint()Landroid/graphics/Paint;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderIcon4x4NormalBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method public final initPaint()V
    .locals 3

    .line 56
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderIcon4x4NormalBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    iget-boolean v1, p0, Lcom/miui/home/launcher/folder/FolderIcon4x4NormalBackgroundDrawable;->isAnimStatus:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/miui/home/launcher/common/BlurUtilities;->isFolderBlurSupported(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/miui/home/launcher/folder/FolderIcon4x4NormalBackgroundDrawable;->mAnimBackgroundColorBlur:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/miui/home/launcher/folder/FolderIcon4x4NormalBackgroundDrawable;->mAnimBackgroundColor:I

    goto :goto_0

    .line 57
    :cond_1
    iget v1, p0, Lcom/miui/home/launcher/folder/FolderIcon4x4NormalBackgroundDrawable;->mNormalBackgroundColor:I

    .line 56
    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 58
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderIcon4x4NormalBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 59
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderIcon4x4NormalBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 60
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderIcon4x4NormalBackgroundDrawable;->mStrokePaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/miui/home/launcher/folder/FolderIcon4x4NormalBackgroundDrawable;->mStrokeColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 61
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderIcon4x4NormalBackgroundDrawable;->mStrokePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 62
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderIcon4x4NormalBackgroundDrawable;->mStrokePaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/miui/home/launcher/folder/FolderIcon4x4NormalBackgroundDrawable;->mStrokeWidth:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 63
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderIcon4x4NormalBackgroundDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public final setAnimState(Z)V
    .locals 0

    .line 70
    iput-boolean p1, p0, Lcom/miui/home/launcher/folder/FolderIcon4x4NormalBackgroundDrawable;->isAnimStatus:Z

    .line 71
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIcon4x4NormalBackgroundDrawable;->initPaint()V

    .line 72
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderIcon4x4NormalBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 77
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderIcon4x4NormalBackgroundDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 78
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public final updateSizeOnIconSizeChanged(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    invoke-static {p1}, Lcom/miui/home/launcher/widget/RoundedCornerEnforcement;->computeEnforcedRadius(Landroid/content/Context;)F

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/folder/FolderIcon4x4NormalBackgroundDrawable;->mRadius:F

    return-void
.end method
