.class public Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;
.super Landroid/widget/LinearLayout;
.source "AllAppsCategoryListContainer.java"

# interfaces
.implements Lcom/miui/home/launcher/allapps/AllAppsStore$OnUpdateListener;


# static fields
.field public static final STRING_CACHE:Lcom/miui/home/launcher/allapps/StringCache;

.field private static final mCategoryComparator:Lcom/miui/home/launcher/allapps/category/CategoryInfoComparator;


# instance fields
.field private mAllAppsContainerView:Lcom/miui/home/launcher/allapps/AllAppsContainerView;

.field private final mAllAppsStore:Lcom/miui/home/launcher/allapps/AllAppsStore;

.field private final mCategoryAll:Lcom/miui/home/launcher/allapps/category/CategoryInfo;

.field private final mCategoryPersonal:Lcom/miui/home/launcher/allapps/category/CategoryInfo;

.field private final mCategoryWork:Lcom/miui/home/launcher/allapps/category/CategoryInfo;

.field private final mFastScrollerOffset:Landroid/graphics/Point;

.field private mHeight:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected final mLauncher:Lcom/miui/home/launcher/Launcher;

.field private mMagicIndicator:Lnet/lucode/hackware/magicindicator/MagicIndicator;

.field protected mPagerAdapter:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;

.field private mSettingBtn:Landroid/widget/ImageView;

.field private mTab:Landroid/widget/RelativeLayout;

.field private mTitleAdapter:Lcom/miui/home/launcher/allapps/category/CategoryTitleAdapter;

.field private mTouchHandler:Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;

.field private mUpdateRunnable:Ljava/lang/Runnable;

.field protected mViewPager:Lcom/miui/home/library/view/viewpager/ViewPager;

.field private needNotifyTitleAdapter:Z

.field private pageState:I


