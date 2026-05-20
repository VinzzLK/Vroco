.class public Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "AppCategorySelectAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter$AppSelectListUpdateCallback;,
        Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter$IconViewHolder;,
        Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter$ViewHolder;,
        Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter$GridSpanSizer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field isClickEnabled:Z

.field private final mApps:Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;

.field private mAppsPerRow:I

.field private mBackgroundAlpha:I

.field private mColorMode:Lcom/miui/home/launcher/allapps/AllAppsColorMode;

.field private final mContext:Landroid/content/Context;

.field private mDifferList:Landroidx/recyclerview/widget/AsyncListDiffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/recyclerview/widget/AsyncListDiffer<",
            "Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$AdapterItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mGridLayoutMgr:Landroidx/recyclerview/widget/GridLayoutManager;

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private mUpdateCallback:Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter$AppSelectListUpdateCallback;


# direct methods
.method public static synthetic $r8$lambda$8yhTDAH2p_uSo2u5lBwMVXl-in0(Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter$IconViewHolder;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;->lambda$onBindViewHolder$1(Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter$IconViewHolder;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LBu_Y3do_u9x_az3wmYYwa4LePo(Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;->lambda$onBindViewHolder$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$VTtLusnbaxLKSPZEF0fnsJKQE44(Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;Ljava/util/List;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;->lambda$submitList$4(Ljava/util/List;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eJefg20A5OR2QrzqkFk_Iy9TtXE(Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter$IconViewHolder;Lcom/miui/home/launcher/AppInfo;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;->lambda$onBindViewHolder$3(Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter$IconViewHolder;Lcom/miui/home/launcher/AppInfo;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qy9_Nzu1QKglAXgAp_v8Ij1GquU(Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;->lambda$setColorMode$0()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;Lcom/miui/home/launcher/allapps/AllAppsColorMode;I)V
    .locals 4

    .line 74
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x1

    .line 69
    iput-boolean v0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;->isClickEnabled:Z

    .line 75
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;->mContext:Landroid/content/Context;

    .line 76
    iput-object p2, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;->mApps:Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;

    .line 77
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountXDrawerMode()I

    move-result v1

    iput v1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;->mAppsPerRow:I

    .line 78
    new-instance v2, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v1, v0, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    iput-object v2, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;->mGridLayoutMgr:Landroidx/recyclerview/widget/GridLayoutManager;

    .line 79
    new-instance v0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter$GridSpanSizer;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter$GridSpanSizer;-><init>(Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;)V

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 80
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 81
    iput-object p3, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;->mColorMode:Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    .line 82
    iput p4, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;->mBackgroundAlpha:I

    .line 84
    new-instance p1, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter$AppSelectListUpdateCallback;

    invoke-direct {p1, p0, p0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter$AppSelectListUpdateCallback;-><init>(Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;->mUpdateCallback:Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter$AppSelectListUpdateCallback;

    .line 85
    new-instance p1, Landroidx/recyclerview/widget/AsyncListDiffer;

    iget-object p3, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;->mUpdateCallback:Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter$AppSelectListUpdateCallback;

    invoke-virtual {p2}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->getDifferConfig()Landroidx/recyclerview/widget/AsyncDifferConfig;

    move-result-object p2

    invoke-direct {p1, p3, p2}, Landroidx/recyclerview/widget/AsyncListDiffer;-><init>(Landroidx/recyclerview/widget/ListUpdateCallback;Landroidx/recyclerview/widget/AsyncDifferConfig;)V

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;->mDifferList:Landroidx/recyclerview/widget/AsyncListDiffer;

    .line 87
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;->refreshSpanCount()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;)I
    .locals 0

    .line 34
    iget p0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;->mAppsPerRow:I

    return p0
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;)Landroid/content/Context;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private static synthetic lambda$onBindViewHolder$1(Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter$IconViewHolder;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 131
    invoke-static {p1}, Lcom/miui/home/launcher/graphics/drawable/MamlCompat;->onResume(Landroid/graphics/drawable/Drawable;)V

    .line 132
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter$IconViewHolder;->icon:Lcom/miui/home/launcher/ShortcutIcon;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/miui/home/launcher/ShortcutIcon;->setIconDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$2()V
    .locals 1

    const/4 v0, 0x1

    .line 144
    iput-boolean v0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;->isClickEnabled:Z

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$3(Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter$IconViewHolder;Lcom/miui/home/launcher/AppInfo;Landroid/view/View;)V
    .locals 1

    .line 139
    iget-boolean p3, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;->isClickEnabled:Z

    if-eqz p3, :cond_0

    const/4 p3, 0x0

    .line 140
    iput-boolean p3, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;->isClickEnabled:Z

    const/4 p3, 0x1

    .line 141
    invoke-virtual {p0, p3}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;->setAnimEnable(Z)V

    .line 142
    invoke-virtual {p1}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter$IconViewHolder;->isChecked()Z

    move-result v0

    xor-int/2addr v0, p3

    invoke-virtual {p1, v0, p3}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter$IconViewHolder;->setChecked(ZZ)V

    .line 143
    iget-object p3, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;->mApps:Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;

    invoke-virtual {p1}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter$IconViewHolder;->isChecked()Z

    move-result p1

    invoke-virtual {p3, p2, p1}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->setChecked(Lcom/miui/home/launcher/AppInfo;Z)V

    .line 144
    new-instance p1, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;)V

    const-wide/16 p2, 0xc8

    invoke-static {p1, p2, p3}, Lcom/miui/home/launcher/common/BackgroundThread;->postDelayed(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$setColorMode$0()V
    .locals 2

    .line 46
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    return-void
.end method

.method private synthetic lambda$submitList$4(Ljava/util/List;Ljava/lang/Runnable;)V
    .locals 0

    .line 180
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;->mDifferList:Landroidx/recyclerview/widget/AsyncListDiffer;

    if-eqz p0, :cond_0

    .line 181
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/AsyncListDiffer;->submitList(Ljava/util/List;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method checkList(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;)V"
        }
    .end annotation

    .line 240
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;->mApps:Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->setChecked(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public getAddApps()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;"
        }
    .end annotation

    .line 236
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;->mApps:Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->getAddApps()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getItem(I)Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$AdapterItem;
    .locals 0

    .line 198
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;->mDifferList:Landroidx/recyclerview/widget/AsyncListDiffer;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/AsyncListDiffer;->getCurrentList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$AdapterItem;

    return-object p0
.end method

.method public getItemCount()I
    .locals 0

    .line 189
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;->mDifferList:Landroidx/recyclerview/widget/AsyncListDiffer;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/AsyncListDiffer;->getCurrentList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getItemViewType(I)I
    .locals 0

    .line 194
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;->getItem(I)Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$AdapterItem;

    move-result-object p0

    iget p0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$AdapterItem;->viewType:I

    return p0
.end method

.method public getLayoutManager()Landroidx/recyclerview/widget/GridLayoutManager;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;->mGridLayoutMgr:Landroidx/recyclerview/widget/GridLayoutManager;

    return-object p0
.end method

.method public getRemoveApps()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;"
        }
    .end annotation

    .line 232
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;->mApps:Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->getRemoveApps()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method getSelectedApps()Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;"
        }
    .end annotation

    .line 228
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;->mApps:Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->getSelectedApps()Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 245
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 246
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;->mUpdateCallback:Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter$AppSelectListUpdateCallback;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 34
    check-cast p1, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;->onBindViewHolder(Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter$ViewHolder;I)V
    .locals 5

    .line 119
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 p2, 0x3

    if-eq v0, p2, :cond_0

    goto/16 :goto_2

    .line 168
    :cond_0
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p2, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;->mColorMode:Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;->mBackgroundAlpha:I

    .line 169
    invoke-virtual {v0, v1, v3}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->getSearchEmptyDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 168
    invoke-virtual {p2, v2, v0, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 170
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Landroid/widget/TextView;

    iget-object p2, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;->mColorMode:Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;->mContext:Landroid/content/Context;

    iget p0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;->mBackgroundAlpha:I

    invoke-virtual {p2, v0, p0}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->getAppTextColor(Landroid/content/Context;I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    .line 163
    :cond_1
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Landroid/widget/TextView;

    .line 164
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;->mColorMode:Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;->mBackgroundAlpha:I

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->getAppTextColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 165
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;->getItem(I)Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$AdapterItem;

    move-result-object p0

    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$AdapterItem;->section:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 121
    :cond_2
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;->getItem(I)Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$AdapterItem;

    move-result-object p2

    .line 122
    iget-object v0, p2, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$AdapterItem;->app:Lcom/miui/home/launcher/AppInfo;

    .line 123
    check-cast p1, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter$IconViewHolder;

    .line 124
    invoke-virtual {v0}, Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 125
    invoke-virtual {v0}, Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 126
    invoke-static {v1}, Lcom/miui/home/launcher/graphics/drawable/MamlCompat;->onResume(Landroid/graphics/drawable/Drawable;)V

    .line 127
    iget-object v1, p1, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter$IconViewHolder;->icon:Lcom/miui/home/launcher/ShortcutIcon;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Lcom/miui/home/launcher/ShortcutIcon;->setIconDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 129
    :cond_3
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/Application;->getIconCache()Lcom/miui/home/launcher/IconCache;

    move-result-object v2

    invoke-virtual {v0}, Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    new-instance v4, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter$$ExternalSyntheticLambda4;

    invoke-direct {v4, p1}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter$$ExternalSyntheticLambda4;-><init>(Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter$IconViewHolder;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/miui/home/launcher/ShortcutInfo;->getIconAsync(Landroid/content/Context;Lcom/miui/home/launcher/IconCache;Landroid/graphics/drawable/Drawable;Ljava/util/function/Consumer;)V

    .line 135
    :goto_0
    iget-object v1, p1, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter$IconViewHolder;->icon:Lcom/miui/home/launcher/ShortcutIcon;

    iget-object v2, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;->mColorMode:Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    iget-object v3, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;->mBackgroundAlpha:I

    invoke-virtual {v2, v3, v4}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->getAppTextColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/ShortcutIcon;->setTextColor(I)V

    .line 136
    iget-object v1, p1, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter$IconViewHolder;->icon:Lcom/miui/home/launcher/ShortcutIcon;

    iget-object v2, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/ShortcutInfo;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    iget-boolean p2, p2, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$AdapterItem;->selected:Z

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter$IconViewHolder;->setChecked(ZZ)V

    .line 138
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, v0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter$IconViewHolder;Lcom/miui/home/launcher/AppInfo;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsCellHeight()I

    move-result v0

    if-eq p2, v0, :cond_4

    .line 148
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsCellHeight()I

    move-result v0

    iput v0, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 150
    :cond_4
    invoke-virtual {p1}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter$IconViewHolder;->isChecked()Z

    move-result p2

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;->mContext:Landroid/content/Context;

    const v0, 0x7f1000c4

    goto :goto_1

    :cond_5
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;->mContext:Landroid/content/Context;

    const v0, 0x7f10003c

    :goto_1
    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 151
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter$1;-><init>(Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter$IconViewHolder;Ljava/lang/String;)V

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    :goto_2
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 34
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter$ViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter$ViewHolder;
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    .line 111
    new-instance p2, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter$ViewHolder;

    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0d0023

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-direct {p2, p0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p2

    .line 113
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected view type:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 109
    :cond_1
    new-instance p2, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter$ViewHolder;

    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0d002b

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-direct {p2, p0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p2

    .line 104
    :cond_2
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const p2, 0x7f0d016b

    invoke-virtual {p0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    const/4 p1, 0x0

    .line 105
    invoke-virtual {p0, p1, p1, p1, v1}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 106
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsCellHeight()I

    move-result p2

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 107
    new-instance p1, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter$IconViewHolder;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter$IconViewHolder;-><init>(Landroid/view/View;)V

    return-object p1
.end method

.method public onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 251
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 252
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;->mUpdateCallback:Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter$AppSelectListUpdateCallback;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback;->onDetachedFromRecyclerView()V

    return-void
.end method

.method public refreshSpanCount()V
    .locals 1

    .line 91
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountXDrawerMode()I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;->mAppsPerRow:I

    .line 92
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;->mGridLayoutMgr:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    return-void
.end method

.method public setAnimEnable(Z)V
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;->mUpdateCallback:Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter$AppSelectListUpdateCallback;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter$AppSelectListUpdateCallback;->setAnimEnable(Z)V

    return-void
.end method

.method public setColorMode(Lcom/miui/home/launcher/allapps/AllAppsColorMode;I)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;->mColorMode:Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    .line 45
    iput p2, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;->mBackgroundAlpha:I

    .line 46
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;->mUpdateCallback:Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter$AppSelectListUpdateCallback;

    new-instance p2, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter$$ExternalSyntheticLambda2;-><init>(Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;)V

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback;->runOnAnimatingDone(Ljava/lang/Runnable;)V

    return-void
.end method

.method submitList(Ljava/util/List;Ljava/lang/Runnable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$AdapterItem;",
            ">;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .line 178
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;->mUpdateCallback:Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter$AppSelectListUpdateCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback;->isCanSubmit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;->mUpdateCallback:Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter$AppSelectListUpdateCallback;

    new-instance v1, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1, p2}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter$$ExternalSyntheticLambda3;-><init>(Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;Ljava/util/List;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback;->runOnAnimatingDone(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
