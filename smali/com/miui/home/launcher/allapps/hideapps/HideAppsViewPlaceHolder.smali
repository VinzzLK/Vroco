.class public Lcom/miui/home/launcher/allapps/hideapps/HideAppsViewPlaceHolder;
.super Landroid/widget/FrameLayout;
.source "HideAppsViewPlaceHolder.java"


# instance fields
.field private mCloseCallback:Ljava/util/function/Supplier;

.field private mCurrentView:Lcom/miui/home/launcher/allapps/hideapps/HideAppsPatternViewController;

.field private mEnterAnim:Landroid/view/animation/Animation;

.field private mExitAnim:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsViewPlaceHolder;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p2, 0x7f010074

    .line 49
    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsViewPlaceHolder;->mEnterAnim:Landroid/view/animation/Animation;

    .line 50
    new-instance p3, Lcom/miui/home/launcher/animate/MAMLInterpolater$CubicEaseOutInterpolater;

    invoke-direct {p3}, Lcom/miui/home/launcher/animate/MAMLInterpolater$CubicEaseOutInterpolater;-><init>()V

    invoke-virtual {p2, p3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const p2, 0x7f010075

    .line 51
    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsViewPlaceHolder;->mExitAnim:Landroid/view/animation/Animation;

    .line 52
    new-instance p2, Lcom/miui/home/launcher/animate/MAMLInterpolater$CubicEaseOutInterpolater;

    invoke-direct {p2}, Lcom/miui/home/launcher/animate/MAMLInterpolater$CubicEaseOutInterpolater;-><init>()V

    invoke-virtual {p1, p2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 53
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsViewPlaceHolder;->mExitAnim:Landroid/view/animation/Animation;

    new-instance p2, Lcom/miui/home/launcher/allapps/hideapps/HideAppsViewPlaceHolder$1;

    invoke-direct {p2, p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsViewPlaceHolder$1;-><init>(Lcom/miui/home/launcher/allapps/hideapps/HideAppsViewPlaceHolder;)V

    invoke-virtual {p1, p2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/allapps/hideapps/HideAppsViewPlaceHolder;)Lcom/miui/home/launcher/allapps/hideapps/HideAppsPatternViewController;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsViewPlaceHolder;->mCurrentView:Lcom/miui/home/launcher/allapps/hideapps/HideAppsPatternViewController;

    return-object p0
.end method

.method static synthetic access$002(Lcom/miui/home/launcher/allapps/hideapps/HideAppsViewPlaceHolder;Lcom/miui/home/launcher/allapps/hideapps/HideAppsPatternViewController;)Lcom/miui/home/launcher/allapps/hideapps/HideAppsPatternViewController;
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsViewPlaceHolder;->mCurrentView:Lcom/miui/home/launcher/allapps/hideapps/HideAppsPatternViewController;

    return-object p1
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/allapps/hideapps/HideAppsViewPlaceHolder;)Ljava/util/function/Supplier;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsViewPlaceHolder;->mCloseCallback:Ljava/util/function/Supplier;

    return-object p0
.end method

.method private hide()V
    .locals 1

    .line 105
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsViewPlaceHolder;->mExitAnim:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    return-void

    .line 106
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsViewPlaceHolder;->mCloseCallback:Ljava/util/function/Supplier;

    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    return-void
.end method

.method private show()V
    .locals 1

    .line 97
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 100
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 101
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsViewPlaceHolder;->mEnterAnim:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method


# virtual methods
.method public closeView()V
    .locals 0

    .line 93
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsViewPlaceHolder;->hide()V

    return-void
.end method

.method public getCurrentView()Lcom/miui/home/launcher/allapps/hideapps/HideAppsViewController;
    .locals 0

    .line 128
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsViewPlaceHolder;->mCurrentView:Lcom/miui/home/launcher/allapps/hideapps/HideAppsPatternViewController;

    return-object p0
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 3

    .line 114
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07005e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v2, v1}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 115
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method public setCloseCallback(Ljava/util/function/Supplier;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsViewPlaceHolder;->mCloseCallback:Ljava/util/function/Supplier;

    return-void
.end method

.method public showView(ILandroid/os/Bundle;)V
    .locals 2

    .line 81
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->removeAllViews()V

    if-nez p1, :cond_0

    const p1, 0x7f0d0079

    goto :goto_0

    :cond_0
    const p1, 0x7f0d007d

    .line 83
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 84
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 85
    invoke-virtual {p0, p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 86
    check-cast p1, Lcom/miui/home/launcher/allapps/hideapps/HideAppsPatternViewController;

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsViewPlaceHolder;->mCurrentView:Lcom/miui/home/launcher/allapps/hideapps/HideAppsPatternViewController;

    .line 87
    invoke-interface {p1, p2}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsPatternViewController;->initialize(Landroid/os/Bundle;)V

    .line 88
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsViewPlaceHolder;->mCurrentView:Lcom/miui/home/launcher/allapps/hideapps/HideAppsPatternViewController;

    invoke-interface {p1}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsViewController;->onShow()V

    .line 89
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsViewPlaceHolder;->show()V

    return-void
.end method
