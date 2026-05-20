.class public abstract Lcom/miui/home/launcher/overlay/LauncherTransitionBaseController;
.super Ljava/lang/Object;
.source "LauncherTransitionBaseController.java"

# interfaces
.implements Lcom/miui/home/launcher/overlay/LauncherTransitionCallbacks;


# instance fields
.field protected mCancelOpenAppRunnable:Ljava/lang/Runnable;

.field protected mCurrentAnimation:Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

.field private final mFlingBlockCheck:Lcom/miui/home/launcher/util/FlingBlockCheck;

.field protected mLauncher:Lcom/miui/home/launcher/Launcher;

.field protected mOverlayTransitionController:Lcom/miui/home/launcher/overlay/OverlayTransitionController;

.field protected mShouldOpenApp:Z

.field private mSwipeDirection:I


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/Launcher;)V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lcom/miui/home/launcher/overlay/LauncherTransitionBaseController;->mShouldOpenApp:Z

    .line 40
    new-instance v0, Lcom/miui/home/launcher/util/FlingBlockCheck;

    invoke-direct {v0}, Lcom/miui/home/launcher/util/FlingBlockCheck;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/overlay/LauncherTransitionBaseController;->mFlingBlockCheck:Lcom/miui/home/launcher/util/FlingBlockCheck;

    .line 45
    iput-object p1, p0, Lcom/miui/home/launcher/overlay/LauncherTransitionBaseController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-void
.end method


# virtual methods
.method protected executeRemainingAnimation(Z)V
    .locals 3

    .line 141
    invoke-virtual {p0}, Lcom/miui/home/launcher/overlay/LauncherTransitionBaseController;->getCurrentAnimation()Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 142
    invoke-virtual {p0}, Lcom/miui/home/launcher/overlay/LauncherTransitionBaseController;->getCurrentAnimation()Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/anim/AnimatorPlaybackController;->getProgressFraction()F

    move-result v0

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 144
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/overlay/LauncherTransitionBaseController;->getCurrentAnimation()Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/anim/AnimatorPlaybackController;->getAnimationPlayer()Landroid/animation/ValueAnimator;

    move-result-object p0

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v0, 0x1

    aput p1, v1, v0

    .line 145
    invoke-virtual {p0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 146
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_1
    return-void
.end method

.method protected abstract getCancelOpenAppTime()J
.end method

.method protected getCurrentAnimation()Lcom/miui/home/launcher/anim/AnimatorPlaybackController;
    .locals 0

    .line 183
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/LauncherTransitionBaseController;->mCurrentAnimation:Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

    return-object p0
.end method

.method protected abstract getIsConnectionConnected()Z
.end method

.method protected getRemainingAnimationInterpolator(Z)Landroid/view/animation/Interpolator;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method protected abstract getSuccessTransitionProgress()F
.end method

.method protected handleCancelOpenApp()V
    .locals 4

    .line 113
    invoke-virtual {p0}, Lcom/miui/home/launcher/overlay/LauncherTransitionBaseController;->getIsConnectionConnected()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/overlay/LauncherTransitionBaseController;->mCancelOpenAppRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {p0}, Lcom/miui/home/launcher/overlay/LauncherTransitionBaseController;->removeCancelOpenAppRunnable()V

    const-string v0, "LauncherTransitionBaseController"

    const-string v1, "cancelOpenApp postDelayed"

    .line 115
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/LauncherTransitionBaseController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/overlay/LauncherTransitionBaseController;->mCancelOpenAppRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0}, Lcom/miui/home/launcher/overlay/LauncherTransitionBaseController;->getCancelOpenAppTime()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public onScrollChange(F)V
    .locals 2

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onScrollChange: progress:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " mOverlayTransitionController:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/launcher/overlay/LauncherTransitionBaseController;->mOverlayTransitionController:Lcom/miui/home/launcher/overlay/OverlayTransitionController;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LauncherTransitionBaseController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/LauncherTransitionBaseController;->mOverlayTransitionController:Lcom/miui/home/launcher/overlay/OverlayTransitionController;

    if-eqz p0, :cond_0

    .line 90
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->onScrollChanged(F)V

    :cond_0
    return-void
.end method

.method public onScrollInteractionBegin()V
    .locals 2

    const-string v0, "LauncherTransitionBaseController"

    const-string v1, "onScrollInteractionBegin: "

    .line 70
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    invoke-virtual {p0}, Lcom/miui/home/launcher/overlay/LauncherTransitionBaseController;->setIsUserActionUp()V

    .line 72
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/LauncherTransitionBaseController;->mOverlayTransitionController:Lcom/miui/home/launcher/overlay/OverlayTransitionController;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 73
    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->onScrollStart(F)V

    .line 74
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/LauncherTransitionBaseController;->mOverlayTransitionController:Lcom/miui/home/launcher/overlay/OverlayTransitionController;

    invoke-virtual {v0}, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->getCurrentAnimation()Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/overlay/LauncherTransitionBaseController;->mCurrentAnimation:Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

    :cond_0
    return-void
.end method

