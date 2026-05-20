.class public Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;
.super Ljava/lang/Object;
.source "AppCategorySelectAdapterList.java"

# interfaces
.implements Lcom/miui/home/launcher/allapps/AllAppsStore$OnUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$SelectedFilter;,
        Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$AdapterItem;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;

.field private final mAdapterItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$AdapterItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mAllAppsStore:Lcom/miui/home/launcher/allapps/AllAppsStore;

.field private mAppNameComparator:Lcom/miui/home/launcher/allapps/AppInfoComparator;

.field private final mApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCachedSectionNames:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mIndexer:Lcom/miui/home/launcher/compat/AlphabeticIndexCompat;

.field private mIsSearchMode:Z

.field private mItemFilter:Lcom/miui/home/launcher/util/ItemInfoMatcher;

.field private mSearchResults:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/util/ComponentKey;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedFilter:Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$SelectedFilter;


# direct methods
.method public static synthetic $r8$lambda$Ql8LwRSoB_SYZuea21oMNhn0hks(Landroidx/recyclerview/widget/GridLayoutManager;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->lambda$refreshDataAndScrollToPosition$0(Landroidx/recyclerview/widget/GridLayoutManager;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/miui/home/launcher/allapps/AllAppsStore;Z)V
    .locals 1

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->mApps:Ljava/util/List;

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->mAdapterItems:Ljava/util/ArrayList;

    .line 108
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->mCachedSectionNames:Ljava/util/HashMap;

    .line 113
    new-instance v0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$SelectedFilter;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$SelectedFilter;-><init>(Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;)V

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->mSelectedFilter:Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$SelectedFilter;

    .line 117
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->mContext:Landroid/content/Context;

    .line 118
    iput-object p2, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->mAllAppsStore:Lcom/miui/home/launcher/allapps/AllAppsStore;

    .line 119
    new-instance v0, Lcom/miui/home/launcher/compat/AlphabeticIndexCompat;

    invoke-direct {v0, p1}, Lcom/miui/home/launcher/compat/AlphabeticIndexCompat;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->mIndexer:Lcom/miui/home/launcher/compat/AlphabeticIndexCompat;

    .line 120
    new-instance v0, Lcom/miui/home/launcher/allapps/AppInfoComparator;

    invoke-direct {v0, p1}, Lcom/miui/home/launcher/allapps/AppInfoComparator;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->mAppNameComparator:Lcom/miui/home/launcher/allapps/AppInfoComparator;

    .line 121
    invoke-virtual {p2, p0}, Lcom/miui/home/launcher/allapps/AllAppsStore;->addUpdateListener(Lcom/miui/home/launcher/allapps/AllAppsStore$OnUpdateListener;)V

    .line 122
    iput-boolean p3, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->mIsSearchMode:Z

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;)Lcom/miui/home/launcher/util/ItemInfoMatcher;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->mItemFilter:Lcom/miui/home/launcher/util/ItemInfoMatcher;

    return-object p0
.end method

