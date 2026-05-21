.class public abstract Lcom/miui/home/launcher/overlay/OverlayTransitionController;
.super Ljava/lang/Object;
.source "OverlayTransitionController.java"

# interfaces
.implements Lcom/miui/home/launcher/overlay/LauncherOverlayCallbacks;
.implements Lcom/miui/home/launcher/util/LauncherStateSwitch;
.implements Lcom/miui/home/launcher/LauncherStateManager$StateHandler;


# instance fields
.field protected isTargetOpenOverlay:Z

.field protected mAlpha:F

.field protected mCurrentAnimation:Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

.field protected mLauncher:Lcom/miui/home/launcher/Launcher;

.field protected mLauncherOverlay:Lcom/miui/home/launcher/overlay/LauncherOverlay;

.field protected mScale:F


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/Launcher;)V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 93
    iput v0, p0, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->mScale:F

    .line 105
    iput v0, p0, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->mAlpha:F

    .line 20
    iput-object p1, p0, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-void
.end method


# virtual methods
.method public canCancel()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getCurrentAnimation()Lcom/miui/home/launcher/anim/AnimatorPlaybackController;
    .locals 0

    .line 129
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->mCurrentAnimation:Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

    return-object p0
.end method

.method protected abstract initCurrentAnimation(F)Z
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public onScrollChanged(F)V
    .locals 2

    .line 37
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->mCurrentAnimation:Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

    if-eqz v0, :cond_1

    .line 38
    iget-boolean v1, p0, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->isTargetOpenOverlay:Z

    if-eqz v1, :cond_0

    move v1, p1

    goto :goto_0

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/anim/AnimatorPlaybackController;->setPlayFraction(F)V

    .line 40
    :cond_1
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->setLauncherWindowAlphaOnScrollChanged(F)V

    return-void
.end method

.method public onScrollEnd(F)V
    .locals 0

    .line 49
    invoke-virtual {p0}, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->resetCurrentAnimation()V

    return-void
.end method

.method public onScrollStart(F)V
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->mCurrentAnimation:Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

    if-nez v0, :cond_0

    .line 28
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->initCurrentAnimation(F)Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->isTargetOpenOverlay:Z

    .line 29
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->mCurrentAnimation:Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

    invoke-virtual {p0}, Lcom/miui/home/launcher/anim/AnimatorPlaybackController;->dispatchOnStart()V

    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/anim/AnimatorPlaybackController;->pause()V

    :goto_0
    return-void
.end method

.method protected abstract reset()V
.end method

.method public resetCurrentAnimation()V
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->mCurrentAnimation:Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 54
    iput-object v0, p0, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->mCurrentAnimation:Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

    .line 56
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->onOverlayScrollEnd()V

    return-void
.end method

.method public setAlpha(F)V
    .locals 1

    .line 108
    iget v0, p0, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->mAlpha:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->mLauncherOverlay:Lcom/miui/home/launcher/overlay/LauncherOverlay;

    if-eqz v0, :cond_1

    .line 112
    invoke-interface {v0, p1}, Lcom/miui/home/launcher/overlay/LauncherOverlay;->setAlpha(F)V

    .line 114
    :cond_1
    iput p1, p0, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->mAlpha:F

    return-void
.end method

.method public setAlphaAndScaleAsync(FF)V
    .locals 1

    .line 118
    iget v0, p0, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->mAlpha:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->mScale:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_0

    return-void

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->mLauncherOverlay:Lcom/miui/home/launcher/overlay/LauncherOverlay;

    if-eqz v0, :cond_1

    .line 122
    invoke-interface {v0, p1, p2}, Lcom/miui/home/launcher/overlay/LauncherOverlay;->setAlphaAndScale(FF)V

    .line 124
    :cond_1
    iput p1, p0, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->mAlpha:F

    .line 125
    iput p2, p0, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->mScale:F

    return-void
.end method

.method public setLauncherWindowAlphaOnScrollChanged(F)V
    .locals 1

    .line 44
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->setLauncherWindowAlpha(F)V

    return-void
.end method

.method public setOverlay(Lcom/miui/home/launcher/overlay/LauncherOverlay;)V
    .locals 0

    .line 67
    invoke-virtual {p0}, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->reset()V

    .line 68
    iput-object p1, p0, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->mLauncherOverlay:Lcom/miui/home/launcher/overlay/LauncherOverlay;

    if-eqz p1, :cond_0

    .line 70
    invoke-interface {p1, p0}, Lcom/miui/home/launcher/overlay/LauncherOverlay;->setOverlayCallbacks(Lcom/miui/home/launcher/overlay/LauncherOverlayCallbacks;)V

    :cond_0
    return-void
.end method

.method public showOverlay(Z)V
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->mLauncherOverlay:Lcom/miui/home/launcher/overlay/LauncherOverlay;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/LauncherSoscController;->getInstance()Lcom/miui/home/launcher/LauncherSoscController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherSoscController;->getSoscEvent()Lcom/miui/launcher/sosc/module/SoscEvent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/launcher/sosc/module/SoscEvent;->isSoscSplit()Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->mLauncherOverlay:Lcom/miui/home/launcher/overlay/LauncherOverlay;

    invoke-interface {p0, p1}, Lcom/miui/home/launcher/overlay/LauncherOverlay;->showOverlay(Z)V

    :cond_0
    return-void
.end method
