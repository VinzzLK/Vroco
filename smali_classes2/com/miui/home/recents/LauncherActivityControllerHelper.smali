.class public final Lcom/miui/home/recents/LauncherActivityControllerHelper;
.super Ljava/lang/Object;
.source "LauncherActivityControllerHelper.java"

# interfaces
.implements Lcom/miui/home/recents/ActivityControlHelper;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/home/recents/ActivityControlHelper<",
        "Lcom/miui/home/launcher/Launcher;",
        ">;"
    }
.end annotation


# direct methods
.method public static synthetic $r8$lambda$VS6w_JpIx_SiQVByqcUpFyp4akg(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/anim/AnimatorPlaybackController;Lcom/miui/home/launcher/LauncherState;Lcom/miui/home/launcher/LauncherState;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/miui/home/recents/LauncherActivityControllerHelper;->lambda$createActivityControllerInternal$0(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/anim/AnimatorPlaybackController;Lcom/miui/home/launcher/LauncherState;Lcom/miui/home/launcher/LauncherState;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/recents/LauncherActivityControllerHelper;Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/LauncherState;JLjava/util/function/Consumer;)V
    .locals 0

    .line 48
    invoke-direct/range {p0 .. p5}, Lcom/miui/home/recents/LauncherActivityControllerHelper;->createActivityControllerInternal(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/LauncherState;JLjava/util/function/Consumer;)V

    return-void
.end method

.method private createActivityControllerInternal(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/LauncherState;JLjava/util/function/Consumer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/home/launcher/Launcher;",
            "Lcom/miui/home/launcher/LauncherState;",
            "J",
            "Ljava/util/function/Consumer<",
            "Lcom/miui/home/launcher/anim/AnimatorPlaybackController;",
            ">;)V"
        }
    .end annotation

    .line 139
    sget-object v0, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    if-ne p2, v0, :cond_0

    return-void

    .line 144
    :cond_0
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 145
    invoke-direct {p0, v1, p1, v0}, Lcom/miui/home/recents/LauncherActivityControllerHelper;->playScaleDownAnim(Landroid/animation/AnimatorSet;Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/LauncherState;)V

    const-wide/16 v2, 0x2

    mul-long/2addr p3, v2

    .line 147
    invoke-virtual {v1, p3, p4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 148
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object p0

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/animation/Animator;

    invoke-virtual {p0, v1, v2}, Lcom/miui/home/launcher/LauncherStateManager;->setCurrentAnimation(Landroid/animation/AnimatorSet;[Landroid/animation/Animator;)V

    .line 149
    new-instance p0, Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

    const/4 v2, 0x0

    invoke-direct {p0, v1, p3, p4, v2}, Lcom/miui/home/launcher/anim/AnimatorPlaybackController;-><init>(Landroid/animation/AnimatorSet;JLcom/miui/home/launcher/util/LauncherStateSwitch;)V

    .line 152
    new-instance p3, Lcom/miui/home/recents/LauncherActivityControllerHelper$$ExternalSyntheticLambda0;

    invoke-direct {p3, p1, p0, v0, p2}, Lcom/miui/home/recents/LauncherActivityControllerHelper$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/anim/AnimatorPlaybackController;Lcom/miui/home/launcher/LauncherState;Lcom/miui/home/launcher/LauncherState;)V

    invoke-virtual {p0, p3}, Lcom/miui/home/launcher/anim/AnimatorPlaybackController;->setEndAction(Ljava/lang/Runnable;)V

    .line 156
    invoke-interface {p5, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method private getVisibleLauncher()Lcom/miui/home/launcher/Launcher;
    .locals 1

    .line 58
    invoke-virtual {p0}, Lcom/miui/home/recents/LauncherActivityControllerHelper;->getCreatedActivity()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 60
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {p0}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v0

    if-nez v0, :cond_1

    .line 62
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isStatusBarExpansion()Z

    move-result v0

    if-nez v0, :cond_1

    .line 63
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isLauncherDialogShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 64
    invoke-virtual {p0}, Lcom/miui/home/launcher/BaseActivity;->hasBeenResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :cond_1
    :goto_0
    return-object p0
.end method

.method private isNeedAnim(Lcom/miui/home/launcher/Launcher;)Z
    .locals 0

    .line 106
    sget-object p0, Lcom/miui/home/launcher/LauncherState;->ASSISTANT_OVERLAY_STATE:Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayState;

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 107
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreen()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getPAScrollBlur()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static synthetic lambda$createActivityControllerInternal$0(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/anim/AnimatorPlaybackController;Lcom/miui/home/launcher/LauncherState;Lcom/miui/home/launcher/LauncherState;)V
    .locals 4

    .line 153
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object p0

    .line 154
    invoke-virtual {p1}, Lcom/miui/home/launcher/anim/AnimatorPlaybackController;->getInterpolatedProgress()F

    move-result p1

    float-to-double v0, p1

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpl-double p1, v0, v2

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, p3

    :goto_0
    const/4 p1, 0x0

    .line 153
    invoke-virtual {p0, p2, p1}, Lcom/miui/home/launcher/LauncherStateManager;->goToState(Lcom/miui/home/launcher/LauncherState;Z)V

    return-void
.end method

.method private playScaleDownAnim(Landroid/animation/AnimatorSet;Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/LauncherState;)V
    .locals 8

    .line 164
    invoke-virtual {p2}, Lcom/miui/home/launcher/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/miui/home/recents/views/RecentsView;

    .line 166
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Lcom/miui/home/recents/views/TaskStackView;->getFrontMostTaskView(Z)Lcom/miui/home/recents/views/TaskView;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 174
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScaleX()F

    move-result v0

    .line 175
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 177
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 178
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setScaleY(F)V

    const/4 v3, 0x0

    .line 179
    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 180
    new-instance v4, Lcom/miui/home/recents/util/ClipAnimationHelper;

    invoke-direct {v4}, Lcom/miui/home/recents/util/ClipAnimationHelper;-><init>()V

    .line 181
    invoke-virtual {p2}, Lcom/miui/home/recents/views/TaskView;->getThumbnailView()Lcom/miui/home/recents/views/TaskViewThumbnail;

    move-result-object v5

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Lcom/miui/home/recents/views/RecentsView;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, p2, v6}, Lcom/miui/home/recents/util/ClipAnimationHelper;->fromTaskThumbnailView(Lcom/miui/home/recents/views/TaskViewThumbnail;Lcom/miui/home/recents/views/RecentsView;Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)V

    .line 182
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 183
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 184
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 186
    invoke-virtual {v4}, Lcom/miui/home/recents/util/ClipAnimationHelper;->getSourceRect()Landroid/graphics/RectF;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/RectF;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {v4}, Lcom/miui/home/recents/util/ClipAnimationHelper;->getTargetRect()Landroid/graphics/RectF;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/RectF;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    .line 187
    invoke-virtual {v4}, Lcom/miui/home/recents/util/ClipAnimationHelper;->getSourceRect()Landroid/graphics/RectF;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result p2

    .line 188
    invoke-virtual {v4}, Lcom/miui/home/recents/util/ClipAnimationHelper;->getTargetRect()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    div-float/2addr p2, v0

    .line 189
    invoke-virtual {v4}, Lcom/miui/home/recents/util/ClipAnimationHelper;->getSourceRect()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    .line 190
    invoke-virtual {v4}, Lcom/miui/home/recents/util/ClipAnimationHelper;->getTargetRect()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    sub-float/2addr v0, v1

    .line 191
    sget-object v1, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v4, 0x2

    new-array v5, v4, [F

    aput p2, v5, p3

    const/4 v6, 0x1

    aput v2, v5, v6

    invoke-static {p0, v1, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 192
    sget-object v5, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v7, v4, [F

    aput p2, v7, p3

    aput v2, v7, v6

    invoke-static {p0, v5, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    .line 195
    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v5, v4, [F

    aput v0, v5, p3

    aput v3, v5, v6

    invoke-static {p0, v2, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    .line 197
    sget-object v0, Lcom/miui/home/launcher/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 198
    invoke-virtual {p2, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 199
    invoke-virtual {p0, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/animation/Animator;

    aput-object v1, v0, p3

    aput-object p2, v0, v6

    aput-object p0, v0, v4

    .line 200
    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public createActivityInitListener(Ljava/util/function/BiPredicate;)Lcom/miui/home/recents/ActivityControlHelper$ActivityInitListener;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiPredicate<",
            "Lcom/miui/home/launcher/Launcher;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/miui/home/recents/ActivityControlHelper$ActivityInitListener;"
        }
    .end annotation

    .line 206
    new-instance p0, Lcom/miui/home/recents/LauncherInitListenerEx;

    invoke-direct {p0, p1}, Lcom/miui/home/recents/LauncherInitListenerEx;-><init>(Ljava/util/function/BiPredicate;)V

    return-object p0
.end method

.method public getCreatedActivity()Lcom/miui/home/launcher/Launcher;
    .locals 0

    .line 54
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getVisibleRecentsView()Landroid/view/View;
    .locals 0

    .line 48
    invoke-virtual {p0}, Lcom/miui/home/recents/LauncherActivityControllerHelper;->getVisibleRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object p0

    return-object p0
.end method

.method public getVisibleRecentsView()Lcom/miui/home/recents/views/RecentsView;
    .locals 1

    .line 70
    invoke-direct {p0}, Lcom/miui/home/recents/LauncherActivityControllerHelper;->getVisibleLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 71
    sget-object v0, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/miui/home/recents/views/RecentsView;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getVisibleRecentsViewIgnoringWinFocus()Landroid/view/View;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">()TT;"
        }
    .end annotation

    .line 77
    invoke-virtual {p0}, Lcom/miui/home/recents/LauncherActivityControllerHelper;->getCreatedActivity()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    if-eqz p0, :cond_1

    .line 80
    sget-object v1, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 81
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public bridge synthetic prepareRecentsUI(Lcom/miui/home/launcher/BaseActivity;ZZLjava/util/function/Consumer;)Lcom/miui/home/recents/ActivityControlHelper$AnimationFactory;
    .locals 0

    .line 48
    check-cast p1, Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/home/recents/LauncherActivityControllerHelper;->prepareRecentsUI(Lcom/miui/home/launcher/Launcher;ZZLjava/util/function/Consumer;)Lcom/miui/home/recents/ActivityControlHelper$AnimationFactory;

    move-result-object p0

    return-object p0
.end method

.method public prepareRecentsUI(Lcom/miui/home/launcher/Launcher;ZZLjava/util/function/Consumer;)Lcom/miui/home/recents/ActivityControlHelper$AnimationFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/home/launcher/Launcher;",
            "ZZ",
            "Ljava/util/function/Consumer<",
            "Lcom/miui/home/launcher/anim/AnimatorPlaybackController;",
            ">;)",
            "Lcom/miui/home/recents/ActivityControlHelper$AnimationFactory;"
        }
    .end annotation

    .line 112
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/miui/home/launcher/LauncherStateManager;->getState()Lcom/miui/home/launcher/LauncherState;

    move-result-object p2

    .line 115
    iget-boolean p3, p2, Lcom/miui/home/launcher/LauncherState;->disableRestore:Z

    if-eqz p3, :cond_0

    .line 116
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/miui/home/launcher/LauncherStateManager;->getRestState()Lcom/miui/home/launcher/LauncherState;

    move-result-object p2

    .line 118
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/miui/home/launcher/LauncherStateManager;->setRestState(Lcom/miui/home/launcher/LauncherState;)V

    .line 120
    sget-object p2, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result p3

    const/4 v0, 0x1

    if-eqz p3, :cond_1

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 121
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object p3

    invoke-virtual {p3, v0}, Lcom/miui/home/recents/views/RecentsContainer;->setOverviewStateEnabled(Z)V

    .line 125
    :cond_1
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getAppTransitionManager()Lcom/miui/home/recents/LauncherAppTransitionManager;

    move-result-object p3

    iput-boolean v0, p3, Lcom/miui/home/recents/LauncherAppTransitionManager;->mIsIgnoreRecentsLaunchAnimationEnd:Z

    .line 126
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object p3

    const/4 v0, 0x0

    invoke-virtual {p3, p2, v0}, Lcom/miui/home/launcher/LauncherStateManager;->goToState(Lcom/miui/home/launcher/LauncherState;Z)V

    .line 127
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getAppTransitionManager()Lcom/miui/home/recents/LauncherAppTransitionManager;

    move-result-object p3

    iput-boolean v0, p3, Lcom/miui/home/recents/LauncherAppTransitionManager;->mIsIgnoreRecentsLaunchAnimationEnd:Z

    .line 129
    new-instance p3, Lcom/miui/home/recents/LauncherActivityControllerHelper$1;

    invoke-direct {p3, p0, p1, p2, p4}, Lcom/miui/home/recents/LauncherActivityControllerHelper$1;-><init>(Lcom/miui/home/recents/LauncherActivityControllerHelper;Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/LauncherState;Ljava/util/function/Consumer;)V

    return-object p3
.end method

.method public switchToRecentsIfVisible()Z
    .locals 3

    .line 87
    invoke-static {}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->getInstance()Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->isPreHalfSplitMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {p0}, Lcom/miui/home/recents/LauncherActivityControllerHelper;->getCreatedActivity()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    goto :goto_0

    .line 90
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/recents/LauncherActivityControllerHelper;->getVisibleLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    const-string v1, "homekey"

    .line 96
    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->closeAllOverLauncherWindow(Ljava/lang/String;)V

    .line 97
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/LauncherStateManager;->isAnimInPlayBack()Z

    move-result v1

    if-nez v1, :cond_2

    .line 98
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object v1

    sget-object v2, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    invoke-direct {p0, v0}, Lcom/miui/home/recents/LauncherActivityControllerHelper;->isNeedAnim(Lcom/miui/home/launcher/Launcher;)Z

    move-result p0

    invoke-virtual {v1, v2, p0}, Lcom/miui/home/launcher/LauncherStateManager;->goToState(Lcom/miui/home/launcher/LauncherState;Z)V

    goto :goto_1

    :cond_2
    const-string p0, "LauncherActivityControllerHelper"

    const-string v0, "switchToRecentsIfVisible: don\'t switch to recents, launcher state transition animation is in playback"

    .line 100
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const/4 p0, 0x1

    return p0
.end method
