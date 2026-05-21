.class public Lcom/miui/home/recents/views/TaskStackViewVerticalScroller;
.super Lcom/miui/home/recents/views/TaskStackViewScroller;
.source "TaskStackViewVerticalScroller.java"


# instance fields
.field private mExitRecentVelocityThreshold:I

.field private mFlingDownY:F

.field private mPhysicalScroller:Lcom/miui/home/recents/util/PhysicalScroller;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/home/recents/views/TaskStackViewScroller$TaskStackViewScrollerCallback;Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/recents/views/TaskStackViewScroller;-><init>(Landroid/content/Context;Lcom/miui/home/recents/views/TaskStackViewScroller$TaskStackViewScrollerCallback;Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;)V

    const/16 p2, 0x4b0

    .line 19
    iput p2, p0, Lcom/miui/home/recents/views/TaskStackViewVerticalScroller;->mExitRecentVelocityThreshold:I

    .line 24
    new-instance p2, Lcom/miui/home/recents/util/PhysicalScroller;

    invoke-direct {p2}, Lcom/miui/home/recents/util/PhysicalScroller;-><init>()V

    iput-object p2, p0, Lcom/miui/home/recents/views/TaskStackViewVerticalScroller;->mPhysicalScroller:Lcom/miui/home/recents/util/PhysicalScroller;

    .line 25
    iget p2, p0, Lcom/miui/home/recents/views/TaskStackViewVerticalScroller;->mExitRecentVelocityThreshold:I

    int-to-float p2, p2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p2, p1

    float-to-int p1, p2

    iput p1, p0, Lcom/miui/home/recents/views/TaskStackViewVerticalScroller;->mExitRecentVelocityThreshold:I

    return-void
.end method


# virtual methods
.method animateBoundScroll(I)V
    .locals 6

    .line 53
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v0

    .line 54
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/TaskStackViewScroller;->getBoundedStackScroll(F)F

    move-result v1

    .line 55
    invoke-static {v1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_2

    const v2, -0x41b33333    # -0.2f

    cmpg-float v2, v0, v2

    if-ltz v2, :cond_1

    .line 56
    iget v2, p0, Lcom/miui/home/recents/views/TaskStackViewVerticalScroller;->mExitRecentVelocityThreshold:I

    if-le p1, v2, :cond_0

    float-to-double v2, v0

    const-wide v4, -0x405147ae0ccccccdL    # -0.06000000089406967

    cmpg-double p1, v2, v4

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 64
    invoke-virtual {p0, v1, p1}, Lcom/miui/home/recents/views/TaskStackViewScroller;->animateScroll(FLjava/lang/Runnable;)V

    goto :goto_1

    :cond_1
    :goto_0
    const-string p0, "dropDown"

    .line 58
    invoke-static {p0}, Lcom/miui/home/launcher/AnalyticalDataCollectorForRecents;->sendHideRecentsEvent(Ljava/lang/String;)V

    .line 60
    sget-object p0, Lcom/miui/home/recents/anim/StateManager;->Companion:Lcom/miui/home/recents/anim/StateManager$Companion;

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object p0

    new-instance p1, Lcom/miui/home/recents/event/RecentsPullExitEvent;

    invoke-direct {p1}, Lcom/miui/home/recents/event/RecentsPullExitEvent;-><init>()V

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/anim/StateManager;->sendEvent(Lcom/miui/home/recents/event/Event;)V

    .line 61
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p0

    new-instance p1, Lcom/miui/home/recents/messages/HideRecentsEvent;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1, v0, v1}, Lcom/miui/home/recents/messages/HideRecentsEvent;-><init>(ZZZZ)V

    invoke-virtual {p0, p1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_2
    :goto_1
    return-void
.end method

.method computeScroll()Z
    .locals 4

    .line 72
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackViewVerticalScroller;->mPhysicalScroller:Lcom/miui/home/recents/util/PhysicalScroller;

    invoke-virtual {v0}, Lcom/miui/home/recents/util/PhysicalScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackViewScroller;->mLayoutAlgorithm:Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    iget v1, p0, Lcom/miui/home/recents/views/TaskStackViewVerticalScroller;->mFlingDownY:F

    iget-object v2, p0, Lcom/miui/home/recents/views/TaskStackViewVerticalScroller;->mPhysicalScroller:Lcom/miui/home/recents/util/PhysicalScroller;

    invoke-virtual {v2}, Lcom/miui/home/recents/util/PhysicalScroller;->getPosition()D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->getDeltaPForY(FF)F

    move-result v0

    .line 74
    iget v1, p0, Lcom/miui/home/recents/views/TaskStackViewScroller;->mFlingDownScrollP:F

    invoke-virtual {p0, v1, v0}, Lcom/miui/home/recents/views/TaskStackViewScroller;->setDeltaStackScroll(FF)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public fling(FFFIIIIIIIII)V
    .locals 0

    .line 34
    iput p1, p0, Lcom/miui/home/recents/views/TaskStackViewScroller;->mFlingDownScrollP:F

    .line 35
    iput p3, p0, Lcom/miui/home/recents/views/TaskStackViewVerticalScroller;->mFlingDownY:F

    .line 36
    iget-object p0, p0, Lcom/miui/home/recents/views/TaskStackViewVerticalScroller;->mPhysicalScroller:Lcom/miui/home/recents/util/PhysicalScroller;

    int-to-double p1, p5

    int-to-double p3, p7

    int-to-double p7, p10

    int-to-double p9, p11

    const-wide p5, 0x3fde79e79e79e79eL    # 0.47619047619047616

    invoke-virtual/range {p0 .. p10}, Lcom/miui/home/recents/util/PhysicalScroller;->startAnimByFriction(DDDDD)V

    return-void
.end method

.method public getNearestMotionlessScrollP(F)F
    .locals 0

    return p1
.end method

.method public scrollToNearestMotionlessPosition()V
    .locals 0

    return-void
.end method

.method stopScroller()V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackViewVerticalScroller;->mPhysicalScroller:Lcom/miui/home/recents/util/PhysicalScroller;

    invoke-virtual {v0}, Lcom/miui/home/recents/util/PhysicalScroller;->isFinish()Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    iget-object p0, p0, Lcom/miui/home/recents/views/TaskStackViewVerticalScroller;->mPhysicalScroller:Lcom/miui/home/recents/util/PhysicalScroller;

    invoke-virtual {p0}, Lcom/miui/home/recents/util/PhysicalScroller;->stopScroll()V

    :cond_0
    return-void
.end method
