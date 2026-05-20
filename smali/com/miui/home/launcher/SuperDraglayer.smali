.class public Lcom/miui/home/launcher/SuperDraglayer;
.super Lcom/miui/home/launcher/view/BaseDragLayer;
.source "SuperDraglayer.java"

# interfaces
.implements Lcom/miui/home/launcher/GridConfig$OnGridConfigChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/SuperDraglayer$ScaleDetectorListener;,
        Lcom/miui/home/launcher/SuperDraglayer$LayoutParams;,
        Lcom/miui/home/launcher/SuperDraglayer$DoubleTapListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/home/launcher/view/BaseDragLayer<",
        "Lcom/miui/home/launcher/Launcher;",
        ">;",
        "Lcom/miui/home/launcher/GridConfig$OnGridConfigChangeListener;"
    }
.end annotation


# instance fields
.field private OffsetUpdater:Ljava/lang/Runnable;

.field private mActiveController:Lcom/miui/home/launcher/util/TouchController;

.field private mAllowSetImportantForAccessibility:Z

.field private mClipForDragging:Landroid/graphics/Rect;

.field private mControllers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/util/TouchController;",
            ">;"
        }
    .end annotation
.end field

.field private mCoord:[F

.field private final mDoubleTapGestureDetector:Landroid/view/GestureDetector;

.field private mDragController:Lcom/miui/home/launcher/DragController;

.field private mFolderGridViewRect:Landroid/graphics/RectF;

.field protected final mHitRect:Landroid/graphics/Rect;

.field private mImportantForAccessibility:I

.field private mIsIgnoreFeedController:Z

.field private mIsOnScale:Z

.field protected mLauncher:Lcom/miui/home/launcher/Launcher;

.field private mMotionEventCopy:Landroid/view/MotionEvent;

.field private mPdoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/common/ParasiticDrawingObject;",
            ">;"
        }
    .end annotation
.end field

.field private mPointerCount:I

.field private mReApplyed:Z

.field private final mScaleDetector:Landroid/view/ScaleGestureDetector;

.field private mScreenSize:Landroid/graphics/Point;

.field private mSecondPointerId:I

