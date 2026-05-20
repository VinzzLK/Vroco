.class public Lcom/miui/home/recents/FloatingIconLayer;
.super Ljava/lang/Object;
.source "FloatingIconLayer.java"


# static fields
.field public static final FLOATING_ICON_EXECUTOR:Lcom/miui/home/library/utils/LooperExecutor;

.field private static REPARENT_DELAY_COUNT:I = 0x4

.field private static sFloatingIconHandlerThread:Landroid/os/HandlerThread;


# instance fields
.field private final mAdaptiveDrawableBounds:Landroid/graphics/Rect;

.field private mClipRect:Landroid/graphics/Rect;

.field private mCurRectRatio:F

.field private mFloatingIconRectF:Landroid/graphics/Rect;

.field private mFloatingIconSurface:Lcom/android/systemui/shared/recents/system/SurfaceCompat;

.field private mFloatingIconSurfaceControl:Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

.field private mIsBigIcon:Z

.field private volatile mIsDrawIcon:Z

.field private mIsNeedReparent:Z

.field private mIsReleaseOpenFloatingIconLayer:Z

.field mLaunchAppAndBackHomeAnimTargetRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private mMatrix:Landroid/graphics/Matrix;

.field private mModifiedRectF:Landroid/graphics/RectF;

.field private mPackageName:Ljava/lang/String;

.field private mReparentDelayCount:I

.field private mRequestCancelDrawIcon:Z

.field private mTransaction:Lcom/android/systemui/shared/recents/system/TransactionCompat;

.field private mValidIconRectF:Landroid/graphics/RectF;


