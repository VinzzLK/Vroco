.class public Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;
.super Ljava/lang/Object;
.source "ScreenView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/ScreenView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GestureVelocityTracker"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;
    }
.end annotation


# instance fields
.field private mCounter:I

.field private mPointerId:I

.field private mTx:Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;

.field private mTy:Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mVelocityTrackerOverScroll:Landroid/view/VelocityTracker;

.field private mVerticalGestureConfirmed:Z

.field final synthetic this$0:Lcom/miui/home/launcher/ScreenView;


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/ScreenView;)V
    .locals 0

    .line 253
    iput-object p1, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->this$0:Lcom/miui/home/launcher/ScreenView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 267
    new-instance p1, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;-><init>(Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;)V

    iput-object p1, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->mTx:Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;

    .line 268
    new-instance p1, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;-><init>(Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;)V

    iput-object p1, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->mTy:Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;

    const/4 p1, -0x1

    .line 269
    iput p1, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->mPointerId:I

    .line 270
    iput p1, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->mCounter:I

    return-void
.end method

.method private reset()V
    .locals 1

    .line 367
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->mTx:Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;->reset()V

    .line 368
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->mTy:Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;->reset()V

    const/4 v0, -0x1

    .line 369
    iput v0, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->mPointerId:I

    const/4 v0, 0x0

    .line 370
    iput v0, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->mCounter:I

    .line 371
    iput-boolean v0, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->mVerticalGestureConfirmed:Z

    return-void
.end method

.method private trackPoint(FLcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;)V
    .locals 4

    const/4 p0, 0x0

    cmpg-float v0, p1, p0

    if-gez v0, :cond_0

    return-void

    .line 339
    :cond_0
    iget v0, p2, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;->start:F

    cmpg-float v1, v0, p0

    if-gez v1, :cond_1

    .line 340
    iput p1, p2, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;->start:F

    return-void

    .line 343
    :cond_1
    iget v1, p2, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;->prev:F

    cmpg-float v2, v1, p0

    if-gez v2, :cond_2

    .line 344
    iput p1, p2, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;->prev:F

    return-void

    .line 347
    :cond_2
    iget v2, p2, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;->fold:F

    cmpg-float p0, v2, p0

    const/high16 v3, 0x40400000    # 3.0f

    if-gez p0, :cond_5

    cmpl-float p0, v1, v0

    if-lez p0, :cond_3

    cmpg-float p0, p1, v1

    if-ltz p0, :cond_4

    :cond_3
    cmpg-float p0, v1, v0

    if-gez p0, :cond_8

    cmpl-float p0, p1, v1

    if-lez p0, :cond_8

    :cond_4
    sub-float p0, p1, v0

    .line 349
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpl-float p0, p0, v3

    if-lez p0, :cond_8

    .line 350
    iget p0, p2, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;->prev:F

    iput p0, p2, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;->fold:F

    goto :goto_0

    :cond_5
    cmpl-float p0, v2, v1

    if-eqz p0, :cond_8

    cmpl-float p0, v1, v2

    if-lez p0, :cond_6

    cmpg-float p0, p1, v1

    if-ltz p0, :cond_7

    :cond_6
    cmpg-float p0, v1, v2

    if-gez p0, :cond_8

    cmpl-float p0, p1, v1

    if-lez p0, :cond_8

    :cond_7
    sub-float p0, p1, v2

    .line 356
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpl-float p0, p0, v3

    if-lez p0, :cond_8

    .line 357
    iget p0, p2, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;->fold:F

    iput p0, p2, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;->start:F

    .line 358
    iget p0, p2, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;->prev:F

    iput p0, p2, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;->fold:F

    .line 363
    :cond_8
    :goto_0
    iput p1, p2, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;->prev:F

    return-void
.end method


