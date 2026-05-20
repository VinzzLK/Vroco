.class public Lcom/miui/home/launcher/DragController;
.super Ljava/lang/Object;
.source "DragController.java"

# interfaces
.implements Lcom/miui/home/launcher/GridConfig$OnGridConfigChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/DragController$ScrollRunnable;,
        Lcom/miui/home/launcher/DragController$WidgetOutlineTask;,
        Lcom/miui/home/launcher/DragController$DesktopIconOutlineTask;,
        Lcom/miui/home/launcher/DragController$OutlineTask;,
        Lcom/miui/home/launcher/DragController$ViewHolder;,
        Lcom/miui/home/launcher/DragController$LocationCalibration;,
        Lcom/miui/home/launcher/DragController$VisualizeCalibration;,
        Lcom/miui/home/launcher/DragController$DropAnimationListener;,
        Lcom/miui/home/launcher/DragController$DragListener;
    }
.end annotation


# static fields
.field private static sTmpCanvas:Landroid/graphics/Canvas;

.field private static widgetBlurDefauktBackgroundDrawable:Landroid/graphics/drawable/Drawable;


# instance fields
.field private mAutoDraged:Z

.field private mConfiguration:Landroid/content/res/Configuration;

.field private final mCoordinatesTemp:[I

.field private mDistanceSinceScroll:I

.field private mDragObject:Lcom/miui/home/launcher/DragObject;

.field private mDragObjectDragView:Lcom/miui/home/launcher/DragView;

.field private mDragScroller:Lcom/miui/home/launcher/DragScroller;

.field private mDragViewCenterX:I

.field private final mDragViewOwner:Landroid/view/ViewGroup;

.field private mDragging:Z

.field private mDraggingFromAssistant:Z

.field private mDraggingToAssistant:Z

.field private mDropAnimationListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/DragController$DropAnimationListener;",
            ">;"
        }
    .end annotation
.end field

.field private mDropTargetWhenDragStarted:Lcom/miui/home/launcher/DropTarget;

.field private mDropTargets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/DropTarget;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mIsScreenOrientationChanged:Z

.field private mLastDropTarget:Lcom/miui/home/launcher/DropTarget;

.field private mLastTouch:[I

.field private mLauncher:Lcom/miui/home/launcher/Launcher;

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/DragController$DragListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMotionDownX:I

.field private mMotionDownY:I

.field private mMoveTarget:Landroid/view/View;

.field private mRectTemp:Landroid/graphics/Rect;

.field private mScrollRunnable:Lcom/miui/home/launcher/DragController$ScrollRunnable;

.field private mScrollState:I

.field private mScrollView:Landroid/view/View;

.field private mSecondPointerScroller:Lcom/miui/home/launcher/DragScroller;

.field private mSecondaryPointerId:I

.field private mShortcutMenuDragListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/shortcuts/ShortcutMenuDragListener;",
            ">;"
        }
    .end annotation