.method private getAndUpdateCachedSectionName(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->mCachedSectionNames:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->mIndexer:Lcom/miui/home/launcher/compat/AlphabeticIndexCompat;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/compat/AlphabeticIndexCompat;->computeSectionName(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 268
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->mCachedSectionNames:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method private getFiltersApps()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;"
        }
    .end annotation

    .line 294
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->mSearchResults:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 295
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 297
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 298
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->mApps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/AppInfo;

    .line 299
    iget-object v3, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->mSearchResults:Ljava/util/ArrayList;

    invoke-virtual {v2}, Lcom/miui/home/launcher/BaseAppInfo;->toComponentKey()Lcom/miui/home/launcher/util/ComponentKey;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 300
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private static synthetic lambda$refreshDataAndScrollToPosition$0(Landroidx/recyclerview/widget/GridLayoutManager;I)V
    .locals 0

    .line 210
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPosition(I)V

    return-void
.end method

.method private refillAdapterItems()V
    .locals 6

    .line 225
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->mAdapterItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 227
    iget-boolean v0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->mIsSearchMode:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 228
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->getFiltersApps()Ljava/util/List;

    move-result-object v0

    .line 229
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/AppInfo;

    .line 230
    iget-object v4, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->mAdapterItems:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->mSelectedFilter:Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$SelectedFilter;

    invoke-virtual {v5, v3, v1}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$SelectedFilter;->matches(Lcom/miui/home/launcher/ItemInfo;Landroid/content/ComponentName;)Z

    move-result v5

    invoke-static {v3, v5}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$AdapterItem;->asApp(Lcom/miui/home/launcher/AppInfo;Z)Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$AdapterItem;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 232
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->hasFilter()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 233
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 234
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->mAdapterItems:Ljava/util/ArrayList;

    invoke-static {}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$AdapterItem;->asEmptySearch()Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$AdapterItem;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 236
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->mAdapterItems:Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->mContext:Landroid/content/Context;

    const v1, 0x7f1002a8

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$AdapterItem;->asSection(Ljava/lang/String;)Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$AdapterItem;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 240
    :cond_2
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->mApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/AppInfo;

    .line 241
    iget-object v3, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->mSelectedFilter:Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$SelectedFilter;

    invoke-virtual {v3, v2, v1}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$SelectedFilter;->matches(Lcom/miui/home/launcher/ItemInfo;Landroid/content/ComponentName;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 242
    iget-object v3, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->mAdapterItems:Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-static {v2, v4}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$AdapterItem;->asApp(Lcom/miui/home/launcher/AppInfo;Z)Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$AdapterItem;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 246
    :cond_4
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->mAdapterItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v2, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->mApps:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v0, v2, :cond_5

    .line 247
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->mAdapterItems:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->mContext:Landroid/content/Context;

    const v3, 0x7f10003a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$AdapterItem;->asSection(Ljava/lang/String;)Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$AdapterItem;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 249
    :cond_5
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->mAdapterItems:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->mContext:Landroid/content/Context;

    const v3, 0x7f1000d4

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$AdapterItem;->asSection(Ljava/lang/String;)Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$AdapterItem;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 252
    :goto_2
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->mApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/AppInfo;

    .line 253
    iget-object v3, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->mSelectedFilter:Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$SelectedFilter;

    invoke-virtual {v3, v2, v1}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$SelectedFilter;->matches(Lcom/miui/home/launcher/ItemInfo;Landroid/content/ComponentName;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 254
    iget-object v3, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->mAdapterItems:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$AdapterItem;->asApp(Lcom/miui/home/launcher/AppInfo;Z)Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$AdapterItem;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    :goto_4
    return-void
.end method

.method private refreshDataAndScrollToPosition()V
    .locals 3

    .line 202
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->mAdapter:Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;

    if-nez v0, :cond_0

    return-void

    .line 205
    :cond_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;->getLayoutManager()Landroidx/recyclerview/widget/GridLayoutManager;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 209
    :cond_1
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v1

    .line 210
    new-instance v2, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0, v1}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$$ExternalSyntheticLambda0;-><init>(Landroidx/recyclerview/widget/GridLayoutManager;I)V

    invoke-direct {p0, v2}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->updateAdapterItems(Ljava/lang/Runnable;)V

    return-void
.end method

.method private refreshRecyclerView(Ljava/lang/Runnable;)V
    .locals 2

    .line 219
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->mAdapter:Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;

    if-eqz v0, :cond_0

    .line 220
    new-instance v1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->mAdapterItems:Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, p1}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;->submitList(Ljava/util/List;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private updateAdapterItems(Ljava/lang/Runnable;)V
    .locals 0

    .line 214
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->refillAdapterItems()V

    .line 215
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->refreshRecyclerView(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method getAddApps()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;"
        }
    .end annotation

    .line 327
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 328
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->mApps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/AppInfo;

    .line 329
    iget-object v3, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->mItemFilter:Lcom/miui/home/launcher/util/ItemInfoMatcher;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/miui/home/launcher/util/ItemInfoMatcher;->matches(Lcom/miui/home/launcher/ItemInfo;Landroid/content/ComponentName;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->mSelectedFilter:Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$SelectedFilter;

    invoke-virtual {v3, v2, v4}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$SelectedFilter;->matches(Lcom/miui/home/launcher/ItemInfo;Landroid/content/ComponentName;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 330
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method getDifferConfig()Landroidx/recyclerview/widget/AsyncDifferConfig;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/recyclerview/widget/AsyncDifferConfig<",
            "Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$AdapterItem;",
            ">;"
        }
    .end annotation

    .line 337
    new-instance v0, Lcom/miui/home/launcher/MainThreadExecutor;

    invoke-direct {v0}, Lcom/miui/home/launcher/MainThreadExecutor;-><init>()V

    .line 338
    new-instance v1, Landroidx/recyclerview/widget/AsyncDifferConfig$Builder;

    new-instance v2, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$1;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$1;-><init>(Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;)V

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/AsyncDifferConfig$Builder;-><init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V

    .line 350
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/AsyncDifferConfig$Builder;->setMainThreadExecutor(Ljava/util/concurrent/Executor;)Landroidx/recyclerview/widget/AsyncDifferConfig$Builder;

    move-result-object p0

    .line 351
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/AsyncDifferConfig$Builder;->setBackgroundThreadExecutor(Ljava/util/concurrent/Executor;)Landroidx/recyclerview/widget/AsyncDifferConfig$Builder;

    move-result-object p0

    .line 352
    invoke-virtual {p0}, Landroidx/recyclerview/widget/AsyncDifferConfig$Builder;->build()Landroidx/recyclerview/widget/AsyncDifferConfig;

    move-result-object p0

    return-object p0
.end method

.method getRemoveApps()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;"
        }
    .end annotation

    .line 317
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 318
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->mApps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/AppInfo;

    .line 319
    iget-object v3, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->mItemFilter:Lcom/miui/home/launcher/util/ItemInfoMatcher;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/miui/home/launcher/util/ItemInfoMatcher;->matches(Lcom/miui/home/launcher/ItemInfo;Landroid/content/ComponentName;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->mSelectedFilter:Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$SelectedFilter;

    invoke-virtual {v3, v2, v4}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$SelectedFilter;->matches(Lcom/miui/home/launcher/ItemInfo;Landroid/content/ComponentName;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 320
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method getSelectedApps()Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;"
        }
    .end annotation

    .line 307
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 308
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->mApps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/AppInfo;

    .line 309
    iget-object v3, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->mSelectedFilter:Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$SelectedFilter;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$SelectedFilter;->matches(Lcom/miui/home/launcher/ItemInfo;Landroid/content/ComponentName;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 310
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public hasFilter()Z
    .locals 0

    .line 277
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->mSearchResults:Ljava/util/ArrayList;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onAppsUpdated(ILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;)V"
        }
    .end annotation

    .line 141
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->mApps:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 142
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->mApps:Ljava/util/List;

    iget-object p2, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->mAllAppsStore:Lcom/miui/home/launcher/allapps/AllAppsStore;

    invoke-virtual {p2}, Lcom/miui/home/launcher/allapps/AllAppsStore;->getApps()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 143
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->mApps:Ljava/util/List;

    iget-object p2, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->mAppNameComparator:Lcom/miui/home/launcher/allapps/AppInfoComparator;

    invoke-static {p1, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 147
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 148
    sget-object p2, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {p1, p2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 152
    new-instance p1, Ljava/util/TreeMap;

    new-instance p2, Lcom/miui/home/launcher/util/LabelComparator;

    invoke-direct {p2}, Lcom/miui/home/launcher/util/LabelComparator;-><init>()V

    invoke-direct {p1, p2}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 153
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->mApps:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/AppInfo;

    .line 155
    invoke-virtual {v0}, Lcom/miui/home/launcher/ItemInfo;->getLable()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->getAndUpdateCachedSectionName(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 158
    invoke-virtual {p1, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-nez v2, :cond_0

    .line 160
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 161
    invoke-virtual {p1, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    :cond_0
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 167
    :cond_1
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->mApps:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 168
    invoke-virtual {p1}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 169
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->mApps:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Collection;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 173
    :cond_2
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->mApps:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/home/launcher/AppInfo;

    .line 175
    invoke-virtual {p2}, Lcom/miui/home/launcher/ItemInfo;->getLable()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->getAndUpdateCachedSectionName(Ljava/lang/CharSequence;)Ljava/lang/String;

    goto :goto_2

    .line 178
    :cond_3
    sget-object p1, Lcom/miui/home/LauncherDecoupleHelper;->INSTANCE:Lcom/miui/home/LauncherDecoupleHelper;

    iget-object p2, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->mApps:Ljava/util/List;

    invoke-virtual {p1, p2}, Lcom/miui/home/LauncherDecoupleHelper;->filterHideApps(Ljava/util/List;)V

    const/4 p1, 0x0

    .line 179
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->updateAdapterItems(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->mAllAppsStore:Lcom/miui/home/launcher/allapps/AllAppsStore;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/allapps/AllAppsStore;->removeUpdateListener(Lcom/miui/home/launcher/allapps/AllAppsStore$OnUpdateListener;)V

    return-void
.end method

.method public setAdapter(Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->mAdapter:Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;

    return-void
.end method

.method public setChecked(Lcom/miui/home/launcher/AppInfo;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 194
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->mSelectedFilter:Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$SelectedFilter;

    invoke-virtual {p2, p1}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$SelectedFilter;->add(Lcom/miui/home/launcher/AppInfo;)V

    goto :goto_0

    .line 196
    :cond_0
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->mSelectedFilter:Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$SelectedFilter;

    invoke-virtual {p2, p1}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$SelectedFilter;->remove(Lcom/miui/home/launcher/AppInfo;)V

    .line 198
    :goto_0
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->refreshDataAndScrollToPosition()V

    return-void
.end method

.method public setChecked(Ljava/util/List;Ljava/util/List;)V
    .locals 2
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

    .line 183
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/AppInfo;

    .line 184
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->mSelectedFilter:Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$SelectedFilter;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$SelectedFilter;->add(Lcom/miui/home/launcher/AppInfo;)V

    goto :goto_0

    .line 186
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/home/launcher/AppInfo;

    .line 187
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->mSelectedFilter:Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$SelectedFilter;

    invoke-virtual {v0, p2}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$SelectedFilter;->remove(Lcom/miui/home/launcher/AppInfo;)V

    goto :goto_1

    .line 189
    :cond_1
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->refreshDataAndScrollToPosition()V

    return-void
.end method

.method public setOrderedFilter(Ljava/util/ArrayList;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/util/ComponentKey;",
            ">;)Z"
        }
    .end annotation

    .line 284
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->mSearchResults:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eq v0, p1, :cond_1

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 285
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v1, v2

    .line 286
    :cond_0
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->mSearchResults:Ljava/util/ArrayList;

    .line 287
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->onAppsUpdated(ILjava/util/List;)V

    xor-int/lit8 p0, v1, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public updateItemFilter(Lcom/miui/home/launcher/util/ItemInfoMatcher;)V
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->mSelectedFilter:Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$SelectedFilter;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$SelectedFilter;->clear()V

    .line 131
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->mItemFilter:Lcom/miui/home/launcher/util/ItemInfoMatcher;

    .line 132
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->onAppsUpdated(ILjava/util/List;)V

    return-void
.end method