# virtual methods
.method public addMovement(Landroid/view/MotionEvent;)V
    .locals 5

    .line 294
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x1

    if-eq v0, v1, :cond_7

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    goto/16 :goto_1

    .line 298
    :cond_0
    iget v0, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->mCounter:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->mCounter:I

    .line 299
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_1

    .line 300
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 302
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->this$0:Lcom/miui/home/launcher/ScreenView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v0, v2}, Lcom/miui/home/launcher/ScreenView;->access$100(Lcom/miui/home/launcher/ScreenView;F)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 303
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->mVelocityTrackerOverScroll:Landroid/view/VelocityTracker;

    if-nez v0, :cond_2

    .line 304
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->mVelocityTrackerOverScroll:Landroid/view/VelocityTracker;

    .line 306
    :cond_2
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 307
    iget-object v2, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->this$0:Lcom/miui/home/launcher/ScreenView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 308
    iget-object v2, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->mVelocityTrackerOverScroll:Landroid/view/VelocityTracker;

    invoke-virtual {v2, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 309
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 312
    :cond_3
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 313
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 314
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 315
    iget v3, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->mPointerId:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_5

    .line 316
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    if-eq v1, v4, :cond_4

    .line 318
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    .line 319
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    goto :goto_0

    .line 321
    :cond_4
    iput v4, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->mPointerId:I

    goto :goto_0

    .line 325
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v3

    if-lez v3, :cond_6

    .line 326
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v0

    .line 330
    :cond_6
    :goto_0
    iget-object p1, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->mTx:Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;

    invoke-direct {p0, v0, p1}, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->trackPoint(FLcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;)V

    .line 331
    iget-object p1, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->mTy:Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;

    invoke-direct {p0, v2, p1}, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->trackPoint(FLcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;)V

    :cond_7
    :goto_1
    return-void
.end method

.method public getCounter()I
    .locals 0

    .line 385
    iget p0, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->mCounter:I

    return p0
.end method

.method public getFlingDirection(Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;F)I
    .locals 5

    .line 427
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x43960000    # 300.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_6

    .line 428
    iget v0, p1, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;->fold:F

    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-gez v2, :cond_1

    iget v2, p1, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;->prev:F

    cmpl-float v1, v2, v1

    if-ltz v1, :cond_1

    .line 429
    iget p0, p1, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;->start:F

    cmpl-float p0, v2, p0

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    return v3

    .line 431
    :cond_1
    iget p1, p1, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;->prev:F

    cmpg-float v1, p1, v0

    const/4 v2, 0x3

    if-gez v1, :cond_3

    .line 432
    iget-object p1, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->this$0:Lcom/miui/home/launcher/ScreenView;

    invoke-static {p1}, Lcom/miui/home/launcher/ScreenView;->access$300(Lcom/miui/home/launcher/ScreenView;)Lcom/miui/home/launcher/util/FlingHelper;

    move-result-object p1

    float-to-int v0, p2

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/util/FlingHelper;->getSplineFlingDistance(I)D

    move-result-wide v0

    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result p1

    float-to-double p1, p1

    mul-double/2addr v0, p1

    .line 433
    iget-object p1, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->this$0:Lcom/miui/home/launcher/ScreenView;

    invoke-static {p1}, Lcom/miui/home/launcher/ScreenView;->access$400(Lcom/miui/home/launcher/ScreenView;)F

    move-result p1

    float-to-double p1, p1

    sub-double/2addr p1, v0

    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->this$0:Lcom/miui/home/launcher/ScreenView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ScreenView;->getCurrentScreen()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget-object p0, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->this$0:Lcom/miui/home/launcher/ScreenView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getChildScreenMeasureWidth()I

    move-result p0

    div-int/2addr p0, v4

    add-int/2addr v0, p0

    int-to-double v0, v0

    cmpg-double p0, p1, v0

    if-gez p0, :cond_2

    return v2

    :cond_2
    return v4

    :cond_3
    cmpl-float p1, p1, v0

    if-lez p1, :cond_5

    .line 439
    iget-object p1, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->this$0:Lcom/miui/home/launcher/ScreenView;

    invoke-static {p1}, Lcom/miui/home/launcher/ScreenView;->access$300(Lcom/miui/home/launcher/ScreenView;)Lcom/miui/home/launcher/util/FlingHelper;

    move-result-object p1

    float-to-int v0, p2

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/util/FlingHelper;->getSplineFlingDistance(I)D

    move-result-wide v0

    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result p1

    float-to-double p1, p1

    mul-double/2addr v0, p1

    .line 440
    iget-object p1, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->this$0:Lcom/miui/home/launcher/ScreenView;

    invoke-static {p1}, Lcom/miui/home/launcher/ScreenView;->access$400(Lcom/miui/home/launcher/ScreenView;)F

    move-result p1

    float-to-double p1, p1

    sub-double/2addr p1, v0

    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->this$0:Lcom/miui/home/launcher/ScreenView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ScreenView;->getCurrentScreen()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget-object p0, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->this$0:Lcom/miui/home/launcher/ScreenView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getChildScreenMeasureWidth()I

    move-result p0

    div-int/2addr p0, v4

    sub-int/2addr v0, p0

    int-to-double v0, v0

    cmpl-double p0, p1, v0

    if-lez p0, :cond_4

    return v2

    :cond_4
    return v3

    :cond_5
    return v2

    :cond_6
    const/4 p0, 0x4

    return p0
.end method

.method public getVerticalGesture()I
    .locals 3

    .line 410
    iget-boolean v0, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->mVerticalGestureConfirmed:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->getCounter()I

    move-result v0

    const/4 v2, 0x5

    if-ge v0, v2, :cond_0

    goto :goto_1

    :cond_0
    const/16 v0, 0x3e8

    .line 413
    iget-object v2, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->this$0:Lcom/miui/home/launcher/ScreenView;

    invoke-static {v2}, Lcom/miui/home/launcher/ScreenView;->access$200(Lcom/miui/home/launcher/ScreenView;)I

    move-result v2

    invoke-virtual {p0, v0, v2, v1}, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->getYVelocity(III)F

    move-result v0

    .line 414
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v2, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->this$0:Lcom/miui/home/launcher/ScreenView;

    invoke-static {v2}, Lcom/miui/home/launcher/ScreenView;->access$200(Lcom/miui/home/launcher/ScreenView;)I

    move-result v2

    div-int/lit8 v2, v2, 0x3

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_2

    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->mTy:Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;

    iget v2, v0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;->start:F

    iget v0, v0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;->prev:F

    sub-float/2addr v2, v0

    .line 415
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v2, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->this$0:Lcom/miui/home/launcher/ScreenView;

    iget v2, v2, Lcom/miui/home/launcher/ScreenView;->DEFAULT_VERTICAL_GESTURE_CONFIRM_DIST:I

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    const/4 v0, 0x1

    .line 416
    iput-boolean v0, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->mVerticalGestureConfirmed:Z

    .line 417
    iget-object p0, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->mTy:Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;

    iget v0, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;->start:F

    iget p0, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;->prev:F

    cmpl-float p0, v0, p0

    if-lez p0, :cond_1

    const/16 p0, 0xa

    goto :goto_0

    :cond_1
    const/16 p0, 0xb

    :goto_0
    return p0

    :cond_2
    :goto_1
    return v1
.end method

.method public getXFlingDirection(F)I
    .locals 1

    .line 423
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->mTx:Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;

    invoke-virtual {p0, v0, p1}, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->getFlingDirection(Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;F)I

    move-result p0

    return p0
.end method

.method public getXVelocity(III)F
    .locals 2

    .line 389
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 390
    iget-object p0, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->this$0:Lcom/miui/home/launcher/ScreenView;

    invoke-static {p0}, Lcom/miui/home/launcher/ScreenView;->access$200(Lcom/miui/home/launcher/ScreenView;)I

    move-result p0

    int-to-float p0, p0

    return p0

    .line 392
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->this$0:Lcom/miui/home/launcher/ScreenView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/ScreenView;->access$100(Lcom/miui/home/launcher/ScreenView;F)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->mVelocityTrackerOverScroll:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_1

    int-to-float p2, p2

    .line 393
    invoke-virtual {v0, p1, p2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 394
    iget-object p0, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->mVelocityTrackerOverScroll:Landroid/view/VelocityTracker;

    invoke-virtual {p0, p3}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result p0

    return p0

    .line 396
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->mVelocityTracker:Landroid/view/VelocityTracker;

    int-to-float p2, p2

    invoke-virtual {v0, p1, p2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 397
    iget-object p0, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p0, p3}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result p0

    return p0
.end method

.method public getYVelocity(III)F
    .locals 1

    .line 402
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 403
    iget-object p0, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->this$0:Lcom/miui/home/launcher/ScreenView;

    invoke-static {p0}, Lcom/miui/home/launcher/ScreenView;->access$200(Lcom/miui/home/launcher/ScreenView;)I

    move-result p0

    int-to-float p0, p0

    return p0

    :cond_0
    int-to-float p2, p2

    .line 405
    invoke-virtual {v0, p1, p2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 406
    iget-object p0, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p0, p3}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result p0

    return p0
.end method

.method public init(I)V
    .locals 1

    .line 375
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 376
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_0

    .line 378
    :cond_0
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 380
    :goto_0
    invoke-direct {p0}, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->reset()V

    .line 381
    iput p1, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->mPointerId:I

    return-void
.end method

.method public recycle()V
    .locals 2

    .line 282
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 283
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 284
    iput-object v1, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->mVelocityTrackerOverScroll:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_1

    .line 287
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 288
    iput-object v1, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->mVelocityTrackerOverScroll:Landroid/view/VelocityTracker;

    .line 290
    :cond_1
    invoke-direct {p0}, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->reset()V

    return-void
.end method
