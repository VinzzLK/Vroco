.class public Lcom/miui/home/launcher/touch/SwipeDetector;
.super Ljava/lang/Object;
.source "SwipeDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/touch/SwipeDetector$Listener;,
        Lcom/miui/home/launcher/touch/SwipeDetector$Direction;,
        Lcom/miui/home/launcher/touch/SwipeDetector$ScrollState;
    }
.end annotation


# static fields
.field public static final HORIZONTAL:Lcom/miui/home/launcher/touch/SwipeDetector$Direction;

.field public static final VERTICAL:Lcom/miui/home/launcher/touch/SwipeDetector$Direction;


# instance fields
.field protected mActivePointerId:I

.field private mCurrentMillis:J

.field private mDir:Lcom/miui/home/launcher/touch/SwipeDetector$Direction;

.field private mDisplacement:F

.field private final mDownPos:Landroid/graphics/PointF;

.field private mIgnoreSlopWhenSettling:Z

.field private mLastDisplacement:F

.field private final mLastPos:Landroid/graphics/PointF;

.field private final mListener:Lcom/miui/home/launcher/touch/SwipeDetector$Listener;

.field private mScrollConditions:I

.field private mState:Lcom/miui/home/launcher/touch/SwipeDetector$ScrollState;

.field private mSubtractDisplacement:F

.field private final mTouchSlop:F

.field private mVelocity:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 95
    new-instance v0, Lcom/miui/home/launcher/touch/SwipeDetector$1;

    invoke-direct {v0}, Lcom/miui/home/launcher/touch/SwipeDetector$1;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/touch/SwipeDetector;->VERTICAL:Lcom/miui/home/launcher/touch/SwipeDetector$Direction;

    .line 108
    new-instance v0, Lcom/miui/home/launcher/touch/SwipeDetector$2;

    invoke-direct {v0}, Lcom/miui/home/launcher/touch/SwipeDetector$2;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/touch/SwipeDetector;->HORIZONTAL:Lcom/miui/home/launcher/touch/SwipeDetector$Direction;

    return-void
.end method

.method protected constructor <init>(FLcom/miui/home/launcher/touch/SwipeDetector$Listener;Lcom/miui/home/launcher/touch/SwipeDetector$Direction;)V
    .locals 1

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 50
    iput v0, p0, Lcom/miui/home/launcher/touch/SwipeDetector;->mActivePointerId:I

    .line 64
    sget-object v0, Lcom/miui/home/launcher/touch/SwipeDetector$ScrollState;->IDLE:Lcom/miui/home/launcher/touch/SwipeDetector$ScrollState;

    iput-object v0, p0, Lcom/miui/home/launcher/touch/SwipeDetector;->mState:Lcom/miui/home/launcher/touch/SwipeDetector$ScrollState;

    .line 156
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/touch/SwipeDetector;->mDownPos:Landroid/graphics/PointF;

    .line 157
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/touch/SwipeDetector;->mLastPos:Landroid/graphics/PointF;

    .line 188
    iput p1, p0, Lcom/miui/home/launcher/touch/SwipeDetector;->mTouchSlop:F

    .line 189
    iput-object p2, p0, Lcom/miui/home/launcher/touch/SwipeDetector;->mListener:Lcom/miui/home/launcher/touch/SwipeDetector$Listener;

    .line 190
    iput-object p3, p0, Lcom/miui/home/launcher/touch/SwipeDetector;->mDir:Lcom/miui/home/launcher/touch/SwipeDetector$Direction;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/miui/home/launcher/touch/SwipeDetector$Listener;Lcom/miui/home/launcher/touch/SwipeDetector$Direction;)V
    .locals 0

    .line 183
    sget p1, Lcom/miui/home/launcher/ScreenView;->VIEW_CONFIGURATION_TOUCH_SLOP:I

    int-to-float p1, p1

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/launcher/touch/SwipeDetector;-><init>(FLcom/miui/home/launcher/touch/SwipeDetector$Listener;Lcom/miui/home/launcher/touch/SwipeDetector$Direction;)V

    return-void
.end method

