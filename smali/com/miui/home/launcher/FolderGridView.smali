.class public Lcom/miui/home/launcher/FolderGridView;
.super Landroid/widget/GridView;
.source "FolderGridView.java"

# interfaces
.implements Lcom/miui/home/launcher/DropTarget;
.implements Lcom/miui/home/launcher/DragController$VisualizeCalibration;
.implements Lcom/miui/home/launcher/DragController$DragListener;
.implements Lcom/miui/home/launcher/DropTarget$OnDropAnnounce;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/FolderGridView$FolderLayoutAnimator;,
        Lcom/miui/home/launcher/FolderGridView$ItemProperties;,
        Lcom/miui/home/launcher/FolderGridView$FolderDropAnimationListener;,
        Lcom/miui/home/launcher/FolderGridView$BackupDataForDragging;
    }
.end annotation


# instance fields
.field private isEdgeLineShow:Z

.field private isSwipeUp:Z

.field private mAdapter:Lcom/miui/home/launcher/ShortcutsAdapter;

.field private mAutoScrollDirection:I

.field private mBackupDataForDragIn:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/miui/home/launcher/DragView;",
            "Lcom/miui/home/launcher/FolderGridView$BackupDataForDragging;",
            ">;"
        }
    .end annotation
.end field

.field private mBackupDragObject:Lcom/miui/home/launcher/DragObject;

.field private mClickConfirmor:Lcom/miui/home/launcher/common/PreciseClickConfirmor;

.field mConfirmAutoScroll:Ljava/lang/Runnable;

.field private mDownIcons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mDragStartedIndex:I

.field private mEdgeAlpha:I

.field private mEdgePaint:Landroid/graphics/Paint;

.field private mEventDispatchDisabled:Z

.field private mFolderLayoutAnimator:Lcom/miui/home/launcher/FolderGridView$FolderLayoutAnimator;

.field private mFolderRowChange:Z

.field private mIgnoreCancelEvent:Z

.field private mItemsForDropping:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/miui/home/launcher/ItemInfo;",
            "Lcom/miui/home/launcher/DragView;",
            ">;"
        }
    .end annotation
.end field

.field private mLastHit:Landroid/view/View;

.field private final mLastPosMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            "Lcom/miui/home/launcher/FolderGridView$ItemProperties;",
            ">;"
        }
    .end annotation
.end field

.field private mLastRowNum:I

.field private mLauncher:Lcom/miui/home/launcher/Launcher;

.field private mMaxRow:I

.field private mRect:Landroid/graphics/Rect;

.field private mStayConfirm:Ljava/lang/Runnable;

.field private mTmpRect:Landroid/graphics/Rect;

.field private usingDarkScrollBar:Z