# direct methods
.method public static synthetic $r8$lambda$6RSmYQwJtfZGuOzY56moK1gVW8o(Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;Landroid/view/View;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->lambda$onFinishInflate$0(Landroid/view/View;Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 71
    new-instance v0, Lcom/miui/home/launcher/allapps/category/CategoryInfoComparator;

    invoke-direct {v0}, Lcom/miui/home/launcher/allapps/category/CategoryInfoComparator;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mCategoryComparator:Lcom/miui/home/launcher/allapps/category/CategoryInfoComparator;

    .line 87
    new-instance v0, Lcom/miui/home/launcher/allapps/StringCache;

    invoke-direct {v0}, Lcom/miui/home/launcher/allapps/StringCache;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->STRING_CACHE:Lcom/miui/home/launcher/allapps/StringCache;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 92
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 74
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mFastScrollerOffset:Landroid/graphics/Point;

    .line 77
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mHeight:Landroidx/lifecycle/MutableLiveData;

    const/4 p1, 0x0

    .line 88
    iput p1, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->pageState:I

    .line 89
    iput-boolean p1, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->needNotifyTitleAdapter:Z

    .line 380
    new-instance p2, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer$4;

    invoke-direct {p2, p0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer$4;-><init>(Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;)V

    iput-object p2, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mUpdateRunnable:Ljava/lang/Runnable;

    .line 93
    new-instance p2, Lcom/miui/home/launcher/allapps/category/CategoryInfo;

    .line 94
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10003f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/high16 v1, -0x80000000

    invoke-direct {p2, p1, v0, v1}, Lcom/miui/home/launcher/allapps/category/CategoryInfo;-><init>(ILjava/lang/String;I)V

    iput-object p2, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mCategoryAll:Lcom/miui/home/launcher/allapps/category/CategoryInfo;

    .line 95
    sget-object p1, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->STRING_CACHE:Lcom/miui/home/launcher/allapps/StringCache;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/allapps/StringCache;->loadStrings(Landroid/content/Context;)V

    .line 96
    new-instance p2, Lcom/miui/home/launcher/allapps/category/CategoryInfo;

    iget-object v0, p1, Lcom/miui/home/launcher/allapps/StringCache;->allAppsPersonalTab:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-direct {p2, v2, v0, v1}, Lcom/miui/home/launcher/allapps/category/CategoryInfo;-><init>(ILjava/lang/String;I)V

    iput-object p2, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mCategoryPersonal:Lcom/miui/home/launcher/allapps/category/CategoryInfo;

    .line 97
    new-instance p2, Lcom/miui/home/launcher/allapps/category/CategoryInfo;

    iget-object p1, p1, Lcom/miui/home/launcher/allapps/StringCache;->allAppsWorkTab:Ljava/lang/String;

    const/4 v0, -0x2

    invoke-direct {p2, v0, p1, v1}, Lcom/miui/home/launcher/allapps/category/CategoryInfo;-><init>(ILjava/lang/String;I)V

    iput-object p2, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mCategoryWork:Lcom/miui/home/launcher/allapps/category/CategoryInfo;

    .line 98
    invoke-static {p0}, Lcom/miui/home/launcher/Launcher;->getLauncher(Landroid/view/View;)Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 99
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getAllAppsStore()Lcom/miui/home/launcher/allapps/AllAppsStore;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mAllAppsStore:Lcom/miui/home/launcher/allapps/AllAppsStore;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mTab:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic access$102(Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;I)I
    .locals 0

    .line 65
    iput p1, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->pageState:I

    return p1
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;)Z
    .locals 0

    .line 65
    iget-boolean p0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->needNotifyTitleAdapter:Z

    return p0
.end method

.method static synthetic access$202(Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;Z)Z
    .locals 0

    .line 65
    iput-boolean p1, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->needNotifyTitleAdapter:Z

    return p1
.end method

.method static synthetic access$300(Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->notifyTitleAdapter()V

    return-void
.end method

.method static synthetic access$400(Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;)Lnet/lucode/hackware/magicindicator/MagicIndicator;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mMagicIndicator:Lnet/lucode/hackware/magicindicator/MagicIndicator;

    return-object p0
.end method

.method static synthetic access$500(Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;)Ljava/util/ArrayList;
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->buildSortCategoryList()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->updateIndicator()V

    return-void
.end method

.method static synthetic access$700(Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->scrollToMainPage()V

    return-void
.end method

.method private buildSortCategoryList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/allapps/category/CategoryInfo;",
            ">;"
        }
    .end annotation

    .line 396
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 397
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->isDrawerMode()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 398
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mAllAppsStore:Lcom/miui/home/launcher/allapps/AllAppsStore;

    invoke-virtual {v1}, Lcom/miui/home/launcher/allapps/AllAppsStore;->getApps()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 399
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mCategoryAll:Lcom/miui/home/launcher/allapps/category/CategoryInfo;

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->addWorkPersonalAllCategory(Lcom/miui/home/launcher/allapps/category/CategoryInfo;)V

    .line 400
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mAllAppsStore:Lcom/miui/home/launcher/allapps/AllAppsStore;

    invoke-virtual {v1}, Lcom/miui/home/launcher/allapps/AllAppsStore;->hasWorkApps()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 401
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mCategoryWork:Lcom/miui/home/launcher/allapps/category/CategoryInfo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 402
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mCategoryWork:Lcom/miui/home/launcher/allapps/category/CategoryInfo;

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->addWorkPersonalAllCategory(Lcom/miui/home/launcher/allapps/category/CategoryInfo;)V

    .line 403
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mCategoryPersonal:Lcom/miui/home/launcher/allapps/category/CategoryInfo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 404
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mCategoryPersonal:Lcom/miui/home/launcher/allapps/category/CategoryInfo;

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->addWorkPersonalAllCategory(Lcom/miui/home/launcher/allapps/category/CategoryInfo;)V

    goto :goto_0

    .line 406
    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mCategoryAll:Lcom/miui/home/launcher/allapps/category/CategoryInfo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 409
    :cond_1
    :goto_0
    invoke-static {}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->getInstance()Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->isAppCategoryEnable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 410
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mAllAppsStore:Lcom/miui/home/launcher/allapps/AllAppsStore;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AllAppsStore;->getAppCategories()Ljava/util/Collection;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 412
    :cond_2
    sget-object p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mCategoryComparator:Lcom/miui/home/launcher/allapps/category/CategoryInfoComparator;

    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_3
    return-object v0
.end method

.method private cancelColorGroupRevealAnim()V
    .locals 0

    .line 503
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mAllAppsContainerView:Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    if-eqz p0, :cond_0

    .line 504
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->cancelRevealAnim()V

    :cond_0
    return-void
.end method

.method private checkViewAttached(I)V
    .locals 4

    .line 191
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mPagerAdapter:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;

    if-nez v0, :cond_0

    return-void

    .line 195
    :cond_0
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;->getCategoryViewByIndex(I)Lcom/miui/home/launcher/allapps/category/ICategoryView;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 197
    invoke-interface {v0}, Lcom/miui/home/launcher/allapps/category/ICategoryView;->getActiveRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 198
    invoke-virtual {v1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v2

    if-nez v2, :cond_3

    move-object v2, v1

    .line 200
    :goto_0
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 201
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    goto :goto_0

    .line 203
    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 205
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mViewPager:Lcom/miui/home/library/view/viewpager/ViewPager;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v2, p1, v0}, Lcom/miui/home/library/view/viewpager/ViewPager;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 207
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LayoutParams is null for view at position: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Launcher.Category"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "view can\'t add to viewpager:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    return-void
.end method

.method private findFirstRecommendFragment()Lcom/miui/home/launcher/allapps/category/fragment/RecommendCategoryAppListFragment;
    .locals 5

    .line 538
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mPagerAdapter:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;->getCount()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_1

    .line 541
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mPagerAdapter:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;->getCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 543
    iget-object v3, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mPagerAdapter:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;

    invoke-virtual {v3, v2}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;->getCategoryViewByIndex(I)Lcom/miui/home/launcher/allapps/category/ICategoryView;

    move-result-object v3

    .line 544
    instance-of v4, v3, Lcom/miui/home/launcher/allapps/category/fragment/RecommendCategoryAppListFragment;

    if-eqz v4, :cond_1

    .line 545
    check-cast v3, Lcom/miui/home/launcher/allapps/category/fragment/RecommendCategoryAppListFragment;

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v1
.end method

.method private synthetic lambda$onFinishInflate$0(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 106
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->getActiveRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 107
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->getActiveRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestFocus()Z

    :cond_0
    return-void
.end method

.method private notifyTitleAdapter()V
    .locals 1

    .line 300
    iget v0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->pageState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 302
    iput-boolean v0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->needNotifyTitleAdapter:Z

    goto :goto_0

    .line 304
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mTitleAdapter:Lcom/miui/home/launcher/allapps/category/CategoryTitleAdapter;

    invoke-virtual {p0}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/CommonNavigatorAdapter;->notifyDataSetChanged()V

    :goto_0
    return-void
.end method

.method private scrollToMainPage()V
    .locals 3

    .line 462
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mPagerAdapter:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;->getPageIndex(I)I

    move-result v0

    if-gez v0, :cond_0

    .line 464
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mPagerAdapter:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;->getPageIndex(I)I

    move-result v0

    .line 465
    invoke-static {}, Lcom/miui/home/launcher/util/WorkProfileHelper;->isPreferWorkProfile()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 466
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mPagerAdapter:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;

    const/4 v2, -0x2

    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;->getPageIndex(I)I

    move-result v0

    :cond_0
    if-gez v0, :cond_1

    move v0, v1

    .line 472
    :cond_1
    iget-object v2, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mViewPager:Lcom/miui/home/library/view/viewpager/ViewPager;

    invoke-virtual {v2}, Lcom/miui/home/library/view/viewpager/ViewPager;->getCurrentItem()I

    move-result v2

    if-eq v2, v0, :cond_2

    .line 473
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mViewPager:Lcom/miui/home/library/view/viewpager/ViewPager;

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/library/view/viewpager/ViewPager;->setCurrentItem(IZ)V

    :cond_2
    return-void
.end method

.method private updateIndicator()V
    .locals 0

    .line 433
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->notifyTitleAdapter()V

    return-void
.end method

.method private updateLayoutParams()V
    .locals 4

    .line 574
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mTab:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 575
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInHalfSoscSplitMode()Z

    move-result v1

    .line 576
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz v1, :cond_0

    const v3, 0x7f0702bd

    goto :goto_0

    :cond_0
    const v3, 0x7f0702bc

    :goto_0
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 577
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz v1, :cond_1

    const v1, 0x7f0702bf

    goto :goto_1

    :cond_1
    const v1, 0x7f0702be

    :goto_1
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 578
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mTab:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public addWorkPersonalAllCategory(Lcom/miui/home/launcher/allapps/category/CategoryInfo;)V
    .locals 0

    .line 418
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-nez p0, :cond_0

    return-void

    .line 421
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getModel()Lcom/miui/home/launcher/LauncherModel;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    .line 425
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherModel;->getAllCategoryList()Lcom/miui/home/launcher/AllCategoryList;

    move-result-object p0

    if-nez p0, :cond_2

    return-void

    .line 429
    :cond_2
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/AllCategoryList;->addCategory(Lcom/miui/home/launcher/allapps/category/CategoryInfo;)V

    return-void
.end method

.method public bindCategoryAdded()V
    .locals 0

    .line 357
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->updateCategoryList()V

    return-void
.end method

.method public bindCategoryNameUpdate()V
    .locals 0

    .line 348
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->notifyTitleAdapter()V

    return-void
.end method

.method public bindCategoryOrderUpdate()V
    .locals 2

    .line 352
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mPagerAdapter:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;->getCategoryList()Ljava/util/ArrayList;

    move-result-object v0

    sget-object v1, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mCategoryComparator:Lcom/miui/home/launcher/allapps/category/CategoryInfoComparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 353
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mPagerAdapter:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;

    invoke-virtual {p0}, Lcom/miui/home/library/view/viewpager/PagerAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public bindCategoryRemoved()V
    .locals 0

    .line 361
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->updateCategoryList()V

    return-void
.end method

.method public bindCategoryUpdate(I)V
    .locals 0

    .line 365
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mPagerAdapter:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;->getCategoryViewByCategoryId(I)Lcom/miui/home/launcher/allapps/category/ICategoryView;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 367
    invoke-interface {p0}, Lcom/miui/home/launcher/allapps/category/ICategoryView;->bindCategoryUpdate()V

    :cond_0
    return-void
.end method

.method public getActiveRecyclerView()Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 340
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->getCurrentCategoryView()Lcom/miui/home/launcher/allapps/category/ICategoryView;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 342
    invoke-interface {p0}, Lcom/miui/home/launcher/allapps/category/ICategoryView;->getActiveRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getAllAppsAlphabeticalAppsList()Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;
    .locals 1

    .line 517
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mPagerAdapter:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;->getCategoryViewByCategoryId(I)Lcom/miui/home/launcher/allapps/category/ICategoryView;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 519
    invoke-interface {p0}, Lcom/miui/home/launcher/allapps/category/ICategoryView;->getAllAppsAlphabeticalAppsList()Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getAllAppsRecyclerView()Landroidx/recyclerview/widget/RecyclerView;
    .locals 1

    .line 509
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mPagerAdapter:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;->getCategoryViewByCategoryId(I)Lcom/miui/home/launcher/allapps/category/ICategoryView;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 511
    invoke-interface {p0}, Lcom/miui/home/launcher/allapps/category/ICategoryView;->getActiveRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getAllAppsView()Landroid/view/View;
    .locals 2

    .line 553
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mPagerAdapter:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    .line 554
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;->getCategoryViewByCategoryId(I)Lcom/miui/home/launcher/allapps/category/ICategoryView;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 555
    instance-of v1, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;

    if-nez v1, :cond_1

    goto :goto_0

    .line 556
    :cond_1
    check-cast p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_2

    const-string v0, "getAllAppsView"

    const-string v1, "all apps view is null"

    .line 558
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object p0

    :cond_3
    :goto_0
    return-object v0
.end method

.method public getAnimateTarget(Lcom/miui/home/launcher/DragObject;)Landroid/view/View;
    .locals 1

    .line 437
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->getCurrentCategoryView()Lcom/miui/home/launcher/allapps/category/ICategoryView;

    move-result-object p0

    .line 438
    instance-of v0, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;

    if-eqz v0, :cond_0

    .line 439
    check-cast p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->getAnimateTarget(Lcom/miui/home/launcher/DragObject;)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getCategoryCount()I
    .locals 0

    .line 336
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mPagerAdapter:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;->getCount()I

    move-result p0

    return p0
.end method

.method public getCurrentCategoryView()Lcom/miui/home/launcher/allapps/category/ICategoryView;
    .locals 1

    .line 488
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mPagerAdapter:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;

    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mViewPager:Lcom/miui/home/library/view/viewpager/ViewPager;

    invoke-virtual {p0}, Lcom/miui/home/library/view/viewpager/ViewPager;->getCurrentItem()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;->getCategoryViewByIndex(I)Lcom/miui/home/launcher/allapps/category/ICategoryView;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentPagePosition()I
    .locals 0

    .line 492
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mViewPager:Lcom/miui/home/library/view/viewpager/ViewPager;

    invoke-virtual {p0}, Lcom/miui/home/library/view/viewpager/ViewPager;->getCurrentItem()I

    move-result p0

    return p0
.end method

.method public getCurrentRecyclerView()Landroidx/recyclerview/widget/RecyclerView;
    .locals 1

    .line 445
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mPagerAdapter:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;

    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mViewPager:Lcom/miui/home/library/view/viewpager/ViewPager;

    invoke-virtual {p0}, Lcom/miui/home/library/view/viewpager/ViewPager;->getCurrentItem()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;->getCategoryViewByIndex(I)Lcom/miui/home/launcher/allapps/category/ICategoryView;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 447
    invoke-interface {p0}, Lcom/miui/home/launcher/allapps/category/ICategoryView;->getActiveRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getRecommendApps(Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$RecommendAppsCallback;)Ljava/util/List;
    .locals 1
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

    .line 526
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->findFirstRecommendFragment()Lcom/miui/home/launcher/allapps/category/fragment/RecommendCategoryAppListFragment;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 530
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/fragment/CategoryAppListFragment;->getAllAppsAlphabeticalAppsList()Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    .line 534
    :cond_1
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->getRecommendApps(Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$RecommendAppsCallback;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getShowingShortcutIcon(Landroid/content/ComponentName;I)Lcom/miui/home/launcher/ShortcutIcon;
    .locals 0

    .line 310
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->getCurrentCategoryView()Lcom/miui/home/launcher/allapps/category/ICategoryView;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 312
    invoke-interface {p0, p1, p2}, Lcom/miui/home/launcher/allapps/category/ICategoryView;->getShowingShortcutIcon(Landroid/content/ComponentName;I)Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public isInMainPage()Z
    .locals 2

    .line 564
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mViewPager:Lcom/miui/home/library/view/viewpager/ViewPager;

    invoke-virtual {v0}, Lcom/miui/home/library/view/viewpager/ViewPager;->getCurrentItem()I

    move-result v0

    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mPagerAdapter:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;->getPageIndex(I)I

    move-result p0

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method public locateApp(Lcom/miui/home/launcher/AppInfo;)Z
    .locals 1

    .line 453
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->scrollToMainPage()V

    .line 454
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->getCurrentCategoryView()Lcom/miui/home/launcher/allapps/category/ICategoryView;

    move-result-object p0

    .line 455
    instance-of v0, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;

    if-eqz v0, :cond_0

    .line 456
    check-cast p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->locateApp(Lcom/miui/home/launcher/AppInfo;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onAppsUpdated(ILjava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;)V"
        }
    .end annotation

    .line 319
    new-instance p2, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mPagerAdapter:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;->getCategoryList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 320
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->updateCategoryList()V

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 321
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isDrawerMode()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 322
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mPagerAdapter:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;

    invoke-virtual {p1}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;->getCategoryList()Ljava/util/ArrayList;

    move-result-object p1

    .line 323
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 324
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/allapps/category/CategoryInfo;

    .line 325
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 326
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete empty category:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Launcher.Category"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/Application;->getModel()Lcom/miui/home/launcher/LauncherModel;

    move-result-object v1

    new-instance v2, Lcom/miui/home/launcher/model/CategoryRemoveTask;

    .line 328
    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/category/CategoryInfo;->getCategoryId()I

    move-result v3

    iget-object v4, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mAllAppsStore:Lcom/miui/home/launcher/allapps/AllAppsStore;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/category/CategoryInfo;->getCategoryId()I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/miui/home/launcher/allapps/AllAppsStore;->getApps(I)Ljava/util/Collection;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/miui/home/launcher/model/CategoryRemoveTask;-><init>(ILjava/util/Collection;)V

    .line 327
    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/LauncherModel;->enqueueModelUpdateTask(Lcom/miui/home/launcher/LauncherModel$ModelUpdateTask;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 217
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 218
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 219
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mAllAppsStore:Lcom/miui/home/launcher/allapps/AllAppsStore;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/allapps/AllAppsStore;->addUpdateListener(Lcom/miui/home/launcher/allapps/AllAppsStore$OnUpdateListener;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 226
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 227
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mAllAppsStore:Lcom/miui/home/launcher/allapps/AllAppsStore;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/allapps/AllAppsStore;->removeUpdateListener(Lcom/miui/home/launcher/allapps/AllAppsStore$OnUpdateListener;)V

    .line 228
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .line 104
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 105
    new-instance v0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;)V

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    const v0, 0x7f0a006a

    .line 111
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mSettingBtn:Landroid/widget/ImageView;

    .line 112
    new-instance v1, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer$1;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer$1;-><init>(Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a006c

    .line 121
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/library/view/viewpager/ViewPager;

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mViewPager:Lcom/miui/home/library/view/viewpager/ViewPager;

    const v1, 0x3fffffff    # 1.9999999f

    .line 122
    invoke-virtual {v0, v1}, Lcom/miui/home/library/view/viewpager/ViewPager;->setOffscreenPageLimit(I)V

    .line 123
    new-instance v0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mViewPager:Lcom/miui/home/library/view/viewpager/ViewPager;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getId()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;I)V

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mPagerAdapter:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;

    .line 124
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mViewPager:Lcom/miui/home/library/view/viewpager/ViewPager;

    invoke-virtual {v1, v0}, Lcom/miui/home/library/view/viewpager/ViewPager;->setAdapter(Lcom/miui/home/library/view/viewpager/PagerAdapter;)V

    const v0, 0x7f0a0255

    .line 126
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mTab:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a0254

    .line 127
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lnet/lucode/hackware/magicindicator/MagicIndicator;

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mMagicIndicator:Lnet/lucode/hackware/magicindicator/MagicIndicator;

    .line 128
    new-instance v0, Lcom/miui/home/launcher/allapps/category/CategoryNavigator;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/allapps/category/CategoryNavigator;-><init>(Landroid/content/Context;)V

    .line 129
    new-instance v1, Lcom/miui/home/launcher/allapps/category/CategoryTitleAdapter;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mViewPager:Lcom/miui/home/library/view/viewpager/ViewPager;

    invoke-direct {v1, v2, v3}, Lcom/miui/home/launcher/allapps/category/CategoryTitleAdapter;-><init>(Landroid/content/Context;Lcom/miui/home/library/view/viewpager/ViewPager;)V

    iput-object v1, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mTitleAdapter:Lcom/miui/home/launcher/allapps/category/CategoryTitleAdapter;

    .line 130
    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/allapps/category/CategoryNavigator;->setAdapter(Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/CommonNavigatorAdapter;)V

    .line 131
    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/allapps/category/CategoryNavigator;->setContainer(Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;)V

    .line 132
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mMagicIndicator:Lnet/lucode/hackware/magicindicator/MagicIndicator;

    invoke-virtual {v1, v0}, Lnet/lucode/hackware/magicindicator/MagicIndicator;->setNavigator(Lnet/lucode/hackware/magicindicator/abs/IPagerNavigator;)V

    .line 133
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mHeight:Landroidx/lifecycle/MutableLiveData;

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    new-instance v2, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer$2;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer$2;-><init>(Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 147
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mViewPager:Lcom/miui/home/library/view/viewpager/ViewPager;

    new-instance v1, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer$3;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer$3;-><init>(Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/library/view/viewpager/ViewPager;->addOnPageChangeListener(Lcom/miui/home/library/view/viewpager/ViewPager$OnPageChangeListener;)V

    .line 168
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mSettingBtn:Landroid/widget/ImageView;

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsColorMode()Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsBackgroundAlpha()I

    move-result v2

    invoke-virtual {v1, p0, v2}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->getSettingsDrawable(Landroid/content/Context;I)I

    move-result p0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p0, v1}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 264
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 265
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->getCurrentCategoryView()Lcom/miui/home/launcher/allapps/category/ICategoryView;

    move-result-object v0

    .line 266
    instance-of v1, v0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;

    if-eqz v1, :cond_0

    .line 267
    check-cast v0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mFastScrollerOffset:Landroid/graphics/Point;

    invoke-virtual {v0, p0, p1, v1}, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->getFastScroller(Landroid/view/ViewGroup;Landroid/view/MotionEvent;Landroid/graphics/Point;)Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mTouchHandler:Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mTouchHandler:Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;

    if-eqz v0, :cond_1

    .line 271
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mFastScrollerOffset:Landroid/graphics/Point;

    invoke-virtual {v0, p1, p0}, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->handleTouchEvent(Landroid/view/MotionEvent;Landroid/graphics/Point;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/AllAppsSettingChangeMessage;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 288
    invoke-virtual {p1}, Lcom/miui/home/launcher/common/messages/AllAppsSettingChangeMessage;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "color_mode"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 289
    invoke-virtual {p1}, Lcom/miui/home/launcher/common/messages/AllAppsSettingChangeMessage;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "background_alpha"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 294
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/common/messages/AllAppsSettingChangeMessage;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "app_category_enable"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 295
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->updateCategoryList()V

    goto :goto_1

    .line 291
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->notifyTitleAdapter()V

    .line 292
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mSettingBtn:Landroid/widget/ImageView;

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsColorMode()Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsBackgroundAlpha()I

    move-result v1

    invoke-virtual {v0, p0, v1}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->getSettingsDrawable(Landroid/content/Context;I)I

    move-result p0

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, p0, v0}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_2
    :goto_1
    return-void
.end method

.method protected onPageScrolled(IFI)V
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mMagicIndicator:Lnet/lucode/hackware/magicindicator/MagicIndicator;

    invoke-virtual {v0, p1, p2, p3}, Lnet/lucode/hackware/magicindicator/MagicIndicator;->onPageScrolled(IFI)V

    .line 174
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->cancelColorGroupRevealAnim()V

    return-void
.end method

.method protected onPageSelected(I)V
    .locals 2

    .line 178
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mMagicIndicator:Lnet/lucode/hackware/magicindicator/MagicIndicator;

    invoke-virtual {v0, p1}, Lnet/lucode/hackware/magicindicator/MagicIndicator;->onPageSelected(I)V

    .line 179
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getAppsView()Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mAllAppsContainerView:Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    .line 180
    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->isColorFilterEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 181
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->isInMainPage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mAllAppsContainerView:Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->changeSearchBarState(Z)V

    goto :goto_0

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mAllAppsContainerView:Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->changeSearchBarState(Z)V

    .line 187
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->checkViewAttached(I)V

    return-void
.end method

.method public onScreenSizeChanged()V
    .locals 0

    .line 496
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->updateCategoryList()V

    .line 497
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->updateLayoutParams()V

    return-void
.end method

.method public onScrollUpEnd()V
    .locals 2

    const/4 v0, 0x0

    .line 234
    :goto_0
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mPagerAdapter:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;

    invoke-virtual {v1}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 235
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mPagerAdapter:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;->getCategoryViewByIndex(I)Lcom/miui/home/launcher/allapps/category/ICategoryView;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 239
    :cond_0
    invoke-interface {v1}, Lcom/miui/home/launcher/allapps/category/ICategoryView;->onScrollUpEnd()V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 279
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mTouchHandler:Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;

    if-eqz v0, :cond_0

    .line 280
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mFastScrollerOffset:Landroid/graphics/Point;

    invoke-virtual {v0, p1, p0}, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->handleTouchEvent(Landroid/view/MotionEvent;Landroid/graphics/Point;)Z

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public resetView()V
    .locals 2

    const/4 v0, 0x0

    .line 244
    :goto_0
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mPagerAdapter:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;

    invoke-virtual {v1}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 245
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mPagerAdapter:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;->getCategoryViewByIndex(I)Lcom/miui/home/launcher/allapps/category/ICategoryView;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 249
    :cond_0
    invoke-interface {v1}, Lcom/miui/home/launcher/allapps/category/ICategoryView;->resetView()V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 251
    :cond_1
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->scrollToMainPage()V

    return-void
.end method

.method public scrollToWorkPage()V
    .locals 2

    .line 478
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mPagerAdapter:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;->getPageIndex(I)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    .line 482
    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mViewPager:Lcom/miui/home/library/view/viewpager/ViewPager;

    invoke-virtual {v1}, Lcom/miui/home/library/view/viewpager/ViewPager;->getCurrentItem()I

    move-result v1

    if-eq v1, v0, :cond_1

    .line 483
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mViewPager:Lcom/miui/home/library/view/viewpager/ViewPager;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/library/view/viewpager/ViewPager;->setCurrentItem(IZ)V

    :cond_1
    return-void
.end method

.method public setTabHeight(I)V
    .locals 0

    .line 571
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mHeight:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public shouldContainerScroll(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 255
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->getCurrentCategoryView()Lcom/miui/home/launcher/allapps/category/ICategoryView;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 259
    :cond_0
    invoke-interface {p0, p1}, Lcom/miui/home/launcher/allapps/category/ICategoryView;->shouldContainerScroll(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public updateCategoryList()V
    .locals 2

    .line 372
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mViewPager:Lcom/miui/home/library/view/viewpager/ViewPager;

    if-nez v0, :cond_0

    return-void

    .line 375
    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 376
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mViewPager:Lcom/miui/home/library/view/viewpager/ViewPager;

    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