.method public static calculateDuration(FF)J
    .locals 1

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr p0, v0

    .line 356
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v0, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    const v0, 0x3e4ccccd    # 0.2f

    .line 357
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    const/high16 v0, 0x44960000    # 1200.0f

    div-float/2addr v0, p0

    mul-float/2addr v0, p1

    const/high16 p0, 0x42c80000    # 100.0f

    .line 358
    invoke-static {p0, v0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    float-to-long p0, p0

    return-wide p0
.end method

.method private static computeDampeningFactor(F)F
    .locals 1

    const v0, 0x417ea5dd

    add-float/2addr v0, p0

    div-float/2addr p0, v0

    return p0
.end method

.method private initializeDragging()V
    .locals 3

    .line 291
    iget-object v0, p0, Lcom/miui/home/launcher/touch/SwipeDetector;->mState:Lcom/miui/home/launcher/touch/SwipeDetector$ScrollState;

    sget-object v1, Lcom/miui/home/launcher/touch/SwipeDetector$ScrollState;->SETTLING:Lcom/miui/home/launcher/touch/SwipeDetector$ScrollState;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/miui/home/launcher/touch/SwipeDetector;->mIgnoreSlopWhenSettling:Z

    if-eqz v0, :cond_0

    .line 292
    iput v2, p0, Lcom/miui/home/launcher/touch/SwipeDetector;->mSubtractDisplacement:F

    .line 294
    :cond_0
    iget v0, p0, Lcom/miui/home/launcher/touch/SwipeDetector;->mDisplacement:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    .line 295
    iget v0, p0, Lcom/miui/home/launcher/touch/SwipeDetector;->mTouchSlop:F

    iput v0, p0, Lcom/miui/home/launcher/touch/SwipeDetector;->mSubtractDisplacement:F

    goto :goto_0

    .line 297
    :cond_1
    iget v0, p0, Lcom/miui/home/launcher/touch/SwipeDetector;->mTouchSlop:F

    neg-float v0, v0

    iput v0, p0, Lcom/miui/home/launcher/touch/SwipeDetector;->mSubtractDisplacement:F

    :goto_0
    return-void
.end method

.method public static interpolate(FFF)F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    mul-float/2addr v0, p0

    mul-float/2addr p2, p1

    add-float/2addr v0, p2

    return v0
.end method

.method private isPullUp()Z
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/miui/home/launcher/touch/SwipeDetector;->mDir:Lcom/miui/home/launcher/touch/SwipeDetector$Direction;

    sget-object v1, Lcom/miui/home/launcher/touch/SwipeDetector;->VERTICAL:Lcom/miui/home/launcher/touch/SwipeDetector$Direction;

    if-ne v0, v1, :cond_0

    iget p0, p0, Lcom/miui/home/launcher/touch/SwipeDetector;->mDisplacement:F

    const/4 v0, 0x0

    cmpg-float p0, p0, v0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private reportDragEnd()V
    .locals 3

    .line 320
    iget-object v0, p0, Lcom/miui/home/launcher/touch/SwipeDetector;->mListener:Lcom/miui/home/launcher/touch/SwipeDetector$Listener;

    iget p0, p0, Lcom/miui/home/launcher/touch/SwipeDetector;->mVelocity:F

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, p0, v1}, Lcom/miui/home/launcher/touch/SwipeDetector$Listener;->onDragEnd(FZ)V

    return-void
.end method

.method private reportDragStart(Z)Z
    .locals 1

    .line 286
    iget-object p0, p0, Lcom/miui/home/launcher/touch/SwipeDetector;->mListener:Lcom/miui/home/launcher/touch/SwipeDetector$Listener;

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    invoke-interface {p0, p1}, Lcom/miui/home/launcher/touch/SwipeDetector$Listener;->onDragStart(Z)V

    return v0
.end method

