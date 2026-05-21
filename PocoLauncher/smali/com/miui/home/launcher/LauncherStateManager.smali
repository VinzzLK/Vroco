.class public Lcom/miui/home/launcher/LauncherStateManager;
.super Ljava/lang/Object;
.source "LauncherStateManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/LauncherStateManager$StateListener;,
        Lcom/miui/home/launcher/LauncherStateManager$StateHandler;,
        Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;,
        Lcom/miui/home/launcher/LauncherStateManager$StartAnimRunnable;
    }
.end annotation


# instance fields
.field private final mConfig:Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;

.field private mCurrentStableState:Lcom/miui/home/launcher/LauncherState;

.field private mIsOverlayScrolling:Z

.field private mLastStableState:Lcom/miui/home/launcher/LauncherState;

.field private mLastStateExcludeOverride:Lcom/miui/home/launcher/LauncherState;

.field private final mLauncher:Lcom/miui/home/launcher/Launcher;

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/LauncherStateManager$StateListener;",
            ">;"
        }
    .end annotation
.end field

.field private mRestState:Lcom/miui/home/launcher/LauncherState;

.field private mState:Lcom/miui/home/launcher/LauncherState;

.field private mStateHandlers:[Lcom/miui/home/launcher/LauncherStateManager$StateHandler;

.field private final mUiHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/Launcher;)V
    .locals 2

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;

    invoke-direct {v0}, Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherStateManager;->mConfig:Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherStateManager;->mListeners:Ljava/util/ArrayList;

    .line 71
    sget-object v0, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherStateManager;->mState:Lcom/miui/home/launcher/LauncherState;

    .line 72
    iput-object v0, p0, Lcom/miui/home/launcher/LauncherStateManager;->mLastStateExcludeOverride:Lcom/miui/home/launcher/LauncherState;

    .line 76
    iput-object v0, p0, Lcom/miui/home/launcher/LauncherStateManager;->mLastStableState:Lcom/miui/home/launcher/LauncherState;

    .line 77
    iput-object v0, p0, Lcom/miui/home/launcher/LauncherStateManager;->mCurrentStableState:Lcom/miui/home/launcher/LauncherState;

    const/4 v0, 0x0

    .line 79
    iput-boolean v0, p0, Lcom/miui/home/launcher/LauncherStateManager;->mIsOverlayScrolling:Z

    .line 82
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherStateManager;->mUiHandler:Landroid/os/Handler;

    .line 83
    iput-object p1, p0, Lcom/miui/home/launcher/LauncherStateManager;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-void
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/LauncherStateManager;)Lcom/miui/home/launcher/Launcher;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherStateManager;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/home/launcher/LauncherStateManager;Lcom/miui/home/launcher/LauncherState;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/LauncherStateManager;->onStateTransitionStart(Lcom/miui/home/launcher/LauncherState;)V

    return-void
.end method

