.class public abstract Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;
.super Ljava/lang/Object;
.source "BaseAlphabeticalAppsList.java"

# interfaces
.implements Lcom/miui/home/launcher/allapps/AllAppsStore$OnUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$RecommendAppsCallback;,
        Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;,
        Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$FastScrollSectionInfo;
    }
.end annotation


# static fields
.field private static volatile sIsPendingAppsUpdate:Z = false

.field private static sStopForbiddenUpdateRunnable:Ljava/lang/Runnable;


# instance fields
.field appIndex:I

.field lastFastScrollerSectionInfo:Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$FastScrollSectionInfo;

.field lastSectionName:Ljava/lang/String;

.field protected mAdapter:Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;

.field protected final mAdapterItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mAllAppsStore:Lcom/miui/home/launcher/allapps/AllAppsStore;

.field private mAppNameComparator:Lcom/miui/home/launcher/allapps/AppInfoComparator;

.field protected final mApps:Ljava/util/List;
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

.field private mCallback:Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$RecommendAppsCallback;

.field private mColorFilterType:I

.field protected final mFastScrollerSections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$FastScrollSectionInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mFilterAppsWithColor:Z

.field protected final mFilteredApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mIndexer:Lcom/miui/home/launcher/compat/AlphabeticIndexCompat;

.field private mItemFilter:Lcom/miui/home/launcher/util/ItemInfoMatcher;

.field private final mLauncher:Lcom/miui/home/launcher/Launcher;

.field private mNumAppRowsInAdapter:I

.field private mRecommendAppListener:Lcom/miui/launcher/appprediction/GoogleRecommendApp$OnDateChangedListener;

.field private final mRecommendApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSearchResults:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/util/ComponentKey;",
            ">;"
        }
    .end annotation
.end field

.field public mShowEdit:Z

.field public mShowRecommendApps:Z

.field position:I


