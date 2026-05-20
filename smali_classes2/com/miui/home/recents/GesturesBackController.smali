.class public Lcom/miui/home/recents/GesturesBackController;
.super Ljava/lang/Object;
.source "GesturesBackController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/recents/GesturesBackController$GesturesBackCallback;
    }
.end annotation


# instance fields
.field private mCallback:Lcom/miui/home/recents/GesturesBackController$GesturesBackCallback;

.field private mContinuousBackFinishTime:J

.field private mDownRealY:F

.field private mDownX:F

.field private mDownY:F

.field private mDragDirection:I

.field private mGestureEdgeLeft:I

.field private mGestureEdgeRight:I

.field private volatile mIsGestureAnimationEnabled:Z

.field private mSwipeStatus:I

.field private mWithoutAnimatingDragDirection:I


# direct methods
.method public constructor <init>(Lcom/miui/home/recents/GesturesBackController$GesturesBackCallback;II)V
    .locals 2

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 40
    iput v0, p0, Lcom/miui/home/recents/GesturesBackController;->mDragDirection:I

    const/4 v1, 0x4

    .line 41
    iput v1, p0, Lcom/miui/home/recents/GesturesBackController;->mSwipeStatus:I

    .line 42
    iput v0, p0, Lcom/miui/home/recents/GesturesBackController;->mWithoutAnimatingDragDirection:I

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GesturesBackController init gestureEdgeLeft="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", gestureEdgeRight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GesturesBackController"

    invoke-static {v1, v0}, Lcom/miui/home/launcher/MiuiHomeLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 58
    iput-boolean v0, p0, Lcom/miui/home/recents/GesturesBackController;->mIsGestureAnimationEnabled:Z

    .line 59
    iput-object p1, p0, Lcom/miui/home/recents/GesturesBackController;->mCallback:Lcom/miui/home/recents/GesturesBackController$GesturesBackCallback;

    .line 60
    iput p2, p0, Lcom/miui/home/recents/GesturesBackController;->mGestureEdgeLeft:I

    .line 61
    iput p3, p0, Lcom/miui/home/recents/GesturesBackController;->mGestureEdgeRight:I

    return-void
.end method