.method public onScrollInteractionEnd(FZ)V
    .locals 0

    .line 100
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/overlay/LauncherTransitionBaseController;->setShouldOpenApp(FZ)V

    .line 101
    iget-boolean p1, p0, Lcom/miui/home/launcher/overlay/LauncherTransitionBaseController;->mShouldOpenApp:Z

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/overlay/LauncherTransitionBaseController;->executeRemainingAnimation(Z)V

    .line 102
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onScrollInteractionEnd mShouldOpenApp: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/miui/home/launcher/overlay/LauncherTransitionBaseController;->mShouldOpenApp:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "LauncherTransitionBaseController"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-boolean p1, p0, Lcom/miui/home/launcher/overlay/LauncherTransitionBaseController;->mShouldOpenApp:Z

    if-nez p1, :cond_0

    .line 105
    iget-object p1, p0, Lcom/miui/home/launcher/overlay/LauncherTransitionBaseController;->mOverlayTransitionController:Lcom/miui/home/launcher/overlay/OverlayTransitionController;

    invoke-virtual {p1}, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->resetCurrentAnimation()V

    .line 106
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/LauncherTransitionBaseController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object p0

    sget-object p1, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/LauncherStateManager;->goToState(Lcom/miui/home/launcher/LauncherState;Z)V

    goto :goto_0

    .line 108
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/overlay/LauncherTransitionBaseController;->handleCancelOpenApp()V

    :goto_0
    return-void
.end method

.method public onServiceConnected()V
    .locals 2

    const-string v0, "LauncherTransitionBaseController"

    const-string v1, "onServiceConnected"

    .line 55
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    invoke-virtual {p0}, Lcom/miui/home/launcher/overlay/LauncherTransitionBaseController;->removeCancelOpenAppRunnable()V

    return-void
.end method

.method public recoveryHomeAnim()V
    .locals 0

    .line 213
    invoke-virtual {p0}, Lcom/miui/home/launcher/overlay/LauncherTransitionBaseController;->removeCancelOpenAppRunnable()V

    return-void
.end method

.method protected removeCancelOpenAppRunnable()V
    .locals 2

    const-string v0, "LauncherTransitionBaseController"

    const-string v1, "removeCancelOpenAppRunnable"

    .line 49
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/LauncherTransitionBaseController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    iget-object p0, p0, Lcom/miui/home/launcher/overlay/LauncherTransitionBaseController;->mCancelOpenAppRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected abstract setIsUserActionUp()V
.end method

.method public setOverlayCallbacks(Lcom/miui/home/launcher/overlay/LauncherOverlayCallbacks;)V
    .locals 1

    .line 60
    instance-of v0, p1, Lcom/miui/home/launcher/overlay/OverlayTransitionController;

    if-eqz v0, :cond_0

    .line 61
    check-cast p1, Lcom/miui/home/launcher/overlay/OverlayTransitionController;

    iput-object p1, p0, Lcom/miui/home/launcher/overlay/LauncherTransitionBaseController;->mOverlayTransitionController:Lcom/miui/home/launcher/overlay/OverlayTransitionController;

    :cond_0
    return-void
.end method

.method protected abstract setShouldOpenApp(FZ)V
.end method

.method public setSwipeDirection(I)V
    .locals 0

    .line 192
    iput p1, p0, Lcom/miui/home/launcher/overlay/LauncherTransitionBaseController;->mSwipeDirection:I

    return-void
.end method

.method protected shouldOpenApp(FZ)Z
    .locals 5

    .line 160
    invoke-virtual {p0}, Lcom/miui/home/launcher/overlay/LauncherTransitionBaseController;->getCurrentAnimation()Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-eqz p2, :cond_1

    .line 164
    iget-object v2, p0, Lcom/miui/home/launcher/overlay/LauncherTransitionBaseController;->mFlingBlockCheck:Lcom/miui/home/launcher/util/FlingBlockCheck;

    invoke-virtual {v2}, Lcom/miui/home/launcher/util/FlingBlockCheck;->isBlocked()Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v0

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    if-eqz v2, :cond_2

    move p2, v1

    .line 168
    :cond_2
    invoke-virtual {p0}, Lcom/miui/home/launcher/overlay/LauncherTransitionBaseController;->getCurrentAnimation()Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/anim/AnimatorPlaybackController;->getProgressFraction()F

    move-result v2

    .line 169
    iget v3, p0, Lcom/miui/home/launcher/overlay/LauncherTransitionBaseController;->mSwipeDirection:I

    if-ne v3, v0, :cond_3

    const/4 v3, -0x1

    goto :goto_1

    :cond_3
    move v3, v0

    :goto_1
    if-eqz p2, :cond_4

    .line 173
    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result p0

    int-to-float v4, v3

    invoke-static {v4}, Ljava/lang/Math;->signum(F)F

    move-result v4

    invoke-static {p0, v4}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-nez p0, :cond_5

    :goto_2
    move v1, v0

    goto :goto_3

    .line 176
    :cond_4
    invoke-virtual {p0}, Lcom/miui/home/launcher/overlay/LauncherTransitionBaseController;->getSuccessTransitionProgress()F

    move-result p0

    cmpl-float p0, v2, p0

    if-lez p0, :cond_5

    goto :goto_2

    .line 178
    :cond_5
    :goto_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isOpenApp result:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " progress:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " velocity:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " direction:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " fling:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LauncherTransitionBaseController"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method
