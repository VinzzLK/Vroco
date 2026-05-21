.class public final Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;
.super Landroidx/preference/Preference;
.source "IconCustomizePreviewPreference.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIconCustomizePreviewPreference.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IconCustomizePreviewPreference.kt\ncom/miui/home/settings/preference/IconCustomizePreviewPreference\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,162:1\n1#2:163\n*E\n"
.end annotation


# instance fields
.field private mAdapter:Lcom/miui/home/settings/IconCustomizePreviewAdapter;

.field private mAppsDisposable:Lio/reactivex2/disposables/Disposable;

.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mIconProvider:Lcom/miui/home/launcher/IconProvider;

.field private mInNoWordMode:Z

.field private mIsGetBackground:Z

.field private mPreviewContainer:Landroid/view/View;

.field private mPreviewRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mWallpaperDisposable:Lio/reactivex2/disposables/Disposable;


# direct methods
.method public static synthetic $r8$lambda$DhaoSGgUi6wELVKvMBzq_qrJTCE(Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;->initPreviewBackground$lambda-2(Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$EvlRUcOvafxpE-C6bfQ4Kn8SUaM(Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;->initPreviewApp$lambda-5(Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$aVIH6wWhzYBI3PzUhTBe5-_FjH0(Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;->initPreviewApp$lambda-3(Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$zB-YGyQKN9mLJKBe1iXmURCXmQE(Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;)Landroid/graphics/drawable/Drawable;
    .locals 0

    invoke-static {p0}, Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;->initPreviewBackground$lambda-1(Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attributeSet"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p2, 0x7f0d0088

    .line 49
    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 50
    new-instance p2, Lcom/miui/home/settings/IconCustomizePreviewAdapter;

    invoke-direct {p2}, Lcom/miui/home/settings/IconCustomizePreviewAdapter;-><init>()V

    iput-object p2, p0, Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;->mAdapter:Lcom/miui/home/settings/IconCustomizePreviewAdapter;

    .line 51
    invoke-static {p1}, Lcom/miui/home/launcher/IconProvider;->newInstance(Landroid/content/Context;)Lcom/miui/home/launcher/IconProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;->mIconProvider:Lcom/miui/home/launcher/IconProvider;

    return-void
.end method

.method private final getPreviewApps()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;"
        }
    .end annotation

    .line 96
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/library/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/compat/LauncherAppsCompat;

    move-result-object v0

    .line 97
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/miui/home/library/compat/LauncherAppsCompat;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v0

    .line 98
    new-instance v1, Lcom/miui/home/launcher/common/LauncherActivityInfoComparator;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/miui/home/launcher/common/LauncherActivityInfoComparator;-><init>(Landroid/content/Context;)V

    .line 99
    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 100
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountX()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v3, 0x0

    invoke-interface {v0, v3, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 101
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 102
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/LauncherActivityInfo;

    .line 103
    new-instance v4, Lcom/miui/home/launcher/AppInfo;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v3}, Landroid/content/pm/LauncherActivityInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v6

    invoke-direct {v4, v5, v3, v6}, Lcom/miui/home/launcher/AppInfo;-><init>(Landroid/content/Context;Landroid/content/pm/LauncherActivityInfo;Landroid/os/UserHandle;)V

    .line 104
    iget-object v5, p0, Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;->mIconProvider:Lcom/miui/home/launcher/IconProvider;

    if-eqz v5, :cond_0

    invoke-virtual {v5, v3}, Lcom/miui/home/launcher/IconProvider;->getActivityIcon(Landroid/content/pm/LauncherActivityInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_1

    :cond_0
    move-object v3, v2

    :goto_1
    invoke-virtual {v4, v3}, Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;->setIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 105
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private final getWallpaperTopArea()Landroid/graphics/drawable/Drawable;
    .locals 9

    .line 129
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const-string v1, "getInstance()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    :try_start_0
    invoke-static {v0}, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompat;->getCurrentWallpaper()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 133
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 134
    iget-object v1, p0, Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;->mPreviewContainer:Landroid/view/View;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v1, v3

    .line 135
    invoke-virtual {v7, v1, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 136
    iget-object p0, p0, Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;->mPreviewContainer:Landroid/view/View;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, v1

    float-to-int v6, p0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 138
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    const/4 v8, 0x1

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    const-string v1, "createBitmap(wallpaper, \u2026th, height, matrix, true)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    .line 142
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 144
    :cond_0
    new-instance p0, Landroid/graphics/drawable/ColorDrawable;

    const v1, 0x7f06011f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-object p0
.end method

.method private static final initPreviewApp$lambda-3(Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;)Ljava/util/List;
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    invoke-direct {p0}, Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;->getPreviewApps()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static final initPreviewApp$lambda-5(Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;Ljava/util/List;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 91
    invoke-direct {p0, p1}, Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;->onLoadPreviewApps(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private static final initPreviewBackground$lambda-1(Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;)Landroid/graphics/drawable/Drawable;
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    invoke-direct {p0}, Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;->getWallpaperTopArea()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method private static final initPreviewBackground$lambda-2(Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 83
    invoke-direct {p0, p1}, Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;->onLoadPreviewBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method private final onLoadPreviewApps(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;)V"
        }
    .end annotation

    .line 111
    iget-object p0, p0, Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;->mAdapter:Lcom/miui/home/settings/IconCustomizePreviewAdapter;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/miui/home/settings/IconCustomizePreviewAdapter;->setList(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private final onLoadPreviewBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 149
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method private final resetPreviewContainerLayoutParams()V
    .locals 4

    .line 125
    iget-object v0, p0, Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;->mPreviewContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellHeight()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0700ce

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x7f0700cd

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    add-int/2addr v1, p0

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_1
    return-void
.end method


# virtual methods
.method public final initPreviewApp()V
    .locals 3

    .line 89
    new-instance v0, Lcom/miui/home/settings/preference/IconCustomizePreviewPreference$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/miui/home/settings/preference/IconCustomizePreviewPreference$$ExternalSyntheticLambda2;-><init>(Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;)V

    invoke-static {v0}, Lio/reactivex2/Observable;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex2/Observable;

    move-result-object v0

    .line 90
    invoke-static {}, Lio/reactivex2/schedulers/Schedulers;->computation()Lio/reactivex2/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex2/Observable;->subscribeOn(Lio/reactivex2/Scheduler;)Lio/reactivex2/Observable;

    move-result-object v0

    .line 91
    invoke-static {}, Lio/reactivex2/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex2/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex2/Observable;->observeOn(Lio/reactivex2/Scheduler;)Lio/reactivex2/Observable;

    move-result-object v0

    .line 89
    new-instance v1, Lcom/miui/home/settings/preference/IconCustomizePreviewPreference$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/miui/home/settings/preference/IconCustomizePreviewPreference$$ExternalSyntheticLambda1;-><init>(Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;)V

    const-string v2, "IconCustomizePreviewPreference initPreviewApp"

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/common/Utilities;->subscribeToObservable(Lio/reactivex2/Observable;Lio/reactivex2/functions/Consumer;Ljava/lang/String;)Lio/reactivex2/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;->mAppsDisposable:Lio/reactivex2/disposables/Disposable;

    return-void
.end method

.method public final initPreviewBackground()V
    .locals 3

    .line 79
    new-instance v0, Lcom/miui/home/settings/preference/IconCustomizePreviewPreference$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/miui/home/settings/preference/IconCustomizePreviewPreference$$ExternalSyntheticLambda3;-><init>(Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;)V

    invoke-static {v0}, Lio/reactivex2/Observable;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex2/Observable;

    move-result-object v0

    .line 80
    invoke-static {}, Lio/reactivex2/schedulers/Schedulers;->computation()Lio/reactivex2/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex2/Observable;->subscribeOn(Lio/reactivex2/Scheduler;)Lio/reactivex2/Observable;

    move-result-object v0

    .line 81
    invoke-static {}, Lio/reactivex2/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex2/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex2/Observable;->observeOn(Lio/reactivex2/Scheduler;)Lio/reactivex2/Observable;

    move-result-object v0

    .line 79
    new-instance v1, Lcom/miui/home/settings/preference/IconCustomizePreviewPreference$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/miui/home/settings/preference/IconCustomizePreviewPreference$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;)V

    const-string v2, "IconCustomizePreviewPreference initPreviewBackground"

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/common/Utilities;->subscribeToObservable(Lio/reactivex2/Observable;Lio/reactivex2/functions/Consumer;Ljava/lang/String;)Lio/reactivex2/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;->mWallpaperDisposable:Lio/reactivex2/disposables/Disposable;

    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 3

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 57
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iput-object v0, p0, Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;->mPreviewContainer:Landroid/view/View;

    .line 58
    invoke-direct {p0}, Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;->resetPreviewContainerLayoutParams()V

    const v0, 0x7f0a02df

    .line 59
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type androidx.recyclerview.widget.RecyclerView"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;->mPreviewRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x0

    .line 60
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 61
    iget-object p1, p0, Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;->mPreviewRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_0

    .line 62
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 63
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 64
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountX()I

    move-result v2

    .line 62
    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 61
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 67
    :cond_0
    iget-object p1, p0, Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;->mAdapter:Lcom/miui/home/settings/IconCustomizePreviewAdapter;

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;->mInNoWordMode:Z

    invoke-virtual {p1, v0}, Lcom/miui/home/settings/IconCustomizePreviewAdapter;->setInNoWordMode(Z)V

    .line 68
    :cond_1
    iget-object p1, p0, Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;->mPreviewRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;->mAdapter:Lcom/miui/home/settings/IconCustomizePreviewAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 69
    :cond_2
    iget-object p1, p0, Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_3

    .line 70
    iget-object v0, p0, Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;->mPreviewContainer:Landroid/view/View;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 72
    :cond_3
    iget-boolean p1, p0, Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;->mIsGetBackground:Z

    if-nez p1, :cond_4

    const/4 p1, 0x1

    .line 73
    iput-boolean p1, p0, Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;->mIsGetBackground:Z

    .line 74
    invoke-virtual {p0}, Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;->initPreviewBackground()V

    :cond_4
    return-void
.end method

.method public final onDestroyView()V
    .locals 3

    .line 157
    iget-object v0, p0, Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;->mAppsDisposable:Lio/reactivex2/disposables/Disposable;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lio/reactivex2/disposables/Disposable;->isDisposed()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lio/reactivex2/disposables/Disposable;->dispose()V

    .line 158
    :cond_1
    iput-object v1, p0, Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;->mAppsDisposable:Lio/reactivex2/disposables/Disposable;

    .line 159
    iget-object v0, p0, Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;->mWallpaperDisposable:Lio/reactivex2/disposables/Disposable;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lio/reactivex2/disposables/Disposable;->isDisposed()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    move-object v0, v1

    :goto_1
    if-eqz v0, :cond_3

    invoke-interface {v0}, Lio/reactivex2/disposables/Disposable;->dispose()V

    .line 160
    :cond_3
    iput-object v1, p0, Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;->mWallpaperDisposable:Lio/reactivex2/disposables/Disposable;

    return-void
.end method

.method public final onIconScaleChange(F)V
    .locals 0

    .line 153
    iget-object p0, p0, Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;->mAdapter:Lcom/miui/home/settings/IconCustomizePreviewAdapter;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/miui/home/settings/IconCustomizePreviewAdapter;->setIconScale(F)V

    return-void
.end method

.method public final refreshViewLayout()V
    .locals 3

    .line 115
    invoke-direct {p0}, Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;->resetPreviewContainerLayoutParams()V

    .line 116
    iget-object v0, p0, Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;->mPreviewRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 117
    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 118
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 119
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountX()I

    move-result v2

    .line 117
    invoke-direct {v1, p0, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 116
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    :cond_0
    return-void
.end method

.method public final setInNoWordMode(Z)V
    .locals 0

    .line 44
    iput-boolean p1, p0, Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;->mInNoWordMode:Z

    return-void
.end method