.method private reportDragging()Z
    .locals 2

    .line 312
    iget v0, p0, Lcom/miui/home/launcher/touch/SwipeDetector;->mDisplacement:F

    iget v1, p0, Lcom/miui/home/launcher/touch/SwipeDetector;->mLastDisplacement:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    .line 313
    iput v0, p0, Lcom/miui/home/launcher/touch/SwipeDetector;->mLastDisplacement:F

    .line 314
    iget-object v1, p0, Lcom/miui/home/launcher/touch/SwipeDetector;->mListener:Lcom/miui/home/launcher/touch/SwipeDetector$Listener;

    iget p0, p0, Lcom/miui/home/launcher/touch/SwipeDetector;->mVelocity:F

    invoke-interface {v1, v0, p0}, Lcom/miui/home/launcher/touch/SwipeDetector$Listener;->onDrag(FF)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private setState(Lcom/miui/home/launcher/touch/SwipeDetector$ScrollState;)V
    .locals 2

    .line 130
    sget-object v0, Lcom/miui/home/launcher/touch/SwipeDetector$ScrollState;->DRAGGING:Lcom/miui/home/launcher/touch/SwipeDetector$ScrollState;

    if-ne p1, v0, :cond_1

    .line 131
    invoke-direct {p0}, Lcom/miui/home/launcher/touch/SwipeDetector;->initializeDragging()V

    .line 132
    iget-object v0, p0, Lcom/miui/home/launcher/touch/SwipeDetector;->mState:Lcom/miui/home/launcher/touch/SwipeDetector$ScrollState;

    sget-object v1, Lcom/miui/home/launcher/touch/SwipeDetector$ScrollState;->IDLE:Lcom/miui/home/launcher/touch/SwipeDetector$ScrollState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 133
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/touch/SwipeDetector;->reportDragStart(Z)Z

    goto :goto_0

    .line 134
    :cond_0
    sget-object v1, Lcom/miui/home/launcher/touch/SwipeDetector$ScrollState;->SETTLING:Lcom/miui/home/launcher/touch/SwipeDetector$ScrollState;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    .line 135
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/touch/SwipeDetector;->reportDragStart(Z)Z

    .line 138
    :cond_1
    :goto_0
    sget-object v0, Lcom/miui/home/launcher/touch/SwipeDetector$ScrollState;->SETTLING:Lcom/miui/home/launcher/touch/SwipeDetector$ScrollState;

    if-ne p1, v0, :cond_2

    .line 139
    invoke-direct {p0}, Lcom/miui/home/launcher/touch/SwipeDetector;->reportDragEnd()V

    .line 142
    :cond_2
    iput-object p1, p0, Lcom/miui/home/launcher/touch/SwipeDetector;->mState:Lcom/miui/home/launcher/touch/SwipeDetector$ScrollState;

    return-void
.end method

.method private shouldScrollStart(Landroid/view/MotionEvent;I)Z
    .locals 3

    .line 201
    iget-object v0, p0, Lcom/miui/home/launcher/touch/SwipeDetector;->mDir:Lcom/miui/home/launcher/touch/SwipeDetector$Direction;

    iget-object v1, p0, Lcom/miui/home/launcher/touch/SwipeDetector;->mDownPos:Landroid/graphics/PointF;

    invoke-virtual {v0, p1, p2, v1}, Lcom/miui/home/launcher/touch/SwipeDetector$Direction;->getActiveTouchSlop(Landroid/view/MotionEvent;ILandroid/graphics/PointF;)F

    move-result p1

    iget p2, p0, Lcom/miui/home/launcher/touch/SwipeDetector;->mTouchSlop:F

    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iget p2, p0, Lcom/miui/home/launcher/touch/SwipeDetector;->mDisplacement:F

    .line 202
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    cmpl-float p1, p1, p2

    const/4 p2, 0x0

    if-lez p1, :cond_0

    return p2

    .line 207
    :cond_0
    iget p1, p0, Lcom/miui/home/launcher/touch/SwipeDetector;->mDisplacement:F

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_1

    .line 208
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "shouldScrollStart: mScrollConditions = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/launcher/touch/SwipeDetector;->mScrollConditions:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "SwipeDetector"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :cond_1
    iget p1, p0, Lcom/miui/home/launcher/touch/SwipeDetector;->mScrollConditions:I

    and-int/lit8 v1, p1, 0x2

    const/4 v2, 0x1

    if-lez v1, :cond_2

    iget v1, p0, Lcom/miui/home/launcher/touch/SwipeDetector;->mDisplacement:F

    cmpl-float v1, v1, v0

    if-gtz v1, :cond_3

    :cond_2
    and-int/2addr p1, v2

    if-lez p1, :cond_4

    iget p0, p0, Lcom/miui/home/launcher/touch/SwipeDetector;->mDisplacement:F

    cmpg-float p0, p0, v0

    if-gez p0, :cond_4

    :cond_3
    return v2

    :cond_4
    return p2
