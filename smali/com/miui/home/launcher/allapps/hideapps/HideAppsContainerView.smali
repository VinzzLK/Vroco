.class public Lcom/miui/home/launcher/allapps/hideapps/HideAppsContainerView;
.super Landroid/widget/FrameLayout;
.source "HideAppsContainerView.java"

# interfaces
.implements Lcom/miui/home/launcher/allapps/hideapps/HideAppsViewController;


# instance fields
.field private currentPage:I

.field private mHideAppsContentContainerView:Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;

.field private mHideAppsPasswordGuideView:Lcom/miui/home/launcher/allapps/hideapps/HideAppsPasswordGuideView;

.field private mHideAppsUnlockContainerView:Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;

.field private mUnlockViewExitAnimation:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x2

    .line 38
    iput p2, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContainerView;->currentPage:I

    const p2, 0x7f01003d

    .line 57
    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContainerView;->mUnlockViewExitAnimation:Landroid/view/animation/Animation;

    .line 58
    new-instance p2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 59
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContainerView;->mUnlockViewExitAnimation:Landroid/view/animation/Animation;

    const-wide/16 p2, 0x64

    invoke-virtual {p1, p2, p3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 60
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContainerView;->mUnlockViewExitAnimation:Landroid/view/animation/Animation;

    new-instance p2, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContainerView$1;

    invoke-direct {p2, p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContainerView$1;-><init>(Lcom/miui/home/launcher/allapps/hideapps/HideAppsContainerView;)V

    invoke-virtual {p1, p2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/allapps/hideapps/HideAppsContainerView;)I
    .locals 0

    .line 31
    iget p0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContainerView;->currentPage:I

    return p0
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/allapps/hideapps/HideAppsContainerView;)Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContainerView;->mHideAppsUnlockContainerView:Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;

    return-object p0
.end method

.method private getCurrentView()Lcom/miui/home/launcher/allapps/hideapps/HideAppsViewController;
    .locals 1

    .line 153
    iget v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContainerView;->currentPage:I

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContainerView;->getView(I)Lcom/miui/home/launcher/allapps/hideapps/HideAppsViewController;

    move-result-object p0

    return-object p0
.end method

.method private getView(I)Lcom/miui/home/launcher/allapps/hideapps/HideAppsViewController;
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 146
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContainerView;->mHideAppsPasswordGuideView:Lcom/miui/home/launcher/allapps/hideapps/HideAppsPasswordGuideView;

    return-object p0

    .line 148
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Invalid page!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 144
    :cond_1
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContainerView;->mHideAppsContentContainerView:Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;

    return-object p0

    .line 142
    :cond_2
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContainerView;->mHideAppsUnlockContainerView:Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;

    return-object p0
.end method


# virtual methods
.method public changeToContentContainerView()V
    .locals 3

    .line 95
    iget v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContainerView;->currentPage:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string p0, "HideAppsContainerView"

    const-string v0, "current page have already been HIDE_APPS_CONTENT, do nothing"

    .line 96
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContainerView;->mHideAppsUnlockContainerView:Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;

    iget-object v2, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContainerView;->mUnlockViewExitAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 100
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContainerView;->mHideAppsPasswordGuideView:Lcom/miui/home/launcher/allapps/hideapps/HideAppsPasswordGuideView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 101
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContainerView;->mHideAppsContentContainerView:Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 102
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContainerView;->mHideAppsContentContainerView:Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;->onShow()V

    .line 103
    iput v1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContainerView;->currentPage:I

    return-void
.end method

.method public changeToPasswordGuideView()V
    .locals 3

    .line 121
    iget v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContainerView;->currentPage:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const-string p0, "HideAppsContainerView"

    const-string v0, "current page have already been HIDE_APPS_PASSWORD_GUIDE, do nothing"

    .line 122
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContainerView;->mHideAppsPasswordGuideView:Lcom/miui/home/launcher/allapps/hideapps/HideAppsPasswordGuideView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 126
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContainerView;->mHideAppsContentContainerView:Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 127
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContainerView;->mHideAppsUnlockContainerView:Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 128
    iput v1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContainerView;->currentPage:I

    return-void
.end method

.method public changeToUnlockView()V
    .locals 3

    .line 110
    iget v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContainerView;->currentPage:I

    if-nez v0, :cond_0

    const-string p0, "HideAppsContainerView"

    const-string v0, "current page have already been HIDE_APPS_UNLOCK, do nothing"

    .line 111
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContainerView;->mHideAppsUnlockContainerView:Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 115
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContainerView;->mHideAppsContentContainerView:Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 116
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContainerView;->mHideAppsPasswordGuideView:Lcom/miui/home/launcher/allapps/hideapps/HideAppsPasswordGuideView;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 117
    iput v1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContainerView;->currentPage:I

    return-void
.end method

.method public getHideApps()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;"
        }
    .end annotation

    .line 188
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContainerView;->mHideAppsContentContainerView:Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;->getHideApps()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getSearchBarCallback()Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController$Callbacks;
    .locals 0

    .line 259
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContainerView;->mHideAppsContentContainerView:Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;->getSearchBarCallback()Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController$Callbacks;

    move-result-object p0

    return-object p0
