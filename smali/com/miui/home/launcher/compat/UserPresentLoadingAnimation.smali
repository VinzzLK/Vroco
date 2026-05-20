.class public Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation;
.super Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;
.source "UserPresentLoadingAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation$LoadingAnimationListener;,
        Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation$BackEaseOutInterpolator;
    }
.end annotation


# instance fields
.field private final ANIMATION_DURATION:I

.field private mActualDelay:I

.field private mAnimItemCount:I

.field private final mAnimatorListenerAdapter:Landroid/animation/AnimatorListenerAdapter;

.field private mIsLoading:Z

.field private mLoadingAnimation:Landroid/widget/ImageView;

.field private mLoadingAnimationListener:Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation$LoadingAnimationListener;

.field private mScreenDiagonalDistance:I

.field private final mTmpLocation:[I

.field private mWorkspaceLoadingView:Landroid/widget/FrameLayout;


# direct methods
.method public static synthetic $r8$lambda$XbRCZ1iUhtEHCDoTrhWM-5Ju2UI(Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation;->lambda$showAnimation$0()V

    return-void
.end method

.method public constructor <init>(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;-><init>(Lcom/miui/home/launcher/Launcher;)V

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 29
    iput-object p1, p0, Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation;->mTmpLocation:[I

    const/16 p1, 0xfa

    .line 38
    iput p1, p0, Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation;->ANIMATION_DURATION:I

    .line 186
    new-instance p1, Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation$1;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation$1;-><init>(Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation;)V

    iput-object p1, p0, Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation;->mAnimatorListenerAdapter:Landroid/animation/AnimatorListenerAdapter;

    return-void
.end method

.method static synthetic access$006(Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation;)I
    .locals 1

    .line 28
    iget v0, p0, Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation;->mAnimItemCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation;->mAnimItemCount:I

    return v0
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation;)Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation$LoadingAnimationListener;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation;->mLoadingAnimationListener:Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation$LoadingAnimationListener;

    return-object p0
.end method

.method static synthetic access$102(Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation;Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation$LoadingAnimationListener;)Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation$LoadingAnimationListener;
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation;->mLoadingAnimationListener:Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation$LoadingAnimationListener;

    return-object p1
.end method

.method private isRTLSeekBar(Landroid/view/View;)Z
    .locals 0

    .line 183
    instance-of p0, p1, Lcom/miui/home/launcher/ScreenView$SeekBarIndicator;

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLayoutRtl()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$showAnimation$0()V
    .locals 1

    .line 92
    iget v0, p0, Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation;->mAnimItemCount:I

    if-lez v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation;->mLoadingAnimationListener:Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation$LoadingAnimationListener;

    if-eqz v0, :cond_0

    .line 94
    invoke-interface {v0}, Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation$LoadingAnimationListener;->onAnimationFinish()V

    const/4 v0, 0x0

    .line 95
    iput-object v0, p0, Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation;->mLoadingAnimationListener:Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation$LoadingAnimationListener;

    :cond_0
    return-void
.end method

.method private resetRTLSeekBarLocationX(Landroid/view/View;)V
    .locals 4

    .line 174
    iget-object v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-nez v0, :cond_0

    return-void

    .line 175
    :cond_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 177
    :cond_1
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation;->isRTLSeekBar(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 178
    iget-object p0, p0, Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation;->mTmpLocation:[I

    const/4 v1, 0x0

    aget v2, p0, v1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenWidth()I

    move-result v3

    invoke-virtual {v0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v0

    mul-int/2addr v3, v0

    add-int/2addr v2, v3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    sub-int/2addr v2, p1

    aput v2, p0, v1

    :cond_2
    return-void
.end method

.method private static stopAnimatedDrawableIfNeeded(Landroid/widget/ImageView;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 79
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/Animatable;

    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/Animatable;

    invoke-interface {p0}, Landroid/graphics/drawable/Animatable;->stop()V

    :cond_0
    return-void
.end method


# virtual methods
.method public endAnimation(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public prepareLoadingAnimation(Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation$LoadingAnimationListener;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation;->mLoadingAnimationListener:Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation$LoadingAnimationListener;

    const/4 p1, 0x0

    .line 60
    iput p1, p0, Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation;->mAnimItemCount:I

    .line 61
    iput p1, p0, Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation;->mActualDelay:I

    .line 62
    invoke-virtual {p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->prepareAnimation()V

    return-void
.end method

.method prepareUserPresentAnimation(Landroid/view/View;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 51
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 52
    instance-of v0, p1, Lcom/miui/home/launcher/interfaces/UserPresentLoadingAnimIgnore;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/miui/home/launcher/interfaces/UserPresentLoadingAnimIgnore;

    invoke-interface {p1}, Lcom/miui/home/launcher/interfaces/UserPresentLoadingAnimIgnore;->needIgnore()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 55
    :cond_1
    iget p1, p0, Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation;->mAnimItemCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation;->mAnimItemCount:I

    return-void
.end method

.method public showAnimation()V
    .locals 4

    .line 87
    iget-object v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenId()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->mPreparedScreenId:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation;->mLoadingAnimationListener:Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation$LoadingAnimationListener;

    if-eqz v0, :cond_0

    .line 88
    invoke-interface {v0}, Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation$LoadingAnimationListener;->onAnimationFinish()V

    .line 90
    :cond_0
    invoke-super {p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->showAnimation()V

    .line 91
    iget-object v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation;)V

    iget p0, p0, Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation;->mActualDelay:I

    add-int/lit16 p0, p0, 0xfa

    int-to-long v2, p0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public showAnimationAndDismissLoading()V
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation;->mWorkspaceLoadingView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getShortcutMenuLayer()Lcom/miui/home/launcher/ShortcutMenuLayer;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "Launcher.UserPresentAnimation"

    const-string v1, " Dismiss loading "

    .line 67
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object v0, p0, Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation;->mLoadingAnimation:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation;->stopAnimatedDrawableIfNeeded(Landroid/widget/ImageView;)V

    .line 69
    iget-object v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getShortcutMenuLayer()Lcom/miui/home/launcher/ShortcutMenuLayer;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation;->mWorkspaceLoadingView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 70
    iput-object v0, p0, Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation;->mWorkspaceLoadingView:Landroid/widget/FrameLayout;

    .line 71
    iput-object v0, p0, Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation;->mLoadingAnimation:Landroid/widget/ImageView;

    const/4 v0, 0x0

    .line 72
    iput-boolean v0, p0, Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation;->mIsLoading:Z

    .line 74
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation;->showAnimation()V

    return-void
.end method

.method public showLoading()V
    .locals 4

    .line 102
    iget-boolean v0, p0, Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation;->mIsLoading:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getDragLayer()Lcom/miui/home/launcher/DragLayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation;->mWorkspaceLoadingView:Landroid/widget/FrameLayout;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 103
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getShortcutMenuLayer()Lcom/miui/home/launcher/ShortcutMenuLayer;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v0, "Launcher.UserPresentAnimation"

    const-string v1, " show loading "

    .line 104
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0185

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation;->mWorkspaceLoadingView:Landroid/widget/FrameLayout;

    const v1, 0x7f0a024d

    .line 107
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation;->mLoadingAnimation:Landroid/widget/ImageView;

    .line 108
    iget-object v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getShortcutMenuLayer()Lcom/miui/home/launcher/ShortcutMenuLayer;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation;->mWorkspaceLoadingView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 110
    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->getCurrentWallpaperColorMode()I

    move-result v0

    if-nez v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080715

    invoke-virtual {v0, v1, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080714

    invoke-virtual {v0, v1, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 115
    :goto_0
    instance-of v1, v0, Landroid/graphics/drawable/Animatable;

    if-eqz v1, :cond_1

    .line 116
    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/Animatable;

    invoke-interface {v1}, Landroid/graphics/drawable/Animatable;->start()V

    .line 118
    :cond_1
    iget-object v1, p0, Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation;->mLoadingAnimation:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x1

    .line 119
    iput-boolean v0, p0, Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation;->mIsLoading:Z

    :cond_2
    return-void
.end method

.method showUserPresentAnimation(Landroid/view/View;)V
    .locals 8

    .line 125
    iget v0, p0, Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation;->mScreenDiagonalDistance:I

    if-nez v0, :cond_0

    .line 126
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/common/Utilities;->calcDistance(FF)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation;->mScreenDiagonalDistance:I

    .line 129
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 130
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 132
    iget-object v2, p0, Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation;->mTmpLocation:[I

    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 133
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation;->resetRTLSeekBarLocationX(Landroid/view/View;)V

    .line 134
    iget-object v2, p0, Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation;->mTmpLocation:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    .line 135
    iget-object v4, p0, Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation;->mTmpLocation:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    sub-int/2addr v2, v0

    sub-int/2addr v4, v1

    int-to-float v0, v2

    int-to-float v1, v4

    .line 138
    invoke-static {v0, v1}, Lcom/miui/home/launcher/common/Utilities;->calcDistance(FF)I

    move-result v0

    mul-int/lit16 v1, v0, 0x1f4

    .line 140
    iget v5, p0, Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation;->mScreenDiagonalDistance:I

    div-int/2addr v1, v5

    int-to-float v0, v0

    int-to-float v5, v5

    div-float/2addr v0, v5

    const v5, 0x3f19999a    # 0.6f

    add-float/2addr v0, v5

    const v5, 0x3e19999a    # 0.15f

    const/4 v6, 0x0

    if-nez v1, :cond_1

    move v2, v6

    goto :goto_0

    :cond_1
    neg-int v2, v2

    int-to-float v2, v2

    int-to-float v7, v1

    mul-float/2addr v7, v5

    div-float/2addr v2, v7

    :goto_0
    if-nez v1, :cond_2

    move v4, v6

    goto :goto_1

    :cond_2
    neg-int v4, v4

    int-to-float v4, v4

    int-to-float v7, v1

    mul-float/2addr v7, v5

    div-float/2addr v4, v7

    .line 145
    :goto_1
    instance-of v5, p1, Lcom/miui/home/launcher/interfaces/PresentAnimationResettable;

    if-eqz v5, :cond_4

    .line 146
    move-object v5, p1

    check-cast v5, Lcom/miui/home/launcher/interfaces/PresentAnimationResettable;

    invoke-interface {v5}, Lcom/miui/home/launcher/interfaces/PresentAnimationResettable;->needReset()Z

    move-result v5

    if-eqz v5, :cond_3

    move v5, v6

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v5

    goto :goto_2

    .line 147
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v5

    .line 148
    :goto_2
    instance-of v7, p1, Lcom/miui/home/launcher/ScreenView$SeekBarIndicator;

    if-eqz v7, :cond_5

    move v2, v6

    goto :goto_3

    :cond_5
    add-float/2addr v2, v5

    .line 150
    :goto_3
    invoke-virtual {p1, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 151
    invoke-virtual {p1, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 152
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 153
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    add-int/lit8 v1, v1, -0x32

    .line 156
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 157
    iget v1, p0, Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation;->mActualDelay:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation;->mActualDelay:I

    .line 158
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object v1, Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation$BackEaseOutInterpolator;->sInstance:Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation$BackEaseOutInterpolator;

    .line 159
    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    int-to-long v0, v0

    .line 160
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0xfa

    .line 161
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 162
    invoke-virtual {p1, v6}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 163
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 164
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 165
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p0, p0, Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation;->mAnimatorListenerAdapter:Landroid/animation/AnimatorListenerAdapter;

    .line 166
    invoke-virtual {p1, p0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    if-nez v7, :cond_6

    .line 168
    invoke-virtual {p0, v5}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 170
    :cond_6
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method
