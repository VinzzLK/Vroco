.class Lcom/miui/home/recents/views/TaskStackViewTouchHandler;
.super Ljava/lang/Object;
.source "TaskStackViewTouchHandler.java"

# interfaces
.implements Lcom/miui/home/recents/views/SwipeHelperForRecents$Callback;


# static fields
.field private static final OVERSCROLL_INTERP:Landroid/view/animation/Interpolator;


# instance fields
.field mActivePointerId:I

.field private mActiveTaskView:Lcom/miui/home/recents/views/TaskView;

.field private mCurrentTaskTransforms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/recents/views/TaskViewTransform;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/shared/recents/model/Task;",
            ">;"
        }
    .end annotation
.end field

.field private mDownScrollP:F

.field private mDownX:F

.field private mDownY:F

.field private mFinalTaskTransforms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/recents/views/TaskViewTransform;",
            ">;"
        }
    .end annotation
.end field

.field mInterceptedBySwipeHelper:Z

.field private mIsScrolling:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field mLastScrollP:F

.field private mLastY:F

.field mMaximumVelocity:I

.field mMinimumVelocity:I

.field private mOldStackScroll:F

.field private mOverscrollSize:I

.field mRecentsTaskLockDistance:I

.field private mSameTopPositionTaskView:Lcom/miui/home/recents/views/TaskView;

.field private mScrollDirection:I

.field private mScrollDown:Z

.field mScrollTouchSlop:I

.field private mScroller:Lcom/miui/home/recents/views/TaskStackViewScroller;

.field private mSnappingChild:Z

.field private mSwipeHelper:Lcom/miui/home/recents/views/SwipeHelperForRecents;

.field private mSwipeHelperAnimations:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/view/View;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetStackScroll:F

.field private mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

.field private mTmpTransform:Lcom/miui/home/recents/views/TaskViewTransform;

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field final mWindowTouchSlop:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 72
    new-instance v7, Landroid/graphics/Path;

    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    const/4 v0, 0x0

    .line 73
    invoke-virtual {v7, v0, v0}, Landroid/graphics/Path;->moveTo(FF)V

    const v1, 0x3e4ccccd    # 0.2f

    const v2, 0x3e333333    # 0.175f

    const/high16 v3, 0x3e800000    # 0.25f

    const v4, 0x3e99999a    # 0.3f

    const/high16 v5, 0x3f800000    # 1.0f

    const v6, 0x3e99999a    # 0.3f

    move-object v0, v7

    .line 74
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 75
    new-instance v0, Lcom/miui/home/recents/util/FreePathInterpolator;

    invoke-direct {v0, v7}, Lcom/miui/home/recents/util/FreePathInterpolator;-><init>(Landroid/graphics/Path;)V

    sput-object v0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->OVERSCROLL_INTERP:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/miui/home/recents/views/TaskStackView;Lcom/miui/home/recents/views/TaskStackViewScroller;)V
    .locals 2

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 87
    iput v0, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mActivePointerId:I

    const/4 v0, 0x0

    .line 90
    iput-object v0, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mActiveTaskView:Lcom/miui/home/recents/views/TaskView;

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mCurrentTasks:Ljava/util/ArrayList;

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mCurrentTaskTransforms:Ljava/util/ArrayList;

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mFinalTaskTransforms:Ljava/util/ArrayList;

    .line 103
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mSwipeHelperAnimations:Landroid/util/ArrayMap;

    .line 104
    new-instance v0, Lcom/miui/home/recents/views/TaskViewTransform;

    invoke-direct {v0}, Lcom/miui/home/recents/views/TaskViewTransform;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mTmpTransform:Lcom/miui/home/recents/views/TaskViewTransform;

    const/4 v0, 0x0

    .line 114
    iput-boolean v0, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mScrollDown:Z

    .line 118
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 119
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 120
    iput-object p2, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    .line 121
    iput-object p3, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/miui/home/recents/views/TaskStackViewScroller;

    .line 122
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result p2

    iput p2, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mMinimumVelocity:I

    .line 123
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p2

    iput p2, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mMaximumVelocity:I

    const p2, 0x7f070637

    .line 124
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mScrollTouchSlop:I

    .line 125
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledWindowTouchSlop()I

    move-result p2

    iput p2, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mWindowTouchSlop:I

    const p2, 0x7f070617

    .line 126
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mOverscrollSize:I

    const p2, 0x7f07061e

    .line 127
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mRecentsTaskLockDistance:I

    .line 129
    new-instance p2, Lcom/miui/home/recents/views/TaskStackViewTouchHandler$1;

    invoke-direct {p2, p0, p0, p1}, Lcom/miui/home/recents/views/TaskStackViewTouchHandler$1;-><init>(Lcom/miui/home/recents/views/TaskStackViewTouchHandler;Lcom/miui/home/recents/views/SwipeHelperForRecents$Callback;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mSwipeHelper:Lcom/miui/home/recents/views/SwipeHelperForRecents;

    const/4 p0, 0x1

    .line 171
    invoke-virtual {p2, p0}, Lcom/miui/home/recents/views/SwipeHelperForRecents;->setDisableHardwareLayers(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/recents/views/TaskStackViewTouchHandler;)Landroid/util/ArrayMap;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mSwipeHelperAnimations:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static synthetic access$102(Lcom/miui/home/recents/views/TaskStackViewTouchHandler;Z)Z
    .locals 0

    .line 62
    iput-boolean p1, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mSnappingChild:Z

    return p1
.end method

.method static synthetic access$200(Lcom/miui/home/recents/views/TaskStackViewTouchHandler;)Z
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->isScrollDirectionY()Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/miui/home/recents/views/TaskStackViewTouchHandler;)Lcom/miui/home/recents/views/TaskView;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mSameTopPositionTaskView:Lcom/miui/home/recents/views/TaskView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/miui/home/recents/views/TaskStackViewTouchHandler;)Lcom/miui/home/recents/views/TaskStackView;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    return-object p0
.end method

