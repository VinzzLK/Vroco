.class public abstract Lcom/miui/home/launcher/overlay/OverlaySwipeController;
.super Ljava/lang/Object;
.source "OverlaySwipeController.java"

# interfaces
.implements Lcom/miui/home/launcher/util/SwipeTouchController;
.implements Lcom/miui/home/launcher/touch/SwipeDetector$Listener;


# instance fields
.field protected final mDetector:Lcom/miui/home/launcher/touch/SwipeDetector;

.field protected mDisallowIntercept:Z

.field protected final mLauncher:Lcom/miui/home/launcher/Launcher;

.field protected mLauncherOverlay:Lcom/miui/home/launcher/overlay/LauncherOverlay;

.field protected mNoIntercept:Z

.field protected mWindowShift:F


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/touch/SwipeDetector$Direction;)V
    .locals 3

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/miui/home/launcher/overlay/OverlaySwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 30
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 33
    invoke-virtual {p1}, Landroid/app/Activity;->getDisplay()Landroid/view/Display;

    move-result-object v1

    .line 37
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 38
    sget-object v1, Lcom/miui/home/launcher/touch/SwipeDetector;->VERTICAL:Lcom/miui/home/launcher/touch/SwipeDetector$Direction;

    if-ne p2, v1, :cond_1

    .line 39
    invoke-virtual {p0}, Lcom/miui/home/launcher/overlay/OverlaySwipeController;->getSwipeDirection()I

    move-result v1

    const/4 v2, 0x1

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-ne v1, v2, :cond_0

    neg-int v0, v0

    :cond_0
    int-to-float v0, v0

    iput v0, p0, Lcom/miui/home/launcher/overlay/OverlaySwipeController;->mWindowShift:F

    goto :goto_0

    .line 40
    :cond_1
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/home/launcher/common/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 41
    iget v0, v0, Landroid/graphics/Point;->x:I

    neg-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/miui/home/launcher/overlay/OverlaySwipeController;->mWindowShift:F

    goto :goto_0

    .line 43
    :cond_2
    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iput v0, p0, Lcom/miui/home/launcher/overlay/OverlaySwipeController;->mWindowShift:F

    .line 45
    :goto_0
    new-instance v0, Lcom/miui/home/launcher/touch/SwipeDetector;

    invoke-direct {v0, p1, p0, p2}, Lcom/miui/home/launcher/touch/SwipeDetector;-><init>(Landroid/content/Context;Lcom/miui/home/launcher/touch/SwipeDetector$Listener;Lcom/miui/home/launcher/touch/SwipeDetector$Direction;)V

    iput-object v0, p0, Lcom/miui/home/launcher/overlay/OverlaySwipeController;->mDetector:Lcom/miui/home/launcher/touch/SwipeDetector;

    return-void
.end method


# virtual methods
.method protected abstract canInterceptTouch(Landroid/view/MotionEvent;)Z
.end method

.method public abstract getReconnectSlop()I
.end method

.method public getSwipeDetectorTouchSlop()F
    .locals 0

    .line 154
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/OverlaySwipeController;->mDetector:Lcom/miui/home/launcher/touch/SwipeDetector;

    if-eqz p0, :cond_0

    .line 155
    invoke-virtual {p0}, Lcom/miui/home/launcher/touch/SwipeDetector;->getTouchSlop()F

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected abstract getSwipeDirection()I
.end method

