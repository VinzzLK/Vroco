.class public Lcom/miui/home/recents/GestureSoscController;
.super Ljava/lang/Object;
.source "GestureSoscController.java"

# interfaces
.implements Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController$SoscSplitScreenListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/recents/GestureSoscController$GestureProgressListener;,
        Lcom/miui/home/recents/GestureSoscController$GestureSoscListener;,
        Lcom/miui/home/recents/GestureSoscController$SingletonHolder;
    }
.end annotation


# instance fields
.field mForbidGestureSplitCallbackTimeOutRunnable:Ljava/lang/Runnable;

.field private final mForbidLaunchSplitCallbackTimeOutRunnable:Ljava/lang/Runnable;

.field private final mGestureProgressListener:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/miui/home/recents/GestureSoscController$GestureProgressListener;",
            ">;"
        }
    .end annotation
.end field

.field private mGestureSoscListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/home/recents/GestureSoscController$GestureSoscListener;",
            ">;"
        }
    .end annotation
.end field

.field private mIsForbidGesture:Z

.field private mIsForbidLaunchSplit:Z

.field private mIsMinimized:Z

.field private mIsPredictMinimized:Z

.field private mLeftOrTopBounds:Landroid/graphics/Rect;

.field private mLeftOrTopRunningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

.field private mMinimizedPosition:I

.field private mMinimizedSize:I

.field private mPreIsMinimized:Z

.field private mPredictAndCallbackState:I

.field private mPredictMinimizedPosition:I

.field private mPredictMinimizedSize:I

.field private mPredictState:I

.field private mRightOrBottomBounds:Landroid/graphics/Rect;

.field private mRightOrBottomRunningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

.field private mRootBounds:Landroid/graphics/Rect;

.field private mState:I

.field private mStateOnGestureStart:I

.field private mTouchRange:I

.field private mVisibleLeftOrTopBounds:Landroid/graphics/Rect;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/GestureSoscController;->mGestureProgressListener:Ljava/util/Set;

    const/4 v0, -0x1

    .line 25
    iput v0, p0, Lcom/miui/home/recents/GestureSoscController;->mState:I

    .line 26
    iput v0, p0, Lcom/miui/home/recents/GestureSoscController;->mStateOnGestureStart:I

    .line 27
    iput v0, p0, Lcom/miui/home/recents/GestureSoscController;->mPredictState:I

    .line 28
    iput v0, p0, Lcom/miui/home/recents/GestureSoscController;->mPredictAndCallbackState:I

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/GestureSoscController;->mGestureSoscListeners:Ljava/util/List;

    const/4 v0, 0x2

    .line 39
    iput v0, p0, Lcom/miui/home/recents/GestureSoscController;->mTouchRange:I

    .line 40
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/miui/home/recents/GestureSoscController;->mRootBounds:Landroid/graphics/Rect;

    .line 41
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/miui/home/recents/GestureSoscController;->mLeftOrTopBounds:Landroid/graphics/Rect;

    .line 42
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/miui/home/recents/GestureSoscController;->mRightOrBottomBounds:Landroid/graphics/Rect;

    .line 45
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/miui/home/recents/GestureSoscController;->mVisibleLeftOrTopBounds:Landroid/graphics/Rect;

    .line 126
    new-instance v0, Lcom/miui/home/recents/GestureSoscController$1;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/GestureSoscController$1;-><init>(Lcom/miui/home/recents/GestureSoscController;)V

    iput-object v0, p0, Lcom/miui/home/recents/GestureSoscController;->mForbidGestureSplitCallbackTimeOutRunnable:Ljava/lang/Runnable;

    .line 174
    new-instance v0, Lcom/miui/home/recents/GestureSoscController$2;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/GestureSoscController$2;-><init>(Lcom/miui/home/recents/GestureSoscController;)V

    iput-object v0, p0, Lcom/miui/home/recents/GestureSoscController;->mForbidLaunchSplitCallbackTimeOutRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/recents/GestureSoscController$1;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/miui/home/recents/GestureSoscController;-><init>()V

    return-void
.end method

.method static synthetic access$202(Lcom/miui/home/recents/GestureSoscController;Z)Z
    .locals 0

    .line 21
    iput-boolean p1, p0, Lcom/miui/home/recents/GestureSoscController;->mIsForbidGesture:Z

    return p1
.end method

.method static synthetic access$302(Lcom/miui/home/recents/GestureSoscController;Z)Z
    .locals 0

    .line 21
    iput-boolean p1, p0, Lcom/miui/home/recents/GestureSoscController;->mIsForbidLaunchSplit:Z

    return p1