.method static synthetic access$400(Lcom/miui/home/launcher/LauncherStateManager;Lcom/miui/home/launcher/LauncherState;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/LauncherStateManager;->onStateTransitionEnd(Lcom/miui/home/launcher/LauncherState;)V

    return-void
.end method

.method static synthetic access$500(Lcom/miui/home/launcher/LauncherStateManager;)Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherStateManager;->mConfig:Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;

    return-object p0
.end method

.method private clearCurrentAnimation()V
    .locals 3

    .line 215
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherStateManager;->mConfig:Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;

    invoke-static {v0}, Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;->access$000(Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;)Landroid/animation/AnimatorSet;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherStateManager;->mConfig:Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;

    invoke-static {v0}, Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;->access$000(Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;)Landroid/animation/AnimatorSet;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/home/launcher/LauncherStateManager;->mConfig:Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 217
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherStateManager;->mConfig:Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;

    invoke-static {v0, v1}, Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;->access$002(Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 219
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherStateManager;->mConfig:Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;

    iput-object v1, p0, Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;->playbackController:Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

    return-void
.end method

.method private static getStateClassName(Lcom/miui/home/launcher/LauncherState;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const-string p0, "null"

    goto :goto_0

    .line 396
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private onStateTransitionEnd(Lcom/miui/home/launcher/LauncherState;)V
    .locals 2

    .line 426
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherStateManager;->mCurrentStableState:Lcom/miui/home/launcher/LauncherState;

    if-eq p1, v0, :cond_0

    .line 427
    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/LauncherState;->getHistoryForState(Lcom/miui/home/launcher/LauncherState;)Lcom/miui/home/launcher/LauncherState;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherStateManager;->mLastStableState:Lcom/miui/home/launcher/LauncherState;

    .line 428
    iput-object p1, p0, Lcom/miui/home/launcher/LauncherStateManager;->mCurrentStableState:Lcom/miui/home/launcher/LauncherState;

    .line 429
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStateTransitionEnd, mLastStableState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/launcher/LauncherStateManager;->mLastStableState:Lcom/miui/home/launcher/LauncherState;

    invoke-static {v1}, Lcom/miui/home/launcher/LauncherStateManager;->getStateClassName(Lcom/miui/home/launcher/LauncherState;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mCurrentStableState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/launcher/LauncherStateManager;->mCurrentStableState:Lcom/miui/home/launcher/LauncherState;

    .line 430
    invoke-static {v1}, Lcom/miui/home/launcher/LauncherStateManager;->getStateClassName(Lcom/miui/home/launcher/LauncherState;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LauncherStateManager"

    .line 429
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherStateManager;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/LauncherState;->onStateTransitionEnd(Lcom/miui/home/launcher/Launcher;)V

    .line 435
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherStateManager;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getDragLayer()Lcom/miui/home/launcher/DragLayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestFocus()Z

    .line 436
    sget-object v0, Lcom/miui/home/launcher/LauncherState;->ASSISTANT_OVERLAY_STATE:Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayState;

    if-eq p1, v0, :cond_1

    .line 437
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherStateManager;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->setLauncherWindowAlpha(F)V

    .line 440
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherStateManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 441
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherStateManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/LauncherStateManager$StateListener;

    invoke-interface {v1, p1}, Lcom/miui/home/launcher/LauncherStateManager$StateListener;->onStateTransitionComplete(Lcom/miui/home/launcher/LauncherState;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private onStateTransitionStart(Lcom/miui/home/launcher/LauncherState;)V
    .locals 2

    .line 400
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherStateManager;->mState:Lcom/miui/home/launcher/LauncherState;

    if-eq v0, p1, :cond_1

    .line 401
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherStateManager;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/LauncherState;->onExitState(Lcom/miui/home/launcher/Launcher;)V

    .line 402
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/LauncherStateManager;->setWindowLauncherState(Lcom/miui/home/launcher/LauncherState;)V

    .line 403
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherStateManager;->mState:Lcom/miui/home/launcher/LauncherState;

    sget-object v1, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    if-ne v0, v1, :cond_0

    .line 404
    iput-object p1, p0, Lcom/miui/home/launcher/LauncherStateManager;->mLastStateExcludeOverride:Lcom/miui/home/launcher/LauncherState;

    goto :goto_0

    .line 406
    :cond_0
    iput-object v0, p0, Lcom/miui/home/launcher/LauncherStateManager;->mLastStateExcludeOverride:Lcom/miui/home/launcher/LauncherState;

    .line 408
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStateTransitionStart, mState=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/launcher/LauncherStateManager;->mState:Lcom/miui/home/launcher/LauncherState;

    invoke-static {v1}, Lcom/miui/home/launcher/LauncherStateManager;->getStateClassName(Lcom/miui/home/launcher/LauncherState;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    invoke-static {p1}, Lcom/miui/home/launcher/LauncherStateManager;->getStateClassName(Lcom/miui/home/launcher/LauncherState;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "], mLastStateExcludeOverride="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/launcher/LauncherStateManager;->mLastStateExcludeOverride:Lcom/miui/home/launcher/LauncherState;

    .line 410
    invoke-static {v1}, Lcom/miui/home/launcher/LauncherStateManager;->getStateClassName(Lcom/miui/home/launcher/LauncherState;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LauncherStateManager"

    .line 408
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    iput-object p1, p0, Lcom/miui/home/launcher/LauncherStateManager;->mState:Lcom/miui/home/launcher/LauncherState;

    .line 413
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherStateManager;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->notifyBackGestureStatus()V

    .line 414
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherStateManager;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->updateSoftInputMode()V

    .line 416
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherStateManager;->mState:Lcom/miui/home/launcher/LauncherState;

    iget-object v1, p0, Lcom/miui/home/launcher/LauncherStateManager;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/LauncherState;->onStateEnabled(Lcom/miui/home/launcher/Launcher;)V

    .line 417
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherStateManager;->mLauncher:Lcom/miui/home/launcher/Launcher;

    iget-object v1, p0, Lcom/miui/home/launcher/LauncherStateManager;->mState:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->onStateSetStart(Lcom/miui/home/launcher/LauncherState;)V

    .line 419
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherStateManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_2

    .line 420
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherStateManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/LauncherStateManager$StateListener;

    invoke-interface {v1, p1}, Lcom/miui/home/launcher/LauncherStateManager$StateListener;->onStateTransitionStart(Lcom/miui/home/launcher/LauncherState;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private setWindowLauncherState(Lcom/miui/home/launcher/LauncherState;)V
    .locals 1

    .line 311
    sget-object v0, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    .line 313
    :cond_0
    sget-object v0, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x2

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 317
    :goto_0
    new-instance v0, Lcom/miui/home/launcher/LauncherStateManager$2;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/launcher/LauncherStateManager$2;-><init>(Lcom/miui/home/launcher/LauncherStateManager;I)V

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public addStateListener(Lcom/miui/home/launcher/LauncherStateManager$StateListener;)V
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherStateManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherStateManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public cancelAnimation()V
    .locals 0

    .line 453
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherStateManager;->mConfig:Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;

    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;->reset()V

    return-void
.end method

.method public cancelPlaybackController()V
    .locals 0

    .line 457
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherStateManager;->mConfig:Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;

    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;->resetPlaybackController()V

    return-void
.end method

.method public createAnimationToNewWorkspace(Lcom/miui/home/launcher/LauncherState;Lcom/miui/home/launcher/LauncherState;JLcom/miui/home/launcher/util/LauncherStateSwitch;)Lcom/miui/home/launcher/anim/AnimatorPlaybackController;
    .locals 3

    .line 360
    sget-object v0, Lcom/miui/home/recents/anim/StateManager;->Companion:Lcom/miui/home/recents/anim/StateManager$Companion;

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object v0

    new-instance v1, Lcom/miui/home/recents/event/ForceStopTransitionEvent;

    const-string v2, "createAnimationToNewWorkspace"

    invoke-direct {v1, v2}, Lcom/miui/home/recents/event/ForceStopTransitionEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/anim/StateManager;->sendEvent(Lcom/miui/home/recents/event/Event;)V

    .line 361
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherStateManager;->mConfig:Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;->reset()V

    .line 362
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherStateManager;->mConfig:Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;->userControlled:Z

    .line 363
    iput-wide p3, v0, Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;->duration:J

    .line 364
    new-instance v0, Lcom/miui/home/launcher/anim/AnimatorSetBuilder;

    invoke-direct {v0}, Lcom/miui/home/launcher/anim/AnimatorSetBuilder;-><init>()V

    .line 365
    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/home/launcher/LauncherStateManager;->prepareForAtomicAnimation(Lcom/miui/home/launcher/LauncherState;Lcom/miui/home/launcher/LauncherState;Lcom/miui/home/launcher/anim/AnimatorSetBuilder;)V

    .line 366
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherStateManager;->mConfig:Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;

    new-instance v1, Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

    .line 367
    invoke-virtual {p0, p2, v0}, Lcom/miui/home/launcher/LauncherStateManager;->createAnimationToNewWorkspaceInternal(Lcom/miui/home/launcher/LauncherState;Lcom/miui/home/launcher/anim/AnimatorSetBuilder;)Landroid/animation/AnimatorSet;

    move-result-object p2

    invoke-direct {v1, p2, p3, p4, p5}, Lcom/miui/home/launcher/anim/AnimatorPlaybackController;-><init>(Landroid/animation/AnimatorSet;JLcom/miui/home/launcher/util/LauncherStateSwitch;)V

    iput-object v1, p1, Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;->playbackController:Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

    .line 368
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherStateManager;->mConfig:Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;

    iget-object p0, p0, Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;->playbackController:Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

    return-object p0
.end method

.method protected createAnimationToNewWorkspaceInternal(Lcom/miui/home/launcher/LauncherState;Lcom/miui/home/launcher/anim/AnimatorSetBuilder;)Landroid/animation/AnimatorSet;
    .locals 5

    .line 373
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherStateManager;->getStateHandlers()[Lcom/miui/home/launcher/LauncherStateManager$StateHandler;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 374
    iget-object v4, p0, Lcom/miui/home/launcher/LauncherStateManager;->mConfig:Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;

    invoke-interface {v3, p1, p2, v4}, Lcom/miui/home/launcher/LauncherStateManager$StateHandler;->setStateWithAnimation(Lcom/miui/home/launcher/LauncherState;Lcom/miui/home/launcher/anim/AnimatorSetBuilder;Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 377
    :cond_0
    invoke-virtual {p2}, Lcom/miui/home/launcher/anim/AnimatorSetBuilder;->build()Landroid/animation/AnimatorSet;

    move-result-object p2

    .line 378
    new-instance v0, Lcom/miui/home/launcher/LauncherStateManager$3;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/launcher/LauncherStateManager$3;-><init>(Lcom/miui/home/launcher/LauncherStateManager;Lcom/miui/home/launcher/LauncherState;)V

    invoke-virtual {p2, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 391
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherStateManager;->mConfig:Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;

    invoke-virtual {v0, p2, p1}, Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;->setAnimation(Landroid/animation/AnimatorSet;Lcom/miui/home/launcher/LauncherState;)V

    .line 392
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherStateManager;->mConfig:Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;

    invoke-static {p0}, Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;->access$000(Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;)Landroid/animation/AnimatorSet;

    move-result-object p0

    return-object p0
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 468
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "StateManager:"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 469
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "\tmLastStableState:"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/miui/home/launcher/LauncherStateManager;->mLastStableState:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 470
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "\tmCurrentStableState:"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/miui/home/launcher/LauncherStateManager;->mCurrentStableState:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 471
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "\tmState:"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/miui/home/launcher/LauncherStateManager;->mState:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 472
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\tmRestState:"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/miui/home/launcher/LauncherStateManager;->mRestState:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public endAnimation()V
    .locals 1

    .line 461
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherStateManager;->mConfig:Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;

    invoke-static {v0}, Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;->access$000(Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 462
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherStateManager;->mConfig:Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;

    invoke-static {v0}, Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;->access$000(Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 464
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherStateManager;->mConfig:Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;

    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;->reset()V

    return-void
.end method

.method public exitOverviewStateIfNeed(ZZ)V
    .locals 1

    .line 132
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "exitOverviewStateIfNeed, mState="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/miui/home/launcher/LauncherStateManager;->mState:Lcom/miui/home/launcher/LauncherState;

    invoke-static {v0}, Lcom/miui/home/launcher/LauncherStateManager;->getStateClassName(Lcom/miui/home/launcher/LauncherState;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", mLastStateExcludeOverride="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/miui/home/launcher/LauncherStateManager;->mLastStateExcludeOverride:Lcom/miui/home/launcher/LauncherState;

    .line 133
    invoke-static {v0}, Lcom/miui/home/launcher/LauncherStateManager;->getStateClassName(Lcom/miui/home/launcher/LauncherState;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", animated="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "LauncherStateManager"

    .line 132
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object p2, p0, Lcom/miui/home/launcher/LauncherStateManager;->mState:Lcom/miui/home/launcher/LauncherState;

    sget-object v0, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    if-ne p2, v0, :cond_3

    .line 137
    sget-boolean p2, Lcom/miui/home/launcher/Launcher;->IS_RECENTS_WINDOW:Z

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/miui/home/launcher/LauncherStateManager;->mLastStateExcludeOverride:Lcom/miui/home/launcher/LauncherState;

    sget-object v0, Lcom/miui/home/launcher/LauncherState;->FEED_OVERLAY_STATE:Lcom/miui/home/launcher/overlay/feed/FeedOverlayState;

    if-eq p2, v0, :cond_0

    sget-object v0, Lcom/miui/home/launcher/LauncherState;->ALL_APPS:Lcom/miui/home/launcher/LauncherState;

    if-ne p2, v0, :cond_1

    .line 138
    :cond_0
    sget-object p2, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    :cond_1
    if-nez p1, :cond_2

    const/4 p1, 0x0

    .line 143
    invoke-virtual {p0, p2, p1}, Lcom/miui/home/launcher/LauncherStateManager;->goToState(Lcom/miui/home/launcher/LauncherState;Z)V

    goto :goto_0

    .line 145
    :cond_2
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/LauncherStateManager;->goToStateBack(Lcom/miui/home/launcher/LauncherState;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public getRestState()Lcom/miui/home/launcher/LauncherState;
    .locals 0

    .line 172
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherStateManager;->mRestState:Lcom/miui/home/launcher/LauncherState;

    if-nez p0, :cond_0

    sget-object p0, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    :cond_0
    return-object p0
.end method

.method public getState()Lcom/miui/home/launcher/LauncherState;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherStateManager;->mState:Lcom/miui/home/launcher/LauncherState;

    return-object p0
.end method

.method public getStateHandlers()[Lcom/miui/home/launcher/LauncherStateManager$StateHandler;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherStateManager;->mStateHandlers:[Lcom/miui/home/launcher/LauncherStateManager$StateHandler;

    if-nez v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherStateManager;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/touch/UiFactory;->getStateHandler(Lcom/miui/home/launcher/Launcher;)[Lcom/miui/home/launcher/LauncherStateManager$StateHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherStateManager;->mStateHandlers:[Lcom/miui/home/launcher/LauncherStateManager$StateHandler;

    .line 98
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherStateManager;->mStateHandlers:[Lcom/miui/home/launcher/LauncherStateManager$StateHandler;

    return-object p0
.end method

.method public goToState(Lcom/miui/home/launcher/LauncherState;Z)V
    .locals 7

    const-string v0, "LauncherStateManager"

    if-eqz p1, :cond_0

    .line 233
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "goToState, from="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/home/launcher/LauncherStateManager;->mState:Lcom/miui/home/launcher/LauncherState;

    invoke-static {v2}, Lcom/miui/home/launcher/LauncherStateManager;->getStateClassName(Lcom/miui/home/launcher/LauncherState;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", to="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    invoke-static {p1}, Lcom/miui/home/launcher/LauncherStateManager;->getStateClassName(Lcom/miui/home/launcher/LauncherState;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", anim="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 233
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherStateManager;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v1, :cond_1

    .line 238
    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->endDragViewContainerBlurAnim()V

    :cond_1
    const/4 v1, 0x0

    .line 240
    iput-boolean v1, p0, Lcom/miui/home/launcher/LauncherStateManager;->mIsOverlayScrolling:Z

    .line 242
    sget-object v2, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    if-ne p1, v2, :cond_2

    .line 243
    iget-object v3, p0, Lcom/miui/home/launcher/LauncherStateManager;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v3}, Lcom/miui/home/launcher/Launcher;->getLauncherMenuHelper()Lcom/miui/home/launcher/LauncherMenuHelper;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/miui/home/launcher/LauncherMenuHelper;->showBottomSheetMenu(Z)V

    :cond_2
    if-ne p1, v2, :cond_3

    .line 245
    iget-object v3, p0, Lcom/miui/home/launcher/LauncherStateManager;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v3}, Lcom/miui/home/launcher/Launcher;->isInShortcutMenuState()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 246
    iget-object v3, p0, Lcom/miui/home/launcher/LauncherStateManager;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const/4 v4, 0x7

    new-instance v5, Lcom/miui/home/launcher/shortcuts/CancelShortcutMenuReason;

    const-string v6, "recents_show"

    invoke-direct {v5, v6}, Lcom/miui/home/launcher/shortcuts/CancelShortcutMenuReason;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Lcom/miui/home/launcher/Launcher;->cancelShortcutMenu(ILcom/miui/home/launcher/shortcuts/CancelShortcutMenuReason;)V

    .line 249
    :cond_3
    iget-object v3, p0, Lcom/miui/home/launcher/LauncherStateManager;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v3, p1}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v3

    if-eqz v3, :cond_6

    if-eqz p1, :cond_4

    .line 251
    iget-object v3, p0, Lcom/miui/home/launcher/LauncherStateManager;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1, v3}, Lcom/miui/home/launcher/LauncherState;->reenter(Lcom/miui/home/launcher/Launcher;)V

    .line 253
    :cond_4
    iget-object v3, p0, Lcom/miui/home/launcher/LauncherStateManager;->mConfig:Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;

    invoke-static {v3}, Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;->access$000(Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;)Landroid/animation/AnimatorSet;

    move-result-object v3

    if-nez v3, :cond_5

    return-void

    .line 255
    :cond_5
    iget-object v3, p0, Lcom/miui/home/launcher/LauncherStateManager;->mConfig:Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;

    iget-boolean v4, v3, Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;->userControlled:Z

    if-nez v4, :cond_6

    if-eqz p2, :cond_6

    invoke-static {v3}, Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;->access$100(Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;)Lcom/miui/home/launcher/LauncherState;

    move-result-object v3

    if-ne v3, p1, :cond_6

    return-void

    .line 260
    :cond_6
    sget-object v3, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    if-ne p1, v3, :cond_7

    iget-boolean v4, p1, Lcom/miui/home/launcher/LauncherState;->back:Z

    if-eqz v4, :cond_7

    .line 261
    iget-object v4, p0, Lcom/miui/home/launcher/LauncherStateManager;->mConfig:Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;

    iget-object v4, v4, Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;->playbackController:Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

    if-eqz v4, :cond_7

    .line 262
    invoke-virtual {v4}, Lcom/miui/home/launcher/anim/AnimatorPlaybackController;->canCancel()Z

    move-result v4

    if-nez v4, :cond_7

    const-string p0, "can not cancel"

    .line 263
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 269
    :cond_7
    iget-object v4, p0, Lcom/miui/home/launcher/LauncherStateManager;->mState:Lcom/miui/home/launcher/LauncherState;

    if-ne v4, v2, :cond_8

    .line 270
    sget-object v2, Lcom/miui/home/launcher/LauncherState;->FEED_OVERLAY_STATE:Lcom/miui/home/launcher/overlay/feed/FeedOverlayState;

    if-eq p1, v2, :cond_9

    :cond_8
    const-string v2, "not taskView click newHome,config reset"

    .line 271
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherStateManager;->mConfig:Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;->reset()V

    :cond_9
    if-nez p2, :cond_b

    .line 276
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/LauncherStateManager;->onStateTransitionStart(Lcom/miui/home/launcher/LauncherState;)V

    .line 277
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherStateManager;->getStateHandlers()[Lcom/miui/home/launcher/LauncherStateManager$StateHandler;

    move-result-object p2

    array-length v0, p2

    :goto_0
    if-ge v1, v0, :cond_a

    aget-object v2, p2, v1

    .line 278
    invoke-interface {v2, p1}, Lcom/miui/home/launcher/LauncherStateManager$StateHandler;->setState(Lcom/miui/home/launcher/LauncherState;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 280
    :cond_a
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/LauncherStateManager;->onStateTransitionEnd(Lcom/miui/home/launcher/LauncherState;)V

    return-void

    .line 286
    :cond_b
    iget-object p2, p0, Lcom/miui/home/launcher/LauncherStateManager;->mConfig:Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;

    if-ne p1, v3, :cond_c

    iget v0, v4, Lcom/miui/home/launcher/LauncherState;->transitionDuration:I

    goto :goto_1

    :cond_c
    iget v0, p1, Lcom/miui/home/launcher/LauncherState;->transitionDuration:I

    :goto_1
    int-to-long v0, v0

    iput-wide v0, p2, Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;->duration:J

    .line 288
    new-instance p2, Lcom/miui/home/launcher/anim/AnimatorSetBuilder;

    invoke-direct {p2}, Lcom/miui/home/launcher/anim/AnimatorSetBuilder;-><init>()V

    .line 289
    invoke-virtual {p0, v4, p1, p2}, Lcom/miui/home/launcher/LauncherStateManager;->prepareForAtomicAnimation(Lcom/miui/home/launcher/LauncherState;Lcom/miui/home/launcher/LauncherState;Lcom/miui/home/launcher/anim/AnimatorSetBuilder;)V

    .line 290
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/LauncherStateManager;->createAnimationToNewWorkspaceInternal(Lcom/miui/home/launcher/LauncherState;Lcom/miui/home/launcher/anim/AnimatorSetBuilder;)Landroid/animation/AnimatorSet;

    move-result-object p1

    .line 292
    iget-object p2, p0, Lcom/miui/home/launcher/LauncherStateManager;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p2, v3}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result p2

    if-eqz p2, :cond_d

    iget-object p2, p0, Lcom/miui/home/launcher/LauncherStateManager;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p2}, Lcom/miui/home/launcher/Launcher;->isInShortcutMenuState()Z

    move-result p2

    if-eqz p2, :cond_d

    .line 293
    new-instance p2, Lcom/miui/home/launcher/LauncherStateManager$1;

    invoke-direct {p2, p0}, Lcom/miui/home/launcher/LauncherStateManager$1;-><init>(Lcom/miui/home/launcher/LauncherStateManager;)V

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 305
    :cond_d
    new-instance p2, Lcom/miui/home/launcher/LauncherStateManager$StartAnimRunnable;

    invoke-direct {p2, p0, p1}, Lcom/miui/home/launcher/LauncherStateManager$StartAnimRunnable;-><init>(Lcom/miui/home/launcher/LauncherStateManager;Landroid/animation/AnimatorSet;)V

    .line 306
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherStateManager;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {p0, p2}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public goToStateBack(Lcom/miui/home/launcher/LauncherState;)V
    .locals 1

    const/4 v0, 0x1

    .line 112
    iput-boolean v0, p1, Lcom/miui/home/launcher/LauncherState;->back:Z

    .line 113
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherStateManager;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isVisible()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/miui/home/launcher/LauncherStateManager;->goToState(Lcom/miui/home/launcher/LauncherState;Z)V

    return-void
.end method

.method public isAnimInPlayBack()Z
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherStateManager;->mConfig:Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;

    invoke-static {v0}, Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;->access$000(Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/miui/home/launcher/LauncherStateManager;->mConfig:Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;

    iget-object p0, p0, Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;->playbackController:Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isInOverViewState()Z
    .locals 1

    .line 91
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherStateManager;->mState:Lcom/miui/home/launcher/LauncherState;

    sget-object v0, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isOverlayScrolling()Z
    .locals 0

    .line 156
    iget-boolean p0, p0, Lcom/miui/home/launcher/LauncherStateManager;->mIsOverlayScrolling:Z

    return p0
.end method

.method public prepareForAtomicAnimation(Lcom/miui/home/launcher/LauncherState;Lcom/miui/home/launcher/LauncherState;Lcom/miui/home/launcher/anim/AnimatorSetBuilder;)V
    .locals 3

    .line 333
    sget-object p0, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    if-ne p2, p0, :cond_0

    iget-boolean p0, p2, Lcom/miui/home/launcher/LauncherState;->back:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x6

    .line 334
    sget-object v0, Lcom/miui/home/launcher/anim/Interpolators;->SCROLL_CUBIC:Landroid/view/animation/Interpolator;

    invoke-virtual {p3, p0, v0}, Lcom/miui/home/launcher/anim/AnimatorSetBuilder;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    const/4 p0, 0x0

    .line 335
    iput-boolean p0, p2, Lcom/miui/home/launcher/LauncherState;->back:Z

    .line 337
    :cond_0
    sget-object p0, Lcom/miui/home/launcher/LauncherState;->FEED_STATE:Lcom/miui/home/launcher/LauncherState;

    const/16 v0, 0x9

    const/16 v1, 0x8

    const/4 v2, 0x7

    if-ne p1, p0, :cond_1

    .line 338
    sget-object p0, Lcom/miui/home/launcher/anim/Interpolators;->FEED_WORKSPACE_ALPHA_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {p3, v2, p0}, Lcom/miui/home/launcher/anim/AnimatorSetBuilder;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    .line 339
    sget-object p0, Lcom/miui/home/launcher/anim/Interpolators;->FEED_INDICATOR_ALPHA_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {p3, v1, p0}, Lcom/miui/home/launcher/anim/AnimatorSetBuilder;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    .line 340
    sget-object p0, Lcom/miui/home/launcher/anim/Interpolators;->FEED_HOTSEAT_ALPHA_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {p3, v0, p0}, Lcom/miui/home/launcher/anim/AnimatorSetBuilder;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    goto :goto_1

    :cond_1
    if-ne p2, p0, :cond_2

    .line 342
    sget-object p0, Lcom/miui/home/launcher/anim/Interpolators;->FEED_WORKSPACE_ALPHA_OUT:Landroid/view/animation/Interpolator;

    invoke-virtual {p3, v2, p0}, Lcom/miui/home/launcher/anim/AnimatorSetBuilder;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    .line 343
    sget-object p0, Lcom/miui/home/launcher/anim/Interpolators;->FEED_INDICATOR_ALPHA_OUT:Landroid/view/animation/Interpolator;

    invoke-virtual {p3, v1, p0}, Lcom/miui/home/launcher/anim/AnimatorSetBuilder;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    .line 344
    sget-object p0, Lcom/miui/home/launcher/anim/Interpolators;->FEED_HOTSEAT_ALPHA_OUT:Landroid/view/animation/Interpolator;

    invoke-virtual {p3, v0, p0}, Lcom/miui/home/launcher/anim/AnimatorSetBuilder;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    goto :goto_1

    .line 345
    :cond_2
    sget-object p0, Lcom/miui/home/launcher/LauncherState;->SEARCH_OVERLAY_STATE:Lcom/miui/home/launcher/overlay/search/SearchOverlayState;

    const/16 v0, 0xb

    const/16 v1, 0xa

    if-eq p2, p0, :cond_4

    if-ne p1, p0, :cond_3

    goto :goto_0

    .line 348
    :cond_3
    sget-object p0, Lcom/miui/home/launcher/LauncherState;->FEED_OVERLAY_STATE:Lcom/miui/home/launcher/overlay/feed/FeedOverlayState;

    if-ne p1, p0, :cond_5

    .line 350
    invoke-virtual {p0}, Lcom/miui/home/launcher/overlay/feed/FeedOverlayState;->isNewEffect()Z

    move-result p0

    if-eqz p0, :cond_5

    .line 351
    sget-object p0, Lcom/miui/home/launcher/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {p3, v1, p0}, Lcom/miui/home/launcher/anim/AnimatorSetBuilder;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    .line 352
    invoke-virtual {p3, v0, p0}, Lcom/miui/home/launcher/anim/AnimatorSetBuilder;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    goto :goto_1

    .line 346
    :cond_4
    :goto_0
    sget-object p0, Lcom/miui/home/launcher/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {p3, v1, p0}, Lcom/miui/home/launcher/anim/AnimatorSetBuilder;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    .line 347
    invoke-virtual {p3, v0, p0}, Lcom/miui/home/launcher/anim/AnimatorSetBuilder;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public reApplyState()V
    .locals 5

    .line 117
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherStateManager;->cancelAnimation()V

    .line 118
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherStateManager;->mConfig:Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;

    invoke-static {v0}, Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;->access$000(Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/LauncherStateManager;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getUserPresentAnimation()Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;->isPreparedAnimation()Z

    move-result v0

    if-nez v0, :cond_0

    .line 119
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherStateManager;->getStateHandlers()[Lcom/miui/home/launcher/LauncherStateManager$StateHandler;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 120
    iget-object v4, p0, Lcom/miui/home/launcher/LauncherStateManager;->mState:Lcom/miui/home/launcher/LauncherState;

    invoke-interface {v3, v4}, Lcom/miui/home/launcher/LauncherStateManager$StateHandler;->setState(Lcom/miui/home/launcher/LauncherState;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public reApplyStateIfNeed()V
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherStateManager;->mConfig:Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;

    invoke-static {v0}, Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;->access$000(Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherStateManager;->reApplyState()V

    :cond_0
    return-void
.end method

.method public removeStateListener(Lcom/miui/home/launcher/LauncherStateManager$StateListener;)V
    .locals 0

    .line 108
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherStateManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public varargs setCurrentAnimation(Landroid/animation/AnimatorSet;[Landroid/animation/Animator;)V
    .locals 4

    .line 186
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    aget-object v2, p2, v1

    if-nez v2, :cond_0

    goto :goto_1

    .line 190
    :cond_0
    iget-object v3, p0, Lcom/miui/home/launcher/LauncherStateManager;->mConfig:Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;

    iget-object v3, v3, Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;->playbackController:Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

    if-eqz v3, :cond_1

    .line 191
    invoke-virtual {v3}, Lcom/miui/home/launcher/anim/AnimatorPlaybackController;->getTarget()Landroid/animation/AnimatorSet;

    move-result-object v3

    if-ne v3, v2, :cond_1

    .line 192
    invoke-direct {p0}, Lcom/miui/home/launcher/LauncherStateManager;->clearCurrentAnimation()V

    goto :goto_2

    .line 194
    :cond_1
    iget-object v3, p0, Lcom/miui/home/launcher/LauncherStateManager;->mConfig:Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;

    invoke-static {v3}, Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;->access$000(Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;)Landroid/animation/AnimatorSet;

    move-result-object v3

    if-ne v3, v2, :cond_2

    .line 195
    invoke-direct {p0}, Lcom/miui/home/launcher/LauncherStateManager;->clearCurrentAnimation()V

    goto :goto_2

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 199
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherStateManager;->cancelAnimation()V

    .line 200
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherStateManager;->mConfig:Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;->setAnimation(Landroid/animation/AnimatorSet;Lcom/miui/home/launcher/LauncherState;)V

    return-void
.end method

.method public setCurrentAnimation(Lcom/miui/home/recents/util/MultiAnimationEndDetector;)V
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherStateManager;->mConfig:Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;

    invoke-static {v0}, Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;->access$000(Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 205
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherStateManager;->cancelAnimation()V

    if-eqz v0, :cond_1

    .line 207
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherStateManager;->reApplyState()V

    .line 209
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherStateManager;->mState:Lcom/miui/home/launcher/LauncherState;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/LauncherStateManager;->onStateTransitionEnd(Lcom/miui/home/launcher/LauncherState;)V

    .line 211
    :cond_1
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherStateManager;->mConfig:Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;->setDetector(Lcom/miui/home/recents/util/MultiAnimationEndDetector;)V

    return-void
.end method

.method public setOverlayScrolling(Z)V
    .locals 2

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setOverlayScrolling "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LauncherStateManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iput-boolean p1, p0, Lcom/miui/home/launcher/LauncherStateManager;->mIsOverlayScrolling:Z

    return-void
.end method

.method public setRestState(Lcom/miui/home/launcher/LauncherState;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/miui/home/launcher/LauncherStateManager;->mRestState:Lcom/miui/home/launcher/LauncherState;

    return-void
.end method

.method public setUserControlled(Z)V
    .locals 0

    .line 446
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherStateManager;->mConfig:Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;

    iput-boolean p1, p0, Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;->userControlled:Z

    return-void
.end method
