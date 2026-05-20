.class public Lcom/miui/home/launcher/hotseats/HotSeatsList;
.super Ljava/lang/Object;
.source "HotSeatsList.java"

# interfaces
.implements Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider$RecommendContainer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/hotseats/HotSeatsList$CellXComparator;,
        Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;
    }
.end annotation


# instance fields
.field private final MAX_RECENT_NUMBER:I

.field isLauncherModeChanged:Z

.field private mAdapter:Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;

.field private final mAdapterItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;",
            ">;"
        }
    .end annotation
.end field

.field private mCantAddToLauncherDraggingItem:Lcom/miui/home/launcher/ItemInfo;

.field private final mComparator:Lcom/miui/home/launcher/hotseats/HotSeatsList$CellXComparator;

.field private final mContext:Landroid/content/Context;

.field private final mDifferList:Landroidx/recyclerview/widget/AsyncListDiffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/recyclerview/widget/AsyncListDiffer<",
            "Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mItemInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mOutlineItem:Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;

.field private final mRecentsProvider:Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;

.field private mShowSearchIcon:Z

.field private final mUserActive:Ljava/util/function/BooleanSupplier;


# direct methods
.method public static synthetic $r8$lambda$5ROAfNL2bzqK0Peiteiy0gPomJc(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/ItemInfo;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsList;->lambda$addItemInfoInner$0(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/ItemInfo;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;Ljava/util/function/BooleanSupplier;)V
    .locals 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mItemInfoList:Ljava/util/ArrayList;

    .line 54
    new-instance v0, Lcom/miui/home/launcher/hotseats/HotSeatsList$CellXComparator;

    invoke-direct {v0}, Lcom/miui/home/launcher/hotseats/HotSeatsList$CellXComparator;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mComparator:Lcom/miui/home/launcher/hotseats/HotSeatsList$CellXComparator;

    const/4 v0, 0x3

    .line 56
    iput v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->MAX_RECENT_NUMBER:I

    const/4 v0, 0x0

    .line 60
    iput-boolean v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->isLauncherModeChanged:Z

    .line 63
    iput-object p3, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mUserActive:Ljava/util/function/BooleanSupplier;

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    iput-object p3, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mContext:Landroid/content/Context;

    .line 65
    invoke-static {p1}, Lcom/miui/home/launcher/hotseats/HotSeatsList;->shouldShowSearchIcon(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mShowSearchIcon:Z

    .line 66
    iput-object p2, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mRecentsProvider:Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;

    .line 67
    invoke-virtual {p2, p0}, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->bindRecommendContainer(Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider$RecommendContainer;)V

    .line 68
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mAdapterItems:Ljava/util/ArrayList;

    .line 69
    new-instance p1, Landroidx/recyclerview/widget/AsyncListDiffer;

    new-instance p2, Lcom/miui/home/launcher/hotseats/HotSeatsList$1;

    invoke-direct {p2, p0}, Lcom/miui/home/launcher/hotseats/HotSeatsList$1;-><init>(Lcom/miui/home/launcher/hotseats/HotSeatsList;)V

    .line 90
    invoke-direct {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsList;->getDifferConfig()Landroidx/recyclerview/widget/AsyncDifferConfig;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Landroidx/recyclerview/widget/AsyncListDiffer;-><init>(Landroidx/recyclerview/widget/ListUpdateCallback;Landroidx/recyclerview/widget/AsyncDifferConfig;)V

    iput-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mDifferList:Landroidx/recyclerview/widget/AsyncListDiffer;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/hotseats/HotSeatsList;)Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mAdapter:Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;

    return-object p0
.end method

.method private addItemInfoInner(Lcom/miui/home/launcher/ItemInfo;)V
    .locals 2

    .line 159
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mItemInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/hotseats/HotSeatsList$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsList$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/launcher/ItemInfo;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsList;->updateItemPosition(Lcom/miui/home/launcher/ItemInfo;)V

    .line 162
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mItemInfoList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private getDifferConfig()Landroidx/recyclerview/widget/AsyncDifferConfig;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/recyclerview/widget/AsyncDifferConfig<",
            "Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;",
            ">;"
        }
    .end annotation

    .line 105
    new-instance v0, Lcom/miui/home/launcher/MainThreadExecutor;

    invoke-direct {v0}, Lcom/miui/home/launcher/MainThreadExecutor;-><init>()V

    .line 106
    new-instance v1, Landroidx/recyclerview/widget/AsyncDifferConfig$Builder;

    new-instance v2, Lcom/miui/home/launcher/hotseats/HotSeatsList$2;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/hotseats/HotSeatsList$2;-><init>(Lcom/miui/home/launcher/hotseats/HotSeatsList;)V

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/AsyncDifferConfig$Builder;-><init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V

    .line 118
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/AsyncDifferConfig$Builder;->setMainThreadExecutor(Ljava/util/concurrent/Executor;)Landroidx/recyclerview/widget/AsyncDifferConfig$Builder;

    move-result-object p0

    .line 119
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/AsyncDifferConfig$Builder;->setBackgroundThreadExecutor(Ljava/util/concurrent/Executor;)Landroidx/recyclerview/widget/AsyncDifferConfig$Builder;

    move-result-object p0

    .line 120
    invoke-virtual {p0}, Landroidx/recyclerview/widget/AsyncDifferConfig$Builder;->build()Landroidx/recyclerview/widget/AsyncDifferConfig;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$addItemInfoInner$0(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/ItemInfo;)Z
    .locals 0

    .line 159
    iget p1, p1, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    iget p0, p0, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private notifyItemChanged(Lcom/miui/home/launcher/ItemInfo;)V
    .locals 2

    const/4 v0, 0x0

    .line 321
    :goto_0
    iget-object v1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mAdapterItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 322
    iget-object v1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mAdapterItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;

    .line 323
    iget-object v1, v1, Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;->itemInfo:Lcom/miui/home/launcher/ItemInfo;

    if-ne v1, p1, :cond_0

    .line 324
    iget-object p0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mAdapter:Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private static shouldShowSearchIcon(Landroid/content/Context;)Z
    .locals 2

    .line 133
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 136
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x1

    const-string v1, "key_home_screen_search_bar"

    invoke-static {p0, v1, v0}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private updateItemPosition(Lcom/miui/home/launcher/ItemInfo;)V
    .locals 3

    .line 166
    iget-object p0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mItemInfoList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ItemInfo;

    .line 167
    iget v1, v0, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    iget v2, p1, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    if-lt v1, v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 168
    iput v1, v0, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public addItemInfo(Lcom/miui/home/launcher/ItemInfo;)V
    .locals 1

    .line 153
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsList;->addItemInfoInner(Lcom/miui/home/launcher/ItemInfo;)V

    .line 154
    iget-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mItemInfoList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mComparator:Lcom/miui/home/launcher/hotseats/HotSeatsList$CellXComparator;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 155
    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsList;->refillAdapterItems()V

    return-void
.end method

.method public addOutlineItem(Landroid/graphics/Bitmap;II)V
    .locals 0

    .line 199
    invoke-static {p1, p2, p3}, Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;->asOutline(Landroid/graphics/Bitmap;II)Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mOutlineItem:Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;

    .line 200
    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsList;->refillAdapterItems()V

    return-void
.end method

.method public clear()V
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mItemInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 298
    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsList;->refillAdapterItems()V

    return-void
.end method

.method getCantAddToLauncherDraggingItem()Lcom/miui/home/launcher/ItemInfo;
    .locals 0

    .line 306
    iget-object p0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mCantAddToLauncherDraggingItem:Lcom/miui/home/launcher/ItemInfo;

    return-object p0
.end method

.method public getItem(I)Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;
    .locals 0

    .line 149
    iget-object p0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mDifferList:Landroidx/recyclerview/widget/AsyncListDiffer;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/AsyncListDiffer;->getCurrentList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;

    return-object p0
.end method

.method public getItemCount()I
    .locals 0

    .line 145
    iget-object p0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mDifferList:Landroidx/recyclerview/widget/AsyncListDiffer;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/AsyncListDiffer;->getCurrentList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
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

    .line 141
    iget-object p0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mItemInfoList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public handleDataChange(IILjava/util/function/BiConsumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/function/BiConsumer<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mAdapter:Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;

    if-eqz v0, :cond_1

    .line 95
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mUserActive:Ljava/util/function/BooleanSupplier;

    invoke-interface {v0}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p3, p0, p1}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 98
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mAdapter:Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_1
    :goto_0
    return-void
.end method

.method public hasOutlineItem()Z
    .locals 0

    .line 195
    iget-object p0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mOutlineItem:Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isFull()Z
    .locals 1

    .line 302
    iget-object p0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mItemInfoList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getHotseatMaxCount()I

    move-result v0

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/LauncherModeChangedMessage;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const/4 p1, 0x1

    .line 238
    iput-boolean p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->isLauncherModeChanged:Z

    return-void
.end method

.method public onRecommendUpdate()V
    .locals 0

    .line 332
    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsList;->refillAdapterItems()V

    return-void
.end method

.method public refillAdapterItems()V
    .locals 7

    const-string v0, "Launcher.HotSeatsList"

    const-string v1, "refillAdapterItems"

    .line 242
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mAdapterItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 244
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mAdapter:Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v2, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->isLauncherModeChanged:Z

    if-eqz v2, :cond_0

    .line 245
    iput-boolean v1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->isLauncherModeChanged:Z

    .line 246
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 248
    :cond_0
    iget-boolean v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mShowSearchIcon:Z

    if-eqz v0, :cond_1

    .line 249
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mAdapterItems:Ljava/util/ArrayList;

    invoke-static {}, Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;->asSearch()Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mItemInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/ItemInfo;

    .line 252
    instance-of v3, v2, Lcom/miui/home/launcher/FolderInfo;

    if-eqz v3, :cond_2

    .line 253
    iget-object v3, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mAdapterItems:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;->asFolder(Lcom/miui/home/launcher/ItemInfo;)Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 254
    :cond_2
    instance-of v3, v2, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;

    if-eqz v3, :cond_3

    .line 255
    iget-object v3, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mAdapterItems:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;->asProgress(Lcom/miui/home/launcher/ItemInfo;)Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 257
    :cond_3
    iget-object v3, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mAdapterItems:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;->asShortcut(Lcom/miui/home/launcher/ItemInfo;)Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 260
    :cond_4
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mOutlineItem:Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;

    if-eqz v0, :cond_5

    .line 261
    iget v0, v0, Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;->position:I

    iget-object v2, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mAdapterItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/common/Utilities;->boundToRange(III)I

    move-result v0

    .line 262
    iget-object v2, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mAdapterItems:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mOutlineItem:Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;

    invoke-virtual {v2, v0, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 265
    :cond_5
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mRecentsProvider:Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;

    invoke-virtual {v0}, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->getRecommendApps()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 266
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_8

    .line 267
    iget-object v2, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mAdapterItems:Ljava/util/ArrayList;

    invoke-static {}, Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;->asDivLine()Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v2, v1

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/PairShortcutInfo;

    .line 270
    invoke-virtual {v3}, Lcom/miui/home/launcher/PairShortcutInfo;->hasPairApp()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 271
    iget-object v4, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mAdapterItems:Ljava/util/ArrayList;

    invoke-static {v3}, Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;->asRecommendPair(Lcom/miui/home/launcher/ItemInfo;)Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-wide/16 v4, -0x67

    .line 272
    iput-wide v4, v3, Lcom/miui/home/launcher/ItemInfo;->container:J

    .line 273
    iget-object v6, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v6}, Lcom/miui/home/launcher/PairShortcutInfo;->getPairName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/miui/home/launcher/ItemInfo;->setTitle(Ljava/lang/CharSequence;)V

    .line 274
    invoke-virtual {v3}, Lcom/miui/home/launcher/PairShortcutInfo;->getShortcutInfo1()Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object v6

    iput-wide v4, v6, Lcom/miui/home/launcher/ItemInfo;->container:J

    .line 275
    invoke-virtual {v3}, Lcom/miui/home/launcher/PairShortcutInfo;->getShortcutInfo2()Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object v3

    iput-wide v4, v3, Lcom/miui/home/launcher/ItemInfo;->container:J

    goto :goto_1

    .line 277
    :cond_7
    invoke-virtual {v3}, Lcom/miui/home/launcher/PairShortcutInfo;->getShortcutInfo1()Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object v4

    const/4 v5, 0x0

    .line 278
    invoke-virtual {v4, v5}, Lcom/miui/home/launcher/ShortcutInfo;->setMessage(Ljava/lang/String;)V

    .line 279
    iget-object v5, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mAdapterItems:Ljava/util/ArrayList;

    invoke-static {v4}, Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;->asRecommend(Lcom/miui/home/launcher/ItemInfo;)Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-wide/16 v5, -0x66

    .line 280
    iput-wide v5, v3, Lcom/miui/home/launcher/ItemInfo;->container:J

    .line 281
    iput-wide v5, v4, Lcom/miui/home/launcher/ItemInfo;->container:J

    :goto_1
    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x3

    if-lt v2, v3, :cond_6

    .line 289
    :cond_8
    :goto_2
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mAdapterItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_9

    .line 290
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mAdapterItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;

    .line 291
    iput v1, v0, Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;->position:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 293
    :cond_9
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mDifferList:Landroidx/recyclerview/widget/AsyncListDiffer;

    new-instance v1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mAdapterItems:Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/AsyncListDiffer;->submitList(Ljava/util/List;)V

    return-void
.end method

.method public refreshSearchIcon()V
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/home/launcher/hotseats/HotSeatsList;->shouldShowSearchIcon(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mShowSearchIcon:Z

    .line 129
    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsList;->refillAdapterItems()V

    return-void
.end method

.method public removeItemInfo(Lcom/miui/home/launcher/ItemInfo;)V
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mItemInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 185
    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsList;->refillAdapterItems()V

    return-void
.end method

.method public removeOutlineItem()V
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mOutlineItem:Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 212
    iput-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mOutlineItem:Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;

    .line 213
    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsList;->refillAdapterItems()V

    :cond_0
    return-void
.end method

.method public replaceOutline(Lcom/miui/home/launcher/ItemInfo;)Z
    .locals 4

    .line 218
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mOutlineItem:Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 219
    :goto_0
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mAdapterItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 220
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mAdapterItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;

    .line 221
    iget v2, v0, Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;->viewType:I

    const/16 v3, 0x20

    if-ne v2, v3, :cond_0

    .line 222
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mOutlineItem:Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;

    iget v0, v0, Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;->position:I

    iput v0, p1, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    goto :goto_1

    .line 223
    :cond_0
    iget-object v2, v0, Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;->itemInfo:Lcom/miui/home/launcher/ItemInfo;

    if-eqz v2, :cond_1

    if-eq v2, p1, :cond_1

    .line 226
    iget v0, v0, Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;->position:I

    iput v0, v2, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 229
    iput-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mOutlineItem:Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;

    .line 230
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsList;->addItemInfo(Lcom/miui/home/launcher/ItemInfo;)V

    const/4 p0, 0x1

    return p0

    :cond_3
    return v1
.end method

.method public setAdapter(Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mAdapter:Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;

    return-void
.end method

.method setCantAddToLauncherDraggingItem(Lcom/miui/home/launcher/ItemInfo;)V
    .locals 1

    .line 310
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mCantAddToLauncherDraggingItem:Lcom/miui/home/launcher/ItemInfo;

    .line 311
    iput-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mCantAddToLauncherDraggingItem:Lcom/miui/home/launcher/ItemInfo;

    if-eq v0, p1, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v0

    .line 316
    :goto_0
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsList;->notifyItemChanged(Lcom/miui/home/launcher/ItemInfo;)V

    :cond_1
    return-void
.end method

.method public updateItemIcons(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .line 174
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mItemInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 175
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 176
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HotSeats ListView addItem: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Launcher.HotSeatsList"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/ItemInfo;

    invoke-direct {p0, v1}, Lcom/miui/home/launcher/hotseats/HotSeatsList;->addItemInfoInner(Lcom/miui/home/launcher/ItemInfo;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 179
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mItemInfoList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mComparator:Lcom/miui/home/launcher/hotseats/HotSeatsList$CellXComparator;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 180
    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsList;->refillAdapterItems()V

    return-void
.end method

.method public updateItemInfo(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/ItemInfo;)V
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mItemInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 190
    iget p1, p1, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    iput p1, p2, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    .line 191
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/hotseats/HotSeatsList;->addItemInfo(Lcom/miui/home/launcher/ItemInfo;)V

    return-void
.end method

.method public updateOutlineItem(I)V
    .locals 2

    .line 204
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mOutlineItem:Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;

    if-eqz v0, :cond_0

    iget v1, v0, Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;->position:I

    if-eq v1, p1, :cond_0

    .line 205
    iput p1, v0, Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;->position:I

    .line 206
    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsList;->refillAdapterItems()V

    :cond_0
    return-void
.end method
