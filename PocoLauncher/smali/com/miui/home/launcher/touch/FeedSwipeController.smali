.class public Lcom/miui/home/launcher/touch/FeedSwipeController;
.super Ljava/lang/Object;
.source "FeedSwipeController.java"

# interfaces
.implements Lcom/miui/home/launcher/util/SwipeTouchController;
.implements Lcom/miui/home/launcher/util/LauncherStateSwitch;
.implements Lcom/miui/home/launcher/touch/SwipeDetector$Listener;
.implements Lcom/miui/home/launcher/LauncherStateManager$StateListener;


# instance fields
.field protected mAtomicAnim:Landroid/animation/AnimatorSet;

.field private mBlockFling:Z

.field private mBlockFlingTime:J

.field private mCanBlockFling:Z

.field protected mCurrentAnimation:Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

.field protected final mDetector:Lcom/miui/home/launcher/touch/SwipeDetector;

.field private mDisallowIntercept:Z

.field private mDisplacementShift:F

.field protected mFromState:Lcom/miui/home/launcher/LauncherState;

.field private mIsFeedAnim:Z

.field private mIsNestScrollStart:Z

.field protected final mLauncher:Lcom/miui/home/launcher/Launcher;

.field private mNoIntercept:Z

.field private mProgressMultiplier:F

.field private mStartProgress:F

.field protected mToState:Lcom/miui/home/launcher/LauncherState;


