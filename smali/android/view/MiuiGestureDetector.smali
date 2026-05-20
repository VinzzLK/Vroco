.class public Landroid/view/MiuiGestureDetector;
.super Ljava/lang/Object;
.source "MiuiGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/MiuiGestureDetector$GestureHandler;,
        Landroid/view/MiuiGestureDetector$SimpleOnGestureListener;,
        Landroid/view/MiuiGestureDetector$OnContextClickListener;,
        Landroid/view/MiuiGestureDetector$OnDoubleTapListener;,
        Landroid/view/MiuiGestureDetector$OnGestureListener;
    }
.end annotation


# static fields
.field private static final DOUBLE_TAP_MIN_TIME:I

.field private static final DOUBLE_TAP_TIMEOUT:I

.field private static final TAP_TIMEOUT:I


# instance fields
.field private TAG:Ljava/lang/String;

.field private mAlwaysInBiggerTapRegion:Z

.field private mAlwaysInTapRegion:Z

.field private mAmbiguousGestureMultiplier:F

.field private mContextClickListener:Landroid/view/MiuiGestureDetector$OnContextClickListener;

.field private mCurrentDownEvent:Landroid/view/MotionEvent;

.field private mCurrentMotionEvent:Landroid/view/MotionEvent;

.field private mDeferConfirmSingleTap:Z

.field private mDoubleTapListener:Landroid/view/MiuiGestureDetector$OnDoubleTapListener;

.field private mDoubleTapSlopSquare:I

.field private mDoubleTapTouchSlopSquare:I

.field private mDownFocusX:F

.field private mDownFocusY:F

.field private final mHandler:Landroid/os/Handler;

.field private mIgnoreNextUpEvent:Z

.field private mInContextClick:Z

.field private mInLongPress:Z

.field private mIsDoubleTapping:Z

.field private mIsLongpressEnabled:Z

.field private mLastFocusX:F

.field private mLastFocusY:F

.field private final mListener:Landroid/view/MiuiGestureDetector$OnGestureListener;

.field private mMaximumFlingVelocity:I

.field private mMinimumFlingVelocity:I

.field private mPreviousUpEvent:Landroid/view/MotionEvent;

.field private mStillDown:Z

.field private mTouchSlopSquare:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 203
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    sput v0, Landroid/view/MiuiGestureDetector;->TAP_TIMEOUT:I

    .line 204
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    sput v0, Landroid/view/MiuiGestureDetector;->DOUBLE_TAP_TIMEOUT:I

    .line 205
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapMinTime()I

    move-result v0

    sput v0, Landroid/view/MiuiGestureDetector;->DOUBLE_TAP_MIN_TIME:I

    return-void
.end method

