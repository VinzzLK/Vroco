.class public Lcom/miui/home/settings/IconSizeSeekBar;
.super Lmiuix/androidbasewidget/widget/SeekBar;
.source "IconSizeSeekBar.java"


# instance fields
.field mAfterCentScale:F

.field mBeforeCentScale:F

.field mCenterScale:F

.field mCurScale:F

.field mHalfProgress:I

.field mMaxScale:F

.field mMinScale:F

.field private mPointPaint:Landroid/graphics/Paint;

.field private mPointsRadius:F

.field private mSmallPointColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Lmiuix/androidbasewidget/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    invoke-direct {p0}, Lcom/miui/home/settings/IconSizeSeekBar;->init()V

    return-void
.end method

.method private init()V
    .locals 3

    .line 46
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getIconScale()F

    move-result v0

    iput v0, p0, Lcom/miui/home/settings/IconSizeSeekBar;->mCurScale:F

    .line 47
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getMaxIconScale()F

    move-result v0

    iput v0, p0, Lcom/miui/home/settings/IconSizeSeekBar;->mMaxScale:F

    .line 48
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getMinIconScale()F

    move-result v0

    iput v0, p0, Lcom/miui/home/settings/IconSizeSeekBar;->mMinScale:F

    .line 49
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDefaultScale()F

    move-result v0

    iput v0, p0, Lcom/miui/home/settings/IconSizeSeekBar;->mCenterScale:F

    .line 50
    iget v1, p0, Lcom/miui/home/settings/IconSizeSeekBar;->mMinScale:F

    sub-float v1, v0, v1

    iput v1, p0, Lcom/miui/home/settings/IconSizeSeekBar;->mBeforeCentScale:F

    .line 51
    iget v1, p0, Lcom/miui/home/settings/IconSizeSeekBar;->mMaxScale:F

    sub-float/2addr v1, v0

    iput v1, p0, Lcom/miui/home/settings/IconSizeSeekBar;->mAfterCentScale:F

    const/16 v0, 0x1f4

    .line 52
    iput v0, p0, Lcom/miui/home/settings/IconSizeSeekBar;->mHalfProgress:I

    .line 53
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060120

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iput v0, p0, Lcom/miui/home/settings/IconSizeSeekBar;->mSmallPointColor:I

    .line 54
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070282

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/miui/home/settings/IconSizeSeekBar;->mPointsRadius:F

    .line 55
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/home/settings/IconSizeSeekBar;->mPointPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    .line 56
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 57
    iget-object v0, p0, Lcom/miui/home/settings/IconSizeSeekBar;->mPointPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 58
    iget-object v0, p0, Lcom/miui/home/settings/IconSizeSeekBar;->mPointPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 59
    iget-object v0, p0, Lcom/miui/home/settings/IconSizeSeekBar;->mPointPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/miui/home/settings/IconSizeSeekBar;->mSmallPointColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/16 v0, 0x3e8

    .line 60
    invoke-virtual {p0, v0}, Landroid/widget/SeekBar;->setMax(I)V

    .line 61
    invoke-direct {p0}, Lcom/miui/home/settings/IconSizeSeekBar;->setDefaultProgress()V

    return-void
.end method

.method private setDefaultPoint()V
    .locals 2

    .line 115
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iget v1, p0, Lcom/miui/home/settings/IconSizeSeekBar;->mHalfProgress:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x41f00000    # 30.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 118
    iget v0, p0, Lcom/miui/home/settings/IconSizeSeekBar;->mHalfProgress:I

    invoke-virtual {p0, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_0
    return-void
.end method

.method private setDefaultProgress()V
    .locals 6

    .line 65
    iget v0, p0, Lcom/miui/home/settings/IconSizeSeekBar;->mBeforeCentScale:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/miui/home/settings/IconSizeSeekBar;->mAfterCentScale:F

    cmpl-float v1, v2, v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 69
    :cond_0
    iget v1, p0, Lcom/miui/home/settings/IconSizeSeekBar;->mCurScale:F

    iget v3, p0, Lcom/miui/home/settings/IconSizeSeekBar;->mCenterScale:F

    cmpg-float v4, v1, v3

    if-gez v4, :cond_1

    .line 71
    iget v2, p0, Lcom/miui/home/settings/IconSizeSeekBar;->mHalfProgress:I

    int-to-float v3, v2

    div-float/2addr v3, v0

    .line 72
    iget v4, p0, Lcom/miui/home/settings/IconSizeSeekBar;->mMinScale:F

    neg-float v4, v4

    int-to-float v2, v2

    mul-float/2addr v4, v2

    div-float/2addr v4, v0

    mul-float/2addr v3, v1

    add-float/2addr v3, v4

    float-to-int v0, v3

    .line 74
    invoke-virtual {p0, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0

    :cond_1
    cmpl-float v0, v1, v3

    if-lez v0, :cond_2

    .line 77
    iget v0, p0, Lcom/miui/home/settings/IconSizeSeekBar;->mHalfProgress:I

    int-to-float v4, v0

    div-float/2addr v4, v2

    int-to-float v5, v0

    int-to-float v0, v0

    mul-float/2addr v3, v0

    div-float/2addr v3, v2

    sub-float/2addr v5, v3

    mul-float/2addr v4, v1

    add-float/2addr v4, v5

    float-to-int v0, v4

    .line 80
    invoke-virtual {p0, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0

    .line 82
    :cond_2
    iget v0, p0, Lcom/miui/home/settings/IconSizeSeekBar;->mHalfProgress:I

    invoke-virtual {p0, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    :goto_0
    return-void

    :cond_3
    :goto_1
    const-string p0, "IconSizeSeekBar"

    const-string v0, "defaultSizeScale=mMinScale or mMaxScale"

    .line 66
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public getCurrentSetIconSizeValue()F
    .locals 2

    .line 87
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iget v1, p0, Lcom/miui/home/settings/IconSizeSeekBar;->mHalfProgress:I

    if-le v0, v1, :cond_0

    .line 88
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iget v1, p0, Lcom/miui/home/settings/IconSizeSeekBar;->mHalfProgress:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget v1, p0, Lcom/miui/home/settings/IconSizeSeekBar;->mAfterCentScale:F

    mul-float/2addr v0, v1

    iget p0, p0, Lcom/miui/home/settings/IconSizeSeekBar;->mCenterScale:F

    :goto_0
    add-float/2addr v0, p0

    return v0

    .line 91
    :cond_0
    iget v0, p0, Lcom/miui/home/settings/IconSizeSeekBar;->mBeforeCentScale:F

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/miui/home/settings/IconSizeSeekBar;->mHalfProgress:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget p0, p0, Lcom/miui/home/settings/IconSizeSeekBar;->mMinScale:F

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 97
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatSeekBar;->onDraw(Landroid/graphics/Canvas;)V

    .line 98
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    iget v1, p0, Lcom/miui/home/settings/IconSizeSeekBar;->mPointsRadius:F

    iget-object p0, p0, Lcom/miui/home/settings/IconSizeSeekBar;->mPointPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 103
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 110
    invoke-super {p0, p1}, Lmiuix/androidbasewidget/widget/SeekBar;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    .line 106
    :cond_0
    invoke-super {p0, p1}, Lmiuix/androidbasewidget/widget/SeekBar;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 107
    invoke-direct {p0}, Lcom/miui/home/settings/IconSizeSeekBar;->setDefaultPoint()V

    return v1
.end method
