.class public Lcom/miui/home/launcher/BlurView;
.super Landroid/view/View;
.source "BlurView.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCurrentBlurRadius:I

.field private mCurrentDimming:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    const-class v0, Lcom/miui/home/launcher/BlurView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/BlurView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 17
    iput p1, p0, Lcom/miui/home/launcher/BlurView;->mCurrentBlurRadius:I

    const/4 p1, 0x0

    .line 18
    iput p1, p0, Lcom/miui/home/launcher/BlurView;->mCurrentDimming:F

    return-void
.end method

.method private initBlurParams()V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 82
    invoke-static {p0, v0, v0, v1}, Lcom/miui/home/launcher/common/BlurUtilities;->setContainerBlur(Landroid/view/View;IZI)V

    const v1, -0x949495

    const/16 v2, 0x64

    .line 84
    invoke-direct {p0, v1, v2, v1, v2}, Lcom/miui/home/launcher/BlurView;->setBlurColor(IIII)V

    .line 86
    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/BlurUtilities;->setViewBlur(Landroid/view/View;I)V

    const v0, -0xe54d00

    const/16 v1, 0x6a

    .line 87
    invoke-static {p0, v0, v1}, Lcom/miui/home/launcher/common/BlurUtilities;->setBlurColor(Landroid/view/View;II)V

    return-void
.end method

.method private multiplyAlphaWithColor(IF)I
    .locals 1

    .line 91
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p0, p2

    float-to-int p0, p0

    .line 94
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result p2

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v0

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    invoke-static {p0, p2, v0, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method private prepareBlur()V
    .locals 1

    .line 43
    invoke-static {}, Lcom/miui/home/launcher/common/BlurUtilities;->isThreeLayerBlurSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    invoke-direct {p0}, Lcom/miui/home/launcher/BlurView;->initBlurParams()V

    goto :goto_0

    .line 46
    :cond_0
    invoke-static {p0}, Lcom/miui/home/launcher/common/BlurUtilities;->clearAllBlur(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method private setBlurColor(IIII)V
    .locals 1

    .line 98
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isDarkMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    invoke-static {p0, p1, p2}, Lcom/miui/home/launcher/common/BlurUtilities;->setBlurColor(Landroid/view/View;II)V

    goto :goto_0

    .line 101
    :cond_0
    invoke-static {p0, p3, p4}, Lcom/miui/home/launcher/common/BlurUtilities;->setBlurColor(Landroid/view/View;II)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getCurrentBlur()I
    .locals 0

    .line 51
    iget p0, p0, Lcom/miui/home/launcher/BlurView;->mCurrentBlurRadius:I

    return p0
.end method

.method public getCurrentDimming()F
    .locals 0

    .line 55
    iget p0, p0, Lcom/miui/home/launcher/BlurView;->mCurrentDimming:F

    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 26
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 27
    invoke-direct {p0}, Lcom/miui/home/launcher/BlurView;->prepareBlur()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 32
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 33
    invoke-static {p0}, Lcom/miui/home/launcher/common/BlurUtilities;->clearAllBlur(Landroid/view/View;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 38
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    const/high16 v0, 0xff0000

    .line 39
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method public setBlurRadius(I)V
    .locals 1

    .line 59
    iget v0, p0, Lcom/miui/home/launcher/BlurView;->mCurrentBlurRadius:I

    if-eq v0, p1, :cond_1

    .line 60
    iput p1, p0, Lcom/miui/home/launcher/BlurView;->mCurrentBlurRadius:I

    .line 61
    invoke-static {p0, p1}, Lcom/miui/home/launcher/common/BlurUtilities;->setBlurRadius(Landroid/view/View;I)V

    if-gtz p1, :cond_0

    const/16 p1, 0x8

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 62
    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public setDimming(F)V
    .locals 3

    .line 67
    iget v0, p0, Lcom/miui/home/launcher/BlurView;->mCurrentDimming:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    const v0, -0x949495

    .line 69
    invoke-direct {p0, v0, p1}, Lcom/miui/home/launcher/BlurView;->multiplyAlphaWithColor(IF)I

    move-result v0

    const v1, -0xe54d00

    .line 70
    invoke-direct {p0, v1, p1}, Lcom/miui/home/launcher/BlurView;->multiplyAlphaWithColor(IF)I

    move-result v1

    .line 71
    iput p1, p0, Lcom/miui/home/launcher/BlurView;->mCurrentDimming:F

    .line 73
    iget p1, p0, Lcom/miui/home/launcher/BlurView;->mCurrentBlurRadius:I

    const/4 v2, 0x1

    invoke-static {p0, v2, v2, p1}, Lcom/miui/home/launcher/common/BlurUtilities;->setContainerBlur(Landroid/view/View;IZI)V

    const/16 p1, 0x64

    .line 75
    invoke-direct {p0, v0, p1, v0, p1}, Lcom/miui/home/launcher/BlurView;->setBlurColor(IIII)V

    .line 76
    invoke-static {p0, v2}, Lcom/miui/home/launcher/common/BlurUtilities;->setViewBlur(Landroid/view/View;I)V

    const/16 p1, 0x6a

    .line 77
    invoke-static {p0, v1, p1}, Lcom/miui/home/launcher/common/BlurUtilities;->setBlurColor(Landroid/view/View;II)V

    :cond_0
    return-void
.end method
