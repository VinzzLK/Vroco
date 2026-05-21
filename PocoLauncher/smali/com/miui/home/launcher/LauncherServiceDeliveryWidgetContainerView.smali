.class public Lcom/miui/home/launcher/LauncherServiceDeliveryWidgetContainerView;
.super Lcom/miui/home/launcher/LauncherWidgetContainerView;
.source "LauncherServiceDeliveryWidgetContainerView.java"


# instance fields
.field private mChild:Landroid/view/View;

.field private mConfiguration:Landroid/content/res/Configuration;

.field private mShouldClearBlur:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/LauncherServiceDeliveryWidgetContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/launcher/LauncherWidgetContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    sget-boolean p2, Lcom/miui/home/launcher/ApplicationConfig;->isSupportHomeBlur:Z

    xor-int/lit8 p2, p2, 0x1

    iput-boolean p2, p0, Lcom/miui/home/launcher/LauncherServiceDeliveryWidgetContainerView;->mShouldClearBlur:Z

    .line 36
    new-instance p2, Landroid/content/res/Configuration;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object p2, p0, Lcom/miui/home/launcher/LauncherServiceDeliveryWidgetContainerView;->mConfiguration:Landroid/content/res/Configuration;

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f10035e

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setOutLine()V
    .locals 3

    .line 47
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    const/4 v1, 0x0

    .line 48
    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 49
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 50
    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 51
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 52
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/home/launcher/widget/RoundedCornerEnforcement;->computeEnforcedRadius(Landroid/content/Context;)F

    move-result v1

    .line 54
    new-instance v2, Lcom/miui/home/launcher/LauncherServiceDeliveryWidgetContainerView$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/miui/home/launcher/LauncherServiceDeliveryWidgetContainerView$1;-><init>(Lcom/miui/home/launcher/LauncherServiceDeliveryWidgetContainerView;Landroid/graphics/Rect;F)V

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 64
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidateOutline()V

    const/4 v0, 0x1

    .line 65
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setClipToOutline(Z)V

    return-void
.end method


# virtual methods
.method public clearBlurIfSupported()V
    .locals 1

    .line 110
    invoke-static {}, Lcom/miui/home/launcher/common/BlurUtilities;->isWidgetBlurSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/miui/home/launcher/LauncherServiceDeliveryWidgetContainerView;->mChild:Landroid/view/View;

    if-eqz p0, :cond_0

    .line 111
    invoke-static {p0}, Lcom/miui/home/launcher/common/BlurUtilities;->clearWidgetOrMaMlBlur(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 77
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 78
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherServiceDeliveryWidgetContainerView;->setBlurIfSupported()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 89
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 90
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherServiceDeliveryWidgetContainerView;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p1, v0}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v0

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherServiceDeliveryWidgetContainerView;->setBlurIfSupported()V

    .line 94
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherServiceDeliveryWidgetContainerView;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 83
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 84
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherServiceDeliveryWidgetContainerView;->clearBlurIfSupported()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 42
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 43
    invoke-direct {p0}, Lcom/miui/home/launcher/LauncherServiceDeliveryWidgetContainerView;->setOutLine()V

    return-void
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/miui/home/launcher/LauncherServiceDeliveryWidgetContainerView;->mChild:Landroid/view/View;

    .line 71
    invoke-super {p0, p1}, Lcom/miui/home/launcher/LauncherWidgetContainerView;->onViewAdded(Landroid/view/View;)V

    .line 72
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherServiceDeliveryWidgetContainerView;->setBlurIfSupported()V

    return-void
.end method

.method public setBlurIfSupported()V
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherServiceDeliveryWidgetContainerView;->mChild:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 102
    :cond_0
    iget-boolean v0, p0, Lcom/miui/home/launcher/LauncherServiceDeliveryWidgetContainerView;->mShouldClearBlur:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/miui/home/launcher/common/BlurUtilities;->isWidgetBlurSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherServiceDeliveryWidgetContainerView;->mChild:Landroid/view/View;

    invoke-static {v0}, Lcom/miui/home/launcher/common/BlurUtilities;->setWidgetOrMaMlBlur(Landroid/view/View;)V

    .line 104
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherServiceDeliveryWidgetContainerView;->mChild:Landroid/view/View;

    invoke-static {v0}, Lcom/miui/home/launcher/common/BlurUtilities;->setWidgetBackgroundBlendColors(Landroid/view/View;)V

    .line 105
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherServiceDeliveryWidgetContainerView;->mChild:Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f0706a1

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    invoke-static {v0, p0}, Lcom/miui/home/launcher/common/BlurUtilities;->setBlurRadius(Landroid/view/View;I)V

    :cond_1
    return-void
.end method

.method public setOrClearBlur(Z)V
    .locals 0

    .line 116
    iput-boolean p1, p0, Lcom/miui/home/launcher/LauncherServiceDeliveryWidgetContainerView;->mShouldClearBlur:Z

    if-eqz p1, :cond_0

    .line 118
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherServiceDeliveryWidgetContainerView;->clearBlurIfSupported()V

    goto :goto_0

    .line 120
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherServiceDeliveryWidgetContainerView;->setBlurIfSupported()V

    :goto_0
    return-void
.end method
