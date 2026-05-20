.class public Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "AllAppsGridAdapter.java"

# interfaces
.implements Lcom/miui/home/launcher/allapps/ItemPaddingSetter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$AllAppsListUpdateCallback;,
        Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$SearchMarketViewHolder;,
        Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$GridSpanSizer;,
        Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$AppsGridLayoutManager;,
        Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$ViewHolder;,
        Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$BindViewCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$ViewHolder;",
        ">;",
        "Lcom/miui/home/launcher/allapps/ItemPaddingSetter;"
    }
.end annotation


# instance fields
.field public isColorSelecting:Z

.field private mAllAppsColorMode:Lcom/miui/home/launcher/allapps/AllAppsColorMode;

.field private mAllAppsRecyclerView:Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;

.field private final mApps:Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;

.field private mAppsPerRow:I

.field private mBackgroundAlpha:I

.field private mBindViewCallback:Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$BindViewCallback;

.field protected mCellHeight:I

.field private mDifferList:Landroidx/recyclerview/widget/AsyncListDiffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/recyclerview/widget/AsyncListDiffer<",
            "Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mGridLayoutMgr:Landroidx/recyclerview/widget/GridLayoutManager;

.field protected mIconClickListener:Landroid/view/View$OnClickListener;

.field protected mIconFocusListener:Landroid/view/View$OnFocusChangeListener;

.field protected final mLauncher:Lcom/miui/home/launcher/Launcher;

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field protected mLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mMarketSearchDrawable:Landroid/graphics/drawable/Drawable;

.field private mMarketSearchIntent:Landroid/content/Intent;

.field private mMarketSearchMessage:Ljava/lang/String;

.field protected mNeedReverse:Z

.field private mUpdateCallback:Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$AllAppsListUpdateCallback;


