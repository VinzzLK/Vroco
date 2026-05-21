.class public Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController;
.super Lcom/miui/home/launcher/overlay/OverlayTransitionController;
.source "AssistantOverlayTransitionController.java"


# static fields
.field private static ALPHA:F = 0.4f

.field private static MIN_INSTATE_SCROLL_END_DIS:F = 0.1f

.field private static MIN_SCROLL_END_DIS:F = 0.2f


# instance fields
.field private mDeviceAdapter:Lcom/miui/home/launcher/overlay/assistant/AssistantDeviceAdapter;

.field private mProgress:F

.field private mScrollBlurState:I

.field private mScrollRight:Z

.field private mScrolling:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/miui/home/launcher/Launcher;)V
    .locals 1

    .line 64
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/overlay/OverlayTransitionController;-><init>(Lcom/miui/home/launcher/Launcher;)V

    const/4 v0, 0x3

    .line 57
    iput v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController;->mScrollBlurState:I

    const/4 v0, 0x0

    .line 59
    iput v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController;->mProgress:F

    const/4 v0, 0x1

    .line 61
    iput-boolean v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController;->mScrollRight:Z

    .line 65
    new-instance v0, Lcom/miui/home/launcher/overlay/assistant/AssistantDeviceAdapter;

    invoke-direct {v0, p1}, Lcom/miui/home/launcher/overlay/assistant/AssistantDeviceAdapter;-><init>(Lcom/miui/home/launcher/Launcher;)V

    iput-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController;->mDeviceAdapter:Lcom/miui/home/launcher/overlay/assistant/AssistantDeviceAdapter;

    return-void
.end method

.method private isBlackBlur()Z
    .locals 1

    .line 100
    iget p0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController;->mScrollBlurState:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private resetView()V
    .locals 2

    const-string v0, "Launcher.AssistantOverlayTransitionController"

    const-string v1, "resetView"

    .line 262
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/overlay/assistant/AssistantDeviceAdapter;->inOverlapMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController;->isScrollBlur()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 265
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isAboveLevel2()Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_1

    .line 266
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getDragLayer()Lcom/miui/home/launcher/DragLayer;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 267
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getDragLayer()Lcom/miui/home/launcher/DragLayer;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 268
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getDragLayer()Lcom/miui/home/launcher/DragLayer;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    goto :goto_0

    .line 270
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setScaleX(F)V

    .line 271
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setScaleY(F)V

    :cond_2
    :goto_0
    return-void
.end method