.end method


# virtual methods
.method public computeVelocity(FJ)F
    .locals 2

    .line 327
    iget-wide v0, p0, Lcom/miui/home/launcher/touch/SwipeDetector;->mCurrentMillis:J

    .line 328
    iput-wide p2, p0, Lcom/miui/home/launcher/touch/SwipeDetector;->mCurrentMillis:J

    sub-long/2addr p2, v0

    long-to-float p2, p2

    const/4 p3, 0x0

    cmpl-float v0, p2, p3

    if-lez v0, :cond_0

    div-float p3, p1, p2

    .line 332
    :cond_0
    iget p1, p0, Lcom/miui/home/launcher/touch/SwipeDetector;->mVelocity:F

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const v0, 0x3a83126f    # 0.001f

    cmpg-float p1, p1, v0

    if-gez p1, :cond_1

    .line 333
    iput p3, p0, Lcom/miui/home/launcher/touch/SwipeDetector;->mVelocity:F

    goto :goto_0

    .line 335
    :cond_1
    invoke-static {p2}, Lcom/miui/home/launcher/touch/SwipeDetector;->computeDampeningFactor(F)F

    move-result p1

    .line 336
    iget p2, p0, Lcom/miui/home/launcher/touch/SwipeDetector;->mVelocity:F

    invoke-static {p2, p3, p1}, Lcom/miui/home/launcher/touch/SwipeDetector;->interpolate(FFF)F

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/touch/SwipeDetector;->mVelocity:F

    .line 338
    :goto_0
    iget p0, p0, Lcom/miui/home/launcher/touch/SwipeDetector;->mVelocity:F

    return p0
.end method

.method public finishedScrolling()V
    .locals 1

    .line 282
    sget-object v0, Lcom/miui/home/launcher/touch/SwipeDetector$ScrollState;->IDLE:Lcom/miui/home/launcher/touch/SwipeDetector$ScrollState;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/touch/SwipeDetector;->setState(Lcom/miui/home/launcher/touch/SwipeDetector$ScrollState;)V

    return-void
.end method

.method public getDirection()Lcom/miui/home/launcher/touch/SwipeDetector$Direction;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/miui/home/launcher/touch/SwipeDetector;->mDir:Lcom/miui/home/launcher/touch/SwipeDetector$Direction;

    return-object p0
.end method

.method public getDisplacement()F
    .locals 0

    .line 67
    iget p0, p0, Lcom/miui/home/launcher/touch/SwipeDetector;->mDisplacement:F

    return p0
.end method

.method public getTouchSlop()F
    .locals 0

    .line 363
    iget p0, p0, Lcom/miui/home/launcher/touch/SwipeDetector;->mTouchSlop:F

    return p0
.end method

.method public isDraggingOrSettling()Z
    .locals 1

    .line 146
    iget-object p0, p0, Lcom/miui/home/launcher/touch/SwipeDetector;->mState:Lcom/miui/home/launcher/touch/SwipeDetector$ScrollState;

    sget-object v0, Lcom/miui/home/launcher/touch/SwipeDetector$ScrollState;->DRAGGING:Lcom/miui/home/launcher/touch/SwipeDetector$ScrollState;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/miui/home/launcher/touch/SwipeDetector$ScrollState;->SETTLING:Lcom/miui/home/launcher/touch/SwipeDetector$ScrollState;

    if-ne p0, v0, :cond_0

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

