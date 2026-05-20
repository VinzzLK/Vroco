.class public Lcom/miui/home/launcher/overlay/feed/FeedOverlayState;
.super Lcom/miui/home/launcher/LauncherState;
.source "FeedOverlayState.java"


# instance fields
.field private final mAlphaInterpolator:Landroid/view/animation/Interpolator;

.field private mNewEffect:Z

.field private final mScaleInterpolator:Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x1a4

    const/4 v1, 0x0

    .line 20
    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/LauncherState;-><init>(II)V

    .line 21
    invoke-static {}, Lcom/miui/home/launcher/overlay/feed/FeedUtils;->isNewHomeNewDynamicEffect()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/overlay/feed/FeedOverlayState;->setNewEffect(Z)V

    .line 22
    sget-object v0, Lcom/miui/home/launcher/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Lcom/miui/home/launcher/overlay/feed/FeedOverlayState;->mAlphaInterpolator:Landroid/view/animation/Interpolator;

    .line 23
    iput-object v0, p0, Lcom/miui/home/launcher/overlay/feed/FeedOverlayState;->mScaleInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method


# virtual methods
.method public getHotSeatsTranslationY(Lcom/miui/home/launcher/Launcher;)F
    .locals 1

    .line 44
    iget-boolean v0, p0, Lcom/miui/home/launcher/overlay/feed/FeedOverlayState;->mNewEffect:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/miui/home/launcher/LauncherState;->getWorkspaceTranslationY(Lcom/miui/home/launcher/Launcher;)F

    move-result p0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenHeight()I

    move-result p0

    neg-int p0, p0

    int-to-float p0, p0

    :goto_0
    return p0
.end method

.method public getHotseatAlpha(Lcom/miui/home/launcher/Launcher;)F
    .locals 1

    .line 63
    iget-boolean v0, p0, Lcom/miui/home/launcher/overlay/feed/FeedOverlayState;->mNewEffect:Z

    if-eqz v0, :cond_0

    const/high16 p0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lcom/miui/home/launcher/LauncherState;->getHotseatAlpha(Lcom/miui/home/launcher/Launcher;)F

    move-result p0

    :goto_0
    return p0
.end method

.method public getScreenIndicatorTranslationY(Lcom/miui/home/launcher/Launcher;)F
    .locals 1

    .line 49
    iget-boolean v0, p0, Lcom/miui/home/launcher/overlay/feed/FeedOverlayState;->mNewEffect:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/miui/home/launcher/LauncherState;->getWorkspaceTranslationY(Lcom/miui/home/launcher/Launcher;)F

    move-result p0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenHeight()I

    move-result p0

    neg-int p0, p0

    int-to-float p0, p0

    :goto_0
    return p0
.end method

.method public getSearchBarProperty(Lcom/miui/home/launcher/Launcher;)[F
    .locals 5

    const/4 v0, 0x5

    new-array v0, v0, [F

    .line 53
    iget-boolean v1, p0, Lcom/miui/home/launcher/overlay/feed/FeedOverlayState;->mNewEffect:Z

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    const/4 v4, 0x0

    aput v1, v0, v4

    const/4 v1, 0x1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/overlay/feed/FeedOverlayState;->getHotSeatsTranslationY(Lcom/miui/home/launcher/Launcher;)F

    move-result p0

    aput p0, v0, v1

    const/4 p0, 0x2

    aput v3, v0, p0

    const/4 p0, 0x3

    aput v2, v0, p0

    const/4 p0, 0x4

    aput v3, v0, p0

    return-object v0
.end method

.method public getShortcutMenuLayerAlpha()F
    .locals 1

    .line 68
    iget-boolean v0, p0, Lcom/miui/home/launcher/overlay/feed/FeedOverlayState;->mNewEffect:Z

    if-eqz v0, :cond_0

    const/high16 p0, 0x3f000000    # 0.5f

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lcom/miui/home/launcher/LauncherState;->getShortcutMenuLayerAlpha()F

    move-result p0

    :goto_0
    return p0
.end method

.method public getShortcutMenuLayerAlphaInterpolator()Landroid/view/animation/Interpolator;
    .locals 1

    .line 78
    iget-boolean v0, p0, Lcom/miui/home/launcher/overlay/feed/FeedOverlayState;->mNewEffect:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/miui/home/launcher/overlay/feed/FeedOverlayState;->mAlphaInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lcom/miui/home/launcher/LauncherState;->getShortcutMenuLayerAlphaInterpolator()Landroid/view/animation/Interpolator;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getShortcutMenuLayerScale()F
    .locals 1

    .line 73
    iget-boolean v0, p0, Lcom/miui/home/launcher/overlay/feed/FeedOverlayState;->mNewEffect:Z

    if-eqz v0, :cond_0

    const p0, 0x3f666666    # 0.9f

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lcom/miui/home/launcher/LauncherState;->getShortcutMenuLayerScale()F

    move-result p0

    :goto_0
    return p0
.end method

.method public getShortcutMenuLayerScaleInterpolator()Landroid/view/animation/Interpolator;
    .locals 1

    .line 83
    iget-boolean v0, p0, Lcom/miui/home/launcher/overlay/feed/FeedOverlayState;->mNewEffect:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/miui/home/launcher/overlay/feed/FeedOverlayState;->mScaleInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lcom/miui/home/launcher/LauncherState;->getShortcutMenuLayerScaleInterpolator()Landroid/view/animation/Interpolator;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getVisibleElements(Lcom/miui/home/launcher/Launcher;)I
    .locals 0

    .line 34
    iget-boolean p0, p0, Lcom/miui/home/launcher/overlay/feed/FeedOverlayState;->mNewEffect:Z

    return p0
.end method

.method public getWorkspaceAlpha(Lcom/miui/home/launcher/Launcher;)F
    .locals 1

    .line 58
    iget-boolean v0, p0, Lcom/miui/home/launcher/overlay/feed/FeedOverlayState;->mNewEffect:Z

    if-eqz v0, :cond_0

    const/high16 p0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lcom/miui/home/launcher/LauncherState;->getWorkspaceAlpha(Lcom/miui/home/launcher/Launcher;)F

    move-result p0

    :goto_0
    return p0
.end method

.method public getWorkspaceTranslationY(Lcom/miui/home/launcher/Launcher;)F
    .locals 1

    .line 39
    iget-boolean v0, p0, Lcom/miui/home/launcher/overlay/feed/FeedOverlayState;->mNewEffect:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/miui/home/launcher/LauncherState;->getWorkspaceTranslationY(Lcom/miui/home/launcher/Launcher;)F

    move-result p0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenHeight()I

    move-result p0

    neg-int p0, p0

    int-to-float p0, p0

    const/high16 p1, 0x3e000000    # 0.125f

    mul-float/2addr p0, p1

    :goto_0
    return p0
.end method

.method public isNewEffect()Z
    .locals 0

    .line 91
    iget-boolean p0, p0, Lcom/miui/home/launcher/overlay/feed/FeedOverlayState;->mNewEffect:Z

    return p0
.end method

.method public onStateTransitionEnd(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 28
    invoke-super {p0, p1}, Lcom/miui/home/launcher/LauncherState;->onStateTransitionEnd(Lcom/miui/home/launcher/Launcher;)V

    .line 29
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->notifyBackGestureStatus()V

    return-void
.end method

.method public setNewEffect(Z)V
    .locals 0

    .line 87
    iput-boolean p1, p0, Lcom/miui/home/launcher/overlay/feed/FeedOverlayState;->mNewEffect:Z

    return-void
.end method