.method private scrollEndNewParams(F)V
    .locals 5

    const/high16 v0, 0x3f800000    # 1.0f

    .line 228
    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-nez p1, :cond_4

    .line 229
    sget-object p1, Lcom/miui/home/launcher/LauncherState;->ASSISTANT_OVERLAY_STATE:Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayState;

    .line 230
    iget-object v1, p0, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v1}, Lcom/miui/home/launcher/overlay/assistant/AssistantDeviceAdapter;->inOverlapMode(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController;->isScrollBlur()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    goto :goto_1

    :cond_1
    :goto_0
    const v1, 0x3f666666    # 0.9f

    .line 231
    :goto_1
    iget-object v2, p0, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v2}, Lcom/miui/home/launcher/overlay/assistant/AssistantDeviceAdapter;->inOverlapMode(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController;->isScrollBlur()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    sget v2, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController;->ALPHA:F

    sub-float/2addr v0, v2

    :cond_3
    move v4, v1

    move v1, v0

    move v0, v4

    goto :goto_3

    .line 233
    :cond_4
    iget-object p1, p0, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    sget-object v1, Lcom/miui/home/launcher/LauncherState;->ASSISTANT_OVERLAY_STATE:Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayState;

    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 234
    sget-object p1, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    goto :goto_2

    .line 236
    :cond_5
    iget-object p1, p0, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherStateManager;->getState()Lcom/miui/home/launcher/LauncherState;

    move-result-object p1

    :goto_2
    move v1, v0

    .line 241
    :goto_3
    sget-object v2, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    if-eq p1, v2, :cond_6

    .line 242
    iget-object v2, p0, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Lcom/miui/home/launcher/LauncherStateManager;->goToState(Lcom/miui/home/launcher/LauncherState;Z)V

    goto :goto_4

    .line 244
    :cond_6
    iget-object p1, p0, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherStateManager;->cancelPlaybackController()V

    .line 246
    :goto_4
    invoke-direct {p0}, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController;->isBlackBlur()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 247
    iget-object p1, p0, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getDragLayer()Lcom/miui/home/launcher/DragLayer;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 248
    iget-object p1, p0, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getDragLayer()Lcom/miui/home/launcher/DragLayer;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 250
    :cond_7
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getDragLayer()Lcom/miui/home/launcher/DragLayer;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    return-void
.end method

.method private scrollEndOldParams(F)V
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    .line 201
    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-nez p1, :cond_0

    .line 202
    sget-object p1, Lcom/miui/home/launcher/LauncherState;->ASSISTANT_OVERLAY_STATE:Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayState;

    .line 203
    iget-object v1, p0, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v1}, Lcom/miui/home/launcher/overlay/assistant/AssistantDeviceAdapter;->inOverlapMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    const v0, 0x3f733333    # 0.95f

    goto :goto_0

    .line 205
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    sget-object v1, Lcom/miui/home/launcher/LauncherState;->ASSISTANT_OVERLAY_STATE:Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayState;

    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 206
    sget-object p1, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    goto :goto_0

    .line 208
    :cond_1
    iget-object p1, p0, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherStateManager;->getState()Lcom/miui/home/launcher/LauncherState;

    move-result-object p1

    .line 212
    :cond_2
    :goto_0
    sget-object v1, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    if-eq p1, v1, :cond_3

    .line 213
    iget-object v1, p0, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/miui/home/launcher/LauncherStateManager;->goToState(Lcom/miui/home/launcher/LauncherState;Z)V

    goto :goto_1

    .line 215
    :cond_3
    iget-object p1, p0, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherStateManager;->cancelPlaybackController()V

    .line 217
    :goto_1
    iget-object p1, p0, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setScaleX(F)V

    .line 218
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setScaleY(F)V

    return-void
.end method

.method private scrollNewParams(F)V
    .locals 4

    .line 162
    invoke-direct {p0}, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController;->isBlackBlur()Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getDragLayer()Lcom/miui/home/launcher/DragLayer;

    move-result-object v0

    const v2, 0x3dcccccd    # 0.1f

    mul-float/2addr v2, p1

    sub-float v2, v1, v2

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 165
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getDragLayer()Lcom/miui/home/launcher/DragLayer;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/overlay/assistant/AssistantDeviceAdapter;->inOverlapMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 169
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    sget-object v2, Lcom/miui/home/launcher/LauncherState;->ASSISTANT_OVERLAY_STATE:Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayState;

    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    const v2, 0x3f4ccccd    # 0.8f

    const/high16 v3, 0x3f000000    # 0.5f

    if-eqz v0, :cond_1

    sub-float/2addr p1, v3

    mul-float/2addr p1, v2

    sub-float p1, v1, p1

    .line 170
    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    sub-float/2addr p1, v3

    mul-float/2addr p1, v2

    sub-float p1, v1, p1

    .line 172
    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    goto :goto_0

    .line 175
    :cond_2
    sget v0, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController;->ALPHA:F

    mul-float/2addr p1, v0

    sub-float p1, v1, p1

    .line 179
    :goto_0
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getDragLayer()Lcom/miui/home/launcher/DragLayer;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    return-void
.end method

.method private scrollOldParams(F)V
    .locals 4

    .line 148
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    sget-object v1, Lcom/miui/home/launcher/LauncherState;->ASSISTANT_OVERLAY_STATE:Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayState;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    const v1, 0x3dcccccd    # 0.1f

    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    sub-float/2addr p1, v2

    mul-float/2addr p1, v1

    sub-float p1, v3, p1

    .line 149
    invoke-static {p1, v3}, Ljava/lang/Math;->min(FF)F

    move-result p1

    goto :goto_0

    :cond_0
    sub-float/2addr p1, v2

    mul-float/2addr p1, v1

    sub-float p1, v3, p1

    const v0, 0x3f733333    # 0.95f

    .line 151
    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 152
    invoke-static {p1, v3}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 154
    :goto_0
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setScaleX(F)V

    .line 155
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setScaleY(F)V

    return-void