.method private calcTargetStackScroll(FLcom/miui/home/recents/views/TaskView;)F
    .locals 2

    .line 616
    invoke-direct {p0}, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->isScrollDirectionY()Z

    move-result v0

    if-nez v0, :cond_1

    .line 617
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackView;->getStack()Lcom/android/systemui/shared/recents/model/TaskStack;

    move-result-object v0

    invoke-virtual {p2}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/android/systemui/shared/recents/model/TaskStack;->indexOfStackTask(Lcom/android/systemui/shared/recents/model/Task;)I

    move-result p2

    .line 618
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/miui/home/recents/views/TaskStackViewScroller;

    .line 619
    invoke-virtual {v0, p1}, Lcom/miui/home/recents/views/TaskStackViewScroller;->getNearestMotionlessScrollP(F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v1, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {v1}, Lcom/miui/home/recents/views/TaskStackView;->getStackAlgorithm()Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->getScrollPGap()F

    move-result v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    if-ge p2, v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    sub-int/2addr v0, p2

    int-to-float p2, v0

    .line 622
    iget-object p0, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    .line 623
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackView;->getStackAlgorithm()Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->getScrollPGap()F

    move-result p0

    mul-float/2addr p2, p0

    add-float/2addr p1, p2

    :cond_1
    return p1
.end method

.method private canStartScroll(FF)Z
    .locals 3

    .line 263
    invoke-direct {p0}, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->isScrollDirectionY()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 264
    iget p0, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mScrollTouchSlop:I

    int-to-float p0, p0

    cmpl-float p0, p1, p0

    if-lez p0, :cond_0

    cmpl-float p0, p1, p2

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    .line 266
    :cond_1
    iget p0, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mScrollTouchSlop:I

    int-to-float p0, p0

    cmpl-float p0, p2, p0

    if-lez p0, :cond_2

    cmpl-float p0, p2, p1

    if-lez p0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1
.end method

.method private findSameTopPositionTaskView(Lcom/miui/home/recents/views/TaskView;)Lcom/miui/home/recents/views/TaskView;
    .locals 5

    .line 810
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackView;->getStack()Lcom/android/systemui/shared/recents/model/TaskStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v0

    .line 811
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 812
    iget-object v2, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {v2, v3}, Lcom/miui/home/recents/views/TaskStackView;->getChildViewForTask(Lcom/android/systemui/shared/recents/model/Task;)Lcom/miui/home/recents/views/TaskView;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 813
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    if-eq v2, p1, :cond_0

    .line 814
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getTop()I

    move-result v3

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getTop()I

    move-result v4

    if-ne v3, v4, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private findViewAtPoint(FF)Lcom/miui/home/recents/views/TaskView;
    .locals 4

    .line 797
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackView;->getStack()Lcom/android/systemui/shared/recents/model/TaskStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v0

    .line 798
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 800
    iget-object v2, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {v2, v3}, Lcom/miui/home/recents/views/TaskStackView;->getChildViewForTask(Lcom/android/systemui/shared/recents/model/Task;)Lcom/miui/home/recents/views/TaskView;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 801
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    .line 802
    invoke-virtual {v3, p1, p2, v2}, Lcom/miui/home/recents/views/TaskStackView;->isTouchPointInView(FFLcom/miui/home/recents/views/TaskView;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private getDeltaP(FFFFLcom/miui/home/recents/views/TaskStackLayoutAlgorithm;)F
    .locals 0

    .line 271
    invoke-direct {p0}, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->isScrollDirectionY()Z

    move-result p0

    if-nez p0, :cond_0

    .line 272
    invoke-virtual {p5, p1, p3}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->getDeltaPForX(FF)F

    move-result p0

    return p0

    .line 274
    :cond_0
    invoke-virtual {p5, p2, p4}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->getDeltaPForY(FF)F

    move-result p0

    return p0
.end method

.method private handleTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 24

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    .line 291
    iget-object v0, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackView;->isShowingMenu()Z

    move-result v0

    const/4 v8, 0x1

    if-eqz v0, :cond_0

    return v8

    .line 295
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->initVelocityTrackerIfNotExists()V

    .line 296
    iget-object v0, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackView;->getStackAlgorithm()Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    move-result-object v9

    .line 297
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    const/4 v10, 0x0

    if-eq v0, v8, :cond_12

    const/4 v2, 0x2

    if-eq v0, v2, :cond_7

    const/4 v2, 0x3

    if-eq v0, v2, :cond_5

    const/4 v2, 0x5

    if-eq v0, v2, :cond_4

    const/4 v2, 0x6

    if-eq v0, v2, :cond_1

    goto/16 :goto_8

    .line 398
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 399
    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 400
    iget v3, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mActivePointerId:I

    if-ne v2, v3, :cond_3

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    move v8, v1

    .line 403
    :goto_0
    invoke-virtual {v7, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mActivePointerId:I

    .line 404
    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iput v1, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mDownX:F

    .line 405
    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mDownY:F

    .line 406
    iput v0, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mLastY:F

    .line 407
    iget-object v0, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/miui/home/recents/views/TaskStackViewScroller;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v0

    iput v0, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mDownScrollP:F

    .line 409
    :cond_3
    iget-object v0, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, v7}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto/16 :goto_8

    .line 325
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 326
    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mActivePointerId:I

    .line 327
    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iput v1, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mDownX:F

    .line 328
    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mDownY:F

    .line 329
    iput v0, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mLastY:F

    .line 330
    iget-object v0, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/miui/home/recents/views/TaskStackViewScroller;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v0

    iput v0, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mDownScrollP:F

    .line 331
    iget-object v0, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, v7}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto/16 :goto_8

    .line 465
    :cond_5
    iget-object v0, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mActiveTaskView:Lcom/miui/home/recents/views/TaskView;

    if-eqz v0, :cond_6

    .line 466
    invoke-static {}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getInstance()Lcom/miui/home/recents/util/SpringAnimationUtils;

    move-result-object v0

    iget-object v1, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mActiveTaskView:Lcom/miui/home/recents/views/TaskView;

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/util/SpringAnimationUtils;->startTaskViewTouchMoveOrUpAnim(Lcom/miui/home/recents/views/TaskView;)V

    :cond_6
    const-string v0, "scroll cancel"

    .line 468
    invoke-direct {v6, v0}, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->reset(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 335
    :cond_7
    iget v0, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mActivePointerId:I

    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-ltz v0, :cond_9

    .line 336
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-lt v0, v2, :cond_8

    goto :goto_1

    :cond_8
    move v1, v0

    goto :goto_2

    .line 338
    :cond_9
    :goto_1
    invoke-virtual {v7, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mActivePointerId:I

    .line 340
    :goto_2
    invoke-virtual {v7, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v11

    .line 341
    invoke-virtual {v7, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 342
    iget-boolean v0, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mIsScrolling:Z

    if-nez v0, :cond_b

    .line 343
    iget v0, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mDownY:F

    sub-float v0, v11, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 344
    iget v1, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mDownX:F

    sub-float v1, v3, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 346
    invoke-direct {v6, v1, v0}, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->canStartScroll(FF)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 347
    invoke-virtual {v6, v8}, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->setIsScrolling(Z)V

    .line 350
    iget-object v0, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 352
    invoke-interface {v0, v8}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 355
    :cond_a
    invoke-static {}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getInstance()Lcom/miui/home/recents/util/SpringAnimationUtils;

    move-result-object v0

    iget-object v1, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mActiveTaskView:Lcom/miui/home/recents/views/TaskView;

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/util/SpringAnimationUtils;->startTaskViewTouchMoveOrUpAnim(Lcom/miui/home/recents/views/TaskView;)V

    .line 358
    :cond_b
    iget-boolean v0, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mIsScrolling:Z

    if-eqz v0, :cond_11

    .line 359
    iget v1, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mDownX:F

    iget v2, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mDownY:F

    move-object/from16 v0, p0

    move v4, v11

    move-object v5, v9

    invoke-direct/range {v0 .. v5}, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->getDeltaP(FFFFLcom/miui/home/recents/views/TaskStackLayoutAlgorithm;)F

    move-result v0

    .line 362
    iget v1, v9, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mMinScrollP:F

    .line 363
    iget v2, v9, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mMaxScrollP:F

    .line 364
    iget v3, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mDownScrollP:F

    add-float/2addr v3, v0

    cmpg-float v0, v3, v1

    if-ltz v0, :cond_c

    cmpl-float v0, v3, v2

    if-lez v0, :cond_d

    .line 366
    :cond_c
    invoke-static {v3, v1, v2}, Lcom/miui/home/recents/util/Utilities;->clamp(FFF)F

    move-result v0

    sub-float/2addr v3, v0

    .line 368
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x40155555

    div-float/2addr v1, v2

    .line 369
    sget-object v4, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->OVERSCROLL_INTERP:Landroid/view/animation/Interpolator;

    invoke-interface {v4, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    .line 370
    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v3

    mul-float/2addr v1, v2

    mul-float/2addr v3, v1

    add-float/2addr v3, v0

    .line 374
    :cond_d
    iget-object v0, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackView;->getTaskStackViewLayoutStyle()Lcom/miui/home/recents/TaskStackViewLayoutStyle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/TaskStackViewLayoutStyle;->canExitRecentsWhenScrollOverThreshold()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 375
    iget-boolean v0, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mScrollDown:Z

    if-nez v0, :cond_e

    cmpg-float v0, v3, v10

    if-gez v0, :cond_e

    .line 376
    iput-boolean v8, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mScrollDown:Z

    .line 377
    sget-object v0, Lcom/miui/home/recents/anim/StateManager;->Companion:Lcom/miui/home/recents/anim/StateManager$Companion;

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object v0

    new-instance v1, Lcom/miui/home/recents/event/TaskStackViewScrollerDownEvent;

    invoke-direct {v1}, Lcom/miui/home/recents/event/TaskStackViewScrollerDownEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/anim/StateManager;->sendEvent(Lcom/miui/home/recents/event/Event;)V

    .line 379
    :cond_e
    iget-object v0, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/miui/home/recents/views/TaskStackViewScroller;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackViewScroller;->getExitRecentOverscrollThreshold()F

    move-result v0

    .line 380
    iget v1, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mLastScrollP:F

    neg-float v0, v0

    cmpl-float v1, v1, v0

    if-lez v1, :cond_f

    cmpg-float v1, v3, v0

    if-gez v1, :cond_f

    iget v1, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mLastY:F

    sub-float v1, v11, v1

    cmpl-float v1, v1, v10

    if-lez v1, :cond_f

    .line 381
    iget-object v1, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {v1, v8}, Landroid/widget/FrameLayout;->performHapticFeedback(I)Z

    .line 382
    invoke-static {}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getInstance()Lcom/miui/home/recents/util/SpringAnimationUtils;

    move-result-object v1

    iget-object v2, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {v1, v2}, Lcom/miui/home/recents/util/SpringAnimationUtils;->startDragExitRecentsAnim(Lcom/miui/home/recents/views/TaskStackView;)V

    .line 384
    :cond_f
    iget v1, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mLastScrollP:F

    cmpg-float v1, v1, v0

    if-gez v1, :cond_10

    cmpl-float v0, v3, v0

    if-lez v0, :cond_10

    iget v0, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mLastY:F

    sub-float v0, v11, v0

    cmpg-float v0, v0, v10

    if-gez v0, :cond_10

    .line 385
    invoke-static {}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getInstance()Lcom/miui/home/recents/util/SpringAnimationUtils;

    move-result-object v0

    iget-object v1, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/util/SpringAnimationUtils;->startCancelDragExitRecentsAnim(Lcom/miui/home/recents/views/TaskStackView;)V

    .line 389
    :cond_10
    iget-object v0, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/miui/home/recents/views/TaskStackViewScroller;

    invoke-virtual {v0, v3}, Lcom/miui/home/recents/views/TaskStackViewScroller;->setStackScroll(F)V

    .line 390
    iput v3, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mLastScrollP:F

    .line 393
    :cond_11
    iput v11, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mLastY:F

    .line 394
    iget-object v0, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, v7}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto/16 :goto_8

    .line 413
    :cond_12
    iget-object v0, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, v7}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 414
    iget-object v0, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v2, 0x3e8

    iget v3, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mMaximumVelocity:I

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 415
    iget v0, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mActivePointerId:I

    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-ltz v0, :cond_14

    .line 416
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-lt v0, v2, :cond_13

    goto :goto_3

    :cond_13
    move v1, v0

    goto :goto_4

    .line 418
    :cond_14
    :goto_3
    invoke-virtual {v7, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mActivePointerId:I

    .line 421
    :goto_4
    iget-object v0, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v2, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mActivePointerId:I

    invoke-virtual {v0, v2}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    float-to-int v0, v0

    .line 422
    iget-object v2, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v3, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mActivePointerId:I

    invoke-virtual {v2, v3}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v2

    float-to-int v2, v2

    .line 423
    iget-boolean v3, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mIsScrolling:Z

    if-eqz v3, :cond_18

    .line 424
    iget-object v3, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/miui/home/recents/views/TaskStackViewScroller;

    invoke-virtual {v3}, Lcom/miui/home/recents/views/TaskStackViewScroller;->isScrollOutOfBounds()Z

    move-result v3

    if-eqz v3, :cond_16

    .line 425
    iget-object v1, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/miui/home/recents/views/TaskStackViewScroller;

    iget v3, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mScrollDirection:I

    if-nez v3, :cond_15

    goto :goto_5

    :cond_15
    move v0, v2

    :goto_5
    invoke-virtual {v1, v0}, Lcom/miui/home/recents/views/TaskStackViewScroller;->animateBoundScroll(I)V

    goto/16 :goto_7

    .line 427
    :cond_16
    invoke-virtual {v7, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    float-to-int v15, v3

    .line 428
    invoke-virtual {v7, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v1, v1

    .line 433
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->isScrollDirectionY()Z

    move-result v3

    if-nez v3, :cond_17

    .line 434
    iget v3, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mDownX:F

    iget v4, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mDownScrollP:F

    iget v5, v9, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mMaxScrollP:F

    invoke-virtual {v9, v4, v5}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->getXForDeltaP(FF)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    .line 436
    iget v4, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mDownX:F

    iget v5, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mDownScrollP:F

    iget v7, v9, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mMinScrollP:F

    invoke-virtual {v9, v5, v7}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->getXForDeltaP(FF)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    move v5, v10

    move v10, v3

    move v3, v5

    goto :goto_6

    .line 439
    :cond_17
    iget v3, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mDownY:F

    iget v4, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mDownScrollP:F

    iget v5, v9, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mMaxScrollP:F

    invoke-virtual {v9, v4, v5}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->getYForDeltaP(FF)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    .line 441
    iget v4, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mDownY:F

    iget v5, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mDownScrollP:F

    iget v7, v9, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mMinScrollP:F

    invoke-virtual {v9, v5, v7}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->getYForDeltaP(FF)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    move v5, v4

    move v4, v10

    .line 445
    :goto_6
    iget-object v11, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/miui/home/recents/views/TaskStackViewScroller;

    iget v12, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mDownScrollP:F

    iget v13, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mDownX:F

    iget v14, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mDownY:F

    float-to-int v7, v10

    float-to-int v4, v4

    float-to-int v3, v3

    float-to-int v5, v5

    iget v8, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mOverscrollSize:I

    move/from16 v16, v1

    move/from16 v17, v0

    move/from16 v18, v2

    move/from16 v19, v7

    move/from16 v20, v4

    move/from16 v21, v3

    move/from16 v22, v5

    move/from16 v23, v8

    invoke-virtual/range {v11 .. v23}, Lcom/miui/home/recents/views/TaskStackViewScroller;->fling(FFFIIIIIIIII)V

    .line 452
    iget-object v0, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    goto :goto_7

    .line 455
    :cond_18
    iget-object v0, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mActiveTaskView:Lcom/miui/home/recents/views/TaskView;

    if-nez v0, :cond_19

    .line 457
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {v6, v0, v1}, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->maybeHideRecentsFromBackgroundTap(FF)V

    goto :goto_7

    .line 459
    :cond_19
    invoke-static {}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getInstance()Lcom/miui/home/recents/util/SpringAnimationUtils;

    move-result-object v0

    iget-object v1, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mActiveTaskView:Lcom/miui/home/recents/views/TaskView;

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/util/SpringAnimationUtils;->startTaskViewTouchMoveOrUpAnim(Lcom/miui/home/recents/views/TaskView;)V

    :goto_7
    const-string v0, "scroll up"

    .line 461
    invoke-direct {v6, v0}, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->reset(Ljava/lang/String;)V

    goto :goto_8

    .line 301
    :cond_1a
    iget-object v0, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/miui/home/recents/views/TaskStackViewScroller;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackViewScroller;->stopScroller()V

    .line 302
    iget-object v0, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/miui/home/recents/views/TaskStackViewScroller;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackViewScroller;->stopBoundScrollAnimation()V

    .line 303
    iget-object v0, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackView;->cancelDeferredTaskViewLayoutAnimation()V

    .line 306
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mDownX:F

    .line 307
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mDownY:F

    .line 308
    iput v0, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mLastY:F

    .line 309
    iget-object v0, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/miui/home/recents/views/TaskStackViewScroller;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v0

    iput v0, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mDownScrollP:F

    .line 310
    invoke-virtual {v7, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mActivePointerId:I

    .line 311
    iget v0, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mDownX:F

    iget v1, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mDownY:F

    invoke-direct {v6, v0, v1}, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->findViewAtPoint(FF)Lcom/miui/home/recents/views/TaskView;

    move-result-object v0

    iput-object v0, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mActiveTaskView:Lcom/miui/home/recents/views/TaskView;

    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleTouchEvent, mActiveTaskView="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mActiveTaskView:Lcom/miui/home/recents/views/TaskView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TaskStackViewTouchHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->isScrollDirectionY()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 316
    invoke-static {}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getInstance()Lcom/miui/home/recents/util/SpringAnimationUtils;

    move-result-object v0

    iget-object v1, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mActiveTaskView:Lcom/miui/home/recents/views/TaskView;

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/util/SpringAnimationUtils;->startTaskViewTouchDownAnim(Lcom/miui/home/recents/views/TaskView;)V

    .line 320
    :cond_1b
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->initOrResetVelocityTracker()V

    .line 321
    iget-object v0, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, v7}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 472
    :goto_8
    iget-boolean v0, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mIsScrolling:Z

    return v0
.end method

.method private initVelocityTrackerIfNotExists()V
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 197
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private isScrollDirectionY()Z
    .locals 1

    .line 179
    iget p0, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mScrollDirection:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private maybeHideRecentsFromBackgroundTap(FF)V
    .locals 2

    .line 488
    iget v0, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mDownX:F

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    .line 489
    iget v0, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mDownY:F

    sub-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p2

    .line 490
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "maybeHideRecentsFromBackgroundTap, dx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", dy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mScrollTouchSlop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mScrollTouchSlop:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TaskStackViewTouchHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    iget p0, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mScrollTouchSlop:I

    int-to-float v0, p0

    cmpl-float p1, p1, v0

    if-gtz p1, :cond_1

    int-to-float p0, p0

    cmpl-float p0, p2, p0

    if-lez p0, :cond_0

    goto :goto_0

    .line 497
    :cond_0
    sget-object p0, Lcom/miui/home/recents/anim/StateManager;->Companion:Lcom/miui/home/recents/anim/StateManager$Companion;

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object p0

    new-instance p1, Lcom/miui/home/recents/event/TaskStackClickEvent;

    invoke-direct {p1}, Lcom/miui/home/recents/event/TaskStackClickEvent;-><init>()V

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/anim/StateManager;->sendEvent(Lcom/miui/home/recents/event/Event;)V

    const-string p0, "clickEmptySpace"

    .line 501
    invoke-static {p0}, Lcom/miui/home/launcher/AnalyticalDataCollectorForRecents;->sendHideRecentsEvent(Ljava/lang/String;)V

    .line 502
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p0

    new-instance p1, Lcom/miui/home/recents/messages/HideRecentsEvent;

    const/4 p2, 0x1

    const/4 v0, 0x0

    invoke-direct {p1, v0, p2, v0, v0}, Lcom/miui/home/recents/messages/HideRecentsEvent;-><init>(ZZZZ)V

    invoke-virtual {p0, p1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private reset(Ljava/lang/String;)V
    .locals 2

    .line 476
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reset by "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TaskStackViewTouchHandler"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 477
    iput-object p1, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mActiveTaskView:Lcom/miui/home/recents/views/TaskView;

    const/4 p1, -0x1

    .line 478
    iput p1, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mActivePointerId:I

    const/4 p1, 0x0

    .line 479
    iput-boolean p1, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mScrollDown:Z

    .line 480
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->setIsScrolling(Z)V

    .line 481
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->recycleVelocityTracker()V

    return-void
.end method

.method private updateTaskViewTransforms(F)V
    .locals 9

    .line 746
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v0

    .line 747
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    .line 749
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/recents/views/TaskView;

    .line 750
    invoke-virtual {v3}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v4

    .line 752
    iget-object v5, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {v5, v4}, Lcom/miui/home/recents/views/TaskStackView;->isIgnoredTask(Lcom/android/systemui/shared/recents/model/Task;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_2

    .line 756
    :cond_0
    iget-object v5, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mCurrentTasks:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    goto/16 :goto_2

    :cond_1
    if-ltz v4, :cond_3

    .line 763
    iget-object v5, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mCurrentTaskTransforms:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    iget-object v5, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mFinalTaskTransforms:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v4, v5, :cond_2

    goto :goto_1

    .line 770
    :cond_2
    iget-object v5, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mCurrentTaskTransforms:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/home/recents/views/TaskViewTransform;

    .line 771
    iget-object v6, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mFinalTaskTransforms:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/home/recents/views/TaskViewTransform;

    .line 773
    iget-object v6, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mTmpTransform:Lcom/miui/home/recents/views/TaskViewTransform;

    invoke-virtual {v6, v5}, Lcom/miui/home/recents/views/TaskViewTransform;->copyFrom(Lcom/miui/home/recents/views/TaskViewTransform;)V

    .line 775
    iget-object v6, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mTmpTransform:Lcom/miui/home/recents/views/TaskViewTransform;

    iget-object v6, v6, Lcom/miui/home/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    iget-object v7, v5, Lcom/miui/home/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    iget-object v8, v4, Lcom/miui/home/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    invoke-virtual {p0, p1, v7, v8}, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->evaluate(FLandroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 777
    iget-object v6, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mTmpTransform:Lcom/miui/home/recents/views/TaskViewTransform;

    iget v7, v5, Lcom/miui/home/recents/views/TaskViewTransform;->viewOutlineAlpha:F

    iget v8, v4, Lcom/miui/home/recents/views/TaskViewTransform;->viewOutlineAlpha:F

    sub-float/2addr v8, v7

    mul-float/2addr v8, p1

    add-float/2addr v7, v8

    iput v7, v6, Lcom/miui/home/recents/views/TaskViewTransform;->viewOutlineAlpha:F

    .line 780
    iget v5, v5, Lcom/miui/home/recents/views/TaskViewTransform;->translationZ:F

    iget v4, v4, Lcom/miui/home/recents/views/TaskViewTransform;->translationZ:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, p1

    add-float/2addr v5, v4

    iput v5, v6, Lcom/miui/home/recents/views/TaskViewTransform;->translationZ:F

    .line 783
    iget-object v4, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    sget-object v5, Lcom/android/systemui/shared/recents/utilities/AnimationProps;->IMMEDIATE:Lcom/android/systemui/shared/recents/utilities/AnimationProps;

    invoke-virtual {v4, v3, v6, v5}, Lcom/miui/home/recents/views/TaskStackView;->updateTaskViewToTransform(Lcom/miui/home/recents/views/TaskView;Lcom/miui/home/recents/views/TaskViewTransform;Lcom/android/systemui/shared/recents/utilities/AnimationProps;)V

    goto :goto_2

    .line 764
    :cond_3
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateTaskViewTransforms error, taskIndex = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",  mCurrentTaskTransforms.size() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mCurrentTaskTransforms:Ljava/util/ArrayList;

    .line 765
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mFinalTaskTransforms:Ljava/util/ArrayList;

    .line 766
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "TaskStackViewTouchHandler"

    .line 764
    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_4
    return-void
.end method


# virtual methods
.method public canChildBeDismissed(Landroid/view/View;)Z
    .locals 2

    .line 537
    move-object v0, p1

    check-cast v0, Lcom/miui/home/recents/views/TaskView;

    .line 538
    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    .line 539
    iget-object v1, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mSwipeHelperAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    .line 540
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackView;->getStack()Lcom/android/systemui/shared/recents/model/TaskStack;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/systemui/shared/recents/model/TaskStack;->indexOfStackTask(Lcom/android/systemui/shared/recents/model/Task;)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public cancelDismissTaskViewAnimIfNeed()Z
    .locals 6

    .line 236
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mSwipeHelperAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4

    .line 240
    iget-object v1, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {v1}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v1

    .line 241
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_1

    .line 242
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/recents/views/TaskView;

    .line 244
    iget-object v4, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {v3}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/miui/home/recents/views/TaskStackView;->isIgnoredTask(Lcom/android/systemui/shared/recents/model/Task;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 247
    :cond_0
    invoke-virtual {v3}, Lcom/miui/home/recents/views/TaskView;->cancelTransformAnimation()V

    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 250
    :cond_1
    iget-object v1, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mSwipeHelperAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 251
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cancelDismissTaskAnimations, anim="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "TaskStackViewTouchHandler"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    instance-of v3, v2, Landroid/animation/ObjectAnimator;

    if-eqz v3, :cond_2

    .line 253
    check-cast v2, Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->cancel()V

    goto :goto_2

    .line 257
    :cond_3
    iget-object p0, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mSwipeHelperAnimations:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->clear()V

    :cond_4
    return v0
.end method

.method public checkToBeginDrag(Landroid/view/View;)Z
    .locals 0

    .line 729
    check-cast p1, Lcom/miui/home/recents/views/TaskView;

    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->startDrag()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public evaluate(FLandroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 3

    .line 788
    iget p0, p2, Landroid/graphics/RectF;->left:F

    iget v0, p3, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, p0

    mul-float/2addr v0, p1

    add-float/2addr p0, v0

    .line 789
    iget v0, p2, Landroid/graphics/RectF;->top:F

    iget v1, p3, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v0

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    .line 790
    iget v1, p2, Landroid/graphics/RectF;->right:F

    iget v2, p3, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v1

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    .line 791
    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    iget p3, p3, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr p3, p2

    mul-float/2addr p3, p1

    add-float/2addr p2, p3

    .line 792
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1, p0, v0, v1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object p1
.end method

.method public getChildAtPosition(Landroid/view/MotionEvent;)Landroid/view/View;
    .locals 1

    .line 522
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    invoke-direct {p0, v0, p1}, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->findViewAtPoint(FF)Lcom/miui/home/recents/views/TaskView;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getFalsingThresholdFactor()F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getOldStackScroll()F
    .locals 0

    .line 630
    iget p0, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mOldStackScroll:F

    return p0
.end method

.method public getScaledDismissSize()F
    .locals 1

    .line 825
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    iget-object p0, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    int-to-float p0, p0

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float/2addr p0, v0

    return p0
.end method

.method initOrResetVelocityTracker()V
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 189
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_0

    .line 191
    :cond_0
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    :goto_0
    return-void
.end method

.method public isAntiFalsingNeeded()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSnappingChild()Z
    .locals 0

    .line 699
    iget-boolean p0, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mSnappingChild:Z

    return p0
.end method

.method public onBeginDrag(Landroid/view/View;)V
    .locals 2

    .line 555
    check-cast p1, Lcom/miui/home/recents/views/TaskView;

    const/high16 v0, 0x41200000    # 10.0f

    .line 558
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setTranslationZ(F)V

    .line 560
    invoke-static {}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getInstance()Lcom/miui/home/recents/util/SpringAnimationUtils;

    move-result-object v0

    invoke-direct {p0}, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->isScrollDirectionY()Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/miui/home/recents/util/SpringAnimationUtils;->startTaskViewSwipeAnim(Lcom/miui/home/recents/views/TaskView;Z)V

    .line 562
    sget-object v0, Lcom/miui/home/recents/anim/StateManager;->Companion:Lcom/miui/home/recents/anim/StateManager$Companion;

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object v0

    new-instance v1, Lcom/miui/home/recents/event/TaskViewBeginDragEvent;

    invoke-direct {v1}, Lcom/miui/home/recents/event/TaskViewBeginDragEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/anim/StateManager;->sendEvent(Lcom/miui/home/recents/event/Event;)V

    .line 564
    invoke-direct {p0}, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->isScrollDirectionY()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 565
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getHeaderView()Lcom/miui/home/recents/views/TaskViewHeader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskViewHeader;->startDismissTaskAnim()V

    .line 566
    invoke-direct {p0, p1}, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->findSameTopPositionTaskView(Lcom/miui/home/recents/views/TaskView;)Lcom/miui/home/recents/views/TaskView;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mSameTopPositionTaskView:Lcom/miui/home/recents/views/TaskView;

    :cond_0
    const/4 v0, 0x0

    .line 570
    invoke-virtual {p1, v0}, Lcom/miui/home/recents/views/TaskView;->setTouchEnabled(Z)V

    .line 572
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 574
    invoke-interface {p1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_1
    const-string p1, "swipe begin"

    .line 576
    invoke-direct {p0, p1}, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->reset(Ljava/lang/String;)V

    return-void
.end method

.method public onChildDismissedEnd(Landroid/view/View;)V
    .locals 5

    .line 654
    move-object v0, p1

    check-cast v0, Lcom/miui/home/recents/views/TaskView;

    .line 656
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChildDismissedEnd, taskView = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " task information: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TaskStackViewTouchHandler"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    new-instance v2, Lcom/miui/home/recents/messages/TaskViewDismissedEvent;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v0, v4}, Lcom/miui/home/recents/messages/TaskViewDismissedEvent;-><init>(Lcom/android/systemui/shared/recents/model/Task;Lcom/miui/home/recents/views/TaskView;Lcom/android/systemui/shared/recents/utilities/AnimationProps;)V

    invoke-virtual {v1, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 663
    iget-object v1, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mSwipeHelperAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 665
    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object p1

    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 670
    :cond_0
    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object p1

    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 671
    iget-object p0, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mCurrentTasks:Ljava/util/ArrayList;

    if-eqz p0, :cond_1

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    .line 670
    :goto_0
    invoke-static {p1, p0}, Lcom/miui/home/launcher/AnalyticalDataCollectorForRecents;->sendRemoveTaskEvent(Ljava/lang/String;I)V

    return-void
.end method

.method public onChildDismissedStart()V
    .locals 1

    .line 646
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/miui/home/recents/views/TaskStackViewScroller;

    iget p0, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mTargetStackScroll:F

    invoke-virtual {v0, p0}, Lcom/miui/home/recents/views/TaskStackViewScroller;->setStackScrollP(F)Z

    return-void
.end method

.method public onChildSnappedBack(Landroid/view/View;F)V
    .locals 2

    .line 680
    move-object p2, p1

    check-cast p2, Lcom/miui/home/recents/views/TaskView;

    const/4 v0, 0x1

    .line 683
    invoke-virtual {p2, v0}, Lcom/miui/home/recents/views/TaskView;->setTouchEnabled(Z)V

    const/4 v0, 0x0

    .line 685
    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setTranslationZ(F)V

    const/4 v0, 0x0

    .line 690
    iput-boolean v0, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mSnappingChild:Z

    .line 691
    invoke-virtual {p2}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object p2

    .line 692
    iget-object v1, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {v1, p2}, Lcom/miui/home/recents/views/TaskStackView;->removeIgnoreTask(Lcom/android/systemui/shared/recents/model/Task;)V

    .line 693
    iget-object p2, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {p2, v0}, Lcom/miui/home/recents/views/TaskStackView;->updateLayoutAlgorithm(Z)V

    .line 694
    iget-object p2, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    sget-object v0, Lcom/android/systemui/shared/recents/utilities/AnimationProps;->IMMEDIATE:Lcom/android/systemui/shared/recents/utilities/AnimationProps;

    invoke-virtual {p2, v0}, Lcom/miui/home/recents/views/TaskStackView;->relayoutTaskViews(Lcom/android/systemui/shared/recents/utilities/AnimationProps;)V

    .line 695
    iget-object p0, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mSwipeHelperAnimations:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onDragCancelled(Landroid/view/View;)V
    .locals 0

    .line 708
    check-cast p1, Lcom/miui/home/recents/views/TaskView;

    .line 709
    invoke-direct {p0}, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->isScrollDirectionY()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 710
    invoke-static {}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getInstance()Lcom/miui/home/recents/util/SpringAnimationUtils;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/util/SpringAnimationUtils;->startTaskViewSwipeCancelAnim(Lcom/miui/home/recents/views/TaskView;)V

    .line 711
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getHeaderView()Lcom/miui/home/recents/views/TaskViewHeader;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskViewHeader;->startResetTaskAnim()V

    goto :goto_0

    .line 713
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getHeaderView()Lcom/miui/home/recents/views/TaskViewHeader;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_0
    return-void
.end method

.method public onDragEnd(Landroid/view/View;)V
    .locals 3

    .line 581
    instance-of v0, p1, Lcom/miui/home/recents/views/TaskView;

    if-eqz v0, :cond_1

    .line 582
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mSameTopPositionTaskView:Lcom/miui/home/recents/views/TaskView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskView;->getHeaderView()Lcom/miui/home/recents/views/TaskViewHeader;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 583
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mSameTopPositionTaskView:Lcom/miui/home/recents/views/TaskView;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskView;->getHeaderView()Lcom/miui/home/recents/views/TaskViewHeader;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x96

    .line 584
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 587
    :cond_0
    check-cast p1, Lcom/miui/home/recents/views/TaskView;

    .line 590
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/views/TaskStackView;->addIgnoreTask(Lcom/android/systemui/shared/recents/model/Task;)V

    .line 592
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {v1}, Lcom/miui/home/recents/views/TaskStackView;->getStack()Lcom/android/systemui/shared/recents/model/TaskStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mCurrentTasks:Ljava/util/ArrayList;

    .line 595
    iget-object v1, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    iget-object v2, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mCurrentTaskTransforms:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, v2}, Lcom/miui/home/recents/views/TaskStackView;->getCurrentTaskTransforms(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 598
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/views/TaskStackView;->updateLayoutAlgorithm(Z)V

    .line 600
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/miui/home/recents/views/TaskStackViewScroller;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mOldStackScroll:F

    .line 603
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/miui/home/recents/views/TaskStackViewScroller;

    iget-object v1, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    .line 604
    invoke-virtual {v1}, Lcom/miui/home/recents/views/TaskStackView;->getStackAlgorithm()Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    move-result-object v1

    iget v2, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mOldStackScroll:F

    invoke-direct {p0, v2, p1}, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->calcTargetStackScroll(FLcom/miui/home/recents/views/TaskView;)F

    move-result p1

    invoke-virtual {v1, p1}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->getBoundedScroll(F)F

    move-result p1

    .line 603
    invoke-virtual {v0, p1}, Lcom/miui/home/recents/views/TaskStackViewScroller;->getNearestMotionlessScrollP(F)F

    move-result p1

    iput p1, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mTargetStackScroll:F

    .line 607
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {v0, p1}, Lcom/miui/home/recents/views/TaskStackView;->bindVisibleTaskViews(F)V

    .line 610
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    iget v0, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mTargetStackScroll:F

    iget-object v1, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mCurrentTasks:Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mFinalTaskTransforms:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1, p0}, Lcom/miui/home/recents/views/TaskStackView;->getLayoutTaskTransforms(FLjava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_1
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 507
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result p0

    const/4 v0, 0x2

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_1

    .line 509
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p0

    and-int/lit16 p0, p0, 0xff

    const/16 p1, 0x8

    if-eq p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 210
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackView;->isShowingMenu()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mSwipeHelper:Lcom/miui/home/recents/views/SwipeHelperForRecents;

    invoke-virtual {v0, p1}, Lcom/miui/home/recents/views/SwipeHelperForRecents;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mInterceptedBySwipeHelper:Z

    if-eqz v0, :cond_1

    return v1

    .line 220
    :cond_1
    invoke-direct {p0, p1}, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 226
    iget-boolean v0, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mInterceptedBySwipeHelper:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mSwipeHelper:Lcom/miui/home/recents/views/SwipeHelperForRecents;

    invoke-virtual {v0, p1}, Lcom/miui/home/recents/views/SwipeHelperForRecents;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 230
    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    return v1
.end method

.method recycleVelocityTracker()V
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 203
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    .line 204
    iput-object v0, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method public resetIsSnappingChild()V
    .locals 1

    const/4 v0, 0x0

    .line 703
    iput-boolean v0, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mSnappingChild:Z

    return-void
.end method

.method public setIsScrolling(Z)V
    .locals 3

    .line 279
    iget-boolean v0, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mIsScrolling:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 282
    :cond_0
    sget-object v0, Lcom/miui/home/launcher/util/ScenarioRecognitionUtil;->INSTANCE:Lcom/miui/home/launcher/util/ScenarioRecognitionUtil;

    const-wide/16 v1, 0x106

    .line 283
    invoke-virtual {v0, v1, v2, p1}, Lcom/miui/home/launcher/util/ScenarioRecognitionUtil;->setScenarioState(JZ)V

    if-eqz p1, :cond_1

    .line 285
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackView;->onScrollStart()V

    .line 287
    :cond_1
    iput-boolean p1, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mIsScrolling:Z

    return-void
.end method

.method public setScrollDirection(I)V
    .locals 0

    .line 175
    iput p1, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mScrollDirection:I

    return-void
.end method

.method public setSwipeDirection(I)V
    .locals 0

    .line 183
    iget-object p0, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mSwipeHelper:Lcom/miui/home/recents/views/SwipeHelperForRecents;

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/SwipeHelperForRecents;->setSwipeDirection(I)V

    return-void
.end method

.method public updateSwipeProgress(Landroid/view/View;F)Z
    .locals 1

    .line 637
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mSwipeHelperAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 638
    invoke-direct {p0}, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->isScrollDirectionY()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 639
    sget-object p1, Lcom/miui/home/launcher/anim/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    invoke-interface {p1, p2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    goto :goto_0

    :cond_0
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    .line 638
    :goto_0
    invoke-direct {p0, p1}, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->updateTaskViewTransforms(F)V

    :cond_1
    const/4 p0, 0x1

    return p0
.end method