.method public onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 72
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    .line 73
    iput-boolean v1, p0, Lcom/miui/home/launcher/overlay/OverlaySwipeController;->mNoIntercept:Z

    return v2

    .line 76
    :cond_0
    iget-boolean v0, p0, Lcom/miui/home/launcher/overlay/OverlaySwipeController;->mDisallowIntercept:Z

    if-eqz v0, :cond_1

    return v2

    .line 79
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_4

    .line 80
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/overlay/OverlaySwipeController;->canInterceptTouch(Landroid/view/MotionEvent;)Z

    move-result v0

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/miui/home/launcher/overlay/OverlaySwipeController;->mNoIntercept:Z

    if-eqz v0, :cond_2

    return v2

    .line 85
    :cond_2
    invoke-virtual {p0}, Lcom/miui/home/launcher/overlay/OverlaySwipeController;->getSwipeDirection()I

    move-result v0

    if-nez v0, :cond_3

    .line 87
    iput-boolean v1, p0, Lcom/miui/home/launcher/overlay/OverlaySwipeController;->mNoIntercept:Z

    return v2

    .line 90
    :cond_3
    iget-object v1, p0, Lcom/miui/home/launcher/overlay/OverlaySwipeController;->mDetector:Lcom/miui/home/launcher/touch/SwipeDetector;

    invoke-virtual {v1, v0, v2}, Lcom/miui/home/launcher/touch/SwipeDetector;->setDetectableScrollConditions(IZ)V

    .line 92
    :cond_4
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/OverlaySwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isInEditing()Z

    move-result v0

    if-eqz v0, :cond_5

    return v2

    .line 95
    :cond_5
    iget-boolean v0, p0, Lcom/miui/home/launcher/overlay/OverlaySwipeController;->mNoIntercept:Z

    if-eqz v0, :cond_6

    return v2

    .line 99
    :cond_6
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/overlay/OverlaySwipeController;->onControllerTouchEvent(Landroid/view/MotionEvent;)Z

    .line 100
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/OverlaySwipeController;->mDetector:Lcom/miui/home/launcher/touch/SwipeDetector;

    invoke-virtual {p0}, Lcom/miui/home/launcher/touch/SwipeDetector;->isDraggingOrSettling()Z

    move-result p0

    return p0
.end method

.method public onControllerTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 109
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/OverlaySwipeController;->mDetector:Lcom/miui/home/launcher/touch/SwipeDetector;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/touch/SwipeDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onDrag(FF)Z
    .locals 0

    .line 123
    iget-object p2, p0, Lcom/miui/home/launcher/overlay/OverlaySwipeController;->mLauncherOverlay:Lcom/miui/home/launcher/overlay/LauncherOverlay;

    if-eqz p2, :cond_0

    .line 124
    iget p0, p0, Lcom/miui/home/launcher/overlay/OverlaySwipeController;->mWindowShift:F

    div-float/2addr p1, p0

    const/4 p0, 0x0

    invoke-interface {p2, p1, p0}, Lcom/miui/home/launcher/overlay/LauncherOverlay;->onScrollChange(FZ)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public onDragEnd(FZ)V
    .locals 2

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDragEnd: mLauncherOverlay:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/launcher/overlay/OverlaySwipeController;->mLauncherOverlay:Lcom/miui/home/launcher/overlay/LauncherOverlay;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher.OverlaySwipe"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/OverlaySwipeController;->mLauncherOverlay:Lcom/miui/home/launcher/overlay/LauncherOverlay;

    if-eqz v0, :cond_0

    .line 133
    invoke-interface {v0, p1, p2}, Lcom/miui/home/launcher/overlay/LauncherOverlay;->onScrollInteractionEnd(FZ)V

    goto :goto_1

    .line 134
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/overlay/OverlaySwipeController;->mDetector:Lcom/miui/home/launcher/touch/SwipeDetector;

    invoke-virtual {p1}, Lcom/miui/home/launcher/touch/SwipeDetector;->getDisplacement()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-virtual {p0}, Lcom/miui/home/launcher/overlay/OverlaySwipeController;->getReconnectSlop()I

    move-result p2

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-ltz p1, :cond_3

    .line 135
    iget-object p1, p0, Lcom/miui/home/launcher/overlay/OverlaySwipeController;->mDetector:Lcom/miui/home/launcher/touch/SwipeDetector;

    invoke-virtual {p1}, Lcom/miui/home/launcher/touch/SwipeDetector;->getDirection()Lcom/miui/home/launcher/touch/SwipeDetector$Direction;

    move-result-object p1

    sget-object p2, Lcom/miui/home/launcher/touch/SwipeDetector;->HORIZONTAL:Lcom/miui/home/launcher/touch/SwipeDetector$Direction;

    if-ne p1, p2, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    .line 137
    :cond_1
    iget-object p1, p0, Lcom/miui/home/launcher/overlay/OverlaySwipeController;->mDetector:Lcom/miui/home/launcher/touch/SwipeDetector;

    invoke-virtual {p1}, Lcom/miui/home/launcher/touch/SwipeDetector;->getDisplacement()F

    move-result p1

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-lez p1, :cond_2

    const/4 p1, 0x2

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    .line 138
    :goto_0
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p2

    new-instance v0, Lcom/miui/home/launcher/common/messages/OverlayReconnectMessage;

    invoke-direct {v0, p1}, Lcom/miui/home/launcher/common/messages/OverlayReconnectMessage;-><init>(I)V

    invoke-virtual {p2, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    const-string p1, "reconnect on drag end"

    .line 139
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/miui/home/launcher/overlay/OverlaySwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    iget-object p0, p0, Lcom/miui/home/launcher/overlay/OverlaySwipeController;->mDetector:Lcom/miui/home/launcher/touch/SwipeDetector;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lcom/miui/home/launcher/overlay/OverlaySwipeController$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/miui/home/launcher/overlay/OverlaySwipeController$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/launcher/touch/SwipeDetector;)V

    invoke-static {p1, p2}, Lcom/miui/home/launcher/util/MainThreadHelper;->sendAsyncRunnable(Landroid/content/Context;Ljava/lang/Runnable;)V

    return-void