.end method

.method public isHideSearchShow()Z
    .locals 0

    .line 263
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContainerView;->mHideAppsContentContainerView:Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;->isHideSearchShow()Z

    move-result p0

    return p0
.end method

.method public isInUnlockPage()Z
    .locals 0

    .line 132
    iget p0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContainerView;->currentPage:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isShowSearchBar()Z
    .locals 2

    .line 267
    iget v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContainerView;->currentPage:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 268
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContainerView;->mHideAppsContentContainerView:Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;->isShowSearchBar()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 4

    .line 244
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getStableInsetLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v1

    .line 245
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v3

    .line 244
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 246
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v1

    neg-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 247
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method public onEnter()V
    .locals 2

    .line 206
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContainerView;->getCurrentView()Lcom/miui/home/launcher/allapps/hideapps/HideAppsViewController;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsViewController;->onEnter()V

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "current page state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContainerView;->currentPage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " transition = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "HideAppsContainerView"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onExit()V
    .locals 0

    .line 212
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContainerView;->getCurrentView()Lcom/miui/home/launcher/allapps/hideapps/HideAppsViewController;

    move-result-object p0

    invoke-interface {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsViewController;->onExit()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 84
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f0a01dd

    .line 86
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsPasswordGuideView;

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContainerView;->mHideAppsPasswordGuideView:Lcom/miui/home/launcher/allapps/hideapps/HideAppsPasswordGuideView;

    const v0, 0x7f0a01df

    .line 87
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContainerView;->mHideAppsUnlockContainerView:Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;

    const v0, 0x7f0a01d3

    .line 88
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContainerView;->mHideAppsContentContainerView:Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;

    return-void
.end method

.method public onShow()V
    .locals 1

    .line 194
    iget v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContainerView;->currentPage:I

    if-nez v0, :cond_0

    .line 195
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContainerView;->mHideAppsUnlockContainerView:Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;->onShow()V

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 1

    .line 217
    invoke-static {}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsLockUtils;->hasHideAppsUnlockPassWord()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContainerView;->changeToUnlockView()V

    goto :goto_0

    .line 220
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContainerView;->changeToPasswordGuideView()V

    .line 222
    :goto_0
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContainerView;->mHideAppsUnlockContainerView:Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;->reset()V

    .line 223
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContainerView;->mHideAppsContentContainerView:Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;->reset()V

    return-void
.end method

.method public setApps(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;)V"
        }
    .end annotation

    .line 170
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContainerView;->mHideAppsContentContainerView:Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;->setApps(Ljava/util/List;)V

    return-void
.end method

.method public setUpView(Lcom/miui/home/launcher/allapps/AllAppsContainerView;)V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContainerView;->mHideAppsUnlockContainerView:Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;->setUp(Lcom/miui/home/launcher/allapps/hideapps/HideAppsContainerView;)V

    .line 74
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContainerView;->mHideAppsContentContainerView:Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;->setUp(Lcom/miui/home/launcher/allapps/AllAppsContainerView;)V

    .line 75
    invoke-static {}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsLockUtils;->hasHideAppsUnlockPassWord()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 76
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContainerView;->changeToUnlockView()V

    goto :goto_0

    .line 78
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContainerView;->changeToPasswordGuideView()V

    :goto_0
    return-void
.end method

.method public shouldContainerHandleTouchEventBySelf()Z
    .locals 1

    .line 228
    sget-object v0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsViewPlaceHolderSheet;->Companion:Lcom/miui/home/launcher/allapps/hideapps/HideAppsViewPlaceHolderSheet$Companion;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsViewPlaceHolderSheet$Companion;->isShow()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 231
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContainerView;->getCurrentView()Lcom/miui/home/launcher/allapps/hideapps/HideAppsViewController;

    move-result-object p0

    invoke-interface {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsViewController;->shouldContainerHandleTouchEventBySelf()Z

    move-result p0

    return p0
.end method

.method public shouldContainerScroll(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 236
    sget-object v0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsViewPlaceHolderSheet;->Companion:Lcom/miui/home/launcher/allapps/hideapps/HideAppsViewPlaceHolderSheet$Companion;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsViewPlaceHolderSheet$Companion;->isShow()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 239
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContainerView;->getCurrentView()Lcom/miui/home/launcher/allapps/hideapps/HideAppsViewController;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsViewController;->shouldContainerScroll(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public updateColorForColorMode()V
    .locals 1

    const/4 v0, 0x0

    .line 251
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f060089

    .line 252
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 253
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContainerView;->mHideAppsUnlockContainerView:Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;->updateColorForUiMode()V

    .line 254
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContainerView;->mHideAppsContentContainerView:Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;->updateColorForUiMode()V

    .line 255
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContainerView;->mHideAppsPasswordGuideView:Lcom/miui/home/launcher/allapps/hideapps/HideAppsPasswordGuideView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsPasswordGuideView;->updateColorForUiMode()V

    return-void
.end method