.end field

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public static synthetic $r8$lambda$---jb6OAHajkjFI9aIoV7RM6R-Y(ILcom/miui/home/launcher/DragView;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/home/launcher/DragController;->lambda$setEachDragViewMinDropAnimationDuration$0(ILcom/miui/home/launcher/DragView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$umTWNUKTiWe_JSJ3EolTiH4075U(FLandroid/graphics/drawable/Drawable;IILandroid/view/View;Landroid/graphics/Canvas;)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/miui/home/launcher/DragController;->lambda$createBitmapWithOutline$1(FLandroid/graphics/drawable/Drawable;IILandroid/view/View;Landroid/graphics/Canvas;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 161
    new-instance v0, Lcom/miui/home/launcher/widget/WidgetIconBlurBackgroundDrawable;

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/miui/home/launcher/widget/WidgetIconBlurBackgroundDrawable;-><init>(Landroid/content/Context;Z)V

    sput-object v0, Lcom/miui/home/launcher/DragController;->widgetBlurDefauktBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 633
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/DragController;->sTmpCanvas:Landroid/graphics/Canvas;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 3

    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/DragController;->mRectTemp:Landroid/graphics/Rect;

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 113
    iput-object v1, p0, Lcom/miui/home/launcher/DragController;->mCoordinatesTemp:[I

    .line 127
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/miui/home/launcher/DragController;->mDropTargets:Ljava/util/ArrayList;

    .line 129
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/miui/home/launcher/DragController;->mListeners:Ljava/util/ArrayList;

    .line 131
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/miui/home/launcher/DragController;->mDropAnimationListeners:Ljava/util/ArrayList;

    .line 133
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/miui/home/launcher/DragController;->mShortcutMenuDragListeners:Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 142
    iput v1, p0, Lcom/miui/home/launcher/DragController;->mScrollState:I

    const/4 v2, -0x1

    .line 143
    iput v2, p0, Lcom/miui/home/launcher/DragController;->mSecondaryPointerId:I

    .line 144
    new-instance v2, Lcom/miui/home/launcher/DragController$ScrollRunnable;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/DragController$ScrollRunnable;-><init>(Lcom/miui/home/launcher/DragController;)V

    iput-object v2, p0, Lcom/miui/home/launcher/DragController;->mScrollRunnable:Lcom/miui/home/launcher/DragController$ScrollRunnable;

    .line 151
    iput v1, p0, Lcom/miui/home/launcher/DragController;->mDistanceSinceScroll:I

    new-array v0, v0, [I

    .line 152
    iput-object v0, p0, Lcom/miui/home/launcher/DragController;->mLastTouch:[I

    .line 154
    iput-boolean v1, p0, Lcom/miui/home/launcher/DragController;->mIsScreenOrientationChanged:Z

    .line 288
    iput-boolean v1, p0, Lcom/miui/home/launcher/DragController;->mAutoDraged:Z

    .line 249
    move-object v0, p1

    check-cast v0, Lcom/miui/home/launcher/Launcher;

    iput-object v0, p0, Lcom/miui/home/launcher/DragController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 250
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/DragController;->mHandler:Landroid/os/Handler;

    .line 251
    iget-object v0, p0, Lcom/miui/home/launcher/DragController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    new-instance v1, Lcom/miui/home/launcher/DragController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/DragController$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/launcher/DragController;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/BaseActivity;->addOnGridConfigChangeListener(Lcom/miui/home/launcher/GridConfig$OnGridConfigChangeListener;)V

    .line 252
    iput-object p2, p0, Lcom/miui/home/launcher/DragController;->mDragViewOwner:Landroid/view/ViewGroup;

    .line 253
    new-instance p2, Landroid/content/res/Configuration;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object p2, p0, Lcom/miui/home/launcher/DragController;->mConfiguration:Landroid/content/res/Configuration;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/DragController;)Lcom/miui/home/launcher/DragObject;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    return-object p0
.end method

.method static synthetic access$100(Landroid/view/View;Landroid/graphics/drawable/Drawable;F)Landroid/graphics/Bitmap;
    .locals 0

    .line 82
    invoke-static {p0, p1, p2}, Lcom/miui/home/launcher/DragController;->createBitmap(Landroid/view/View;Landroid/graphics/drawable/Drawable;F)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/DragController;)Lcom/miui/home/launcher/DragScroller;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/miui/home/launcher/DragController;->mDragScroller:Lcom/miui/home/launcher/DragScroller;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/home/launcher/DragController;)Z
    .locals 0

    .line 82
    iget-boolean p0, p0, Lcom/miui/home/launcher/DragController;->mDragging:Z

    return p0
.end method

.method static synthetic access$400(Lcom/miui/home/launcher/DragController;)Lcom/miui/home/launcher/Launcher;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/miui/home/launcher/DragController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-object p0
.end method

.method static synthetic access$502(Lcom/miui/home/launcher/DragController;I)I
    .locals 0

    .line 82
    iput p1, p0, Lcom/miui/home/launcher/DragController;->mDistanceSinceScroll:I

    return p1
.end method

.method static synthetic access$600(Lcom/miui/home/launcher/DragController;)Lcom/miui/home/launcher/DragController$ScrollRunnable;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/miui/home/launcher/DragController;->mScrollRunnable:Lcom/miui/home/launcher/DragController$ScrollRunnable;

    return-object p0
.end method

.method static synthetic access$700(Lcom/miui/home/launcher/DragController;)Landroid/os/Handler;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/miui/home/launcher/DragController;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private cancelDragScroll()V
    .locals 1

    const/4 v0, 0x0

    .line 1451
    iput v0, p0, Lcom/miui/home/launcher/DragController;->mScrollState:I

    .line 1452
    invoke-virtual {p0}, Lcom/miui/home/launcher/DragController;->cancelScroll()V

    .line 1453
    iget-object p0, p0, Lcom/miui/home/launcher/DragController;->mDragScroller:Lcom/miui/home/launcher/DragScroller;

    if-eqz p0, :cond_0

    .line 1454
    invoke-interface {p0}, Lcom/miui/home/launcher/DragScroller;->onExitScrollArea()Z

    :cond_0
    return-void
.end method

.method private cancelShortcutMenu(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1157
    iget-object p1, p0, Lcom/miui/home/launcher/DragController;->mShortcutMenuDragListeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/shortcuts/ShortcutMenuDragListener;

    .line 1158
    iget-object v1, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-interface {v0, v1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuDragListener;->onDragOverThresholdWhenShortcutMenuShowing(Lcom/miui/home/launcher/DragObject;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static clamp(III)I
    .locals 0

    if-ge p0, p1, :cond_0

    return p1

    :cond_0
    if-lt p0, p2, :cond_1

    add-int/lit8 p2, p2, -0x1

    return p2

    :cond_1
    return p0
.end method

.method private cleanLastDropTarget()V
    .locals 2

    .line 1012
    iget-object v0, p0, Lcom/miui/home/launcher/DragController;->mLastDropTarget:Lcom/miui/home/launcher/DropTarget;

    if-eqz v0, :cond_0

    .line 1013
    iget-object v1, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-interface {v0, v1}, Lcom/miui/home/launcher/DropTarget;->onDragExit(Lcom/miui/home/launcher/DragObject;)V

    const/4 v0, 0x0

    .line 1014
    iput-object v0, p0, Lcom/miui/home/launcher/DragController;->mLastDropTarget:Lcom/miui/home/launcher/DropTarget;

    :cond_0
    return-void
.end method

.method private static createBitmap(Landroid/view/View;Landroid/graphics/drawable/Drawable;F)Landroid/graphics/Bitmap;
    .locals 6

    .line 650
    invoke-virtual {p0}, Landroid/view/View;->clearFocus()V

    .line 651
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 652
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 653
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/common/Utilities;->createBitmapSafely(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 655
    sget-object v3, Lcom/miui/home/launcher/DragController;->sTmpCanvas:Landroid/graphics/Canvas;

    .line 656
    invoke-virtual {v3}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 657
    invoke-virtual {v3, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 658
    invoke-virtual {v3, p2, p2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 659
    invoke-static {}, Lcom/miui/home/launcher/common/BlurUtilities;->isWidgetBlurSupported()Z

    move-result p2

    const/4 v5, 0x0

    if-eqz p2, :cond_0

    invoke-static {p0}, Lcom/miui/home/launcher/common/BlurUtilities;->supportWidgetBackgroundBlur(Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 661
    sget-object p2, Lcom/miui/home/launcher/DragController;->widgetBlurDefauktBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, v5, v5, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 662
    sget-object p2, Lcom/miui/home/launcher/DragController;->widgetBlurDefauktBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 665
    invoke-virtual {p1, v5, v5, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 666
    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 668
    :cond_1
    invoke-virtual {p0, v3}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    const/4 p0, 0x0

    .line 669
    invoke-virtual {v3, p0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 670
    invoke-virtual {v3, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_2
    return-object v2
.end method

.method private static createBitmapWithOutline(Landroid/view/View;Landroid/graphics/drawable/Drawable;F)Landroid/graphics/Bitmap;
    .locals 10

    .line 676
    invoke-virtual {p0}, Landroid/view/View;->clearFocus()V

    .line 677
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 678
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 680
    invoke-virtual {p0}, Landroid/view/View;->getClipToOutline()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getOutlineProvider()Landroid/view/ViewOutlineProvider;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 681
    new-instance v1, Landroid/graphics/Outline;

    invoke-direct {v1}, Landroid/graphics/Outline;-><init>()V

    .line 682
    invoke-virtual {p0}, Landroid/view/View;->getOutlineProvider()Landroid/view/ViewOutlineProvider;

    move-result-object v2

    invoke-virtual {v2, p0, v1}, Landroid/view/ViewOutlineProvider;->getOutline(Landroid/view/View;Landroid/graphics/Outline;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move-object v8, v1

    .line 684
    new-instance v9, Lcom/miui/home/launcher/DragController$$ExternalSyntheticLambda1;

    move-object v1, v9

    move v2, p2

    move-object v3, p1

    move v4, v0

    move v5, v7

    move-object v6, p0

    invoke-direct/range {v1 .. v6}, Lcom/miui/home/launcher/DragController$$ExternalSyntheticLambda1;-><init>(FLandroid/graphics/drawable/Drawable;IILandroid/view/View;)V

    invoke-static {v0, v7, v8, v9}, Lcom/miui/launcher/utils/BitmapRenderer;->createHardwareBitmapWithAcceleratedCanvas(IILandroid/graphics/Outline;Lcom/miui/launcher/utils/BitmapRenderer$Renderer;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private createDragView(Landroid/view/View;IIZILcom/miui/home/launcher/DragSource;)Lcom/miui/home/launcher/DragView;
    .locals 12

    move-object v9, p0

    move-object v0, p1

    move v1, p2

    const/4 v2, 0x0

    .line 553
    invoke-virtual {p1, v2}, Landroid/view/View;->setPressed(Z)V

    .line 554
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/miui/home/launcher/ItemInfo;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v4

    :goto_0
    check-cast v3, Lcom/miui/home/launcher/ItemInfo;

    move-object/from16 v8, p6

    .line 555
    instance-of v5, v8, Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    if-eqz v5, :cond_1

    instance-of v5, v3, Lcom/miui/home/launcher/AppInfo;

    if-eqz v5, :cond_1

    .line 556
    check-cast v3, Lcom/miui/home/launcher/AppInfo;

    invoke-virtual {v3}, Lcom/miui/home/launcher/BaseAppInfo;->makeShortcut()Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object v3

    const-wide/16 v5, -0x1

    .line 557
    iput-wide v5, v3, Lcom/miui/home/launcher/ItemInfo;->container:J

    .line 558
    iput-wide v5, v3, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    :cond_1
    move-object v5, v3

    if-eqz v5, :cond_2

    .line 561
    invoke-virtual {v5}, Lcom/miui/home/launcher/ItemInfo;->findMyPendingSource()Lcom/miui/home/launcher/PendingSource;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/miui/home/launcher/ItemInfo;->startPending(Lcom/miui/home/launcher/PendingSource;)V

    .line 565
    :cond_2
    instance-of v3, v0, Lcom/miui/home/launcher/HostViewContainer;

    if-eqz v3, :cond_3

    .line 566
    move-object v3, v0

    check-cast v3, Lcom/miui/home/launcher/HostViewContainer;

    invoke-interface {v3}, Lcom/miui/home/launcher/HostViewContainer;->getWidgetContainer()Landroid/view/View;

    move-result-object v3

    .line 567
    invoke-virtual {v3}, Landroid/view/View;->getScaleX()F

    move-result v6

    invoke-static {v3, v4, v6}, Lcom/miui/home/launcher/DragController;->createBitmapWithOutline(Landroid/view/View;Landroid/graphics/drawable/Drawable;F)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object v10, v3

    goto :goto_1

    :cond_3
    move-object v10, v4

    :goto_1
    if-eqz v1, :cond_9

    const/4 v3, 0x1

    const/4 v6, 0x4

    if-eq v1, v3, :cond_8

    const/4 v3, 0x3

    if-eq v1, v3, :cond_7

    if-eq v1, v6, :cond_6

    const/4 v2, 0x5

    if-eq v1, v2, :cond_5

    const/4 v2, 0x6

    if-eq v1, v2, :cond_4

    goto/16 :goto_2

    .line 606
    :cond_4
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/DragController;->setDownloadViewTag(Landroid/view/View;)V

    goto/16 :goto_2

    .line 600
    :cond_5
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/DragController;->setDownloadViewTag(Landroid/view/View;)V

    .line 601
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isDragDisable()Z

    move-result v1

    if-nez v1, :cond_a

    .line 602
    iget-object v1, v9, Lcom/miui/home/launcher/DragController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getHotSeats()Lcom/miui/home/launcher/hotseats/HotSeats;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/miui/home/launcher/hotseats/HotSeats;->removeIconWhenDrag(Landroid/view/View;)V

    goto/16 :goto_2

    .line 585
    :cond_6
    check-cast v0, Lcom/miui/home/launcher/ShortcutIcon;

    const v1, 0x7f0d0169

    .line 586
    iget-object v3, v9, Lcom/miui/home/launcher/DragController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v1, v3, v4}, Lcom/miui/home/launcher/ShortcutIcon;->createShortcutIcon(ILcom/miui/home/launcher/Launcher;Landroid/view/ViewGroup;)Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object v1

    .line 587
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v6, -0x1

    invoke-direct {v3, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 589
    invoke-virtual {v0}, Landroid/widget/TextView;->getWidth()I

    move-result v3

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 590
    invoke-virtual {v0}, Landroid/widget/TextView;->getHeight()I

    move-result v7

    invoke-static {v7, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 588
    invoke-virtual {v1, v3, v6}, Landroid/widget/TextView;->measure(II)V

    .line 591
    invoke-virtual {v0}, Landroid/widget/TextView;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/widget/TextView;->getHeight()I

    move-result v6

    invoke-virtual {v1, v2, v2, v3, v6}, Landroid/widget/TextView;->layout(IIII)V

    .line 592
    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutIcon;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Lcom/miui/home/launcher/ShortcutIcon;->setIconDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;)V

    .line 593
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 594
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsColorMode()Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    move-result-object v2

    iget-object v3, v9, Lcom/miui/home/launcher/DragController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 595
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsBackgroundAlpha()I

    move-result v4

    .line 594
    invoke-virtual {v2, v3, v4}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->getAppTextColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/ShortcutIcon;->setTextColor(I)V

    .line 596
    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutIcon;->getMessageText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/ShortcutIcon;->setMessageImmediately(Ljava/lang/String;)V

    move-object v2, v1

    goto :goto_3

    .line 581
    :cond_7
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/DragController;->setDownloadViewTag(Landroid/view/View;)V

    const/4 v1, 0x0

    .line 582
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_2

    .line 578
    :cond_8
    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 571
    :cond_9
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/DragController;->setDownloadViewTag(Landroid/view/View;)V

    .line 572
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 573
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 574
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_a
    :goto_2
    move-object v2, v0

    .line 609
    :goto_3
    new-instance v11, Lcom/miui/home/launcher/DragView;

    iget-object v0, v9, Lcom/miui/home/launcher/DragController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getDragViewContainer()Lcom/miui/home/launcher/widget/DragContainerLayout;

    move-result-object v1

    invoke-virtual {v2}, Landroid/view/View;->getScaleX()F

    move-result v0

    invoke-static {v2, v0}, Lcom/miui/home/launcher/DragController;->createOutline(Landroid/view/View;F)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object v0, v11

    move-object v4, v5

    move v5, p3

    move/from16 v6, p5

    move/from16 v7, p4

    move-object/from16 v8, p6

    move-object v9, p0

    invoke-direct/range {v0 .. v9}, Lcom/miui/home/launcher/DragView;-><init>(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Bitmap;Lcom/miui/home/launcher/ItemInfo;IIZLcom/miui/home/launcher/DragSource;Lcom/miui/home/launcher/DragController;)V

    if-eqz v10, :cond_b

    const v0, 0x7f0a0156

    .line 612
    invoke-virtual {v11, v0, v10}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    :cond_b
    return-object v11
.end method

.method private static createElderlyManShortcutBg(Lcom/miui/home/launcher/oldman/ElderlyManShortcutIcon;F)Landroid/graphics/Bitmap;
    .locals 4

    .line 697
    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 698
    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 699
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/common/Utilities;->createBitmapSafely(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 701
    sget-object v1, Lcom/miui/home/launcher/DragController;->sTmpCanvas:Landroid/graphics/Canvas;

    .line 702
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 703
    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 704
    invoke-virtual {v1, p1, p1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 705
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p1

    const v3, 0x7f08067c

    .line 706
    invoke-virtual {p1, v3}, Landroid/app/Application;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 707
    invoke-virtual {p0}, Lcom/miui/home/launcher/oldman/ElderlyManShortcutIcon;->getQuickCallBgRect()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 708
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 709
    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_0
    return-object v0
.end method

.method public static createFolderIcon1x1Bitmap(Lcom/miui/home/launcher/folder/FolderIcon1x1;F)Landroid/graphics/Bitmap;
    .locals 3

    .line 715
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->clearFocus()V

    .line 716
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 717
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 718
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/common/Utilities;->createBitmapSafely(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 720
    sget-object v1, Lcom/miui/home/launcher/DragController;->sTmpCanvas:Landroid/graphics/Canvas;

    .line 721
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 722
    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 723
    invoke-virtual {v1, p1, p1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 724
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/folder/FolderIcon1x1;->drawOutLine(Landroid/graphics/Canvas;)V

    const/4 p0, 0x0

    .line 725
    invoke-virtual {v1, p0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 726
    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_0
    return-object v0
.end method

.method public static createHolographicOutline(Lcom/miui/home/launcher/IShortcutIcon;F)Landroid/graphics/Bitmap;
    .locals 4

    .line 886
    invoke-interface {p0}, Lcom/miui/home/launcher/DesktopIcon;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 887
    invoke-interface {p0}, Lcom/miui/home/launcher/DesktopIcon;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    .line 886
    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/common/Utilities;->createBitmapSafely(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 888
    invoke-interface {p0}, Lcom/miui/home/launcher/DesktopIcon;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 889
    invoke-interface {p0}, Lcom/miui/home/launcher/DesktopIcon;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 888
    invoke-static {v1, v2, v3}, Lcom/miui/home/launcher/common/Utilities;->createBitmapSafely(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 891
    sget-object v2, Lcom/miui/home/launcher/DragController;->sTmpCanvas:Landroid/graphics/Canvas;

    .line 892
    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 893
    invoke-virtual {v2, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 894
    invoke-virtual {v2, p1, p1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 895
    invoke-interface {p0, v2}, Lcom/miui/home/launcher/IShortcutIcon;->drawOutLine(Landroid/graphics/Canvas;)V

    .line 896
    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 897
    invoke-interface {p0}, Lcom/miui/home/launcher/DesktopIcon;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/home/launcher/common/HolographicOutlineHelper;->getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/common/HolographicOutlineHelper;

    move-result-object p0

    .line 898
    invoke-virtual {p0, v0, v2}, Lcom/miui/home/launcher/common/HolographicOutlineHelper;->applyExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)V

    .line 899
    new-instance p0, Landroid/graphics/Paint;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Landroid/graphics/Paint;-><init>(I)V

    .line 900
    invoke-virtual {v2, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    const/4 p1, 0x0

    .line 901
    invoke-virtual {v2, v0, p1, p1, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    const/4 p0, -0x1

    .line 902
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, p0, p1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    const/4 p0, 0x0

    .line 903
    invoke-virtual {v2, p0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 904
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    return-object v1
.end method

.method public static createOutline(Landroid/view/View;F)Landroid/graphics/Bitmap;
    .locals 3

    .line 732
    instance-of v0, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 733
    invoke-static {p0, v1, p1}, Lcom/miui/home/launcher/DragController;->createBitmapWithOutline(Landroid/view/View;Landroid/graphics/drawable/Drawable;F)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 734
    :cond_0
    instance-of v0, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;

    if-eqz v0, :cond_1

    .line 735
    check-cast p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;

    invoke-static {p0, p1}, Lcom/miui/home/launcher/DragController;->createFolderIcon1x1Bitmap(Lcom/miui/home/launcher/folder/FolderIcon1x1;F)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 736
    :cond_1
    instance-of v0, p0, Lcom/miui/home/launcher/oldman/ElderlyManShortcutIcon;

    if-eqz v0, :cond_2

    .line 737
    check-cast p0, Lcom/miui/home/launcher/oldman/ElderlyManShortcutIcon;

    invoke-static {p0, p1}, Lcom/miui/home/launcher/DragController;->createElderlyManShortcutBg(Lcom/miui/home/launcher/oldman/ElderlyManShortcutIcon;F)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 738
    :cond_2
    instance-of v0, p0, Lcom/miui/home/launcher/IShortcutIcon;

    if-eqz v0, :cond_3

    .line 739
    check-cast p0, Lcom/miui/home/launcher/IShortcutIcon;

    invoke-static {p0, p1}, Lcom/miui/home/launcher/DragController;->createHolographicOutline(Lcom/miui/home/launcher/IShortcutIcon;F)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 741
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 742
    invoke-static {p0}, Lcom/miui/home/launcher/DragView;->shouldDrawOutline(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 743
    invoke-static {p0, v1, p1}, Lcom/miui/home/launcher/DragController;->createBitmapWithOutline(Landroid/view/View;Landroid/graphics/drawable/Drawable;F)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 744
    :cond_4
    instance-of v1, v0, Lcom/miui/home/launcher/ItemInfo;

    if-eqz v1, :cond_5

    check-cast v0, Lcom/miui/home/launcher/ItemInfo;

    .line 745
    invoke-static {v0}, Lcom/miui/home/launcher/DragController;->showOutlineBackground(Lcom/miui/home/launcher/ItemInfo;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 746
    invoke-static {p0, p1}, Lcom/miui/home/launcher/DragController;->createViewBitmapWithBackground(Landroid/view/View;F)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 748
    :cond_5
    invoke-static {p0, p1}, Lcom/miui/home/launcher/DragController;->createViewBitmap(Landroid/view/View;F)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private createOutlineAsync(Lcom/miui/home/launcher/DragController$OutlineTask;Lcom/miui/home/launcher/DragView;Z)V
    .locals 2

    const-string v0, "Launcher.DragController"

    const-string v1, "createOutlineAsync"

    .line 783
    invoke-static {v0, v1}, Lcom/miui/home/launcher/MiuiHomeLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    .line 785
    iget-object p3, p1, Lcom/miui/home/launcher/DragController$OutlineTask;->executor:Ljava/util/concurrent/Executor;

    .line 786
    new-instance v0, Lcom/miui/home/launcher/DragController$2;

    invoke-direct {v0, p0, p2, p1}, Lcom/miui/home/launcher/DragController$2;-><init>(Lcom/miui/home/launcher/DragController;Lcom/miui/home/launcher/DragView;Lcom/miui/home/launcher/DragController$OutlineTask;)V

    invoke-interface {p3, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    const/4 p0, 0x0

    .line 806
    invoke-virtual {p2, p0}, Lcom/miui/home/launcher/DragView;->setNeedOutline(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static createViewBitmap(Landroid/view/View;F)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    .line 639
    invoke-static {p0, v0, p1}, Lcom/miui/home/launcher/DragController;->createBitmap(Landroid/view/View;Landroid/graphics/drawable/Drawable;F)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static createViewBitmapWithBackground(Landroid/view/View;F)Landroid/graphics/Bitmap;
    .locals 2

    .line 644
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->hasAppliedLightWallpaper()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0801be

    goto :goto_0

    :cond_0
    const v1, 0x7f0801bd

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 643
    invoke-static {p0, v0, p1}, Lcom/miui/home/launcher/DragController;->createBitmap(Landroid/view/View;Landroid/graphics/drawable/Drawable;F)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private drop(FF)V
    .locals 2

    .line 1280
    iget-object v0, p0, Lcom/miui/home/launcher/DragController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isFolderAnimating()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1281
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isDragDisable()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/DragController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isFolderOpened()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1282
    invoke-virtual {p0}, Lcom/miui/home/launcher/DragController;->cancelDrag()V

    goto :goto_0

    .line 1283
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isDragDisable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/home/launcher/DragController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isFolderOpened()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1284
    iget p1, p0, Lcom/miui/home/launcher/DragController;->mMotionDownX:I

    int-to-float p1, p1

    .line 1285
    iget p2, p0, Lcom/miui/home/launcher/DragController;->mMotionDownY:I

    int-to-float p2, p2

    .line 1286
    invoke-direct {p0, p1, p2, v1}, Lcom/miui/home/launcher/DragController;->drop(FFLcom/miui/home/launcher/DropTarget;)V

    goto :goto_0

    .line 1288
    :cond_2
    invoke-direct {p0, p1, p2, v1}, Lcom/miui/home/launcher/DragController;->drop(FFLcom/miui/home/launcher/DropTarget;)V

    :goto_0
    return-void
.end method

.method private drop(FFLcom/miui/home/launcher/DropTarget;)V
    .locals 9

    .line 1293
    invoke-virtual {p0}, Lcom/miui/home/launcher/DragController;->getCurrentDragObject()Lcom/miui/home/launcher/DragObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/DragObject;->getDragView()Lcom/miui/home/launcher/DragView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/DragView;->onDrop()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p3, :cond_0

    .line 1296
    iget-object p3, p0, Lcom/miui/home/launcher/DragController;->mCoordinatesTemp:[I

    float-to-int p1, p1

    float-to-int p2, p2

    .line 1297
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/launcher/DragController;->findDropTarget(II[I)Lcom/miui/home/launcher/DropTarget;

    move-result-object p1

    .line 1298
    iget-object p2, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    aget v2, p3, v1

    iput v2, p2, Lcom/miui/home/launcher/DragObject;->x:I

    .line 1299
    aget p3, p3, v0

    iput p3, p2, Lcom/miui/home/launcher/DragObject;->y:I

    move-object p3, p1

    goto :goto_0

    .line 1301
    :cond_0
    iget-object v2, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    float-to-int p1, p1

    iput p1, v2, Lcom/miui/home/launcher/DragObject;->x:I

    float-to-int p1, p2

    .line 1302
    iput p1, v2, Lcom/miui/home/launcher/DragObject;->y:I

    :goto_0
    if-eqz p3, :cond_1

    .line 1304
    iget-object p1, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-interface {p3, p1}, Lcom/miui/home/launcher/DropTarget;->getDropTargetDelegate(Lcom/miui/home/launcher/DragObject;)Lcom/miui/home/launcher/DropTarget;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1305
    iget-object p1, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-interface {p3, p1}, Lcom/miui/home/launcher/DropTarget;->getDropTargetDelegate(Lcom/miui/home/launcher/DragObject;)Lcom/miui/home/launcher/DropTarget;

    move-result-object p3

    .line 1307
    :cond_1
    iget-object p1, p0, Lcom/miui/home/launcher/DragController;->mLastDropTarget:Lcom/miui/home/launcher/DropTarget;

    if-eq p3, p1, :cond_2

    .line 1308
    invoke-direct {p0}, Lcom/miui/home/launcher/DragController;->cleanLastDropTarget()V

    :cond_2
    if-eqz p3, :cond_12

    .line 1311
    iget-object p1, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-interface {p3, p1}, Lcom/miui/home/launcher/DropTarget;->onDropStart(Lcom/miui/home/launcher/DragObject;)V

    .line 1314
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 1317
    :cond_3
    iget-object p2, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-interface {p3, p2}, Lcom/miui/home/launcher/DropTarget;->acceptDrop(Lcom/miui/home/launcher/DragObject;)Z

    move-result p2

    if-eqz p2, :cond_e

    const/4 p2, 0x0

    .line 1319
    iget-object v2, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-virtual {v2}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 1320
    iget-object p2, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-virtual {p2}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/miui/home/launcher/ItemInfo;->clone()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p2

    .line 1322
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "drop, from="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-virtual {v3}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v3

    const-string v4, "null"

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-virtual {v3}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/launcher/ItemInfo;->printDetail()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_5
    move-object v3, v4

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Launcher.DragController"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1323
    iget-object v2, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-interface {p3, v2}, Lcom/miui/home/launcher/DropTarget;->onDrop(Lcom/miui/home/launcher/DragObject;)Z

    move-result v2

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    if-eqz v2, :cond_6

    const-string/jumbo v6, "succeed"

    goto :goto_2

    :cond_6
    const-string v6, "failed"

    :goto_2
    aput-object v6, v5, v1

    .line 1326
    iget-object v6, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-virtual {v6}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v6

    if-eqz v6, :cond_7

    iget-object v4, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-virtual {v4}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/home/launcher/ItemInfo;->printDetail()Ljava/lang/String;

    move-result-object v4

    :cond_7
    aput-object v4, v5, v0

    const-string v4, "drop %s, to %s"

    .line 1324
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1328
    iget-object v3, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-virtual {v3}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v3

    instance-of v3, v3, Lcom/miui/home/launcher/ShortcutInfo;

    if-nez v3, :cond_9

    iget-object v3, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    .line 1329
    invoke-virtual {v3}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v3

    instance-of v3, v3, Lcom/miui/home/launcher/FolderInfo;

    if-eqz v3, :cond_8

    goto :goto_3

    :cond_8
    move v3, v1

    goto :goto_4

    :cond_9
    :goto_3
    move v3, v0

    :goto_4
    if-eqz v3, :cond_b

    if-eqz v2, :cond_b

    if-eqz p2, :cond_b

    .line 1330
    iget-object v3, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    .line 1331
    invoke-virtual {v3}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/miui/home/launcher/ItemInfo;->hasSamePosition(Lcom/miui/home/launcher/ItemInfo;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 1332
    instance-of v3, p3, Lcom/miui/home/launcher/Workspace;

    if-eqz v3, :cond_a

    const-string v3, "item_be_moved_to_workspace"

    .line 1333
    invoke-static {v3}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackItemMoved(Ljava/lang/String;)V

    goto :goto_5

    .line 1334
    :cond_a
    instance-of v3, p3, Lcom/miui/home/launcher/hotseats/HotSeatsContent;

    if-eqz v3, :cond_b

    const-string v3, "item_be_moved_to_hotseats"

    .line 1335
    invoke-static {v3}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackItemMoved(Ljava/lang/String;)V

    .line 1338
    :cond_b
    :goto_5
    invoke-static {}, Lcom/miui/home/launcher/russia/RussiaPreInstallUtils;->isRussiaRom()Z

    move-result v3

    if-eqz v3, :cond_c

    if-eqz v2, :cond_c

    .line 1339
    iget-object v3, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-virtual {v3}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v3

    instance-of v3, v3, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v3, :cond_c

    if-eqz p2, :cond_c

    .line 1340
    iget-object v3, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-virtual {v3}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/ShortcutInfo;

    iget-wide v4, p2, Lcom/miui/home/launcher/ItemInfo;->container:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {p1, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    if-eqz v2, :cond_f

    .line 1344
    iget-object p2, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-virtual {p2}, Lcom/miui/home/launcher/DragObject;->isFirstObject()Z

    move-result p2

    if-eqz p2, :cond_f

    .line 1345
    iget-object p2, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-virtual {p2}, Lcom/miui/home/launcher/DragObject;->getDropAnnounce()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_d

    .line 1346
    new-instance p2, Lcom/miui/home/launcher/DragController$3;

    invoke-direct {p2, p0}, Lcom/miui/home/launcher/DragController$3;-><init>(Lcom/miui/home/launcher/DragController;)V

    invoke-static {p2}, Lcom/miui/home/launcher/common/Utilities;->announceForAccessibility(Ljava/util/function/Supplier;)V

    goto :goto_6

    .line 1352
    :cond_d
    invoke-interface {p3}, Lcom/miui/home/launcher/DropTarget;->getOnDropAnnounce()Lcom/miui/home/launcher/DropTarget$OnDropAnnounce;

    move-result-object p2

    if-eqz p2, :cond_f

    .line 1353
    new-instance p2, Lcom/miui/home/launcher/DragController$4;

    invoke-direct {p2, p0, p3}, Lcom/miui/home/launcher/DragController$4;-><init>(Lcom/miui/home/launcher/DragController;Lcom/miui/home/launcher/DropTarget;)V

    invoke-static {p2}, Lcom/miui/home/launcher/common/Utilities;->announceForAccessibility(Ljava/util/function/Supplier;)V

    goto :goto_6

    :cond_e
    move v2, v1

    .line 1362
    :cond_f
    :goto_6
    iget-object p2, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-virtual {p2, v2}, Lcom/miui/home/launcher/DragObject;->nextDragView(Z)Z

    move-result p2

    if-nez p2, :cond_3

    .line 1364
    invoke-static {}, Lcom/miui/home/launcher/russia/RussiaPreInstallUtils;->isRussiaRom()Z

    move-result p2

    if-eqz p2, :cond_11

    .line 1365
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_10
    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_11

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 1366
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    iget-wide v2, v0, Lcom/miui/home/launcher/ItemInfo;->container:J

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-eqz v0, :cond_10

    .line 1367
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v8, Lcom/miui/home/launcher/common/messages/ChangeContainerOnDropMessage;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/ShortcutInfo;

    iget-wide v5, v2, Lcom/miui/home/launcher/ItemInfo;->container:J

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    move-object v7, p2

    check-cast v7, Lcom/miui/home/launcher/ShortcutInfo;

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/miui/home/launcher/common/messages/ChangeContainerOnDropMessage;-><init>(JJLcom/miui/home/launcher/ShortcutInfo;)V

    invoke-virtual {v0, v8}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_7

    .line 1372
    :cond_11
    iget-object p1, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-virtual {p1, p3, v1}, Lcom/miui/home/launcher/DragObject;->onDragCompleted(Lcom/miui/home/launcher/DropTarget;Z)V

    .line 1373
    invoke-interface {p3}, Lcom/miui/home/launcher/DropTarget;->onDropCompleted()V

    .line 1374
    iget-object p1, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-interface {p3, p1}, Lcom/miui/home/launcher/DropTarget;->onDragExit(Lcom/miui/home/launcher/DragObject;)V

    .line 1375
    iget-object p1, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->cancelAnnounce()V

    goto :goto_8

    .line 1377
    :cond_12
    iget-object p1, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-virtual {p1, p3}, Lcom/miui/home/launcher/DragObject;->onDragCompleted(Lcom/miui/home/launcher/DropTarget;)V

    .line 1379
    :goto_8
    iget-object p1, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragSource()Lcom/miui/home/launcher/DragSource;

    move-result-object p1

    if-eqz p1, :cond_13

    .line 1380
    iget-object p1, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragSource()Lcom/miui/home/launcher/DragSource;

    move-result-object p1

    iget-object p0, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-interface {p1, p3, p0}, Lcom/miui/home/launcher/DragSource;->onDragCompleted(Lcom/miui/home/launcher/DropTarget;Lcom/miui/home/launcher/DragObject;)V

    :cond_13
    return-void
.end method

.method private endDrag()V
    .locals 3

    .line 948
    iget-boolean v0, p0, Lcom/miui/home/launcher/DragController;->mDragging:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 949
    iput-boolean v0, p0, Lcom/miui/home/launcher/DragController;->mDragging:Z

    .line 950
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    new-instance v2, Lcom/miui/home/launcher/common/messages/DragMessage;

    invoke-direct {v2, v0}, Lcom/miui/home/launcher/common/messages/DragMessage;-><init>(Z)V

    invoke-virtual {v1, v2}, Lorg/greenrobot/eventbus/EventBus;->postSticky(Ljava/lang/Object;)V

    .line 951
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompat;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    .line 952
    invoke-virtual {v1}, Lcom/miui/home/launcher/DragObject;->getDragView()Lcom/miui/home/launcher/DragView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const-string v2, "action_drag_off"

    invoke-virtual {v0, v2, v1}, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompat;->sendWallPaperCommand(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v0, "Launcher.DragController"

    .line 953
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    iget-object v0, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DragObject;->isAutoDraged()Z

    move-result v0

    if-nez v0, :cond_1

    .line 955
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/home/launcher/DragController;->mListeners:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/DragController$DragListener;

    .line 956
    iget-object v2, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-interface {v1, v2}, Lcom/miui/home/launcher/DragController$DragListener;->onDragEnd(Lcom/miui/home/launcher/DragObject;)V

    goto :goto_0

    .line 958
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DragObject;->getDragView()Lcom/miui/home/launcher/DragView;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/DragController;->mDragObjectDragView:Lcom/miui/home/launcher/DragView;

    const/4 v0, 0x0

    .line 959
    iput-object v0, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    :cond_1
    return-void
.end method

.method private findDropTarget(II[I)Lcom/miui/home/launcher/DropTarget;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    .line 1385
    sget-boolean v4, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const/4 v5, 0x0

    const-string v6, "Launcher.DragController"

    if-nez v4, :cond_0

    iget-object v4, v0, Lcom/miui/home/launcher/DragController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    sget-object v7, Lcom/miui/home/launcher/LauncherState;->ASSISTANT_OVERLAY_STATE:Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayState;

    invoke-virtual {v4, v7}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v0, "assistant_state return"

    .line 1387
    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    .line 1390
    :cond_0
    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "findDropTarget"

    invoke-static {v7, v4}, Lcom/miui/home/launcher/MiuiHomeLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1391
    iget-object v4, v0, Lcom/miui/home/launcher/DragController;->mRectTemp:Landroid/graphics/Rect;

    .line 1392
    iget-object v7, v0, Lcom/miui/home/launcher/DragController;->mDropTargets:Ljava/util/ArrayList;

    .line 1393
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 1394
    iget-object v9, v0, Lcom/miui/home/launcher/DragController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v9}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v9

    const/4 v10, 0x1

    sub-int/2addr v8, v10

    :goto_0
    if-ltz v8, :cond_8

    .line 1396
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/miui/home/launcher/DropTarget;

    .line 1397
    invoke-interface {v11}, Lcom/miui/home/launcher/DropTarget;->isDropEnabled()Z

    move-result v12

    if-nez v12, :cond_1

    :goto_1
    move-object/from16 v16, v7

    goto/16 :goto_2

    .line 1400
    :cond_1
    move-object v12, v11

    check-cast v12, Landroid/view/View;

    .line 1401
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/DragController;->getCurrentDragObject()Lcom/miui/home/launcher/DragObject;

    move-result-object v13

    invoke-virtual {v13}, Lcom/miui/home/launcher/DragObject;->getDragView()Lcom/miui/home/launcher/DragView;

    move-result-object v13

    invoke-virtual {v13, v12}, Lcom/miui/home/launcher/DragView;->isSameType(Landroid/view/View;)Z

    move-result v13

    if-eqz v13, :cond_2

    goto :goto_1

    .line 1404
    :cond_2
    invoke-virtual {v12}, Landroid/view/View;->isShown()Z

    move-result v13

    if-nez v13, :cond_3

    goto :goto_1

    .line 1407
    :cond_3
    invoke-interface {v11}, Lcom/miui/home/launcher/DropTarget;->getHitView()Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13, v4}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 1409
    invoke-interface {v11}, Lcom/miui/home/launcher/DropTarget;->getHitView()Landroid/view/View;

    move-result-object v13

    const/4 v14, 0x0

    if-eq v13, v12, :cond_4

    .line 1410
    invoke-interface {v11}, Lcom/miui/home/launcher/DropTarget;->getHitView()Landroid/view/View;

    move-result-object v13

    .line 1411
    invoke-virtual {v13, v4}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 1412
    iget-object v15, v0, Lcom/miui/home/launcher/DragController;->mDragViewOwner:Landroid/view/ViewGroup;

    invoke-static {v13, v15, v3, v14}, Lcom/miui/home/launcher/common/Utilities;->getLocationInParent(Landroid/view/View;Landroid/view/View;[IZ)F

    move-result v13

    .line 1413
    aget v15, v3, v14

    aget v5, v3, v10

    aget v10, v3, v14

    int-to-float v10, v10

    .line 1414
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v14

    int-to-float v14, v14

    mul-float/2addr v14, v13

    add-float/2addr v10, v14

    float-to-int v10, v10

    move-object/from16 v16, v7

    const/4 v14, 0x1

    aget v7, v3, v14

    int-to-float v7, v7

    .line 1415
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v14

    int-to-float v14, v14

    mul-float/2addr v14, v13

    add-float/2addr v7, v14

    float-to-int v7, v7

    .line 1413
    invoke-virtual {v4, v15, v5, v10, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 1416
    invoke-virtual {v4, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-nez v5, :cond_5

    goto :goto_2

    :cond_4
    move-object/from16 v16, v7

    .line 1421
    :cond_5
    invoke-virtual {v12, v4}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 1422
    iget-object v5, v0, Lcom/miui/home/launcher/DragController;->mDragViewOwner:Landroid/view/ViewGroup;

    const/4 v7, 0x0

    invoke-static {v12, v5, v3, v7}, Lcom/miui/home/launcher/common/Utilities;->getLocationInParent(Landroid/view/View;Landroid/view/View;[IZ)F

    move-result v5

    .line 1423
    invoke-interface {v11, v4, v5, v3}, Lcom/miui/home/launcher/DropTarget;->recalHitRect(Landroid/graphics/Rect;F[I)V

    .line 1424
    invoke-virtual {v4, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v7

    if-nez v7, :cond_7

    sub-int v7, v1, v9

    sub-int v10, v2, v9

    add-int v13, v1, v9

    add-int v14, v2, v9

    invoke-virtual {v4, v7, v10, v13, v14}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v7

    if-eqz v7, :cond_6

    goto :goto_3

    :cond_6
    :goto_2
    add-int/lit8 v8, v8, -0x1

    move-object/from16 v7, v16

    const/4 v5, 0x0

    const/4 v10, 0x1

    goto/16 :goto_0

    :cond_7
    :goto_3
    const/4 v0, 0x0

    .line 1425
    aget v7, v3, v0

    int-to-float v7, v7

    invoke-virtual {v12}, Landroid/view/View;->getWidth()I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float/2addr v9, v5

    mul-float/2addr v8, v9

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v8, v5

    sub-float/2addr v7, v8

    float-to-int v7, v7

    aput v7, v3, v0

    const/4 v7, 0x1

    .line 1426
    aget v8, v3, v7

    int-to-float v8, v8

    invoke-virtual {v12}, Landroid/view/View;->getHeight()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, v9

    div-float/2addr v10, v5

    sub-float/2addr v8, v10

    float-to-int v5, v8

    aput v5, v3, v7

    .line 1427
    aget v5, v3, v0

    sub-int v5, v1, v5

    aput v5, v3, v0

    .line 1428
    aget v0, v3, v7

    sub-int v0, v2, v0

    aput v0, v3, v7

    .line 1429
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "findDropTarget dropTarget:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " x = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " y = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " r = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v11

    :cond_8
    move-object v0, v5

    return-object v0
.end method

.method private getDragScale(Landroid/view/View;)F
    .locals 0

    .line 394
    instance-of p0, p1, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;

    if-eqz p0, :cond_0

    const p0, 0x3f87ae14    # 1.06f

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private getViewsFromInfos([Lcom/miui/home/launcher/ShortcutInfo;)[Landroid/view/View;
    .locals 2

    .line 266
    array-length p0, p1

    new-array p0, p0, [Landroid/view/View;

    const/4 v0, 0x0

    .line 267
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 268
    aget-object v1, p1, v0

    invoke-virtual {v1}, Lcom/miui/home/launcher/ShortcutInfo;->getBuddyIcon()Lcom/miui/home/launcher/IShortcutIcon;

    move-result-object v1

    .line 269
    invoke-interface {v1}, Lcom/miui/home/launcher/IShortcutIcon;->restoreToInitState()V

    .line 270
    invoke-interface {v1}, Lcom/miui/home/launcher/IShortcutIcon;->resetInRunningFolderSimpleCloseAnimStatus()V

    .line 271
    invoke-interface {v1}, Lcom/miui/home/launcher/DesktopIcon;->getView()Landroid/view/View;

    move-result-object v1

    aput-object v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method private handleMoveEvent(IILandroid/view/MotionEvent;)V
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    .line 1019
    iget-object v4, v0, Lcom/miui/home/launcher/DragController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v4}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/home/launcher/Workspace;->getScrollZone()I

    move-result v4

    .line 1020
    iget v5, v0, Lcom/miui/home/launcher/DragController;->mDragViewCenterX:I

    add-int/2addr v5, v1

    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1021
    iget v6, v0, Lcom/miui/home/launcher/DragController;->mDragViewCenterX:I

    add-int/2addr v6, v1

    invoke-static {v6, v1}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1022
    iget v7, v0, Lcom/miui/home/launcher/DragController;->mMotionDownX:I

    invoke-direct {v0, v7, v1, v5, v4}, Lcom/miui/home/launcher/DragController;->isMovingReachedLeftScrollZone(IIII)Z

    move-result v5

    .line 1023
    iget v7, v0, Lcom/miui/home/launcher/DragController;->mMotionDownX:I

    invoke-direct {v0, v7, v1, v6, v4}, Lcom/miui/home/launcher/DragController;->isMovingReachedRightScrollZone(IIII)Z

    move-result v4

    const/4 v6, 0x0

    if-nez v5, :cond_1

    if-eqz v4, :cond_0

    goto :goto_0

    .line 1025
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getShortcutMenuDisappearThreshold()I

    move-result v7

    goto :goto_1

    :cond_1
    :goto_0
    move v7, v6

    .line 1027
    :goto_1
    iget-object v8, v0, Lcom/miui/home/launcher/DragController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v8}, Lcom/miui/home/launcher/Launcher;->isInShortcutMenuState()Z

    move-result v8

    const/4 v9, 0x1

    if-eqz v8, :cond_2

    invoke-direct {v0, v1, v2, v7}, Lcom/miui/home/launcher/DragController;->isMoveOverShortcutMenuMoveThreshold(III)Z

    move-result v7

    if-eqz v7, :cond_2

    move v7, v9

    goto :goto_2

    :cond_2
    move v7, v6

    .line 1028
    :goto_2
    iget-object v8, v0, Lcom/miui/home/launcher/DragController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v8}, Lcom/miui/home/launcher/Launcher;->isInShortcutMenuState()Z

    move-result v8

    if-nez v8, :cond_3

    invoke-static {}, Lcom/miui/home/launcher/LauncherSoscController;->getInstance()Lcom/miui/home/launcher/LauncherSoscController;

    move-result-object v8

    invoke-virtual {v8}, Lcom/miui/home/launcher/LauncherSoscController;->getSoscEvent()Lcom/miui/launcher/sosc/module/SoscEvent;

    move-result-object v8

    invoke-virtual {v8}, Lcom/miui/launcher/sosc/module/SoscEvent;->isSoscSplit()Z

    move-result v8

    if-eqz v8, :cond_3

    move v8, v9

    goto :goto_3

    :cond_3
    move v8, v6

    .line 1029
    :goto_3
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isDragDisable()Z

    move-result v10

    if-nez v10, :cond_4

    .line 1030
    iget-object v8, v0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-virtual {v8, v1, v2}, Lcom/miui/home/launcher/DragObject;->move(II)V

    .line 1031
    invoke-direct {v0, v7}, Lcom/miui/home/launcher/DragController;->cancelShortcutMenu(Z)V

    goto :goto_4

    :cond_4
    if-nez v7, :cond_1c

    if-eqz v8, :cond_5

    goto/16 :goto_f

    .line 1041
    :cond_5
    :goto_4
    iget-object v7, v0, Lcom/miui/home/launcher/DragController;->mCoordinatesTemp:[I

    .line 1042
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isDragDisable()Z

    move-result v8

    if-eqz v8, :cond_6

    iget v8, v0, Lcom/miui/home/launcher/DragController;->mMotionDownX:I

    goto :goto_5

    :cond_6
    move v8, v1

    :goto_5
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isDragDisable()Z

    move-result v10

    if-eqz v10, :cond_7

    iget v10, v0, Lcom/miui/home/launcher/DragController;->mMotionDownY:I

    goto :goto_6

    :cond_7
    move v10, v2

    :goto_6
    invoke-direct {v0, v8, v10, v7}, Lcom/miui/home/launcher/DragController;->findDropTarget(II[I)Lcom/miui/home/launcher/DropTarget;

    move-result-object v8

    .line 1043
    iget-object v10, v0, Lcom/miui/home/launcher/DragController;->mDropTargetWhenDragStarted:Lcom/miui/home/launcher/DropTarget;

    if-eqz v10, :cond_8

    if-eq v8, v10, :cond_8

    iget-object v11, v0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    .line 1045
    invoke-interface {v10, v11}, Lcom/miui/home/launcher/DropTarget;->acceptDrop(Lcom/miui/home/launcher/DragObject;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 1046
    iget-object v10, v0, Lcom/miui/home/launcher/DragController;->mDropTargetWhenDragStarted:Lcom/miui/home/launcher/DropTarget;

    iget-object v11, v0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-interface {v10, v11}, Lcom/miui/home/launcher/DropTarget;->onDragEnter(Lcom/miui/home/launcher/DragObject;)V

    .line 1047
    iget-object v10, v0, Lcom/miui/home/launcher/DragController;->mDropTargetWhenDragStarted:Lcom/miui/home/launcher/DropTarget;

    iget-object v11, v0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-interface {v10, v11}, Lcom/miui/home/launcher/DropTarget;->onDragExit(Lcom/miui/home/launcher/DragObject;)V

    :cond_8
    const/4 v10, 0x0

    .line 1049
    iput-object v10, v0, Lcom/miui/home/launcher/DragController;->mDropTargetWhenDragStarted:Lcom/miui/home/launcher/DropTarget;

    .line 1051
    iget-object v11, v0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    aget v12, v7, v6

    iput v12, v11, Lcom/miui/home/launcher/DragObject;->x:I

    .line 1052
    aget v7, v7, v9

    iput v7, v11, Lcom/miui/home/launcher/DragObject;->y:I

    if-eqz v8, :cond_c

    .line 1054
    invoke-interface {v8, v11}, Lcom/miui/home/launcher/DropTarget;->getDropTargetDelegate(Lcom/miui/home/launcher/DragObject;)Lcom/miui/home/launcher/DropTarget;

    move-result-object v7

    if-eqz v7, :cond_9

    move-object/from16 v18, v8

    move-object v8, v7

    move-object/from16 v7, v18

    goto :goto_7

    :cond_9
    move-object v7, v10

    .line 1061
    :goto_7
    iget-object v11, v0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-interface {v8, v11}, Lcom/miui/home/launcher/DropTarget;->acceptDrop(Lcom/miui/home/launcher/DragObject;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 1062
    iget-object v11, v0, Lcom/miui/home/launcher/DragController;->mLastDropTarget:Lcom/miui/home/launcher/DropTarget;

    if-eq v11, v8, :cond_a

    .line 1063
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/launcher/DragController;->cleanLastDropTarget()V

    .line 1064
    iget-object v11, v0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-interface {v8, v11}, Lcom/miui/home/launcher/DropTarget;->onDragEnter(Lcom/miui/home/launcher/DragObject;)V

    .line 1065
    iput-object v8, v0, Lcom/miui/home/launcher/DragController;->mLastDropTarget:Lcom/miui/home/launcher/DropTarget;

    .line 1067
    :cond_a
    iget-object v11, v0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-interface {v8, v11}, Lcom/miui/home/launcher/DropTarget;->onDragOver(Lcom/miui/home/launcher/DragObject;)V

    goto :goto_8

    .line 1069
    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/launcher/DragController;->cleanLastDropTarget()V

    goto :goto_8

    .line 1072
    :cond_c
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/launcher/DragController;->cleanLastDropTarget()V

    move-object v7, v10

    .line 1077
    :goto_8
    iget-object v11, v0, Lcom/miui/home/launcher/DragController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v11}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/ViewConfiguration;->getScaledWindowTouchSlop()I

    move-result v11

    .line 1078
    iget v12, v0, Lcom/miui/home/launcher/DragController;->mDistanceSinceScroll:I

    int-to-double v12, v12

    iget-object v14, v0, Lcom/miui/home/launcher/DragController;->mLastTouch:[I

    aget v14, v14, v6

    sub-int/2addr v14, v1

    int-to-double v14, v14

    move/from16 v16, v11

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    .line 1079
    invoke-static {v14, v15, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    iget-object v6, v0, Lcom/miui/home/launcher/DragController;->mLastTouch:[I

    aget v6, v6, v9

    sub-int/2addr v6, v2

    move/from16 v17, v4

    int-to-double v3, v6

    invoke-static {v3, v4, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    add-double/2addr v14, v3

    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    add-double/2addr v12, v3

    double-to-int v3, v12

    iput v3, v0, Lcom/miui/home/launcher/DragController;->mDistanceSinceScroll:I

    .line 1080
    iget-object v3, v0, Lcom/miui/home/launcher/DragController;->mLastTouch:[I

    const/4 v4, 0x0

    aput v1, v3, v4

    .line 1081
    aput v2, v3, v9

    .line 1083
    instance-of v3, v7, Lcom/miui/home/launcher/DragScroller;

    if-eqz v3, :cond_d

    move-object v3, v7

    check-cast v3, Lcom/miui/home/launcher/DragScroller;

    goto :goto_9

    :cond_d
    const/4 v3, 0x0

    .line 1084
    :goto_9
    instance-of v4, v8, Lcom/miui/home/launcher/DragScroller;

    if-eqz v4, :cond_e

    move-object v3, v8

    check-cast v3, Lcom/miui/home/launcher/DragScroller;

    :cond_e
    if-eqz v8, :cond_f

    .line 1086
    iget-object v4, v0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-interface {v8, v4}, Lcom/miui/home/launcher/DropTarget;->acceptDrop(Lcom/miui/home/launcher/DragObject;)Z

    move-result v4

    if-nez v4, :cond_f

    move v4, v9

    goto :goto_a

    :cond_f
    const/4 v4, 0x0

    :goto_a
    if-eqz v7, :cond_11

    .line 1087
    iget-object v6, v0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-interface {v7, v6}, Lcom/miui/home/launcher/DropTarget;->acceptDrop(Lcom/miui/home/launcher/DragObject;)Z

    move-result v6

    if-nez v6, :cond_10

    goto :goto_b

    :cond_10
    const/4 v6, 0x0

    goto :goto_c

    :cond_11
    :goto_b
    move v6, v9

    .line 1089
    :goto_c
    iget-object v7, v0, Lcom/miui/home/launcher/DragController;->mDragScroller:Lcom/miui/home/launcher/DragScroller;

    if-eq v3, v7, :cond_12

    if-eqz v4, :cond_12

    if-eqz v6, :cond_12

    return-void

    :cond_12
    if-eqz v3, :cond_14

    if-nez v7, :cond_13

    .line 1094
    iput-object v3, v0, Lcom/miui/home/launcher/DragController;->mDragScroller:Lcom/miui/home/launcher/DragScroller;

    goto :goto_d

    :cond_13
    if-eq v7, v3, :cond_15

    .line 1096
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/launcher/DragController;->cancelDragScroll()V

    .line 1097
    iput-object v3, v0, Lcom/miui/home/launcher/DragController;->mDragScroller:Lcom/miui/home/launcher/DragScroller;

    goto :goto_d

    .line 1100
    :cond_14
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/launcher/DragController;->cancelDragScroll()V

    const/4 v3, 0x0

    .line 1101
    iput-object v3, v0, Lcom/miui/home/launcher/DragController;->mDragScroller:Lcom/miui/home/launcher/DragScroller;

    .line 1103
    :cond_15
    :goto_d
    iget-object v3, v0, Lcom/miui/home/launcher/DragController;->mDragScroller:Lcom/miui/home/launcher/DragScroller;

    if-nez v3, :cond_16

    return-void

    :cond_16
    const-wide/16 v6, 0x2bc

    if-eqz v5, :cond_17

    .line 1108
    iget v4, v0, Lcom/miui/home/launcher/DragController;->mScrollState:I

    if-nez v4, :cond_1b

    iget v4, v0, Lcom/miui/home/launcher/DragController;->mDistanceSinceScroll:I

    move/from16 v5, v16

    if-le v4, v5, :cond_1b

    .line 1109
    iput v9, v0, Lcom/miui/home/launcher/DragController;->mScrollState:I

    move-object/from16 v4, p3

    const/4 v5, 0x0

    .line 1110
    invoke-interface {v3, v1, v2, v5, v4}, Lcom/miui/home/launcher/DragScroller;->onEnterScrollArea(IIILandroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 1111
    iget-object v1, v0, Lcom/miui/home/launcher/DragController;->mScrollRunnable:Lcom/miui/home/launcher/DragController$ScrollRunnable;

    invoke-virtual {v1, v5}, Lcom/miui/home/launcher/DragController$ScrollRunnable;->setDirection(I)V

    .line 1112
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/DragController;->cancelScroll()V

    .line 1113
    iget-object v1, v0, Lcom/miui/home/launcher/DragController;->mHandler:Landroid/os/Handler;

    iget-object v0, v0, Lcom/miui/home/launcher/DragController;->mScrollRunnable:Lcom/miui/home/launcher/DragController$ScrollRunnable;

    invoke-virtual {v1, v0, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_e

    :cond_17
    move-object/from16 v4, p3

    move/from16 v5, v16

    if-eqz v17, :cond_18

    .line 1117
    iget v8, v0, Lcom/miui/home/launcher/DragController;->mScrollState:I

    if-nez v8, :cond_1b

    iget v8, v0, Lcom/miui/home/launcher/DragController;->mDistanceSinceScroll:I

    if-le v8, v5, :cond_1b

    .line 1118
    iput v9, v0, Lcom/miui/home/launcher/DragController;->mScrollState:I

    .line 1119
    invoke-interface {v3, v1, v2, v9, v4}, Lcom/miui/home/launcher/DragScroller;->onEnterScrollArea(IIILandroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 1120
    iget-object v1, v0, Lcom/miui/home/launcher/DragController;->mScrollRunnable:Lcom/miui/home/launcher/DragController$ScrollRunnable;

    invoke-virtual {v1, v9}, Lcom/miui/home/launcher/DragController$ScrollRunnable;->setDirection(I)V

    .line 1121
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/DragController;->cancelScroll()V

    .line 1122
    iget-object v1, v0, Lcom/miui/home/launcher/DragController;->mHandler:Landroid/os/Handler;

    iget-object v0, v0, Lcom/miui/home/launcher/DragController;->mScrollRunnable:Lcom/miui/home/launcher/DragController$ScrollRunnable;

    invoke-virtual {v1, v0, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_e

    .line 1125
    :cond_18
    iget v2, v0, Lcom/miui/home/launcher/DragController;->mScrollState:I

    if-ne v2, v9, :cond_19

    .line 1126
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/launcher/DragController;->cancelDragScroll()V

    goto :goto_e

    :cond_19
    if-eqz v4, :cond_1b

    .line 1127
    iget v2, v0, Lcom/miui/home/launcher/DragController;->mSecondaryPointerId:I

    if-lez v2, :cond_1b

    .line 1128
    invoke-virtual {v4, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    if-lez v2, :cond_1a

    int-to-float v1, v1

    .line 1129
    iget v2, v0, Lcom/miui/home/launcher/DragController;->mSecondaryPointerId:I

    invoke-virtual {v4, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    invoke-virtual {v4, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1b

    .line 1130
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/DragController;->cancelScroll()V

    .line 1131
    iget-object v1, v0, Lcom/miui/home/launcher/DragController;->mSecondPointerScroller:Lcom/miui/home/launcher/DragScroller;

    if-eqz v1, :cond_1b

    .line 1132
    iget v0, v0, Lcom/miui/home/launcher/DragController;->mSecondaryPointerId:I

    invoke-interface {v1, v4, v0}, Lcom/miui/home/launcher/DragScroller;->onSecondaryPointerMove(Landroid/view/MotionEvent;I)V

    goto :goto_e

    :cond_1a
    const/4 v1, -0x1

    .line 1136
    iput v1, v0, Lcom/miui/home/launcher/DragController;->mSecondaryPointerId:I

    :cond_1b
    :goto_e
    return-void

    .line 1035
    :cond_1c
    :goto_f
    iget-object v0, v0, Lcom/miui/home/launcher/DragController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->showDragDisableToast(Landroid/content/Context;)V

    return-void
.end method

.method private isMoveOverShortcutMenuMoveThreshold(III)Z
    .locals 2

    .line 1151
    iget v0, p0, Lcom/miui/home/launcher/DragController;->mMotionDownX:I

    sub-int/2addr p1, v0

    int-to-double v0, p1

    iget p0, p0, Lcom/miui/home/launcher/DragController;->mMotionDownY:I

    sub-int/2addr p2, p0

    int-to-double p0, p2

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide p0

    int-to-double p2, p3

    cmpl-double p0, p0, p2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isMovingReachedLeftScrollZone(IIII)Z
    .locals 0

    if-ge p2, p1, :cond_0

    if-ge p3, p4, :cond_0

    .line 1143
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isDragDisable()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isMovingReachedRightScrollZone(IIII)Z
    .locals 0

    if-le p2, p1, :cond_0

    .line 1147
    iget-object p0, p0, Lcom/miui/home/launcher/DragController;->mScrollView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    sub-int/2addr p0, p4

    if-le p3, p0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isDragDisable()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$createBitmapWithOutline$1(FLandroid/graphics/drawable/Drawable;IILandroid/view/View;Landroid/graphics/Canvas;)V
    .locals 1

    .line 685
    invoke-virtual {p5}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 686
    invoke-virtual {p5, p0, p0}, Landroid/graphics/Canvas;->scale(FF)V

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    .line 688
    invoke-virtual {p1, p0, p0, p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 689
    invoke-virtual {p1, p5}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 691
    :cond_0
    invoke-virtual {p4, p5}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 692
    invoke-virtual {p5, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method private static synthetic lambda$setEachDragViewMinDropAnimationDuration$0(ILcom/miui/home/launcher/DragView;)V
    .locals 0

    .line 308
    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/DragView;->setMinDropAnimationDuration(I)V

    return-void
.end method

.method private obtainVelocityTracker()Landroid/view/VelocityTracker;
    .locals 0

    .line 1251
    invoke-direct {p0}, Lcom/miui/home/launcher/DragController;->recycleVelocityTracker()V

    .line 1252
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object p0

    return-object p0
.end method

.method private recycleVelocityTracker()V
    .locals 1

    .line 1256
    iget-object v0, p0, Lcom/miui/home/launcher/DragController;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 1257
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 1258
    iget-object v0, p0, Lcom/miui/home/launcher/DragController;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    .line 1259
    iput-object v0, p0, Lcom/miui/home/launcher/DragController;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private resetView(Landroid/view/View;)V
    .locals 0

    const/4 p0, 0x0

    .line 541
    invoke-virtual {p1, p0}, Landroid/view/View;->setTranslationX(F)V

    .line 542
    invoke-virtual {p1, p0}, Landroid/view/View;->setTranslationY(F)V

    const/high16 p0, 0x3f800000    # 1.0f

    .line 543
    invoke-virtual {p1, p0}, Landroid/view/View;->setScaleX(F)V

    .line 544
    invoke-virtual {p1, p0}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method private setDownloadViewTag(Landroid/view/View;)V
    .locals 0

    .line 618
    instance-of p0, p1, Lcom/miui/home/launcher/ProgressShortcutIcon;

    if-eqz p0, :cond_0

    .line 619
    check-cast p1, Lcom/miui/home/launcher/ProgressShortcutIcon;

    invoke-virtual {p1}, Lcom/miui/home/launcher/ProgressShortcutIcon;->setDownloadTag()V

    :cond_0
    return-void
.end method

.method private static showOutlineBackground(Lcom/miui/home/launcher/ItemInfo;)Z
    .locals 2

    .line 754
    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemInfo;->isOccupiedCellMoreThan1x1()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 756
    instance-of v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    if-eqz v0, :cond_0

    return v1

    .line 759
    :cond_0
    instance-of v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    iget-boolean p0, p0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->isMIUIWidget:Z

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method private updateScrollIconCenterX(II)V
    .locals 4

    .line 529
    iget-object v0, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 530
    iget v2, v0, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    iget v0, v0, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    if-ne v0, v3, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [I

    aput p1, v0, v1

    aput p2, v0, v3

    .line 532
    iget-object p1, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragView()Lcom/miui/home/launcher/DragView;

    move-result-object p1

    .line 533
    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/DragView;->getVisionCenter([I)V

    aget p2, v0, v1

    .line 534
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragView;->getRegistrationX()I

    move-result p1

    sub-int/2addr p2, p1

    iput p2, p0, Lcom/miui/home/launcher/DragController;->mDragViewCenterX:I

    goto :goto_0

    .line 536
    :cond_0
    iput v1, p0, Lcom/miui/home/launcher/DragController;->mDragViewCenterX:I

    :goto_0
    return-void
.end method


# virtual methods
.method public addDragAnimationListener(Lcom/miui/home/launcher/DragController$DropAnimationListener;)V
    .locals 0

    .line 1466
    iget-object p0, p0, Lcom/miui/home/launcher/DragController;->mDropAnimationListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addDragListener(Lcom/miui/home/launcher/DragController$DragListener;)V
    .locals 0

    .line 1462
    iget-object p0, p0, Lcom/miui/home/launcher/DragController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addDropTarget(ILcom/miui/home/launcher/DropTarget;)V
    .locals 0

    .line 1491
    iget-object p0, p0, Lcom/miui/home/launcher/DragController;->mDropTargets:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public addDropTarget(Lcom/miui/home/launcher/DropTarget;)V
    .locals 0

    .line 1484
    iget-object p0, p0, Lcom/miui/home/launcher/DragController;->mDropTargets:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addShortcutMenuDragListener(Lcom/miui/home/launcher/shortcuts/ShortcutMenuDragListener;)V
    .locals 0

    .line 1470
    iget-object p0, p0, Lcom/miui/home/launcher/DragController;->mShortcutMenuDragListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public autoDrag([Landroid/view/View;[Lcom/miui/home/launcher/DragSource;III)V
    .locals 11

    move-object v10, p0

    move-object v1, p1

    move-object v4, p2

    const-string v0, "Launcher.DragController"

    const-string v2, "autoDrag"

    .line 291
    invoke-static {v0, v2}, Lcom/miui/home/launcher/MiuiHomeLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    iget-boolean v0, v10, Lcom/miui/home/launcher/DragController;->mAutoDraged:Z

    if-nez v0, :cond_1

    if-eqz v1, :cond_0

    if-eqz v4, :cond_0

    .line 295
    array-length v0, v1

    if-lez v0, :cond_0

    array-length v0, v4

    if-lez v0, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x1

    const/high16 v9, -0x40800000    # -1.0f

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move/from16 v8, p5

    .line 296
    invoke-virtual/range {v0 .. v9}, Lcom/miui/home/launcher/DragController;->startDrag([Landroid/view/View;ZF[Lcom/miui/home/launcher/DragSource;IIZIF)Z

    const/4 v0, 0x1

    .line 297
    iput-boolean v0, v10, Lcom/miui/home/launcher/DragController;->mAutoDraged:Z

    :cond_0
    return-void

    .line 293
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "can\'t auto drag again"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public autoDrag([Lcom/miui/home/launcher/ShortcutInfo;[Lcom/miui/home/launcher/DragSource;II)V
    .locals 6

    .line 302
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/DragController;->getViewsFromInfos([Lcom/miui/home/launcher/ShortcutInfo;)[Landroid/view/View;

    move-result-object v1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/miui/home/launcher/DragController;->autoDrag([Landroid/view/View;[Lcom/miui/home/launcher/DragSource;III)V

    return-void
.end method

.method public autoDrop(Lcom/miui/home/launcher/DropTarget;)V
    .locals 2

    .line 322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "autoDrop. target = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher.DragController"

    invoke-static {v1, v0}, Lcom/miui/home/launcher/MiuiHomeLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    iget-boolean v0, p0, Lcom/miui/home/launcher/DragController;->mAutoDraged:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 326
    iput-boolean v0, p0, Lcom/miui/home/launcher/DragController;->mAutoDraged:Z

    const/high16 v0, -0x40800000    # -1.0f

    .line 327
    invoke-direct {p0, v0, v0, p1}, Lcom/miui/home/launcher/DragController;->drop(FFLcom/miui/home/launcher/DropTarget;)V

    .line 328
    invoke-direct {p0}, Lcom/miui/home/launcher/DragController;->endDrag()V

    return-void

    .line 324
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "can\'t drop without drag started"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public autoDropBack()V
    .locals 2

    const-string v0, "Launcher.DragController"

    const-string v1, "autoDropBack"

    .line 312
    invoke-static {v0, v1}, Lcom/miui/home/launcher/MiuiHomeLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    iget-boolean v0, p0, Lcom/miui/home/launcher/DragController;->mAutoDraged:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 316
    iput-boolean v0, p0, Lcom/miui/home/launcher/DragController;->mAutoDraged:Z

    .line 317
    iget-object v0, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DragObject;->autoDropBack()V

    .line 318
    invoke-direct {p0}, Lcom/miui/home/launcher/DragController;->endDrag()V

    return-void

    .line 314
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "can\'t auto drop without drag started"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public cancelDrag()V
    .locals 3

    .line 927
    invoke-virtual {p0}, Lcom/miui/home/launcher/DragController;->cancelScroll()V

    .line 928
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher.DragController"

    invoke-static {v1, v0}, Lcom/miui/home/launcher/MiuiHomeLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 929
    iget-boolean v0, p0, Lcom/miui/home/launcher/DragController;->mDragging:Z

    if-eqz v0, :cond_2

    .line 930
    iget-object v0, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DragObject;->cancelDrag()V

    .line 931
    iget-object v0, p0, Lcom/miui/home/launcher/DragController;->mLastDropTarget:Lcom/miui/home/launcher/DropTarget;

    if-eqz v0, :cond_0

    .line 932
    iget-object v1, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-interface {v0, v1}, Lcom/miui/home/launcher/DropTarget;->onDragExit(Lcom/miui/home/launcher/DragObject;)V

    .line 934
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/DragController;->mDropTargetWhenDragStarted:Lcom/miui/home/launcher/DropTarget;

    if-eqz v0, :cond_1

    .line 935
    iget-object v1, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-interface {v0, v1}, Lcom/miui/home/launcher/DropTarget;->onDragExit(Lcom/miui/home/launcher/DragObject;)V

    .line 937
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/miui/home/launcher/DragObject;->onDragCompleted(Lcom/miui/home/launcher/DropTarget;Z)V

    .line 938
    iget-object v0, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DragObject;->getDragSource()Lcom/miui/home/launcher/DragSource;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-interface {v0, v2, v1}, Lcom/miui/home/launcher/DragSource;->onDragCompleted(Lcom/miui/home/launcher/DropTarget;Lcom/miui/home/launcher/DragObject;)V

    .line 940
    :cond_2
    invoke-direct {p0}, Lcom/miui/home/launcher/DragController;->endDrag()V

    return-void
.end method

.method public cancelScroll()V
    .locals 1

    .line 944
    iget-object v0, p0, Lcom/miui/home/launcher/DragController;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/miui/home/launcher/DragController;->mScrollRunnable:Lcom/miui/home/launcher/DragController$ScrollRunnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public createDrawableHolder(Landroid/graphics/drawable/Drawable;IILcom/miui/home/launcher/ItemInfo;)Landroid/view/View;
    .locals 0

    .line 380
    iget-object p0, p0, Lcom/miui/home/launcher/DragController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/DragController$ViewHolder;->create(Lcom/miui/home/launcher/Launcher;Landroid/graphics/drawable/Drawable;IILcom/miui/home/launcher/ItemInfo;)Lcom/miui/home/launcher/DragController$ViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 0

    .line 920
    iget-boolean p0, p0, Lcom/miui/home/launcher/DragController;->mDragging:Z

    return p0
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 0

    .line 1008
    iget-object p0, p0, Lcom/miui/home/launcher/DragController;->mMoveTarget:Landroid/view/View;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getCurrentDragObject()Lcom/miui/home/launcher/DragObject;
    .locals 0

    .line 548
    iget-object p0, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    return-object p0
.end method

.method public getDragObjectDragView()Lcom/miui/home/launcher/DragView;
    .locals 0

    .line 170
    iget-object p0, p0, Lcom/miui/home/launcher/DragController;->mDragObjectDragView:Lcom/miui/home/launcher/DragView;

    return-object p0
.end method

.method getVelocityX()F
    .locals 2

    .line 1264
    iget-object v0, p0, Lcom/miui/home/launcher/DragController;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    const/16 v1, 0x3e8

    .line 1265
    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 1266
    iget-object p0, p0, Lcom/miui/home/launcher/DragController;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method getVelocityY()F
    .locals 2

    .line 1272
    iget-object v0, p0, Lcom/miui/home/launcher/DragController;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    const/16 v1, 0x3e8

    .line 1273
    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 1274
    iget-object p0, p0, Lcom/miui/home/launcher/DragController;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isDragging()Z
    .locals 0

    .line 624
    iget-boolean p0, p0, Lcom/miui/home/launcher/DragController;->mDragging:Z

    return p0
.end method

.method public isDraggingFromAssistant()Z
    .locals 0

    .line 187
    iget-boolean p0, p0, Lcom/miui/home/launcher/DragController;->mDraggingFromAssistant:Z

    return p0
.end method

.method public isDraggingToAssistant()Z
    .locals 0

    .line 179
    iget-boolean p0, p0, Lcom/miui/home/launcher/DragController;->mDraggingToAssistant:Z

    return p0
.end method

.method public isDropTargetsContainsContent(Lcom/miui/home/launcher/DropTarget;)Z
    .locals 0

    .line 1495
    iget-object p0, p0, Lcom/miui/home/launcher/DragController;->mDropTargets:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isFolderDragging(Lcom/miui/home/launcher/FolderInfo;)Z
    .locals 3

    .line 1564
    invoke-virtual {p0}, Lcom/miui/home/launcher/DragController;->isDragging()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    if-eqz v0, :cond_1

    move v0, v1

    .line 1565
    :goto_0
    iget-object v2, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-virtual {v2}, Lcom/miui/home/launcher/DragObject;->getDraggingSize()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1566
    iget-object v2, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-virtual {v2, v0}, Lcom/miui/home/launcher/DragObject;->getDragInfo(I)Lcom/miui/home/launcher/ItemInfo;

    move-result-object v2

    if-ne v2, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 257
    iget-object v0, p0, Lcom/miui/home/launcher/DragController;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p1, v0}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v0

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    .line 259
    new-instance v0, Lcom/miui/home/launcher/widget/WidgetIconBlurBackgroundDrawable;

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/miui/home/launcher/widget/WidgetIconBlurBackgroundDrawable;-><init>(Landroid/content/Context;Z)V

    sput-object v0, Lcom/miui/home/launcher/DragController;->widgetBlurDefauktBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 261
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/DragController;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onGridConfigChanged(Lcom/miui/home/launcher/GridConfig;)V
    .locals 0

    .line 1577
    invoke-virtual {p0}, Lcom/miui/home/launcher/DragController;->cancelDrag()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 968
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 969
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenWidth()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Lcom/miui/home/launcher/DragController;->clamp(III)I

    move-result v1

    .line 970
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenHeight()I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/miui/home/launcher/DragController;->clamp(III)I

    move-result v2

    .line 972
    iget-boolean v3, p0, Lcom/miui/home/launcher/DragController;->mDragging:Z

    if-eqz v0, :cond_3

    const/4 v4, 0x1

    if-eq v0, v4, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 985
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/DragController;->cancelDrag()V

    goto :goto_0

    :cond_1
    if-eqz v3, :cond_2

    .line 990
    invoke-direct {p0, v1, v2, p1}, Lcom/miui/home/launcher/DragController;->handleMoveEvent(IILandroid/view/MotionEvent;)V

    int-to-float p1, v1

    int-to-float v0, v2

    .line 991
    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/DragController;->drop(FF)V

    .line 993
    :cond_2
    invoke-direct {p0}, Lcom/miui/home/launcher/DragController;->endDrag()V

    goto :goto_0

    .line 979
    :cond_3
    iput v1, p0, Lcom/miui/home/launcher/DragController;->mMotionDownX:I

    .line 980
    iput v2, p0, Lcom/miui/home/launcher/DragController;->mMotionDownY:I

    const/4 p1, 0x0

    .line 981
    iput-object p1, p0, Lcom/miui/home/launcher/DragController;->mLastDropTarget:Lcom/miui/home/launcher/DropTarget;

    :goto_0
    return v3
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 1167
    iget-object v0, p0, Lcom/miui/home/launcher/DragController;->mScrollView:Landroid/view/View;

    .line 1168
    iget-boolean v1, p0, Lcom/miui/home/launcher/DragController;->mDragging:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 1172
    :cond_0
    invoke-static {}, Lcom/miui/launcher/utils/BoostHelper;->getInstance()Lcom/miui/launcher/utils/BoostHelper;

    move-result-object v1

    iget-object v3, p0, Lcom/miui/home/launcher/DragController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v3}, Lcom/miui/home/launcher/Launcher;->getRootView()Landroid/view/View;

    move-result-object v3

    const-wide/16 v4, 0x190

    invoke-virtual {v1, v3, v4, v5}, Lcom/miui/launcher/utils/BoostHelper;->bindCore(Landroid/view/View;J)V

    .line 1173
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 1175
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenWidth()I

    move-result v4

    invoke-static {v3, v2, v4}, Lcom/miui/home/launcher/DragController;->clamp(III)I

    move-result v3

    .line 1176
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenHeight()I

    move-result v5

    invoke-static {v4, v2, v5}, Lcom/miui/home/launcher/DragController;->clamp(III)I

    move-result v4

    and-int/lit16 v5, v1, 0xff

    const/4 v6, 0x1

    if-eqz v5, :cond_c

    if-eq v5, v6, :cond_a

    const/4 v0, 0x2

    if-eq v5, v0, :cond_7

    const/4 v0, 0x3

    if-eq v5, v0, :cond_6

    const/4 v0, 0x5

    if-eq v5, v0, :cond_3

    const/4 v0, 0x6

    if-eq v5, v0, :cond_1

    goto/16 :goto_3

    .line 1201
    :cond_1
    iget v0, p0, Lcom/miui/home/launcher/DragController;->mSecondaryPointerId:I

    if-ltz v0, :cond_10

    .line 1202
    iget-object v1, p0, Lcom/miui/home/launcher/DragController;->mSecondPointerScroller:Lcom/miui/home/launcher/DragScroller;

    if-eqz v1, :cond_2

    .line 1203
    invoke-interface {v1, p1, v0}, Lcom/miui/home/launcher/DragScroller;->onSecondaryPointerUp(Landroid/view/MotionEvent;I)V

    :cond_2
    const/4 p1, -0x1

    .line 1205
    iput p1, p0, Lcom/miui/home/launcher/DragController;->mSecondaryPointerId:I

    goto/16 :goto_3

    .line 1180
    :cond_3
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isDragDisable()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1181
    iget-object p0, p0, Lcom/miui/home/launcher/DragController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->showDragDisableToast(Landroid/content/Context;)V

    goto/16 :goto_3

    :cond_4
    const v0, 0xff00

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    .line 1186
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lcom/miui/home/launcher/DragController;->mSecondaryPointerId:I

    .line 1187
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    float-to-int v1, v1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenWidth()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/miui/home/launcher/DragController;->clamp(III)I

    move-result v1

    .line 1188
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v0, v0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenHeight()I

    move-result v3

    invoke-static {v0, v2, v3}, Lcom/miui/home/launcher/DragController;->clamp(III)I

    move-result v0

    .line 1189
    iget-object v2, p0, Lcom/miui/home/launcher/DragController;->mCoordinatesTemp:[I

    invoke-direct {p0, v1, v0, v2}, Lcom/miui/home/launcher/DragController;->findDropTarget(II[I)Lcom/miui/home/launcher/DropTarget;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1190
    instance-of v1, v0, Lcom/miui/home/launcher/DragScroller;

    if-eqz v1, :cond_5

    .line 1191
    check-cast v0, Lcom/miui/home/launcher/DragScroller;

    iput-object v0, p0, Lcom/miui/home/launcher/DragController;->mSecondPointerScroller:Lcom/miui/home/launcher/DragScroller;

    .line 1192
    iget v1, p0, Lcom/miui/home/launcher/DragController;->mSecondaryPointerId:I

    invoke-interface {v0, p1, v1}, Lcom/miui/home/launcher/DragScroller;->onSecondaryPointerDown(Landroid/view/MotionEvent;I)V

    .line 1194
    :cond_5
    iget-object p1, p0, Lcom/miui/home/launcher/DragController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isInShortcutMenuState()Z

    move-result p1

    if-eqz p1, :cond_10

    .line 1195
    iget-object p1, p0, Lcom/miui/home/launcher/DragController;->mShortcutMenuDragListeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/shortcuts/ShortcutMenuDragListener;

    .line 1196
    iget-object v1, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-interface {v0, v1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuDragListener;->onSecondaryPointerDownWhenShortcutMenuShowing(Lcom/miui/home/launcher/DragObject;)V

    goto :goto_0

    .line 1243
    :cond_6
    invoke-virtual {p0}, Lcom/miui/home/launcher/DragController;->cancelDrag()V

    .line 1244
    invoke-direct {p0}, Lcom/miui/home/launcher/DragController;->recycleVelocityTracker()V

    goto :goto_3

    .line 1225
    :cond_7
    iget-object v0, p0, Lcom/miui/home/launcher/DragController;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_8

    .line 1226
    invoke-direct {p0}, Lcom/miui/home/launcher/DragController;->obtainVelocityTracker()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/DragController;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1228
    :cond_8
    iget-object v0, p0, Lcom/miui/home/launcher/DragController;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_9

    .line 1229
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1231
    :cond_9
    invoke-direct {p0, v3, v4, p1}, Lcom/miui/home/launcher/DragController;->handleMoveEvent(IILandroid/view/MotionEvent;)V

    goto :goto_3

    .line 1234
    :cond_a
    invoke-direct {p0, v3, v4, p1}, Lcom/miui/home/launcher/DragController;->handleMoveEvent(IILandroid/view/MotionEvent;)V

    .line 1235
    invoke-virtual {p0}, Lcom/miui/home/launcher/DragController;->cancelScroll()V

    .line 1236
    iget-boolean p1, p0, Lcom/miui/home/launcher/DragController;->mDragging:Z

    if-eqz p1, :cond_b

    int-to-float p1, v3

    int-to-float v0, v4

    .line 1237
    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/DragController;->drop(FF)V

    .line 1239
    :cond_b
    invoke-direct {p0}, Lcom/miui/home/launcher/DragController;->endDrag()V

    .line 1240
    invoke-direct {p0}, Lcom/miui/home/launcher/DragController;->recycleVelocityTracker()V

    goto :goto_3

    .line 1210
    :cond_c
    iput v3, p0, Lcom/miui/home/launcher/DragController;->mMotionDownX:I

    .line 1211
    iput v4, p0, Lcom/miui/home/launcher/DragController;->mMotionDownY:I

    .line 1212
    iget-object p1, p0, Lcom/miui/home/launcher/DragController;->mDragScroller:Lcom/miui/home/launcher/DragScroller;

    if-eqz p1, :cond_f

    .line 1213
    invoke-interface {p1}, Lcom/miui/home/launcher/DragScroller;->getScrollZone()I

    move-result p1

    if-lt v3, p1, :cond_e

    .line 1214
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    sub-int/2addr v0, p1

    if-le v3, v0, :cond_d

    goto :goto_1

    .line 1219
    :cond_d
    iput v2, p0, Lcom/miui/home/launcher/DragController;->mScrollState:I

    goto :goto_2

    .line 1215
    :cond_e
    :goto_1
    iput v6, p0, Lcom/miui/home/launcher/DragController;->mScrollState:I

    .line 1216
    invoke-virtual {p0}, Lcom/miui/home/launcher/DragController;->cancelScroll()V

    .line 1217
    iget-object p1, p0, Lcom/miui/home/launcher/DragController;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/miui/home/launcher/DragController;->mScrollRunnable:Lcom/miui/home/launcher/DragController$ScrollRunnable;

    const-wide/16 v1, 0x2bc

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1222
    :cond_f
    :goto_2
    invoke-direct {p0}, Lcom/miui/home/launcher/DragController;->obtainVelocityTracker()Landroid/view/VelocityTracker;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/DragController;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_10
    :goto_3
    return v6
.end method

.method public removeDragListener(Lcom/miui/home/launcher/DragController$DragListener;)V
    .locals 0

    .line 1477
    iget-object p0, p0, Lcom/miui/home/launcher/DragController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeDropTarget(Lcom/miui/home/launcher/DropTarget;)V
    .locals 1

    .line 1502
    iget-object v0, p0, Lcom/miui/home/launcher/DragController;->mDropTargets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1503
    iget-boolean v0, p0, Lcom/miui/home/launcher/DragController;->mDragging:Z

    if-eqz v0, :cond_0

    .line 1504
    iget-object v0, p0, Lcom/miui/home/launcher/DragController;->mLastDropTarget:Lcom/miui/home/launcher/DropTarget;

    if-ne v0, p1, :cond_0

    .line 1505
    iget-object p1, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-interface {v0, p1}, Lcom/miui/home/launcher/DropTarget;->onDragExit(Lcom/miui/home/launcher/DragObject;)V

    const/4 p1, 0x0

    .line 1506
    iput-object p1, p0, Lcom/miui/home/launcher/DragController;->mLastDropTarget:Lcom/miui/home/launcher/DropTarget;

    :cond_0
    return-void
.end method

.method public setDragObjectDragView(Lcom/miui/home/launcher/DragView;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/miui/home/launcher/DragController;->mDragObjectDragView:Lcom/miui/home/launcher/DragView;

    return-void
.end method

.method public setDraggingFromAssistant(Z)V
    .locals 0

    .line 191
    iput-boolean p1, p0, Lcom/miui/home/launcher/DragController;->mDraggingFromAssistant:Z

    return-void
.end method

.method public setDraggingToAssistant(Z)V
    .locals 0

    .line 183
    iput-boolean p1, p0, Lcom/miui/home/launcher/DragController;->mDraggingToAssistant:Z

    return-void
.end method

.method public setEachDragViewMinDropAnimationDuration(I)V
    .locals 1

    .line 306
    iget-object p0, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    if-nez p0, :cond_0

    return-void

    .line 307
    :cond_0
    new-instance v0, Lcom/miui/home/launcher/DragController$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Lcom/miui/home/launcher/DragController$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/DragObject;->forEachDragView(Ljava/util/function/Consumer;)V

    return-void
.end method

.method setMoveTarget(Landroid/view/View;)V
    .locals 0

    .line 1004
    iput-object p1, p0, Lcom/miui/home/launcher/DragController;->mMoveTarget:Landroid/view/View;

    return-void
.end method

.method public setScrollView(Landroid/view/View;)V
    .locals 0

    .line 1515
    iput-object p1, p0, Lcom/miui/home/launcher/DragController;->mScrollView:Landroid/view/View;

    return-void
.end method

.method public startAutoDrag([Landroid/view/View;Lcom/miui/home/launcher/DragSource;Lcom/miui/home/launcher/DropTarget;II)V
    .locals 8

    const/4 v0, 0x1

    new-array v3, v0, [Lcom/miui/home/launcher/DragSource;

    const/4 v0, 0x0

    aput-object p2, v3, v0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    move v5, p4

    move v6, p5

    .line 240
    invoke-virtual/range {v1 .. v7}, Lcom/miui/home/launcher/DragController;->startAutoDrag([Landroid/view/View;[Lcom/miui/home/launcher/DragSource;Lcom/miui/home/launcher/DropTarget;III)V

    return-void
.end method

.method public startAutoDrag([Landroid/view/View;[Lcom/miui/home/launcher/DragSource;Lcom/miui/home/launcher/DropTarget;III)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p4

    move v4, p5

    move v5, p6

    .line 284
    invoke-virtual/range {v0 .. v5}, Lcom/miui/home/launcher/DragController;->autoDrag([Landroid/view/View;[Lcom/miui/home/launcher/DragSource;III)V

    .line 285
    invoke-virtual {p0, p3}, Lcom/miui/home/launcher/DragController;->autoDrop(Lcom/miui/home/launcher/DropTarget;)V

    return-void
.end method

.method public startAutoDrag([Lcom/miui/home/launcher/ShortcutInfo;[Lcom/miui/home/launcher/DragSource;Lcom/miui/home/launcher/DropTarget;II)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    .line 280
    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/DragController;->getViewsFromInfos([Lcom/miui/home/launcher/ShortcutInfo;)[Landroid/view/View;

    move-result-object v1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/miui/home/launcher/DragController;->startAutoDrag([Landroid/view/View;[Lcom/miui/home/launcher/DragSource;Lcom/miui/home/launcher/DropTarget;III)V

    return-void
.end method

.method public startDrag(Landroid/graphics/drawable/Drawable;ZLcom/miui/home/launcher/ItemInfo;IIFLcom/miui/home/launcher/DragSource;I)Z
    .locals 10

    move-object v0, p3

    move-object v1, p0

    move-object v2, p1

    move v3, p4

    move v4, p5

    .line 384
    invoke-virtual {p0, p1, p4, p5, p3}, Lcom/miui/home/launcher/DragController;->createDrawableHolder(Landroid/graphics/drawable/Drawable;IILcom/miui/home/launcher/ItemInfo;)Landroid/view/View;

    move-result-object v2

    .line 385
    invoke-virtual {v2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x1

    new-array v3, v0, [Landroid/view/View;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    new-array v5, v0, [Lcom/miui/home/launcher/DragSource;

    aput-object p7, v5, v4

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, -0x40800000    # -1.0f

    move-object v0, p0

    move-object v1, v3

    move v2, p2

    move/from16 v3, p6

    move-object v4, v5

    move/from16 v5, p8

    .line 386
    invoke-virtual/range {v0 .. v9}, Lcom/miui/home/launcher/DragController;->startDrag([Landroid/view/View;ZF[Lcom/miui/home/launcher/DragSource;IIZIF)Z

    move-result v0

    return v0
.end method

.method public startDrag(Landroid/view/View;ZLcom/miui/home/launcher/DragSource;I)Z
    .locals 11

    const/4 v0, 0x1

    new-array v2, v0, [Landroid/view/View;

    const/4 v1, 0x0

    aput-object p1, v2, v1

    .line 390
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/DragController;->getDragScale(Landroid/view/View;)F

    move-result v4

    new-array v5, v0, [Lcom/miui/home/launcher/DragSource;

    aput-object p3, v5, v1

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/high16 v10, -0x40800000    # -1.0f

    move-object v1, p0

    move v3, p2

    move v6, p4

    invoke-virtual/range {v1 .. v10}, Lcom/miui/home/launcher/DragController;->startDrag([Landroid/view/View;ZF[Lcom/miui/home/launcher/DragSource;IIZIF)Z

    move-result p0

    return p0
.end method

.method public startDrag([Landroid/view/View;ZF[Lcom/miui/home/launcher/DragSource;IIZIF)Z
    .locals 24

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p7

    .line 412
    iget-boolean v0, v7, Lcom/miui/home/launcher/DragController;->mDragging:Z

    const-string v12, "Launcher.DragController"

    const/4 v13, 0x0

    if-nez v0, :cond_13

    array-length v0, v8

    if-gtz v0, :cond_0

    goto/16 :goto_9

    :cond_0
    const/4 v14, 0x1

    if-eqz v9, :cond_1

    .line 418
    array-length v0, v9

    if-le v0, v14, :cond_1

    array-length v0, v9

    array-length v1, v8

    if-eq v0, v1, :cond_1

    const-string v0, "DragController startDrag. source.length > 1 && source.length != views.length"

    .line 419
    invoke-static {v12, v0}, Lcom/miui/home/launcher/MiuiHomeLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return v13

    :cond_1
    const-string v0, "DragController startDrag"

    .line 422
    invoke-static {v12, v0}, Lcom/miui/home/launcher/MiuiHomeLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    iget-object v0, v7, Lcom/miui/home/launcher/DragController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getDragLayer()Lcom/miui/home/launcher/DragLayer;

    move-result-object v0

    const/4 v15, 0x0

    invoke-virtual {v0, v15}, Lcom/miui/home/launcher/SuperDraglayer;->setClipForDragging(Landroid/graphics/Rect;)V

    const/4 v0, 0x4

    if-eq v10, v0, :cond_2

    .line 429
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    aget-object v1, v8, v13

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/util/MainThreadHelper;->hideKeyboardAsync(Landroid/content/Context;Landroid/os/IBinder;)V

    .line 434
    :cond_2
    array-length v0, v8

    new-array v6, v0, [Lcom/miui/home/launcher/DragView;

    .line 435
    array-length v0, v8

    sub-int/2addr v0, v14

    move/from16 v16, v0

    :goto_0
    if-ltz v16, :cond_d

    .line 436
    iget-object v0, v7, Lcom/miui/home/launcher/DragController;->mCoordinatesTemp:[I

    .line 437
    aget-object v1, v8, v16

    iget-object v2, v7, Lcom/miui/home/launcher/DragController;->mDragViewOwner:Landroid/view/ViewGroup;

    invoke-static {v1, v2, v0, v14}, Lcom/miui/home/launcher/common/Utilities;->getLocationInParent(Landroid/view/View;Landroid/view/View;[IZ)F

    move-result v1

    .line 438
    aget-object v2, v9, v16

    instance-of v2, v2, Lcom/miui/home/launcher/overlay/assistant/AssistantDragSource;

    if-eqz v2, :cond_3

    .line 439
    aget-object v2, v9, v16

    check-cast v2, Lcom/miui/home/launcher/overlay/assistant/AssistantDragSource;

    aget-object v3, v8, v16

    iget v4, v7, Lcom/miui/home/launcher/DragController;->mMotionDownX:I

    iget v5, v7, Lcom/miui/home/launcher/DragController;->mMotionDownY:I

    invoke-virtual {v2, v3, v0, v4, v5}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragSource;->transform(Landroid/view/View;[III)V

    goto :goto_1

    .line 440
    :cond_3
    aget-object v2, v9, v16

    instance-of v2, v2, Lcom/miui/home/launcher/Folder;

    if-eqz v2, :cond_4

    .line 441
    aget-object v2, v8, v16

    invoke-direct {v7, v2}, Lcom/miui/home/launcher/DragController;->resetView(Landroid/view/View;)V

    .line 442
    iget-object v2, v7, Lcom/miui/home/launcher/DragController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->isFolderOpened()Z

    move-result v2

    if-nez v2, :cond_4

    .line 443
    iget-object v1, v7, Lcom/miui/home/launcher/DragController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    aget-object v2, v8, v16

    check-cast v2, Lcom/miui/home/launcher/IShortcutIcon;

    invoke-interface {v2}, Lcom/miui/home/launcher/IShortcutIcon;->getShortcutInfo()Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/Launcher;->getParentFolderIcon(Lcom/miui/home/launcher/ShortcutInfo;)Lcom/miui/home/launcher/FolderIcon;

    move-result-object v1

    .line 444
    iget-object v2, v7, Lcom/miui/home/launcher/DragController;->mDragViewOwner:Landroid/view/ViewGroup;

    invoke-static {v1, v2, v0, v14}, Lcom/miui/home/launcher/common/Utilities;->getLocationInParent(Landroid/view/View;Landroid/view/View;[IZ)F

    move-result v1

    .line 448
    :cond_4
    :goto_1
    aget-object v2, v8, v16

    instance-of v2, v2, Lcom/miui/home/launcher/ShortcutIcon;

    if-eqz v2, :cond_5

    .line 449
    aget-object v2, v8, v16

    check-cast v2, Lcom/miui/home/launcher/ShortcutIcon;

    invoke-virtual {v2, v0}, Lcom/miui/home/launcher/ShortcutIcon;->transform([I)V

    .line 452
    :cond_5
    aget v5, v0, v13

    .line 453
    aget v4, v0, v14

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p9, v0

    if-nez v0, :cond_6

    goto :goto_2

    :cond_6
    move/from16 v1, p9

    .line 457
    :goto_2
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v0, :cond_7

    move/from16 v18, v2

    goto :goto_3

    :cond_7
    move/from16 v18, v1

    :goto_3
    const/4 v0, 0x0

    cmpl-float v0, p3, v0

    if-nez v0, :cond_8

    .line 462
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDragIconScaleRatio()F

    move-result v0

    mul-float v0, v0, v18

    aget-object v1, v8, v16

    invoke-virtual {v1}, Landroid/view/View;->getScaleX()F

    move-result v1

    div-float/2addr v0, v1

    goto :goto_4

    :cond_8
    move/from16 v0, p3

    .line 463
    :goto_4
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_9

    move/from16 v19, v2

    goto :goto_5

    :cond_9
    move/from16 v19, v0

    :goto_5
    if-eqz v11, :cond_a

    .line 468
    iput v5, v7, Lcom/miui/home/launcher/DragController;->mMotionDownX:I

    .line 469
    iput v4, v7, Lcom/miui/home/launcher/DragController;->mMotionDownY:I

    .line 471
    :cond_a
    aget-object v0, v8, v16

    invoke-static {v0, v2}, Lcom/miui/home/launcher/DragController$OutlineTask;->create(Landroid/view/View;F)Lcom/miui/home/launcher/DragController$OutlineTask;

    move-result-object v3

    .line 472
    aget-object v1, v8, v16

    add-int v17, v16, p8

    array-length v2, v8

    .line 474
    array-length v0, v9

    if-ne v0, v14, :cond_b

    aget-object v0, v9, v13

    goto :goto_6

    :cond_b
    aget-object v0, v9, v16

    :goto_6
    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v21, v2

    move/from16 v2, p5

    move-object v14, v3

    move/from16 v3, v17

    move v15, v4

    move/from16 v4, p7

    move v13, v5

    move/from16 v5, v21

    move-object v8, v6

    move-object/from16 v6, v20

    .line 472
    invoke-direct/range {v0 .. v6}, Lcom/miui/home/launcher/DragController;->createDragView(Landroid/view/View;IIZILcom/miui/home/launcher/DragSource;)Lcom/miui/home/launcher/DragView;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 476
    iget v1, v7, Lcom/miui/home/launcher/DragController;->mMotionDownX:I

    iget v2, v7, Lcom/miui/home/launcher/DragController;->mMotionDownY:I

    invoke-virtual {v0, v1, v2, v13, v15}, Lcom/miui/home/launcher/DragView;->initRegistrationOffset(IIII)V

    .line 477
    iget v1, v7, Lcom/miui/home/launcher/DragController;->mMotionDownX:I

    iget v2, v7, Lcom/miui/home/launcher/DragController;->mMotionDownY:I

    move-object/from16 v17, v0

    move/from16 v20, v1

    move/from16 v21, v2

    move/from16 v22, v13

    move/from16 v23, v15

    invoke-virtual/range {v17 .. v23}, Lcom/miui/home/launcher/DragView;->showWithAnim(FFIIII)V

    move/from16 v1, p2

    .line 478
    invoke-direct {v7, v14, v0, v1}, Lcom/miui/home/launcher/DragController;->createOutlineAsync(Lcom/miui/home/launcher/DragController$OutlineTask;Lcom/miui/home/launcher/DragView;Z)V

    goto :goto_7

    :cond_c
    move/from16 v1, p2

    .line 480
    :goto_7
    aput-object v0, v8, v16

    add-int/lit8 v16, v16, -0x1

    move-object v6, v8

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    move-object/from16 v8, p1

    goto/16 :goto_0

    :cond_d
    move-object v8, v6

    .line 483
    new-instance v0, Lcom/miui/home/launcher/DragObject;

    invoke-direct {v0, v8}, Lcom/miui/home/launcher/DragObject;-><init>([Lcom/miui/home/launcher/DragView;)V

    iput-object v0, v7, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    .line 484
    iget-object v1, v7, Lcom/miui/home/launcher/DragController;->mDropAnimationListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/DragObject;->setDragAnimationListener(Ljava/util/ArrayList;)V

    .line 485
    iget-object v0, v7, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    const/4 v1, 0x0

    aget-object v2, v8, v1

    invoke-virtual {v2}, Lcom/miui/home/launcher/DragView;->getRegistrationX()I

    move-result v2

    iput v2, v0, Lcom/miui/home/launcher/DragObject;->xOffset:I

    .line 486
    iget-object v0, v7, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    aget-object v2, v8, v1

    invoke-virtual {v2}, Lcom/miui/home/launcher/DragView;->getRegistrationY()I

    move-result v1

    iput v1, v0, Lcom/miui/home/launcher/DragObject;->yOffset:I

    .line 487
    iget-object v0, v7, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    iput v10, v0, Lcom/miui/home/launcher/DragObject;->dragAction:I

    move/from16 v1, p6

    .line 488
    iput v1, v0, Lcom/miui/home/launcher/DragObject;->dropAction:I

    .line 489
    invoke-virtual {v0, v11}, Lcom/miui/home/launcher/DragObject;->setIsAutoDraged(Z)V

    .line 490
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompat;

    move-result-object v0

    iget-object v1, v7, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    .line 491
    invoke-virtual {v1}, Lcom/miui/home/launcher/DragObject;->getDragView()Lcom/miui/home/launcher/DragView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const-string v2, "action_drag_on"

    invoke-virtual {v0, v2, v1}, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompat;->sendWallPaperCommand(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 492
    invoke-static {v12, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    iget-object v0, v7, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DragObject;->getDragSource()Lcom/miui/home/launcher/DragSource;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragSource;

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    .line 494
    iput v0, v7, Lcom/miui/home/launcher/DragController;->mScrollState:I

    const-string/jumbo v0, "startDrag: set mScrollState DragScroller.SCROLL_OUTSIDE_ZONE "

    .line 495
    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    if-nez v11, :cond_10

    .line 499
    iget-object v0, v7, Lcom/miui/home/launcher/DragController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/DragController$DragListener;

    .line 500
    iget-object v2, v7, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-interface {v1, v9, v2}, Lcom/miui/home/launcher/DragController$DragListener;->onDragStart([Lcom/miui/home/launcher/DragSource;Lcom/miui/home/launcher/DragObject;)V

    goto :goto_8

    .line 502
    :cond_f
    invoke-static {}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->getInstance()Lcom/miui/home/launcher/common/HapticFeedbackCompat;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v2, v8, v1

    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->performStartDrag(Landroid/view/View;)V

    .line 504
    :cond_10
    new-instance v0, Lcom/miui/home/launcher/DragController$1;

    invoke-direct {v0, v7}, Lcom/miui/home/launcher/DragController$1;-><init>(Lcom/miui/home/launcher/DragController;)V

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->announceForAccessibility(Ljava/util/function/Supplier;)V

    .line 515
    iget v0, v7, Lcom/miui/home/launcher/DragController;->mMotionDownX:I

    iget v1, v7, Lcom/miui/home/launcher/DragController;->mMotionDownY:I

    iget-object v2, v7, Lcom/miui/home/launcher/DragController;->mCoordinatesTemp:[I

    invoke-direct {v7, v0, v1, v2}, Lcom/miui/home/launcher/DragController;->findDropTarget(II[I)Lcom/miui/home/launcher/DropTarget;

    move-result-object v0

    iput-object v0, v7, Lcom/miui/home/launcher/DragController;->mDropTargetWhenDragStarted:Lcom/miui/home/launcher/DropTarget;

    if-nez v11, :cond_12

    .line 517
    instance-of v1, v0, Lcom/miui/home/launcher/hotseats/HotSeatsContent;

    if-nez v1, :cond_11

    instance-of v0, v0, Lcom/miui/home/launcher/Workspace;

    if-eqz v0, :cond_12

    .line 519
    :cond_11
    iget v0, v7, Lcom/miui/home/launcher/DragController;->mMotionDownX:I

    iget v1, v7, Lcom/miui/home/launcher/DragController;->mMotionDownY:I

    invoke-direct {v7, v0, v1}, Lcom/miui/home/launcher/DragController;->updateScrollIconCenterX(II)V

    .line 520
    iget v0, v7, Lcom/miui/home/launcher/DragController;->mMotionDownX:I

    iget v1, v7, Lcom/miui/home/launcher/DragController;->mMotionDownY:I

    const/4 v2, 0x0

    invoke-direct {v7, v0, v1, v2}, Lcom/miui/home/launcher/DragController;->handleMoveEvent(IILandroid/view/MotionEvent;)V

    :cond_12
    const/4 v0, 0x1

    .line 522
    iput-boolean v0, v7, Lcom/miui/home/launcher/DragController;->mDragging:Z

    .line 523
    iget-object v1, v7, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    const/4 v2, 0x0

    aget-object v2, v8, v2

    invoke-static {v2}, Lcom/miui/home/launcher/DragViewStateAnnouncer;->createFor(Landroid/view/View;)Lcom/miui/home/launcher/DragViewStateAnnouncer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/DragObject;->setStateAnnouncer(Lcom/miui/home/launcher/DragViewStateAnnouncer;)V

    .line 524
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    new-instance v2, Lcom/miui/home/launcher/common/messages/DragMessage;

    xor-int/lit8 v3, v11, 0x1

    invoke-direct {v2, v3}, Lcom/miui/home/launcher/common/messages/DragMessage;-><init>(Z)V

    invoke-virtual {v1, v2}, Lorg/greenrobot/eventbus/EventBus;->postSticky(Ljava/lang/Object;)V

    return v0

    .line 413
    :cond_13
    :goto_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DragController startDrag. mDragging = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v7, Lcom/miui/home/launcher/DragController;->mDragging:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "views.length <= 0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lcom/miui/home/launcher/MiuiHomeLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public startDrag([Lcom/miui/home/launcher/ShortcutInfo;ZF[Lcom/miui/home/launcher/DragSource;IIZ)Z
    .locals 11

    if-nez p1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 407
    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/DragController;->getViewsFromInfos([Lcom/miui/home/launcher/ShortcutInfo;)[Landroid/view/View;

    move-result-object v2

    const/4 v9, 0x0

    const/high16 v10, -0x40800000    # -1.0f

    move-object v1, p0

    move v3, p2

    move v4, p3

    move-object v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v1 .. v10}, Lcom/miui/home/launcher/DragController;->startDrag([Landroid/view/View;ZF[Lcom/miui/home/launcher/DragSource;IIZIF)Z

    move-result v0

    return v0
.end method

.method public updateDragView()V
    .locals 1

    .line 628
    invoke-virtual {p0}, Lcom/miui/home/launcher/DragController;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 629
    invoke-virtual {p0}, Lcom/miui/home/launcher/DragController;->getCurrentDragObject()Lcom/miui/home/launcher/DragObject;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/DragObject;->getDragView()Lcom/miui/home/launcher/DragView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/DragView;->updateDragView()V

    :cond_0
    return-void
.end method