# direct methods
.method public static synthetic $r8$lambda$38422NZpxxzPUYF7CwhxXCCZDTs(Lcom/miui/home/launcher/FolderGridView;[II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/FolderGridView;->lambda$scrollNearestRow$1([II)V

    return-void
.end method

.method public static synthetic $r8$lambda$WwpmGMB5QKB7pAAKSKH7xvy-ems(Lcom/miui/home/launcher/FolderGridView;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/launcher/FolderGridView;->lambda$scrollToLast$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$p229JKwKOTbgO677qa1QNC4GTUY(Lcom/miui/home/launcher/FolderGridView;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/launcher/FolderGridView;->makePositionSnapShot()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 115
    invoke-direct {p0, p1, p2}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 52
    iput-object p2, p0, Lcom/miui/home/launcher/FolderGridView;->mAdapter:Lcom/miui/home/launcher/ShortcutsAdapter;

    .line 53
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/FolderGridView;->mTmpRect:Landroid/graphics/Rect;

    .line 54
    iput-object p2, p0, Lcom/miui/home/launcher/FolderGridView;->mLastHit:Landroid/view/View;

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/FolderGridView;->mBackupDataForDragIn:Ljava/util/HashMap;

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/FolderGridView;->mItemsForDropping:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 59
    iput-boolean v0, p0, Lcom/miui/home/launcher/FolderGridView;->usingDarkScrollBar:Z

    const/16 v1, 0xff

    .line 61
    iput v1, p0, Lcom/miui/home/launcher/FolderGridView;->mEdgeAlpha:I

    .line 62
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/miui/home/launcher/FolderGridView;->mRect:Landroid/graphics/Rect;

    .line 64
    iput-object p2, p0, Lcom/miui/home/launcher/FolderGridView;->mBackupDragObject:Lcom/miui/home/launcher/DragObject;

    .line 65
    iput v0, p0, Lcom/miui/home/launcher/FolderGridView;->mMaxRow:I

    .line 78
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/miui/home/launcher/FolderGridView;->mLastPosMap:Ljava/util/HashMap;

    .line 79
    iput-boolean v0, p0, Lcom/miui/home/launcher/FolderGridView;->mFolderRowChange:Z

    const/4 p2, 0x1

    .line 80
    iput p2, p0, Lcom/miui/home/launcher/FolderGridView;->mLastRowNum:I

    .line 82
    iput-boolean v0, p0, Lcom/miui/home/launcher/FolderGridView;->mEventDispatchDisabled:Z

    .line 477
    new-instance p2, Lcom/miui/home/launcher/FolderGridView$3;

    invoke-direct {p2, p0}, Lcom/miui/home/launcher/FolderGridView$3;-><init>(Lcom/miui/home/launcher/FolderGridView;)V

    iput-object p2, p0, Lcom/miui/home/launcher/FolderGridView;->mStayConfirm:Ljava/lang/Runnable;

    .line 528
    new-instance p2, Lcom/miui/home/launcher/FolderGridView$4;

    invoke-direct {p2, p0}, Lcom/miui/home/launcher/FolderGridView$4;-><init>(Lcom/miui/home/launcher/FolderGridView;)V

    iput-object p2, p0, Lcom/miui/home/launcher/FolderGridView;->mConfirmAutoScroll:Ljava/lang/Runnable;

    .line 730
    iput-boolean v0, p0, Lcom/miui/home/launcher/FolderGridView;->isEdgeLineShow:Z

    const/4 p2, 0x3

    .line 116
    invoke-virtual {p0, p2}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 117
    invoke-virtual {p0, v0}, Landroid/widget/GridView;->setFocusable(Z)V

    .line 118
    new-instance p2, Lcom/miui/home/launcher/common/PreciseClickConfirmor;

    invoke-direct {p2, p1}, Lcom/miui/home/launcher/common/PreciseClickConfirmor;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/miui/home/launcher/FolderGridView;->mClickConfirmor:Lcom/miui/home/launcher/common/PreciseClickConfirmor;

    .line 119
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/miui/home/launcher/FolderGridView;->mEdgePaint:Landroid/graphics/Paint;

    .line 120
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0701c5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 121
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0600d7

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    .line 122
    iget-object p2, p0, Lcom/miui/home/launcher/FolderGridView;->mEdgePaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 p2, -0x1000000

    and-int/2addr p1, p2

    shr-int/lit8 p1, p1, 0x18

    .line 123
    iput p1, p0, Lcom/miui/home/launcher/FolderGridView;->mEdgeAlpha:I

    .line 124
    invoke-virtual {p0, v0}, Landroid/widget/GridView;->setHapticFeedbackEnabled(Z)V

    .line 125
    new-instance p1, Lcom/miui/home/launcher/FolderGridView$FolderLayoutAnimator;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/FolderGridView$FolderLayoutAnimator;-><init>(Lcom/miui/home/launcher/FolderGridView;)V

    iput-object p1, p0, Lcom/miui/home/launcher/FolderGridView;->mFolderLayoutAnimator:Lcom/miui/home/launcher/FolderGridView$FolderLayoutAnimator;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/FolderGridView;)Lcom/miui/home/launcher/ShortcutsAdapter;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/miui/home/launcher/FolderGridView;->mAdapter:Lcom/miui/home/launcher/ShortcutsAdapter;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/FolderGridView;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/miui/home/launcher/FolderGridView;->reorderItems()V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/home/launcher/FolderGridView;)I
    .locals 0

    .line 45
    iget p0, p0, Lcom/miui/home/launcher/FolderGridView;->mAutoScrollDirection:I

    return p0
.end method

.method static synthetic access$400(Lcom/miui/home/launcher/FolderGridView;)Lcom/miui/home/launcher/Launcher;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/miui/home/launcher/FolderGridView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-object p0
.end method

.method private appendDragObjectForDragEnter(Lcom/miui/home/launcher/DragObject;)V
    .locals 8

    .line 505
    iget-object v0, p0, Lcom/miui/home/launcher/FolderGridView;->mBackupDataForDragIn:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 508
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/FolderGridView;->mAdapter:Lcom/miui/home/launcher/ShortcutsAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/ShortcutsAdapter;->disableSaveWhenDatasetChanged(Z)V

    .line 509
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/FolderGridView;->saveBackupDataForDragging(Lcom/miui/home/launcher/DragObject;)V

    .line 510
    iget-object v0, p0, Lcom/miui/home/launcher/FolderGridView;->mAdapter:Lcom/miui/home/launcher/ShortcutsAdapter;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutsAdapter;->getFolderInfo()Lcom/miui/home/launcher/FolderInfo;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/FolderInfo;->contains(Lcom/miui/home/launcher/ShortcutInfo;)Z

    move-result v0

    .line 511
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 512
    invoke-direct {p0}, Lcom/miui/home/launcher/FolderGridView;->getLastCellX()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    .line 515
    :cond_1
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v6

    check-cast v6, Lcom/miui/home/launcher/ShortcutInfo;

    if-nez v5, :cond_2

    .line 516
    iget-object v7, p0, Lcom/miui/home/launcher/FolderGridView;->mAdapter:Lcom/miui/home/launcher/ShortcutsAdapter;

    iput-object v6, v7, Lcom/miui/home/launcher/ShortcutsAdapter;->mFirstDragItem:Lcom/miui/home/launcher/ShortcutInfo;

    :cond_2
    if-nez v0, :cond_3

    add-int v7, v3, v5

    add-int/2addr v7, v1

    .line 518
    iput v7, v6, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    .line 519
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 521
    :cond_3
    iget-object v6, p0, Lcom/miui/home/launcher/FolderGridView;->mAdapter:Lcom/miui/home/launcher/ShortcutsAdapter;

    iget-object v6, v6, Lcom/miui/home/launcher/ShortcutsAdapter;->mDragOverItems:Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v7

    check-cast v7, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    .line 523
    invoke-virtual {p1, v4}, Lcom/miui/home/launcher/DragObject;->nextDragView(Z)Z

    move-result v6

    if-nez v6, :cond_1

    .line 524
    iget-object p1, p0, Lcom/miui/home/launcher/FolderGridView;->mAdapter:Lcom/miui/home/launcher/ShortcutsAdapter;

    invoke-virtual {p1, v2}, Lcom/miui/home/launcher/ShortcutsAdapter;->addAll(Ljava/util/Collection;)V

    .line 525
    invoke-virtual {p0}, Landroid/widget/GridView;->layoutChildren()V

    return-void
.end method

.method private checkNearestViewByDrag(Lcom/miui/home/launcher/DragObject;)Z
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x0

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    move v3, v0

    .line 579
    :goto_0
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 580
    invoke-virtual {p0, v3}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 581
    iget-object v5, p0, Lcom/miui/home/launcher/FolderGridView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 582
    iget-object v5, p0, Lcom/miui/home/launcher/FolderGridView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    iget v6, p1, Lcom/miui/home/launcher/DragObject;->x:I

    sub-int/2addr v5, v6

    int-to-double v5, v5

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    iget-object v9, p0, Lcom/miui/home/launcher/FolderGridView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->centerY()I

    move-result v9

    iget v10, p1, Lcom/miui/home/launcher/DragObject;->y:I

    sub-int/2addr v9, v10

    int-to-double v9, v9

    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    add-double/2addr v5, v7

    double-to-float v5, v5

    .line 583
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/home/launcher/ShortcutInfo;

    cmpg-float v7, v5, v2

    if-gez v7, :cond_0

    .line 584
    iget-object v7, p0, Lcom/miui/home/launcher/FolderGridView;->mAdapter:Lcom/miui/home/launcher/ShortcutsAdapter;

    invoke-virtual {v7, v6}, Lcom/miui/home/launcher/ShortcutsAdapter;->enableReorder(Lcom/miui/home/launcher/ShortcutInfo;)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v1, v4

    move v2, v5

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    .line 589
    iget-object p1, p0, Lcom/miui/home/launcher/FolderGridView;->mLastHit:Landroid/view/View;

    if-eq v1, p1, :cond_2

    .line 590
    iput-object v1, p0, Lcom/miui/home/launcher/FolderGridView;->mLastHit:Landroid/view/View;

    const/4 p0, 0x1

    return p0

    :cond_2
    return v0
.end method

.method private getLastCellX()I
    .locals 0

    .line 434
    iget-object p0, p0, Lcom/miui/home/launcher/FolderGridView;->mAdapter:Lcom/miui/home/launcher/ShortcutsAdapter;

    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutsAdapter;->getLastItemCellXSafe()I

    move-result p0

    return p0
.end method

.method private isItemInfoAccepted(Lcom/miui/home/launcher/ItemInfo;)Z
    .locals 1

    .line 778
    iget p0, p1, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    const/4 p1, 0x1

    if-eqz p0, :cond_1

    if-eq p0, p1, :cond_1

    const/16 v0, 0x12

    if-eq p0, v0, :cond_1

    const/16 v0, 0xe

    if-eq p0, v0, :cond_1

    const/16 v0, 0xb

    if-eq p0, v0, :cond_1

    const/16 v0, 0x11

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :cond_1
    :goto_0
    return p1
.end method

.method private synthetic lambda$scrollNearestRow$1([II)V
    .locals 1

    .line 377
    iget-boolean v0, p0, Lcom/miui/home/launcher/FolderGridView;->isSwipeUp:Z

    if-eqz v0, :cond_0

    const/4 p2, 0x1

    aget p1, p1, p2

    invoke-virtual {p0}, Landroid/widget/GridView;->getPaddingTop()I

    move-result p2

    sub-int/2addr p1, p2

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/GridView;->getPaddingTop()I

    move-result p1

    sub-int p1, p2, p1

    :goto_0
    const/16 p2, 0x32

    invoke-virtual {p0, p1, p2}, Landroid/widget/GridView;->smoothScrollBy(II)V

    return-void
.end method

.method private synthetic lambda$scrollToLast$0()V
    .locals 1

    .line 358
    iget-object v0, p0, Lcom/miui/home/launcher/FolderGridView;->mAdapter:Lcom/miui/home/launcher/ShortcutsAdapter;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutsAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/FolderGridView;->smoothScrollToPos(I)V

    return-void
.end method

.method private makePositionSnapShot()V
    .locals 10

    .line 439
    iget-object v0, p0, Lcom/miui/home/launcher/FolderGridView;->mLastPosMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 440
    :cond_0
    invoke-virtual {p0}, Landroid/widget/GridView;->getFirstVisiblePosition()I

    move-result v0

    .line 441
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v1

    add-int/2addr v1, v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 443
    iget-object v3, p0, Lcom/miui/home/launcher/FolderGridView;->mAdapter:Lcom/miui/home/launcher/ShortcutsAdapter;

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    move v4, v3

    .line 444
    :goto_0
    iget-object v5, p0, Lcom/miui/home/launcher/FolderGridView;->mAdapter:Lcom/miui/home/launcher/ShortcutsAdapter;

    invoke-virtual {v5}, Lcom/miui/home/launcher/ShortcutsAdapter;->getCount()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 445
    iget-object v5, p0, Lcom/miui/home/launcher/FolderGridView;->mAdapter:Lcom/miui/home/launcher/ShortcutsAdapter;

    invoke-virtual {v5, v4}, Lcom/miui/home/launcher/ShortcutsAdapter;->getItem(I)Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object v5

    if-lt v4, v0, :cond_1

    if-gt v4, v1, :cond_1

    sub-int v6, v4, v0

    .line 447
    invoke-virtual {p0, v6}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 448
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_2

    .line 449
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 450
    invoke-virtual {v6, v7}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 451
    iget-object v6, p0, Lcom/miui/home/launcher/FolderGridView;->mLastPosMap:Ljava/util/HashMap;

    new-instance v8, Lcom/miui/home/launcher/FolderGridView$ItemProperties;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v8, v7, v2, v9}, Lcom/miui/home/launcher/FolderGridView$ItemProperties;-><init>(Landroid/graphics/Rect;ZLjava/lang/Integer;)V

    invoke-virtual {v6, v5, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 454
    :cond_1
    iget-object v6, p0, Lcom/miui/home/launcher/FolderGridView;->mLastPosMap:Ljava/util/HashMap;

    new-instance v7, Lcom/miui/home/launcher/FolderGridView$ItemProperties;

    const/4 v8, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v7, v8, v3, v9}, Lcom/miui/home/launcher/FolderGridView$ItemProperties;-><init>(Landroid/graphics/Rect;ZLjava/lang/Integer;)V

    invoke-virtual {v6, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private removeAutoScroll()V
    .locals 1

    .line 538
    invoke-virtual {p0}, Landroid/widget/GridView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 540
    iget-object p0, p0, Lcom/miui/home/launcher/FolderGridView;->mConfirmAutoScroll:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private reorderItems()V
    .locals 2

    .line 485
    iget-object v0, p0, Lcom/miui/home/launcher/FolderGridView;->mLastHit:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/home/launcher/FolderGridView;->mAdapter:Lcom/miui/home/launcher/ShortcutsAdapter;

    iget-object v1, v1, Lcom/miui/home/launcher/ShortcutsAdapter;->mFirstDragItem:Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eq v1, v0, :cond_2

    .line 486
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->getInstance()Lcom/miui/home/launcher/common/HapticFeedbackCompat;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->performSqueezePosition(Landroid/view/View;)V

    .line 487
    invoke-direct {p0}, Lcom/miui/home/launcher/FolderGridView;->makePositionSnapShot()V

    .line 488
    iget-object v0, p0, Lcom/miui/home/launcher/FolderGridView;->mAdapter:Lcom/miui/home/launcher/ShortcutsAdapter;

    iget-object v1, p0, Lcom/miui/home/launcher/FolderGridView;->mLastHit:Landroid/view/View;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/ShortcutInfo;

    :goto_0
    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/ShortcutsAdapter;->reorderItemByInsert(Lcom/miui/home/launcher/ShortcutInfo;)V

    .line 489
    iget-object p0, p0, Lcom/miui/home/launcher/FolderGridView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getFolderCling()Lcom/miui/home/launcher/FolderCling;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderCling;->getFolder()Lcom/miui/home/launcher/Folder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Folder;->updateBackgroundViewHeight()V

    :cond_2
    return-void
.end method

.method private restoreBackupDataForDragging(Lcom/miui/home/launcher/DragObject;)V
    .locals 4

    .line 418
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/FolderGridView;->mBackupDataForDragIn:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragView()Lcom/miui/home/launcher/DragView;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/FolderGridView$BackupDataForDragging;

    if-nez v0, :cond_1

    goto :goto_0

    .line 422
    :cond_1
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v1

    .line 423
    iget v2, v0, Lcom/miui/home/launcher/FolderGridView$BackupDataForDragging;->cellX:I

    iput v2, v1, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    .line 424
    iget v2, v0, Lcom/miui/home/launcher/FolderGridView$BackupDataForDragging;->cellY:I

    iput v2, v1, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    .line 425
    iget-wide v2, v0, Lcom/miui/home/launcher/FolderGridView$BackupDataForDragging;->container:J

    iput-wide v2, v1, Lcom/miui/home/launcher/ItemInfo;->container:J

    .line 426
    check-cast v1, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {v1}, Lcom/miui/home/launcher/ShortcutInfo;->getBuddyIconView()Landroid/view/View;

    move-result-object v2

    iget-object v3, v0, Lcom/miui/home/launcher/FolderGridView$BackupDataForDragging;->mBuddyIconView:Landroid/view/View;

    if-ne v2, v3, :cond_2

    .line 427
    invoke-virtual {v1}, Lcom/miui/home/launcher/ShortcutInfo;->getBuddyForParent()Landroid/view/ViewGroup;

    move-result-object v2

    iget-object v3, v0, Lcom/miui/home/launcher/FolderGridView$BackupDataForDragging;->mBuddyForParent:Landroid/view/ViewGroup;

    if-eq v2, v3, :cond_3

    .line 428
    :cond_2
    iget-object v2, v0, Lcom/miui/home/launcher/FolderGridView$BackupDataForDragging;->mBuddyIconView:Landroid/view/View;

    check-cast v2, Lcom/miui/home/launcher/IShortcutIcon;

    iget-object v0, v0, Lcom/miui/home/launcher/FolderGridView$BackupDataForDragging;->mBuddyForParent:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v0}, Lcom/miui/home/launcher/ShortcutInfo;->setBuddyIconView(Lcom/miui/home/launcher/IShortcutIcon;Landroid/view/ViewGroup;)V

    :cond_3
    :goto_0
    const/4 v0, 0x0

    .line 430
    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/DragObject;->nextDragView(Z)Z

    move-result v0

    if-nez v0, :cond_0

    return-void
.end method

.method private saveBackupDataForDragging(Lcom/miui/home/launcher/DragObject;)V
    .locals 3

    .line 406
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/FolderGridView;->mBackupDataForDragIn:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragView()Lcom/miui/home/launcher/DragView;

    move-result-object v1

    new-instance v2, Lcom/miui/home/launcher/FolderGridView$2;

    invoke-direct {v2, p0, p1}, Lcom/miui/home/launcher/FolderGridView$2;-><init>(Lcom/miui/home/launcher/FolderGridView;Lcom/miui/home/launcher/DragObject;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 413
    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/DragObject;->nextDragView(Z)Z

    move-result v0

    if-nez v0, :cond_0

    return-void
.end method


# virtual methods
.method public acceptDrop(Lcom/miui/home/launcher/DragObject;)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 768
    :goto_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDraggingSize()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 769
    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/DragObject;->getDragInfo(I)Lcom/miui/home/launcher/ItemInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 770
    invoke-direct {p0, v2}, Lcom/miui/home/launcher/FolderGridView;->isItemInfoAccepted(Lcom/miui/home/launcher/ItemInfo;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public addDragOverItem(Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/miui/home/launcher/FolderGridView;->mAdapter:Lcom/miui/home/launcher/ShortcutsAdapter;

    if-eqz p0, :cond_0

    .line 86
    iget-object p0, p0, Lcom/miui/home/launcher/ShortcutsAdapter;->mDragOverItems:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .line 207
    invoke-virtual {p0}, Landroid/widget/GridView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    invoke-super {p0, p1, p2, p3}, Landroid/widget/GridView;->addFocusables(Ljava/util/ArrayList;II)V

    :cond_0
    return-void
.end method

.method public afterDragStart()V
    .locals 4

    .line 842
    iget-object v0, p0, Lcom/miui/home/launcher/FolderGridView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getDragController()Lcom/miui/home/launcher/DragController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/DragController;->removeDragListener(Lcom/miui/home/launcher/DragController$DragListener;)V

    .line 843
    iget-object v0, p0, Lcom/miui/home/launcher/FolderGridView;->mBackupDragObject:Lcom/miui/home/launcher/DragObject;

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    iget v2, p0, Lcom/miui/home/launcher/FolderGridView;->mDragStartedIndex:I

    if-eq v2, v1, :cond_0

    .line 844
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/FolderGridView;->appendDragObjectForDragEnter(Lcom/miui/home/launcher/DragObject;)V

    .line 845
    invoke-direct {p0}, Lcom/miui/home/launcher/FolderGridView;->makePositionSnapShot()V

    .line 846
    iget-object v0, p0, Lcom/miui/home/launcher/FolderGridView;->mAdapter:Lcom/miui/home/launcher/ShortcutsAdapter;

    iget-object v2, v0, Lcom/miui/home/launcher/ShortcutsAdapter;->mFirstDragItem:Lcom/miui/home/launcher/ShortcutInfo;

    iget v2, v2, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    iget v3, p0, Lcom/miui/home/launcher/FolderGridView;->mDragStartedIndex:I

    invoke-virtual {v0, v2, v3}, Lcom/miui/home/launcher/ShortcutsAdapter;->reorderItemByIndex(II)V

    .line 848
    :cond_0
    iput v1, p0, Lcom/miui/home/launcher/FolderGridView;->mDragStartedIndex:I

    const/4 v0, 0x0

    .line 849
    iput-object v0, p0, Lcom/miui/home/launcher/FolderGridView;->mBackupDragObject:Lcom/miui/home/launcher/DragObject;

    return-void
.end method

.method public awakenScrollBar(IZ)V
    .locals 0

    .line 758
    invoke-virtual {p0, p1, p2}, Landroid/widget/GridView;->awakenScrollBars(IZ)Z

    return-void
.end method

.method public beforeDragStart(I)V
    .locals 0

    .line 837
    iput p1, p0, Lcom/miui/home/launcher/FolderGridView;->mDragStartedIndex:I

    .line 838
    iget-object p1, p0, Lcom/miui/home/launcher/FolderGridView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getDragController()Lcom/miui/home/launcher/DragController;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/DragController;->addDragListener(Lcom/miui/home/launcher/DragController$DragListener;)V

    return-void
.end method

.method public calculateGridViewItemPosition(Landroid/widget/GridView;I)Landroid/graphics/Point;
    .locals 5

    .line 392
    invoke-virtual {p1}, Landroid/widget/GridView;->getNumColumns()I

    move-result v0

    .line 393
    div-int v1, p2, v0

    .line 394
    rem-int v0, p2, v0

    .line 395
    invoke-virtual {p1}, Landroid/widget/GridView;->getColumnWidth()I

    move-result p1

    .line 396
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getFolderCellHeight()I

    move-result v2

    mul-int/2addr v0, p1

    .line 398
    invoke-virtual {p0}, Landroid/widget/GridView;->getVerticalSpacing()I

    move-result p1

    add-int/2addr p1, v2

    mul-int/2addr p1, v1

    .line 399
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "calculateGridViewItemPosition position:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " row:"

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " itemHeight:"

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " y:"

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "  getVerticalSpacing"

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/GridView;->getVerticalSpacing()I

    move-result p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "FolderGridView"

    invoke-static {p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    new-instance p0, Landroid/graphics/Point;

    invoke-direct {p0, v0, p1}, Landroid/graphics/Point;-><init>(II)V

    return-object p0
.end method

.method public calculateHeight()I
    .locals 6

    .line 130
    iget-object v0, p0, Lcom/miui/home/launcher/FolderGridView;->mBackupDragObject:Lcom/miui/home/launcher/DragObject;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/DragObject;->getDraggingSize()I

    move-result v0

    .line 131
    :goto_0
    iget-object v2, p0, Lcom/miui/home/launcher/FolderGridView;->mAdapter:Lcom/miui/home/launcher/ShortcutsAdapter;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/miui/home/launcher/ShortcutsAdapter;->getCount()I

    move-result v2

    add-int/2addr v2, v0

    :goto_1
    int-to-double v2, v2

    .line 133
    invoke-virtual {p0}, Landroid/widget/GridView;->getNumColumns()I

    move-result v0

    int-to-double v4, v0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    const/4 v2, 0x5

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_2

    move v0, v2

    .line 137
    :cond_2
    iget v3, p0, Lcom/miui/home/launcher/FolderGridView;->mLastRowNum:I

    if-eq v3, v0, :cond_3

    move v1, v2

    :cond_3
    iput-boolean v1, p0, Lcom/miui/home/launcher/FolderGridView;->mFolderRowChange:Z

    .line 138
    iput v0, p0, Lcom/miui/home/launcher/FolderGridView;->mLastRowNum:I

    .line 139
    iput v0, p0, Lcom/miui/home/launcher/FolderGridView;->mMaxRow:I

    .line 140
    invoke-virtual {p0}, Landroid/widget/GridView;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/GridView;->getPaddingBottom()I

    move-result v3

    add-int/2addr v1, v3

    .line 141
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getFolderCellHeight()I

    move-result v3

    mul-int/2addr v3, v0

    add-int/2addr v1, v3

    .line 142
    invoke-virtual {p0}, Landroid/widget/GridView;->getVerticalSpacing()I

    move-result p0

    sub-int/2addr v0, v2

    mul-int/2addr p0, v0

    add-int/2addr v1, p0

    return v1
.end method

.method public clearLastPosMap()V
    .locals 0

    .line 986
    iget-object p0, p0, Lcom/miui/home/launcher/FolderGridView;->mLastPosMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public computeVerticalScrollOffset()I
    .locals 0

    .line 833
    invoke-super {p0}, Landroid/widget/GridView;->computeVerticalScrollOffset()I

    move-result p0

    return p0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 875
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/miui/home/launcher/FolderGridView;->mIgnoreCancelEvent:Z

    if-eqz v0, :cond_0

    .line 876
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/FolderGridView;->setIgnoreCancelEvent(Z)V

    return v1

    .line 879
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/FolderGridView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isFolderOpened()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 882
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/GridView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 734
    invoke-super {p0, p1}, Landroid/widget/GridView;->draw(Landroid/graphics/Canvas;)V

    .line 735
    iget-object v0, p0, Lcom/miui/home/launcher/FolderGridView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getFolderCling()Lcom/miui/home/launcher/FolderCling;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderCling;->getFolder()Lcom/miui/home/launcher/Folder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Folder;->getDragedItem()Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-nez v0, :cond_4

    .line 736
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_4

    .line 737
    invoke-virtual {p0, v2}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    .line 738
    iget-object v3, p0, Lcom/miui/home/launcher/FolderGridView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v3}, Lcom/miui/home/launcher/Launcher;->isDrawEdgeLine()Z

    move-result v3

    if-eqz v3, :cond_4

    if-gez v0, :cond_1

    .line 739
    iget-object v0, p0, Lcom/miui/home/launcher/FolderGridView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 740
    iget-object v0, p0, Lcom/miui/home/launcher/FolderGridView;->mEdgePaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/miui/home/launcher/FolderGridView;->mEdgeAlpha:I

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderGridView;->getTopFadingEdgeStrength()F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 741
    invoke-virtual {p0}, Landroid/widget/GridView;->getWidth()I

    move-result v0

    int-to-float v7, v0

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/miui/home/launcher/FolderGridView;->mEdgePaint:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 743
    :cond_1
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 744
    invoke-virtual {p0}, Landroid/widget/GridView;->getHeight()I

    move-result v3

    if-le v0, v3, :cond_2

    iget-object v0, p0, Lcom/miui/home/launcher/FolderGridView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 745
    iget-object v0, p0, Lcom/miui/home/launcher/FolderGridView;->mEdgePaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/miui/home/launcher/FolderGridView;->mEdgeAlpha:I

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderGridView;->getBottomFadingEdgeStrength()F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v5, 0x0

    .line 746
    invoke-virtual {p0}, Landroid/widget/GridView;->getHeight()I

    move-result v0

    int-to-float v6, v0

    invoke-virtual {p0}, Landroid/widget/GridView;->getWidth()I

    move-result v0

    int-to-float v7, v0

    invoke-virtual {p0}, Landroid/widget/GridView;->getHeight()I

    move-result v0

    int-to-float v8, v0

    iget-object v9, p0, Lcom/miui/home/launcher/FolderGridView;->mEdgePaint:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 748
    :cond_2
    iget-object p1, p0, Lcom/miui/home/launcher/FolderGridView;->mEdgePaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/graphics/Paint;->getAlpha()I

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/miui/home/launcher/FolderGridView;->isEdgeLineShow:Z

    .line 751
    :cond_4
    iget-object p1, p0, Lcom/miui/home/launcher/FolderGridView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isFluencyTag()Z

    move-result p1

    if-eqz p1, :cond_5

    const/16 p1, 0x2766

    const-string v0, "Fluency_Test:ignore_range"

    .line 752
    invoke-static {v0, p1}, Landroid/os/Trace;->endAsyncSection(Ljava/lang/String;I)V

    .line 753
    iget-object p0, p0, Lcom/miui/home/launcher/FolderGridView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/Launcher;->setFluencyTag(Z)V

    :cond_5
    return-void
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 4

    .line 711
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 716
    invoke-virtual {p0, v0}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 717
    invoke-virtual {p0}, Landroid/widget/GridView;->getHeight()I

    move-result v1

    .line 718
    invoke-virtual {p0}, Landroid/widget/GridView;->getPaddingBottom()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    .line 719
    invoke-virtual {p0}, Landroid/widget/GridView;->getPaddingBottom()I

    move-result v3

    sub-int v3, v1, v3

    if-le v0, v3, :cond_1

    invoke-virtual {p0}, Landroid/widget/GridView;->getPaddingBottom()I

    move-result v3

    add-int/2addr v3, v1

    if-ge v0, v3, :cond_1

    sub-int/2addr v0, v1

    .line 720
    invoke-virtual {p0}, Landroid/widget/GridView;->getPaddingBottom()I

    move-result p0

    add-int/2addr v0, p0

    int-to-float p0, v0

    div-float/2addr p0, v2

    goto :goto_0

    :cond_1
    const/high16 p0, 0x3f800000    # 1.0f

    :goto_0
    return p0
.end method

.method public getChildCountWithoutCloudIcon()I
    .locals 3

    .line 687
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    .line 688
    :goto_0
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 689
    invoke-virtual {p0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lcom/miui/home/launcher/CloudShortcutIcon;

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public getChildView(I)Lcom/miui/home/launcher/DesktopIcon;
    .locals 1

    .line 679
    invoke-virtual {p0, p1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/home/launcher/ShortcutIcon;

    if-eqz v0, :cond_0

    .line 680
    invoke-virtual {p0, p1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/ShortcutIcon;

    return-object p0

    .line 682
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/ProgressShortcutIcon;

    return-object p0
.end method

.method public getDropAnnounceForAccessibility(Lcom/miui/home/launcher/DragObject;)Ljava/lang/String;
    .locals 2

    .line 225
    invoke-virtual {p0}, Landroid/widget/GridView;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p1

    iget p1, p1, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    add-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x0

    aput-object p1, v1, v0

    const p1, 0x7f10008e

    invoke-virtual {p0, p1, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDropTargetDelegate(Lcom/miui/home/launcher/DragObject;)Lcom/miui/home/launcher/DropTarget;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getHitView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public getMaxRow()I
    .locals 0

    .line 146
    iget p0, p0, Lcom/miui/home/launcher/FolderGridView;->mMaxRow:I

    return p0
.end method

.method public getOnDropAnnounce()Lcom/miui/home/launcher/DropTarget$OnDropAnnounce;
    .locals 0

    return-object p0
.end method

.method public getShortcutsAdapter()Lcom/miui/home/launcher/ShortcutsAdapter;
    .locals 0

    .line 176
    iget-object p0, p0, Lcom/miui/home/launcher/FolderGridView;->mAdapter:Lcom/miui/home/launcher/ShortcutsAdapter;

    return-object p0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 3

    .line 698
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 v0, 0x0

    .line 703
    invoke-virtual {p0, v0}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    .line 704
    invoke-virtual {p0}, Landroid/widget/GridView;->getPaddingTop()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    .line 705
    invoke-virtual {p0}, Landroid/widget/GridView;->getPaddingTop()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-virtual {p0}, Landroid/widget/GridView;->getPaddingTop()I

    move-result v2

    neg-int v2, v2

    if-le v0, v2, :cond_1

    invoke-virtual {p0}, Landroid/widget/GridView;->getPaddingTop()I

    move-result p0

    sub-int/2addr v0, p0

    neg-int p0, v0

    int-to-float p0, p0

    div-float/2addr p0, v1

    goto :goto_0

    :cond_1
    const/high16 p0, 0x3f800000    # 1.0f

    :goto_0
    return p0
.end method

.method public getVisionCenter([I)V
    .locals 0

    return-void
.end method

.method public getVisionOffset([I)V
    .locals 1

    .line 809
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 810
    invoke-virtual {p0, v0}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    .line 811
    instance-of v0, p0, Lcom/miui/home/launcher/DragController$VisualizeCalibration;

    if-eqz v0, :cond_0

    .line 812
    check-cast p0, Lcom/miui/home/launcher/DragController$VisualizeCalibration;

    invoke-interface {p0, p1}, Lcom/miui/home/launcher/DragController$VisualizeCalibration;->getVisionOffset([I)V

    :cond_0
    return-void
.end method

.method public getVisionRect(Landroid/graphics/Rect;)V
    .locals 0

    return-void
.end method

.method public hasOverlappingRendering()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isDropEnabled()Z
    .locals 2

    .line 231
    iget-object v0, p0, Lcom/miui/home/launcher/FolderGridView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    sget-object v1, Lcom/miui/home/launcher/LauncherState;->ALL_APPS:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/FolderGridView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isFolderCLingLayoutFinish()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/miui/home/launcher/FolderGridView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isFolderAnimating()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isEventDispatchDisabled()Z
    .locals 0

    .line 900
    iget-boolean p0, p0, Lcom/miui/home/launcher/FolderGridView;->mEventDispatchDisabled:Z

    return p0
.end method

.method public isFolderRowChange()Z
    .locals 0

    .line 959
    iget-boolean p0, p0, Lcom/miui/home/launcher/FolderGridView;->mFolderRowChange:Z

    return p0
.end method

.method public isIgnoreCancelEvent()Z
    .locals 0

    .line 892
    iget-boolean p0, p0, Lcom/miui/home/launcher/FolderGridView;->mIgnoreCancelEvent:Z

    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 934
    invoke-super {p0}, Landroid/widget/GridView;->onAttachedToWindow()V

    .line 935
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 936
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 942
    invoke-super {p0}, Landroid/widget/GridView;->onDetachedFromWindow()V

    .line 943
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 944
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onDragEnd(Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    return-void
.end method

.method public onDragEnter(Lcom/miui/home/launcher/DragObject;)V
    .locals 5

    .line 495
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/FolderGridView;->appendDragObjectForDragEnter(Lcom/miui/home/launcher/DragObject;)V

    const v0, 0x7f100071

    .line 496
    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/DragObject;->announce(I)V

    .line 497
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/FolderGridView;->checkNearestViewByDrag(Lcom/miui/home/launcher/DragObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 498
    invoke-direct {p0}, Lcom/miui/home/launcher/FolderGridView;->reorderItems()V

    .line 499
    invoke-virtual {p0}, Landroid/widget/GridView;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f100066

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v4

    iget v4, v4, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    add-int/2addr v4, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-virtual {p0, v0, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/DragObject;->announce(Ljava/lang/CharSequence;)V

    .line 501
    :cond_0
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p0

    new-instance p1, Lcom/miui/home/launcher/common/messages/FolderUpdateLayoutMessage;

    invoke-direct {p1}, Lcom/miui/home/launcher/common/messages/FolderUpdateLayoutMessage;-><init>()V

    invoke-virtual {p0, p1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onDragExit(Lcom/miui/home/launcher/DragObject;)V
    .locals 3

    .line 598
    iget-object v0, p0, Lcom/miui/home/launcher/FolderGridView;->mAdapter:Lcom/miui/home/launcher/ShortcutsAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/ShortcutsAdapter;->disableSaveWhenDatasetChanged(Z)V

    .line 599
    iput v1, p0, Lcom/miui/home/launcher/FolderGridView;->mAutoScrollDirection:I

    .line 600
    invoke-direct {p0}, Lcom/miui/home/launcher/FolderGridView;->removeAutoScroll()V

    .line 601
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->isDroped()Z

    move-result v0

    if-nez v0, :cond_0

    .line 602
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/FolderGridView;->restoreBackupDataForDragging(Lcom/miui/home/launcher/DragObject;)V

    .line 604
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/FolderGridView;->mBackupDataForDragIn:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x0

    .line 605
    iput-object v0, p0, Lcom/miui/home/launcher/FolderGridView;->mLastHit:Landroid/view/View;

    .line 606
    iget-object v1, p0, Lcom/miui/home/launcher/FolderGridView;->mLastPosMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 607
    invoke-direct {p0}, Lcom/miui/home/launcher/FolderGridView;->makePositionSnapShot()V

    .line 608
    invoke-virtual {p0}, Landroid/widget/GridView;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/FolderGridView;->mStayConfirm:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 609
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragView()Lcom/miui/home/launcher/DragView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/DragView;->isDropSucceeded()Z

    move-result p1

    if-nez p1, :cond_2

    .line 610
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_1

    .line 611
    invoke-virtual {p0, p1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 613
    :cond_1
    iget-object p1, p0, Lcom/miui/home/launcher/FolderGridView;->mAdapter:Lcom/miui/home/launcher/ShortcutsAdapter;

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutsAdapter;->removeAllDrags()V

    goto :goto_1

    .line 615
    :cond_2
    iget-object p1, p0, Lcom/miui/home/launcher/FolderGridView;->mAdapter:Lcom/miui/home/launcher/ShortcutsAdapter;

    iget-object p1, p1, Lcom/miui/home/launcher/ShortcutsAdapter;->mDragOverItems:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    .line 616
    iget-object p1, p0, Lcom/miui/home/launcher/FolderGridView;->mAdapter:Lcom/miui/home/launcher/ShortcutsAdapter;

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutsAdapter;->notifyDataSetChanged()V

    .line 618
    :goto_1
    iget-object p1, p0, Lcom/miui/home/launcher/FolderGridView;->mAdapter:Lcom/miui/home/launcher/ShortcutsAdapter;

    iput-object v0, p1, Lcom/miui/home/launcher/ShortcutsAdapter;->mFirstDragItem:Lcom/miui/home/launcher/ShortcutInfo;

    .line 619
    invoke-virtual {p0}, Landroid/widget/GridView;->getRootView()Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/home/launcher/Launcher;->performLayoutNow(Landroid/view/View;)V

    return-void
.end method

.method public onDragOver(Lcom/miui/home/launcher/DragObject;)V
    .locals 6

    .line 546
    iget-object v0, p0, Lcom/miui/home/launcher/FolderGridView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isInShortcutMenuState()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 550
    :cond_0
    invoke-virtual {p0}, Landroid/widget/GridView;->getTranslationY()F

    move-result v0

    invoke-virtual {p0}, Landroid/widget/GridView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget v1, p1, Lcom/miui/home/launcher/DragObject;->y:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/GridView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3e800000    # 0.25f

    mul-float/2addr v1, v2

    cmpg-float v0, v0, v1

    const/4 v1, 0x0

    const/4 v3, 0x1

    if-gez v0, :cond_1

    .line 551
    iget v0, p0, Lcom/miui/home/launcher/FolderGridView;->mAutoScrollDirection:I

    if-eq v0, v3, :cond_3

    .line 552
    invoke-direct {p0}, Lcom/miui/home/launcher/FolderGridView;->removeAutoScroll()V

    .line 553
    iput v3, p0, Lcom/miui/home/launcher/FolderGridView;->mAutoScrollDirection:I

    .line 554
    iget-object v0, p0, Lcom/miui/home/launcher/FolderGridView;->mConfirmAutoScroll:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/GridView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 556
    :cond_1
    iget v0, p1, Lcom/miui/home/launcher/DragObject;->y:I

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/widget/GridView;->getTranslationY()F

    move-result v4

    sub-float/2addr v0, v4

    invoke-virtual {p0}, Landroid/widget/GridView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v2

    cmpg-float v0, v0, v4

    if-gez v0, :cond_2

    .line 557
    iget v0, p0, Lcom/miui/home/launcher/FolderGridView;->mAutoScrollDirection:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_3

    .line 558
    invoke-direct {p0}, Lcom/miui/home/launcher/FolderGridView;->removeAutoScroll()V

    .line 559
    iput v2, p0, Lcom/miui/home/launcher/FolderGridView;->mAutoScrollDirection:I

    .line 560
    iget-object v0, p0, Lcom/miui/home/launcher/FolderGridView;->mConfirmAutoScroll:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/GridView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 563
    :cond_2
    iput v1, p0, Lcom/miui/home/launcher/FolderGridView;->mAutoScrollDirection:I

    .line 564
    invoke-direct {p0}, Lcom/miui/home/launcher/FolderGridView;->removeAutoScroll()V

    .line 567
    :cond_3
    :goto_0
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/FolderGridView;->checkNearestViewByDrag(Lcom/miui/home/launcher/DragObject;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 568
    invoke-virtual {p0}, Landroid/widget/GridView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/home/launcher/FolderGridView;->mStayConfirm:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 569
    iget-object v0, p0, Lcom/miui/home/launcher/FolderGridView;->mStayConfirm:Ljava/lang/Runnable;

    const-wide/16 v4, 0x12c

    invoke-virtual {p0, v0, v4, v5}, Landroid/widget/GridView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 571
    invoke-virtual {p0}, Landroid/widget/GridView;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f100066

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v4

    iget v4, v4, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    add-int/2addr v4, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-virtual {p0, v0, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 570
    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/DragObject;->announce(Ljava/lang/CharSequence;)V

    :cond_4
    return-void
.end method

.method public onDragStart([Lcom/miui/home/launcher/DragSource;Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    .line 854
    iput-object p2, p0, Lcom/miui/home/launcher/FolderGridView;->mBackupDragObject:Lcom/miui/home/launcher/DragObject;

    return-void
.end method

.method public onDrop(Lcom/miui/home/launcher/DragObject;)Z
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 241
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/ShortcutInfo;

    .line 243
    iget-wide v3, v2, Lcom/miui/home/launcher/ItemInfo;->id:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    iget-wide v3, v2, Lcom/miui/home/launcher/ItemInfo;->container:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    .line 246
    invoke-virtual {v2}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "folder"

    .line 244
    invoke-static {v4, v3}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackAllAppsDrag(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    :cond_0
    iget-object v3, v0, Lcom/miui/home/launcher/FolderGridView;->mItemsForDropping:Ljava/util/HashMap;

    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/DragObject;->getDragView()Lcom/miui/home/launcher/DragView;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    iget v3, v1, Lcom/miui/home/launcher/DragObject;->dropAction:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v3, v5, :cond_1

    move v3, v5

    goto :goto_0

    :cond_1
    move v3, v4

    :goto_0
    if-eqz v3, :cond_4

    .line 254
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/launcher/FolderGridView;->getLastCellX()I

    move-result v6

    add-int/2addr v6, v5

    iput v6, v2, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    .line 255
    iget-object v6, v0, Lcom/miui/home/launcher/FolderGridView;->mAdapter:Lcom/miui/home/launcher/ShortcutsAdapter;

    iget-object v6, v6, Lcom/miui/home/launcher/ShortcutsAdapter;->mDroppingDragViews:Ljava/util/HashMap;

    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/DragObject;->getDragView()Lcom/miui/home/launcher/DragView;

    move-result-object v7

    invoke-virtual {v6, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    iget-object v6, v0, Lcom/miui/home/launcher/FolderGridView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v6}, Lcom/miui/home/launcher/Launcher;->getLauncherMode()Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object v6

    iget-object v7, v0, Lcom/miui/home/launcher/FolderGridView;->mAdapter:Lcom/miui/home/launcher/ShortcutsAdapter;

    invoke-virtual {v7}, Lcom/miui/home/launcher/ShortcutsAdapter;->getFolderInfo()Lcom/miui/home/launcher/FolderInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/miui/home/launcher/FolderInfo;->getContents()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v6, v7, v2}, Lcom/miui/home/launcher/allapps/LauncherMode;->canAddToFolder(Ljava/util/Collection;Lcom/miui/home/launcher/ShortcutInfo;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 257
    iget-object v6, v0, Lcom/miui/home/launcher/FolderGridView;->mAdapter:Lcom/miui/home/launcher/ShortcutsAdapter;

    invoke-virtual {v6, v2}, Lcom/miui/home/launcher/ShortcutsAdapter;->add(Lcom/miui/home/launcher/ShortcutInfo;)V

    .line 259
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->getCount()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->getNumColumns()I

    move-result v7

    rem-int/2addr v6, v7

    if-ne v6, v5, :cond_3

    .line 260
    iget-object v6, v0, Lcom/miui/home/launcher/FolderGridView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v6}, Lcom/miui/home/launcher/Launcher;->getFolderCling()Lcom/miui/home/launcher/FolderCling;

    move-result-object v6

    invoke-static {v6}, Lcom/miui/home/launcher/Launcher;->performLayoutNow(Landroid/view/View;)V

    goto :goto_1

    .line 262
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->layoutChildren()V

    .line 267
    :cond_4
    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/GridView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v6

    .line 269
    new-instance v7, Lcom/miui/home/launcher/FolderGridView$1;

    invoke-direct {v7, v0, v2}, Lcom/miui/home/launcher/FolderGridView$1;-><init>(Lcom/miui/home/launcher/FolderGridView;Lcom/miui/home/launcher/ShortcutInfo;)V

    .line 275
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/DragObject;->getDragView()Lcom/miui/home/launcher/DragView;

    move-result-object v8

    if-nez v6, :cond_5

    .line 278
    invoke-virtual {v8}, Lcom/miui/home/launcher/DragView;->setFakeTargetMode()V

    move-object v6, v0

    .line 280
    :cond_5
    invoke-virtual {v8, v6}, Lcom/miui/home/launcher/DragView;->setAnimateTarget(Landroid/view/View;)Z

    .line 281
    invoke-virtual {v8}, Lcom/miui/home/launcher/DragView;->setNeedFadeOutIfNoParent()V

    .line 282
    invoke-virtual {v8, v7}, Lcom/miui/home/launcher/DragView;->setOnAnimationEndCallback(Ljava/lang/Runnable;)V

    if-eqz v3, :cond_6

    const/4 v6, 0x0

    .line 284
    invoke-virtual {v8, v6}, Landroid/view/ViewGroup;->setPivotX(F)V

    .line 285
    invoke-virtual {v8, v6}, Landroid/view/ViewGroup;->setPivotX(F)V

    .line 289
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/DragObject;->isLastObject()Z

    move-result v6

    if-eqz v6, :cond_12

    .line 290
    invoke-virtual {v0, v4}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    if-nez v6, :cond_7

    move v7, v4

    goto :goto_2

    .line 291
    :cond_7
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v7

    :goto_2
    if-nez v6, :cond_8

    move v6, v4

    goto :goto_3

    .line 292
    :cond_8
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    :goto_3
    const/4 v8, 0x2

    new-array v9, v8, [F

    .line 294
    iget-object v10, v0, Lcom/miui/home/launcher/FolderGridView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v10}, Lcom/miui/home/launcher/Launcher;->getDragLayer()Lcom/miui/home/launcher/DragLayer;

    move-result-object v10

    invoke-static {v0, v10, v9, v5, v4}, Lcom/miui/home/launcher/common/Utilities;->getDescendantCoordRelativeToAncestor(Landroid/view/View;Landroid/view/View;[FZZ)F

    move-result v10

    aget v11, v9, v4

    .line 295
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->getPaddingLeft()I

    move-result v12

    int-to-float v12, v12

    mul-float/2addr v12, v10

    add-float/2addr v11, v12

    aget v12, v9, v5

    .line 296
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->getPaddingTop()I

    move-result v13

    int-to-float v13, v13

    mul-float/2addr v13, v10

    add-float/2addr v12, v13

    .line 297
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->getWidth()I

    aget v9, v9, v5

    .line 298
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->getHeight()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->getPaddingBottom()I

    move-result v14

    sub-int/2addr v13, v14

    int-to-float v13, v13

    mul-float/2addr v13, v10

    add-float/2addr v9, v13

    if-nez v3, :cond_d

    .line 301
    iget-object v3, v0, Lcom/miui/home/launcher/FolderGridView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v3}, Lcom/miui/home/launcher/Launcher;->getDragViewContainer()Lcom/miui/home/launcher/widget/DragContainerLayout;

    move-result-object v3

    new-instance v6, Landroid/graphics/Rect;

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenWidth()I

    move-result v7

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenHeight()I

    move-result v8

    invoke-direct {v6, v4, v4, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3, v6}, Lcom/miui/home/launcher/widget/DragContainerLayout;->setDragDrawClipRect(Landroid/graphics/Rect;)V

    .line 302
    iget-object v3, v0, Lcom/miui/home/launcher/FolderGridView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v3}, Lcom/miui/home/launcher/Launcher;->getDragLayer()Lcom/miui/home/launcher/DragLayer;

    move-result-object v3

    new-instance v6, Landroid/graphics/Rect;

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenWidth()I

    move-result v7

    float-to-int v8, v9

    invoke-direct {v6, v4, v4, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3, v6}, Lcom/miui/home/launcher/SuperDraglayer;->setClipForDragging(Landroid/graphics/Rect;)V

    .line 305
    :goto_4
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v3

    if-ge v4, v3, :cond_b

    .line 306
    invoke-virtual {v0, v4}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 307
    iget-object v6, v0, Lcom/miui/home/launcher/FolderGridView;->mItemsForDropping:Ljava/util/HashMap;

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 308
    instance-of v6, v3, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;

    if-eqz v6, :cond_9

    move-object v6, v3

    check-cast v6, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;

    invoke-interface {v6}, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;->getGhostView()Lcom/miui/home/launcher/AutoLayoutAnimation$GhostView;

    move-result-object v7

    if-eqz v7, :cond_9

    .line 309
    invoke-interface {v6}, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;->getGhostView()Lcom/miui/home/launcher/AutoLayoutAnimation$GhostView;

    move-result-object v6

    invoke-interface {v6, v3}, Lcom/miui/home/launcher/AutoLayoutAnimation$GhostView;->updateAnimateTarget(Landroid/view/View;)V

    .line 311
    :cond_9
    iget-object v6, v0, Lcom/miui/home/launcher/FolderGridView;->mItemsForDropping:Ljava/util/HashMap;

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 316
    :cond_b
    iget-object v3, v0, Lcom/miui/home/launcher/FolderGridView;->mItemsForDropping:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-lez v3, :cond_10

    .line 317
    iget-object v3, v0, Lcom/miui/home/launcher/FolderGridView;->mItemsForDropping:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 318
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/home/launcher/DragView;

    const/4 v6, 0x4

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_5

    .line 320
    :cond_c
    iget-object v3, v0, Lcom/miui/home/launcher/FolderGridView;->mItemsForDropping:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    goto/16 :goto_8

    .line 323
    :cond_d
    iget-object v3, v0, Lcom/miui/home/launcher/FolderGridView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v3}, Lcom/miui/home/launcher/Launcher;->getDragLayer()Lcom/miui/home/launcher/DragLayer;

    move-result-object v3

    new-instance v13, Landroid/graphics/Rect;

    float-to-int v14, v12

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenWidth()I

    move-result v15

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenHeight()I

    move-result v8

    invoke-direct {v13, v4, v14, v15, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3, v13}, Lcom/miui/home/launcher/SuperDraglayer;->setClipForDragging(Landroid/graphics/Rect;)V

    .line 324
    iget-object v3, v0, Lcom/miui/home/launcher/FolderGridView;->mAdapter:Lcom/miui/home/launcher/ShortcutsAdapter;

    invoke-virtual {v3}, Lcom/miui/home/launcher/ShortcutsAdapter;->getCount()I

    move-result v3

    sub-int/2addr v3, v5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->getNumColumns()I

    move-result v8

    div-int/2addr v3, v8

    add-int/2addr v3, v5

    .line 326
    iget-object v8, v0, Lcom/miui/home/launcher/FolderGridView;->mItemsForDropping:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_f

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    .line 327
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/miui/home/launcher/ItemInfo;

    iget v14, v14, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    .line 328
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLayoutRtl()Z

    move-result v15

    if-eqz v15, :cond_e

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->getNumColumns()I

    move-result v15

    sub-int/2addr v15, v5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->getNumColumns()I

    move-result v16

    rem-int v16, v14, v16

    sub-int v15, v15, v16

    goto :goto_7

    :cond_e
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->getNumColumns()I

    move-result v15

    rem-int v15, v14, v15

    .line 330
    :goto_7
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->getColumnWidth()I

    move-result v16

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->getHorizontalSpacing()I

    move-result v17

    add-int v16, v16, v17

    mul-int v15, v15, v16

    int-to-float v15, v15

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->getColumnWidth()I

    move-result v16

    sub-int v4, v16, v6

    int-to-float v4, v4

    const/high16 v16, 0x40000000    # 2.0f

    div-float v4, v4, v16

    add-float/2addr v15, v4

    mul-float/2addr v15, v10

    add-float/2addr v15, v11

    .line 332
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->getNumColumns()I

    move-result v4

    div-int v4, v14, v4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->getVerticalSpacing()I

    move-result v18

    add-int v18, v7, v18

    mul-int v4, v4, v18

    int-to-float v4, v4

    mul-float/2addr v4, v10

    add-float/2addr v4, v12

    .line 334
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->getNumColumns()I

    move-result v18

    div-int v14, v14, v18

    sub-int v14, v3, v14

    sub-int/2addr v14, v5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->getVerticalSpacing()I

    move-result v18

    add-int v18, v7, v18

    mul-int v14, v14, v18

    add-int/2addr v14, v7

    int-to-float v14, v14

    mul-float/2addr v14, v10

    sub-float v14, v9, v14

    .line 336
    invoke-static {v4, v14}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 338
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/miui/home/launcher/DragView;

    invoke-virtual {v14, v10}, Lcom/miui/home/launcher/DragView;->setTargetScale(F)V

    .line 339
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/miui/home/launcher/DragView;

    const/4 v14, 0x2

    new-array v5, v14, [F

    .line 340
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/DragObject;->getDragView()Lcom/miui/home/launcher/DragView;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/view/ViewGroup;->getWidth()I

    move-result v14

    int-to-float v14, v14

    const/high16 v18, 0x3f800000    # 1.0f

    sub-float v18, v18, v10

    mul-float v14, v14, v18

    div-float v14, v14, v16

    sub-float/2addr v15, v14

    const/4 v14, 0x0

    aput v15, v5, v14

    .line 341
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/DragObject;->getDragView()Lcom/miui/home/launcher/DragView;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/ViewGroup;->getHeight()I

    move-result v15

    int-to-float v15, v15

    mul-float v15, v15, v18

    div-float v15, v15, v16

    sub-float/2addr v4, v15

    const/4 v15, 0x1

    aput v4, v5, v15

    .line 339
    invoke-virtual {v13, v5}, Lcom/miui/home/launcher/DragView;->updateAnimateTarget([F)V

    move v4, v14

    const/4 v5, 0x1

    goto/16 :goto_6

    .line 344
    :cond_f
    iget-object v3, v0, Lcom/miui/home/launcher/FolderGridView;->mItemsForDropping:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 345
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/FolderGridView;->scrollToLast()V

    .line 347
    :cond_10
    :goto_8
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/DragObject;->getDragSource()Lcom/miui/home/launcher/DragSource;

    move-result-object v3

    instance-of v3, v3, Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    if-eqz v3, :cond_11

    .line 348
    iget-object v3, v0, Lcom/miui/home/launcher/FolderGridView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v3, v1}, Lcom/miui/home/launcher/Launcher;->insertNewShortcutFromAllApps(Lcom/miui/home/launcher/DragObject;)V

    .line 351
    :cond_11
    iget-object v0, v0, Lcom/miui/home/launcher/FolderGridView;->mAdapter:Lcom/miui/home/launcher/ShortcutsAdapter;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutsAdapter;->saveContentPosition()V

    .line 353
    :cond_12
    invoke-virtual {v2}, Lcom/miui/home/launcher/ShortcutInfo;->finishPending()V

    const/4 v0, 0x1

    return v0
.end method

.method public onDropCompleted()V
    .locals 0

    .line 789
    iget-object p0, p0, Lcom/miui/home/launcher/FolderGridView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->exitMultiSelectEditModeIfNeed()V

    return-void
.end method

.method public onDropStart(Lcom/miui/home/launcher/DragObject;)V
    .locals 1

    .line 236
    new-instance v0, Lcom/miui/home/launcher/FolderGridView$FolderDropAnimationListener;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/launcher/FolderGridView$FolderDropAnimationListener;-><init>(Lcom/miui/home/launcher/FolderGridView;Lcom/miui/home/launcher/DragObject;)V

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/DragObject;->addDragAnimationListener(Lcom/miui/home/launcher/DragController$DropAnimationListener;)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 864
    iget-object v0, p0, Lcom/miui/home/launcher/FolderGridView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isFolderEditing()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 867
    :cond_0
    iget-boolean v0, p0, Lcom/miui/home/launcher/FolderGridView;->mEventDispatchDisabled:Z

    if-eqz v0, :cond_1

    return v1

    .line 870
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/GridView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 462
    invoke-super/range {p0 .. p5}, Landroid/widget/GridView;->onLayout(ZIIII)V

    .line 463
    iget-object p1, p0, Lcom/miui/home/launcher/FolderGridView;->mLastPosMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 464
    iget-object p1, p0, Lcom/miui/home/launcher/FolderGridView;->mFolderLayoutAnimator:Lcom/miui/home/launcher/FolderGridView$FolderLayoutAnimator;

    iget-object p2, p0, Lcom/miui/home/launcher/FolderGridView;->mAdapter:Lcom/miui/home/launcher/ShortcutsAdapter;

    iget-object p0, p0, Lcom/miui/home/launcher/FolderGridView;->mLastPosMap:Ljava/util/HashMap;

    invoke-virtual {p1, p2, p0}, Lcom/miui/home/launcher/FolderGridView$FolderLayoutAnimator;->startLayoutAnimation(Lcom/miui/home/launcher/ShortcutsAdapter;Ljava/util/HashMap;)V

    :cond_0
    return-void
.end method

.method public onLayoutAnimSkipToEnd()V
    .locals 3

    const/4 v0, 0x0

    .line 469
    :goto_0
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 470
    invoke-virtual {p0, v0}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 471
    invoke-virtual {v1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v2

    instance-of v2, v2, Landroid/view/animation/TranslateAnimation;

    if-eqz v2, :cond_0

    .line 472
    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 151
    invoke-super {p0, p1, p2}, Landroid/widget/GridView;->onMeasure(II)V

    .line 152
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderGridView;->calculateHeight()I

    move-result p1

    .line 153
    invoke-virtual {p0}, Landroid/widget/GridView;->getMeasuredHeight()I

    move-result p2

    .line 154
    invoke-virtual {p0}, Landroid/widget/GridView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-le p2, p1, :cond_0

    if-eqz v0, :cond_0

    .line 155
    iget p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    .line 157
    invoke-virtual {p0}, Landroid/widget/GridView;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p0, p2, p1}, Landroid/widget/GridView;->setMeasuredDimension(II)V

    :cond_0
    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/CellCountChangeMessage;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const/4 p1, 0x0

    .line 950
    :goto_0
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 951
    invoke-virtual {p0, p1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 952
    instance-of v1, v0, Lcom/miui/home/launcher/UpdateIconSize;

    if-eqz v1, :cond_0

    .line 953
    check-cast v0, Lcom/miui/home/launcher/UpdateIconSize;

    invoke-interface {v0}, Lcom/miui/home/launcher/UpdateIconSize;->updateSizeOnIconSizeChanged()V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onScreenSizeChanged()V
    .locals 4

    .line 91
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 93
    invoke-virtual {p0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 94
    instance-of v3, v2, Lcom/miui/home/launcher/UpdateIconSize;

    if-eqz v3, :cond_0

    .line 95
    check-cast v2, Lcom/miui/home/launcher/UpdateIconSize;

    invoke-interface {v2}, Lcom/miui/home/launcher/UpdateIconSize;->updateSizeOnIconSizeChanged()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 626
    iget-object v0, p0, Lcom/miui/home/launcher/FolderGridView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_0

    .line 627
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->endDragViewContainerBlurAnim()V

    .line 629
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/GridView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 630
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_3

    .line 631
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 632
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    .line 633
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v4

    sub-int/2addr v4, v2

    :goto_0
    if-ltz v4, :cond_3

    .line 635
    invoke-virtual {p0, v4}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 636
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_2

    .line 637
    iget-object v6, p0, Lcom/miui/home/launcher/FolderGridView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 638
    iget-object v6, p0, Lcom/miui/home/launcher/FolderGridView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v1, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 639
    iget-object v6, p0, Lcom/miui/home/launcher/FolderGridView;->mDownIcons:Ljava/util/List;

    if-nez v6, :cond_1

    .line 640
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/miui/home/launcher/FolderGridView;->mDownIcons:Ljava/util/List;

    .line 642
    :cond_1
    iget-object v6, p0, Lcom/miui/home/launcher/FolderGridView;->mDownIcons:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 643
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v5

    new-instance v6, Lcom/miui/home/launcher/common/messages/CancelEmptySpaceLongClickMessage;

    invoke-direct {v6}, Lcom/miui/home/launcher/common/messages/CancelEmptySpaceLongClickMessage;-><init>()V

    invoke-virtual {v5, v6}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 648
    :cond_3
    iget-object v1, p0, Lcom/miui/home/launcher/FolderGridView;->mClickConfirmor:Lcom/miui/home/launcher/common/PreciseClickConfirmor;

    invoke-virtual {v1, p1}, Lcom/miui/home/launcher/common/PreciseClickConfirmor;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 649
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-eq v1, v2, :cond_4

    .line 650
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v3, 0x3

    if-ne v1, v3, :cond_8

    .line 651
    :cond_4
    iget-object v1, p0, Lcom/miui/home/launcher/FolderGridView;->mDownIcons:Ljava/util/List;

    if-eqz v1, :cond_7

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    .line 652
    iget-object v1, p0, Lcom/miui/home/launcher/FolderGridView;->mDownIcons:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 653
    instance-of v4, v3, Lcom/miui/home/launcher/DesktopIcon;

    if-eqz v4, :cond_5

    .line 654
    check-cast v3, Lcom/miui/home/launcher/DesktopIcon;

    .line 655
    invoke-interface {v3}, Lcom/miui/home/launcher/DesktopIcon;->folmeUp()V

    .line 656
    invoke-interface {v3}, Lcom/miui/home/launcher/DesktopIcon;->resetHintClick()V

    goto :goto_1

    .line 659
    :cond_6
    iget-object v1, p0, Lcom/miui/home/launcher/FolderGridView;->mDownIcons:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :cond_7
    const/4 v1, 0x0

    .line 661
    iput-object v1, p0, Lcom/miui/home/launcher/FolderGridView;->mDownIcons:Ljava/util/List;

    .line 663
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v2, :cond_a

    .line 664
    iget-object v1, p0, Lcom/miui/home/launcher/FolderGridView;->mClickConfirmor:Lcom/miui/home/launcher/common/PreciseClickConfirmor;

    invoke-virtual {v1}, Lcom/miui/home/launcher/common/PreciseClickConfirmor;->confirmClick()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, v1, p1}, Landroid/widget/GridView;->pointToPosition(II)I

    move-result p1

    const/4 v1, -0x1

    if-ne v1, p1, :cond_a

    iget-object p1, p0, Lcom/miui/home/launcher/FolderGridView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 665
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result p1

    if-nez p1, :cond_a

    invoke-virtual {p0}, Landroid/widget/GridView;->getScaleY()F

    move-result p1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v1

    if-nez p1, :cond_a

    .line 667
    :cond_9
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    if-eqz p0, :cond_a

    .line 668
    instance-of p1, p0, Lcom/miui/home/launcher/Folder;

    if-eqz p1, :cond_9

    .line 669
    check-cast p0, Lcom/miui/home/launcher/Folder;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->performClick()Z

    :cond_a
    return v0
.end method

.method public onWallpaperColorChanged()V
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/miui/home/launcher/FolderGridView;->mAdapter:Lcom/miui/home/launcher/ShortcutsAdapter;

    if-eqz p0, :cond_0

    .line 102
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutsAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public prepareLayoutAnimation()V
    .locals 2

    .line 904
    iget-object v0, p0, Lcom/miui/home/launcher/FolderGridView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/FolderGridView;->mLastPosMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 905
    iget-object v0, p0, Lcom/miui/home/launcher/FolderGridView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    new-instance v1, Lcom/miui/home/launcher/FolderGridView$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/FolderGridView$$ExternalSyntheticLambda1;-><init>(Lcom/miui/home/launcher/FolderGridView;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public refreshEdgeLine()V
    .locals 1

    .line 725
    iget-boolean v0, p0, Lcom/miui/home/launcher/FolderGridView;->isEdgeLineShow:Z

    if-eqz v0, :cond_0

    .line 726
    invoke-virtual {p0}, Landroid/widget/GridView;->invalidate()V

    :cond_0
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 2

    .line 794
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    .line 795
    iget-object v1, p0, Lcom/miui/home/launcher/FolderGridView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->isFolderOpened()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 796
    invoke-direct {p0}, Lcom/miui/home/launcher/FolderGridView;->makePositionSnapShot()V

    .line 798
    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/FolderGridView;->mAdapter:Lcom/miui/home/launcher/ShortcutsAdapter;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/ShortcutsAdapter;->remove(Lcom/miui/home/launcher/ShortcutInfo;)V

    .line 800
    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    .line 802
    invoke-virtual {p0, p1}, Landroid/widget/GridView;->detachViewFromParent(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 803
    invoke-virtual {p0, p1, v0}, Landroid/widget/GridView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method public scrollNearestRow()V
    .locals 6

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 364
    iput-boolean v1, p0, Lcom/miui/home/launcher/FolderGridView;->isSwipeUp:Z

    .line 365
    iget-object v2, p0, Lcom/miui/home/launcher/FolderGridView;->mAdapter:Lcom/miui/home/launcher/ShortcutsAdapter;

    invoke-virtual {p0}, Landroid/widget/GridView;->getFirstVisiblePosition()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/ShortcutsAdapter;->getItemView(I)Landroid/view/View;

    move-result-object v2

    .line 367
    iget-object v3, p0, Lcom/miui/home/launcher/FolderGridView;->mAdapter:Lcom/miui/home/launcher/ShortcutsAdapter;

    invoke-virtual {v3}, Lcom/miui/home/launcher/ShortcutsAdapter;->getCount()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/GridView;->getFirstVisiblePosition()I

    move-result v4

    add-int/lit8 v4, v4, 0x3

    if-le v3, v4, :cond_0

    .line 368
    iget-object v3, p0, Lcom/miui/home/launcher/FolderGridView;->mAdapter:Lcom/miui/home/launcher/ShortcutsAdapter;

    invoke-virtual {p0}, Landroid/widget/GridView;->getFirstVisiblePosition()I

    move-result v4

    add-int/lit8 v4, v4, 0x3

    invoke-virtual {v3, v4}, Lcom/miui/home/launcher/ShortcutsAdapter;->getItemView(I)Landroid/view/View;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x1

    .line 370
    invoke-static {v2, p0, v0, v4}, Lcom/miui/home/launcher/common/Utilities;->getLocationInParent(Landroid/view/View;Landroid/view/View;[IZ)F

    aget v2, v0, v4

    if-eqz v3, :cond_2

    .line 373
    invoke-static {v3, p0, v0, v4}, Lcom/miui/home/launcher/common/Utilities;->getLocationInParent(Landroid/view/View;Landroid/view/View;[IZ)F

    .line 374
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    aget v5, v0, v4

    if-le v3, v5, :cond_1

    move v1, v4

    :cond_1
    iput-boolean v1, p0, Lcom/miui/home/launcher/FolderGridView;->isSwipeUp:Z

    .line 377
    :cond_2
    new-instance v1, Lcom/miui/home/launcher/FolderGridView$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, v0, v2}, Lcom/miui/home/launcher/FolderGridView$$ExternalSyntheticLambda2;-><init>(Lcom/miui/home/launcher/FolderGridView;[II)V

    invoke-virtual {p0, v1}, Landroid/widget/GridView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public scrollToLast()V
    .locals 1

    .line 358
    new-instance v0, Lcom/miui/home/launcher/FolderGridView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/FolderGridView$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/launcher/FolderGridView;)V

    invoke-virtual {p0, v0}, Landroid/widget/GridView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .line 45
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/FolderGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1

    .line 167
    instance-of v0, p1, Lcom/miui/home/launcher/ShortcutsAdapter;

    if-eqz v0, :cond_0

    .line 170
    move-object v0, p1

    check-cast v0, Lcom/miui/home/launcher/ShortcutsAdapter;

    iput-object v0, p0, Lcom/miui/home/launcher/FolderGridView;->mAdapter:Lcom/miui/home/launcher/ShortcutsAdapter;

    .line 171
    invoke-super {p0, p1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 172
    invoke-virtual {p0}, Landroid/widget/GridView;->clearDisappearingChildren()V

    return-void

    .line 168
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "adapter must be:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v0, Lcom/miui/home/launcher/ShortcutsAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setEventDispatchDisabled(Z)V
    .locals 0

    .line 896
    iput-boolean p1, p0, Lcom/miui/home/launcher/FolderGridView;->mEventDispatchDisabled:Z

    return-void
.end method

.method public setIgnoreCancelEvent(Z)V
    .locals 0

    .line 888
    iput-boolean p1, p0, Lcom/miui/home/launcher/FolderGridView;->mIgnoreCancelEvent:Z

    return-void
.end method

.method public setLauncher(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/miui/home/launcher/FolderGridView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-void
.end method

.method public smoothScrollToPos(I)V
    .locals 2

    .line 383
    invoke-virtual {p0}, Landroid/widget/GridView;->getFirstVisiblePosition()I

    move-result v0

    sub-int v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/GridView;->getNumColumns()I

    move-result v1

    div-int/2addr v0, v1

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 384
    invoke-virtual {p0, p0, p1}, Lcom/miui/home/launcher/FolderGridView;->calculateGridViewItemPosition(Landroid/widget/GridView;I)Landroid/graphics/Point;

    move-result-object p1

    .line 385
    iget p1, p1, Landroid/graphics/Point;->y:I

    const/16 v0, 0x7d0

    invoke-virtual {p0, p1, v0}, Landroid/widget/GridView;->smoothScrollBy(II)V

    goto :goto_0

    .line 387
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/GridView;->smoothScrollToPosition(I)V

    :goto_0
    return-void
.end method
