.class public Lcom/miui/home/launcher/DragView$CountLabel;
.super Ljava/lang/Object;
.source "DragView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/DragView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CountLabel"
.end annotation


# instance fields
.field private mCountLabelBgPaint:Landroid/graphics/Paint;

.field private mCountLabelBgRadius:F

.field private mCountLabelCenterPos:[F

.field private mCountLabelNumPaint:Landroid/graphics/Paint;

.field private mCountLabelTextBaseY:F

.field private final mCountText:Ljava/lang/String;

.field private final mLabelRectF:Landroid/graphics/RectF;

.field private mOutDistance:I


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lcom/miui/home/launcher/DesktopIcon;I)V
    .locals 6

    .line 361
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f0700ac

    .line 362
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/DragView$CountLabel;->mOutDistance:I

    const v0, 0x7f070157

    .line 363
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/DragView$CountLabel;->mCountLabelBgRadius:F

    .line 364
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/DragView$CountLabel;->mCountLabelBgPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    .line 365
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 366
    iget-object v0, p0, Lcom/miui/home/launcher/DragView$CountLabel;->mCountLabelBgPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 368
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/DragView$CountLabel;->mCountLabelNumPaint:Landroid/graphics/Paint;

    .line 369
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 370
    iget-object v0, p0, Lcom/miui/home/launcher/DragView$CountLabel;->mCountLabelNumPaint:Landroid/graphics/Paint;

    const v2, 0x7f060628

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 371
    iget-object v0, p0, Lcom/miui/home/launcher/DragView$CountLabel;->mCountLabelNumPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 372
    iget-object v0, p0, Lcom/miui/home/launcher/DragView$CountLabel;->mCountLabelNumPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 373
    iget-object v0, p0, Lcom/miui/home/launcher/DragView$CountLabel;->mCountLabelNumPaint:Landroid/graphics/Paint;

    const v2, 0x7f070159

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 375
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/DragView$CountLabel;->mCountText:Ljava/lang/String;

    const/high16 v2, 0x40000000    # 2.0f

    const/16 v3, 0x9

    if-gt p3, v3, :cond_0

    .line 377
    iget p1, p0, Lcom/miui/home/launcher/DragView$CountLabel;->mCountLabelBgRadius:F

    goto :goto_0

    .line 378
    :cond_0
    iget-object p3, p0, Lcom/miui/home/launcher/DragView$CountLabel;->mCountLabelNumPaint:Landroid/graphics/Paint;

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p3

    div-float/2addr p3, v2

    const v0, 0x7f070158

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    add-float/2addr p1, p3

    .line 379
    :goto_0
    invoke-direct {p0, p2, p1}, Lcom/miui/home/launcher/DragView$CountLabel;->getCountLabelCenterPos(Lcom/miui/home/launcher/DesktopIcon;F)[F

    move-result-object p2

    iput-object p2, p0, Lcom/miui/home/launcher/DragView$CountLabel;->mCountLabelCenterPos:[F

    .line 380
    new-instance p2, Landroid/graphics/RectF;

    iget-object p3, p0, Lcom/miui/home/launcher/DragView$CountLabel;->mCountLabelCenterPos:[F

    const/4 v0, 0x0

    aget v3, p3, v0

    add-float/2addr v3, p1

    aget v4, p3, v1

    iget v5, p0, Lcom/miui/home/launcher/DragView$CountLabel;->mCountLabelBgRadius:F

    sub-float/2addr v4, v5

    aget v0, p3, v0

    sub-float/2addr v0, p1

    aget p1, p3, v1

    add-float/2addr p1, v5

    invoke-direct {p2, v3, v4, v0, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p2, p0, Lcom/miui/home/launcher/DragView$CountLabel;->mLabelRectF:Landroid/graphics/RectF;

    .line 384
    iget-object p1, p0, Lcom/miui/home/launcher/DragView$CountLabel;->mCountLabelNumPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p1

    .line 385
    iget-object p2, p0, Lcom/miui/home/launcher/DragView$CountLabel;->mCountLabelCenterPos:[F

    aget p2, p2, v1

    iget p3, p1, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget p1, p1, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr p3, p1

    div-float/2addr p3, v2

    sub-float/2addr p2, p3

    sub-float/2addr p2, p1

    iput p2, p0, Lcom/miui/home/launcher/DragView$CountLabel;->mCountLabelTextBaseY:F

    return-void
.end method

.method private getCountLabelCenterPos(Lcom/miui/home/launcher/DesktopIcon;F)[F
    .locals 3

    .line 389
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 390
    invoke-interface {p1, v0}, Lcom/miui/home/launcher/DesktopIcon;->getIconBounds(Landroid/graphics/Rect;)V

    .line 391
    iget p1, v0, Landroid/graphics/Rect;->right:I

    int-to-float p1, p1

    sub-float/2addr p1, p2

    iget v1, p0, Lcom/miui/home/launcher/DragView$CountLabel;->mOutDistance:I

    int-to-float v2, v1

    add-float/2addr p1, v2

    .line 392
    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iget v2, p0, Lcom/miui/home/launcher/DragView$CountLabel;->mCountLabelBgRadius:F

    add-float/2addr v0, v2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    .line 393
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellWidth()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr p2, p1

    sub-float/2addr v1, p2

    const/4 p2, 0x0

    invoke-static {p2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 394
    iget p0, p0, Lcom/miui/home/launcher/DragView$CountLabel;->mCountLabelBgRadius:F

    sub-float p0, v0, p0

    neg-float p0, p0

    invoke-static {p2, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    const/4 p2, 0x2

    new-array p2, p2, [F

    add-float/2addr p1, v1

    const/4 v1, 0x0

    aput p1, p2, v1

    add-float/2addr v0, p0

    const/4 p0, 0x1

    aput v0, p2, p0

    return-object p2
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 403
    iget-object v0, p0, Lcom/miui/home/launcher/DragView$CountLabel;->mLabelRectF:Landroid/graphics/RectF;

    iget v1, p0, Lcom/miui/home/launcher/DragView$CountLabel;->mCountLabelBgRadius:F

    iget-object v2, p0, Lcom/miui/home/launcher/DragView$CountLabel;->mCountLabelBgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 404
    iget-object v0, p0, Lcom/miui/home/launcher/DragView$CountLabel;->mCountText:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/home/launcher/DragView$CountLabel;->mCountLabelCenterPos:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    iget v2, p0, Lcom/miui/home/launcher/DragView$CountLabel;->mCountLabelTextBaseY:F

    iget-object p0, p0, Lcom/miui/home/launcher/DragView$CountLabel;->mCountLabelNumPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public updateAlpha(I)V
    .locals 1

    .line 399
    iget-object v0, p0, Lcom/miui/home/launcher/DragView$CountLabel;->mCountLabelBgPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 400
    iget-object p0, p0, Lcom/miui/home/launcher/DragView$CountLabel;->mCountLabelNumPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method
