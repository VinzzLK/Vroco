.class public Lcom/miui/home/launcher/hotseats/HotSeatsListContent;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "HotSeatsListContent.java"

# interfaces
.implements Lcom/miui/home/launcher/hotseats/HotSeatsContent;
.implements Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/miui/launcher/sosc/interfaces/SoscingView;


# static fields
.field private static final RECT:Landroid/graphics/Rect;


# instance fields
.field private final mAdapter:Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;

.field private mDraggingEnterItem:Lcom/miui/home/launcher/ItemInfo;

.field private mHotSeats:Lcom/miui/home/launcher/hotseats/HotSeats;

.field private mInnerDraggingItem:Lcom/miui/home/launcher/ItemInfo;

.field private final mLauncher:Lcom/miui/home/launcher/Launcher;

.field private final mLayoutManager:Lcom/miui/home/launcher/hotseats/HotSeatsListContentFoldLayoutManager;

.field private mPendingAddItem:Lcom/miui/home/launcher/ItemInfo;

.field private mPendingRemoveItem:Lcom/miui/home/launcher/ItemInfo;

.field private final mRecentsProvider:Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;

.field private final mSeatsList:Lcom/miui/home/launcher/hotseats/HotSeatsList;


# direct methods
.method public static synthetic $r8$lambda$TxGg8annNASPDABcHHUq783SdYE(Lcom/miui/home/launcher/hotseats/HotSeatsListContent;)Z
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->lambda$new$0()Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$UXP2JhM3EjOgLYCukUpF_kyBRGE(Lcom/miui/home/launcher/hotseats/HotSeatsListContent;Lcom/miui/home/launcher/IShortcutIcon;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->lambda$setMamlIconPresent$1(Lcom/miui/home/launcher/IShortcutIcon;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 490
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->RECT:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 75
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 67
    iput-object p2, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mDraggingEnterItem:Lcom/miui/home/launcher/ItemInfo;

    .line 68
    iput-object p2, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mPendingAddItem:Lcom/miui/home/launcher/ItemInfo;

    .line 69
    iput-object p2, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mPendingRemoveItem:Lcom/miui/home/launcher/ItemInfo;

    .line 70
    iput-object p2, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mInnerDraggingItem:Lcom/miui/home/launcher/ItemInfo;

    const/4 p2, 0x0

    .line 76
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setMotionEventSplittingEnabled(Z)V

    .line 77
    invoke-static {p0}, Lcom/miui/home/launcher/Launcher;->getLauncher(Landroid/view/View;)Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 78
    new-instance v1, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;

    new-instance v2, Lcom/miui/home/launcher/hotseats/HotSeatsListContent$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/hotseats/HotSeatsListContent$$ExternalSyntheticLambda2;-><init>(Lcom/miui/home/launcher/hotseats/HotSeatsListContent;)V

    invoke-direct {v1, v2}, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;-><init>(Ljava/util/function/Supplier;)V

    iput-object v1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mRecentsProvider:Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;

    .line 79
    new-instance v2, Lcom/miui/home/launcher/hotseats/HotSeatsList;

    new-instance v3, Lcom/miui/home/launcher/hotseats/HotSeatsListContent$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/miui/home/launcher/hotseats/HotSeatsListContent$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/launcher/hotseats/HotSeatsListContent;)V

    invoke-direct {v2, p1, v1, v3}, Lcom/miui/home/launcher/hotseats/HotSeatsList;-><init>(Landroid/content/Context;Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;Ljava/util/function/BooleanSupplier;)V

    iput-object v2, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mSeatsList:Lcom/miui/home/launcher/hotseats/HotSeatsList;

    .line 80
    new-instance v1, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;

    invoke-direct {v1, v0, v2, p0}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;-><init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/hotseats/HotSeatsList;Landroid/view/View$OnLongClickListener;)V

    iput-object v1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mAdapter:Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;

    .line 81
    invoke-virtual {v2, v1}, Lcom/miui/home/launcher/hotseats/HotSeatsList;->setAdapter(Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;)V

    .line 82
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 83
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFoldDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentFoldLayoutManager;

    invoke-direct {v0, p1, p0, v1}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentFoldLayoutManager;-><init>(Landroid/content/Context;Lcom/miui/home/launcher/hotseats/HotSeatsListContent;Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentPadLayoutManager;

    invoke-direct {v0, p1, p0, v1}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentPadLayoutManager;-><init>(Landroid/content/Context;Lcom/miui/home/launcher/hotseats/HotSeatsListContent;Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;)V

    :goto_0
    iput-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mLayoutManager:Lcom/miui/home/launcher/hotseats/HotSeatsListContentFoldLayoutManager;

    .line 84
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 85
    invoke-virtual {v0}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentFoldLayoutManager;->getDecoration()Lcom/miui/home/launcher/hotseats/HotSeatsListContentFoldLayoutManager$OffsetDecoration;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 86
    new-instance p1, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;

    invoke-direct {p1}, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;-><init>()V

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 88
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object p1

    if-eqz p1, :cond_1

    const-wide/16 v0, 0xc8

    .line 90
    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setMoveDuration(J)V

    const-wide/16 v0, 0x96

    .line 91
    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setChangeDuration(J)V

    .line 93
    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    move-result-object p1

    const/16 v0, 0x80

    invoke-virtual {p1, v0, p2}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    .line 94
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    move-result-object p1

    const/16 v0, 0x100

    invoke-virtual {p1, v0, p2}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    .line 95
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    move-result-object p1

    const/16 v0, 0x20

    invoke-virtual {p1, v0, p2}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    .line 96
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    move-result-object p1

    const/16 v0, 0x10

    invoke-virtual {p1, v0, p2}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    .line 97
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0, p2}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    .line 98
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    return-void
.end method

