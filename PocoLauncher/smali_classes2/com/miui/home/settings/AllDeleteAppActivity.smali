.class public final Lcom/miui/home/settings/AllDeleteAppActivity;
.super Lmiuix/appcompat/app/AppCompatActivity;
.source "AllDeleteAppActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/settings/AllDeleteAppActivity$DeleteAppContentObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAllDeleteAppActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AllDeleteAppActivity.kt\ncom/miui/home/settings/AllDeleteAppActivity\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,235:1\n766#2:236\n857#2,2:237\n*S KotlinDebug\n*F\n+ 1 AllDeleteAppActivity.kt\ncom/miui/home/settings/AllDeleteAppActivity\n*L\n83#1:236\n83#1:237,2\n*E\n"
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

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

.field private appInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/home/settings/DeleteAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final deleteAppContentObserver:Lcom/miui/home/settings/AllDeleteAppActivity$DeleteAppContentObserver;

.field private mAppsDisposable:Lio/reactivex2/disposables/Disposable;

.field private final mHandler:Landroid/os/Handler;

.field private mIconProvider:Lcom/miui/home/launcher/IconProvider;

.field private mListAdapter:Lcom/miui/home/settings/DeleteAppAdapter;

.field private mListView:Landroidx/recyclerview/widget/RecyclerView;

.field private mProgressBar:Landroid/widget/ProgressBar;


