.class public Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "HotSeatsListContentAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter$ShortcutViewHolder;,
        Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter$LineViewHolder;,
        Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final mLauncher:Lcom/miui/home/launcher/Launcher;

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private final mLongClickListener:Landroid/view/View$OnLongClickListener;

.field private final mSeatsList:Lcom/miui/home/launcher/hotseats/HotSeatsList;


# direct methods
.method public static synthetic $r8$lambda$DxeazDaGuuJTFC-H4JD6LvX-6yg(Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;Lcom/miui/home/launcher/ShortcutIcon;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->lambda$onCreateViewHolder$1(Lcom/miui/home/launcher/ShortcutIcon;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$ekDCvgQi0tqvK5WDcYNMgIxCass(Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->lambda$onCreateViewHolder$0(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/hotseats/HotSeatsList;Landroid/view/View$OnLongClickListener;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 62
    iput-object p3, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 63
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 64
    iput-object p2, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->mSeatsList:Lcom/miui/home/launcher/hotseats/HotSeatsList;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;)Landroid/view/View$OnLongClickListener;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    return-object p0
.end method

.method private getItem(I)Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;
    .locals 0

    .line 250
    iget-object p0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->mSeatsList:Lcom/miui/home/launcher/hotseats/HotSeatsList;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsList;->getItem(I)Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;

    move-result-object p0

    return-object p0
.end method

.method private getSearchIconWithColorMode(Z)Landroid/graphics/drawable/Drawable;
    .locals 1

    const-string v0, "ic_dock_search.png"

    .line 154
    invoke-static {v0}, Lmiui/content/res/IconCustomizer;->getRawIconDrawable(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    if-nez v0, :cond_1

    .line 156
    iget-object p0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz p1, :cond_0

    const p1, 0x7f08028e

    goto :goto_0

    :cond_0
    const p1, 0x7f08028d

    :goto_0
    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    move-object v0, p0

    :cond_1
    return-object v0
.end method

.method private synthetic lambda$onCreateViewHolder$0(Landroid/view/View;)V
    .locals 3

    .line 78
    iget-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v0, v2}, Lcom/miui/home/launcher/Launcher;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    .line 79
    iget-object p0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const p1, 0x7f01003b

    const v0, 0x7f01003c

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method private synthetic lambda$onCreateViewHolder$1(Lcom/miui/home/launcher/ShortcutIcon;Z)V
    .locals 0

    .line 84
    invoke-direct {p0, p2}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->getSearchIconWithColorMode(Z)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    const/4 p2, 0x0

    .line 85
    invoke-virtual {p1, p0, p2}, Lcom/miui/home/launcher/ShortcutIcon;->setIconDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private setDesktopIconAvailable(Lcom/miui/home/launcher/DesktopIcon;)V
    .locals 1

    .line 216
    invoke-interface {p1}, Lcom/miui/home/launcher/DesktopIcon;->getView()Landroid/view/View;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 217
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 218
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 219
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 220
    iget-object p0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setTranslucentAlphaToItem(Landroid/view/View;Lcom/miui/home/launcher/ItemInfo;)V
    .locals 0

    .line 211
    iget-object p0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->mSeatsList:Lcom/miui/home/launcher/hotseats/HotSeatsList;

    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsList;->getCantAddToLauncherDraggingItem()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p0

    if-ne p2, p0, :cond_0

    const/high16 p0, 0x3f000000    # 0.5f

    goto :goto_0

    :cond_0
    const/high16 p0, 0x3f800000    # 1.0f

    .line 212
    :goto_0
    invoke-virtual {p1, p0}, Landroid/view/View;->setTransitionAlpha(F)V

    return-void
.end method


# virtual methods
.method public canDropOver(I)Z
    .locals 2

    const/4 v0, 0x0

    if-ltz p1, :cond_1

    .line 254
    iget-object v1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->mSeatsList:Lcom/miui/home/launcher/hotseats/HotSeatsList;

    invoke-virtual {v1}, Lcom/miui/home/launcher/hotseats/HotSeatsList;->getItemCount()I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 255
    iget-object p0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->mSeatsList:Lcom/miui/home/launcher/hotseats/HotSeatsList;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsList;->getItem(I)Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;

    move-result-object p0

    iget p0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;->viewType:I

    const/16 p1, 0x10

    if-eq p0, p1, :cond_0

    const/16 p1, 0x8

    if-eq p0, p1, :cond_0

    const/4 p1, 0x4

    if-eq p0, p1, :cond_0

    const/16 p1, 0x20

    if-eq p0, p1, :cond_0

    const/16 p1, 0x40

    if-ne p0, p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public getItemCount()I
    .locals 0

    .line 241
    iget-object p0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->mSeatsList:Lcom/miui/home/launcher/hotseats/HotSeatsList;

    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsList;->getItemCount()I

    move-result p0

    return p0
.end method

.method public getItemViewType(I)I
    .locals 0

    .line 246
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->getItem(I)Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;

    move-result-object p0

    iget p0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;->viewType:I

    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 43
    check-cast p1, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->onBindViewHolder(Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter$ViewHolder;I)V
    .locals 3

    .line 163
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    const/4 v1, 0x4

    if-eq v0, v1, :cond_4

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eq v0, v1, :cond_3

    const/16 v1, 0x10

    if-eq v0, v1, :cond_2

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    const/16 v1, 0x40

    if-eq v0, v1, :cond_6

    const/16 v1, 0x80

    if-eq v0, v1, :cond_4

    const/16 v1, 0x100

    if-ne v0, v1, :cond_0

    .line 181
    invoke-direct {p0, p2}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->getItem(I)Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;

    move-result-object p2

    iget-object p2, p2, Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;->itemInfo:Lcom/miui/home/launcher/ItemInfo;

    check-cast p2, Lcom/miui/home/launcher/PairShortcutInfo;

    .line 182
    invoke-virtual {p1}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter$ViewHolder;->getContent()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/PairShortcutIcon;

    .line 183
    iget-object v1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter$ViewHolder;->getContent()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, p2, v2}, Lcom/miui/home/launcher/PairShortcutIcon;->bindGroupShortcutInfo(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/PairShortcutInfo;Landroid/view/ViewGroup;)V

    .line 184
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->setTranslucentAlphaToItem(Landroid/view/View;Lcom/miui/home/launcher/ItemInfo;)V

    goto/16 :goto_0

    .line 206
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Unexpected view type"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 199
    :cond_1
    invoke-virtual {p1}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter$ViewHolder;->getContent()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/CellBackground;

    .line 200
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 201
    instance-of p1, p0, Lcom/miui/home/launcher/GridCell;

    if-eqz p1, :cond_6

    .line 202
    check-cast p0, Lcom/miui/home/launcher/GridCell;

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getIconWidth()I

    move-result p1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getIconHeight()I

    move-result p2

    invoke-virtual {p0, v2, v2, p1, p2}, Lcom/miui/home/launcher/GridCell;->setCellBounds(IIII)V

    goto :goto_0

    .line 193
    :cond_2
    invoke-direct {p0, p2}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->getItem(I)Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;

    move-result-object p2

    iget-object p2, p2, Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;->itemInfo:Lcom/miui/home/launcher/ItemInfo;

    check-cast p2, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;

    .line 194
    invoke-virtual {p1}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter$ViewHolder;->getContent()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ProgressShortcutIcon;

    .line 195
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->setDesktopIconAvailable(Lcom/miui/home/launcher/DesktopIcon;)V

    .line 196
    iget-object p0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter$ViewHolder;->getContent()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-interface {v0, p0, p2, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsViewRebindInfo;->bindShortcutInfo(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ShortcutInfo;Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 187
    :cond_3
    invoke-direct {p0, p2}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->getItem(I)Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;

    move-result-object p2

    iget-object p2, p2, Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;->itemInfo:Lcom/miui/home/launcher/ItemInfo;

    check-cast p2, Lcom/miui/home/launcher/FolderInfo;

    .line 188
    invoke-virtual {p1}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter$ViewHolder;->getContent()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/FolderIcon;

    .line 189
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->setDesktopIconAvailable(Lcom/miui/home/launcher/DesktopIcon;)V

    .line 190
    iget-object p0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1, p0, p2, v2}, Lcom/miui/home/launcher/FolderIcon;->bindFolderInfo(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/FolderInfo;Z)V

    goto :goto_0

    .line 173
    :cond_4
    invoke-direct {p0, p2}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->getItem(I)Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;

    move-result-object p2

    iget-object p2, p2, Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;->itemInfo:Lcom/miui/home/launcher/ItemInfo;

    check-cast p2, Lcom/miui/home/launcher/ShortcutInfo;

    .line 174
    invoke-virtual {p1}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter$ViewHolder;->getContent()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ShortcutIcon;

    .line 175
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->setDesktopIconAvailable(Lcom/miui/home/launcher/DesktopIcon;)V

    .line 176
    iget-object v1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter$ViewHolder;->getContent()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-interface {v0, v1, p2, v2}, Lcom/miui/home/launcher/hotseats/HotSeatsViewRebindInfo;->bindShortcutInfo(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ShortcutInfo;Landroid/view/ViewGroup;)V

    .line 178
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->setTranslucentAlphaToItem(Landroid/view/View;Lcom/miui/home/launcher/ItemInfo;)V

    goto :goto_0

    .line 167
    :cond_5
    invoke-virtual {p1}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter$ViewHolder;->getContent()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/ShortcutIcon;

    .line 168
    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->hasAppliedLightWallpaper()Z

    move-result p2

    invoke-direct {p0, p2}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->getSearchIconWithColorMode(Z)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    const/4 p2, 0x0

    .line 169
    invoke-virtual {p1, p0, p2}, Lcom/miui/home/launcher/ShortcutIcon;->setIconDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;)V

    :cond_6
    :goto_0
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 43
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter$ViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter$ViewHolder;
    .locals 6

    .line 70
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0d0053

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/hotseats/FlexboxItemContainer;

    const/4 v1, 0x2

    const/4 v3, 0x0

    const/16 v4, 0x40

    const v5, 0x7f0d016a

    if-eq p2, v1, :cond_7

    const/4 v1, 0x4

    if-eq p2, v1, :cond_6

    const/16 v1, 0x8

    if-eq p2, v1, :cond_5

    const/16 v1, 0x10

    if-eq p2, v1, :cond_4

    const/16 v1, 0x20

    if-eq p2, v1, :cond_3

    if-eq p2, v4, :cond_2

    const/16 v1, 0x80

    if-eq p2, v1, :cond_1

    const/16 v1, 0x100

    if-ne p2, v1, :cond_0

    const v1, 0x7f0d016f

    .line 137
    iget-object v2, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v1, v2, p1}, Lcom/miui/home/launcher/PairShortcutIcon;->create(ILcom/miui/home/launcher/Launcher;Landroid/view/ViewGroup;)Lcom/miui/home/launcher/PairShortcutIcon;

    move-result-object p1

    .line 138
    iget-object v1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    iget-object p0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto/16 :goto_0

    .line 143
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Unexpected view type"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 121
    :cond_1
    iget-object v1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v5, v1, p1}, Lcom/miui/home/launcher/ShortcutIcon;->createShortcutIcon(ILcom/miui/home/launcher/Launcher;Landroid/view/ViewGroup;)Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object p1

    .line 122
    iget-object v1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 123
    iget-object v1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    new-instance v1, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter$1;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter$1;-><init>(Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;)V

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setOnGenericMotionListener(Landroid/view/View$OnGenericMotionListener;)V

    goto/16 :goto_0

    .line 118
    :cond_2
    iget-object p0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const p1, 0x7f0d0031

    invoke-virtual {p0, p1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    goto/16 :goto_0

    .line 108
    :cond_3
    iget-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0d0033

    invoke-virtual {p1, v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 109
    iget-object p0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {p0, v2}, Lcom/miui/home/launcher/GridCell;->create(Landroid/content/Context;Z)Lcom/miui/home/launcher/GridCell;

    move-result-object p0

    .line 110
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getIconWidth()I

    move-result v1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getIconHeight()I

    move-result v5

    invoke-virtual {p0, v2, v2, v1, v5}, Lcom/miui/home/launcher/GridCell;->setCellBounds(IIII)V

    .line 111
    invoke-virtual {p0}, Lcom/miui/home/launcher/GridCell;->setHovered()V

    .line 112
    move-object v1, p1

    check-cast v1, Lcom/miui/home/launcher/CellBackground;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 113
    sget-object p0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/4 p0, 0x1

    .line 114
    invoke-virtual {v1, p0}, Lcom/miui/home/launcher/CellBackground;->setInDock(Z)V

    goto :goto_0

    :cond_4
    const p1, 0x7f0d0036

    .line 102
    iget-object v1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {p1, v1, v0}, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->createShortcutIcon(ILcom/miui/home/launcher/Launcher;Landroid/view/ViewGroup;)Lcom/miui/home/launcher/BaseProgressShortcutIcon;

    move-result-object p1

    .line 103
    iget-object v1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 104
    iget-object p0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_5
    const p1, 0x7f0d005a

    .line 96
    iget-object v1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {p1, v1, v0}, Lcom/miui/home/launcher/FolderIcon;->create(ILcom/miui/home/launcher/Launcher;Landroid/view/ViewGroup;)Lcom/miui/home/launcher/FolderIcon;

    move-result-object p1

    .line 97
    iget-object v1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 98
    iget-object p0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 90
    :cond_6
    iget-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v5, p1, v0}, Lcom/miui/home/launcher/ShortcutIcon;->createShortcutIcon(ILcom/miui/home/launcher/Launcher;Landroid/view/ViewGroup;)Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object p1

    .line 91
    iget-object v1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 92
    iget-object p0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 74
    :cond_7
    iget-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v5, p1, v0}, Lcom/miui/home/launcher/ShortcutIcon;->createShortcutIcon(ILcom/miui/home/launcher/Launcher;Landroid/view/ViewGroup;)Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object p1

    .line 75
    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->hasAppliedLightWallpaper()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->getSearchIconWithColorMode(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 76
    invoke-virtual {p1, v1, v3}, Lcom/miui/home/launcher/ShortcutIcon;->setIconDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;)V

    .line 77
    new-instance v1, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;)V

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    .line 82
    invoke-virtual {v1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100232

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 81
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 83
    new-instance v1, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;Lcom/miui/home/launcher/ShortcutIcon;)V

    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/ShortcutIcon;->setColorModeChangedListener(Lcom/miui/home/launcher/ItemIcon$ColorModeChangeListener;)V

    :goto_0
    if-ne p2, v4, :cond_8

    .line 146
    new-instance p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter$LineViewHolder;

    invoke-direct {p0, v0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter$LineViewHolder;-><init>(Lcom/miui/home/launcher/hotseats/FlexboxItemContainer;Landroid/view/View;)V

    return-object p0

    .line 148
    :cond_8
    new-instance p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter$ShortcutViewHolder;

    invoke-direct {p0, v0, p1, v3}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter$ShortcutViewHolder;-><init>(Lcom/miui/home/launcher/hotseats/FlexboxItemContainer;Landroid/view/View;Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter$1;)V

    return-object p0
.end method

.method public bridge synthetic onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 43
    check-cast p1, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter$ViewHolder;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->onViewAttachedToWindow(Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter$ViewHolder;)V

    return-void
.end method

.method public onViewAttachedToWindow(Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter$ViewHolder;)V
    .locals 1

    .line 225
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 226
    invoke-virtual {p1}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter$ViewHolder;->getContent()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/home/launcher/FolderIcon;

    if-eqz v0, :cond_0

    .line 227
    iget-object p0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getDragController()Lcom/miui/home/launcher/DragController;

    move-result-object p0

    invoke-virtual {p1}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter$ViewHolder;->getContent()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/DropTarget;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/DragController;->addDropTarget(Lcom/miui/home/launcher/DropTarget;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 43
    check-cast p1, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter$ViewHolder;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->onViewDetachedFromWindow(Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter$ViewHolder;)V

    return-void
.end method

.method public onViewDetachedFromWindow(Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter$ViewHolder;)V
    .locals 1

    .line 233
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 234
    invoke-virtual {p1}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter$ViewHolder;->getContent()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/home/launcher/FolderIcon;

    if-eqz v0, :cond_0

    .line 235
    iget-object p0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getDragController()Lcom/miui/home/launcher/DragController;

    move-result-object p0

    invoke-virtual {p1}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter$ViewHolder;->getContent()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/DropTarget;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/DragController;->removeDropTarget(Lcom/miui/home/launcher/DropTarget;)V

    :cond_0
    return-void
.end method