# direct methods
.method public static synthetic $r8$lambda$NEbm20hoOEHloJDOUlrUZxG1ktg(Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->lambda$submitList$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$Pc-hF33xyR3MuRyJl01Fogx6CSk(Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->lambda$onCreateViewHolder$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$nNoPCDmMo2oaNpqFK9rA8zMP_RU(Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->lambda$onCreateViewHolder$1(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;Lcom/miui/home/launcher/allapps/AllAppsColorMode;I)V
    .locals 2

    .line 147
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    .line 399
    iput-boolean v0, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mNeedReverse:Z

    .line 478
    iput-boolean v0, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->isColorSelecting:Z

    .line 148
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 149
    iput-object p2, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mApps:Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;

    .line 150
    new-instance v0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$AppsGridLayoutManager;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$AppsGridLayoutManager;-><init>(Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mGridLayoutMgr:Landroidx/recyclerview/widget/GridLayoutManager;

    .line 151
    new-instance v1, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$GridSpanSizer;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$GridSpanSizer;-><init>(Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 152
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 154
    new-instance p1, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$AllAppsListUpdateCallback;

    invoke-direct {p1, p0, p0}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$AllAppsListUpdateCallback;-><init>(Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mUpdateCallback:Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$AllAppsListUpdateCallback;

    .line 155
    new-instance p1, Landroidx/recyclerview/widget/AsyncListDiffer;

    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mUpdateCallback:Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$AllAppsListUpdateCallback;

    invoke-virtual {p2}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->getDifferConfig()Landroidx/recyclerview/widget/AsyncDifferConfig;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Landroidx/recyclerview/widget/AsyncListDiffer;-><init>(Landroidx/recyclerview/widget/ListUpdateCallback;Landroidx/recyclerview/widget/AsyncDifferConfig;)V

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mDifferList:Landroidx/recyclerview/widget/AsyncListDiffer;

    .line 157
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsCellHeight()I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mCellHeight:I

    .line 159
    iput-object p3, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mAllAppsColorMode:Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    .line 160
    iput p4, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mBackgroundAlpha:I

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;)I
    .locals 0

    .line 53
    iget p0, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mAppsPerRow:I

    return p0
.end method

.method static isDividerViewType(I)Z
    .locals 1

    const/16 v0, 0x10

    .line 187
    invoke-static {p0, v0}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->isViewType(II)Z

    move-result p0

    return p0
.end method

.method static isIconViewType(I)Z
    .locals 1

    const/16 v0, 0x42

    .line 191
    invoke-static {p0, v0}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->isViewType(II)Z

    move-result p0

    return p0
.end method

.method private static isViewType(II)Z
    .locals 0

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$onCreateViewHolder$0()V
    .locals 1

    .line 270
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    iget-object p0, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mMarketSearchIntent:Landroid/content/Intent;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/Launcher;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private synthetic lambda$onCreateViewHolder$1(Landroid/view/View;)V
    .locals 1

    .line 269
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    new-instance v0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$$ExternalSyntheticLambda2;-><init>(Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;)V

    iget-object p0, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mMarketSearchIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0, p0}, Lcom/miui/home/launcher/Launcher;->safelyStartActivity(Ljava/lang/Runnable;Landroid/content/Intent;)V

    return-void
.end method

.method private synthetic lambda$submitList$2()V
    .locals 0

    .line 403
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mBindViewCallback:Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$BindViewCallback;

    if-eqz p0, :cond_0

    .line 404
    invoke-interface {p0}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$BindViewCallback;->onDataChanged()V

    :cond_0
    return-void
.end method

.method private resetView(Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$ViewHolder;)V
    .locals 1

    .line 384
    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getScaleX()F

    move-result p0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p0, p0, v0

    if-eqz p0, :cond_0

    .line 385
    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleX(F)V

    .line 387
    :cond_0
    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getScaleY()F

    move-result p0

    cmpl-float p0, p0, v0

    if-eqz p0, :cond_1

    .line 388
    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleY(F)V

    .line 390
    :cond_1
    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result p0

    cmpl-float p0, p0, v0

    if-eqz p0, :cond_2

    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 391
    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_2
    return-void
.end method


# virtual methods
.method public afterNotifyData()V
    .locals 0

    return-void
.end method

.method public beforeNotifyData()V
    .locals 0

    return-void
.end method

.method public getAllAppsRecyclerView()Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;
    .locals 0

    .line 476
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mAllAppsRecyclerView:Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;

    return-object p0
.end method

.method public getItem(I)Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;
    .locals 1

    .line 425
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mDifferList:Landroidx/recyclerview/widget/AsyncListDiffer;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/AsyncListDiffer;->getCurrentList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    if-lt p1, v0, :cond_0

    add-int/lit8 p1, v0, -0x1

    goto :goto_0

    :cond_0
    if-gtz p1, :cond_1

    const/4 p1, 0x0

    .line 435
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mDifferList:Landroidx/recyclerview/widget/AsyncListDiffer;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/AsyncListDiffer;->getCurrentList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public getItemCount()I
    .locals 0

    .line 410
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mDifferList:Landroidx/recyclerview/widget/AsyncListDiffer;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/AsyncListDiffer;->getCurrentList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getItemViewType(I)I
    .locals 0

    .line 415
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->getItem(I)Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;

    move-result-object p0

    iget p0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->viewType:I

    return p0
.end method

.method public getItems()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;",
            ">;"
        }
    .end annotation

    .line 420
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mDifferList:Landroidx/recyclerview/widget/AsyncListDiffer;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/AsyncListDiffer;->getCurrentList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getLayoutManager()Landroidx/recyclerview/widget/GridLayoutManager;
    .locals 0

    .line 243
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mGridLayoutMgr:Landroidx/recyclerview/widget/GridLayoutManager;

    return-object p0
.end method

.method public getViewHolderHeight(Landroid/content/Context;I)I
    .locals 1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    const/16 v0, 0x10

    if-eq p2, v0, :cond_1

    const/16 p1, 0x40

    if-ne p2, p1, :cond_0

    goto :goto_0

    .line 291
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Unexpected view type"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 289
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f07005c

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0

    .line 287
    :cond_2
    :goto_0
    iget p0, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mCellHeight:I

    return p0
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .line 460
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 461
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mUpdateCallback:Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$AllAppsListUpdateCallback;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 462
    instance-of v0, p1, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;

    if-eqz v0, :cond_0

    .line 463
    check-cast p1, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mAllAppsRecyclerView:Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;

    :cond_0
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 53
    check-cast p1, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->onBindViewHolder(Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$ViewHolder;I)V
    .locals 7

    .line 297
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mAllAppsColorMode:Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    .line 298
    iget v1, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mBackgroundAlpha:I

    .line 299
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eq v2, v3, :cond_9

    const/4 v3, 0x4

    const/4 v5, 0x0

    if-eq v2, v3, :cond_8

    const/16 v3, 0x8

    if-eq v2, v3, :cond_7

    const/16 p2, 0x10

    if-eq v2, p2, :cond_6

    const/16 p2, 0x20

    if-eq v2, p2, :cond_3

    const/16 p2, 0x40

    if-eq v2, p2, :cond_0

    goto/16 :goto_1

    .line 345
    :cond_0
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p2, Lcom/miui/home/launcher/ShortcutIcon;

    .line 346
    iget-object v2, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0, v2, v1}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->getAppTextColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {p2, v2}, Lcom/miui/home/launcher/ShortcutIcon;->setTextColor(I)V

    .line 347
    invoke-virtual {p2}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x7f10018a

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 348
    iget-object v2, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0, v2, v1}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->getEditIconDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0, v5}, Lcom/miui/home/launcher/ShortcutIcon;->setIconDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;)V

    .line 350
    invoke-virtual {p2}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    iget v1, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mCellHeight:I

    if-eq v0, v1, :cond_1

    .line 351
    invoke-virtual {p2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iget v0, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mCellHeight:I

    iput v0, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 353
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/LauncherSoscController;->getInstance()Lcom/miui/home/launcher/LauncherSoscController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/miui/home/launcher/LauncherSoscController;->getSoscEvent()Lcom/miui/launcher/sosc/module/SoscEvent;

    move-result-object p2

    invoke-virtual {p2}, Lcom/miui/launcher/sosc/module/SoscEvent;->isHalfSoscSplit()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 354
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 356
    :cond_2
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 324
    :cond_3
    move-object p2, p1

    check-cast p2, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$SearchMarketViewHolder;

    .line 325
    iget-object v2, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 326
    iget-object v5, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mMarketSearchIntent:Landroid/content/Intent;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mMarketSearchMessage:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 327
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 328
    iget-object v2, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mMarketSearchDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_4

    .line 329
    iget-object v2, p2, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$SearchMarketViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 330
    iget-object v2, p2, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$SearchMarketViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mMarketSearchDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 332
    :cond_4
    iget-object v2, p2, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$SearchMarketViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 334
    :goto_0
    iget-object v2, p2, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$SearchMarketViewHolder;->text:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mMarketSearchMessage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 335
    iget-object v2, p2, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$SearchMarketViewHolder;->text:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0, v3, v1}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->getSecondaryTextColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 336
    iget-object p2, p2, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$SearchMarketViewHolder;->arrow:Lcom/miui/home/launcher/util/typeface/TypefaceIconView;

    iget-object v2, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0, v2, v1}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->getSecondaryTextColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/miui/home/launcher/util/typeface/TypefaceIconView;->setPatternColor(I)V

    goto :goto_1

    .line 338
    :cond_5
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 342
    :cond_6
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v2, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0, v2, v1}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->getDividerColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1

    .line 319
    :cond_7
    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v2, Landroid/widget/TextView;

    .line 320
    iget-object v3, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0, v3, v1}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->getPrimaryTextColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 321
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->getItem(I)Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;

    move-result-object p2

    iget-object p2, p2, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->categoryName:Ljava/lang/String;

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 314
    :cond_8
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p2, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 315
    invoke-virtual {v0, v2, v1}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->getSearchEmptyDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 314
    invoke-virtual {p2, v5, v2, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 316
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p2, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0, v2, v1}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->getAppTextColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 301
    :cond_9
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->getItem(I)Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;

    move-result-object p2

    .line 302
    iget-object p2, p2, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->appInfo:Lcom/miui/home/launcher/AppInfo;

    .line 303
    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v2, Lcom/miui/home/launcher/ShortcutIcon;

    .line 305
    iget-object v3, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0, v3, v1}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->getAppTextColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/miui/home/launcher/ShortcutIcon;->setTextColor(I)V

    .line 306
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v2, v0, p2}, Lcom/miui/home/launcher/ShortcutIcon;->bindAppInfo(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/AppInfo;)V

    .line 307
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 309
    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result p2

    iget v0, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mCellHeight:I

    if-eq p2, v0, :cond_a

    .line 310
    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iget v0, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mCellHeight:I

    iput v0, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 362
    :cond_a
    :goto_1
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mBindViewCallback:Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$BindViewCallback;

    if-eqz p0, :cond_b

    .line 363
    invoke-interface {p0, p1}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$BindViewCallback;->onBindView(Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$ViewHolder;)V

    :cond_b
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 53
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$ViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$ViewHolder;
    .locals 3

    const/4 v0, 0x2

    const v1, 0x7f0d0169

    if-eq p2, v0, :cond_5

    const/4 v0, 0x4

    const/4 v2, 0x0

    if-eq p2, v0, :cond_4

    const/16 v0, 0x8

    if-eq p2, v0, :cond_3

    const/16 v0, 0x10

    if-eq p2, v0, :cond_2

    const/16 v0, 0x20

    if-eq p2, v0, :cond_1

    const/16 v0, 0x40

    if-ne p2, v0, :cond_0

    .line 273
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v1, p2, p1}, Lcom/miui/home/launcher/ShortcutIcon;->createShortcutIcon(ILcom/miui/home/launcher/Launcher;Landroid/view/ViewGroup;)Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object p1

    .line 274
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mIconClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 275
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mIconFocusListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 276
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iget p0, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mCellHeight:I

    iput p0, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 277
    new-instance p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$ViewHolder;

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p0

    .line 279
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Unexpected view type"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 267
    :cond_1
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0d0027

    invoke-virtual {p2, v0, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 268
    new-instance p2, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 271
    new-instance p2, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$SearchMarketViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$SearchMarketViewHolder;-><init>(Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;Landroid/view/View;)V

    return-object p2

    .line 265
    :cond_2
    new-instance p2, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$ViewHolder;

    iget-object p0, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0d0022

    invoke-virtual {p0, v0, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-direct {p2, p0}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p2

    .line 263
    :cond_3
    new-instance p2, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$ViewHolder;

    iget-object p0, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0d002b

    invoke-virtual {p0, v0, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-direct {p2, p0}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p2

    .line 261
    :cond_4
    new-instance p2, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$ViewHolder;

    iget-object p0, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0d0023

    invoke-virtual {p0, v0, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-direct {p2, p0}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p2

    .line 251
    :cond_5
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v1, p2, p1}, Lcom/miui/home/launcher/ShortcutIcon;->createShortcutIcon(ILcom/miui/home/launcher/Launcher;Landroid/view/ViewGroup;)Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object p1

    .line 252
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mIconClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 253
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 254
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mIconFocusListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 255
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {p2}, Lcom/miui/home/library/mirror/MirrorManagerCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/mirror/MirrorManagerCompat;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/miui/home/library/mirror/MirrorManagerCompat;->setMirrorMenuListener(Landroid/view/View;)V

    .line 256
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {p2}, Lcom/miui/home/library/mirror/MirrorManagerCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/mirror/MirrorManagerCompat;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/miui/home/library/mirror/MirrorManagerCompat;->setDragListener(Landroid/view/View;)V

    .line 258
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iget p0, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mCellHeight:I

    iput p0, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 259
    new-instance p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$ViewHolder;

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p0
.end method

.method public onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 470
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 471
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mUpdateCallback:Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$AllAppsListUpdateCallback;

    invoke-virtual {p1}, Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback;->onDetachedFromRecyclerView()V

    const/4 p1, 0x0

    .line 472
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mAllAppsRecyclerView:Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;

    return-void
.end method

.method public bridge synthetic onFailedToRecycleView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    .line 53
    check-cast p1, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$ViewHolder;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->onFailedToRecycleView(Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$ViewHolder;)Z

    move-result p0

    return p0
.end method

.method public onFailedToRecycleView(Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$ViewHolder;)Z
    .locals 0

    .line 379
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->resetView(Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$ViewHolder;)V

    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 53
    check-cast p1, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$ViewHolder;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->onViewRecycled(Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$ViewHolder;)V

    return-void
.end method

.method public onViewRecycled(Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$ViewHolder;)V
    .locals 1

    .line 369
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 370
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mBindViewCallback:Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$BindViewCallback;

    if-eqz v0, :cond_0

    .line 371
    invoke-interface {v0, p1}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$BindViewCallback;->onViewRecycle(Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$ViewHolder;)V

    .line 373
    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->resetView(Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$ViewHolder;)V

    return-void
.end method

.method public refreshSpanCount(I)Z
    .locals 1

    .line 178
    iget v0, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mAppsPerRow:I

    if-eq v0, p1, :cond_0

    .line 179
    iput p1, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mAppsPerRow:I

    .line 180
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mGridLayoutMgr:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method setBindViewCallback(Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$BindViewCallback;)V
    .locals 0

    .line 236
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mBindViewCallback:Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$BindViewCallback;

    return-void
.end method

.method public setCellHeight(I)V
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mAllAppsRecyclerView:Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mCellHeight:I

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 173
    :cond_0
    iput p1, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mCellHeight:I

    const/4 p1, 0x0

    .line 174
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->getItemCount()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setColorSelecting(Z)V
    .locals 0

    .line 481
    iput-boolean p1, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->isColorSelecting:Z

    return-void
.end method

.method public setIconClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 203
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mIconClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setIconFocusListener(Landroid/view/View$OnFocusChangeListener;)V
    .locals 0

    .line 199
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mIconFocusListener:Landroid/view/View$OnFocusChangeListener;

    return-void
.end method

.method public setIconLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 0

    .line 207
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    return-void
.end method

.method public setItemPadding(ILandroid/graphics/Rect;)V
    .locals 1

    .line 452
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->getItemViewType(I)I

    move-result p0

    invoke-static {p0}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->isDividerViewType(I)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 453
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppRecommendDividerPaddingTop()I

    move-result p0

    .line 454
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppRecommendDividerPaddingBottom()I

    move-result p1

    const/4 v0, 0x0

    .line 453
    invoke-virtual {p2, v0, p0, v0, p1}, Landroid/graphics/Rect;->set(IIII)V

    :cond_0
    return-void
.end method

.method public setLastSearchQuery(Ljava/lang/String;)V
    .locals 6

    .line 215
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mApps:Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->findMarketAppInfo()Lcom/miui/home/launcher/AppInfo;

    move-result-object v0

    .line 216
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 218
    invoke-virtual {v0}, Lcom/miui/home/launcher/ItemInfo;->getLable()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const v2, 0x7f10045e

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    .line 219
    invoke-virtual {v0}, Lcom/miui/home/launcher/ItemInfo;->getLable()Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mMarketSearchMessage:Ljava/lang/String;

    .line 220
    invoke-virtual {v0}, Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 221
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 222
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mMarketSearchDrawable:Landroid/graphics/drawable/Drawable;

    .line 224
    :cond_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    const v0, 0x7f100053

    .line 226
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mMarketSearchMessage:Ljava/lang/String;

    .line 227
    iput-object v2, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mMarketSearchDrawable:Landroid/graphics/drawable/Drawable;

    .line 229
    :goto_0
    invoke-static {p1, v2}, Lcom/miui/home/launcher/util/PackageManagerHelper;->getMarketSearchIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mMarketSearchIntent:Landroid/content/Intent;

    return-void
.end method

.method submitList(Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;",
            ">;Z)V"
        }
    .end annotation

    .line 401
    iput-boolean p2, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mNeedReverse:Z

    .line 402
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mDifferList:Landroidx/recyclerview/widget/AsyncListDiffer;

    new-instance v0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;)V

    invoke-virtual {p2, p1, v0}, Landroidx/recyclerview/widget/AsyncListDiffer;->submitList(Ljava/util/List;Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateStyle(Lcom/miui/home/launcher/allapps/AllAppsColorMode;I)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mAllAppsColorMode:Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    .line 165
    iput p2, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mBackgroundAlpha:I

    .line 166
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->getItemCount()I

    move-result p1

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    return-void
.end method