# direct methods
.method public static synthetic $r8$lambda$DS3Pb6b0MrSnXPFaTA0h2X5o3zE(Ljava/util/Set;Lcom/miui/home/launcher/AppInfo;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->lambda$generateRecommendedApps$0(Ljava/util/Set;Lcom/miui/home/launcher/AppInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$EEB6zryKW7hpZ9xs7K48bfstyJY(Ljava/util/List;ILcom/miui/home/launcher/AppInfo;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->lambda$generateRecommendedApps$1(Ljava/util/List;ILcom/miui/home/launcher/AppInfo;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/allapps/AllAppsStore;)V
    .locals 2

    .line 308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 66
    iput v0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mColorFilterType:I

    .line 253
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mApps:Ljava/util/List;

    .line 255
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mRecommendApps:Ljava/util/List;

    .line 259
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mFilteredApps:Ljava/util/List;

    .line 261
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mAdapterItems:Ljava/util/ArrayList;

    .line 263
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mFastScrollerSections:Ljava/util/List;

    .line 267
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mCachedSectionNames:Ljava/util/HashMap;

    .line 278
    new-instance v1, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$1;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$1;-><init>(Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;)V

    iput-object v1, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mRecommendAppListener:Lcom/miui/launcher/appprediction/GoogleRecommendApp$OnDateChangedListener;

    const/4 v1, 0x0

    .line 478
    iput-object v1, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->lastSectionName:Ljava/lang/String;

    .line 479
    iput-object v1, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->lastFastScrollerSectionInfo:Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$FastScrollSectionInfo;

    .line 480
    iput v0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->position:I

    .line 481
    iput v0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->appIndex:I

    .line 309
    iput-object p2, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mAllAppsStore:Lcom/miui/home/launcher/allapps/AllAppsStore;

    .line 310
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 311
    new-instance v0, Lcom/miui/home/launcher/compat/AlphabeticIndexCompat;

    invoke-direct {v0, p1}, Lcom/miui/home/launcher/compat/AlphabeticIndexCompat;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mIndexer:Lcom/miui/home/launcher/compat/AlphabeticIndexCompat;

    .line 312
    new-instance v0, Lcom/miui/home/launcher/allapps/AppInfoComparator;

    invoke-direct {v0, p1}, Lcom/miui/home/launcher/allapps/AppInfoComparator;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mAppNameComparator:Lcom/miui/home/launcher/allapps/AppInfoComparator;

    .line 313
    invoke-virtual {p2, p0}, Lcom/miui/home/launcher/allapps/AllAppsStore;->addUpdateListener(Lcom/miui/home/launcher/allapps/AllAppsStore$OnUpdateListener;)V

    .line 314
    invoke-static {}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->getInstance()Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->isColorSearchEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mFilterAppsWithColor:Z

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 61
    sget-boolean v0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->sIsPendingAppsUpdate:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .locals 0

    .line 61
    sput-boolean p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->sIsPendingAppsUpdate:Z

    return p0
.end method

.method private generateRecommendedApps()V
    .locals 7

    .line 754
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mAdapter:Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;

    if-nez v0, :cond_0

    .line 755
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->generateRecommendDefaultData()V

    return-void

    .line 758
    :cond_0
    iget v1, v0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mCellHeight:I

    .line 759
    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->getAllAppsRecyclerView()Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;

    move-result-object v0

    if-nez v0, :cond_1

    .line 761
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->generateRecommendDefaultData()V

    return-void

    .line 765
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsRecommendCount()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    .line 766
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    .line 767
    iget-object v3, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mAdapter:Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;

    iget-object v4, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const/16 v5, 0x10

    invoke-virtual {v3, v4, v5}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->getViewHolderHeight(Landroid/content/Context;I)I

    move-result v3

    sub-int/2addr v0, v3

    sub-int/2addr v0, v1

    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 768
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 769
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountXDrawerMode()I

    move-result v1

    mul-int v3, v0, v1

    const-string v4, "AlphabeticalAppsList"

    if-gtz v3, :cond_2

    .line 772
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->generateRecommendDefaultData()V

    const-string/jumbo p0, "totalAppsOnFirstPage <= 0"

    .line 773
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 776
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "firstPageRowCount: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " numAppsPerRow: "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    new-instance v0, Ljava/util/LinkedHashSet;

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mApps:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-interface {v1, v5, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 778
    invoke-static {}, Lcom/miui/home/launcher/allapps/recommend/RecommendAppProviderManager;->getInstance()Lcom/miui/home/launcher/allapps/recommend/RecommendAppProviderManager;

    move-result-object v1

    iget-object v3, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mApps:Ljava/util/List;

    invoke-virtual {v1, v3}, Lcom/miui/home/launcher/allapps/recommend/RecommendAppProviderManager;->getRecommendApps(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 779
    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v5, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$$ExternalSyntheticLambda2;

    invoke-direct {v5, v0}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$$ExternalSyntheticLambda2;-><init>(Ljava/util/Set;)V

    .line 780
    invoke-interface {v3, v5}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    int-to-long v5, v2

    .line 781
    invoke-interface {v0, v5, v6}, Ljava/util/stream/Stream;->limit(J)Ljava/util/stream/Stream;

    move-result-object v0

    .line 782
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 784
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v3, v2, :cond_3

    .line 785
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "finalRecommendedAppsCount\uff1a  "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v3, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$$ExternalSyntheticLambda1;

    invoke-direct {v3, v0, v2}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$$ExternalSyntheticLambda1;-><init>(Ljava/util/List;I)V

    .line 787
    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 788
    new-instance v2, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 790
    :cond_3
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mRecommendApps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 791
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mRecommendApps:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private isForbiddenAppsUpdate(I)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 802
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 803
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getHandler()Landroid/os/Handler;

    move-result-object p0

    sget-object p1, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->sStopForbiddenUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result p0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static synthetic lambda$generateRecommendedApps$0(Ljava/util/Set;Lcom/miui/home/launcher/AppInfo;)Z
    .locals 0

    .line 780
    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static synthetic lambda$generateRecommendedApps$1(Ljava/util/List;ILcom/miui/home/launcher/AppInfo;)Z
    .locals 0

    .line 787
    invoke-interface {p0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-ge p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private needRefreshSearchRecommendApps(I)Z
    .locals 1

    .line 466
    iget-boolean v0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mShowRecommendApps:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->hasFilter()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->isDrawerMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mLauncher:Lcom/miui/home/launcher/Launcher;

    sget-object v0, Lcom/miui/home/launcher/LauncherState;->ALL_APPS:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    if-ne p1, p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public filterAppsWithColor(I)V
    .locals 2

    const-string v0, "AlphabeticalAppsList"

    const-string v1, "filterAppsWithColor"

    .line 70
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iput p1, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mColorFilterType:I

    .line 72
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->updateAdapterItems()V

    return-void
.end method

.method public findMarketAppInfo()Lcom/miui/home/launcher/AppInfo;
    .locals 0

    .line 631
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mAllAppsStore:Lcom/miui/home/launcher/allapps/AllAppsStore;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AllAppsStore;->findMarketAppInfo()Lcom/miui/home/launcher/AppInfo;

    move-result-object p0

    return-object p0
.end method

.method public generateRecommendDefaultData()V
    .locals 2

    .line 795
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mRecommendApps:Ljava/util/List;

    invoke-static {v0}, Lcom/miui/launcher/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 798
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mRecommendApps:Ljava/util/List;

    invoke-static {}, Lcom/miui/home/launcher/allapps/recommend/RecommendAppProviderManager;->getInstance()Lcom/miui/home/launcher/allapps/recommend/RecommendAppProviderManager;

    move-result-object v1

    iget-object p0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1, p0}, Lcom/miui/home/launcher/allapps/recommend/RecommendAppProviderManager;->getDefaultRecommendApps(Lcom/miui/home/launcher/Launcher;)Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public getAdapterItems()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;",
            ">;"
        }
    .end annotation

    .line 357
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mAdapter:Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->getItems()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected getAndUpdateCachedSectionName(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1

    .line 622
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mCachedSectionNames:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    .line 624
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mIndexer:Lcom/miui/home/launcher/compat/AlphabeticIndexCompat;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/compat/AlphabeticIndexCompat;->computeSectionName(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 625
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mCachedSectionNames:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public getAppPosition(Lcom/miui/home/launcher/AppInfo;)I
    .locals 3

    .line 677
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mAdapterItems:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;

    .line 678
    iget v1, v0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->viewType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v1, v0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->appInfo:Lcom/miui/home/launcher/AppInfo;

    if-eqz v1, :cond_0

    iget-boolean v2, v0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->isRecommend:Z

    if-nez v2, :cond_0

    .line 680
    invoke-virtual {v1}, Lcom/miui/home/launcher/BaseAppInfo;->toComponentKey()Lcom/miui/home/launcher/util/ComponentKey;

    move-result-object v1

    invoke-virtual {p1}, Lcom/miui/home/launcher/BaseAppInfo;->toComponentKey()Lcom/miui/home/launcher/util/ComponentKey;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/util/ComponentKey;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 681
    iget p0, v0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->position:I

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public getApps()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;"
        }
    .end annotation

    .line 338
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mApps:Ljava/util/List;

    return-object p0
.end method

.method getDifferConfig()Landroidx/recyclerview/widget/AsyncDifferConfig;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/recyclerview/widget/AsyncDifferConfig<",
            "Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;",
            ">;"
        }
    .end annotation

    .line 658
    new-instance v0, Lcom/miui/home/launcher/MainThreadExecutor;

    invoke-direct {v0}, Lcom/miui/home/launcher/MainThreadExecutor;-><init>()V

    .line 659
    new-instance v1, Landroidx/recyclerview/widget/AsyncDifferConfig$Builder;

    new-instance v2, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$3;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$3;-><init>(Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;)V

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/AsyncDifferConfig$Builder;-><init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V

    .line 671
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/AsyncDifferConfig$Builder;->setMainThreadExecutor(Ljava/util/concurrent/Executor;)Landroidx/recyclerview/widget/AsyncDifferConfig$Builder;

    move-result-object p0

    .line 672
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/AsyncDifferConfig$Builder;->setBackgroundThreadExecutor(Ljava/util/concurrent/Executor;)Landroidx/recyclerview/widget/AsyncDifferConfig$Builder;

    move-result-object p0

    .line 673
    invoke-virtual {p0}, Landroidx/recyclerview/widget/AsyncDifferConfig$Builder;->build()Landroidx/recyclerview/widget/AsyncDifferConfig;

    move-result-object p0

    return-object p0
.end method

.method getFastScrollerSections()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$FastScrollSectionInfo;",
            ">;"
        }
    .end annotation

    .line 350
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mFastScrollerSections:Ljava/util/List;

    return-object p0
.end method

.method protected getFiltersAppInfos()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;"
        }
    .end annotation

    .line 603
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mSearchResults:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 604
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mApps:Ljava/util/List;

    return-object p0

    .line 606
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 607
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mSearchResults:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/util/ComponentKey;

    .line 608
    iget-object v3, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mAllAppsStore:Lcom/miui/home/launcher/allapps/AllAppsStore;

    invoke-virtual {v3, v2}, Lcom/miui/home/launcher/allapps/AllAppsStore;->getApp(Lcom/miui/home/launcher/util/ComponentKey;)Lcom/miui/home/launcher/AppInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 610
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method getNumAppRows()I
    .locals 0

    .line 364
    iget p0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mNumAppRowsInAdapter:I

    return p0
.end method

.method public getRecommendApps(Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$RecommendAppsCallback;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$RecommendAppsCallback;",
            ")",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;"
        }
    .end annotation

    .line 342
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mCallback:Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$RecommendAppsCallback;

    .line 343
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mRecommendApps:Ljava/util/List;

    return-object p0
.end method

.method public handleAdapterWithColorFilter()V
    .locals 6

    .line 693
    iget-boolean v0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mFilterAppsWithColor:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mColorFilterType:I

    if-eqz v0, :cond_3

    .line 694
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mFilteredApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 695
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mAdapterItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 696
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->getFiltersAppInfos()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/AppInfo;

    .line 697
    invoke-virtual {v1}, Lcom/miui/home/launcher/BaseAppInfo;->getIconColorType()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 698
    iget v3, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mColorFilterType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 699
    invoke-virtual {v1}, Lcom/miui/home/launcher/ItemInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->getAndUpdateCachedSectionName(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 702
    iget-object v3, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->lastSectionName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 703
    iput-object v2, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->lastSectionName:Ljava/lang/String;

    .line 704
    new-instance v3, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$FastScrollSectionInfo;

    invoke-direct {v3, v2}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$FastScrollSectionInfo;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->lastFastScrollerSectionInfo:Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$FastScrollSectionInfo;

    .line 705
    iget-object v4, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mFastScrollerSections:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 709
    :cond_1
    iget v3, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->position:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->position:I

    iget v4, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->appIndex:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->appIndex:I

    const/4 v5, 0x0

    invoke-static {v3, v2, v1, v4, v5}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->asApp(ILjava/lang/String;Lcom/miui/home/launcher/AppInfo;IZ)Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;

    move-result-object v2

    .line 710
    iget-object v3, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->lastFastScrollerSectionInfo:Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$FastScrollSectionInfo;

    iget-object v4, v3, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$FastScrollSectionInfo;->fastScrollToItem:Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;

    if-nez v4, :cond_2

    .line 711
    iput-object v2, v3, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$FastScrollSectionInfo;->fastScrollToItem:Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;

    .line 713
    :cond_2
    iget-object v3, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mAdapterItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 714
    iget-object v2, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mFilteredApps:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-void
.end method

.method public hasFilter()Z
    .locals 0

    .line 378
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mSearchResults:Ljava/util/ArrayList;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method hasNoFilteredResults()Z
    .locals 1

    .line 385
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mSearchResults:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mFilteredApps:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isShowRecommendApps()Z
    .locals 0

    .line 635
    iget-boolean p0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mShowRecommendApps:Z

    return p0
.end method

.method public onAppsUpdated(ILjava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;)V"
        }
    .end annotation

    .line 406
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->isForbiddenAppsUpdate(I)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p0, 0x1

    .line 407
    sput-boolean p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->sIsPendingAppsUpdate:Z

    return-void

    .line 411
    :cond_0
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mApps:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 413
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mAllAppsStore:Lcom/miui/home/launcher/allapps/AllAppsStore;

    invoke-virtual {p2}, Lcom/miui/home/launcher/allapps/AllAppsStore;->getApps()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/AppInfo;

    .line 414
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mItemFilter:Lcom/miui/home/launcher/util/ItemInfoMatcher;

    if-eqz v1, :cond_2

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/miui/home/launcher/util/ItemInfoMatcher;->matches(Lcom/miui/home/launcher/ItemInfo;Landroid/content/ComponentName;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->hasFilter()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 415
    :cond_2
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mApps:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 418
    :cond_3
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->sortApps()V

    .line 422
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget-object p2, p2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 423
    sget-object v0, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {p2, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 427
    new-instance p2, Ljava/util/TreeMap;

    new-instance v0, Lcom/miui/home/launcher/util/LabelComparator;

    invoke-direct {v0}, Lcom/miui/home/launcher/util/LabelComparator;-><init>()V

    invoke-direct {p2, v0}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 428
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/AppInfo;

    .line 430
    invoke-virtual {v1}, Lcom/miui/home/launcher/ItemInfo;->getLable()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->getAndUpdateCachedSectionName(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 433
    invoke-virtual {p2, v2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    if-nez v3, :cond_4

    .line 435
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 436
    invoke-virtual {p2, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    :cond_4
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 442
    :cond_5
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 443
    invoke-virtual {p2}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 444
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 448
    :cond_6
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mApps:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/AppInfo;

    .line 450
    invoke-virtual {v0}, Lcom/miui/home/launcher/ItemInfo;->getLable()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->getAndUpdateCachedSectionName(Ljava/lang/CharSequence;)Ljava/lang/String;

    goto :goto_3

    .line 453
    :cond_7
    iget-boolean p2, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mShowRecommendApps:Z

    if-eqz p2, :cond_8

    .line 454
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->generateRecommendedApps()V

    .line 455
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->needRefreshSearchRecommendApps(I)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 456
    invoke-static {}, Lcom/miui/home/launcher/allapps/recommend/RecommendAppProviderManager;->getInstance()Lcom/miui/home/launcher/allapps/recommend/RecommendAppProviderManager;

    move-result-object p2

    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mRecommendAppListener:Lcom/miui/launcher/appprediction/GoogleRecommendApp$OnDateChangedListener;

    invoke-virtual {p2, v0}, Lcom/miui/home/launcher/allapps/recommend/RecommendAppProviderManager;->setPredictAppListener(Lcom/miui/launcher/appprediction/GoogleRecommendApp$OnDateChangedListener;)V

    .line 457
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mCallback:Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$RecommendAppsCallback;

    if-eqz p2, :cond_8

    .line 458
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mRecommendApps:Ljava/util/List;

    invoke-interface {p2, p1, v0}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$RecommendAppsCallback;->onAppsUpdate(ILjava/util/List;)V

    .line 462
    :cond_8
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->updateAdapterItems()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 318
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mAllAppsStore:Lcom/miui/home/launcher/allapps/AllAppsStore;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/allapps/AllAppsStore;->removeUpdateListener(Lcom/miui/home/launcher/allapps/AllAppsStore$OnUpdateListener;)V

    .line 319
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->stopForbiddenUpdate()V

    return-void
.end method

.method protected refillAdapterItems()V
    .locals 9

    const/4 v0, 0x0

    .line 484
    iput-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->lastSectionName:Ljava/lang/String;

    .line 485
    iput-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->lastFastScrollerSectionInfo:Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$FastScrollSectionInfo;

    const/4 v0, 0x0

    .line 486
    iput v0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->position:I

    .line 487
    iput v0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->appIndex:I

    .line 489
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mFilteredApps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 490
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mFastScrollerSections:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 491
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mAdapterItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 492
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mAdapter:Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;

    if-eqz v1, :cond_0

    .line 493
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 496
    :cond_0
    iget-boolean v1, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mShowRecommendApps:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mRecommendApps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 498
    new-instance v1, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$FastScrollSectionInfo;

    const-string v3, "#"

    invoke-direct {v1, v3}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$FastScrollSectionInfo;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->lastFastScrollerSectionInfo:Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$FastScrollSectionInfo;

    .line 499
    iget-object v4, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mFastScrollerSections:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 501
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mRecommendApps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/home/launcher/AppInfo;

    .line 503
    iget v5, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->position:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->position:I

    iget v6, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->appIndex:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->appIndex:I

    invoke-static {v5, v3, v4, v6, v2}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->asApp(ILjava/lang/String;Lcom/miui/home/launcher/AppInfo;IZ)Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;

    move-result-object v5

    .line 505
    iget-object v6, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->lastFastScrollerSectionInfo:Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$FastScrollSectionInfo;

    iget-object v7, v6, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$FastScrollSectionInfo;->fastScrollToItem:Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;

    if-nez v7, :cond_2

    .line 506
    iput-object v5, v6, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$FastScrollSectionInfo;->fastScrollToItem:Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;

    .line 508
    :cond_2
    iget-object v6, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mAdapterItems:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 509
    iget-object v5, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mFilteredApps:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 510
    iget v4, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->position:I

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsRecommendCount()I

    move-result v5

    if-lt v4, v5, :cond_1

    .line 516
    :cond_3
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mAdapterItems:Ljava/util/ArrayList;

    iget v3, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->position:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->position:I

    invoke-static {v3}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->asRecommendDivider(I)Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 521
    :cond_4
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->getFiltersAppInfos()Ljava/util/List;

    move-result-object v1

    .line 522
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->hasFilter()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    .line 523
    iget-object v3, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mAdapterItems:Ljava/util/ArrayList;

    iget v4, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->position:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->position:I

    invoke-static {v4}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->asMarketSearch(I)Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 524
    iget-object v3, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mAdapterItems:Ljava/util/ArrayList;

    iget v4, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->position:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->position:I

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f1002a8

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->asAllAppsTitle(ILjava/lang/String;)Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 526
    :cond_5
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/AppInfo;

    .line 527
    invoke-virtual {v3}, Lcom/miui/home/launcher/ItemInfo;->getLable()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->getAndUpdateCachedSectionName(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 530
    iget-object v5, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->lastSectionName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 531
    iput-object v4, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->lastSectionName:Ljava/lang/String;

    .line 532
    new-instance v5, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$FastScrollSectionInfo;

    invoke-direct {v5, v4}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$FastScrollSectionInfo;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->lastFastScrollerSectionInfo:Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$FastScrollSectionInfo;

    .line 533
    iget-object v6, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mFastScrollerSections:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 537
    :cond_6
    iget v5, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->position:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->position:I

    iget v6, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->appIndex:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->appIndex:I

    invoke-static {v5, v4, v3, v6, v0}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->asApp(ILjava/lang/String;Lcom/miui/home/launcher/AppInfo;IZ)Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;

    move-result-object v4

    .line 538
    iget-object v5, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->lastFastScrollerSectionInfo:Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$FastScrollSectionInfo;

    iget-object v6, v5, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$FastScrollSectionInfo;->fastScrollToItem:Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;

    if-nez v6, :cond_7

    .line 539
    iput-object v4, v5, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$FastScrollSectionInfo;->fastScrollToItem:Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;

    .line 541
    :cond_7
    iget-object v5, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mAdapterItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 542
    iget-object v4, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mFilteredApps:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 545
    :cond_8
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->handleAdapterWithColorFilter()V

    .line 547
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->hasFilter()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 548
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->hasNoFilteredResults()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 550
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mAdapterItems:Ljava/util/ArrayList;

    iget v3, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->position:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->position:I

    invoke-static {v3}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->asEmptySearch(I)Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 551
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mAdapterItems:Ljava/util/ArrayList;

    iget v3, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->position:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->position:I

    invoke-static {v3}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->asMarketSearch(I)Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 554
    :cond_9
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mAdapterItems:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 555
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mFilteredApps:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 558
    :cond_a
    iget-boolean v1, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mShowEdit:Z

    if-eqz v1, :cond_b

    .line 559
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mAdapterItems:Ljava/util/ArrayList;

    iget v3, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->position:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->position:I

    invoke-static {v3}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->asEdit(I)Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 562
    :cond_b
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountXDrawerMode()I

    move-result v1

    if-eqz v1, :cond_11

    const/4 v3, -0x1

    .line 570
    iget-object v4, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mAdapterItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v5, v0

    move v6, v5

    :cond_c
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;

    .line 571
    iput v0, v7, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->rowIndex:I

    .line 572
    iget v8, v7, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->viewType:I

    invoke-static {v8}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->isDividerViewType(I)Z

    move-result v8

    if-eqz v8, :cond_d

    move v5, v0

    goto :goto_1

    .line 574
    :cond_d
    iget v8, v7, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->viewType:I

    invoke-static {v8}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->isIconViewType(I)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 575
    rem-int v8, v5, v1

    if-nez v8, :cond_e

    add-int/lit8 v3, v3, 0x1

    move v6, v0

    .line 579
    :cond_e
    iput v3, v7, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->rowIndex:I

    .line 580
    iput v6, v7, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->rowAppIndex:I

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v6, v2

    goto :goto_1

    :cond_f
    add-int/2addr v3, v2

    .line 585
    iput v3, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mNumAppRowsInAdapter:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 588
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mFastScrollerSections:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 590
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mFastScrollerSections:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    move v2, v1

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$FastScrollSectionInfo;

    .line 591
    iget-object v4, v3, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$FastScrollSectionInfo;->fastScrollToItem:Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;

    .line 592
    iget v4, v4, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->viewType:I

    invoke-static {v4}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->isIconViewType(I)Z

    move-result v4

    if-nez v4, :cond_10

    .line 593
    iput v1, v3, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$FastScrollSectionInfo;->touchFraction:F

    goto :goto_2

    .line 596
    :cond_10
    iput v2, v3, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$FastScrollSectionInfo;->touchFraction:F

    add-float/2addr v2, v0

    goto :goto_2

    :cond_11
    return-void
.end method

.method protected refreshRecyclerView(Z)V
    .locals 2

    .line 723
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mAdapter:Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;

    if-eqz v0, :cond_0

    .line 724
    new-instance v1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mAdapterItems:Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, p1}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->submitList(Ljava/util/List;Z)V

    :cond_0
    return-void
.end method

.method public setAdapter(Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;)V
    .locals 0

    .line 331
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mAdapter:Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;

    return-void
.end method

.method public setFilterAppsWithColor(ZZ)V
    .locals 0

    .line 729
    iput-boolean p1, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mFilterAppsWithColor:Z

    const/4 p1, 0x0

    .line 730
    iput p1, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mColorFilterType:I

    if-eqz p2, :cond_0

    .line 732
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->updateAdapterItems()V

    :cond_0
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

    .line 392
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mSearchResults:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eq v0, p1, :cond_1

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 393
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v1, v2

    .line 394
    :cond_0
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mSearchResults:Ljava/util/ArrayList;

    .line 395
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->onAppsUpdated(ILjava/util/List;)V

    xor-int/lit8 p0, v1, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public setShowEdit(Z)V
    .locals 1

    .line 651
    iget-boolean v0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mShowEdit:Z

    if-eq p1, v0, :cond_0

    .line 652
    iput-boolean p1, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mShowEdit:Z

    const/4 p1, 0x1

    .line 653
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->onAppsUpdated(ILjava/util/List;)V

    :cond_0
    return-void
.end method

.method public setShowRecommendApps(Z)V
    .locals 2

    .line 639
    iget-boolean v0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mShowRecommendApps:Z

    if-eq p1, v0, :cond_0

    .line 640
    iput-boolean p1, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mShowRecommendApps:Z

    const/4 v0, 0x1

    .line 641
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->onAppsUpdated(ILjava/util/List;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 644
    invoke-static {}, Lcom/miui/home/launcher/allapps/recommend/RecommendAppProviderManager;->getInstance()Lcom/miui/home/launcher/allapps/recommend/RecommendAppProviderManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/recommend/RecommendAppProviderManager;->registerPredictionUpdates()V

    goto :goto_0

    .line 646
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/allapps/recommend/RecommendAppProviderManager;->getInstance()Lcom/miui/home/launcher/allapps/recommend/RecommendAppProviderManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/recommend/RecommendAppProviderManager;->unRegisterPredictionUpdates()V

    :goto_0
    return-void
.end method

.method protected abstract sortApps()V
.end method

.method public startForbiddenUpdate()V
    .locals 3

    .line 286
    sget-object v0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->sStopForbiddenUpdateRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 287
    new-instance v0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$2;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$2;-><init>(Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;)V

    sput-object v0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->sStopForbiddenUpdateRunnable:Ljava/lang/Runnable;

    goto :goto_0

    .line 298
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getHandler()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->sStopForbiddenUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 300
    :goto_0
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getHandler()Landroid/os/Handler;

    move-result-object p0

    sget-object v0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->sStopForbiddenUpdateRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public stopForbiddenUpdate()V
    .locals 1

    .line 304
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getHandler()Landroid/os/Handler;

    move-result-object p0

    sget-object v0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->sStopForbiddenUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 p0, 0x0

    .line 305
    sput-object p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->sStopForbiddenUpdateRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method protected updateAdapterItems()V
    .locals 1

    .line 474
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->refillAdapterItems()V

    .line 475
    iget-boolean v0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mFilterAppsWithColor:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mColorFilterType:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->refreshRecyclerView(Z)V

    return-void
.end method

.method public updateItemFilter(Lcom/miui/home/launcher/util/ItemInfoMatcher;)V
    .locals 1

    .line 323
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mItemFilter:Lcom/miui/home/launcher/util/ItemInfoMatcher;

    .line 324
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->onAppsUpdated(ILjava/util/List;)V

    return-void
.end method
