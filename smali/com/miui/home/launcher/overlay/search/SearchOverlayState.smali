.class public Lcom/miui/home/launcher/overlay/search/SearchOverlayState;
.super Lcom/miui/home/launcher/LauncherState;
.source "SearchOverlayState.java"


# instance fields
.field private final mAlphaInterpolator:Landroid/view/animation/Interpolator;

.field private final mScaleInterpolator:Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/16 v0, 0x1a4

    const/4 v1, 0x0

    .line 21
    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/LauncherState;-><init>(II)V

    .line 22
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/overlay/search/SearchOverlayState;->mAlphaInterpolator:Landroid/view/animation/Interpolator;

    .line 23
    new-instance v0, Lcom/miui/home/launcher/anim/PhysicBasedInterpolator;

    const v1, 0x3f733333    # 0.95f

    const v2, 0x3f4ccccd    # 0.8f

    invoke-direct {v0, v1, v2}, Lcom/miui/home/launcher/anim/PhysicBasedInterpolator;-><init>(FF)V

    iput-object v0, p0, Lcom/miui/home/launcher/overlay/search/SearchOverlayState;->mScaleInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method


# virtual methods
.method public getHotseatAlpha(Lcom/miui/home/launcher/Launcher;)F
    .locals 0

    const/high16 p0, 0x3f800000    # 1.0f

    return p0
.end method

.method public getShortcutMenuLayerAlpha()F
    .locals 0

    const/high16 p0, 0x3f000000    # 0.5f

    return p0
.end method

.method public getShortcutMenuLayerAlphaInterpolator()Landroid/view/animation/Interpolator;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/search/SearchOverlayState;->mAlphaInterpolator:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method public getShortcutMenuLayerScale()F
    .locals 0

    const p0, 0x3f666666    # 0.9f

    return p0
.end method

.method public getShortcutMenuLayerScaleInterpolator()Landroid/view/animation/Interpolator;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/search/SearchOverlayState;->mScaleInterpolator:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method public getVisibleElements(Lcom/miui/home/launcher/Launcher;)I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getWorkspaceAlpha(Lcom/miui/home/launcher/Launcher;)F
    .locals 0

    const/high16 p0, 0x3f800000    # 1.0f

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