.method private findInsertPosition(I)I
    .locals 5

    .line 497
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mLayoutManager:Lcom/miui/home/launcher/hotseats/HotSeatsListContentFoldLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 498
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mLayoutManager:Lcom/miui/home/launcher/hotseats/HotSeatsListContentFoldLayoutManager;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    .line 499
    instance-of v2, v0, Lcom/miui/home/launcher/hotseats/FlexboxItemContainer;

    if-eqz v2, :cond_1

    .line 500
    sget-object v2, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->RECT:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    .line 501
    invoke-virtual {p0, v0, v2}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 502
    iget v3, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 503
    iget v3, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 504
    check-cast v0, Lcom/miui/home/launcher/hotseats/FlexboxItemContainer;

    .line 505
    invoke-virtual {v0}, Lcom/miui/home/launcher/hotseats/FlexboxItemContainer;->getTargetScale()F

    move-result v0

    .line 504
    invoke-static {v2, v0}, Lcom/miui/home/recents/util/Utilities;->scaleRectAboutCenter(Landroid/graphics/Rect;F)V

    .line 506
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, p1

    goto :goto_0

    :cond_0
    iget v0, v2, Landroid/graphics/Rect;->left:I

    sub-int v0, p1, v0

    .line 507
    :goto_0
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result p1

    div-int/2addr v0, p1

    iget-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mLayoutManager:Lcom/miui/home/launcher/hotseats/HotSeatsListContentFoldLayoutManager;

    .line 508
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result p1

    .line 507
    invoke-static {v0, v1, p1}, Lcom/miui/home/launcher/common/Utilities;->boundToRange(III)I

    move-result v1

    .line 512
    :cond_1
    iget-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mAdapter:Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;

    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->canDropOver(I)Z

    move-result p1

    if-nez p1, :cond_3

    .line 513
    iget-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mAdapter:Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;

    add-int/lit8 v0, v1, -0x1

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->canDropOver(I)Z

    move-result p1

    if-eqz p1, :cond_2

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 515
    :cond_2
    iget-object p0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mAdapter:Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;

    add-int/lit8 p1, v1, 0x1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->canDropOver(I)Z

    move-result p0

    if-eqz p0, :cond_3

    move v1, p1

    :cond_3
    :goto_1
    return v1
.end method