.method public constructor <init>(ILandroid/view/MiuiGestureDetector$OnGestureListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 292
    invoke-direct {p0, p1, p2, v0}, Landroid/view/MiuiGestureDetector;-><init>(ILandroid/view/MiuiGestureDetector$OnGestureListener;Landroid/os/Handler;)V

    return-void
.end method

.method public constructor <init>(ILandroid/view/MiuiGestureDetector$OnGestureListener;Landroid/os/Handler;)V
    .locals 1

    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "MiuiGestureDetector"

    .line 196
    iput-object v0, p0, Landroid/view/MiuiGestureDetector;->TAG:Ljava/lang/String;

    if-eqz p3, :cond_0

    .line 297
    new-instance v0, Landroid/view/MiuiGestureDetector$GestureHandler;

    invoke-direct {v0, p0, p3}, Landroid/view/MiuiGestureDetector$GestureHandler;-><init>(Landroid/view/MiuiGestureDetector;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/view/MiuiGestureDetector;->mHandler:Landroid/os/Handler;

    goto :goto_0

    .line 299
    :cond_0
    new-instance p3, Landroid/view/MiuiGestureDetector$GestureHandler;

    invoke-direct {p3, p0}, Landroid/view/MiuiGestureDetector$GestureHandler;-><init>(Landroid/view/MiuiGestureDetector;)V

    iput-object p3, p0, Landroid/view/MiuiGestureDetector;->mHandler:Landroid/os/Handler;

    .line 301
    :goto_0
    iput-object p2, p0, Landroid/view/MiuiGestureDetector;->mListener:Landroid/view/MiuiGestureDetector$OnGestureListener;

    .line 302
    instance-of p3, p2, Landroid/view/MiuiGestureDetector$OnDoubleTapListener;

    if-eqz p3, :cond_1

    .line 303
    move-object p3, p2

    check-cast p3, Landroid/view/MiuiGestureDetector$OnDoubleTapListener;

    invoke-virtual {p0, p3}, Landroid/view/MiuiGestureDetector;->setOnDoubleTapListener(Landroid/view/MiuiGestureDetector$OnDoubleTapListener;)V

    .line 305
    :cond_1
    instance-of p3, p2, Landroid/view/MiuiGestureDetector$OnContextClickListener;

    if-eqz p3, :cond_2

    .line 306
    check-cast p2, Landroid/view/MiuiGestureDetector$OnContextClickListener;

    invoke-virtual {p0, p2}, Landroid/view/MiuiGestureDetector;->setContextClickListener(Landroid/view/MiuiGestureDetector$OnContextClickListener;)V

    .line 308
    :cond_2
    invoke-direct {p0, p1}, Landroid/view/MiuiGestureDetector;->init(I)V

    return-void
.end method

.method static synthetic access$000(Landroid/view/MiuiGestureDetector;)Landroid/view/MotionEvent;
    .locals 0

    .line 10
    iget-object p0, p0, Landroid/view/MiuiGestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    return-object p0
.end method

.method static synthetic access$100(Landroid/view/MiuiGestureDetector;)Landroid/view/MiuiGestureDetector$OnGestureListener;
    .locals 0

    .line 10
    iget-object p0, p0, Landroid/view/MiuiGestureDetector;->mListener:Landroid/view/MiuiGestureDetector$OnGestureListener;

    return-object p0
.end method

.method static synthetic access$200(Landroid/view/MiuiGestureDetector;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Landroid/view/MiuiGestureDetector;->dispatchLongPress()V

    return-void
.end method

.method static synthetic access$300(Landroid/view/MiuiGestureDetector;)Landroid/view/MiuiGestureDetector$OnDoubleTapListener;
    .locals 0

    .line 10
    iget-object p0, p0, Landroid/view/MiuiGestureDetector;->mDoubleTapListener:Landroid/view/MiuiGestureDetector$OnDoubleTapListener;

    return-object p0
.end method

.method static synthetic access$400(Landroid/view/MiuiGestureDetector;)Z
    .locals 0

    .line 10
    iget-boolean p0, p0, Landroid/view/MiuiGestureDetector;->mStillDown:Z

    return p0
.end method

.method static synthetic access$502(Landroid/view/MiuiGestureDetector;Z)Z
    .locals 0

    .line 10
    iput-boolean p1, p0, Landroid/view/MiuiGestureDetector;->mDeferConfirmSingleTap:Z

    return p1
.end method

.method static synthetic access$600(Landroid/view/MiuiGestureDetector;)Ljava/lang/String;
    .locals 0

    .line 10
    iget-object p0, p0, Landroid/view/MiuiGestureDetector;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method private cancel()V
    .locals 2

    .line 636
    iget-object v0, p0, Landroid/view/MiuiGestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 637
    iget-object v0, p0, Landroid/view/MiuiGestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 638
    iget-object v0, p0, Landroid/view/MiuiGestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 639
    iget-object v0, p0, Landroid/view/MiuiGestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 640
    iget-object v0, p0, Landroid/view/MiuiGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    .line 641
    iput-object v0, p0, Landroid/view/MiuiGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/4 v0, 0x0

    .line 642
    iput-boolean v0, p0, Landroid/view/MiuiGestureDetector;->mIsDoubleTapping:Z

    .line 643
    iput-boolean v0, p0, Landroid/view/MiuiGestureDetector;->mStillDown:Z

    .line 644
    iput-boolean v0, p0, Landroid/view/MiuiGestureDetector;->mAlwaysInTapRegion:Z

    .line 645
    iput-boolean v0, p0, Landroid/view/MiuiGestureDetector;->mAlwaysInBiggerTapRegion:Z

    .line 646
    iput-boolean v0, p0, Landroid/view/MiuiGestureDetector;->mDeferConfirmSingleTap:Z

    .line 647
    iput-boolean v0, p0, Landroid/view/MiuiGestureDetector;->mInLongPress:Z

    .line 648
    iput-boolean v0, p0, Landroid/view/MiuiGestureDetector;->mInContextClick:Z

    .line 649
    iput-boolean v0, p0, Landroid/view/MiuiGestureDetector;->mIgnoreNextUpEvent:Z

    return-void
.end method

.method private cancelTaps()V
    .locals 2

    .line 653
    iget-object v0, p0, Landroid/view/MiuiGestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 654
    iget-object v0, p0, Landroid/view/MiuiGestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 655
    iget-object v0, p0, Landroid/view/MiuiGestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 656
    iget-object v0, p0, Landroid/view/MiuiGestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    .line 657
    iput-boolean v0, p0, Landroid/view/MiuiGestureDetector;->mIsDoubleTapping:Z

    .line 658
    iput-boolean v0, p0, Landroid/view/MiuiGestureDetector;->mAlwaysInTapRegion:Z

    .line 659
    iput-boolean v0, p0, Landroid/view/MiuiGestureDetector;->mAlwaysInBiggerTapRegion:Z

    .line 660
    iput-boolean v0, p0, Landroid/view/MiuiGestureDetector;->mDeferConfirmSingleTap:Z

    .line 661
    iput-boolean v0, p0, Landroid/view/MiuiGestureDetector;->mInLongPress:Z

    .line 662
    iput-boolean v0, p0, Landroid/view/MiuiGestureDetector;->mInContextClick:Z

    .line 663
    iput-boolean v0, p0, Landroid/view/MiuiGestureDetector;->mIgnoreNextUpEvent:Z

    return-void
.end method

.method private dispatchLongPress()V
    .locals 2

    .line 686
    iget-object v0, p0, Landroid/view/MiuiGestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 687
    iget-object v0, p0, Landroid/view/MiuiGestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    .line 688
    iput-boolean v0, p0, Landroid/view/MiuiGestureDetector;->mDeferConfirmSingleTap:Z

    const/4 v0, 0x1

    .line 689
    iput-boolean v0, p0, Landroid/view/MiuiGestureDetector;->mInLongPress:Z

    .line 690
    iget-object v0, p0, Landroid/view/MiuiGestureDetector;->mListener:Landroid/view/MiuiGestureDetector$OnGestureListener;

    iget-object p0, p0, Landroid/view/MiuiGestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-interface {v0, p0}, Landroid/view/MiuiGestureDetector$OnGestureListener;->onLongPress(Landroid/view/MotionEvent;)V

    return-void
.end method

.method private init(I)V
    .locals 2

    .line 312
    iget-object v0, p0, Landroid/view/MiuiGestureDetector;->mListener:Landroid/view/MiuiGestureDetector$OnGestureListener;

    const-string v1, "OnGestureListener must not be null"

    .line 313
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 315
    iput-boolean v0, p0, Landroid/view/MiuiGestureDetector;->mIsLongpressEnabled:Z

    .line 321
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapSlop()I

    move-result v0

    .line 323
    invoke-static {}, Landroid/view/ViewConfiguration;->getMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Landroid/view/MiuiGestureDetector;->mMinimumFlingVelocity:I

    .line 324
    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Landroid/view/MiuiGestureDetector;->mMaximumFlingVelocity:I

    .line 325
    invoke-static {}, Landroid/view/ViewConfiguration;->getAmbiguousGestureMultiplier()F

    move-result v1

    iput v1, p0, Landroid/view/MiuiGestureDetector;->mAmbiguousGestureMultiplier:F

    mul-int/2addr p1, p1

    .line 327
    iput p1, p0, Landroid/view/MiuiGestureDetector;->mTouchSlopSquare:I

    .line 328
    iput p1, p0, Landroid/view/MiuiGestureDetector;->mDoubleTapTouchSlopSquare:I

    mul-int/2addr v0, v0

    .line 329
    iput v0, p0, Landroid/view/MiuiGestureDetector;->mDoubleTapSlopSquare:I

    return-void
.end method

.method private isConsideredDoubleTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .locals 6

    .line 668
    iget-boolean v0, p0, Landroid/view/MiuiGestureDetector;->mAlwaysInBiggerTapRegion:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 672
    :cond_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 673
    sget p2, Landroid/view/MiuiGestureDetector;->DOUBLE_TAP_TIMEOUT:I

    int-to-long v4, p2

    cmp-long p2, v2, v4

    if-gtz p2, :cond_4

    sget p2, Landroid/view/MiuiGestureDetector;->DOUBLE_TAP_MIN_TIME:I

    int-to-long v4, p2

    cmp-long p2, v2, v4

    if-gez p2, :cond_1

    goto :goto_2

    .line 677
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    sub-int/2addr p2, v0

    .line 678
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result p3

    float-to-int p3, p3

    sub-int/2addr v0, p3

    .line 680
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result p1

    and-int/lit8 p1, p1, 0x8

    const/4 p3, 0x1

    if-eqz p1, :cond_2

    move p1, p3

    goto :goto_0

    :cond_2
    move p1, v1

    :goto_0
    if-eqz p1, :cond_3

    move p0, v1

    goto :goto_1

    .line 681
    :cond_3
    iget p0, p0, Landroid/view/MiuiGestureDetector;->mDoubleTapSlopSquare:I

    :goto_1
    mul-int/2addr p2, p2

    mul-int/2addr v0, v0

    add-int/2addr p2, v0

    if-ge p2, p0, :cond_4

    move v1, p3

    :cond_4
    :goto_2
    return v1
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 362
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 364
    iget-object v3, v0, Landroid/view/MiuiGestureDetector;->mCurrentMotionEvent:Landroid/view/MotionEvent;

    if-eqz v3, :cond_0

    .line 365
    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    .line 367
    :cond_0
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    iput-object v3, v0, Landroid/view/MiuiGestureDetector;->mCurrentMotionEvent:Landroid/view/MotionEvent;

    .line 369
    iget-object v3, v0, Landroid/view/MiuiGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v3, :cond_1

    .line 370
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v3

    iput-object v3, v0, Landroid/view/MiuiGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 372
    :cond_1
    iget-object v3, v0, Landroid/view/MiuiGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    and-int/lit16 v2, v2, 0xff

    const/4 v3, 0x6

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v2, v3, :cond_2

    move v6, v4

    goto :goto_0

    :cond_2
    move v6, v5

    :goto_0
    if-eqz v6, :cond_3

    .line 375
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v7

    goto :goto_1

    :cond_3
    const/4 v7, -0x1

    .line 377
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v8

    and-int/lit8 v8, v8, 0x8

    if-eqz v8, :cond_4

    move v8, v4

    goto :goto_2

    :cond_4
    move v8, v5

    .line 381
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v9

    const/4 v10, 0x0

    move v11, v5

    move v12, v10

    move v13, v12

    :goto_3
    if-ge v11, v9, :cond_6

    if-ne v7, v11, :cond_5

    goto :goto_4

    .line 384
    :cond_5
    invoke-virtual {v1, v11}, Landroid/view/MotionEvent;->getX(I)F

    move-result v14

    add-float/2addr v12, v14

    .line 385
    invoke-virtual {v1, v11}, Landroid/view/MotionEvent;->getY(I)F

    move-result v14

    add-float/2addr v13, v14

    :goto_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_6
    if-eqz v6, :cond_7

    add-int/lit8 v6, v9, -0x1

    goto :goto_5

    :cond_7
    move v6, v9

    :goto_5
    int-to-float v6, v6

    div-float/2addr v12, v6

    div-float/2addr v13, v6

    const/4 v7, 0x3

    const/4 v11, 0x2

    if-eqz v2, :cond_27

    const/16 v14, 0x3e8

    if-eq v2, v4, :cond_1d

    if-eq v2, v11, :cond_d

    if-eq v2, v7, :cond_c

    const/4 v4, 0x5

    if-eq v2, v4, :cond_b

    if-eq v2, v3, :cond_8

    goto/16 :goto_11

    .line 401
    :cond_8
    iput v12, v0, Landroid/view/MiuiGestureDetector;->mLastFocusX:F

    iput v12, v0, Landroid/view/MiuiGestureDetector;->mDownFocusX:F

    .line 402
    iput v13, v0, Landroid/view/MiuiGestureDetector;->mLastFocusY:F

    iput v13, v0, Landroid/view/MiuiGestureDetector;->mDownFocusY:F

    .line 406
    iget-object v2, v0, Landroid/view/MiuiGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v3, v0, Landroid/view/MiuiGestureDetector;->mMaximumFlingVelocity:I

    int-to-float v3, v3

    invoke-virtual {v2, v14, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 407
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    .line 408
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    .line 409
    iget-object v4, v0, Landroid/view/MiuiGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4, v3}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v4

    .line 410
    iget-object v6, v0, Landroid/view/MiuiGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6, v3}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v3

    move v6, v5

    :goto_6
    if-ge v6, v9, :cond_1c

    if-ne v6, v2, :cond_9

    goto :goto_7

    .line 414
    :cond_9
    invoke-virtual {v1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    .line 415
    iget-object v8, v0, Landroid/view/MiuiGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8, v7}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v8

    mul-float/2addr v8, v4

    .line 416
    iget-object v11, v0, Landroid/view/MiuiGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v11, v7}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v7

    mul-float/2addr v7, v3

    add-float/2addr v8, v7

    cmpg-float v7, v8, v10

    if-gez v7, :cond_a

    .line 420
    iget-object v0, v0, Landroid/view/MiuiGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto/16 :goto_11

    :cond_a
    :goto_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 394
    :cond_b
    iput v12, v0, Landroid/view/MiuiGestureDetector;->mLastFocusX:F

    iput v12, v0, Landroid/view/MiuiGestureDetector;->mDownFocusX:F

    .line 395
    iput v13, v0, Landroid/view/MiuiGestureDetector;->mLastFocusY:F

    iput v13, v0, Landroid/view/MiuiGestureDetector;->mDownFocusY:F

    .line 397
    invoke-direct/range {p0 .. p0}, Landroid/view/MiuiGestureDetector;->cancelTaps()V

    goto/16 :goto_11

    .line 593
    :cond_c
    invoke-direct/range {p0 .. p0}, Landroid/view/MiuiGestureDetector;->cancel()V

    goto/16 :goto_11

    .line 468
    :cond_d
    iget-boolean v2, v0, Landroid/view/MiuiGestureDetector;->mInLongPress:Z

    if-nez v2, :cond_1c

    iget-boolean v2, v0, Landroid/view/MiuiGestureDetector;->mInContextClick:Z

    if-eqz v2, :cond_e

    goto/16 :goto_11

    .line 472
    :cond_e
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getClassification()I

    move-result v2

    .line 473
    iget-object v3, v0, Landroid/view/MiuiGestureDetector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v11}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    .line 475
    iget v9, v0, Landroid/view/MiuiGestureDetector;->mLastFocusX:F

    sub-float/2addr v9, v12

    .line 476
    iget v10, v0, Landroid/view/MiuiGestureDetector;->mLastFocusY:F

    sub-float/2addr v10, v13

    .line 477
    iget-boolean v14, v0, Landroid/view/MiuiGestureDetector;->mIsDoubleTapping:Z

    if-eqz v14, :cond_f

    .line 479
    iget-object v14, v0, Landroid/view/MiuiGestureDetector;->mDoubleTapListener:Landroid/view/MiuiGestureDetector$OnDoubleTapListener;

    invoke-interface {v14, v1}, Landroid/view/MiuiGestureDetector$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result v14

    or-int/2addr v14, v5

    goto :goto_8

    :cond_f
    move v14, v5

    .line 481
    :goto_8
    iget-boolean v15, v0, Landroid/view/MiuiGestureDetector;->mAlwaysInTapRegion:Z

    if-eqz v15, :cond_17

    .line 482
    iget v15, v0, Landroid/view/MiuiGestureDetector;->mDownFocusX:F

    sub-float v15, v12, v15

    float-to-int v15, v15

    .line 483
    iget v6, v0, Landroid/view/MiuiGestureDetector;->mDownFocusY:F

    sub-float v6, v13, v6

    float-to-int v6, v6

    mul-int/2addr v15, v15

    mul-int/2addr v6, v6

    add-int/2addr v15, v6

    if-eqz v8, :cond_10

    move v6, v5

    goto :goto_9

    .line 485
    :cond_10
    iget v6, v0, Landroid/view/MiuiGestureDetector;->mTouchSlopSquare:I

    :goto_9
    if-ne v2, v4, :cond_11

    move/from16 v16, v4

    goto :goto_a

    :cond_11
    move/from16 v16, v5

    :goto_a
    if-eqz v3, :cond_12

    if-eqz v16, :cond_12

    move/from16 v16, v4

    goto :goto_b

    :cond_12
    move/from16 v16, v5

    :goto_b
    if-eqz v16, :cond_14

    if-le v15, v6, :cond_13

    .line 499
    iget-object v4, v0, Landroid/view/MiuiGestureDetector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 500
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v4

    move/from16 v17, v8

    int-to-long v7, v4

    .line 501
    iget-object v4, v0, Landroid/view/MiuiGestureDetector;->mHandler:Landroid/os/Handler;

    .line 502
    invoke-virtual {v4, v11}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 503
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v19

    long-to-float v7, v7

    iget v8, v0, Landroid/view/MiuiGestureDetector;->mAmbiguousGestureMultiplier:F

    mul-float/2addr v7, v8

    float-to-long v7, v7

    add-long v7, v19, v7

    .line 501
    invoke-virtual {v4, v5, v7, v8}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_c

    :cond_13
    move/from16 v17, v8

    :goto_c
    int-to-float v4, v6

    .line 510
    iget v5, v0, Landroid/view/MiuiGestureDetector;->mAmbiguousGestureMultiplier:F

    mul-float/2addr v5, v5

    mul-float/2addr v4, v5

    float-to-int v6, v4

    goto :goto_d

    :cond_14
    move/from16 v17, v8

    :goto_d
    if-le v15, v6, :cond_15

    .line 514
    iget-object v4, v0, Landroid/view/MiuiGestureDetector;->mListener:Landroid/view/MiuiGestureDetector$OnGestureListener;

    iget-object v5, v0, Landroid/view/MiuiGestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-interface {v4, v5, v1, v9, v10}, Landroid/view/MiuiGestureDetector$OnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v1

    .line 515
    iput v12, v0, Landroid/view/MiuiGestureDetector;->mLastFocusX:F

    .line 516
    iput v13, v0, Landroid/view/MiuiGestureDetector;->mLastFocusY:F

    const/4 v4, 0x0

    .line 517
    iput-boolean v4, v0, Landroid/view/MiuiGestureDetector;->mAlwaysInTapRegion:Z

    .line 518
    iget-object v4, v0, Landroid/view/MiuiGestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 519
    iget-object v4, v0, Landroid/view/MiuiGestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 520
    iget-object v4, v0, Landroid/view/MiuiGestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 521
    iget-object v4, v0, Landroid/view/MiuiGestureDetector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v11}, Landroid/os/Handler;->removeMessages(I)V

    move v14, v1

    :cond_15
    if-eqz v17, :cond_16

    const/4 v1, 0x0

    goto :goto_e

    .line 523
    :cond_16
    iget v1, v0, Landroid/view/MiuiGestureDetector;->mDoubleTapTouchSlopSquare:I

    :goto_e
    if-le v15, v1, :cond_19

    const/4 v1, 0x0

    .line 525
    iput-boolean v1, v0, Landroid/view/MiuiGestureDetector;->mAlwaysInBiggerTapRegion:Z

    goto :goto_f

    .line 527
    :cond_17
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    if-gez v4, :cond_18

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_19

    .line 528
    :cond_18
    iget-object v4, v0, Landroid/view/MiuiGestureDetector;->mListener:Landroid/view/MiuiGestureDetector$OnGestureListener;

    iget-object v5, v0, Landroid/view/MiuiGestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-interface {v4, v5, v1, v9, v10}, Landroid/view/MiuiGestureDetector$OnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v14

    .line 529
    iput v12, v0, Landroid/view/MiuiGestureDetector;->mLastFocusX:F

    .line 530
    iput v13, v0, Landroid/view/MiuiGestureDetector;->mLastFocusY:F

    :cond_19
    :goto_f
    if-ne v2, v11, :cond_1a

    const/4 v4, 0x1

    goto :goto_10

    :cond_1a
    const/4 v4, 0x0

    :goto_10
    if-eqz v4, :cond_1b

    if-eqz v3, :cond_1b

    .line 535
    iget-object v1, v0, Landroid/view/MiuiGestureDetector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 536
    iget-object v0, v0, Landroid/view/MiuiGestureDetector;->mHandler:Landroid/os/Handler;

    .line 537
    invoke-virtual {v0, v11}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 536
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1b
    move v5, v14

    goto/16 :goto_15

    :cond_1c
    :goto_11
    const/4 v5, 0x0

    goto/16 :goto_15

    :cond_1d
    move v2, v5

    .line 542
    iput-boolean v2, v0, Landroid/view/MiuiGestureDetector;->mStillDown:Z

    .line 543
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    .line 544
    iget-boolean v3, v0, Landroid/view/MiuiGestureDetector;->mIsDoubleTapping:Z

    if-eqz v3, :cond_1f

    .line 545
    iget-object v3, v0, Landroid/view/MiuiGestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 546
    iget-object v3, v0, Landroid/view/MiuiGestureDetector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 547
    iget-object v3, v0, Landroid/view/MiuiGestureDetector;->mDoubleTapListener:Landroid/view/MiuiGestureDetector$OnDoubleTapListener;

    iget-object v4, v0, Landroid/view/MiuiGestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-interface {v3, v4}, Landroid/view/MiuiGestureDetector$OnDoubleTapListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    .line 550
    :cond_1e
    iget-object v3, v0, Landroid/view/MiuiGestureDetector;->mDoubleTapListener:Landroid/view/MiuiGestureDetector$OnDoubleTapListener;

    invoke-interface {v3, v1}, Landroid/view/MiuiGestureDetector$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    const/4 v3, 0x0

    or-int v18, v3, v1

    move/from16 v1, v18

    goto :goto_13

    :cond_1f
    const/4 v3, 0x0

    .line 551
    iget-boolean v4, v0, Landroid/view/MiuiGestureDetector;->mInLongPress:Z

    if-eqz v4, :cond_20

    .line 552
    iget-object v1, v0, Landroid/view/MiuiGestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 553
    iget-object v1, v0, Landroid/view/MiuiGestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x3

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 554
    iput-boolean v3, v0, Landroid/view/MiuiGestureDetector;->mInLongPress:Z

    goto :goto_12

    .line 555
    :cond_20
    iget-boolean v3, v0, Landroid/view/MiuiGestureDetector;->mAlwaysInTapRegion:Z

    if-eqz v3, :cond_22

    iget-boolean v3, v0, Landroid/view/MiuiGestureDetector;->mIgnoreNextUpEvent:Z

    if-nez v3, :cond_22

    .line 556
    iget-object v3, v0, Landroid/view/MiuiGestureDetector;->mListener:Landroid/view/MiuiGestureDetector$OnGestureListener;

    invoke-interface {v3, v1}, Landroid/view/MiuiGestureDetector$OnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result v3

    .line 557
    iget-boolean v4, v0, Landroid/view/MiuiGestureDetector;->mDeferConfirmSingleTap:Z

    if-eqz v4, :cond_21

    iget-object v4, v0, Landroid/view/MiuiGestureDetector;->mDoubleTapListener:Landroid/view/MiuiGestureDetector$OnDoubleTapListener;

    if-eqz v4, :cond_21

    .line 558
    invoke-interface {v4, v1}, Landroid/view/MiuiGestureDetector$OnDoubleTapListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    :cond_21
    move v1, v3

    goto :goto_13

    .line 560
    :cond_22
    iget-boolean v3, v0, Landroid/view/MiuiGestureDetector;->mIgnoreNextUpEvent:Z

    if-nez v3, :cond_24

    .line 563
    iget-object v3, v0, Landroid/view/MiuiGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/4 v4, 0x0

    .line 564
    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    .line 565
    iget v4, v0, Landroid/view/MiuiGestureDetector;->mMaximumFlingVelocity:I

    int-to-float v4, v4

    invoke-virtual {v3, v14, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 566
    invoke-virtual {v3, v5}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v4

    .line 567
    invoke-virtual {v3, v5}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v3

    .line 569
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, v0, Landroid/view/MiuiGestureDetector;->mMinimumFlingVelocity:I

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-gtz v5, :cond_23

    .line 570
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, v0, Landroid/view/MiuiGestureDetector;->mMinimumFlingVelocity:I

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_24

    .line 571
    :cond_23
    iget-object v5, v0, Landroid/view/MiuiGestureDetector;->mListener:Landroid/view/MiuiGestureDetector$OnGestureListener;

    iget-object v6, v0, Landroid/view/MiuiGestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-interface {v5, v6, v1, v3, v4}, Landroid/view/MiuiGestureDetector$OnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v1

    goto :goto_13

    :cond_24
    :goto_12
    const/4 v1, 0x0

    .line 574
    :goto_13
    iget-object v3, v0, Landroid/view/MiuiGestureDetector;->mPreviousUpEvent:Landroid/view/MotionEvent;

    if-eqz v3, :cond_25

    .line 575
    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    .line 578
    :cond_25
    iput-object v2, v0, Landroid/view/MiuiGestureDetector;->mPreviousUpEvent:Landroid/view/MotionEvent;

    .line 579
    iget-object v2, v0, Landroid/view/MiuiGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v2, :cond_26

    .line 582
    invoke-virtual {v2}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v2, 0x0

    .line 583
    iput-object v2, v0, Landroid/view/MiuiGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_26
    const/4 v2, 0x0

    .line 585
    iput-boolean v2, v0, Landroid/view/MiuiGestureDetector;->mIsDoubleTapping:Z

    .line 586
    iput-boolean v2, v0, Landroid/view/MiuiGestureDetector;->mDeferConfirmSingleTap:Z

    .line 587
    iput-boolean v2, v0, Landroid/view/MiuiGestureDetector;->mIgnoreNextUpEvent:Z

    .line 588
    iget-object v2, v0, Landroid/view/MiuiGestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 589
    iget-object v0, v0, Landroid/view/MiuiGestureDetector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v11}, Landroid/os/Handler;->removeMessages(I)V

    move v5, v1

    goto/16 :goto_15

    .line 427
    :cond_27
    iget-object v2, v0, Landroid/view/MiuiGestureDetector;->mDoubleTapListener:Landroid/view/MiuiGestureDetector$OnDoubleTapListener;

    if-eqz v2, :cond_2a

    .line 428
    iget-object v2, v0, Landroid/view/MiuiGestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 429
    iget-object v4, v0, Landroid/view/MiuiGestureDetector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 430
    :cond_28
    iget-object v3, v0, Landroid/view/MiuiGestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    if-eqz v3, :cond_29

    iget-object v4, v0, Landroid/view/MiuiGestureDetector;->mPreviousUpEvent:Landroid/view/MotionEvent;

    if-eqz v4, :cond_29

    if-eqz v2, :cond_29

    .line 432
    invoke-direct {v0, v3, v4, v1}, Landroid/view/MiuiGestureDetector;->isConsideredDoubleTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_29

    const/4 v2, 0x1

    .line 434
    iput-boolean v2, v0, Landroid/view/MiuiGestureDetector;->mIsDoubleTapping:Z

    .line 436
    iget-object v2, v0, Landroid/view/MiuiGestureDetector;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x12c

    const/4 v5, 0x4

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 438
    iget-object v2, v0, Landroid/view/MiuiGestureDetector;->mDoubleTapListener:Landroid/view/MiuiGestureDetector$OnDoubleTapListener;

    invoke-interface {v2, v1}, Landroid/view/MiuiGestureDetector$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    const/4 v3, 0x0

    or-int/lit8 v4, v2, 0x0

    goto :goto_14

    .line 441
    :cond_29
    iget-object v2, v0, Landroid/view/MiuiGestureDetector;->mHandler:Landroid/os/Handler;

    sget v3, Landroid/view/MiuiGestureDetector;->DOUBLE_TAP_TIMEOUT:I

    int-to-long v3, v3

    const/4 v5, 0x3

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2a
    const/4 v4, 0x0

    .line 444
    :goto_14
    iput v12, v0, Landroid/view/MiuiGestureDetector;->mLastFocusX:F

    iput v12, v0, Landroid/view/MiuiGestureDetector;->mDownFocusX:F

    .line 445
    iput v13, v0, Landroid/view/MiuiGestureDetector;->mLastFocusY:F

    iput v13, v0, Landroid/view/MiuiGestureDetector;->mDownFocusY:F

    .line 446
    iget-object v2, v0, Landroid/view/MiuiGestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    if-eqz v2, :cond_2b

    .line 447
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 449
    :cond_2b
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    iput-object v2, v0, Landroid/view/MiuiGestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    const/4 v2, 0x1

    .line 450
    iput-boolean v2, v0, Landroid/view/MiuiGestureDetector;->mAlwaysInTapRegion:Z

    .line 451
    iput-boolean v2, v0, Landroid/view/MiuiGestureDetector;->mAlwaysInBiggerTapRegion:Z

    .line 452
    iput-boolean v2, v0, Landroid/view/MiuiGestureDetector;->mStillDown:Z

    const/4 v2, 0x0

    .line 453
    iput-boolean v2, v0, Landroid/view/MiuiGestureDetector;->mInLongPress:Z

    .line 454
    iput-boolean v2, v0, Landroid/view/MiuiGestureDetector;->mDeferConfirmSingleTap:Z

    .line 455
    iget-boolean v2, v0, Landroid/view/MiuiGestureDetector;->mIsLongpressEnabled:Z

    if-eqz v2, :cond_2c

    .line 456
    iget-object v2, v0, Landroid/view/MiuiGestureDetector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 457
    iget-object v2, v0, Landroid/view/MiuiGestureDetector;->mHandler:Landroid/os/Handler;

    .line 458
    invoke-virtual {v2, v11}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    iget-object v5, v0, Landroid/view/MiuiGestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    .line 459
    invoke-virtual {v5}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v5

    const-wide/16 v7, 0x320

    add-long/2addr v5, v7

    .line 457
    invoke-virtual {v2, v3, v5, v6}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 460
    iget-object v2, v0, Landroid/view/MiuiGestureDetector;->TAG:Ljava/lang/String;

    const-string v3, "onTouchEvent ACTION_DOWN MessageDelayed LONG_PRESS"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    :cond_2c
    iget-object v2, v0, Landroid/view/MiuiGestureDetector;->mHandler:Landroid/os/Handler;

    iget-object v3, v0, Landroid/view/MiuiGestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    .line 463
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v5

    sget v3, Landroid/view/MiuiGestureDetector;->TAP_TIMEOUT:I

    int-to-long v7, v3

    add-long/2addr v5, v7

    const/4 v3, 0x1

    .line 462
    invoke-virtual {v2, v3, v5, v6}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 464
    iget-object v0, v0, Landroid/view/MiuiGestureDetector;->mListener:Landroid/view/MiuiGestureDetector$OnGestureListener;

    invoke-interface {v0, v1}, Landroid/view/MiuiGestureDetector$OnGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    move-result v0

    or-int v5, v4, v0

    :goto_15
    return v5
.end method

.method public setContextClickListener(Landroid/view/MiuiGestureDetector$OnContextClickListener;)V
    .locals 0

    .line 350
    iput-object p1, p0, Landroid/view/MiuiGestureDetector;->mContextClickListener:Landroid/view/MiuiGestureDetector$OnContextClickListener;

    return-void
.end method

.method public setOnDoubleTapListener(Landroid/view/MiuiGestureDetector$OnDoubleTapListener;)V
    .locals 0

    .line 340
    iput-object p1, p0, Landroid/view/MiuiGestureDetector;->mDoubleTapListener:Landroid/view/MiuiGestureDetector$OnDoubleTapListener;

    return-void
.end method