.end method

.method public onDragStart(Z)V
    .locals 0

    .line 114
    iget-object p1, p0, Lcom/miui/home/launcher/overlay/OverlaySwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->cancelAppToHomeAnim()V

    .line 115
    iget-object p1, p0, Lcom/miui/home/launcher/overlay/OverlaySwipeController;->mLauncherOverlay:Lcom/miui/home/launcher/overlay/LauncherOverlay;

    if-eqz p1, :cond_0

    .line 116
    invoke-interface {p1}, Lcom/miui/home/launcher/overlay/LauncherOverlay;->onScrollInteractionBegin()V

    .line 117
    iget-object p1, p0, Lcom/miui/home/launcher/overlay/OverlaySwipeController;->mLauncherOverlay:Lcom/miui/home/launcher/overlay/LauncherOverlay;

    invoke-virtual {p0}, Lcom/miui/home/launcher/overlay/OverlaySwipeController;->getSwipeDirection()I

    move-result p0

    invoke-interface {p1, p0}, Lcom/miui/home/launcher/overlay/LauncherOverlay;->setSwipeDirection(I)V

    :cond_0
    return-void
.end method

.method public requestDisallowInterceptTouchEventHorizontal(Z)V
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/OverlaySwipeController;->mDetector:Lcom/miui/home/launcher/touch/SwipeDetector;

    invoke-virtual {v0}, Lcom/miui/home/launcher/touch/SwipeDetector;->getDirection()Lcom/miui/home/launcher/touch/SwipeDetector$Direction;

    move-result-object v0

    sget-object v1, Lcom/miui/home/launcher/touch/SwipeDetector;->HORIZONTAL:Lcom/miui/home/launcher/touch/SwipeDetector$Direction;

    if-ne v0, v1, :cond_0

    .line 59
    iput-boolean p1, p0, Lcom/miui/home/launcher/overlay/OverlaySwipeController;->mDisallowIntercept:Z

    :cond_0
    return-void
.end method

.method public requestDisallowInterceptTouchEventVertical(Z)V
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/OverlaySwipeController;->mDetector:Lcom/miui/home/launcher/touch/SwipeDetector;

    invoke-virtual {v0}, Lcom/miui/home/launcher/touch/SwipeDetector;->getDirection()Lcom/miui/home/launcher/touch/SwipeDetector$Direction;

    move-result-object v0

    sget-object v1, Lcom/miui/home/launcher/touch/SwipeDetector;->VERTICAL:Lcom/miui/home/launcher/touch/SwipeDetector$Direction;

    if-ne v0, v1, :cond_0

    .line 66
    iput-boolean p1, p0, Lcom/miui/home/launcher/overlay/OverlaySwipeController;->mDisallowIntercept:Z

    :cond_0
    return-void
.end method

.method public setLauncherOverlay(Lcom/miui/home/launcher/overlay/LauncherOverlay;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/miui/home/launcher/overlay/OverlaySwipeController;->mLauncherOverlay:Lcom/miui/home/launcher/overlay/LauncherOverlay;

    return-void
.end method