.end method

.method public static getInstance()Lcom/miui/home/recents/GestureSoscController;
    .locals 1

    .line 55
    invoke-static {}, Lcom/miui/home/recents/GestureSoscController$SingletonHolder;->access$100()Lcom/miui/home/recents/GestureSoscController;

    move-result-object v0

    return-object v0
.end method

.method private isHalfSplitState(I)Z
    .locals 0

    const/4 p0, 0x1

    if-eqz p1, :cond_1

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :cond_1
    :goto_0
    return p0
.end method

.method private isMinimizeStateChange(ZZ)Z
    .locals 0

    if-eq p1, p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private notifyBackGestureStatusByHalfSplitAndNotMinimizeState(IIZZ)V
    .locals 5

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyBackGestureStatusByHalfSplitAndNotMinimizeState, nowState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " lastState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " nowMinimized = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " lastMinimized = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GestureSoscController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    invoke-direct {p0, p1}, Lcom/miui/home/recents/GestureSoscController;->isHalfSplitState(I)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 199
    invoke-direct {p0, p2}, Lcom/miui/home/recents/GestureSoscController;->isHalfSplitState(I)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p4, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 202
    :goto_0
    invoke-direct {p0, p1}, Lcom/miui/home/recents/GestureSoscController;->isHalfSplitState(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 203
    invoke-direct {p0, p2}, Lcom/miui/home/recents/GestureSoscController;->isHalfSplitState(I)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz p3, :cond_1

    if-nez p4, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    .line 207
    :goto_1
    invoke-direct {p0, p1}, Lcom/miui/home/recents/GestureSoscController;->isHalfSplitState(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 208
    invoke-direct {p0, p2}, Lcom/miui/home/recents/GestureSoscController;->isHalfSplitState(I)Z

    move-result v4

    if-nez v4, :cond_2

    if-nez p3, :cond_2

    move v4, v1

    goto :goto_2

    :cond_2
    move v4, v2

    .line 211
    :goto_2
    invoke-direct {p0, p1}, Lcom/miui/home/recents/GestureSoscController;->isHalfSplitState(I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 212
    invoke-direct {p0, p2}, Lcom/miui/home/recents/GestureSoscController;->isHalfSplitState(I)Z

    move-result p1

    if-eqz p1, :cond_3

    if-nez p3, :cond_3

    if-eqz p4, :cond_3

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    if-nez v0, :cond_6

    if-eqz v3, :cond_4

    goto :goto_4

    :cond_4
    if-nez v4, :cond_5

    if-eqz v1, :cond_7

    .line 219
    :cond_5
    invoke-direct {p0}, Lcom/miui/home/recents/GestureSoscController;->showBackStubWindow()V

    goto :goto_5

    .line 217
    :cond_6
    :goto_4
    invoke-direct {p0}, Lcom/miui/home/recents/GestureSoscController;->notifyBackGestureStatusByLauncherState()V

    :cond_7
    :goto_5
    return-void
.end method

.method private notifyBackGestureStatusByLauncherState()V
    .locals 0

    .line 232
    invoke-static {}, Lcom/miui/home/recents/ActivityObserverLauncherImpl;->getInstance()Lcom/miui/home/recents/ActivityObserverLauncherImpl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/recents/ActivityObserverLauncherImpl;->clearTopActivity()V

    .line 233
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 235
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->notifyBackGestureStatus()V

    :cond_0
    return-void
.end method

.method private notifyBackGestureStatusBySplitState(IIZZ)V
    .locals 1

    .line 184
    invoke-direct {p0, p3, p4}, Lcom/miui/home/recents/GestureSoscController;->isMinimizeStateChange(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    invoke-direct {p0}, Lcom/miui/home/recents/GestureSoscController;->notifyBackGestureStatusByLauncherState()V

    .line 189
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/home/recents/GestureSoscController;->notifyBackGestureStatusByHalfSplitAndNotMinimizeState(IIZZ)V

    return-void
.end method

.method private postStopForbidGestureRunnable()V
    .locals 3

    .line 143
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    invoke-virtual {v0}, Lcom/miui/home/library/utils/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/recents/GestureSoscController;->mForbidGestureSplitCallbackTimeOutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 144
    invoke-virtual {v0}, Lcom/miui/home/library/utils/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/miui/home/recents/GestureSoscController;->mForbidGestureSplitCallbackTimeOutRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private showBackStubWindow()V
    .locals 2

    .line 224
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Application;->getRecentsImpl()Lcom/miui/home/recents/BaseRecentsImpl;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    const-string v1, "typefrom_half_split"

    .line 228
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/recents/BaseRecentsImpl;->updateFsgWindowVisibilityState(ZLjava/lang/String;)V

    return-void
.end method

.method private updatePredictMinimizedPosition()I
    .locals 2

    .line 378
    iget-boolean v0, p0, Lcom/miui/home/recents/GestureSoscController;->mIsPredictMinimized:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    .line 379
    iget p0, p0, Lcom/miui/home/recents/GestureSoscController;->mTouchRange:I

    if-nez p0, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    return v1
.end method

.method private updatePredictStateFromGestureStart()V
    .locals 5

    .line 344
    iget v0, p0, Lcom/miui/home/recents/GestureSoscController;->mState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const-string v2, "GestureSoscController"

    if-eqz v0, :cond_5

    const/4 v3, 0x1

    if-eq v0, v3, :cond_3

    const/4 v4, 0x2

    if-eq v0, v4, :cond_0

    const-string p0, "onGestureStart, predict state error."

    .line 372
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 346
    :cond_0
    iget v0, p0, Lcom/miui/home/recents/GestureSoscController;->mTouchRange:I

    if-nez v0, :cond_1

    .line 347
    iput v3, p0, Lcom/miui/home/recents/GestureSoscController;->mPredictState:I

    goto :goto_0

    :cond_1
    if-ne v0, v3, :cond_2

    const/4 v0, 0x0

    .line 349
    iput v0, p0, Lcom/miui/home/recents/GestureSoscController;->mPredictState:I

    goto :goto_0

    .line 351
    :cond_2
    iput v1, p0, Lcom/miui/home/recents/GestureSoscController;->mPredictState:I

    goto :goto_0

    .line 362
    :cond_3
    iget v0, p0, Lcom/miui/home/recents/GestureSoscController;->mTouchRange:I

    if-ne v0, v3, :cond_4

    .line 363
    iput v1, p0, Lcom/miui/home/recents/GestureSoscController;->mPredictState:I

    goto :goto_0

    :cond_4
    const-string p0, "onGestureStart: SINGLE_OPEN_IN_RIGHT_OR_BOTTOM predict state error."

    .line 365
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 355
    :cond_5
    iget v0, p0, Lcom/miui/home/recents/GestureSoscController;->mTouchRange:I

    if-nez v0, :cond_6

    .line 356
    iput v1, p0, Lcom/miui/home/recents/GestureSoscController;->mPredictState:I

    goto :goto_0

    :cond_6
    const-string p0, "onGestureStart: SINGLE_OPEN_IN_LEFT_OR_TOP predict state error."

    .line 358
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 369
    :cond_7
    iput v1, p0, Lcom/miui/home/recents/GestureSoscController;->mPredictState:I

    :goto_0
    return-void
.end method


# virtual methods
.method public addGestureProgressListener(Lcom/miui/home/recents/GestureSoscController$GestureProgressListener;)V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/miui/home/recents/GestureSoscController;->mGestureProgressListener:Ljava/util/Set;

    monitor-enter v0

    .line 72
    :try_start_0
    iget-object p0, p0, Lcom/miui/home/recents/GestureSoscController;->mGestureProgressListener:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 73
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public addGestureSoscListener(Lcom/miui/home/recents/GestureSoscController$GestureSoscListener;)V
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/miui/home/recents/GestureSoscController;->mGestureSoscListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addSoscSplitScreenListener()V
    .locals 1

    .line 59
    invoke-static {}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->getInstance()Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->addSoscSplitScreenListener(Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController$SoscSplitScreenListener;)V

    return-void
.end method

.method public getLaunchHalfSplitTaskPosition()I
    .locals 2

    .line 281
    invoke-virtual {p0}, Lcom/miui/home/recents/GestureSoscController;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    goto :goto_0

    .line 283
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/recents/GestureSoscController;->getState()I

    move-result p0

    if-ne p0, v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    :goto_0
    return v1
.end method

.method public getLeftOrTopBounds()Landroid/graphics/Rect;
    .locals 0

    .line 536
    iget-object p0, p0, Lcom/miui/home/recents/GestureSoscController;->mLeftOrTopBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getLeftOrTopRunningTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 0

    .line 294
    iget-object p0, p0, Lcom/miui/home/recents/GestureSoscController;->mLeftOrTopRunningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    return-object p0
.end method

.method public getPredictAndCallbackState()I
    .locals 0

    .line 485
    iget p0, p0, Lcom/miui/home/recents/GestureSoscController;->mPredictAndCallbackState:I

    return p0
.end method

.method public getPredictState()I
    .locals 0

    .line 489
    iget p0, p0, Lcom/miui/home/recents/GestureSoscController;->mPredictState:I

    return p0
.end method

.method public getRightOrBottoRunningTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 0

    .line 298
    iget-object p0, p0, Lcom/miui/home/recents/GestureSoscController;->mRightOrBottomRunningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    return-object p0
.end method

.method public getRightOrBottomBounds()Landroid/graphics/Rect;
    .locals 0

    .line 544
    iget-object p0, p0, Lcom/miui/home/recents/GestureSoscController;->mRightOrBottomBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getSplitRadio()F
    .locals 2

    .line 519
    iget-object v0, p0, Lcom/miui/home/recents/GestureSoscController;->mRootBounds:Landroid/graphics/Rect;

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_1

    .line 520
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/recents/GestureSoscController;->mVisibleLeftOrTopBounds:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    goto :goto_0

    .line 524
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    iget-object p0, p0, Lcom/miui/home/recents/GestureSoscController;->mRootBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr v0, p0

    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method public getState()I
    .locals 0

    .line 290
    iget p0, p0, Lcom/miui/home/recents/GestureSoscController;->mState:I

    return p0
.end method

.method public isForbidGesture()Z
    .locals 0

    .line 154
    iget-boolean p0, p0, Lcom/miui/home/recents/GestureSoscController;->mIsForbidGesture:Z

    return p0
.end method

.method public isForbidLaunchSplit()Z
    .locals 0

    .line 171
    iget-boolean p0, p0, Lcom/miui/home/recents/GestureSoscController;->mIsForbidLaunchSplit:Z

    return p0
.end method

.method public isHalfSplitAndNotMinimize()Z
    .locals 1

    .line 258
    invoke-virtual {p0}, Lcom/miui/home/recents/GestureSoscController;->isHalfSplitMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/recents/GestureSoscController;->isMinimized()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isHalfSplitMode()Z
    .locals 1

    .line 248
    iget p0, p0, Lcom/miui/home/recents/GestureSoscController;->mState:I

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public isMinimized()Z
    .locals 0

    .line 528
    iget-boolean p0, p0, Lcom/miui/home/recents/GestureSoscController;->mIsMinimized:Z

    return p0
.end method

.method public isMinimizedWhenPreSoScChanged()Z
    .locals 0

    .line 532
    iget-boolean p0, p0, Lcom/miui/home/recents/GestureSoscController;->mPreIsMinimized:Z

    return p0
.end method

.method public isNormalMode()Z
    .locals 1

    .line 244
    iget p0, p0, Lcom/miui/home/recents/GestureSoscController;->mState:I

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isPredictAndCallbackHalfSplitMode()Z
    .locals 2

    .line 493
    invoke-virtual {p0}, Lcom/miui/home/recents/GestureSoscController;->getPredictAndCallbackState()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 494
    invoke-virtual {p0}, Lcom/miui/home/recents/GestureSoscController;->getPredictAndCallbackState()I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public isPredictAndCallbackSplitMode()Z
    .locals 1

    .line 498
    invoke-virtual {p0}, Lcom/miui/home/recents/GestureSoscController;->getPredictAndCallbackState()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSplitMode()Z
    .locals 1

    .line 262
    iget p0, p0, Lcom/miui/home/recents/GestureSoscController;->mState:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSplitRadio1_9Mode()Z
    .locals 6

    .line 273
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFoldDevice()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 276
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/recents/GestureSoscController;->isNormalMode()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/miui/home/recents/GestureSoscController;->mRightOrBottomBounds:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->left:I

    int-to-float p0, p0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p0, v0

    float-to-double v2, p0

    const-wide v4, 0x3fd999999999999aL    # 0.4

    cmpg-double p0, v2, v4

    if-gez p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isSplitRadio9_1Mode()Z
    .locals 6

    .line 266
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFoldDevice()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 269
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/recents/GestureSoscController;->isNormalMode()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/miui/home/recents/GestureSoscController;->mLeftOrTopBounds:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->right:I

    int-to-float p0, p0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p0, v0

    float-to-double v2, p0

    const-wide v4, 0x3fe3333333333333L    # 0.6

    cmpl-double p0, v2, v4

    if-lez p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isTouchCenterRange()Z
    .locals 1

    .line 515
    iget p0, p0, Lcom/miui/home/recents/GestureSoscController;->mTouchRange:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isTouchSingleApp()Z
    .locals 1

    .line 502
    iget p0, p0, Lcom/miui/home/recents/GestureSoscController;->mTouchRange:I

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public onGestureEnd(IZ)V
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    const/4 v5, 0x2

    if-ne v1, v5, :cond_1

    move v6, v3

    goto :goto_1

    :cond_1
    move v6, v2

    :goto_1
    if-nez v4, :cond_3

    if-eqz v6, :cond_2

    goto :goto_2

    :cond_2
    move v7, v2

    goto :goto_3

    :cond_3
    :goto_2
    move v7, v3

    :goto_3
    const/4 v8, 0x3

    if-ne v1, v8, :cond_4

    move v1, v3

    goto :goto_4

    :cond_4
    move v1, v2

    .line 397
    :goto_4
    iget v8, v0, Lcom/miui/home/recents/GestureSoscController;->mState:I

    iget v9, v0, Lcom/miui/home/recents/GestureSoscController;->mStateOnGestureStart:I

    if-eq v8, v9, :cond_5

    .line 398
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/recents/GestureSoscController;->updatePredictStateFromGestureStart()V

    .line 401
    :cond_5
    iget v8, v0, Lcom/miui/home/recents/GestureSoscController;->mState:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_c

    if-eqz v8, :cond_b

    if-eq v8, v3, :cond_a

    if-eq v8, v5, :cond_6

    const-string v2, "GestureSoscController"

    const-string v3, "onGestureEnd, predict state error."

    .line 443
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_6
    if-eqz v4, :cond_7

    .line 403
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/GestureSoscController;->isTouchCenterRange()Z

    move-result v2

    if-eqz v2, :cond_7

    if-eqz p2, :cond_7

    .line 404
    iput v5, v0, Lcom/miui/home/recents/GestureSoscController;->mPredictState:I

    goto :goto_5

    :cond_7
    if-eqz v4, :cond_8

    .line 407
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/GestureSoscController;->isTouchCenterRange()Z

    move-result v2

    if-eqz v2, :cond_8

    if-nez p2, :cond_8

    .line 408
    iput v9, v0, Lcom/miui/home/recents/GestureSoscController;->mPredictState:I

    goto :goto_5

    :cond_8
    if-eqz v4, :cond_9

    .line 411
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/GestureSoscController;->isTouchSingleApp()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 412
    iput v5, v0, Lcom/miui/home/recents/GestureSoscController;->mPredictState:I

    goto :goto_5

    :cond_9
    if-eqz v6, :cond_f

    .line 416
    iput v5, v0, Lcom/miui/home/recents/GestureSoscController;->mPredictState:I

    goto :goto_5

    :cond_a
    if-eqz v6, :cond_f

    .line 426
    iput v3, v0, Lcom/miui/home/recents/GestureSoscController;->mPredictState:I

    goto :goto_5

    :cond_b
    if-eqz v6, :cond_f

    .line 421
    iput v2, v0, Lcom/miui/home/recents/GestureSoscController;->mPredictState:I

    goto :goto_5

    :cond_c
    if-eqz v4, :cond_d

    if-eqz p2, :cond_d

    .line 431
    iput v5, v0, Lcom/miui/home/recents/GestureSoscController;->mPredictState:I

    goto :goto_5

    :cond_d
    if-eqz v4, :cond_e

    if-nez p2, :cond_e

    .line 435
    iput v9, v0, Lcom/miui/home/recents/GestureSoscController;->mPredictState:I

    goto :goto_5

    :cond_e
    if-eqz v6, :cond_f

    .line 439
    iput v9, v0, Lcom/miui/home/recents/GestureSoscController;->mPredictState:I

    :cond_f
    :goto_5
    if-eqz v7, :cond_10

    .line 448
    iget-boolean v2, v0, Lcom/miui/home/recents/GestureSoscController;->mIsMinimized:Z

    iput-boolean v2, v0, Lcom/miui/home/recents/GestureSoscController;->mIsPredictMinimized:Z

    .line 449
    iget v2, v0, Lcom/miui/home/recents/GestureSoscController;->mMinimizedPosition:I

    iput v2, v0, Lcom/miui/home/recents/GestureSoscController;->mPredictMinimizedPosition:I

    .line 450
    iget v2, v0, Lcom/miui/home/recents/GestureSoscController;->mMinimizedSize:I

    iput v2, v0, Lcom/miui/home/recents/GestureSoscController;->mPredictMinimizedSize:I

    .line 453
    :cond_10
    iget v2, v0, Lcom/miui/home/recents/GestureSoscController;->mPredictState:I

    iput v2, v0, Lcom/miui/home/recents/GestureSoscController;->mPredictAndCallbackState:I

    .line 455
    iget-object v2, v0, Lcom/miui/home/recents/GestureSoscController;->mGestureProgressListener:Ljava/util/Set;

    monitor-enter v2

    .line 456
    :try_start_0
    iget-object v3, v0, Lcom/miui/home/recents/GestureSoscController;->mGestureProgressListener:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v9, v4

    check-cast v9, Lcom/miui/home/recents/GestureSoscController$GestureProgressListener;

    .line 457
    iget v10, v0, Lcom/miui/home/recents/GestureSoscController;->mTouchRange:I

    iget-object v11, v0, Lcom/miui/home/recents/GestureSoscController;->mRootBounds:Landroid/graphics/Rect;

    iget-object v12, v0, Lcom/miui/home/recents/GestureSoscController;->mLeftOrTopBounds:Landroid/graphics/Rect;

    iget-object v13, v0, Lcom/miui/home/recents/GestureSoscController;->mRightOrBottomBounds:Landroid/graphics/Rect;

    iget v14, v0, Lcom/miui/home/recents/GestureSoscController;->mPredictState:I

    iget-boolean v15, v0, Lcom/miui/home/recents/GestureSoscController;->mIsPredictMinimized:Z

    iget v4, v0, Lcom/miui/home/recents/GestureSoscController;->mPredictMinimizedPosition:I

    iget v5, v0, Lcom/miui/home/recents/GestureSoscController;->mPredictMinimizedSize:I

    move/from16 v16, v4

    move/from16 v17, v5

    move/from16 v18, v1

    invoke-interface/range {v9 .. v18}, Lcom/miui/home/recents/GestureSoscController$GestureProgressListener;->onGestureEnd(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;IZIIZ)V

    goto :goto_6

    .line 460
    :cond_11
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 462
    invoke-static {}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->getInstance()Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/GestureSoscController;->getPredictState()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->onGestureEnd(I)V

    const-string v1, "GestureSoscController"

    .line 464
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onGestureEnd: mTouchRange = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/miui/home/recents/GestureSoscController;->mTouchRange:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/miui/home/recents/GestureSoscController;->mState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mRootBounds = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/miui/home/recents/GestureSoscController;->mRootBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", mLeftOrTopBounds = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/miui/home/recents/GestureSoscController;->mLeftOrTopBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", mRightOrBottomBounds = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/miui/home/recents/GestureSoscController;->mRightOrBottomBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", mPredictState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/miui/home/recents/GestureSoscController;->mPredictState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mIsPredictMinimized = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v0, Lcom/miui/home/recents/GestureSoscController;->mIsPredictMinimized:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mPredictMinimizedPosition = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/miui/home/recents/GestureSoscController;->mPredictMinimizedPosition:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mPredictMinimizedSize = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/miui/home/recents/GestureSoscController;->mPredictMinimizedSize:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception v0

    .line 460
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onGestureStart(I)V
    .locals 12

    .line 302
    iput p1, p0, Lcom/miui/home/recents/GestureSoscController;->mTouchRange:I

    .line 303
    iget p1, p0, Lcom/miui/home/recents/GestureSoscController;->mState:I

    iput p1, p0, Lcom/miui/home/recents/GestureSoscController;->mStateOnGestureStart:I

    .line 304
    invoke-direct {p0}, Lcom/miui/home/recents/GestureSoscController;->updatePredictStateFromGestureStart()V

    .line 306
    invoke-virtual {p0}, Lcom/miui/home/recents/GestureSoscController;->isTouchSingleApp()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 307
    invoke-virtual {p0}, Lcom/miui/home/recents/GestureSoscController;->isSplitMode()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 308
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPadDevice()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 309
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isScreenOrientationLandscape()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    iput-boolean p1, p0, Lcom/miui/home/recents/GestureSoscController;->mIsPredictMinimized:Z

    .line 311
    invoke-direct {p0}, Lcom/miui/home/recents/GestureSoscController;->updatePredictMinimizedPosition()I

    move-result p1

    iput p1, p0, Lcom/miui/home/recents/GestureSoscController;->mPredictMinimizedPosition:I

    .line 313
    iget-boolean p1, p0, Lcom/miui/home/recents/GestureSoscController;->mIsPredictMinimized:Z

    if-eqz p1, :cond_1

    .line 314
    invoke-static {}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->getInstance()Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->getPreloadMinimizedSize()I

    move-result v0

    :cond_1
    iput v0, p0, Lcom/miui/home/recents/GestureSoscController;->mPredictMinimizedSize:I

    .line 316
    iget p1, p0, Lcom/miui/home/recents/GestureSoscController;->mPredictState:I

    iput p1, p0, Lcom/miui/home/recents/GestureSoscController;->mPredictAndCallbackState:I

    .line 318
    iget-object p1, p0, Lcom/miui/home/recents/GestureSoscController;->mGestureProgressListener:Ljava/util/Set;

    monitor-enter p1

    .line 319
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/recents/GestureSoscController;->mGestureProgressListener:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/miui/home/recents/GestureSoscController$GestureProgressListener;

    .line 320
    iget v3, p0, Lcom/miui/home/recents/GestureSoscController;->mTouchRange:I

    iget-object v4, p0, Lcom/miui/home/recents/GestureSoscController;->mRootBounds:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/miui/home/recents/GestureSoscController;->mLeftOrTopBounds:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/miui/home/recents/GestureSoscController;->mRightOrBottomBounds:Landroid/graphics/Rect;

    iget v7, p0, Lcom/miui/home/recents/GestureSoscController;->mPredictState:I

    iget v8, p0, Lcom/miui/home/recents/GestureSoscController;->mState:I

    iget-boolean v9, p0, Lcom/miui/home/recents/GestureSoscController;->mIsPredictMinimized:Z

    iget v10, p0, Lcom/miui/home/recents/GestureSoscController;->mPredictMinimizedPosition:I

    iget v11, p0, Lcom/miui/home/recents/GestureSoscController;->mPredictMinimizedSize:I

    invoke-interface/range {v2 .. v11}, Lcom/miui/home/recents/GestureSoscController$GestureProgressListener;->onGestureStart(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;IIZII)V

    goto :goto_1

    .line 330
    :cond_2
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p1, "GestureSoscController"

    .line 332
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onGestureStart: mTouchRange = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/recents/GestureSoscController;->mTouchRange:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/recents/GestureSoscController;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mRootBounds = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/recents/GestureSoscController;->mRootBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mLeftOrTopBounds = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/recents/GestureSoscController;->mLeftOrTopBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mRightOrBottomBounds = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/recents/GestureSoscController;->mRightOrBottomBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mPredictState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/recents/GestureSoscController;->mPredictState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mIsPredictMinimized = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/home/recents/GestureSoscController;->mIsPredictMinimized:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mPredictMinimizedPosition = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/recents/GestureSoscController;->mPredictMinimizedPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mPredictMinimizedSize = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/miui/home/recents/GestureSoscController;->mPredictMinimizedSize:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception p0

    .line 330
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public onInitSoscSplitScreen()V
    .locals 0

    return-void
.end method

.method public onPreSoScStateChanged(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;IZZII)V
    .locals 0

    .line 100
    iget-boolean p1, p0, Lcom/miui/home/recents/GestureSoscController;->mIsMinimized:Z

    iput-boolean p1, p0, Lcom/miui/home/recents/GestureSoscController;->mPreIsMinimized:Z

    .line 101
    invoke-virtual {p0}, Lcom/miui/home/recents/GestureSoscController;->startForbidGesture()V

    .line 102
    invoke-virtual {p0}, Lcom/miui/home/recents/GestureSoscController;->startForbidLaunchSplit()V

    return-void
.end method

.method public onSoScStateChanged(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;ZII)V
    .locals 14

    move-object v0, p0

    move/from16 v7, p4

    move/from16 v8, p7

    .line 107
    iget v1, v0, Lcom/miui/home/recents/GestureSoscController;->mState:I

    iget-boolean v2, v0, Lcom/miui/home/recents/GestureSoscController;->mIsMinimized:Z

    invoke-direct {p0, v7, v1, v8, v2}, Lcom/miui/home/recents/GestureSoscController;->notifyBackGestureStatusBySplitState(IIZZ)V

    .line 108
    iput v7, v0, Lcom/miui/home/recents/GestureSoscController;->mState:I

    .line 109
    iput v7, v0, Lcom/miui/home/recents/GestureSoscController;->mPredictAndCallbackState:I

    move-object v9, p1

    .line 110
    iput-object v9, v0, Lcom/miui/home/recents/GestureSoscController;->mRootBounds:Landroid/graphics/Rect;

    move-object/from16 v10, p2

    .line 111
    iput-object v10, v0, Lcom/miui/home/recents/GestureSoscController;->mLeftOrTopBounds:Landroid/graphics/Rect;

    .line 112
    invoke-static/range {p2 .. p2}, Lcom/miui/home/recents/util/Utilities;->cropRectInsideScreenBounds(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/home/recents/GestureSoscController;->mVisibleLeftOrTopBounds:Landroid/graphics/Rect;

    move-object/from16 v11, p3

    .line 113
    iput-object v11, v0, Lcom/miui/home/recents/GestureSoscController;->mRightOrBottomBounds:Landroid/graphics/Rect;

    move-object/from16 v1, p5

    .line 114
    iput-object v1, v0, Lcom/miui/home/recents/GestureSoscController;->mLeftOrTopRunningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    move-object/from16 v1, p6

    .line 115
    iput-object v1, v0, Lcom/miui/home/recents/GestureSoscController;->mRightOrBottomRunningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 116
    iput-boolean v8, v0, Lcom/miui/home/recents/GestureSoscController;->mIsMinimized:Z

    move/from16 v1, p8

    .line 117
    iput v1, v0, Lcom/miui/home/recents/GestureSoscController;->mMinimizedPosition:I

    move/from16 v12, p9

    .line 118
    iput v12, v0, Lcom/miui/home/recents/GestureSoscController;->mMinimizedSize:I

    .line 119
    invoke-virtual {p0}, Lcom/miui/home/recents/GestureSoscController;->stopForbidGesture()V

    .line 120
    invoke-virtual {p0}, Lcom/miui/home/recents/GestureSoscController;->stopForbidLaunchSplit()V

    .line 121
    iget-object v0, v0, Lcom/miui/home/recents/GestureSoscController;->mGestureSoscListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/GestureSoscController$GestureSoscListener;

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p7

    move/from16 v6, p9

    .line 122
    invoke-interface/range {v0 .. v6}, Lcom/miui/home/recents/GestureSoscController$GestureSoscListener;->onSoscStateChanged(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;IZI)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onStagePositionChanged(II)V
    .locals 0

    return-void
.end method

.method public onTaskStageChanged(IIZ)V
    .locals 0

    return-void
.end method

.method public removeGestureSoscListener(Lcom/miui/home/recents/GestureSoscController$GestureSoscListener;)V
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/miui/home/recents/GestureSoscController;->mGestureSoscListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public startForbidGesture()V
    .locals 2

    .line 135
    iget-boolean v0, p0, Lcom/miui/home/recents/GestureSoscController;->mIsForbidGesture:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 136
    iput-boolean v0, p0, Lcom/miui/home/recents/GestureSoscController;->mIsForbidGesture:Z

    const-string v0, "GestureSoscController"

    const-string v1, "startForbidGesture"

    .line 137
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-direct {p0}, Lcom/miui/home/recents/GestureSoscController;->postStopForbidGestureRunnable()V

    :cond_0
    return-void
.end method

.method public startForbidLaunchSplit()V
    .locals 3

    const/4 v0, 0x1

    .line 158
    iput-boolean v0, p0, Lcom/miui/home/recents/GestureSoscController;->mIsForbidLaunchSplit:Z

    const-string v0, "GestureSoscController"

    const-string v1, "startForbidLaunchSplit"

    .line 159
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    invoke-virtual {v0}, Lcom/miui/home/library/utils/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/recents/GestureSoscController;->mForbidLaunchSplitCallbackTimeOutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 161
    invoke-virtual {v0}, Lcom/miui/home/library/utils/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/miui/home/recents/GestureSoscController;->mForbidLaunchSplitCallbackTimeOutRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public stopForbidGesture()V
    .locals 2

    const/4 v0, 0x0

    .line 148
    iput-boolean v0, p0, Lcom/miui/home/recents/GestureSoscController;->mIsForbidGesture:Z

    const-string v0, "GestureSoscController"

    const-string v1, "stopForbidGesture"

    .line 149
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    invoke-virtual {v0}, Lcom/miui/home/library/utils/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/miui/home/recents/GestureSoscController;->mForbidGestureSplitCallbackTimeOutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public stopForbidLaunchSplit()V
    .locals 1

    const/4 v0, 0x0

    .line 165
    iput-boolean v0, p0, Lcom/miui/home/recents/GestureSoscController;->mIsForbidLaunchSplit:Z

    .line 166
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    invoke-virtual {v0}, Lcom/miui/home/library/utils/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/miui/home/recents/GestureSoscController;->mForbidLaunchSplitCallbackTimeOutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-string p0, "GestureSoscController"

    const-string v0, "stopForbidLaunchSplit"

    .line 167
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
