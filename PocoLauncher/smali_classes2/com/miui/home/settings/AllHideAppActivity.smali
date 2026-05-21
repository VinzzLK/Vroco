.class public final Lcom/miui/home/settings/AllHideAppActivity;
.super Lmiuix/appcompat/app/AppCompatActivity;
.source "AllHideAppActivity.kt"


# instance fields
.field public _$_findViewCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mAppsDisposable:Lio/reactivex2/disposables/Disposable;

.field private mController:Lcom/miui/home/settings/HideAppController;

.field private mListAdapter:Lcom/miui/home/settings/HideAppAdapter;

.field private mListView:Landroidx/recyclerview/widget/RecyclerView;

.field private mProgressBar:Landroid/widget/ProgressBar;


# direct methods
.method public static synthetic $r8$lambda$QHolspWBnnmddSyR3E375DYFWfw(Lcom/miui/home/settings/AllHideAppActivity;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Lcom/miui/home/settings/AllHideAppActivity;->initData$lambda-1(Lcom/miui/home/settings/AllHideAppActivity;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$iQqf55AAFyyV8cV5SToSYeOFwKw(Lcom/miui/home/settings/AllHideAppActivity;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/settings/AllHideAppActivity;->updateHideAppList(Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 20
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/home/settings/AllHideAppActivity;->_$_findViewCache:Ljava/util/Map;

    invoke-direct {p0}, Lmiuix/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private final initData()V
    .locals 3

    .line 54
    new-instance v0, Lcom/miui/home/settings/AllHideAppActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/miui/home/settings/AllHideAppActivity$$ExternalSyntheticLambda1;-><init>(Lcom/miui/home/settings/AllHideAppActivity;)V

    invoke-static {v0}, Lio/reactivex2/Observable;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex2/Observable;

    move-result-object v0

    .line 55
    invoke-static {}, Lio/reactivex2/schedulers/Schedulers;->computation()Lio/reactivex2/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex2/Observable;->subscribeOn(Lio/reactivex2/Scheduler;)Lio/reactivex2/Observable;

    move-result-object v0

    .line 56
    invoke-static {}, Lio/reactivex2/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex2/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex2/Observable;->observeOn(Lio/reactivex2/Scheduler;)Lio/reactivex2/Observable;

    move-result-object v0

    new-instance v1, Lcom/miui/home/settings/AllHideAppActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/miui/home/settings/AllHideAppActivity$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/settings/AllHideAppActivity;)V

    const-string v2, "AllHideAppActivity initData"

    .line 54
    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/common/Utilities;->subscribeToObservable(Lio/reactivex2/Observable;Lio/reactivex2/functions/Consumer;Ljava/lang/String;)Lio/reactivex2/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/settings/AllHideAppActivity;->mAppsDisposable:Lio/reactivex2/disposables/Disposable;

    return-void
.end method

.method private static final initData$lambda-1(Lcom/miui/home/settings/AllHideAppActivity;)Ljava/util/List;
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    iget-object p0, p0, Lcom/miui/home/settings/AllHideAppActivity;->mController:Lcom/miui/home/settings/HideAppController;

    if-nez p0, :cond_0

    const-string p0, "mController"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/settings/HideAppController;->loadAndGetHideApps()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private final initView()V
    .locals 4

    const v0, 0x7f0a01d2

    .line 65
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.hide_app_recycler)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/miui/home/settings/AllHideAppActivity;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    const-string v1, "mListView"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 66
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v3, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 67
    new-instance v0, Lcom/miui/home/settings/HideAppAdapter;

    invoke-direct {v0, p0}, Lcom/miui/home/settings/HideAppAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/home/settings/AllHideAppActivity;->mListAdapter:Lcom/miui/home/settings/HideAppAdapter;

    .line 68
    iget-object v0, p0, Lcom/miui/home/settings/AllHideAppActivity;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_1
    iget-object v1, p0, Lcom/miui/home/settings/AllHideAppActivity;->mListAdapter:Lcom/miui/home/settings/HideAppAdapter;

    if-nez v1, :cond_2

    const-string v1, "mListAdapter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const v0, 0x7f0a0246

    .line 69
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.loading_progress)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/miui/home/settings/AllHideAppActivity;->mProgressBar:Landroid/widget/ProgressBar;

    return-void
.end method

.method private final updateHideAppList(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;)V"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/miui/home/settings/AllHideAppActivity;->mListAdapter:Lcom/miui/home/settings/HideAppAdapter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "mListAdapter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/miui/home/settings/HideAppAdapter;->setList(Ljava/util/List;)V

    .line 61
    iget-object p0, p0, Lcom/miui/home/settings/AllHideAppActivity;->mProgressBar:Landroid/widget/ProgressBar;

    if-nez p0, :cond_1

    const-string p0, "mProgressBar"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p0

    :goto_0
    const/16 p0, 0x8

    invoke-virtual {v1, p0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    const-string v0, "newConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 84
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f060077

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-direct {v0, p0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 28
    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    invoke-virtual {p0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    const v0, 0x7f110102

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    const p1, 0x7f0d0071

    .line 30
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->setContentView(I)V

    const p1, 0x7f100291

    .line 31
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(I)V

    .line 32
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreen()Z

    move-result p1

    xor-int/2addr p1, v1

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/miui/home/settings/AllHideAppActivity;->setActionBarStyle(ZLmiuix/appcompat/app/ActionBar;Z)V

    .line 33
    invoke-direct {p0}, Lcom/miui/home/settings/AllHideAppActivity;->initView()V

    .line 34
    new-instance p1, Lcom/miui/home/settings/HideAppController;

    invoke-direct {p1, p0}, Lcom/miui/home/settings/HideAppController;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/miui/home/settings/AllHideAppActivity;->mController:Lcom/miui/home/settings/HideAppController;

    .line 35
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f060077

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-direct {v0, p0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected onStart()V
    .locals 0

    .line 39
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onStart()V

    .line 40
    invoke-direct {p0}, Lcom/miui/home/settings/AllHideAppActivity;->initData()V

    return-void
.end method

.method protected onStop()V
    .locals 3

    .line 73
    invoke-super {p0}, Lmiuix/appcompat/app/AppCompatActivity;->onStop()V

    .line 74
    iget-object v0, p0, Lcom/miui/home/settings/AllHideAppActivity;->mListAdapter:Lcom/miui/home/settings/HideAppAdapter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "mListAdapter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Lcom/miui/home/settings/HideAppAdapter;->dismissDialog()V

    .line 75
    iget-object v0, p0, Lcom/miui/home/settings/AllHideAppActivity;->mAppsDisposable:Lio/reactivex2/disposables/Disposable;

    if-eqz v0, :cond_1

    .line 76
    invoke-interface {v0}, Lio/reactivex2/disposables/Disposable;->isDisposed()Z

    move-result v2

    if-nez v2, :cond_1

    .line 77
    invoke-interface {v0}, Lio/reactivex2/disposables/Disposable;->dispose()V

    .line 80
    :cond_1
    iput-object v1, p0, Lcom/miui/home/settings/AllHideAppActivity;->mAppsDisposable:Lio/reactivex2/disposables/Disposable;

    return-void
.end method

.method public final setActionBarStyle(ZLmiuix/appcompat/app/ActionBar;Z)V
    .locals 0

    if-eqz p2, :cond_1

    if-nez p3, :cond_0

    .line 46
    invoke-virtual {p2, p1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 48
    :cond_0
    invoke-virtual {p2, p1}, Lmiuix/appcompat/app/ActionBar;->setExpandState(I)V

    .line 49
    invoke-virtual {p2, p1}, Lmiuix/appcompat/app/ActionBar;->setResizable(Z)V

    :cond_1
    return-void
.end method