.method private isDoFeedBack(I)Z
    .locals 0

    .line 172
    sget-boolean p0, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->sIsSupportHapticV2:Z

    if-nez p0, :cond_0

    const/4 p0, 0x2

    if-ge p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static isFinished(FI)Z
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-ltz v0, :cond_1

    const/high16 v0, 0x43b40000    # 360.0f

    div-float/2addr p0, v0

    const/high16 v0, 0x3f000000    # 0.5f

    cmpl-float p0, p0, v0

    if-gtz p0, :cond_0

    const/4 p0, 0x2

    if-le p1, p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private processPointerEvent(Landroid/view/MotionEvent;Lcom/miui/home/recents/GestureStubView;)V
    .locals 9

    .line 83
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    .line 84
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    .line 86
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/16 v3, 0x8

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_b

    const-string v6, "GesturesBackController"

    const/4 v7, 0x3

    if-eq v2, v5, :cond_4

    if-eq v2, v4, :cond_0

    if-eq v2, v7, :cond_4

    goto/16 :goto_6

    .line 104
    :cond_0
    iget v2, p0, Lcom/miui/home/recents/GesturesBackController;->mSwipeStatus:I

    if-ne v2, v5, :cond_1

    const-string p0, "processPointerEvent, move, break"

    .line 105
    invoke-static {v6, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 110
    :cond_1
    iget v2, p0, Lcom/miui/home/recents/GesturesBackController;->mDragDirection:I

    if-ne v2, v5, :cond_2

    .line 111
    iget v2, p0, Lcom/miui/home/recents/GesturesBackController;->mDownX:F

    sub-float/2addr v0, v2

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/miui/home/recents/GesturesBackController;->mDownX:F

    sub-float v0, v2, v0

    .line 112
    :goto_0
    iget v2, p0, Lcom/miui/home/recents/GesturesBackController;->mDownY:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 113
    iget v2, p0, Lcom/miui/home/recents/GesturesBackController;->mSwipeStatus:I

    if-ne v2, v3, :cond_3

    const/high16 v2, 0x41a00000    # 20.0f

    cmpl-float v2, v0, v2

    if-ltz v2, :cond_3

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_3

    .line 116
    invoke-virtual {p0, v4}, Lcom/miui/home/recents/GesturesBackController;->setSwipeStatus(I)V

    new-array v1, v4, [I

    .line 119
    invoke-virtual {p2, v1}, Landroid/widget/FrameLayout;->getLocationOnScreen([I)V

    .line 124
    iget-object p2, p0, Lcom/miui/home/recents/GesturesBackController;->mCallback:Lcom/miui/home/recents/GesturesBackController$GesturesBackCallback;

    iget-boolean v2, p0, Lcom/miui/home/recents/GesturesBackController;->mIsGestureAnimationEnabled:Z

    iget v3, p0, Lcom/miui/home/recents/GesturesBackController;->mDownRealY:F

    aget v1, v1, v5

    int-to-float v1, v1

    add-float/2addr v3, v1

    invoke-interface {p2, v2, v3}, Lcom/miui/home/recents/GesturesBackController$GesturesBackCallback;->onSwipeStart(ZF)V

    .line 128
    :cond_3
    iget p2, p0, Lcom/miui/home/recents/GesturesBackController;->mSwipeStatus:I

    if-ne p2, v4, :cond_e

    .line 129
    iget-boolean p2, p0, Lcom/miui/home/recents/GesturesBackController;->mIsGestureAnimationEnabled:Z

    if-eqz p2, :cond_e

    .line 130
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    .line 131
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide p1

    sub-long/2addr v1, p1

    long-to-int p1, v1

    int-to-float p1, p1

    div-float p1, v0, p1

    float-to-int p1, p1

    .line 133
    iget-object p0, p0, Lcom/miui/home/recents/GesturesBackController;->mCallback:Lcom/miui/home/recents/GesturesBackController$GesturesBackCallback;

    invoke-static {v0, p1}, Lcom/miui/home/recents/GesturesBackController;->isFinished(FI)Z

    move-result p1

    invoke-interface {p0, p1, v0}, Lcom/miui/home/recents/GesturesBackController$GesturesBackCallback;->onSwipeProcess(ZF)V

    goto/16 :goto_6

    .line 139
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v1, 0x0

    if-ne p2, v7, :cond_5

    move p2, v5

    goto :goto_1

    :cond_5
    move p2, v1

    .line 140
    :goto_1
    iget v2, p0, Lcom/miui/home/recents/GesturesBackController;->mSwipeStatus:I

    if-ne v2, v4, :cond_a

    .line 141
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v7

    sub-long/2addr v2, v7

    long-to-int v2, v2

    .line 142
    iget v3, p0, Lcom/miui/home/recents/GesturesBackController;->mDragDirection:I

    if-ne v3, v5, :cond_6

    .line 143
    iget v3, p0, Lcom/miui/home/recents/GesturesBackController;->mDownX:F

    sub-float/2addr v0, v3

    goto :goto_2

    :cond_6
    iget v3, p0, Lcom/miui/home/recents/GesturesBackController;->mDownX:F

    sub-float v0, v3, v0

    :goto_2
    int-to-float v2, v2

    div-float v2, v0, v2

    float-to-int v2, v2

    if-nez p2, :cond_7

    .line 145
    invoke-static {v0, v2}, Lcom/miui/home/recents/GesturesBackController;->isFinished(FI)Z

    move-result p2

    if-eqz p2, :cond_7

    goto :goto_3

    :cond_7
    move v5, v1

    .line 147
    :goto_3
    iget-boolean p2, p0, Lcom/miui/home/recents/GesturesBackController;->mIsGestureAnimationEnabled:Z

    if-eqz p2, :cond_8

    const/16 p2, 0x10

    .line 148
    invoke-virtual {p0, p2}, Lcom/miui/home/recents/GesturesBackController;->setSwipeStatus(I)V

    .line 149
    iget-object p2, p0, Lcom/miui/home/recents/GesturesBackController;->mCallback:Lcom/miui/home/recents/GesturesBackController$GesturesBackCallback;

    invoke-direct {p0, v2}, Lcom/miui/home/recents/GesturesBackController;->isDoFeedBack(I)Z

    move-result v1

    invoke-interface {p2, v5, v0, v1}, Lcom/miui/home/recents/GesturesBackController$GesturesBackCallback;->onSwipeStop(ZFZ)V

    goto :goto_4

    :cond_8
    if-eqz v5, :cond_9

    .line 151
    iget-object p2, p0, Lcom/miui/home/recents/GesturesBackController;->mCallback:Lcom/miui/home/recents/GesturesBackController$GesturesBackCallback;

    invoke-interface {p2}, Lcom/miui/home/recents/GesturesBackController$GesturesBackCallback;->onSwipeStopDirect()V

    .line 154
    :cond_9
    :goto_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/miui/home/recents/GesturesBackController;->mContinuousBackFinishTime:J

    .line 157
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onPointerEvent MotionEvent.ACTION_UP stopGestures isFinish:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " speed:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 161
    :cond_a
    iget-object p1, p0, Lcom/miui/home/recents/GesturesBackController;->mCallback:Lcom/miui/home/recents/GesturesBackController$GesturesBackCallback;

    invoke-interface {p1}, Lcom/miui/home/recents/GesturesBackController$GesturesBackCallback;->onSwipeTriggerFailed()V

    :goto_5
    const/4 p1, -0x1

    .line 164
    iput p1, p0, Lcom/miui/home/recents/GesturesBackController;->mDragDirection:I

    goto :goto_6

    .line 88
    :cond_b
    iput v0, p0, Lcom/miui/home/recents/GesturesBackController;->mDownX:F

    .line 89
    iput v1, p0, Lcom/miui/home/recents/GesturesBackController;->mDownY:F

    .line 90
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/miui/home/recents/GesturesBackController;->mDownRealY:F

    .line 92
    iget p1, p0, Lcom/miui/home/recents/GesturesBackController;->mGestureEdgeLeft:I

    int-to-float p1, p1

    cmpg-float p1, v0, p1

    if-gtz p1, :cond_c

    .line 93
    invoke-virtual {p0, v3}, Lcom/miui/home/recents/GesturesBackController;->setSwipeStatus(I)V

    .line 94
    iput v5, p0, Lcom/miui/home/recents/GesturesBackController;->mDragDirection:I

    goto :goto_6

    .line 95
    :cond_c
    iget p1, p0, Lcom/miui/home/recents/GesturesBackController;->mGestureEdgeRight:I

    int-to-float p1, p1

    cmpl-float p1, v0, p1

    if-ltz p1, :cond_d

    .line 96
    invoke-virtual {p0, v3}, Lcom/miui/home/recents/GesturesBackController;->setSwipeStatus(I)V

    .line 97
    iput v4, p0, Lcom/miui/home/recents/GesturesBackController;->mDragDirection:I

    goto :goto_6

    .line 99
    :cond_d
    invoke-virtual {p0, v5}, Lcom/miui/home/recents/GesturesBackController;->setSwipeStatus(I)V

    :cond_e
    :goto_6
    return-void
.end method


# virtual methods
.method enableGestureBackAnimation(Z)V
    .locals 0

    .line 184
    iput-boolean p1, p0, Lcom/miui/home/recents/GesturesBackController;->mIsGestureAnimationEnabled:Z

    return-void
.end method

.method public onPointerEvent(Landroid/view/MotionEvent;Lcom/miui/home/recents/GestureStubView;)V
    .locals 2

    .line 66
    iget v0, p0, Lcom/miui/home/recents/GesturesBackController;->mSwipeStatus:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 67
    iget-object v0, p0, Lcom/miui/home/recents/GesturesBackController;->mCallback:Lcom/miui/home/recents/GesturesBackController$GesturesBackCallback;

    invoke-interface {v0}, Lcom/miui/home/recents/GesturesBackController$GesturesBackCallback;->onActionDownInAnim()V

    const/4 v0, 0x4

    .line 68
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/GesturesBackController;->setSwipeStatus(I)V

    .line 69
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_1

    .line 70
    invoke-direct {p0, p1, p2}, Lcom/miui/home/recents/GesturesBackController;->processPointerEvent(Landroid/view/MotionEvent;Lcom/miui/home/recents/GestureStubView;)V

    const-string p0, "GesturesBackController"

    const-string p1, "mSwipeStatus == SWIPE_STATUS_ANIMATING, processPointerEvent"

    .line 72
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 77
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/miui/home/recents/GesturesBackController;->processPointerEvent(Landroid/view/MotionEvent;Lcom/miui/home/recents/GestureStubView;)V

    :cond_1
    :goto_0
    return-void
.end method

.method setGestureEdgeWidth(II)V
    .locals 2

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setGestureEdgeWidth, gestureEdgeLeft="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", gestureEdgeRight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GesturesBackController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iput p1, p0, Lcom/miui/home/recents/GesturesBackController;->mGestureEdgeLeft:I

    .line 180
    iput p2, p0, Lcom/miui/home/recents/GesturesBackController;->mGestureEdgeRight:I

    return-void
.end method

.method public setSwipeStatus(I)V
    .locals 2

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSwipeStatus, swipeStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GesturesBackController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iput p1, p0, Lcom/miui/home/recents/GesturesBackController;->mSwipeStatus:I

    return-void
.end method