# direct methods
.method public static synthetic $r8$lambda$2DgRqa36Gro3BrapxAOP8ichUjc(Lcom/miui/home/recents/FloatingIconLayer;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/recents/FloatingIconLayer;->lambda$release$0()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 73
    new-instance v0, Lcom/miui/home/library/utils/LooperExecutor;

    .line 74
    invoke-static {}, Lcom/miui/home/recents/FloatingIconLayer;->getFloatingIconLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/home/library/utils/LooperExecutor;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/miui/home/recents/FloatingIconLayer;->FLOATING_ICON_EXECUTOR:Lcom/miui/home/library/utils/LooperExecutor;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/FloatingIconLayer;->mFloatingIconRectF:Landroid/graphics/Rect;

    .line 46
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/FloatingIconLayer;->mValidIconRectF:Landroid/graphics/RectF;

    .line 48
    new-instance v0, Lcom/android/systemui/shared/recents/system/TransactionCompat;

    invoke-direct {v0}, Lcom/android/systemui/shared/recents/system/TransactionCompat;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/FloatingIconLayer;->mTransaction:Lcom/android/systemui/shared/recents/system/TransactionCompat;

    .line 53
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/FloatingIconLayer;->mMatrix:Landroid/graphics/Matrix;

    .line 54
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/FloatingIconLayer;->mClipRect:Landroid/graphics/Rect;

    .line 55
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/FloatingIconLayer;->mModifiedRectF:Landroid/graphics/RectF;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 56
    iput v0, p0, Lcom/miui/home/recents/FloatingIconLayer;->mCurRectRatio:F

    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/FloatingIconLayer;->mLock:Ljava/lang/Object;

    .line 62
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/FloatingIconLayer;->mAdaptiveDrawableBounds:Landroid/graphics/Rect;

    const/4 v0, 0x0

    .line 64
    iput v0, p0, Lcom/miui/home/recents/FloatingIconLayer;->mReparentDelayCount:I

    .line 68
    iput-boolean v0, p0, Lcom/miui/home/recents/FloatingIconLayer;->mIsBigIcon:Z

    const-string v0, ""

    .line 71
    iput-object v0, p0, Lcom/miui/home/recents/FloatingIconLayer;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method public static getFloatingIconLooper()Landroid/os/Looper;
    .locals 3

    .line 79
    sget-object v0, Lcom/miui/home/recents/FloatingIconLayer;->sFloatingIconHandlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Landroid/os/HandlerThread;

    const/16 v1, -0x14

    const-string v2, "FloatingIconThread"

    invoke-direct {v0, v2, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/home/recents/FloatingIconLayer;->sFloatingIconHandlerThread:Landroid/os/HandlerThread;

    .line 82
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 84
    :cond_0
    sget-object v0, Lcom/miui/home/recents/FloatingIconLayer;->sFloatingIconHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$release$0()V
    .locals 5

    .line 202
    iget-object v0, p0, Lcom/miui/home/recents/FloatingIconLayer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "FloatingIconLayer"

    const-string v2, "release"

    .line 203
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    :try_start_1
    new-array v2, v1, [Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    .line 205
    iget-object v3, p0, Lcom/miui/home/recents/FloatingIconLayer;->mFloatingIconSurfaceControl:Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-direct {p0, v2}, Lcom/miui/home/recents/FloatingIconLayer;->releaseSurfaceControl([Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;)V

    new-array v1, v1, [Lcom/android/systemui/shared/recents/system/SurfaceCompat;

    .line 206
    iget-object v2, p0, Lcom/miui/home/recents/FloatingIconLayer;->mFloatingIconSurface:Lcom/android/systemui/shared/recents/system/SurfaceCompat;

    aput-object v2, v1, v4

    invoke-direct {p0, v1}, Lcom/miui/home/recents/FloatingIconLayer;->releaseSurface([Lcom/android/systemui/shared/recents/system/SurfaceCompat;)V

    .line 207
    invoke-direct {p0}, Lcom/miui/home/recents/FloatingIconLayer;->unregisterEventBus()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    const-string p0, "FloatingIconLayer"

    const-string v1, "release error."

    .line 209
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private varargs releaseSurface([Lcom/android/systemui/shared/recents/system/SurfaceCompat;)V
    .locals 2

    .line 224
    array-length p0, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_1

    aget-object v1, p1, v0

    if-eqz v1, :cond_0

    .line 226
    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/system/SurfaceCompat;->release()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private varargs releaseSurfaceControl([Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;)V
    .locals 4

    .line 217
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 218
    iget-object v3, p0, Lcom/miui/home/recents/FloatingIconLayer;->mTransaction:Lcom/android/systemui/shared/recents/system/TransactionCompat;

    invoke-virtual {v3, v2}, Lcom/android/systemui/shared/recents/system/TransactionCompat;->remove(Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;)Lcom/android/systemui/shared/recents/system/TransactionCompat;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 220
    :cond_0
    iget-object p0, p0, Lcom/miui/home/recents/FloatingIconLayer;->mTransaction:Lcom/android/systemui/shared/recents/system/TransactionCompat;

    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/system/TransactionCompat;->apply()V

    return-void
.end method

.method private setMatrixAndClip(Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;Landroid/graphics/RectF;)V
    .locals 6

    .line 368
    iget-object v0, p0, Lcom/miui/home/recents/FloatingIconLayer;->mLaunchAppAndBackHomeAnimTargetRef:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 369
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const/4 v2, 0x0

    if-eqz v0, :cond_2

    goto :goto_2

    .line 371
    :cond_2
    iget-object v0, p0, Lcom/miui/home/recents/FloatingIconLayer;->mLaunchAppAndBackHomeAnimTargetRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/home/launcher/anim/WidgetTypeAnimTarget;

    if-eqz v0, :cond_3

    .line 372
    iget-object v0, p0, Lcom/miui/home/recents/FloatingIconLayer;->mLaunchAppAndBackHomeAnimTargetRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/miui/home/launcher/anim/WidgetTypeAnimTarget;

    .line 373
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/miui/home/recents/FloatingIconLayer;->mModifiedRectF:Landroid/graphics/RectF;

    invoke-virtual {v0, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 374
    iget-object v0, p0, Lcom/miui/home/recents/FloatingIconLayer;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 375
    iget-object v0, p0, Lcom/miui/home/recents/FloatingIconLayer;->mValidIconRectF:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/miui/home/recents/FloatingIconLayer;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    .line 376
    iget-object v0, p0, Lcom/miui/home/recents/FloatingIconLayer;->mValidIconRectF:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v3, p0, Lcom/miui/home/recents/FloatingIconLayer;->mValidIconRectF:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float/2addr v0, v3

    const/high16 v3, 0x40000000    # 2.0f

    if-nez v2, :cond_4

    .line 379
    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v2, v4

    div-float/2addr v2, v3

    const/4 v4, 0x0

    cmpl-float v4, v2, v4

    if-lez v4, :cond_6

    .line 382
    iget-object v4, p0, Lcom/miui/home/recents/FloatingIconLayer;->mModifiedRectF:Landroid/graphics/RectF;

    iget v5, v4, Landroid/graphics/RectF;->left:F

    sub-float/2addr v5, v2

    iput v5, v4, Landroid/graphics/RectF;->left:F

    .line 383
    iget v5, v4, Landroid/graphics/RectF;->right:F

    add-float/2addr v5, v2

    iput v5, v4, Landroid/graphics/RectF;->right:F

    goto :goto_3

    .line 387
    :cond_4
    iget-object v2, p0, Lcom/miui/home/recents/FloatingIconLayer;->mModifiedRectF:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    iget-object v4, p0, Lcom/miui/home/recents/FloatingIconLayer;->mModifiedRectF:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    div-float/2addr v2, v4

    cmpg-float v4, v2, v0

    if-gez v4, :cond_5

    .line 389
    iget-object v2, p0, Lcom/miui/home/recents/FloatingIconLayer;->mModifiedRectF:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    mul-float/2addr v2, v0

    iget-object v4, p0, Lcom/miui/home/recents/FloatingIconLayer;->mModifiedRectF:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v2, v4

    div-float/2addr v2, v3

    .line 390
    iget-object v4, p0, Lcom/miui/home/recents/FloatingIconLayer;->mModifiedRectF:Landroid/graphics/RectF;

    iget v5, v4, Landroid/graphics/RectF;->left:F

    sub-float/2addr v5, v2

    iput v5, v4, Landroid/graphics/RectF;->left:F

    .line 391
    iget v5, v4, Landroid/graphics/RectF;->right:F

    add-float/2addr v5, v2

    iput v5, v4, Landroid/graphics/RectF;->right:F

    goto :goto_3

    :cond_5
    cmpl-float v2, v2, v0

    if-lez v2, :cond_6

    .line 393
    iget-object v2, p0, Lcom/miui/home/recents/FloatingIconLayer;->mModifiedRectF:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    div-float/2addr v2, v0

    iget-object v4, p0, Lcom/miui/home/recents/FloatingIconLayer;->mModifiedRectF:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v2, v4

    div-float/2addr v2, v3

    .line 394
    iget-object v4, p0, Lcom/miui/home/recents/FloatingIconLayer;->mModifiedRectF:Landroid/graphics/RectF;

    iget v5, v4, Landroid/graphics/RectF;->top:F

    sub-float/2addr v5, v2

    iput v5, v4, Landroid/graphics/RectF;->top:F

    .line 395
    iget v5, v4, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v5, v2

    iput v5, v4, Landroid/graphics/RectF;->bottom:F

    :cond_6
    :goto_3
    const/high16 v2, 0x3f800000    # 1.0f

    .line 398
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v4

    mul-float/2addr v4, v2

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p2

    div-float/2addr v4, p2

    iput v4, p0, Lcom/miui/home/recents/FloatingIconLayer;->mCurRectRatio:F

    cmpg-float p2, v4, v0

    if-gez p2, :cond_7

    .line 402
    iget-object p2, p0, Lcom/miui/home/recents/FloatingIconLayer;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    int-to-float p2, p2

    iget-object v0, p0, Lcom/miui/home/recents/FloatingIconLayer;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lcom/miui/home/recents/FloatingIconLayer;->mCurRectRatio:F

    mul-float/2addr v0, v2

    sub-float/2addr p2, v0

    div-float/2addr p2, v3

    float-to-double v2, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int p2, v2

    .line 403
    iget-object v0, p0, Lcom/miui/home/recents/FloatingIconLayer;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p2, v1}, Landroid/graphics/Rect;->inset(II)V

    goto :goto_4

    :cond_7
    cmpl-float p2, v4, v0

    if-lez p2, :cond_8

    .line 407
    iget-object p2, p0, Lcom/miui/home/recents/FloatingIconLayer;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    int-to-float p2, p2

    iget-object v0, p0, Lcom/miui/home/recents/FloatingIconLayer;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lcom/miui/home/recents/FloatingIconLayer;->mCurRectRatio:F

    div-float/2addr v0, v2

    sub-float/2addr p2, v0

    div-float/2addr p2, v3

    float-to-double v2, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int p2, v2

    .line 408
    iget-object v0, p0, Lcom/miui/home/recents/FloatingIconLayer;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, p2}, Landroid/graphics/Rect;->inset(II)V

    .line 410
    :cond_8
    :goto_4
    iget-object p2, p0, Lcom/miui/home/recents/FloatingIconLayer;->mMatrix:Landroid/graphics/Matrix;

    iget-object v0, p0, Lcom/miui/home/recents/FloatingIconLayer;->mValidIconRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/miui/home/recents/FloatingIconLayer;->mModifiedRectF:Landroid/graphics/RectF;

    sget-object v2, Landroid/graphics/Matrix$ScaleToFit;->START:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {p2, v0, v1, v2}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 411
    iget-object p2, p0, Lcom/miui/home/recents/FloatingIconLayer;->mTransaction:Lcom/android/systemui/shared/recents/system/TransactionCompat;

    iget-object v0, p0, Lcom/miui/home/recents/FloatingIconLayer;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p2, p1, v0}, Lcom/android/systemui/shared/recents/system/TransactionCompat;->setMatrix(Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;Landroid/graphics/Matrix;)Lcom/android/systemui/shared/recents/system/TransactionCompat;

    .line 412
    iget-boolean p2, p0, Lcom/miui/home/recents/FloatingIconLayer;->mIsBigIcon:Z

    if-nez p2, :cond_9

    .line 413
    iget-object p2, p0, Lcom/miui/home/recents/FloatingIconLayer;->mTransaction:Lcom/android/systemui/shared/recents/system/TransactionCompat;

    iget-object p0, p0, Lcom/miui/home/recents/FloatingIconLayer;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {p2, p1, p0}, Lcom/android/systemui/shared/recents/system/TransactionCompat;->setWindowCrop(Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;Landroid/graphics/Rect;)Lcom/android/systemui/shared/recents/system/TransactionCompat;

    :cond_9
    return-void
.end method

.method private showSurfaceControl(Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;Landroid/graphics/RectF;FF)V
    .locals 4

    .line 338
    iget-object v0, p0, Lcom/miui/home/recents/FloatingIconLayer;->mFloatingIconSurfaceControl:Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;->isValid()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/miui/home/recents/FloatingIconLayer;->mFloatingIconSurface:Lcom/android/systemui/shared/recents/system/SurfaceCompat;

    if-eqz v0, :cond_5

    .line 339
    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/system/SurfaceCompat;->isValid()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 340
    iget-boolean v0, p0, Lcom/miui/home/recents/FloatingIconLayer;->mIsNeedReparent:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/home/recents/FloatingIconLayer;->mLaunchAppAndBackHomeAnimTargetRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    .line 341
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    const/4 v2, 0x0

    .line 343
    instance-of v3, v0, Landroid/view/View;

    if-eqz v3, :cond_0

    .line 344
    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lcom/android/systemui/shared/recents/system/SurfaceControlUtils;->getSurfaceControlCompat(Landroid/view/View;)Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    move-result-object v2

    :cond_0
    if-eqz v2, :cond_2

    .line 346
    invoke-virtual {v2}, Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;->isValid()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 347
    iget v0, p0, Lcom/miui/home/recents/FloatingIconLayer;->mReparentDelayCount:I

    sget v3, Lcom/miui/home/recents/FloatingIconLayer;->REPARENT_DELAY_COUNT:I

    if-ge v0, v3, :cond_1

    add-int/2addr v0, v1

    .line 348
    iput v0, p0, Lcom/miui/home/recents/FloatingIconLayer;->mReparentDelayCount:I

    goto :goto_0

    .line 350
    :cond_1
    iget-object v0, p0, Lcom/miui/home/recents/FloatingIconLayer;->mTransaction:Lcom/android/systemui/shared/recents/system/TransactionCompat;

    iget-object v3, p0, Lcom/miui/home/recents/FloatingIconLayer;->mFloatingIconSurfaceControl:Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    invoke-virtual {v0, v3, v2}, Lcom/android/systemui/shared/recents/system/TransactionCompat;->tryReparent(Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;)Lcom/android/systemui/shared/recents/system/TransactionCompat;

    const/4 v0, 0x0

    .line 351
    iput-boolean v0, p0, Lcom/miui/home/recents/FloatingIconLayer;->mIsNeedReparent:Z

    .line 355
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/miui/home/recents/FloatingIconLayer;->mFloatingIconSurfaceControl:Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    invoke-direct {p0, v0, p2}, Lcom/miui/home/recents/FloatingIconLayer;->setMatrixAndClip(Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;Landroid/graphics/RectF;)V

    .line 356
    iget-object p2, p0, Lcom/miui/home/recents/FloatingIconLayer;->mTransaction:Lcom/android/systemui/shared/recents/system/TransactionCompat;

    iget-object v0, p0, Lcom/miui/home/recents/FloatingIconLayer;->mFloatingIconSurfaceControl:Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    invoke-virtual {p2, v0, p3}, Lcom/android/systemui/shared/recents/system/TransactionCompat;->setCornerRadius(Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;F)Lcom/android/systemui/shared/recents/system/TransactionCompat;

    .line 358
    iget-object p2, p0, Lcom/miui/home/recents/FloatingIconLayer;->mTransaction:Lcom/android/systemui/shared/recents/system/TransactionCompat;

    iget-object p3, p0, Lcom/miui/home/recents/FloatingIconLayer;->mFloatingIconSurfaceControl:Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    const/4 v0, 0x0

    invoke-static {v0, p4}, Ljava/lang/Math;->max(FF)F

    move-result p4

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2, p4}, Ljava/lang/Math;->min(FF)F

    move-result p4

    cmpl-float p4, p4, v0

    if-lez p4, :cond_3

    move v0, v2

    :cond_3
    invoke-virtual {p2, p3, v0}, Lcom/android/systemui/shared/recents/system/TransactionCompat;->setAlpha(Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;F)Lcom/android/systemui/shared/recents/system/TransactionCompat;

    if-eqz p1, :cond_4

    .line 359
    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;->isValid()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 360
    iget-object p2, p0, Lcom/miui/home/recents/FloatingIconLayer;->mTransaction:Lcom/android/systemui/shared/recents/system/TransactionCompat;

    iget-object p3, p0, Lcom/miui/home/recents/FloatingIconLayer;->mFloatingIconSurfaceControl:Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    invoke-virtual {p2, p3, p1, v1}, Lcom/android/systemui/shared/recents/system/TransactionCompat;->setRelativeLayer(Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;I)Lcom/android/systemui/shared/recents/system/TransactionCompat;

    .line 362
    :cond_4
    iget-object p1, p0, Lcom/miui/home/recents/FloatingIconLayer;->mTransaction:Lcom/android/systemui/shared/recents/system/TransactionCompat;

    iget-object p2, p0, Lcom/miui/home/recents/FloatingIconLayer;->mFloatingIconSurfaceControl:Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    invoke-virtual {p1, p2}, Lcom/android/systemui/shared/recents/system/TransactionCompat;->show(Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;)Lcom/android/systemui/shared/recents/system/TransactionCompat;

    .line 364
    :cond_5
    iget-object p0, p0, Lcom/miui/home/recents/FloatingIconLayer;->mTransaction:Lcom/android/systemui/shared/recents/system/TransactionCompat;

    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/system/TransactionCompat;->apply()V

    return-void
.end method

.method private unregisterEventBus()V
    .locals 1

    .line 429
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 430
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public isReleaseOpenFloatingIconLayer()Z
    .locals 0

    .line 91
    iget-boolean p0, p0, Lcom/miui/home/recents/FloatingIconLayer;->mIsReleaseOpenFloatingIconLayer:Z

    return p0
.end method

.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/CancelGestureAnimationMessage;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const/4 p1, 0x1

    .line 436
    iput-boolean p1, p0, Lcom/miui/home/recents/FloatingIconLayer;->mRequestCancelDrawIcon:Z

    return-void
.end method

.method public release()V
    .locals 2

    .line 201
    sget-object v0, Lcom/miui/home/recents/FloatingIconLayer;->FLOATING_ICON_EXECUTOR:Lcom/miui/home/library/utils/LooperExecutor;

    new-instance v1, Lcom/miui/home/recents/FloatingIconLayer$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/FloatingIconLayer$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/recents/FloatingIconLayer;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    .line 213
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/FloatingIconLayer;->setIsReleaseOpenFloatingIconLayer(Z)V

    return-void
.end method

.method public setIsReleaseOpenFloatingIconLayer(Z)V
    .locals 0

    .line 95
    iput-boolean p1, p0, Lcom/miui/home/recents/FloatingIconLayer;->mIsReleaseOpenFloatingIconLayer:Z

    return-void
.end method

.method public showFloatingIcon(Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;Landroid/graphics/RectF;FFF)V
    .locals 1

    .line 326
    iget-boolean p3, p0, Lcom/miui/home/recents/FloatingIconLayer;->mIsDrawIcon:Z

    if-nez p3, :cond_0

    return-void

    .line 329
    :cond_0
    iget-object p3, p0, Lcom/miui/home/recents/FloatingIconLayer;->mLock:Ljava/lang/Object;

    monitor-enter p3

    if-eqz p2, :cond_3

    .line 330
    :try_start_0
    invoke-virtual {p2}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 333
    :cond_1
    iget-boolean v0, p0, Lcom/miui/home/recents/FloatingIconLayer;->mRequestCancelDrawIcon:Z

    if-eqz v0, :cond_2

    const/4 p5, 0x0

    :cond_2
    invoke-direct {p0, p1, p2, p4, p5}, Lcom/miui/home/recents/FloatingIconLayer;->showSurfaceControl(Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;Landroid/graphics/RectF;FF)V

    .line 334
    monitor-exit p3

    return-void

    .line 331
    :cond_3
    :goto_0
    monitor-exit p3

    return-void

    :catchall_0
    move-exception p0

    .line 334
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