.method public isIdleState()Z
    .locals 1

    .line 153
    iget-object p0, p0, Lcom/miui/home/launcher/touch/SwipeDetector;->mState:Lcom/miui/home/launcher/touch/SwipeDetector$ScrollState;

    sget-object v0, Lcom/miui/home/launcher/touch/SwipeDetector$ScrollState;->IDLE:Lcom/miui/home/launcher/touch/SwipeDetector$ScrollState;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 220
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_8

    if-eq v0, v2, :cond_7

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 v3, 0x3

    if-eq v0, v3, :cond_7

    const/4 v3, 0x6

    if-eq v0, v3, :cond_0

    goto/16 :goto_0

    .line 235
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 236
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    .line 237
    iget v4, p0, Lcom/miui/home/launcher/touch/SwipeDetector;->mActivePointerId:I

    if-ne v3, v4, :cond_9

    if-nez v0, :cond_1

    move v1, v2

    .line 239
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/touch/SwipeDetector;->mDownPos:Landroid/graphics/PointF;

    .line 240
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iget-object v4, p0, Lcom/miui/home/launcher/touch/SwipeDetector;->mLastPos:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    iget-object v5, p0, Lcom/miui/home/launcher/touch/SwipeDetector;->mDownPos:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    sub-float/2addr v4, v5

    sub-float/2addr v3, v4

    .line 241
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    iget-object v5, p0, Lcom/miui/home/launcher/touch/SwipeDetector;->mLastPos:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    iget-object v6, p0, Lcom/miui/home/launcher/touch/SwipeDetector;->mDownPos:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    sub-float/2addr v5, v6

    sub-float/2addr v4, v5

    .line 239
    invoke-virtual {v0, v3, v4}, Landroid/graphics/PointF;->set(FF)V

    .line 242
    iget-object v0, p0, Lcom/miui/home/launcher/touch/SwipeDetector;->mLastPos:Landroid/graphics/PointF;

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/graphics/PointF;->set(FF)V

    .line 243
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/touch/SwipeDetector;->mActivePointerId:I

    goto/16 :goto_0

    .line 247
    :cond_2
    iget v0, p0, Lcom/miui/home/launcher/touch/SwipeDetector;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    goto/16 :goto_0

    .line 251
    :cond_3
    iget-object v1, p0, Lcom/miui/home/launcher/touch/SwipeDetector;->mDir:Lcom/miui/home/launcher/touch/SwipeDetector$Direction;

    iget-object v3, p0, Lcom/miui/home/launcher/touch/SwipeDetector;->mDownPos:Landroid/graphics/PointF;

    invoke-virtual {v1, p1, v0, v3}, Lcom/miui/home/launcher/touch/SwipeDetector$Direction;->getDisplacement(Landroid/view/MotionEvent;ILandroid/graphics/PointF;)F

    move-result v1

    iput v1, p0, Lcom/miui/home/launcher/touch/SwipeDetector;->mDisplacement:F

    .line 252
    iget-object v1, p0, Lcom/miui/home/launcher/touch/SwipeDetector;->mDir:Lcom/miui/home/launcher/touch/SwipeDetector$Direction;

    iget-object v3, p0, Lcom/miui/home/launcher/touch/SwipeDetector;->mLastPos:Landroid/graphics/PointF;

    invoke-virtual {v1, p1, v0, v3}, Lcom/miui/home/launcher/touch/SwipeDetector$Direction;->getDisplacement(Landroid/view/MotionEvent;ILandroid/graphics/PointF;)F

    move-result v1

    .line 253
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    .line 252
    invoke-virtual {p0, v1, v3, v4}, Lcom/miui/home/launcher/touch/SwipeDetector;->computeVelocity(FJ)F

    .line 256
    iget-object v1, p0, Lcom/miui/home/launcher/touch/SwipeDetector;->mState:Lcom/miui/home/launcher/touch/SwipeDetector$ScrollState;

    sget-object v3, Lcom/miui/home/launcher/touch/SwipeDetector$ScrollState;->DRAGGING:Lcom/miui/home/launcher/touch/SwipeDetector$ScrollState;

    if-eq v1, v3, :cond_5

    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/touch/SwipeDetector;->shouldScrollStart(Landroid/view/MotionEvent;I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 257
    invoke-direct {p0, v3}, Lcom/miui/home/launcher/touch/SwipeDetector;->setState(Lcom/miui/home/launcher/touch/SwipeDetector$ScrollState;)V

    .line 258
    invoke-direct {p0}, Lcom/miui/home/launcher/touch/SwipeDetector;->isPullUp()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 259
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    new-instance v4, Lcom/miui/home/launcher/common/messages/StopUnlockAnimMessage;

    invoke-direct {v4}, Lcom/miui/home/launcher/common/messages/StopUnlockAnimMessage;-><init>()V

    invoke-virtual {v1, v4}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 261
    :cond_4
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    new-instance v4, Lcom/miui/home/launcher/common/messages/StopEditEnterAnimMessage;

    invoke-direct {v4}, Lcom/miui/home/launcher/common/messages/StopEditEnterAnimMessage;-><init>()V

    invoke-virtual {v1, v4}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 263
    :cond_5
    iget-object v1, p0, Lcom/miui/home/launcher/touch/SwipeDetector;->mState:Lcom/miui/home/launcher/touch/SwipeDetector$ScrollState;

    if-ne v1, v3, :cond_6

    .line 264
    invoke-direct {p0}, Lcom/miui/home/launcher/touch/SwipeDetector;->reportDragging()Z

    .line 266
    :cond_6
    iget-object p0, p0, Lcom/miui/home/launcher/touch/SwipeDetector;->mLastPos:Landroid/graphics/PointF;

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    invoke-virtual {p0, v1, p1}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_0

    .line 271
    :cond_7
    iget-object p1, p0, Lcom/miui/home/launcher/touch/SwipeDetector;->mState:Lcom/miui/home/launcher/touch/SwipeDetector$ScrollState;

    sget-object v0, Lcom/miui/home/launcher/touch/SwipeDetector$ScrollState;->DRAGGING:Lcom/miui/home/launcher/touch/SwipeDetector$ScrollState;

    if-ne p1, v0, :cond_9

    .line 272
    sget-object p1, Lcom/miui/home/launcher/touch/SwipeDetector$ScrollState;->SETTLING:Lcom/miui/home/launcher/touch/SwipeDetector$ScrollState;

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/touch/SwipeDetector;->setState(Lcom/miui/home/launcher/touch/SwipeDetector$ScrollState;)V

    goto :goto_0

    .line 222
    :cond_8
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/touch/SwipeDetector;->mActivePointerId:I

    .line 223
    iget-object v0, p0, Lcom/miui/home/launcher/touch/SwipeDetector;->mDownPos:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroid/graphics/PointF;->set(FF)V

    .line 224
    iget-object p1, p0, Lcom/miui/home/launcher/touch/SwipeDetector;->mLastPos:Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/miui/home/launcher/touch/SwipeDetector;->mDownPos:Landroid/graphics/PointF;

    invoke-virtual {p1, v0}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    const/4 p1, 0x0

    .line 225
    iput p1, p0, Lcom/miui/home/launcher/touch/SwipeDetector;->mLastDisplacement:F

    .line 226
    iput p1, p0, Lcom/miui/home/launcher/touch/SwipeDetector;->mDisplacement:F

    .line 227
    iput p1, p0, Lcom/miui/home/launcher/touch/SwipeDetector;->mVelocity:F

    .line 229
    iget-object p1, p0, Lcom/miui/home/launcher/touch/SwipeDetector;->mState:Lcom/miui/home/launcher/touch/SwipeDetector$ScrollState;

    sget-object v0, Lcom/miui/home/launcher/touch/SwipeDetector$ScrollState;->SETTLING:Lcom/miui/home/launcher/touch/SwipeDetector$ScrollState;

    if-ne p1, v0, :cond_9

    iget-boolean p1, p0, Lcom/miui/home/launcher/touch/SwipeDetector;->mIgnoreSlopWhenSettling:Z

    if-eqz p1, :cond_9

    .line 230
    sget-object p1, Lcom/miui/home/launcher/touch/SwipeDetector$ScrollState;->DRAGGING:Lcom/miui/home/launcher/touch/SwipeDetector$ScrollState;

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/touch/SwipeDetector;->setState(Lcom/miui/home/launcher/touch/SwipeDetector$ScrollState;)V

    :cond_9
    :goto_0
    return v2
.end method

.method public setDetectableScrollConditions(IZ)V
    .locals 2

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setDetectableScrollConditions: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SwipeDetector"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iput p1, p0, Lcom/miui/home/launcher/touch/SwipeDetector;->mScrollConditions:I

    .line 196
    iput-boolean p2, p0, Lcom/miui/home/launcher/touch/SwipeDetector;->mIgnoreSlopWhenSettling:Z

    return-void
.end method

.method public wasInitialTouchPositive()Z
    .locals 1

    .line 308
    iget p0, p0, Lcom/miui/home/launcher/touch/SwipeDetector;->mSubtractDisplacement:F

    const/4 v0, 0x0

    cmpg-float p0, p0, v0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