# direct methods
.method public static synthetic $r8$lambda$2Yg22EQPslbMOQxAbt5_g_9Y1DU(Lcom/miui/home/settings/AllDeleteAppActivity;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Lcom/miui/home/settings/AllDeleteAppActivity;->initData$lambda-0(Lcom/miui/home/settings/AllDeleteAppActivity;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$PRgqgow2oBCcTetYivd8dZlWLZg(Lcom/miui/home/settings/AllDeleteAppActivity;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/home/settings/AllDeleteAppActivity;->initData$lambda-1(Lcom/miui/home/settings/AllDeleteAppActivity;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 35
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/home/settings/AllDeleteAppActivity;->_$_findViewCache:Ljava/util/Map;

    invoke-direct {p0}, Lmiuix/appcompat/app/AppCompatActivity;-><init>()V

    const-string v0, "AllUninstallAppActivity"

    .line 36
    iput-object v0, p0, Lcom/miui/home/settings/AllDeleteAppActivity;->TAG:Ljava/lang/String;

    .line 43
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/miui/home/settings/AllDeleteAppActivity;->mHandler:Landroid/os/Handler;

    .line 44
    new-instance v1, Lcom/miui/home/settings/AllDeleteAppActivity$DeleteAppContentObserver;

    invoke-direct {v1, p0, v0}, Lcom/miui/home/settings/AllDeleteAppActivity$DeleteAppContentObserver;-><init>(Lcom/miui/home/settings/AllDeleteAppActivity;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/miui/home/settings/AllDeleteAppActivity;->deleteAppContentObserver:Lcom/miui/home/settings/AllDeleteAppActivity$DeleteAppContentObserver;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/settings/AllDeleteAppActivity;->appInfoList:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$updateAppStatus(Lcom/miui/home/settings/AllDeleteAppActivity;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/miui/home/settings/AllDeleteAppActivity;->updateAppStatus()V

    return-void
.end method

.method private final getDeleteAppInfo()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/home/settings/DeleteAppInfo;",
            ">;"
        }
    .end annotation

    .line 79
    invoke-static {}, Lcom/miui/launcher/utils/UninstallAppPreInstallUtils;->readRemovableApkInfo()V

    .line 80
    iget-object v0, p0, Lcom/miui/home/settings/AllDeleteAppActivity;->appInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 81
    invoke-direct {p0}, Lcom/miui/home/settings/AllDeleteAppActivity;->getInstallList()Ljava/util/List;

    move-result-object v0

    .line 82
    iget-object v1, p0, Lcom/miui/home/settings/AllDeleteAppActivity;->appInfoList:Ljava/util/List;

    invoke-direct {p0}, Lcom/miui/home/settings/AllDeleteAppActivity;->getPreinstallDeleteAppinfo()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 766
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 857
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    .line 84
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-direct {p0, v4}, Lcom/miui/home/settings/AllDeleteAppActivity;->packageExist(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-direct {p0, v4}, Lcom/miui/home/settings/AllDeleteAppActivity;->notInPreinstallList(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_0

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    move-object v2, v1

    .line 87
    :cond_3
    invoke-direct {p0}, Lcom/miui/home/settings/AllDeleteAppActivity;->getDeleteAppStatus()Ljava/util/HashMap;

    move-result-object v0

    .line 88
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 89
    invoke-static {}, Lcom/miui/home/launcher/install/MIUIAutoInstallsHelper;->getInstance()Lcom/miui/home/launcher/install/MIUIAutoInstallsHelper;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Lcom/miui/home/launcher/install/MIUIAutoInstallsHelper;->getPackageTitle(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 90
    invoke-static {}, Lcom/miui/home/launcher/install/MIUIAutoInstallsHelper;->getInstance()Lcom/miui/home/launcher/install/MIUIAutoInstallsHelper;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Lcom/miui/home/launcher/install/MIUIAutoInstallsHelper;->getPackageIcon(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 91
    new-instance v10, Lcom/miui/home/settings/DeleteAppInfo;

    const/4 v6, -0x1

    sget-object v9, Lcom/miui/home/settings/DeleteAppInfo$FromType;->MIUI_AUTO_PARSE:Lcom/miui/home/settings/DeleteAppInfo$FromType;

    move-object v4, v10

    move-object v5, v3

    invoke-direct/range {v4 .. v9}, Lcom/miui/home/settings/DeleteAppInfo;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/miui/home/settings/DeleteAppInfo$FromType;)V

    if-eqz v0, :cond_4

    .line 93
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/settings/DeleteAppInfo;

    if-eqz v3, :cond_4

    .line 95
    invoke-virtual {v3}, Lcom/miui/home/settings/DeleteAppInfo;->getStatus()I

    move-result v3

    invoke-virtual {v10, v3}, Lcom/miui/home/settings/DeleteAppInfo;->setStatus(I)V

    .line 98
    :cond_4
    iget-object v3, p0, Lcom/miui/home/settings/AllDeleteAppActivity;->appInfoList:Ljava/util/List;

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 100
    :cond_5
    iget-object p0, p0, Lcom/miui/home/settings/AllDeleteAppActivity;->appInfoList:Ljava/util/List;

    return-object p0
.end method

.method private final getDeleteAppStatus()Ljava/util/HashMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/miui/home/settings/DeleteAppInfo;",
            ">;"
        }
    .end annotation

    .line 170
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "com.miui.core.restore.app.status"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    const/4 v0, 0x0

    .line 172
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_3

    .line 173
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "packageName"

    .line 174
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "appInfo"

    .line 175
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 176
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 180
    :cond_0
    new-instance v2, Lcom/mi/google/gson/Gson;

    invoke-direct {v2}, Lcom/mi/google/gson/Gson;-><init>()V

    const-class v4, [Lcom/miui/home/settings/DeleteAppInfo;

    invoke-virtual {v2, v3, v4}, Lcom/mi/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Gson().fromJson(appInfoJ\u2026leteAppInfo>::class.java)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, [Lcom/miui/home/settings/DeleteAppInfo;

    .line 181
    invoke-static {v2}, Lkotlin/collections/ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 182
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 183
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/home/settings/DeleteAppInfo;

    .line 184
    invoke-virtual {v4}, Lcom/miui/home/settings/DeleteAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 186
    :cond_1
    :try_start_2
    invoke-static {v1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object v3

    .line 177
    :cond_2
    :goto_1
    :try_start_3
    iget-object v4, p0, Lcom/miui/home/settings/AllDeleteAppActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "get install config name error:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2c

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 178
    :try_start_4
    invoke-static {v1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    return-object v0

    .line 188
    :cond_3
    :try_start_5
    iget-object v2, p0, Lcom/miui/home/settings/AllDeleteAppActivity;->TAG:Ljava/lang/String;

    const-string v3, "get install config cursor error"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 172
    :try_start_6
    invoke-static {v1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_2

    :catchall_0
    move-exception v2

    :try_start_7
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception v3

    :try_start_8
    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    move-exception v1

    .line 192
    iget-object p0, p0, Lcom/miui/home/settings/AllDeleteAppActivity;->TAG:Ljava/lang/String;

    const-string v2, "get install config error"

    invoke-static {p0, v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-object v0
.end method

.method private final getInstallList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 160
    invoke-static {p0}, Lcom/miui/home/launcher/install/MIUIAutoInstallsParser;->getUninstallInstallInfo(Landroid/content/Context;)Lcom/miui/home/launcher/install/MIUIAutoInstallsParser;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 161
    invoke-virtual {p0}, Lcom/miui/home/launcher/install/MIUIAutoInstallsParser;->loadConfig()V

    .line 163
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/install/MIUIAutoInstallsHelper;->getInstance()Lcom/miui/home/launcher/install/MIUIAutoInstallsHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/install/MIUIAutoInstallsHelper;->getPackages()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private final getPreinstallDeleteAppinfo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/home/settings/DeleteAppInfo;",
            ">;"
        }
    .end annotation

    .line 107
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/home/settings/preInstall/UninstallAppUtils;->getDeleteAppInfoFromXml(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    const-string v0, "getDeleteAppInfoFromXml(applicationContext)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private final initData()V
    .locals 3

    .line 70
    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.autoinstall.config.ACTION_SINGLE_RESTORE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.miui.core"

    .line 71
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 72
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 73
    new-instance v0, Lcom/miui/home/settings/AllDeleteAppActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/miui/home/settings/AllDeleteAppActivity$$ExternalSyntheticLambda1;-><init>(Lcom/miui/home/settings/AllDeleteAppActivity;)V

    invoke-static {v0}, Lio/reactivex2/Observable;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex2/Observable;

    move-result-object v0

    .line 74
    invoke-static {}, Lio/reactivex2/schedulers/Schedulers;->computation()Lio/reactivex2/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex2/Observable;->subscribeOn(Lio/reactivex2/Scheduler;)Lio/reactivex2/Observable;

    move-result-object v0

    .line 75
    invoke-static {}, Lio/reactivex2/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex2/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex2/Observable;->observeOn(Lio/reactivex2/Scheduler;)Lio/reactivex2/Observable;

    move-result-object v0

    .line 73
    new-instance v1, Lcom/miui/home/settings/AllDeleteAppActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/miui/home/settings/AllDeleteAppActivity$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/settings/AllDeleteAppActivity;)V

    const-string v2, "AllDeleAppActivity initData"

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/common/Utilities;->subscribeToObservable(Lio/reactivex2/Observable;Lio/reactivex2/functions/Consumer;Ljava/lang/String;)Lio/reactivex2/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/settings/AllDeleteAppActivity;->mAppsDisposable:Lio/reactivex2/disposables/Disposable;

    return-void
.end method

.method private static final initData$lambda-0(Lcom/miui/home/settings/AllDeleteAppActivity;)Ljava/util/List;
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    invoke-direct {p0}, Lcom/miui/home/settings/AllDeleteAppActivity;->getDeleteAppInfo()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static final initData$lambda-1(Lcom/miui/home/settings/AllDeleteAppActivity;Ljava/util/List;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    .line 75
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/miui/home/settings/AllDeleteAppActivity;->updateUninstallAppList(Ljava/util/List;)V

    return-void
.end method

.method private final initView()V
    .locals 4

    const v0, 0x7f0a03f5

    .line 207
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.uninstall_app_recycler)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/miui/home/settings/AllDeleteAppActivity;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    const-string v1, "mListView"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 208
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v3, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 209
    new-instance v0, Lcom/miui/home/settings/DeleteAppAdapter;

    invoke-direct {v0, p0}, Lcom/miui/home/settings/DeleteAppAdapter;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/miui/home/settings/AllDeleteAppActivity;->mListAdapter:Lcom/miui/home/settings/DeleteAppAdapter;

    .line 210
    iget-object v0, p0, Lcom/miui/home/settings/AllDeleteAppActivity;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_1
    iget-object v1, p0, Lcom/miui/home/settings/AllDeleteAppActivity;->mListAdapter:Lcom/miui/home/settings/DeleteAppAdapter;

    if-nez v1, :cond_2

    const-string v1, "mListAdapter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const v0, 0x7f0a0246

    .line 211
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.loading_progress)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/miui/home/settings/AllDeleteAppActivity;->mProgressBar:Landroid/widget/ProgressBar;

    return-void
.end method

.method private final isGlobal()Z
    .locals 4

    const-string v0, "ro.product.mod_device"

    const-string v1, ""

    .line 137
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/settings/AllDeleteAppActivity;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string v3, "_global"

    .line 138
    invoke-static {p0, v3, v0, v1, v2}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private final notInPreinstallList(Ljava/lang/String;)Z
    .locals 0

    .line 153
    sget-object p0, Lcom/miui/home/settings/preInstall/UninstallAppUtils;->preInstallAppList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private final packageExist(Ljava/lang/String;)Z
    .locals 2

    .line 125
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    const-string v0, "this.packageManager.getA\u2026ionInfo(packageName, 128)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    invoke-direct {p0}, Lcom/miui/home/settings/AllDeleteAppActivity;->isGlobal()Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    iget-object p0, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz p0, :cond_0

    const-string p1, "miui_app_stub"

    .line 128
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/2addr v0, p0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0
.end method

.method private final updateAppStatus()V
    .locals 4

    .line 111
    invoke-direct {p0}, Lcom/miui/home/settings/AllDeleteAppActivity;->getDeleteAppStatus()Ljava/util/HashMap;

    move-result-object v0

    .line 112
    iget-object v1, p0, Lcom/miui/home/settings/AllDeleteAppActivity;->appInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/settings/DeleteAppInfo;

    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {v2}, Lcom/miui/home/settings/DeleteAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/settings/DeleteAppInfo;

    if-eqz v3, :cond_0

    .line 116
    invoke-virtual {v3}, Lcom/miui/home/settings/DeleteAppInfo;->getStatus()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/miui/home/settings/DeleteAppInfo;->setStatus(I)V

    goto :goto_0

    .line 120
    :cond_1
    iget-object v0, p0, Lcom/miui/home/settings/AllDeleteAppActivity;->appInfoList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/miui/home/settings/AllDeleteAppActivity;->updateUninstallAppList(Ljava/util/List;)V

    return-void
.end method

.method private final updateUninstallAppList(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/miui/home/settings/DeleteAppInfo;",
            ">;)V"
        }
    .end annotation

    .line 201
    iget-object v0, p0, Lcom/miui/home/settings/AllDeleteAppActivity;->mListAdapter:Lcom/miui/home/settings/DeleteAppAdapter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "mListAdapter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/miui/home/settings/DeleteAppAdapter;->setList(Ljava/util/List;)V

    .line 202
    iget-object p1, p0, Lcom/miui/home/settings/AllDeleteAppActivity;->mProgressBar:Landroid/widget/ProgressBar;

    if-nez p1, :cond_1

    const-string p1, "mProgressBar"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    :cond_1
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 203
    iget-object p0, p0, Lcom/miui/home/settings/AllDeleteAppActivity;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez p0, :cond_2

    const-string p0, "mListView"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v1, p0

    :goto_0
    const/4 p0, 0x0

    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public final getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-class p0, Ljava/lang/String;

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "def"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    const-string v0, "android.os.SystemProperties"

    .line 143
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v4, 0x1

    aput-object p0, v2, v4

    const-string v5, "get"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v3

    aput-object p2, v1, v4

    .line 145
    invoke-static {v0, p0, v5, v2, v1}, Lcom/miui/launcher/utils/ReflectUtils;->callStaticMethod(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    check-cast p0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type kotlin.String"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 147
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AutoInstallRequestUtil"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    const-string v0, "newConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 232
    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 233
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
    .locals 3

    .line 49
    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0042

    .line 50
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->setContentView(I)V

    const p1, 0x7f100167

    .line 51
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(I)V

    .line 52
    invoke-direct {p0}, Lcom/miui/home/settings/AllDeleteAppActivity;->initView()V

    .line 53
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "com.miui.core.restore.app.status"

    .line 54
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/settings/AllDeleteAppActivity;->deleteAppContentObserver:Lcom/miui/home/settings/AllDeleteAppActivity$DeleteAppContentObserver;

    const/4 v2, 0x0

    .line 53
    invoke-virtual {p1, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 55
    invoke-static {p0}, Lcom/miui/home/launcher/IconProvider;->newInstance(Landroid/content/Context;)Lcom/miui/home/launcher/IconProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/settings/AllDeleteAppActivity;->mIconProvider:Lcom/miui/home/launcher/IconProvider;

    .line 56
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

.method protected onDestroy()V
    .locals 1

    .line 65
    invoke-super {p0}, Lmiuix/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 66
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/miui/home/settings/AllDeleteAppActivity;->deleteAppContentObserver:Lcom/miui/home/settings/AllDeleteAppActivity$DeleteAppContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method protected onStart()V
    .locals 0

    .line 60
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onStart()V

    .line 61
    invoke-direct {p0}, Lcom/miui/home/settings/AllDeleteAppActivity;->initData()V

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 215
    invoke-super {p0}, Lmiuix/appcompat/app/AppCompatActivity;->onStop()V

    .line 216
    iget-object p0, p0, Lcom/miui/home/settings/AllDeleteAppActivity;->mAppsDisposable:Lio/reactivex2/disposables/Disposable;

    if-eqz p0, :cond_0

    .line 217
    invoke-interface {p0}, Lio/reactivex2/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 218
    invoke-interface {p0}, Lio/reactivex2/disposables/Disposable;->dispose()V

    :cond_0
    return-void
.end method