# direct methods
.method public static synthetic $r8$lambda$-Hg9XqVaMW9Lz1KEUV7SJnczB74(Lcom/miui/home/launcher/touch/FeedSwipeController;Lcom/miui/home/launcher/LauncherState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/touch/FeedSwipeController;->lambda$startAnim$0(Lcom/miui/home/launcher/LauncherState;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eJUXjSLelorrXGa4bKXwI3HoyZ4(Lcom/miui/home/launcher/touch/FeedSwipeController;Lcom/miui/home/launcher/LauncherState;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/touch/FeedSwipeController;->lambda$startAnim$1(Lcom/miui/home/launcher/LauncherState;Ljava/lang/Runnable;)V

    return-void
.end method

.method public constructor <init>(Lcom/miui/home/launcher/Launcher;)V
    .locals 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 39
    new-instance v0, Lcom/miui/home/launcher/touch/SwipeDetector;

    sget-object v1, Lcom/miui/home/launcher/touch/SwipeDetector;->VERTICAL:Lcom/miui/home/launcher/touch/SwipeDetector$Direction;

    invoke-direct {v0, p1, p0, v1}, Lcom/miui/home/launcher/touch/SwipeDetector;-><init>(Landroid/content/Context;Lcom/miui/home/launcher/touch/SwipeDetector$Listener;Lcom/miui/home/launcher/touch/SwipeDetector$Direction;)V

    iput-object v0, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mDetector:Lcom/miui/home/launcher/touch/SwipeDetector;

    .line 40
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/LauncherStateManager;->addStateListener(Lcom/miui/home/launcher/LauncherStateManager$StateListener;)V

    return-void
.end method

.method public static boundToRange(FFF)F
    .locals 0

    .line 456
    invoke-static {p0, p2}, Ljava/lang/Math;->min(FF)F

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method private cancelAnimationControllers()V
    .locals 1

    const/4 v0, 0x0

    .line 441
    iput-object v0, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mCurrentAnimation:Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

    const/4 v0, 0x0

    .line 442
    iput-boolean v0, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mIsFeedAnim:Z

    .line 443
    iget-object p0, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mDetector:Lcom/miui/home/launcher/touch/SwipeDetector;

    invoke-virtual {p0}, Lcom/miui/home/launcher/touch/SwipeDetector;->finishedScrolling()V

    return-void
.end method

.method private changeState(Lcom/miui/home/launcher/LauncherState;)V
    .locals 2

    .line 364
    iget-object v0, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mFromState:Lcom/miui/home/launcher/LauncherState;

    sget-object v1, Lcom/miui/home/launcher/LauncherState;->FEED_STATE:Lcom/miui/home/launcher/LauncherState;

    if-ne v0, v1, :cond_0

    if-eq p1, v1, :cond_0

    .line 365
    iget-object p1, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getNewHomeView()Lcom/miui/newhome/view/gestureview/NewHomeView;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 366
    iget-object p0, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getNewHomeView()Lcom/miui/newhome/view/gestureview/NewHomeView;

    move-result-object p0

    sget-object p1, Lcom/miui/newhome/view/gestureview/NewHomeState;->SCROLL_TO_HIDE:Lcom/miui/newhome/view/gestureview/NewHomeState;

    invoke-virtual {p0, p1}, Lcom/miui/newhome/view/gestureview/NewHomeView;->changeState(Lcom/miui/newhome/view/gestureview/NewHomeState;)V

    goto :goto_0

    :cond_0
    if-eq v0, v1, :cond_1

    if-ne p1, v1, :cond_1

    .line 368
    iget-object p1, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getNewHomeView()Lcom/miui/newhome/view/gestureview/NewHomeView;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 369
    iget-object p0, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getNewHomeView()Lcom/miui/newhome/view/gestureview/NewHomeView;

    move-result-object p0

    sget-object p1, Lcom/miui/newhome/view/gestureview/NewHomeState;->SCROLL_TO_SHOW:Lcom/miui/newhome/view/gestureview/NewHomeState;

    invoke-virtual {p0, p1}, Lcom/miui/newhome/view/gestureview/NewHomeView;->changeState(Lcom/miui/newhome/view/gestureview/NewHomeState;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private getRemainingAtomicDuration()J
    .locals 4

    .line 416
    iget-object v0, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mAtomicAnim:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 420
    :cond_0
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->getTotalDuration()J

    move-result-wide v0

    iget-object p0, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mAtomicAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->getCurrentPlayTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private getSwipeDirection()I
    .locals 4

    .line 175
    iget-object v0, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherStateManager;->getState()Lcom/miui/home/launcher/LauncherState;

    move-result-object v0

    const/4 v1, 0x1

    .line 177
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/touch/FeedSwipeController;->getTargetState(Lcom/miui/home/launcher/LauncherState;Z)Lcom/miui/home/launcher/LauncherState;

    move-result-object v2

    const/4 v3, 0x0

    if-eq v2, v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    .line 180
    :goto_0
    invoke-virtual {p0, v0, v3}, Lcom/miui/home/launcher/touch/FeedSwipeController;->getTargetState(Lcom/miui/home/launcher/LauncherState;Z)Lcom/miui/home/launcher/LauncherState;

    move-result-object p0

    if-eq p0, v0, :cond_1

    or-int/lit8 v1, v1, 0x2

    :cond_1
    return v1
.end method

.method private hideFeed(Z)V
    .locals 11

    .line 570
    sget-object v0, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/touch/FeedSwipeController;->initAutoAnim(Lcom/miui/home/launcher/LauncherState;)V

    .line 572
    iget v0, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mProgressMultiplier:F

    const/high16 v1, 0x42400000    # 48.0f

    mul-float/2addr v0, v1

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/touch/FeedSwipeController;->boundToRange(FFF)F

    move-result v5

    if-eqz p1, :cond_0

    const/high16 p1, 0x40400000    # 3.0f

    .line 574
    invoke-static {p1, v2}, Lcom/miui/home/launcher/touch/SwipeDetector;->calculateDuration(FF)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    move-wide v7, v0

    .line 576
    iget-object v4, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mToState:Lcom/miui/home/launcher/LauncherState;

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v9, 0x40400000    # 3.0f

    const/4 v10, 0x0

    move-object v3, p0

    invoke-direct/range {v3 .. v10}, Lcom/miui/home/launcher/touch/FeedSwipeController;->startAnim(Lcom/miui/home/launcher/LauncherState;FFJFLjava/lang/Runnable;)V

    return-void
.end method

.method private initAutoAnim(Lcom/miui/home/launcher/LauncherState;)V
    .locals 1

    .line 590
    iget-object v0, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherStateManager;->getState()Lcom/miui/home/launcher/LauncherState;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mFromState:Lcom/miui/home/launcher/LauncherState;

    .line 591
    iput-object p1, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mToState:Lcom/miui/home/launcher/LauncherState;

    .line 592
    invoke-direct {p0}, Lcom/miui/home/launcher/touch/FeedSwipeController;->cancelAnimationControllers()V

    const/4 p1, 0x0

    .line 593
    iput p1, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mStartProgress:F

    .line 594
    invoke-virtual {p0}, Lcom/miui/home/launcher/touch/FeedSwipeController;->initCurrentAnimation()F

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mProgressMultiplier:F

    .line 595
    iget-object v0, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mCurrentAnimation:Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

    invoke-virtual {v0}, Lcom/miui/home/launcher/anim/AnimatorPlaybackController;->dispatchOnStart()V

    .line 596
    iput p1, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mDisplacementShift:F

    return-void
.end method

.method private synthetic lambda$startAnim$0(Lcom/miui/home/launcher/LauncherState;)V
    .locals 0

    .line 348
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/touch/FeedSwipeController;->onSwipeInteractionCompleted(Lcom/miui/home/launcher/LauncherState;)V

    return-void
.end method

.method private synthetic lambda$startAnim$1(Lcom/miui/home/launcher/LauncherState;Ljava/lang/Runnable;)V
    .locals 0

    .line 351
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/touch/FeedSwipeController;->onSwipeInteractionCompleted(Lcom/miui/home/launcher/LauncherState;)V

    .line 352
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private onDragEnd(FZZLjava/lang/Runnable;)V
    .locals 10

    .line 261
    iget-object p3, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mCurrentAnimation:Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

    if-nez p3, :cond_0

    return-void

    :cond_0
    const/4 p3, 0x1

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 262
    invoke-virtual {p0}, Lcom/miui/home/launcher/touch/FeedSwipeController;->isBlocked()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, p3

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    if-eqz v1, :cond_2

    move p2, v0

    .line 268
    :cond_2
    iget-object v0, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mCurrentAnimation:Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

    invoke-virtual {v0}, Lcom/miui/home/launcher/anim/AnimatorPlaybackController;->getProgressFraction()F

    move-result v0

    .line 269
    iget-object v2, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mCurrentAnimation:Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

    invoke-virtual {v2}, Lcom/miui/home/launcher/anim/AnimatorPlaybackController;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v2

    if-eqz p2, :cond_4

    .line 273
    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result p2

    iget v2, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mProgressMultiplier:F

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    invoke-static {p2, v2}, Ljava/lang/Float;->compare(FF)I

    move-result p2

    if-nez p2, :cond_3

    .line 274
    iget-object p2, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mToState:Lcom/miui/home/launcher/LauncherState;

    goto :goto_1

    :cond_3
    iget-object p2, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mFromState:Lcom/miui/home/launcher/LauncherState;

    goto :goto_1

    :cond_4
    if-nez p4, :cond_6

    .line 278
    iget-object p2, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mToState:Lcom/miui/home/launcher/LauncherState;

    sget-object v3, Lcom/miui/home/launcher/LauncherState;->FEED_STATE:Lcom/miui/home/launcher/LauncherState;

    const/high16 v3, 0x3f000000    # 0.5f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_5

    goto :goto_1

    .line 280
    :cond_5
    iget-object p2, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mFromState:Lcom/miui/home/launcher/LauncherState;

    goto :goto_1

    .line 282
    :cond_6
    sget-object p2, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    :goto_1
    move-object v3, p2

    if-eqz v1, :cond_7

    .line 289
    iget-object p2, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mFromState:Lcom/miui/home/launcher/LauncherState;

    if-ne v3, p2, :cond_7

    .line 290
    invoke-static {p1}, Lcom/miui/home/launcher/anim/AnimatorSetBuilder;->blockedFlingDurationFactor(F)I

    move-result p3

    .line 292
    :cond_7
    iget-object p2, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mToState:Lcom/miui/home/launcher/LauncherState;

    const-wide/16 v1, 0x0

    const/high16 v4, 0x41800000    # 16.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    if-ne v3, p2, :cond_9

    cmpl-float p2, v0, v5

    if-ltz p2, :cond_8

    move-wide v6, v1

    move v4, v5

    goto :goto_3

    :cond_8
    mul-float/2addr v4, p1

    .line 298
    iget p2, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mProgressMultiplier:F

    mul-float/2addr v4, p2

    add-float/2addr v4, v0

    invoke-static {v4, v6, v5}, Lcom/miui/home/launcher/touch/FeedSwipeController;->boundToRange(FFF)F

    move-result p2

    .line 301
    invoke-static {v0, v6}, Ljava/lang/Math;->max(FF)F

    move-result v0

    sub-float v0, v5, v0

    .line 300
    invoke-static {p1, v0}, Lcom/miui/home/launcher/touch/SwipeDetector;->calculateDuration(FF)J

    move-result-wide v0

    int-to-long v6, p3

    mul-long/2addr v0, v6

    move v4, p2

    goto :goto_2

    .line 304
    :cond_9
    iget-object p2, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mCurrentAnimation:Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

    invoke-virtual {p2}, Lcom/miui/home/launcher/anim/AnimatorPlaybackController;->dispatchOnCancel()V

    cmpg-float p2, v0, v6

    if-gtz p2, :cond_a

    move v4, v6

    move v5, v4

    move-wide v6, v1

    goto :goto_3

    :cond_a
    mul-float/2addr v4, p1

    .line 310
    iget p2, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mProgressMultiplier:F

    mul-float/2addr v4, p2

    add-float/2addr v4, v0

    invoke-static {v4, v6, v5}, Lcom/miui/home/launcher/touch/FeedSwipeController;->boundToRange(FFF)F

    move-result p2

    .line 313
    invoke-static {v0, v5}, Ljava/lang/Math;->min(FF)F

    move-result v0

    sub-float/2addr v0, v6

    .line 312
    invoke-static {p1, v0}, Lcom/miui/home/launcher/touch/SwipeDetector;->calculateDuration(FF)J

    move-result-wide v0

    int-to-long v4, p3

    mul-long/2addr v0, v4

    move v4, p2

    move v5, v6

    :goto_2
    move-wide v6, v0

    :goto_3
    move-object v2, p0

    move v8, p1

    move-object v9, p4

    .line 316
    invoke-direct/range {v2 .. v9}, Lcom/miui/home/launcher/touch/FeedSwipeController;->startAnim(Lcom/miui/home/launcher/LauncherState;FFJFLjava/lang/Runnable;)V

    return-void
.end method

.method private reinitCurrentAnimation(ZZ)Z
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mFromState:Lcom/miui/home/launcher/LauncherState;

    if-nez v0, :cond_0

    .line 198
    iget-object p1, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherStateManager;->getState()Lcom/miui/home/launcher/LauncherState;

    move-result-object v0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 200
    iget-object v0, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mToState:Lcom/miui/home/launcher/LauncherState;

    .line 205
    :cond_1
    :goto_0
    invoke-virtual {p0, v0, p2}, Lcom/miui/home/launcher/touch/FeedSwipeController;->getTargetState(Lcom/miui/home/launcher/LauncherState;Z)Lcom/miui/home/launcher/LauncherState;

    move-result-object p1

    .line 207
    iget-object p2, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mFromState:Lcom/miui/home/launcher/LauncherState;

    if-ne v0, p2, :cond_2

    iget-object p2, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mToState:Lcom/miui/home/launcher/LauncherState;

    if-eq p1, p2, :cond_3

    :cond_2
    if-ne v0, p1, :cond_4

    :cond_3
    const/4 p0, 0x0

    return p0

    .line 211
    :cond_4
    iput-object v0, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mFromState:Lcom/miui/home/launcher/LauncherState;

    .line 212
    iput-object p1, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mToState:Lcom/miui/home/launcher/LauncherState;

    const/4 p1, 0x0

    .line 214
    iput p1, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mStartProgress:F

    .line 215
    invoke-virtual {p0}, Lcom/miui/home/launcher/touch/FeedSwipeController;->initCurrentAnimation()F

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mProgressMultiplier:F

    .line 216
    iget-object p0, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mCurrentAnimation:Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

    invoke-virtual {p0}, Lcom/miui/home/launcher/anim/AnimatorPlaybackController;->dispatchOnStart()V

    const/4 p0, 0x1

    return p0
.end method

.method private showFeed(Z)V
    .locals 11

    .line 580
    sget-object v0, Lcom/miui/home/launcher/LauncherState;->FEED_STATE:Lcom/miui/home/launcher/LauncherState;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/touch/FeedSwipeController;->initAutoAnim(Lcom/miui/home/launcher/LauncherState;)V

    .line 582
    iget v0, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mProgressMultiplier:F

    const/high16 v1, 0x42400000    # 48.0f

    mul-float/2addr v0, v1

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/touch/FeedSwipeController;->boundToRange(FFF)F

    move-result v5

    if-eqz p1, :cond_0

    const/high16 p1, 0x40400000    # 3.0f

    .line 584
    invoke-static {p1, v2}, Lcom/miui/home/launcher/touch/SwipeDetector;->calculateDuration(FF)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    move-wide v7, v0

    .line 586
    iget-object v4, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mToState:Lcom/miui/home/launcher/LauncherState;

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v9, 0x40400000    # 3.0f

    const/4 v10, 0x0

    move-object v3, p0

    invoke-direct/range {v3 .. v10}, Lcom/miui/home/launcher/touch/FeedSwipeController;->startAnim(Lcom/miui/home/launcher/LauncherState;FFJFLjava/lang/Runnable;)V

    return-void
.end method

.method private startAnim(Lcom/miui/home/launcher/LauncherState;FFJFLjava/lang/Runnable;)V
    .locals 2

    .line 346
    iget-object v0, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mCurrentAnimation:Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

    invoke-virtual {v0, p7}, Lcom/miui/home/launcher/anim/AnimatorPlaybackController;->setEndAction(Ljava/lang/Runnable;)V

    if-nez p7, :cond_0

    .line 348
    iget-object p7, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mCurrentAnimation:Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

    new-instance v0, Lcom/miui/home/launcher/touch/FeedSwipeController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/launcher/touch/FeedSwipeController$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/launcher/touch/FeedSwipeController;Lcom/miui/home/launcher/LauncherState;)V

    invoke-virtual {p7, v0}, Lcom/miui/home/launcher/anim/AnimatorPlaybackController;->setEndAction(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 350
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mCurrentAnimation:Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

    new-instance v1, Lcom/miui/home/launcher/touch/FeedSwipeController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p7}, Lcom/miui/home/launcher/touch/FeedSwipeController$$ExternalSyntheticLambda1;-><init>(Lcom/miui/home/launcher/touch/FeedSwipeController;Lcom/miui/home/launcher/LauncherState;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/anim/AnimatorPlaybackController;->setEndAction(Ljava/lang/Runnable;)V

    .line 355
    :goto_0
    iget-object p7, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mCurrentAnimation:Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

    invoke-virtual {p7}, Lcom/miui/home/launcher/anim/AnimatorPlaybackController;->getAnimationPlayer()Landroid/animation/ValueAnimator;

    move-result-object p7

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 p2, 0x1

    aput p3, v0, p2

    .line 356
    invoke-virtual {p7, v0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 357
    invoke-direct {p0}, Lcom/miui/home/launcher/touch/FeedSwipeController;->getRemainingAtomicDuration()J

    move-result-wide p2

    invoke-static {p4, p5, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    invoke-virtual {p0, p7, p2, p3, p6}, Lcom/miui/home/launcher/touch/FeedSwipeController;->updateSwipeCompleteAnimation(Landroid/animation/ValueAnimator;JF)V

    .line 358
    iget-object p2, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mCurrentAnimation:Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

    invoke-virtual {p2}, Lcom/miui/home/launcher/anim/AnimatorPlaybackController;->dispatchOnStart()V

    .line 359
    invoke-virtual {p7}, Landroid/animation/ValueAnimator;->start()V

    .line 360
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/touch/FeedSwipeController;->changeState(Lcom/miui/home/launcher/LauncherState;)V

    return-void
.end method


# virtual methods
.method public autoShowHideFeed(ZZ)V
    .locals 1

    .line 528
    invoke-virtual {p0}, Lcom/miui/home/launcher/touch/FeedSwipeController;->isLauncherNormalState()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 529
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherStateManager;->getState()Lcom/miui/home/launcher/LauncherState;

    move-result-object v0

    if-eqz p1, :cond_1

    .line 531
    sget-object p1, Lcom/miui/home/launcher/LauncherState;->FEED_STATE:Lcom/miui/home/launcher/LauncherState;

    if-eq v0, p1, :cond_2

    sget-object p1, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    if-ne v0, p1, :cond_2

    .line 532
    invoke-direct {p0, p2}, Lcom/miui/home/launcher/touch/FeedSwipeController;->showFeed(Z)V

    goto :goto_0

    .line 535
    :cond_1
    sget-object p1, Lcom/miui/home/launcher/LauncherState;->FEED_STATE:Lcom/miui/home/launcher/LauncherState;

    if-ne v0, p1, :cond_2

    .line 536
    invoke-direct {p0, p2}, Lcom/miui/home/launcher/touch/FeedSwipeController;->hideFeed(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public blockFling()V
    .locals 2

    const/4 v0, 0x1

    .line 464
    iput-boolean v0, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mBlockFling:Z

    .line 465
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mBlockFlingTime:J

    return-void
.end method

.method public canCancel()Z
    .locals 1

    .line 448
    iget-object v0, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mCurrentAnimation:Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

    if-eqz v0, :cond_0

    .line 449
    iget-object p0, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mDetector:Lcom/miui/home/launcher/touch/SwipeDetector;

    invoke-virtual {p0}, Lcom/miui/home/launcher/touch/SwipeDetector;->isIdleState()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method protected canInterceptTouch(Landroid/view/MotionEvent;)Z
    .locals 4

    const-string v0, "FeedSwipeController"

    .line 485
    iget-object v1, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mCurrentAnimation:Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    .line 490
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/touch/FeedSwipeController;->isLauncherNormalState()Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    return v3

    .line 495
    :cond_1
    :try_start_0
    iget-object p0, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getNewHomeView()Lcom/miui/newhome/view/gestureview/NewHomeView;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 496
    invoke-virtual {p0, p1}, Lcom/miui/newhome/view/gestureview/NewHomeView;->shouldContainerScroll(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string/jumbo p0, "shouldContainerScroll false"

    .line 497
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    move-exception p0

    const-string p1, "ClassNotFoundException"

    .line 501
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    return v2
.end method

.method protected getShiftRange()F
    .locals 0

    .line 192
    iget-object p0, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getFeedTransController()Lcom/miui/home/launcher/touch/FeedTransController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/touch/FeedTransController;->getShiftRange()F

    move-result p0

    return p0
.end method

.method protected getTargetState(Lcom/miui/home/launcher/LauncherState;Z)Lcom/miui/home/launcher/LauncherState;
    .locals 1

    .line 507
    sget-object p0, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    if-ne p1, p0, :cond_0

    if-eqz p2, :cond_0

    .line 508
    sget-object p0, Lcom/miui/home/launcher/LauncherState;->FEED_STATE:Lcom/miui/home/launcher/LauncherState;

    return-object p0

    .line 509
    :cond_0
    sget-object v0, Lcom/miui/home/launcher/LauncherState;->FEED_STATE:Lcom/miui/home/launcher/LauncherState;

    if-ne p1, v0, :cond_1

    if-nez p2, :cond_1

    return-object p0

    :cond_1
    return-object p1
.end method

.method protected initCurrentAnimation()F
    .locals 8

    .line 516
    invoke-virtual {p0}, Lcom/miui/home/launcher/touch/FeedSwipeController;->getShiftRange()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v1, v0

    float-to-long v5, v1

    const/4 v1, 0x1

    .line 518
    iput-boolean v1, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mIsFeedAnim:Z

    .line 519
    iget-object v1, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mFromState:Lcom/miui/home/launcher/LauncherState;

    iget-object v4, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mToState:Lcom/miui/home/launcher/LauncherState;

    move-object v7, p0

    .line 520
    invoke-virtual/range {v2 .. v7}, Lcom/miui/home/launcher/LauncherStateManager;->createAnimationToNewWorkspace(Lcom/miui/home/launcher/LauncherState;Lcom/miui/home/launcher/LauncherState;JLcom/miui/home/launcher/util/LauncherStateSwitch;)Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mCurrentAnimation:Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

    .line 521
    iget-object v1, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mFromState:Lcom/miui/home/launcher/LauncherState;

    iget-object v2, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/LauncherState;->getFeedHomeVerticalProgress(Lcom/miui/home/launcher/Launcher;)F

    move-result v1

    mul-float/2addr v1, v0

    .line 522
    iget-object v2, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mToState:Lcom/miui/home/launcher/LauncherState;

    iget-object p0, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v2, p0}, Lcom/miui/home/launcher/LauncherState;->getFeedHomeVerticalProgress(Lcom/miui/home/launcher/Launcher;)F

    move-result p0

    mul-float/2addr p0, v0

    sub-float/2addr p0, v1

    const/high16 v0, 0x3f800000    # 1.0f

    div-float/2addr v0, p0

    return v0
.end method

.method public isBlocked()Z
    .locals 0

    .line 481
    iget-boolean p0, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mBlockFling:Z

    return p0
.end method

.method public isFeedAnim()Z
    .locals 0

    .line 72
    iget-boolean p0, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mIsFeedAnim:Z

    return p0
.end method

.method public isLauncherNormalState()Z
    .locals 9

    .line 542
    iget-object v0, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isFolderOpened()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 545
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    .line 546
    invoke-virtual {v0}, Lcom/miui/home/launcher/ScreenView;->getTouchState()I

    move-result v2

    .line 547
    invoke-virtual {v0}, Lcom/miui/home/launcher/ScreenView;->isScrolling()Z

    move-result v0

    .line 548
    iget-object v3, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v3}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result v3

    .line 549
    iget-object v4, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v4}, Lcom/miui/home/launcher/Launcher;->isWidgetThumbnailViewShowing()Z

    move-result v4

    .line 550
    iget-object v5, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v5}, Lcom/miui/home/launcher/Launcher;->isUninstallDialogShowing()Z

    move-result v5

    .line 551
    iget-object v6, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v6}, Lcom/miui/home/launcher/Launcher;->isMinusScreenShowing()Z

    move-result v6

    .line 552
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "touchState : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " scrolling : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " normalEditing : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " WidgetThumbnailViewShowing : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " UninstallDialogShowing : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " isMinusScreenShowing: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "FeedSwipeController"

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v3, :cond_2

    if-nez v0, :cond_2

    if-nez v4, :cond_2

    if-nez v5, :cond_2

    const/4 v0, 0x1

    if-eq v2, v0, :cond_2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    .line 555
    iget-object p0, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 561
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getLauncherGestureController()Lcom/miui/home/settings/LauncherGestureController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/settings/LauncherGestureController;->isSupportSlideOpenHomeFeed()Z

    move-result p0

    if-eqz p0, :cond_2

    if-eqz v6, :cond_1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    :goto_0
    const-string p0, "can not use"

    .line 563
    invoke-static {v8, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public isMiniusOneScreenShow()Z
    .locals 1

    .line 600
    iget-object p0, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getMinusOneScreenView()Lcom/miui/home/launcher/MinusOneScreenView;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 601
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getCurrentScreenIndex()I

    move-result p0

    if-nez p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 91
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    .line 92
    iput-boolean v1, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mNoIntercept:Z

    return v2

    .line 95
    :cond_0
    iget-boolean v0, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mDisallowIntercept:Z

    if-eqz v0, :cond_1

    return v2

    .line 98
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const-string v3, "FeedSwipeController"

    if-nez v0, :cond_5

    .line 99
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/touch/FeedSwipeController;->canInterceptTouch(Landroid/view/MotionEvent;)Z

    move-result v0

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mNoIntercept:Z

    if-eqz v0, :cond_2

    return v2

    .line 110
    :cond_2
    iget-object v0, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mCurrentAnimation:Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    move v4, v1

    goto :goto_0

    .line 114
    :cond_3
    invoke-direct {p0}, Lcom/miui/home/launcher/touch/FeedSwipeController;->getSwipeDirection()I

    move-result v0

    if-nez v0, :cond_4

    .line 116
    iput-boolean v1, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mNoIntercept:Z

    return v2

    :cond_4
    move v4, v2

    .line 121
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ACTION_DOWN-> directions To Detect Scroll: 1=POSITIVE 2=NEGATIVE 3=BOTH "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object v5, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mDetector:Lcom/miui/home/launcher/touch/SwipeDetector;

    invoke-virtual {v5, v0, v4}, Lcom/miui/home/launcher/touch/SwipeDetector;->setDetectableScrollConditions(IZ)V

    .line 126
    :cond_5
    iget-boolean v0, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mNoIntercept:Z

    if-eqz v0, :cond_6

    return v2

    .line 130
    :cond_6
    iget-object v0, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getMinusOneScreenView()Lcom/miui/home/launcher/MinusOneScreenView;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 131
    invoke-virtual {v0}, Lcom/miui/home/launcher/MinusOneScreenView;->isAlreadyScrolled()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 132
    iput-boolean v1, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mNoIntercept:Z

    return v2

    .line 137
    :cond_7
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getNewHomeView()Lcom/miui/newhome/view/gestureview/NewHomeView;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 139
    invoke-virtual {v0}, Lcom/miui/newhome/view/gestureview/NewHomeView;->isViewPagerScorll()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 140
    iput-boolean v1, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mNoIntercept:Z

    return v2

    .line 143
    :cond_8
    invoke-virtual {v0}, Lcom/miui/newhome/view/gestureview/NewHomeView;->isAppBarLayoutScroll()Z

    move-result v0

    if-eqz v0, :cond_9

    return v2

    .line 146
    :cond_9
    iget-boolean v0, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mIsNestScrollStart:Z

    if-eqz v0, :cond_a

    invoke-static {}, Lcom/miui/newhome/view/gestureview/NewHomeView;->getNewHomeState()Lcom/miui/newhome/view/gestureview/NewHomeState;

    move-result-object v0

    sget-object v4, Lcom/miui/newhome/view/gestureview/NewHomeState;->SHOW:Lcom/miui/newhome/view/gestureview/NewHomeState;

    if-ne v0, v4, :cond_a

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "feed intercept newhomeView show mIsNestScrollStart "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mIsNestScrollStart:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " action->"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iput-boolean v1, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mNoIntercept:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception v0

    .line 153
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 156
    :cond_a
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/touch/FeedSwipeController;->onControllerTouchEvent(Landroid/view/MotionEvent;)Z

    .line 157
    iget-object v0, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mCurrentAnimation:Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mIsNestScrollStart:Z

    if-nez v0, :cond_b

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "feed intercept FeedSwipeController mCurrentAnimation != null&&mIsNestScrollStart false --action->"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object p0, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->addOrRemoveNewHome()V

    .line 161
    sget-object p0, Lcom/miui/home/recents/anim/StateManager;->Companion:Lcom/miui/home/recents/anim/StateManager$Companion;

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object p0

    new-instance p1, Lcom/miui/home/recents/event/PullVerticalEvent;

    invoke-direct {p1}, Lcom/miui/home/recents/event/PullVerticalEvent;-><init>()V

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/anim/StateManager;->sendEvent(Lcom/miui/home/recents/event/Event;)V

    return v1

    .line 164
    :cond_b
    iget-object v0, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mDetector:Lcom/miui/home/launcher/touch/SwipeDetector;

    invoke-virtual {v0}, Lcom/miui/home/launcher/touch/SwipeDetector;->isDraggingOrSettling()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 166
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "feed intercept FeedSwipeController mDetector DraggingOrSettling --action->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    if-eqz v0, :cond_d

    .line 169
    iget-object p0, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->addOrRemoveNewHome()V

    :cond_d
    return v0
.end method

.method public final onControllerTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 188
    iget-object p0, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mDetector:Lcom/miui/home/launcher/touch/SwipeDetector;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/touch/SwipeDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onDrag(FF)Z
    .locals 4

    .line 375
    iget p2, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mProgressMultiplier:F

    iget v0, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mDisplacementShift:F

    sub-float v0, p1, v0

    mul-float/2addr p2, v0

    .line 376
    iget v0, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mStartProgress:F

    add-float/2addr p2, v0

    .line 377
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/touch/FeedSwipeController;->updateProgress(F)V

    .line 378
    iget v0, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mDisplacementShift:F

    sub-float v0, p1, v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gez v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    cmpg-float v1, p2, v1

    if-gtz v1, :cond_1

    .line 380
    invoke-direct {p0, v2, v0}, Lcom/miui/home/launcher/touch/FeedSwipeController;->reinitCurrentAnimation(ZZ)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 381
    iput p1, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mDisplacementShift:F

    .line 382
    iget-boolean p1, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mCanBlockFling:Z

    if-eqz p1, :cond_3

    .line 383
    invoke-virtual {p0}, Lcom/miui/home/launcher/touch/FeedSwipeController;->blockFling()V

    goto :goto_1

    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float p2, p2, v1

    if-ltz p2, :cond_2

    .line 387
    invoke-direct {p0, v3, v0}, Lcom/miui/home/launcher/touch/FeedSwipeController;->reinitCurrentAnimation(ZZ)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 388
    iput p1, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mDisplacementShift:F

    .line 389
    iget-boolean p1, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mCanBlockFling:Z

    if-eqz p1, :cond_3

    .line 390
    invoke-virtual {p0}, Lcom/miui/home/launcher/touch/FeedSwipeController;->blockFling()V

    goto :goto_1

    .line 394
    :cond_2
    invoke-virtual {p0}, Lcom/miui/home/launcher/touch/FeedSwipeController;->onEvent()V

    :cond_3
    :goto_1
    return v3
.end method

.method public onDragEnd(FZ)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 408
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/miui/home/launcher/touch/FeedSwipeController;->onDragEnd(FZZLjava/lang/Runnable;)V

    return-void
.end method

.method public onDragEnd(FZLjava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x0

    .line 412
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/miui/home/launcher/touch/FeedSwipeController;->onDragEnd(FZZLjava/lang/Runnable;)V

    return-void
.end method

.method public onDragStart(Z)V
    .locals 2

    .line 222
    iget-object p1, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->cancelAppToHomeAnim()V

    .line 223
    iget-object p1, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mCurrentAnimation:Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 224
    iput-object p1, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mFromState:Lcom/miui/home/launcher/LauncherState;

    .line 225
    iput-object p1, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mToState:Lcom/miui/home/launcher/LauncherState;

    .line 226
    invoke-direct {p0}, Lcom/miui/home/launcher/touch/FeedSwipeController;->cancelAnimationControllers()V

    .line 227
    iget-object p1, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mDetector:Lcom/miui/home/launcher/touch/SwipeDetector;

    invoke-virtual {p1}, Lcom/miui/home/launcher/touch/SwipeDetector;->wasInitialTouchPositive()Z

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/miui/home/launcher/touch/FeedSwipeController;->reinitCurrentAnimation(ZZ)Z

    const/4 p1, 0x0

    .line 228
    iput p1, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mDisplacementShift:F

    goto :goto_0

    .line 230
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/anim/AnimatorPlaybackController;->pause()V

    .line 231
    iget-object p1, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mCurrentAnimation:Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

    invoke-virtual {p1}, Lcom/miui/home/launcher/anim/AnimatorPlaybackController;->getProgressFraction()F

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mStartProgress:F

    .line 233
    :goto_0
    iget-object p1, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mFromState:Lcom/miui/home/launcher/LauncherState;

    sget-object v1, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    if-ne p1, v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mCanBlockFling:Z

    .line 234
    invoke-virtual {p0}, Lcom/miui/home/launcher/touch/FeedSwipeController;->unblockFling()V

    return-void
.end method

.method public onEvent()V
    .locals 4

    .line 475
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mBlockFlingTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xc8

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x0

    .line 476
    iput-boolean v0, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mBlockFling:Z

    :cond_0
    return-void
.end method

.method public onNestScrolling(F)Z
    .locals 1

    const/4 v0, 0x0

    .line 252
    invoke-virtual {p0, p1, v0}, Lcom/miui/home/launcher/touch/FeedSwipeController;->onDrag(FF)Z

    move-result p0

    return p0
.end method

.method public onStartNestScroll()V
    .locals 3

    .line 242
    sget-object v0, Lcom/miui/home/launcher/LauncherState;->FEED_STATE:Lcom/miui/home/launcher/LauncherState;

    iput-object v0, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mFromState:Lcom/miui/home/launcher/LauncherState;

    const/4 v0, 0x0

    .line 243
    iput-object v0, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mToState:Lcom/miui/home/launcher/LauncherState;

    .line 244
    invoke-direct {p0}, Lcom/miui/home/launcher/touch/FeedSwipeController;->cancelAnimationControllers()V

    const/4 v0, 0x0

    .line 245
    invoke-direct {p0, v0, v0}, Lcom/miui/home/launcher/touch/FeedSwipeController;->reinitCurrentAnimation(ZZ)Z

    const/4 v1, 0x0

    .line 246
    iput v1, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mDisplacementShift:F

    .line 247
    iget-object v1, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mFromState:Lcom/miui/home/launcher/LauncherState;

    sget-object v2, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mCanBlockFling:Z

    .line 248
    invoke-virtual {p0}, Lcom/miui/home/launcher/touch/FeedSwipeController;->unblockFling()V

    return-void
.end method

.method public onStateTransitionComplete(Lcom/miui/home/launcher/LauncherState;)V
    .locals 0

    .line 611
    invoke-direct {p0}, Lcom/miui/home/launcher/touch/FeedSwipeController;->cancelAnimationControllers()V

    return-void
.end method

.method public onStateTransitionStart(Lcom/miui/home/launcher/LauncherState;)V
    .locals 0

    return-void
.end method

.method public onStopNestScroll(FZ)V
    .locals 2

    const/4 v0, 0x0

    .line 256
    iput-boolean v0, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mIsNestScrollStart:Z

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 257
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/miui/home/launcher/touch/FeedSwipeController;->onDragEnd(FZZLjava/lang/Runnable;)V

    return-void
.end method

.method protected onSwipeInteractionCompleted(Lcom/miui/home/launcher/LauncherState;)V
    .locals 2

    .line 436
    iget-object v0, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/miui/home/launcher/LauncherStateManager;->goToState(Lcom/miui/home/launcher/LauncherState;Z)V

    .line 437
    invoke-direct {p0}, Lcom/miui/home/launcher/touch/FeedSwipeController;->cancelAnimationControllers()V

    return-void
.end method

.method public requestDisallowInterceptTouchEventHorizontal(Z)V
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mDetector:Lcom/miui/home/launcher/touch/SwipeDetector;

    invoke-virtual {v0}, Lcom/miui/home/launcher/touch/SwipeDetector;->getDirection()Lcom/miui/home/launcher/touch/SwipeDetector$Direction;

    move-result-object v0

    sget-object v1, Lcom/miui/home/launcher/touch/SwipeDetector;->HORIZONTAL:Lcom/miui/home/launcher/touch/SwipeDetector$Direction;

    if-ne v0, v1, :cond_0

    .line 78
    iput-boolean p1, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mDisallowIntercept:Z

    :cond_0
    return-void
.end method

.method public requestDisallowInterceptTouchEventVertical(Z)V
    .locals 2

    .line 84
    iget-object v0, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mDetector:Lcom/miui/home/launcher/touch/SwipeDetector;

    invoke-virtual {v0}, Lcom/miui/home/launcher/touch/SwipeDetector;->getDirection()Lcom/miui/home/launcher/touch/SwipeDetector$Direction;

    move-result-object v0

    sget-object v1, Lcom/miui/home/launcher/touch/SwipeDetector;->VERTICAL:Lcom/miui/home/launcher/touch/SwipeDetector$Direction;

    if-ne v0, v1, :cond_0

    .line 85
    iput-boolean p1, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mDisallowIntercept:Z

    :cond_0
    return-void
.end method

.method public setStartNestedScroll(Z)V
    .locals 0

    .line 238
    iput-boolean p1, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mIsNestScrollStart:Z

    return-void
.end method

.method public unblockFling()V
    .locals 2

    const/4 v0, 0x0

    .line 469
    iput-boolean v0, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mBlockFling:Z

    const-wide/16 v0, 0x0

    .line 470
    iput-wide v0, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mBlockFlingTime:J

    return-void
.end method

.method protected updateProgress(F)V
    .locals 0

    .line 401
    iget-object p0, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mCurrentAnimation:Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

    if-eqz p0, :cond_0

    .line 402
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/anim/AnimatorPlaybackController;->setPlayFraction(F)V

    :cond_0
    return-void
.end method

.method protected updateSwipeCompleteAnimation(Landroid/animation/ValueAnimator;JF)V
    .locals 0

    .line 431
    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p0

    .line 432
    invoke-static {p4}, Lcom/miui/home/launcher/anim/Interpolators;->scrollInterpolatorForVelocity(F)Landroid/view/animation/Interpolator;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-void
.end method