.method private synthetic lambda$new$0()Z
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/BaseActivity;->isUserActive()Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$setMamlIconPresent$1(Lcom/miui/home/launcher/IShortcutIcon;)V
    .locals 0

    .line 187
    invoke-interface {p1}, Lcom/miui/home/launcher/IShortcutIcon;->getShortcutInfo()Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->updateDrawableState(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private layoutImmediately()V
    .locals 0

    .line 381
    invoke-static {p0}, Lcom/miui/home/launcher/Launcher;->performLayoutNow(Landroid/view/View;)V

    return-void
.end method

.method private onDrag(Lcom/miui/home/launcher/DragObject;)V
    .locals 2

    .line 404
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isDragDisable()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 407
    :cond_0
    iget v0, p1, Lcom/miui/home/launcher/DragObject;->x:I

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->findInsertPosition(I)I

    move-result v0

    if-ltz v0, :cond_2

    .line 409
    iget-object v1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mSeatsList:Lcom/miui/home/launcher/hotseats/HotSeatsList;

    invoke-virtual {v1}, Lcom/miui/home/launcher/hotseats/HotSeatsList;->hasOutlineItem()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 410
    iget-object p0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mSeatsList:Lcom/miui/home/launcher/hotseats/HotSeatsList;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/hotseats/HotSeatsList;->updateOutlineItem(I)V

    goto :goto_0

    .line 412
    :cond_1
    iget-object p0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mSeatsList:Lcom/miui/home/launcher/hotseats/HotSeatsList;

    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getOutline()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragVisualizeOffsetY()I

    move-result p1

    invoke-virtual {p0, v1, p1, v0}, Lcom/miui/home/launcher/hotseats/HotSeatsList;->addOutlineItem(Landroid/graphics/Bitmap;II)V

    :cond_2
    :goto_0
    return-void
.end method

.method private requestUpdateRecommendTasksWhenItemsChange(Lcom/miui/home/launcher/ItemInfo;)V
    .locals 1

    .line 392
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mInnerDraggingItem:Lcom/miui/home/launcher/ItemInfo;

    if-ne v0, p1, :cond_0

    return-void

    .line 395
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mRecentsProvider:Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;

    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->requestUpdateRecommendTasks()V

    return-void
.end method

.method private resolveRightfulItemInfo(Lcom/miui/home/launcher/DragObject;)Lcom/miui/home/launcher/ItemInfo;
    .locals 2

    .line 364
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p1

    .line 366
    invoke-virtual {p1}, Lcom/miui/home/launcher/ItemInfo;->isInHotseatRecommend()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/miui/home/launcher/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 368
    iget-object p0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/Launcher;->getFirstAppInfo(Ljava/lang/String;Z)Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    return-object p1
.end method


# virtual methods
.method public acceptDrop(Lcom/miui/home/launcher/DragObject;)Z
    .locals 3

    .line 429
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mHotSeats:Lcom/miui/home/launcher/hotseats/HotSeats;

    invoke-virtual {v0}, Lcom/miui/home/launcher/hotseats/HotSeats;->isLoading()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 432
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->isSeatsFull()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 435
    :cond_1
    iget v0, p1, Lcom/miui/home/launcher/DragObject;->dragAction:I

    const/4 v2, 0x6

    if-ne v0, v2, :cond_2

    return v1

    .line 438
    :cond_2
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsContent;->acceptItem(Lcom/miui/home/launcher/ItemInfo;)Z

    move-result p0

    return p0
.end method

.method public addDesktopIcon(Lcom/miui/home/launcher/ItemInfo;IZ)Landroid/view/View;
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mPendingAddItem:Lcom/miui/home/launcher/ItemInfo;

    .line 159
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->requestUpdateRecommendTasksWhenItemsChange(Lcom/miui/home/launcher/ItemInfo;)V

    const/4 p3, 0x0

    .line 160
    iput-object p3, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mPendingAddItem:Lcom/miui/home/launcher/ItemInfo;

    .line 162
    iput p2, p1, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    .line 163
    iget-object p2, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mSeatsList:Lcom/miui/home/launcher/hotseats/HotSeatsList;

    invoke-virtual {p2, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsList;->addItemInfo(Lcom/miui/home/launcher/ItemInfo;)V

    .line 164
    invoke-direct {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->layoutImmediately()V

    .line 165
    invoke-interface {p0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsContent;->findViewWithTag(Lcom/miui/home/launcher/ItemInfo;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public finishLoading()V
    .locals 2

    .line 138
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mHotSeats:Lcom/miui/home/launcher/hotseats/HotSeats;

    iget-object v1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mSeatsList:Lcom/miui/home/launcher/hotseats/HotSeatsList;

    invoke-virtual {v1}, Lcom/miui/home/launcher/hotseats/HotSeatsList;->getItemInfoList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/hotseats/HotSeats;->saveSeats(Ljava/util/List;)V

    .line 139
    iget-object p0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mSeatsList:Lcom/miui/home/launcher/hotseats/HotSeatsList;

    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsList;->onRecommendUpdate()V

    return-void
.end method

.method public getAllItemList()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/IShortcutIcon;",
            ">;"
        }
    .end annotation

    .line 200
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 201
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 202
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/hotseats/FlexboxItemContainer;

    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 205
    instance-of v4, v3, Lcom/miui/home/launcher/IShortcutIcon;

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    .line 206
    move-object v5, v3

    check-cast v5, Lcom/miui/home/launcher/IShortcutIcon;

    .line 207
    invoke-interface {v5}, Lcom/miui/home/launcher/IShortcutIcon;->getShortcutInfo()Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object v3

    goto :goto_1

    :cond_0
    move-object v3, v5

    :goto_1
    if-eqz v5, :cond_1

    if-eqz v3, :cond_1

    .line 209
    iget-wide v3, v3, Lcom/miui/home/launcher/ItemInfo;->container:J

    const-wide/16 v6, -0x66

    cmp-long v3, v3, v6

    if-nez v3, :cond_1

    .line 210
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public bridge synthetic getContainerId()J
    .locals 2

    invoke-super {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsContent;->getContainerId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentShowShortcutIcons()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/IShortcutIcon;",
            ">;"
        }
    .end annotation

    .line 487
    invoke-static {p0}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawableUtils;->getAllShortcutIconsFromParent(Landroid/view/ViewGroup;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getHitView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method getHotSeatsItemsIncludeDragging()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/ItemInfo;",
            ">;"
        }
    .end annotation

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mSeatsList:Lcom/miui/home/launcher/hotseats/HotSeatsList;

    invoke-virtual {v1}, Lcom/miui/home/launcher/hotseats/HotSeatsList;->getItemInfoList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 109
    iget-object v1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mDraggingEnterItem:Lcom/miui/home/launcher/ItemInfo;

    if-eqz v1, :cond_0

    .line 110
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mPendingAddItem:Lcom/miui/home/launcher/ItemInfo;

    if-eqz v1, :cond_1

    .line 113
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    :cond_1
    iget-object p0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mPendingRemoveItem:Lcom/miui/home/launcher/ItemInfo;

    if-eqz p0, :cond_2

    .line 116
    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_2
    return-object v0
.end method

.method public getItemInfoList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/ItemInfo;",
            ">;"
        }
    .end annotation

    .line 217
    iget-object p0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mSeatsList:Lcom/miui/home/launcher/hotseats/HotSeatsList;

    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsList;->getItemInfoList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getOnDropAnnounce()Lcom/miui/home/launcher/DropTarget$OnDropAnnounce;
    .locals 0

    .line 448
    iget-object p0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mHotSeats:Lcom/miui/home/launcher/hotseats/HotSeats;

    return-object p0
.end method

.method public getRebindTargetView(Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 193
    instance-of p0, p1, Lcom/miui/home/launcher/hotseats/FlexboxItemContainer;

    if-eqz p0, :cond_0

    .line 194
    check-cast p1, Lcom/miui/home/launcher/hotseats/FlexboxItemContainer;

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p1
.end method

.method public getUserPresentAnimationChildList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 269
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 270
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 271
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public isIconNotFindOrRemoved(Landroid/view/View;)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x1

    return p0

    .line 317
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 318
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->isItemRemoved()Z

    move-result p0

    return p0
.end method

.method public isSeatsFull()Z
    .locals 0

    .line 148
    iget-object p0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mSeatsList:Lcom/miui/home/launcher/hotseats/HotSeatsList;

    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsList;->isFull()Z

    move-result p0

    return p0
.end method

.method public keepDataConsistent(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .line 169
    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->refreshSearchIcon()V

    if-eqz p1, :cond_0

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HotSeats ListView addItemList size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher.HotSeatsListContent"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mSeatsList:Lcom/miui/home/launcher/hotseats/HotSeatsList;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsList;->updateItemIcons(Ljava/util/List;)V

    .line 173
    invoke-interface {p0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsContent;->rebindItemInfo(Ljava/util/List;)V

    .line 175
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->onConfigChangeUpdateRecommend()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 524
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView;->onAttachedToWindow()V

    .line 525
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mRecentsProvider:Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;

    invoke-virtual {v0}, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->onAttachedToWindow()V

    .line 526
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mSeatsList:Lcom/miui/home/launcher/hotseats/HotSeatsList;

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 527
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    iget-object p0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mSeatsList:Lcom/miui/home/launcher/hotseats/HotSeatsList;

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onConfigChangeUpdateRecommend()V
    .locals 1

    .line 143
    iget-object p0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mRecentsProvider:Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->handleUpdateRecommendTasks(Z)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 533
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView;->onDetachedFromWindow()V

    .line 534
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mRecentsProvider:Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;

    invoke-virtual {v0}, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->onDetachedFromWindow()V

    .line 535
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mSeatsList:Lcom/miui/home/launcher/hotseats/HotSeatsList;

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 536
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    iget-object p0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mSeatsList:Lcom/miui/home/launcher/hotseats/HotSeatsList;

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onDragCompleted(Lcom/miui/home/launcher/DropTarget;Lcom/miui/home/launcher/DragObject;)V
    .locals 2

    .line 283
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mSeatsList:Lcom/miui/home/launcher/hotseats/HotSeatsList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/hotseats/HotSeatsList;->setCantAddToLauncherDraggingItem(Lcom/miui/home/launcher/ItemInfo;)V

    .line 284
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mSeatsList:Lcom/miui/home/launcher/hotseats/HotSeatsList;

    invoke-virtual {v0}, Lcom/miui/home/launcher/hotseats/HotSeatsList;->removeOutlineItem()V

    .line 285
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mHotSeats:Lcom/miui/home/launcher/hotseats/HotSeats;

    iget-object v1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mSeatsList:Lcom/miui/home/launcher/hotseats/HotSeatsList;

    invoke-virtual {v1}, Lcom/miui/home/launcher/hotseats/HotSeatsList;->getItemInfoList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/hotseats/HotSeats;->saveSeats(Ljava/util/List;)V

    .line 286
    invoke-interface {p0, p1, p2}, Lcom/miui/home/launcher/hotseats/HotSeatsContent;->updateFolderMessageWhenDrag(Lcom/miui/home/launcher/DropTarget;Lcom/miui/home/launcher/DragObject;)V

    return-void
.end method

.method public onDragEnter(Lcom/miui/home/launcher/DragObject;)V
    .locals 1

    .line 386
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mDraggingEnterItem:Lcom/miui/home/launcher/ItemInfo;

    .line 387
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->requestUpdateRecommendTasksWhenItemsChange(Lcom/miui/home/launcher/ItemInfo;)V

    .line 388
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->onDrag(Lcom/miui/home/launcher/DragObject;)V

    return-void
.end method

.method public onDragExit(Lcom/miui/home/launcher/DragObject;)V
    .locals 1

    const/4 v0, 0x0

    .line 419
    iput-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mDraggingEnterItem:Lcom/miui/home/launcher/ItemInfo;

    .line 420
    iput-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mInnerDraggingItem:Lcom/miui/home/launcher/ItemInfo;

    .line 421
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->isDroped()Z

    move-result p1

    if-nez p1, :cond_0

    .line 422
    iget-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mRecentsProvider:Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;

    invoke-virtual {p1}, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->requestUpdateRecommendTasks()V

    .line 424
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mSeatsList:Lcom/miui/home/launcher/hotseats/HotSeatsList;

    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsList;->removeOutlineItem()V

    return-void
.end method

.method public onDragOver(Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    .line 400
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->onDrag(Lcom/miui/home/launcher/DragObject;)V

    return-void
.end method

.method public onDrop(Lcom/miui/home/launcher/DragObject;)Z
    .locals 6

    .line 324
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    .line 325
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->resolveRightfulItemInfo(Lcom/miui/home/launcher/DragObject;)Lcom/miui/home/launcher/ItemInfo;

    move-result-object v1

    .line 330
    iget-object v2, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mSeatsList:Lcom/miui/home/launcher/hotseats/HotSeatsList;

    invoke-virtual {v2}, Lcom/miui/home/launcher/hotseats/HotSeatsList;->hasOutlineItem()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/launcher/ItemInfo;->isInHotseatRecommend()Z

    move-result v2

    if-eqz v2, :cond_0

    instance-of v2, v0, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v2, :cond_0

    .line 331
    iget-object v2, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v2

    move-object v3, v1

    check-cast v3, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/Workspace;->removeShortcuts(Ljava/util/List;)V

    .line 334
    :cond_0
    iget-object v2, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mSeatsList:Lcom/miui/home/launcher/hotseats/HotSeatsList;

    invoke-virtual {v2, v1}, Lcom/miui/home/launcher/hotseats/HotSeatsList;->replaceOutline(Lcom/miui/home/launcher/ItemInfo;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 335
    iget-wide v2, v1, Lcom/miui/home/launcher/ItemInfo;->id:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    iget-wide v2, v1, Lcom/miui/home/launcher/ItemInfo;->container:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    instance-of v2, v1, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v2, :cond_1

    .line 337
    move-object v2, v1

    check-cast v2, Lcom/miui/home/launcher/ShortcutInfo;

    .line 339
    invoke-virtual {v2}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "dock"

    .line 337
    invoke-static {v3, v2}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackAllAppsDrag(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    :cond_1
    invoke-direct {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->layoutImmediately()V

    .line 344
    invoke-interface {p0, v1}, Lcom/miui/home/launcher/hotseats/HotSeatsContent;->findViewWithTag(Lcom/miui/home/launcher/ItemInfo;)Landroid/view/View;

    move-result-object v2

    .line 345
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragView()Lcom/miui/home/launcher/DragView;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/miui/home/launcher/DragView;->setAnimateTarget(Landroid/view/View;)Z

    .line 346
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragSource()Lcom/miui/home/launcher/DragSource;

    move-result-object v2

    instance-of v2, v2, Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    if-eqz v2, :cond_2

    .line 347
    iget-object v2, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v2, p1}, Lcom/miui/home/launcher/Launcher;->insertNewShortcutFromAllApps(Lcom/miui/home/launcher/DragObject;)V

    .line 349
    :cond_2
    iget-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mHotSeats:Lcom/miui/home/launcher/hotseats/HotSeats;

    iget-object p0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mSeatsList:Lcom/miui/home/launcher/hotseats/HotSeatsList;

    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsList;->getItemInfoList()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/hotseats/HotSeats;->saveSeats(Ljava/util/List;)V

    .line 350
    invoke-virtual {v0}, Lcom/miui/home/launcher/ItemInfo;->finishPending()V

    .line 351
    instance-of p0, v1, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz p0, :cond_3

    .line 352
    check-cast v1, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-static {v1}, Lcom/miui/home/launcher/hybrid/HybridController;->trackMoveOutsideFolder(Lcom/miui/home/launcher/ShortcutInfo;)V

    :cond_3
    const/4 p0, 0x1

    return p0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method public onDropBack(Lcom/miui/home/launcher/DragObject;)V
    .locals 3

    .line 299
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mSeatsList:Lcom/miui/home/launcher/hotseats/HotSeatsList;

    invoke-virtual {v0}, Lcom/miui/home/launcher/hotseats/HotSeatsList;->removeOutlineItem()V

    if-nez p1, :cond_0

    return-void

    .line 301
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/miui/home/launcher/hotseats/HotSeatsContent;->findViewWithTag(Lcom/miui/home/launcher/ItemInfo;)Landroid/view/View;

    move-result-object v0

    .line 302
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->isIconNotFindOrRemoved(Landroid/view/View;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 303
    iget v0, p1, Lcom/miui/home/launcher/DragObject;->dragAction:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    return-void

    .line 306
    :cond_1
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v1

    iget v1, v1, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->addDesktopIcon(Lcom/miui/home/launcher/ItemInfo;IZ)Landroid/view/View;

    move-result-object v0

    .line 308
    :cond_2
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragView()Lcom/miui/home/launcher/DragView;

    move-result-object p0

    .line 309
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/DragView;->setAnimateTarget(Landroid/view/View;)Z

    .line 310
    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/DragView;->setNeedOffsetCalculation(Z)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 103
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 104
    iget-object p0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mRecentsProvider:Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;

    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->requestUpdateRecommendTasks()V

    return-void
.end method

.method public onInterceptSoscEvent(Lcom/miui/launcher/sosc/module/SoscEvent;Lcom/miui/launcher/sosc/module/SoscEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 4

    .line 453
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mLauncher:Lcom/miui/home/launcher/Launcher;

    iget-object v1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mHotSeats:Lcom/miui/home/launcher/hotseats/HotSeats;

    invoke-interface {p0, p1, v0, v1}, Lcom/miui/home/launcher/hotseats/HotSeatsContent;->isNeedBlockLongPress(Landroid/view/View;Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/hotseats/HotSeats;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string p0, "Launcher.HotSeatsListContent"

    const-string p1, "onLongClick: isNeedBlockLongPress for HotSeatsListContent"

    .line 454
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 457
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isDragDisable()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuManager;->canShowShortcutMenu(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 458
    iget-object p0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->showDragDisableToast(Landroid/content/Context;)V

    return v2

    .line 461
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/home/launcher/ItemInfo;

    if-eqz v0, :cond_5

    .line 462
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ItemInfo;

    .line 465
    invoke-virtual {v0}, Lcom/miui/home/launcher/ItemInfo;->isInHotseatRecommend()Z

    move-result v1

    const/4 v3, 0x5

    if-eqz v1, :cond_2

    const/4 v1, 0x6

    goto :goto_0

    .line 469
    :cond_2
    iput-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mDraggingEnterItem:Lcom/miui/home/launcher/ItemInfo;

    move v1, v3

    :goto_0
    if-eq v1, v3, :cond_3

    .line 473
    iget-object v3, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mSeatsList:Lcom/miui/home/launcher/hotseats/HotSeatsList;

    invoke-virtual {v3, v0}, Lcom/miui/home/launcher/hotseats/HotSeatsList;->setCantAddToLauncherDraggingItem(Lcom/miui/home/launcher/ItemInfo;)V

    .line 475
    :cond_3
    iput-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mInnerDraggingItem:Lcom/miui/home/launcher/ItemInfo;

    .line 476
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mHotSeats:Lcom/miui/home/launcher/hotseats/HotSeats;

    invoke-virtual {v0}, Lcom/miui/home/launcher/hotseats/HotSeats;->getDragController()Lcom/miui/home/launcher/DragController;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 478
    invoke-virtual {v0, p1, v2, p0, v1}, Lcom/miui/home/launcher/DragController;->startDrag(Landroid/view/View;ZLcom/miui/home/launcher/DragSource;I)Z

    :cond_4
    return v2

    :cond_5
    return v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 546
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView;->onSizeChanged(IIII)V

    .line 548
    iget-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mLayoutManager:Lcom/miui/home/launcher/hotseats/HotSeatsListContentFoldLayoutManager;

    invoke-virtual {p1}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentFoldLayoutManager;->updateViewWidth()V

    .line 549
    iget-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mAdapter:Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 550
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "view height: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Launcher.HotSeatsListContent"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSoscEvent(Lcom/miui/launcher/sosc/module/SoscEvent;Lcom/miui/launcher/sosc/module/SoscEvent;)V
    .locals 0

    .line 564
    iget-object p0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mAdapter:Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onWallpaperColorChanged()V
    .locals 0

    .line 123
    invoke-static {p0}, Lcom/miui/home/launcher/WallpaperUtils;->varyViewGroupByWallpaper(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public refreshSearchIcon()V
    .locals 0

    .line 541
    iget-object p0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mSeatsList:Lcom/miui/home/launcher/hotseats/HotSeatsList;

    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsList;->refreshSearchIcon()V

    return-void
.end method

.method public removeAllDesktopIcons()V
    .locals 0

    .line 153
    iget-object p0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mSeatsList:Lcom/miui/home/launcher/hotseats/HotSeatsList;

    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsList;->clear()V

    return-void
.end method

.method public removeIcon(Landroid/view/View;)V
    .locals 1

    .line 222
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/ItemInfo;

    .line 223
    iput-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mPendingRemoveItem:Lcom/miui/home/launcher/ItemInfo;

    .line 224
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->requestUpdateRecommendTasksWhenItemsChange(Lcom/miui/home/launcher/ItemInfo;)V

    const/4 v0, 0x0

    .line 225
    iput-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mPendingRemoveItem:Lcom/miui/home/launcher/ItemInfo;

    .line 226
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mSeatsList:Lcom/miui/home/launcher/hotseats/HotSeatsList;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsList;->removeItemInfo(Lcom/miui/home/launcher/ItemInfo;)V

    .line 227
    iget-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mHotSeats:Lcom/miui/home/launcher/hotseats/HotSeats;

    iget-object p0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mSeatsList:Lcom/miui/home/launcher/hotseats/HotSeatsList;

    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsList;->getItemInfoList()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/hotseats/HotSeats;->saveSeats(Ljava/util/List;)V

    return-void
.end method

.method public removeRecentCache(Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 0

    .line 278
    iget-object p0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mRecentsProvider:Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->removeCache(Lcom/miui/home/launcher/ShortcutInfo;)V

    return-void
.end method

.method public removeShortcuts(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    .line 252
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    .line 253
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mSeatsList:Lcom/miui/home/launcher/hotseats/HotSeatsList;

    invoke-virtual {v2}, Lcom/miui/home/launcher/hotseats/HotSeatsList;->getItemInfoList()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 254
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/ItemInfo;

    .line 255
    instance-of v3, v2, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v3, :cond_2

    .line 256
    iget-wide v3, v2, Lcom/miui/home/launcher/ItemInfo;->id:J

    iget-wide v5, v0, Lcom/miui/home/launcher/ItemInfo;->id:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    .line 257
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mSeatsList:Lcom/miui/home/launcher/hotseats/HotSeatsList;

    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/hotseats/HotSeatsList;->removeItemInfo(Lcom/miui/home/launcher/ItemInfo;)V

    goto :goto_0

    .line 260
    :cond_2
    instance-of v3, v2, Lcom/miui/home/launcher/FolderInfo;

    if-eqz v3, :cond_1

    move-object v3, v2

    check-cast v3, Lcom/miui/home/launcher/FolderInfo;

    iget-wide v4, v2, Lcom/miui/home/launcher/ItemInfo;->id:J

    invoke-virtual {v3, v4, v5}, Lcom/miui/home/launcher/FolderInfo;->remove(J)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public bridge synthetic setDragController(Lcom/miui/home/launcher/DragController;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsContent;->setDragController(Lcom/miui/home/launcher/DragController;)V

    return-void
.end method

.method public setMamlIconPresent()V
    .locals 2

    .line 186
    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->getAllItemList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->parallelStream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/hotseats/HotSeatsListContent$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/hotseats/HotSeatsListContent$$ExternalSyntheticLambda1;-><init>(Lcom/miui/home/launcher/hotseats/HotSeatsListContent;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public setScaleY(F)V
    .locals 1

    .line 291
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setScaleY(F)V

    const/high16 p0, 0x3f800000    # 1.0f

    cmpl-float p0, p1, p0

    if-eqz p0, :cond_0

    .line 293
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "scaleY: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/Throwable;

    invoke-direct {p1}, Ljava/lang/Throwable;-><init>()V

    const-string v0, "Launcher.HotSeatsListContent"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public setupViews(Lcom/miui/home/launcher/hotseats/HotSeats;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mHotSeats:Lcom/miui/home/launcher/hotseats/HotSeats;

    return-void
.end method

.method public startLoading()V
    .locals 0

    .line 133
    iget-object p0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mSeatsList:Lcom/miui/home/launcher/hotseats/HotSeatsList;

    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsList;->clear()V

    return-void
.end method

.method public updateDrawableState(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 179
    instance-of p0, p1, Lcom/miui/maml/FancyDrawable;

    if-eqz p0, :cond_0

    const-string p0, "present"

    .line 180
    invoke-static {p1, p0}, Lcom/miui/launcher/utils/MamlUtils;->onCommand(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public updateHotSeatsListIconSize()V
    .locals 0

    .line 559
    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->updateIconSize()V

    return-void
.end method

.method public updateIconSize()V
    .locals 0

    .line 554
    iget-object p0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mAdapter:Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public updateIconWhenInstall(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/ItemInfo;)Z
    .locals 1

    const/4 p0, 0x0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 235
    :cond_0
    instance-of v0, p1, Lcom/miui/home/launcher/RemoteShortcutInfo;

    if-eqz v0, :cond_1

    instance-of v0, p2, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v0, :cond_1

    .line 237
    check-cast p1, Lcom/miui/home/launcher/RemoteShortcutInfo;

    invoke-virtual {p1}, Lcom/miui/home/launcher/RemoteShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object p0

    check-cast p2, Lcom/miui/home/launcher/ShortcutInfo;

    .line 238
    invoke-virtual {p2}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 237
    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    :cond_1
    :goto_0
    return p0
.end method

.method public updateItemInfo(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/ItemInfo;)V
    .locals 2

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateItemInfo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/home/launcher/ItemInfo;->printIdentity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/miui/home/launcher/ItemInfo;->printIdentity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher.HotSeatsListContent"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mSeatsList:Lcom/miui/home/launcher/hotseats/HotSeatsList;

    invoke-virtual {v0, p1, p2}, Lcom/miui/home/launcher/hotseats/HotSeatsList;->updateItemInfo(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/ItemInfo;)V

    .line 247
    iget-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mHotSeats:Lcom/miui/home/launcher/hotseats/HotSeats;

    iget-object p0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mSeatsList:Lcom/miui/home/launcher/hotseats/HotSeatsList;

    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsList;->getItemInfoList()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/hotseats/HotSeats;->saveSeats(Ljava/util/List;)V

    return-void
.end method
