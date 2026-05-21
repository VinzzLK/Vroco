.class public Lcom/miui/home/launcher/allapps/hideapps/HideAppsGuideView;
.super Landroid/widget/FrameLayout;
.source "HideAppsGuideView.java"


# instance fields
.field private guideAnim:Landroid/view/animation/TranslateAnimation;

.field private mAllAppsContainerView:Lcom/miui/home/launcher/allapps/AllAppsContainerView;

.field private mBackBtn:Landroid/widget/TextView;

.field private mGuideImg:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsGuideView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    new-instance p2, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f070119

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    const/4 p3, 0x0

    invoke-direct {p2, p3, p1, p3, p3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object p2, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsGuideView;->guideAnim:Landroid/view/animation/TranslateAnimation;

    .line 46
    new-instance p1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {p2, p1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 47
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsGuideView;->guideAnim:Landroid/view/animation/TranslateAnimation;

    const-wide/16 p2, 0x1f4

    invoke-virtual {p1, p2, p3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 48
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsGuideView;->guideAnim:Landroid/view/animation/TranslateAnimation;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/view/animation/TranslateAnimation;->setRepeatCount(I)V

    .line 50
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsGuideView;->guideAnim:Landroid/view/animation/TranslateAnimation;

    new-instance p2, Lcom/miui/home/launcher/allapps/hideapps/HideAppsGuideView$1;

    invoke-direct {p2, p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsGuideView$1;-><init>(Lcom/miui/home/launcher/allapps/hideapps/HideAppsGuideView;)V

    invoke-virtual {p1, p2}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/allapps/hideapps/HideAppsGuideView;)Landroid/widget/ImageView;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsGuideView;->mGuideImg:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/allapps/hideapps/HideAppsGuideView;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsGuideView;->stopAnim()V

    return-void
.end method

.method private startAnim()V
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsGuideView;->mGuideImg:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsGuideView;->guideAnim:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private stopAnim()V
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsGuideView;->mGuideImg:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->clearAnimation()V

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    .line 74
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f0a01d8

    .line 75
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsGuideView;->mBackBtn:Landroid/widget/TextView;

    const v0, 0x7f0a01d9

    .line 76
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsGuideView;->mGuideImg:Landroid/widget/ImageView;

    .line 78
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsGuideView;->mBackBtn:Landroid/widget/TextView;

    new-instance v1, Lcom/miui/home/launcher/allapps/hideapps/HideAppsGuideView$2;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsGuideView$2;-><init>(Lcom/miui/home/launcher/allapps/hideapps/HideAppsGuideView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsGuideView;->mGuideImg:Landroid/widget/ImageView;

    new-instance v1, Lcom/miui/home/launcher/allapps/hideapps/HideAppsGuideDrawable;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsGuideDrawable;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setUp(Lcom/miui/home/launcher/allapps/AllAppsContainerView;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsGuideView;->mAllAppsContainerView:Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    .line 100
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsGuideView;->startAnim()V

    return-void
.end method