.field protected final mTmpXY:[I

.field private mWallpaperManager:Landroid/app/WallpaperManager;

.field private mWidgetResizeDragController:Lcom/miui/home/launcher/WidgetResizeDragController;

.field private mWpOffsetX:F

.field private mWpOffsetY:F

.field private mWpStepX:F

.field private mWpStepY:F


# direct methods
.method public static synthetic $r8$lambda$yRjymHa4JaRpwgn8TapT1g_pG98(Lcom/miui/home/launcher/SuperDraglayer;Ljava/lang/ref/WeakReference;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/SuperDraglayer;->lambda$updateWallpaperOffset$0(Ljava/lang/ref/WeakReference;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 132
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/view/BaseDragLayer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 102
    iput p2, p0, Lcom/miui/home/launcher/SuperDraglayer;->mWpStepX:F

    .line 103
    iput p2, p0, Lcom/miui/home/launcher/SuperDraglayer;->mWpStepY:F

    .line 104
    iput p2, p0, Lcom/miui/home/launcher/SuperDraglayer;->mWpOffsetX:F

    .line 105
    iput p2, p0, Lcom/miui/home/launcher/SuperDraglayer;->mWpOffsetY:F

    .line 119
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/miui/home/launcher/SuperDraglayer;->mPdoList:Ljava/util/ArrayList;

    const/4 p2, 0x0

    .line 120
    iput p2, p0, Lcom/miui/home/launcher/SuperDraglayer;->mImportantForAccessibility:I

    const/4 v0, 0x1

    .line 121
    iput-boolean v0, p0, Lcom/miui/home/launcher/SuperDraglayer;->mAllowSetImportantForAccessibility:Z

    const/4 v0, -0x1

    .line 395
    iput v0, p0, Lcom/miui/home/launcher/SuperDraglayer;->mSecondPointerId:I

    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 396
    iput-object v1, p0, Lcom/miui/home/launcher/SuperDraglayer;->mCoord:[F

    .line 397
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/miui/home/launcher/SuperDraglayer;->mFolderGridViewRect:Landroid/graphics/RectF;

    .line 631
    new-instance v1, Lcom/miui/home/launcher/SuperDraglayer$2;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/SuperDraglayer$2;-><init>(Lcom/miui/home/launcher/SuperDraglayer;)V

    iput-object v1, p0, Lcom/miui/home/launcher/SuperDraglayer;->OffsetUpdater:Ljava/lang/Runnable;

    new-array v0, v0, [I

    .line 868
    iput-object v0, p0, Lcom/miui/home/launcher/SuperDraglayer;->mTmpXY:[I

    .line 869
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/SuperDraglayer;->mHitRect:Landroid/graphics/Rect;

    .line 133
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/miui/launcher/views/LauncherFrameLayout;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/miui/home/launcher/SuperDraglayer$DoubleTapListener;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/SuperDraglayer$DoubleTapListener;-><init>(Lcom/miui/home/launcher/SuperDraglayer;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/miui/home/launcher/SuperDraglayer;->mDoubleTapGestureDetector:Landroid/view/GestureDetector;

    .line 134
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setMotionEventSplittingEnabled(Z)V

    .line 135
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/SuperDraglayer;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 136
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/SuperDraglayer;->mScreenSize:Landroid/graphics/Point;

    .line 137
    new-instance p1, Landroid/view/ScaleGestureDetector;

    iget-object p2, p0, Lcom/miui/launcher/views/LauncherFrameLayout;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/miui/home/launcher/SuperDraglayer$ScaleDetectorListener;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/SuperDraglayer$ScaleDetectorListener;-><init>(Lcom/miui/home/launcher/SuperDraglayer;)V

    invoke-direct {p1, p2, v0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object p1, p0, Lcom/miui/home/launcher/SuperDraglayer;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/SuperDraglayer;)Landroid/content/Context;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/miui/launcher/views/LauncherFrameLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/SuperDraglayer;)Lcom/miui/home/launcher/util/TouchController;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/miui/home/launcher/SuperDraglayer;->mActiveController:Lcom/miui/home/launcher/util/TouchController;

    return-object p0
.end method

.method static synthetic access$102(Lcom/miui/home/launcher/SuperDraglayer;Lcom/miui/home/launcher/util/TouchController;)Lcom/miui/home/launcher/util/TouchController;
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/miui/home/launcher/SuperDraglayer;->mActiveController:Lcom/miui/home/launcher/util/TouchController;

    return-object p1
.end method

.method static synthetic access$202(Lcom/miui/home/launcher/SuperDraglayer;Z)Z
    .locals 0

    .line 95
    iput-boolean p1, p0, Lcom/miui/home/launcher/SuperDraglayer;->mIsOnScale:Z

    return p1
.end method

.method static synthetic access$300(Lcom/miui/home/launcher/SuperDraglayer;)I
    .locals 0

    .line 95
    iget p0, p0, Lcom/miui/home/launcher/SuperDraglayer;->mPointerCount:I

    return p0
.end method

.method private checkPointInViewArea(Landroid/view/View;FF)Z
    .locals 1

    const/4 p0, 0x0

    if-eqz p1, :cond_2

    .line 191
    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 194
    :cond_0
    instance-of v0, p1, Lcom/miui/home/launcher/util/TapCheckView;

    if-eqz v0, :cond_1

    .line 198
    check-cast p1, Lcom/miui/home/launcher/util/TapCheckView;

    .line 199
    invoke-interface {p1, p2, p3}, Lcom/miui/home/launcher/util/TapCheckView;->hitViewArea(FF)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 200
    invoke-interface {p1, p2, p3}, Lcom/miui/home/launcher/util/TapCheckView;->pointOnChildViewRect(FF)Z

    move-result p0

    goto :goto_0

    .line 203
    :cond_1
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    invoke-static {p1, p2, p3, p0}, Lcom/miui/home/launcher/util/DoubleTapViewUtil;->pointInViewArea(Landroid/view/View;FFLandroid/graphics/Rect;)Z

    move-result p0

    :cond_2
    :goto_0
    return p0
.end method

.method private getXInFolderGridView(Landroid/view/MotionEvent;)F
    .locals 1

    .line 442
    iget v0, p0, Lcom/miui/home/launcher/SuperDraglayer;->mSecondPointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 443
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    iget-object p0, p0, Lcom/miui/home/launcher/SuperDraglayer;->mCoord:[F

    const/4 v0, 0x0

    aget p0, p0, v0

    sub-float/2addr p1, p0

    return p1
.end method

.method private getYInFolderGridView(Landroid/view/MotionEvent;)F
    .locals 1

    .line 447
    iget v0, p0, Lcom/miui/home/launcher/SuperDraglayer;->mSecondPointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 448
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    iget-object p0, p0, Lcom/miui/home/launcher/SuperDraglayer;->mCoord:[F

    const/4 v0, 0x1

    aget p0, p0, v0

    sub-float/2addr p1, p0

    return p1
.end method

.method private handleMotionEventWhenFolderShowing(Landroid/view/MotionEvent;)V
    .locals 12

    .line 401
    iget-object v0, p0, Lcom/miui/home/launcher/SuperDraglayer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isFolderOpened()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 404
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/SuperDraglayer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getFolderCling()Lcom/miui/home/launcher/FolderCling;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderCling;->getFolder()Lcom/miui/home/launcher/Folder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Folder;->getContent()Lcom/miui/home/launcher/FolderGridView;

    move-result-object v0

    .line 405
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-eq v3, v1, :cond_1

    const/4 v4, 0x3

    if-ne v4, v1, :cond_2

    .line 407
    :cond_1
    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/FolderGridView;->setEventDispatchDisabled(Z)V

    .line 409
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_7

    iget-object v4, p0, Lcom/miui/home/launcher/SuperDraglayer;->mMotionEventCopy:Landroid/view/MotionEvent;

    if-eqz v4, :cond_7

    .line 410
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isDragDisable()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 411
    iget-object p0, p0, Lcom/miui/home/launcher/SuperDraglayer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->showDragDisableToast(Landroid/content/Context;)V

    return-void

    :cond_3
    const/4 v4, 0x5

    const/4 v6, -0x1

    if-ne v1, v4, :cond_4

    .line 415
    iput v6, p0, Lcom/miui/home/launcher/SuperDraglayer;->mSecondPointerId:I

    .line 416
    iget-object v4, p0, Lcom/miui/home/launcher/SuperDraglayer;->mCoord:[F

    invoke-static {v0, p0, v4, v3, v2}, Lcom/miui/home/launcher/common/Utilities;->getDescendantCoordRelativeToAncestor(Landroid/view/View;Landroid/view/View;[FZZ)F

    .line 418
    iget-object v4, p0, Lcom/miui/home/launcher/SuperDraglayer;->mFolderGridViewRect:Landroid/graphics/RectF;

    iget-object v7, p0, Lcom/miui/home/launcher/SuperDraglayer;->mCoord:[F

    aget v8, v7, v2

    aget v9, v7, v3

    aget v7, v7, v2

    .line 419
    invoke-virtual {v0}, Landroid/widget/GridView;->getWidth()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v7, v10

    iget-object v10, p0, Lcom/miui/home/launcher/SuperDraglayer;->mCoord:[F

    aget v10, v10, v3

    .line 420
    invoke-virtual {v0}, Landroid/widget/GridView;->getHeight()I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v10, v11

    .line 418
    invoke-virtual {v4, v8, v9, v7, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 421
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v4

    .line 422
    iget-object v7, p0, Lcom/miui/home/launcher/SuperDraglayer;->mFolderGridViewRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 423
    invoke-virtual {v0, v3}, Lcom/miui/home/launcher/FolderGridView;->setEventDispatchDisabled(Z)V

    .line 424
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iput v4, p0, Lcom/miui/home/launcher/SuperDraglayer;->mSecondPointerId:I

    .line 425
    iget-object v4, p0, Lcom/miui/home/launcher/SuperDraglayer;->mMotionEventCopy:Landroid/view/MotionEvent;

    invoke-virtual {v4, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 426
    iget-object v2, p0, Lcom/miui/home/launcher/SuperDraglayer;->mMotionEventCopy:Landroid/view/MotionEvent;

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/SuperDraglayer;->getXInFolderGridView(Landroid/view/MotionEvent;)F

    move-result v4

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/SuperDraglayer;->getYInFolderGridView(Landroid/view/MotionEvent;)F

    move-result v7

    invoke-virtual {v2, v4, v7}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 427
    iget-object v2, p0, Lcom/miui/home/launcher/SuperDraglayer;->mMotionEventCopy:Landroid/view/MotionEvent;

    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/FolderGridView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 428
    invoke-virtual {v0, v3}, Lcom/miui/home/launcher/FolderGridView;->setIgnoreCancelEvent(Z)V

    :cond_4
    if-eq v1, v5, :cond_5

    const/4 v2, 0x6

    if-ne v1, v2, :cond_7

    .line 431
    :cond_5
    iget v2, p0, Lcom/miui/home/launcher/SuperDraglayer;->mSecondPointerId:I

    if-eq v2, v6, :cond_7

    .line 433
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    if-eq v2, v6, :cond_7

    .line 434
    iget-object v2, p0, Lcom/miui/home/launcher/SuperDraglayer;->mMotionEventCopy:Landroid/view/MotionEvent;

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/SuperDraglayer;->getXInFolderGridView(Landroid/view/MotionEvent;)F

    move-result v4

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/SuperDraglayer;->getYInFolderGridView(Landroid/view/MotionEvent;)F

    move-result p1

    invoke-virtual {v2, v4, p1}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 435
    iget-object p1, p0, Lcom/miui/home/launcher/SuperDraglayer;->mMotionEventCopy:Landroid/view/MotionEvent;

    if-ne v1, v5, :cond_6

    goto :goto_0

    :cond_6
    move v1, v3

    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 436
    iget-object p0, p0, Lcom/miui/home/launcher/SuperDraglayer;->mMotionEventCopy:Landroid/view/MotionEvent;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/FolderGridView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_7
    return-void
.end method

.method private handleMotionEventWhenShortcutMenuShowing(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 373
    iget-object v0, p0, Lcom/miui/home/launcher/SuperDraglayer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isInShortcutMenuState()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 374
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 377
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/SuperDraglayer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const/4 v2, 0x7

    new-instance v3, Lcom/miui/home/launcher/shortcuts/CancelShortcutMenuReason;

    const-string v4, "click_outside_of_menu"

    invoke-direct {v3, v4}, Lcom/miui/home/launcher/shortcuts/CancelShortcutMenuReason;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Lcom/miui/home/launcher/Launcher;->cancelShortcutMenu(ILcom/miui/home/launcher/shortcuts/CancelShortcutMenuReason;)V

    .line 379
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-ne p1, v1, :cond_1

    .line 380
    iget-object p0, p0, Lcom/miui/home/launcher/SuperDraglayer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->resetDragItems()V

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private isIgnoreFeedController(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 510
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isShowNavigationBar()Z

    move-result v0

    if-nez v0, :cond_0

    .line 511
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/home/launcher/SuperDraglayer;->mIsIgnoreFeedController:Z

    if-nez v0, :cond_0

    .line 513
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getSearchBarMarginBottom()I

    move-result v0

    iget-object v1, p0, Lcom/miui/home/launcher/SuperDraglayer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getScreenContent()Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    .line 514
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    sub-float/2addr v1, p1

    int-to-float p1, v0

    cmpg-float p1, v1, p1

    if-gez p1, :cond_0

    const/4 p1, 0x1

    .line 516
    iput-boolean p1, p0, Lcom/miui/home/launcher/SuperDraglayer;->mIsIgnoreFeedController:Z

    return p1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$updateWallpaperOffset$0(Ljava/lang/ref/WeakReference;)V
    .locals 2

    .line 649
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/IBinder;

    if-eqz p1, :cond_0

    .line 651
    iget-object v0, p0, Lcom/miui/home/launcher/SuperDraglayer;->mWallpaperManager:Landroid/app/WallpaperManager;

    iget v1, p0, Lcom/miui/home/launcher/SuperDraglayer;->mWpOffsetX:F

    iget p0, p0, Lcom/miui/home/launcher/SuperDraglayer;->mWpOffsetY:F

    invoke-virtual {v0, p1, v1, p0}, Landroid/app/WallpaperManager;->setWallpaperOffsets(Landroid/os/IBinder;FF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "Launcher.DragLayer"

    const-string/jumbo v0, "updateWallpaperOffset"

    .line 654
    invoke-static {p1, v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private resetFolderGirdView()V
    .locals 1

    .line 389
    iget-object p0, p0, Lcom/miui/home/launcher/SuperDraglayer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getFolderCling()Lcom/miui/home/launcher/FolderCling;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderCling;->getFolder()Lcom/miui/home/launcher/Folder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Folder;->getContent()Lcom/miui/home/launcher/FolderGridView;

    move-result-object p0

    .line 390
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderGridView;->isIgnoreCancelEvent()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 391
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/FolderGridView;->setIgnoreCancelEvent(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addResizeFrame(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/LauncherWidgetView;Lcom/miui/home/launcher/CellLayout;)V
    .locals 0

    .line 689
    iget-object p0, p0, Lcom/miui/home/launcher/SuperDraglayer;->mWidgetResizeDragController:Lcom/miui/home/launcher/WidgetResizeDragController;

    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/home/launcher/WidgetResizeDragController;->addResizeFrame(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/LauncherWidgetView;Lcom/miui/home/launcher/CellLayout;)V

    return-void
.end method

.method public attachParasiticDrawingObject(Lcom/miui/home/launcher/common/ParasiticDrawingObject;)V
    .locals 0

    .line 703
    iget-object p0, p0, Lcom/miui/home/launcher/SuperDraglayer;->mPdoList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clearAllResizeFrames()V
    .locals 0

    .line 680
    iget-object p0, p0, Lcom/miui/home/launcher/SuperDraglayer;->mWidgetResizeDragController:Lcom/miui/home/launcher/WidgetResizeDragController;

    invoke-virtual {p0}, Lcom/miui/home/launcher/WidgetResizeDragController;->clearAllResizeFrames()V

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 708
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 709
    iget-object v0, p0, Lcom/miui/home/launcher/SuperDraglayer;->mPdoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 710
    iget-object p0, p0, Lcom/miui/home/launcher/SuperDraglayer;->mPdoList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 711
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 712
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/common/ParasiticDrawingObject;

    .line 713
    invoke-interface {v0, p1}, Lcom/miui/home/launcher/common/ParasiticDrawingObject;->draw(Landroid/graphics/Canvas;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 714
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 317
    iget-object v0, p0, Lcom/miui/home/launcher/SuperDraglayer;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/DragController;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

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

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 346
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v2, :cond_0

    if-ne v0, v1, :cond_1

    .line 348
    :cond_0
    invoke-virtual {p0, v3}, Lcom/miui/home/launcher/SuperDraglayer;->requestSwipeControllerDisallowInterceptTouchEventHorizontal(Z)V

    .line 349
    invoke-virtual {p0, v3}, Lcom/miui/home/launcher/SuperDraglayer;->requestSwipeControllerDisallowInterceptTouchEventVertical(Z)V

    .line 351
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_2

    .line 352
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/SuperDraglayer;->mMotionEventCopy:Landroid/view/MotionEvent;

    .line 353
    invoke-static {v3}, Lcom/miui/home/launcher/common/Utilities;->setHasShowScreenLockedToast(Z)V

    .line 355
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eq v0, v1, :cond_3

    .line 356
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v0, v2, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/miui/home/launcher/SuperDraglayer;->mMotionEventCopy:Landroid/view/MotionEvent;

    if-eqz v0, :cond_4

    .line 358
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    const/4 v0, 0x0

    .line 359
    iput-object v0, p0, Lcom/miui/home/launcher/SuperDraglayer;->mMotionEventCopy:Landroid/view/MotionEvent;

    .line 360
    invoke-direct {p0}, Lcom/miui/home/launcher/SuperDraglayer;->resetFolderGirdView()V

    .line 362
    :cond_4
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/SuperDraglayer;->handleMotionEventWhenFolderShowing(Landroid/view/MotionEvent;)V

    .line 364
    iget-object v0, p0, Lcom/miui/home/launcher/SuperDraglayer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getLauncherCallbacks()Lcom/miui/home/launcher/LauncherCallbacks;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 366
    invoke-interface {v0, p1}, Lcom/miui/home/launcher/LauncherCallbacks;->onHandleTouchEvent(Landroid/view/MotionEvent;)Z

    .line 369
    :cond_5
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 0

    .line 548
    iget-object p0, p0, Lcom/miui/home/launcher/SuperDraglayer;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/DragController;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result p0

    return p0
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 2

    .line 722
    iget-object v0, p0, Lcom/miui/home/launcher/SuperDraglayer;->mClipForDragging:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    instance-of v0, p2, Lcom/miui/home/launcher/DragView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 724
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 725
    iget-object v1, p0, Lcom/miui/home/launcher/SuperDraglayer;->mClipForDragging:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 727
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p0

    if-eqz v0, :cond_2

    .line 729
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_2
    return p0
.end method

.method protected findActiveController(Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v0, 0x0

    .line 468
    iput-object v0, p0, Lcom/miui/home/launcher/SuperDraglayer;->mActiveController:Lcom/miui/home/launcher/util/TouchController;

    .line 469
    sget-object v0, Lcom/miui/home/recents/anim/StateManager;->Companion:Lcom/miui/home/recents/anim/StateManager$Companion;

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/StateManager;->isReusefulOpeningAnimRunning()Z

    move-result v0

    .line 470
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/Application;->isClickAppWaitForCallback()Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "Launcher.DragLayer"

    if-nez v0, :cond_6

    if-eqz v1, :cond_0

    goto :goto_1

    .line 476
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/SuperDraglayer;->mControllers:Ljava/util/List;

    if-eqz v0, :cond_5

    .line 478
    iget-object v0, p0, Lcom/miui/home/launcher/view/BaseDragLayer;->mActivity:Lcom/miui/home/launcher/BaseDraggingActivity;

    invoke-static {v0}, Lcom/miui/home/launcher/AbstractFloatingView;->getTopOpenView(Lcom/miui/home/launcher/BaseDraggingActivity;)Lcom/miui/home/launcher/AbstractFloatingView;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 479
    invoke-interface {v0, p1}, Lcom/miui/home/launcher/util/TouchController;->onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 480
    iput-object v0, p0, Lcom/miui/home/launcher/SuperDraglayer;->mActiveController:Lcom/miui/home/launcher/util/TouchController;

    return v1

    .line 484
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/SuperDraglayer;->mControllers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/home/launcher/util/TouchController;

    .line 485
    instance-of v5, v4, Lcom/miui/home/launcher/touch/FeedSwipeController;

    if-eqz v5, :cond_4

    .line 486
    iget-boolean v5, p0, Lcom/miui/home/launcher/SuperDraglayer;->mIsOnScale:Z

    if-eqz v5, :cond_3

    goto :goto_0

    .line 489
    :cond_3
    iget-boolean v5, p0, Lcom/miui/home/launcher/SuperDraglayer;->mIsIgnoreFeedController:Z

    if-nez v5, :cond_2

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/SuperDraglayer;->isIgnoreFeedController(Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_0

    .line 493
    :cond_4
    invoke-interface {v4, p1}, Lcom/miui/home/launcher/util/TouchController;->onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 494
    iput-object v4, p0, Lcom/miui/home/launcher/SuperDraglayer;->mActiveController:Lcom/miui/home/launcher/util/TouchController;

    .line 495
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "findActiveController, "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/miui/home/launcher/SuperDraglayer;->mActiveController:Lcom/miui/home/launcher/util/TouchController;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    iget-object p1, p0, Lcom/miui/home/launcher/SuperDraglayer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    iget-object p0, p0, Lcom/miui/home/launcher/SuperDraglayer;->mActiveController:Lcom/miui/home/launcher/util/TouchController;

    instance-of p0, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;

    xor-int/2addr p0, v1

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/Launcher;->cancelHomeFeedContainerArrowAnim(Z)V

    return v1

    :cond_5
    return v2

    .line 472
    :cond_6
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "isRecentOpenAnimRunning="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, "   clickAppWaitForCallback="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public gatherTransparentRegion(Landroid/graphics/Region;)Z
    .locals 0

    .line 694
    invoke-virtual {p1}, Landroid/graphics/Region;->setEmpty()V

    const/4 p0, 0x0

    return p0
.end method

.method public getDescendantCoordRelativeToSelf(Landroid/view/View;[I)F
    .locals 1

    const/4 v0, 0x0

    .line 895
    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/home/launcher/SuperDraglayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[IZ)F

    move-result p0

    return p0
.end method

.method public getDescendantCoordRelativeToSelf(Landroid/view/View;[IZ)F
    .locals 0

    .line 912
    invoke-static {p1, p0, p2, p3}, Lcom/miui/home/launcher/common/Utilities;->getDescendantCoordRelativeToAncestor(Landroid/view/View;Landroid/view/View;[IZ)F

    move-result p0

    return p0
.end method

.method public getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F
    .locals 6

    .line 884
    iget-object v0, p0, Lcom/miui/home/launcher/SuperDraglayer;->mTmpXY:[I

    const/4 v1, 0x0

    aput v1, v0, v1

    const/4 v2, 0x1

    .line 885
    aput v1, v0, v2

    .line 886
    invoke-virtual {p0, p1, v0}, Lcom/miui/home/launcher/SuperDraglayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[I)F

    move-result v0

    .line 888
    iget-object v3, p0, Lcom/miui/home/launcher/SuperDraglayer;->mTmpXY:[I

    aget v4, v3, v1

    aget v5, v3, v2

    aget v1, v3, v1

    int-to-float v1, v1

    .line 889
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v1, v3

    float-to-int v1, v1

    iget-object p0, p0, Lcom/miui/home/launcher/SuperDraglayer;->mTmpXY:[I

    aget p0, p0, v2

    int-to-float p0, p0

    .line 890
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, v0

    add-float/2addr p0, p1

    float-to-int p0, p0

    .line 888
    invoke-virtual {p2, v4, v5, v1, p0}, Landroid/graphics/Rect;->set(IIII)V

    return v0
.end method

.method public getFeedOverlaySwipeController()Lcom/miui/home/launcher/overlay/feed/FeedOverlaySwipeController;
    .locals 3

    .line 256
    iget-object v0, p0, Lcom/miui/home/launcher/SuperDraglayer;->mControllers:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 259
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/SuperDraglayer;->mControllers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/util/TouchController;

    .line 260
    instance-of v2, v0, Lcom/miui/home/launcher/overlay/feed/FeedOverlaySwipeController;

    if-eqz v2, :cond_1

    .line 261
    check-cast v0, Lcom/miui/home/launcher/overlay/feed/FeedOverlaySwipeController;

    return-object v0

    :cond_2
    :goto_0
    return-object v1
.end method

.method public getFeedSwipeController()Lcom/miui/home/launcher/touch/FeedSwipeController;
    .locals 2

    .line 525
    iget-object p0, p0, Lcom/miui/home/launcher/SuperDraglayer;->mControllers:Ljava/util/List;

    if-eqz p0, :cond_1

    .line 526
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/util/TouchController;

    .line 527
    instance-of v1, v0, Lcom/miui/home/launcher/touch/FeedSwipeController;

    if-eqz v1, :cond_0

    .line 528
    check-cast v0, Lcom/miui/home/launcher/touch/FeedSwipeController;

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getWidgetResizeDragController(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/DragController;)Lcom/miui/home/launcher/WidgetResizeDragController;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getWpOffsetX()F
    .locals 0

    .line 606
    iget p0, p0, Lcom/miui/home/launcher/SuperDraglayer;->mWpOffsetX:F

    return p0
.end method

.method public getWpStepX()F
    .locals 0

    .line 602
    iget p0, p0, Lcom/miui/home/launcher/SuperDraglayer;->mWpStepX:F

    return p0
.end method

.method public highlightLocatedApp(Lcom/miui/home/launcher/DesktopIcon;Z)I
    .locals 11

    .line 735
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 736
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v1

    new-array v2, v1, [F

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/4 v5, 0x0

    if-ge v4, v1, :cond_0

    .line 738
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    aput v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 742
    :cond_0
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/miui/launcher/views/LauncherFrameLayout;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 743
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f06005c

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 745
    new-instance v1, Lcom/miui/home/launcher/SuperDraglayer$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v1, v4, v4}, Lcom/miui/home/launcher/SuperDraglayer$LayoutParams;-><init>(II)V

    const/4 v4, 0x1

    .line 746
    iput-boolean v4, v1, Lcom/miui/home/launcher/InsettableFrameLayout$LayoutParams;->ignoreInsets:Z

    .line 747
    invoke-virtual {p0, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 749
    invoke-virtual {v0, v5}, Landroid/view/View;->setAlpha(F)V

    .line 750
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 751
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b001a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v1, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v5, 0x3f800000    # 1.0f

    .line 752
    invoke-virtual {v1, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 753
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 756
    invoke-interface {p1}, Lcom/miui/home/launcher/DesktopIcon;->getView()Landroid/view/View;

    move-result-object v7

    const/4 v1, 0x4

    .line 758
    invoke-virtual {v7, v1}, Landroid/view/View;->setTransitionVisibility(I)V

    .line 759
    invoke-interface {p1, v4}, Lcom/miui/home/launcher/LocatableIcon;->setIconLocating(Z)V

    .line 760
    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 762
    invoke-virtual {v1}, Landroid/view/ViewGroup;->invalidate()V

    :cond_1
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 765
    invoke-virtual {v7, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 766
    new-instance v9, Lcom/miui/home/launcher/SuperDraglayer$3;

    iget-object v5, p0, Lcom/miui/launcher/views/LauncherFrameLayout;->mContext:Landroid/content/Context;

    invoke-direct {v9, p0, v5, v7}, Lcom/miui/home/launcher/SuperDraglayer$3;-><init>(Lcom/miui/home/launcher/SuperDraglayer;Landroid/content/Context;Landroid/view/View;)V

    .line 772
    invoke-static {}, Lcom/miui/home/launcher/common/BlurUtilities;->isBlurSupported()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {v4}, Lcom/miui/home/launcher/DeviceConfig;->isUseDefaultFolderIcon(Z)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {v3}, Lcom/miui/home/launcher/DeviceConfig;->isUseDefaultFolderIcon(Z)Z

    move-result v5

    if-nez v5, :cond_3

    :cond_2
    const/4 v5, 0x0

    .line 773
    invoke-virtual {v9, v4, v5}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 775
    :cond_3
    new-instance v5, Lcom/miui/home/launcher/SuperDraglayer$LayoutParams;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v8

    invoke-direct {v5, v6, v8}, Lcom/miui/home/launcher/SuperDraglayer$LayoutParams;-><init>(II)V

    const/16 v6, 0x33

    .line 776
    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 777
    iput-boolean v4, v5, Lcom/miui/home/launcher/InsettableFrameLayout$LayoutParams;->ignoreInsets:Z

    aget v3, v1, v3

    .line 778
    iput v3, v5, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    aget v1, v1, v4

    .line 779
    iput v1, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 780
    invoke-virtual {p0, v9, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 781
    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 782
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0018

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 783
    new-instance v2, Lcom/miui/home/launcher/SuperDraglayer$4;

    invoke-direct {v2, p0, v9}, Lcom/miui/home/launcher/SuperDraglayer$4;-><init>(Lcom/miui/home/launcher/SuperDraglayer;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 790
    new-instance v2, Lcom/miui/home/launcher/SuperDraglayer$5;

    move-object v5, v2

    move-object v6, p0

    move-object v8, p1

    move v10, p2

    invoke-direct/range {v5 .. v10}, Lcom/miui/home/launcher/SuperDraglayer$5;-><init>(Lcom/miui/home/launcher/SuperDraglayer;Landroid/view/View;Lcom/miui/home/launcher/DesktopIcon;Landroid/view/View;Z)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 798
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 801
    new-instance p1, Lcom/miui/home/launcher/SuperDraglayer$6;

    invoke-direct {p1, p0, v0}, Lcom/miui/home/launcher/SuperDraglayer$6;-><init>(Lcom/miui/home/launcher/SuperDraglayer;Landroid/view/View;)V

    .line 813
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v2

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->getDuration()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 801
    invoke-virtual {v0, p1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 815
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide p0

    long-to-int p0, p0

    return p0
.end method

.method public isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 872
    iget-object v0, p0, Lcom/miui/home/launcher/SuperDraglayer;->mHitRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Lcom/miui/home/launcher/SuperDraglayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    .line 873
    iget-object p0, p0, Lcom/miui/home/launcher/SuperDraglayer;->mHitRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    return p0
.end method

.method public isStatusBarFollowingTouch()Z
    .locals 1

    .line 505
    iget-object p0, p0, Lcom/miui/home/launcher/SuperDraglayer;->mActiveController:Lcom/miui/home/launcher/util/TouchController;

    instance-of v0, p0, Lcom/miui/home/launcher/uioverrides/StatusBarSwipeController;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/miui/home/launcher/uioverrides/StatusBarSwipeController;

    .line 506
    invoke-virtual {p0}, Lcom/miui/home/launcher/uioverrides/StatusBarSwipeController;->isDispatchingToStatusBar()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isWidgetBeingResized()Z
    .locals 0

    .line 684
    iget-object p0, p0, Lcom/miui/home/launcher/SuperDraglayer;->mWidgetResizeDragController:Lcom/miui/home/launcher/WidgetResizeDragController;

    invoke-virtual {p0}, Lcom/miui/home/launcher/WidgetResizeDragController;->isWidgetBeingResized()Z

    move-result p0

    return p0
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 5

    .line 820
    iget-boolean v0, p0, Lcom/miui/home/launcher/SuperDraglayer;->mReApplyed:Z

    if-nez v0, :cond_0

    .line 823
    iget-object v0, p0, Lcom/miui/home/launcher/SuperDraglayer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherStateManager;->reApplyState()V

    const/4 v0, 0x1

    .line 824
    iput-boolean v0, p0, Lcom/miui/home/launcher/SuperDraglayer;->mReApplyed:Z

    .line 826
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v1

    .line 827
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v2

    .line 828
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v3

    .line 829
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 830
    iget-object v1, p0, Lcom/miui/home/launcher/InsettableFrameLayout;->mInsets:Landroid/graphics/Rect;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 831
    :cond_1
    iput-object v0, p0, Lcom/miui/home/launcher/InsettableFrameLayout;->mInsets:Landroid/graphics/Rect;

    .line 832
    invoke-static {p0, v0}, Lcom/miui/home/launcher/InsettableFrameLayout;->dispatchInsets(Landroid/view/ViewGroup;Landroid/graphics/Rect;)V

    .line 834
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 927
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 928
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 929
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 935
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 936
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 937
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onGridConfigChanged(Lcom/miui/home/launcher/GridConfig;)V
    .locals 0

    .line 918
    invoke-virtual {p0}, Lcom/miui/home/launcher/SuperDraglayer;->clearAllResizeFrames()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 453
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isDoubleTapLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 454
    iget-object v0, p0, Lcom/miui/home/launcher/SuperDraglayer;->mDoubleTapGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 456
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/SuperDraglayer;->mPointerCount:I

    .line 457
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v2, :cond_2

    :cond_1
    const/4 v0, 0x0

    .line 459
    iput-boolean v0, p0, Lcom/miui/home/launcher/SuperDraglayer;->mIsOnScale:Z

    .line 460
    iput-boolean v0, p0, Lcom/miui/home/launcher/SuperDraglayer;->mIsIgnoreFeedController:Z

    .line 462
    :cond_2
    iget-object v0, p0, Lcom/miui/home/launcher/SuperDraglayer;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 463
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/SuperDraglayer;->handleMotionEventWhenShortcutMenuShowing(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v2

    .line 464
    :cond_3
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/SuperDraglayer;->findActiveController(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    .line 665
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 666
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p1

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_1

    .line 668
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    .line 669
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    check-cast p4, Landroid/widget/FrameLayout$LayoutParams;

    .line 670
    instance-of p5, p4, Lcom/miui/home/launcher/SuperDraglayer$LayoutParams;

    if-eqz p5, :cond_0

    .line 671
    check-cast p4, Lcom/miui/home/launcher/SuperDraglayer$LayoutParams;

    .line 672
    iget-boolean p5, p4, Lcom/miui/home/launcher/SuperDraglayer$LayoutParams;->customPosition:Z

    if-eqz p5, :cond_0

    .line 673
    iget p5, p4, Lcom/miui/home/launcher/SuperDraglayer$LayoutParams;->x:I

    iget v0, p4, Lcom/miui/home/launcher/SuperDraglayer$LayoutParams;->y:I

    iget v1, p4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    add-int/2addr v1, p5

    iget p4, p4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    add-int/2addr p4, v0

    invoke-virtual {p3, p5, v0, v1, p4}, Landroid/view/View;->layout(IIII)V

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/AccessibilityMessage;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 943
    invoke-virtual {p1}, Lcom/miui/home/launcher/common/messages/AccessibilityMessage;->getReason()I

    move-result v0

    if-nez v0, :cond_0

    .line 944
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getImportantForAccessibility()I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/SuperDraglayer;->mImportantForAccessibility:I

    const/4 p1, 0x4

    .line 945
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/SuperDraglayer;->setImportantForAccessibility(I)V

    const/4 p1, 0x0

    .line 946
    iput-boolean p1, p0, Lcom/miui/home/launcher/SuperDraglayer;->mAllowSetImportantForAccessibility:Z

    goto :goto_0

    .line 947
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/common/messages/AccessibilityMessage;->getReason()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 948
    iput-boolean v0, p0, Lcom/miui/home/launcher/SuperDraglayer;->mAllowSetImportantForAccessibility:Z

    .line 949
    iget p1, p0, Lcom/miui/home/launcher/SuperDraglayer;->mImportantForAccessibility:I

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/SuperDraglayer;->setImportantForAccessibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 536
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/SuperDraglayer;->mPointerCount:I

    .line 537
    iget-object v0, p0, Lcom/miui/home/launcher/SuperDraglayer;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 538
    iget-object v0, p0, Lcom/miui/home/launcher/SuperDraglayer;->mActiveController:Lcom/miui/home/launcher/util/TouchController;

    if-eqz v0, :cond_0

    .line 539
    invoke-interface {v0, p1}, Lcom/miui/home/launcher/util/TouchController;->onControllerTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    .line 542
    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/SuperDraglayer;->findActiveController(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0

    if-nez p1, :cond_0

    .line 332
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    return-void
.end method

.method public requestSwipeControllerDisallowInterceptTouchEventHorizontal(Z)V
    .locals 2

    .line 337
    iget-object p0, p0, Lcom/miui/home/launcher/SuperDraglayer;->mControllers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/util/TouchController;

    .line 338
    instance-of v1, v0, Lcom/miui/home/launcher/util/SwipeTouchController;

    if-eqz v1, :cond_0

    .line 339
    check-cast v0, Lcom/miui/home/launcher/util/SwipeTouchController;

    invoke-interface {v0, p1}, Lcom/miui/home/launcher/util/SwipeTouchController;->requestDisallowInterceptTouchEventHorizontal(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public requestSwipeControllerDisallowInterceptTouchEventVertical(Z)V
    .locals 2

    .line 321
    iget-object p0, p0, Lcom/miui/home/launcher/SuperDraglayer;->mControllers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/util/TouchController;

    .line 322
    instance-of v1, v0, Lcom/miui/home/launcher/util/SwipeTouchController;

    if-eqz v1, :cond_0

    .line 323
    check-cast v0, Lcom/miui/home/launcher/util/SwipeTouchController;

    invoke-interface {v0, p1}, Lcom/miui/home/launcher/util/SwipeTouchController;->requestDisallowInterceptTouchEventVertical(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setAssistantOverlay(Lcom/miui/home/launcher/overlay/LauncherOverlay;)V
    .locals 2

    .line 224
    iget-object p0, p0, Lcom/miui/home/launcher/SuperDraglayer;->mControllers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/util/TouchController;

    .line 225
    instance-of v1, v0, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlaySwipeController;

    if-eqz v1, :cond_0

    .line 226
    check-cast v0, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlaySwipeController;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/overlay/OverlaySwipeController;->setLauncherOverlay(Lcom/miui/home/launcher/overlay/LauncherOverlay;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setAssistantTransitionController(Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController;)V
    .locals 2

    .line 232
    iget-object p0, p0, Lcom/miui/home/launcher/SuperDraglayer;->mControllers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/util/TouchController;

    .line 233
    instance-of v1, v0, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlaySwipeController;

    if-eqz v1, :cond_0

    .line 234
    check-cast v0, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlaySwipeController;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlaySwipeController;->setAssistantTransitionController(Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setClipForDragging(Landroid/graphics/Rect;)V
    .locals 0

    .line 699
    iput-object p1, p0, Lcom/miui/home/launcher/SuperDraglayer;->mClipForDragging:Landroid/graphics/Rect;

    return-void
.end method

.method public setDragController(Lcom/miui/home/launcher/DragController;)V
    .locals 0

    .line 312
    iput-object p1, p0, Lcom/miui/home/launcher/SuperDraglayer;->mDragController:Lcom/miui/home/launcher/DragController;

    return-void
.end method

.method public setFeedOverlay(Lcom/miui/home/launcher/overlay/LauncherOverlay;)V
    .locals 2

    .line 240
    iget-object p0, p0, Lcom/miui/home/launcher/SuperDraglayer;->mControllers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/util/TouchController;

    .line 241
    instance-of v1, v0, Lcom/miui/home/launcher/overlay/feed/FeedOverlaySwipeController;

    if-eqz v1, :cond_0

    .line 242
    check-cast v0, Lcom/miui/home/launcher/overlay/feed/FeedOverlaySwipeController;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/overlay/OverlaySwipeController;->setLauncherOverlay(Lcom/miui/home/launcher/overlay/LauncherOverlay;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setImportantForAccessibility(I)V
    .locals 1

    .line 955
    iget-boolean v0, p0, Lcom/miui/home/launcher/SuperDraglayer;->mAllowSetImportantForAccessibility:Z

    if-nez v0, :cond_0

    return-void

    .line 958
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setImportantForAccessibility(I)V

    return-void
.end method

.method public setLauncher(Lcom/miui/home/launcher/Launcher;)V
    .locals 2

    .line 560
    iput-object p1, p0, Lcom/miui/home/launcher/SuperDraglayer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 561
    new-instance v0, Lcom/miui/home/launcher/SuperDraglayer$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/SuperDraglayer$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/launcher/SuperDraglayer;)V

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/BaseActivity;->addOnGridConfigChangeListener(Lcom/miui/home/launcher/GridConfig$OnGridConfigChangeListener;)V

    .line 562
    iget-object v0, p0, Lcom/miui/home/launcher/SuperDraglayer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/SuperDraglayer;->mScreenSize:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 564
    iget-object v0, p0, Lcom/miui/home/launcher/SuperDraglayer;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {p0, p1, v0}, Lcom/miui/home/launcher/SuperDraglayer;->getWidgetResizeDragController(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/DragController;)Lcom/miui/home/launcher/WidgetResizeDragController;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/SuperDraglayer;->mWidgetResizeDragController:Lcom/miui/home/launcher/WidgetResizeDragController;

    .line 565
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/SuperDraglayer;->mControllers:Ljava/util/List;

    .line 566
    iget-object v1, p0, Lcom/miui/home/launcher/SuperDraglayer;->mWidgetResizeDragController:Lcom/miui/home/launcher/WidgetResizeDragController;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 567
    iget-object v0, p0, Lcom/miui/home/launcher/SuperDraglayer;->mControllers:Ljava/util/List;

    new-instance v1, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;

    invoke-direct {v1, p1}, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;-><init>(Lcom/miui/home/launcher/Launcher;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 568
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/ApplicationConfig;->isAssistantSupportOverlay()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 569
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/SuperDraglayer;->mControllers:Ljava/util/List;

    new-instance v1, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlaySwipeController;

    invoke-direct {v1, p1}, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlaySwipeController;-><init>(Lcom/miui/home/launcher/Launcher;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 571
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/ApplicationConfig;->isFeedSupportOverlay()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 572
    iget-object v0, p0, Lcom/miui/home/launcher/SuperDraglayer;->mControllers:Ljava/util/List;

    new-instance v1, Lcom/miui/home/launcher/overlay/feed/FeedOverlaySwipeController;

    invoke-direct {v1, p1}, Lcom/miui/home/launcher/overlay/feed/FeedOverlaySwipeController;-><init>(Lcom/miui/home/launcher/Launcher;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 574
    :cond_2
    iget-object v0, p0, Lcom/miui/home/launcher/SuperDraglayer;->mControllers:Ljava/util/List;

    new-instance v1, Lcom/miui/home/launcher/touch/FeedSwipeController;

    invoke-direct {v1, p1}, Lcom/miui/home/launcher/touch/FeedSwipeController;-><init>(Lcom/miui/home/launcher/Launcher;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 577
    :goto_0
    invoke-static {}, Lcom/miui/home/launcher/GlobalSearchUtil;->isSupportPullDownSearch()Z

    move-result v0

    if-nez v0, :cond_3

    .line 578
    invoke-static {}, Lcom/miui/home/launcher/InternationalGlobalSearchUtil;->isSupportPullDownSearch()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 579
    :cond_3
    iget-object v0, p0, Lcom/miui/home/launcher/SuperDraglayer;->mControllers:Ljava/util/List;

    new-instance v1, Lcom/miui/home/launcher/overlay/search/SearchOverlaySwipeController;

    invoke-direct {v1, p1}, Lcom/miui/home/launcher/overlay/search/SearchOverlaySwipeController;-><init>(Lcom/miui/home/launcher/Launcher;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 581
    iget-object v0, p0, Lcom/miui/home/launcher/SuperDraglayer;->mControllers:Ljava/util/List;

    new-instance v1, Lcom/miui/home/launcher/uioverrides/GlobalSearchSwipeController;

    invoke-direct {v1, p1}, Lcom/miui/home/launcher/uioverrides/GlobalSearchSwipeController;-><init>(Lcom/miui/home/launcher/Launcher;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 584
    :cond_4
    sget-boolean v0, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_MIUI_12:Z

    if-eqz v0, :cond_5

    .line 585
    iget-object p0, p0, Lcom/miui/home/launcher/SuperDraglayer;->mControllers:Ljava/util/List;

    new-instance v0, Lcom/miui/home/launcher/uioverrides/StatusBarSwipeController;

    invoke-direct {v0, p1}, Lcom/miui/home/launcher/uioverrides/StatusBarSwipeController;-><init>(Lcom/miui/home/launcher/Launcher;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    return-void
.end method

.method public setSearchOverlay(Lcom/miui/home/launcher/overlay/LauncherOverlay;)V
    .locals 2

    .line 248
    iget-object p0, p0, Lcom/miui/home/launcher/SuperDraglayer;->mControllers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/util/TouchController;

    .line 249
    instance-of v1, v0, Lcom/miui/home/launcher/overlay/search/SearchOverlaySwipeController;

    if-eqz v1, :cond_0

    .line 250
    check-cast v0, Lcom/miui/home/launcher/overlay/search/SearchOverlaySwipeController;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/overlay/OverlaySwipeController;->setLauncherOverlay(Lcom/miui/home/launcher/overlay/LauncherOverlay;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public tapedEmptyPosition(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 170
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    .line 171
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    const/4 v1, 0x3

    new-array v2, v1, [Landroid/view/View;

    .line 173
    iget-object v3, p0, Lcom/miui/home/launcher/SuperDraglayer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 174
    invoke-virtual {v3}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/miui/home/launcher/SuperDraglayer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 175
    invoke-virtual {v3}, Lcom/miui/home/launcher/Launcher;->getHotSeats()Lcom/miui/home/launcher/hotseats/HotSeats;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/miui/home/launcher/SuperDraglayer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 176
    invoke-virtual {v3}, Lcom/miui/home/launcher/Launcher;->getSearchBar()Lcom/miui/home/launcher/SearchBar;

    move-result-object v3

    const/4 v6, 0x2

    aput-object v3, v2, v6

    move v3, v4

    :goto_0
    if-ge v3, v1, :cond_1

    .line 180
    aget-object v6, v2, v3

    .line 181
    invoke-direct {p0, v6, v0, p1}, Lcom/miui/home/launcher/SuperDraglayer;->checkPointInViewArea(Landroid/view/View;FF)Z

    move-result v6

    if-eqz v6, :cond_0

    move v4, v5

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    xor-int/lit8 p0, v4, 0x1

    return p0
.end method

.method public updateWallpaperOffset()V
    .locals 3

    .line 639
    iget-object v0, p0, Lcom/miui/home/launcher/SuperDraglayer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getDesktopWallpaperManager()Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 640
    invoke-virtual {v0}, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->canWallpaperScrolled()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 643
    :cond_1
    invoke-static {}, Lcom/miui/home/library/utils/Preconditions;->assertUIThread()V

    .line 644
    iget-object v0, p0, Lcom/miui/home/launcher/SuperDraglayer;->mWallpaperManager:Landroid/app/WallpaperManager;

    iget v1, p0, Lcom/miui/home/launcher/SuperDraglayer;->mWpStepX:F

    iget v2, p0, Lcom/miui/home/launcher/SuperDraglayer;->mWpStepY:F

    invoke-virtual {v0, v1, v2}, Landroid/app/WallpaperManager;->setWallpaperOffsetSteps(FF)V

    .line 645
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 646
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 647
    new-instance v1, Lcom/miui/home/launcher/SuperDraglayer$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v0}, Lcom/miui/home/launcher/SuperDraglayer$$ExternalSyntheticLambda1;-><init>(Lcom/miui/home/launcher/SuperDraglayer;Ljava/lang/ref/WeakReference;)V

    invoke-static {v1}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 658
    :cond_2
    iget-object v0, p0, Lcom/miui/home/launcher/SuperDraglayer;->OffsetUpdater:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 659
    iget-object v0, p0, Lcom/miui/home/launcher/SuperDraglayer;->OffsetUpdater:Ljava/lang/Runnable;

    const-wide/16 v1, 0x32

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    :goto_1
    return-void
.end method

.method public updateWallpaperOffset(FFFF)Z
    .locals 1

    .line 590
    iget v0, p0, Lcom/miui/home/launcher/SuperDraglayer;->mWpOffsetX:F

    cmpl-float v0, v0, p3

    if-eqz v0, :cond_0

    .line 591
    iput p1, p0, Lcom/miui/home/launcher/SuperDraglayer;->mWpStepX:F

    .line 592
    iput p2, p0, Lcom/miui/home/launcher/SuperDraglayer;->mWpStepY:F

    .line 593
    iput p3, p0, Lcom/miui/home/launcher/SuperDraglayer;->mWpOffsetX:F

    .line 594
    iput p4, p0, Lcom/miui/home/launcher/SuperDraglayer;->mWpOffsetY:F

    .line 595
    invoke-virtual {p0}, Lcom/miui/home/launcher/SuperDraglayer;->updateWallpaperOffset()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
