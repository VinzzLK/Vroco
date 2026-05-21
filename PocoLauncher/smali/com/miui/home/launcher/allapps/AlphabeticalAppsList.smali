.class public Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;
.super Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;
.source "AlphabeticalAppsList.java"


# static fields
.field public static sHideFilter:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static sNotHideFilter:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAppNameComparator:Lcom/miui/home/launcher/allapps/AppInfoComparator;

.field private mUseComparator:Ljava/util/Comparator;

.field private mUseHideFilter:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$Tl6gQStYCAWNwd88X6G1maW_5As(Lcom/miui/home/launcher/AppInfo;)Z
    .locals 0

    invoke-static {p0}, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->lambda$static$0(Lcom/miui/home/launcher/AppInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$V-U4qPFJ_QTWBSevznmAN3Mpev4(Lcom/miui/home/launcher/AppInfo;)Z
    .locals 0

    invoke-static {p0}, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->lambda$static$1(Lcom/miui/home/launcher/AppInfo;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 42
    sget-object v0, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$$ExternalSyntheticLambda0;->INSTANCE:Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$$ExternalSyntheticLambda0;

    sput-object v0, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->sHideFilter:Ljava/util/function/Predicate;

    .line 43
    sget-object v0, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$$ExternalSyntheticLambda1;->INSTANCE:Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$$ExternalSyntheticLambda1;

    sput-object v0, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->sNotHideFilter:Ljava/util/function/Predicate;

    return-void
.end method

.method public constructor <init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/allapps/AllAppsStore;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;-><init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/allapps/AllAppsStore;)V

    .line 38
    new-instance p2, Lcom/miui/home/launcher/allapps/AppInfoComparator;

    invoke-direct {p2, p1}, Lcom/miui/home/launcher/allapps/AppInfoComparator;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->mAppNameComparator:Lcom/miui/home/launcher/allapps/AppInfoComparator;

    iput-object p2, p0, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->mUseComparator:Ljava/util/Comparator;

    return-void
.end method

.method private static synthetic lambda$static$0(Lcom/miui/home/launcher/AppInfo;)Z
    .locals 0

    .line 42
    invoke-virtual {p0}, Lcom/miui/home/launcher/AppInfo;->isHideApp()Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$static$1(Lcom/miui/home/launcher/AppInfo;)Z
    .locals 0

    .line 43
    invoke-virtual {p0}, Lcom/miui/home/launcher/AppInfo;->isHideApp()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method


# virtual methods
.method public getDefaultComparator()Lcom/miui/home/launcher/allapps/AppInfoComparator;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->mAppNameComparator:Lcom/miui/home/launcher/allapps/AppInfoComparator;

    return-object p0
.end method

.method protected handleByHideFilter(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;)V"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->mUseHideFilter:Ljava/util/function/Predicate;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsLockUtils;->isHideAppsOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->mUseHideFilter:Ljava/util/function/Predicate;

    invoke-interface {p1, p0}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    :cond_0
    return-void
.end method

.method public notifyItemChanged()V
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mAdapter:Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;

    if-eqz p0, :cond_0

    .line 87
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public notifyItemChanged(I)V
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mAdapter:Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;

    if-eqz p0, :cond_0

    .line 81
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_0
    return-void
.end method

.method public notifyItemChanged(Lcom/miui/home/launcher/AppInfo;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mApps:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    return-void

    .line 76
    :cond_1
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->notifyItemChanged(I)V

    return-void
.end method

.method public setHideFilter(Ljava/util/function/Predicate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;)V"
        }
    .end annotation

    .line 57
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->mUseHideFilter:Ljava/util/function/Predicate;

    return-void
.end method

.method public setUseComparator(Ljava/util/Comparator;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->mUseComparator:Ljava/util/Comparator;

    return-void
.end method

.method protected sortApps()V
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mApps:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->handleByHideFilter(Ljava/util/List;)V

    .line 53
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mApps:Ljava/util/List;

    iget-object p0, p0, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->mUseComparator:Ljava/util/Comparator;

    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method