.end method

.method private setAlphaAndScaleWhenNotGesture(Lcom/miui/home/launcher/LauncherState;)V
    .locals 1

    .line 300
    iget-boolean v0, p1, Lcom/miui/home/launcher/LauncherState;->mIsFromFsGesture:Z

    if-nez v0, :cond_0

    iget-boolean v0, p1, Lcom/miui/home/launcher/LauncherState;->mIsIgnoreOverviewAnim:Z

    if-nez v0, :cond_0

    .line 301
    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherState;->getAssistantAlpha()F

    move-result v0

    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherState;->getAssistantScale()F

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->setAlphaAndScaleAsync(FF)V

    :cond_0
    return-void
.end method

.method private setAlphaAndScaleWhenNotGestureWithAnim(Lcom/miui/home/launcher/LauncherState;Lcom/miui/home/launcher/anim/AnimatorSetBuilder;Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;)V
    .locals 7

    .line 327
    iget-boolean v0, p1, Lcom/miui/home/launcher/LauncherState;->mIsFromFsGesture:Z

    if-nez v0, :cond_0

    iget-boolean v0, p1, Lcom/miui/home/launcher/LauncherState;->mIsIgnoreOverviewAnim:Z

    if-nez v0, :cond_0

    const-string v0, "Launcher.AssistantOverlayTransitionController"

    const-string v1, "setAlphaAndScaleWhenNotGestureWithAnim, create anim"

    .line 328
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherState;->getAssistantAlpha()F

    move-result v0

    .line 330
    iget-wide v1, p3, Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;->duration:J

    invoke-static {v1, v2, v0}, Lcom/miui/home/launcher/WorkspaceStateTransitionAnimation;->getShortcutMenuAlphaAndScaleDuration(JF)J

    move-result-wide v1

    const/4 p3, 0x2

    new-array v3, p3, [F

    .line 332
    iget v4, p0, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->mScale:F

    const/4 v5, 0x0

    aput v4, v3, v5

    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherState;->getAssistantScale()F

    move-result p1

    const/4 v4, 0x1

    aput p1, v3, v4

    const-string p1, "scale"

    invoke-static {p1, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    new-array v3, p3, [F

    .line 333
    iget v6, p0, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->mAlpha:F

    aput v6, v3, v5

    aput v0, v3, v4

    const-string v0, "alpha"

    invoke-static {v0, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    new-array p3, p3, [Landroid/animation/PropertyValuesHolder;

    aput-object p1, p3, v5

    aput-object v0, p3, v4

    .line 335
    invoke-static {p3}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 336
    sget-object p3, Lcom/miui/home/launcher/WorkspaceStateTransitionAnimation;->SHORTCUT_MENU_ALPHA_AND_SCALE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 337
    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 338
    new-instance p3, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController$1;

    invoke-direct {p3, p0}, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController$1;-><init>(Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController;)V

    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 346
    invoke-virtual {p2, p1}, Lcom/miui/home/launcher/anim/AnimatorSetBuilder;->play(Landroid/animation/Animator;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected initCurrentAnimation(F)Z
    .locals 7

    const/4 v0, 0x0

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 71
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherStateManager;->getState()Lcom/miui/home/launcher/LauncherState;

    move-result-object v0

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/miui/home/launcher/LauncherState;->ASSISTANT_OVERLAY_STATE:Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayState;

    :goto_1
    move-object v2, v0

    if-eqz p1, :cond_2

    .line 74
    sget-object v0, Lcom/miui/home/launcher/LauncherState;->ASSISTANT_OVERLAY_STATE:Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayState;

    :goto_2
    move-object v3, v0

    goto :goto_3

    .line 75
    :cond_2
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    sget-object v1, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v3, v1

    goto :goto_3

    .line 78
    :cond_3
    sget-object v0, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    goto :goto_2

    .line 80
    :goto_3
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object v1

    sget-object v0, Lcom/miui/home/launcher/LauncherState;->ASSISTANT_OVERLAY_STATE:Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayState;

    iget v0, v0, Lcom/miui/home/launcher/LauncherState;->transitionDuration:I

    int-to-long v4, v0

    move-object v6, p0

    invoke-virtual/range {v1 .. v6}, Lcom/miui/home/launcher/LauncherStateManager;->createAnimationToNewWorkspace(Lcom/miui/home/launcher/LauncherState;Lcom/miui/home/launcher/LauncherState;JLcom/miui/home/launcher/util/LauncherStateSwitch;)Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->mCurrentAnimation:Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

    return p1
.end method

.method public isScrollBlur()Z
    .locals 1

    .line 96
    iget p0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController;->mScrollBlurState:I

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isScrolling()Z
    .locals 0

    .line 356
    iget-boolean p0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController;->mScrolling:Z

    return p0
.end method

.method public isShow()Z
    .locals 1

    .line 279
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->mCurrentAnimation:Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    sget-object v0, Lcom/miui/home/launcher/LauncherState;->ASSISTANT_OVERLAY_STATE:Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayState;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result p0

    if-eqz p0, :cond_0

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

.method public needInterruptEvent(Z)Z
    .locals 3

    if-eqz p1, :cond_0

    .line 360
    sget v0, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController;->MIN_INSTATE_SCROLL_END_DIS:F

    goto :goto_0

    :cond_0
    sget v0, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController;->MIN_SCROLL_END_DIS:F

    .line 361
    :goto_0
    iget-boolean v1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController;->mScrolling:Z

    if-eqz v1, :cond_2

    .line 362
    invoke-virtual {p0}, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController;->isScrollBlur()Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController;->mProgress:F

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_2

    cmpg-float v0, v1, v0

    if-gez v0, :cond_2

    iget-boolean v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController;->mScrollRight:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->mLauncherOverlay:Lcom/miui/home/launcher/overlay/LauncherOverlay;

    instance-of v0, v0, Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherOverlay;

    if-eqz v0, :cond_2

    const-string v0, "Launcher.AssistantOverlayTransitionController"

    const-string v1, "scrollToEnd "

    .line 367
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    .line 369
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->mLauncherOverlay:Lcom/miui/home/launcher/overlay/LauncherOverlay;

    check-cast p0, Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherOverlay;

    invoke-virtual {p0}, Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherOverlay;->scrollToEnd()V

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 352
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController;->mDeviceAdapter:Lcom/miui/home/launcher/overlay/assistant/AssistantDeviceAdapter;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/overlay/assistant/AssistantDeviceAdapter;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onScrollChanged(F)V
    .locals 3

    .line 115
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/overlay/assistant/AssistantDeviceAdapter;->inOverlapMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController;->isScrollBlur()Z

    move-result v0

    if-nez v0, :cond_0

    .line 116
    invoke-super {p0, p1}, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->onScrollChanged(F)V

    return-void

    .line 121
    :cond_0
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    sget-object v1, Lcom/miui/home/launcher/LauncherState;->ASSISTANT_OVERLAY_STATE:Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayState;

    .line 122
    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 126
    :cond_1
    iget v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController;->mProgress:F

    sub-float v1, v0, p1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    const/4 v0, 0x1

    .line 127
    iput-boolean v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController;->mScrollRight:Z

    goto :goto_0

    :cond_2
    sub-float/2addr v0, p1

    cmpg-float v0, v0, v2

    if-gez v0, :cond_3

    const/4 v0, 0x0

    .line 129
    iput-boolean v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController;->mScrollRight:Z

    goto :goto_0

    :cond_3
    const-string v0, "Launcher.AssistantOverlayTransitionController"

    const-string v1, "mProgress = progress"

    .line 131
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :goto_0
    iput p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController;->mProgress:F

    .line 136
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isAboveLevel2()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 137
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController;->scrollNewParams(F)V

    goto :goto_1

    .line 139
    :cond_4
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController;->scrollOldParams(F)V

    :goto_1
    return-void
.end method

.method public onScrollEnd(F)V
    .locals 2

    .line 184
    invoke-super {p0, p1}, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->onScrollEnd(F)V

    const/4 v0, 0x0

    .line 185
    iput-boolean v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController;->mScrolling:Z

    const-string v0, "Launcher.AssistantOverlayTransitionController"

    const-string v1, "onScrollEnd"

    .line 186
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isAboveLevel2()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController;->scrollEndNewParams(F)V

    goto :goto_0

    .line 190
    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController;->scrollEndOldParams(F)V

    :goto_0
    return-void
.end method

.method public onScrollStart(F)V
    .locals 0

    .line 107
    invoke-super {p0, p1}, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->onScrollStart(F)V

    const/4 p1, 0x1

    .line 108
    iput-boolean p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController;->mScrolling:Z

    const-string p0, "Launcher.AssistantOverlayTransitionController"

    const-string p1, "onScrollStart"

    .line 109
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public reset()V
    .locals 3

    .line 255
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    sget-object v1, Lcom/miui/home/launcher/LauncherState;->ASSISTANT_OVERLAY_STATE:Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayState;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object v0

    sget-object v1, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/LauncherStateManager;->goToState(Lcom/miui/home/launcher/LauncherState;Z)V

    .line 258
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController;->resetView()V

    return-void
.end method

.method public setScrollBlur(I)V
    .locals 0

    .line 87
    iput p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController;->mScrollBlurState:I

    .line 88
    invoke-direct {p0}, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController;->isBlackBlur()Z

    move-result p0

    if-eqz p0, :cond_0

    const/high16 p0, 0x3f800000    # 1.0f

    .line 89
    sput p0, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController;->ALPHA:F

    goto :goto_0

    :cond_0
    const p0, 0x3ecccccd    # 0.4f

    .line 91
    sput p0, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController;->ALPHA:F

    :goto_0
    return-void
.end method

.method public setState(Lcom/miui/home/launcher/LauncherState;)V
    .locals 3

    .line 284
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->mLauncherOverlay:Lcom/miui/home/launcher/overlay/LauncherOverlay;

    if-nez v0, :cond_0

    return-void

    .line 287
    :cond_0
    sget-object v1, Lcom/miui/home/launcher/LauncherState;->ASSISTANT_OVERLAY_STATE:Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayState;

    const/4 v2, 0x0

    if-eq p1, v1, :cond_2

    .line 288
    sget-boolean v1, Lcom/miui/home/launcher/Launcher;->IS_RECENTS_WINDOW:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    if-eq p1, v1, :cond_3

    .line 289
    :cond_1
    invoke-interface {v0, v2}, Lcom/miui/home/launcher/overlay/LauncherOverlay;->hideOverlay(Z)V

    goto :goto_0

    .line 292
    :cond_2
    invoke-interface {v0, v2}, Lcom/miui/home/launcher/overlay/LauncherOverlay;->showOverlay(Z)V

    .line 294
    :cond_3
    :goto_0
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController;->setAlphaAndScaleWhenNotGesture(Lcom/miui/home/launcher/LauncherState;)V

    return-void
.end method

.method public setStateWithAnimation(Lcom/miui/home/launcher/LauncherState;Lcom/miui/home/launcher/anim/AnimatorSetBuilder;Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;)V
    .locals 3

    .line 307
    iget-boolean v0, p3, Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;->userControlled:Z

    if-eqz v0, :cond_0

    return-void

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->mLauncherOverlay:Lcom/miui/home/launcher/overlay/LauncherOverlay;

    if-nez v0, :cond_1

    return-void

    .line 313
    :cond_1
    sget-object v1, Lcom/miui/home/launcher/LauncherState;->ASSISTANT_OVERLAY_STATE:Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayState;

    const/4 v2, 0x1

    if-eq p1, v1, :cond_3

    .line 314
    sget-boolean v1, Lcom/miui/home/launcher/Launcher;->IS_RECENTS_WINDOW:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    if-eq p1, v1, :cond_4

    .line 315
    :cond_2
    invoke-interface {v0, v2}, Lcom/miui/home/launcher/overlay/LauncherOverlay;->hideOverlay(Z)V

    goto :goto_0

    .line 318
    :cond_3
    invoke-interface {v0, v2}, Lcom/miui/home/launcher/overlay/LauncherOverlay;->showOverlay(Z)V

    .line 320
    :cond_4
    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController;->setAlphaAndScaleWhenNotGestureWithAnim(Lcom/miui/home/launcher/LauncherState;Lcom/miui/home/launcher/anim/AnimatorSetBuilder;Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;)V

    return-void
.end method
