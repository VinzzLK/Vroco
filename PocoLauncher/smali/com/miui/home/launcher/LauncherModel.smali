.class public Lcom/miui/home/launcher/LauncherModel;
.super Landroid/content/BroadcastReceiver;
.source "LauncherModel.java"

# interfaces
.implements Lcom/miui/home/launcher/interfaces/EventBusHandlerHolder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/LauncherModel$LoaderTransaction;,
        Lcom/miui/home/launcher/LauncherModel$ModelUpdateTask;,
        Lcom/miui/home/launcher/LauncherModel$CallbackTask;,
        Lcom/miui/home/launcher/LauncherModel$LoaderTask;,
        Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;,
        Lcom/miui/home/launcher/LauncherModel$Callbacks;,
        Lcom/miui/home/launcher/LauncherModel$PackageAndUser;,
        Lcom/miui/home/launcher/LauncherModel$SecurityHideMessageHandler;
    }
.end annotation


# static fields
.field private static final mPendingDatabaseTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static final sWorker:Landroid/os/Handler;

.field private static final sWorkerThread:Landroid/os/HandlerThread;


# instance fields
.field private final mAllAppsList:Lcom/miui/home/launcher/AllAppsList;

.field private final mAllAppsListLock:Ljava/lang/Object;

.field private final mAllCategoryList:Lcom/miui/home/launcher/AllCategoryList;

.field private volatile mCallbacks:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/home/launcher/LauncherModel$Callbacks;",
            ">;"
        }
    .end annotation
.end field

.field private final mChangedAppsWhenLayoutPreview:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/content/Intent;",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation
.end field

.field final mFolders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Lcom/miui/home/launcher/FolderInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mGlobalMiBrowserChangedFlag:Z

.field private mHandler:Lcom/miui/home/library/utils/DeferredHandler;

.field private final mIconCache:Lcom/miui/home/launcher/IconCache;

.field public mIsPAVersionCodeCanShowClock:Z

.field private final mLauncherApplication:Lcom/miui/home/launcher/Application;

.field private mLauncherAppsCallback:Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;

.field final mLoadedApps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/miui/home/launcher/util/ComponentKey;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field final mLoadedUris:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mLoaderTask:Lcom/miui/home/launcher/LauncherModel$LoaderTask;

.field private final mLock:Ljava/lang/Object;

.field private mModelLoaded:Z

.field final mProgressingPackages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/miui/home/launcher/progress/ProgressShortcutInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mReadLabelFromDB:Z

.field mSecurityHideMessageHandler:Lcom/miui/home/launcher/LauncherModel$SecurityHideMessageHandler;

.field private final mUiExecutor:Lcom/miui/home/launcher/MainThreadExecutor;

.field private mWorkspaceLoaded:Z


# direct methods
.method public static synthetic $r8$lambda$-bEXYPZAlFZS_p1hsTdL-UfCsxM(Lcom/miui/home/launcher/LauncherModel;Lcom/miui/home/launcher/ShortcutInfo;Landroid/content/pm/LauncherActivityInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/LauncherModel;->lambda$getAppShortcutInfo$3(Lcom/miui/home/launcher/ShortcutInfo;Landroid/content/pm/LauncherActivityInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$-eftMtrUJIZ3CVqG2QG-0QBbGNE(Lcom/miui/home/launcher/FolderInfo;Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/convertsize/ItemPositionInfo;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/miui/home/launcher/LauncherModel;->lambda$resizeFolderDatabaseWhitUICallback$6(Lcom/miui/home/launcher/FolderInfo;Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/convertsize/ItemPositionInfo;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$0jHgiu3wmDWqk2qXG_DB_yv6eE8(Lcom/miui/home/launcher/LauncherModel;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/LauncherModel;->lambda$scheduleWidgetUpdateTask$0(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CwKwONWWdnebFPsldRK-eEK_y2Y(Ljava/util/function/Consumer;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/home/launcher/LauncherModel;->lambda$resizeFolderDatabaseWhitUICallback$5(Ljava/util/function/Consumer;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$EoC-nVf8y3LEOtvKnFVqy_5K29w(Ljava/lang/Runnable;)Ljava/lang/Void;
    .locals 0

    invoke-static {p0}, Lcom/miui/home/launcher/LauncherModel;->lambda$waitForUserUnlock$1(Ljava/lang/Runnable;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$YFAk7kGLM5wVqJ9-_HarLDpFzW0(Ljava/util/ArrayList;Ljava/util/Map$Entry;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/home/launcher/LauncherModel;->lambda$resizeAppIconDatabaseWhitUICallback$7(Ljava/util/ArrayList;Ljava/util/Map$Entry;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZTbxZM23Hxj5u-H7vpDXDjMTx4c(Lcom/miui/home/launcher/LauncherModel$Callbacks;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/miui/home/launcher/LauncherModel;->lambda$onReceiveBackground$2(Lcom/miui/home/launcher/LauncherModel$Callbacks;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mPJkjUfh0WotiRpCy0Rk1CV0hTw(Ljava/util/HashMap;Lcom/miui/home/launcher/Launcher;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/miui/home/launcher/LauncherModel;->lambda$resizeAppIconDatabaseWhitUICallback$9(Ljava/util/HashMap;Lcom/miui/home/launcher/Launcher;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nNYHAMC5kI89y0RR6tj_mdUp9P0(Landroid/content/Context;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/home/launcher/LauncherModel;->lambda$removeHideAppInfoFromDatabaseExcludeCurrentDatabase$4(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$t1DLE1bVXFul2glgs7Bpoq-X8Kk(Ljava/util/function/Consumer;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/home/launcher/LauncherModel;->lambda$resizeAppIconDatabaseWhitUICallback$8(Ljava/util/function/Consumer;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 197
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/LauncherModel;->mPendingDatabaseTasks:Ljava/util/ArrayList;

    .line 199
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "launcher-loader"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/home/launcher/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    .line 201
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 203
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/miui/home/launcher/LauncherModel;->sWorker:Landroid/os/Handler;

    return-void
.end method

.method constructor <init>(Lcom/miui/home/launcher/Application;Lcom/miui/home/launcher/IconCache;)V
    .locals 3

    .line 360
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 192
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherModel;->mLock:Ljava/lang/Object;

    .line 193
    new-instance v0, Lcom/miui/home/library/utils/DeferredHandler;

    invoke-direct {v0}, Lcom/miui/home/library/utils/DeferredHandler;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherModel;->mHandler:Lcom/miui/home/library/utils/DeferredHandler;

    .line 196
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPAVersionCodeCanShowClock()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/home/launcher/LauncherModel;->mIsPAVersionCodeCanShowClock:Z

    .line 211
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherModel;->mAllAppsListLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 215
    iput-boolean v0, p0, Lcom/miui/home/launcher/LauncherModel;->mReadLabelFromDB:Z

    .line 216
    iput-boolean v0, p0, Lcom/miui/home/launcher/LauncherModel;->mGlobalMiBrowserChangedFlag:Z

    .line 218
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherModel;->mFolders:Ljava/util/HashMap;

    .line 219
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherModel;->mLoadedApps:Ljava/util/HashMap;

    .line 220
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/home/launcher/LauncherModel;->mLoadedUris:Ljava/util/Set;

    .line 221
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/home/launcher/LauncherModel;->mProgressingPackages:Ljava/util/Map;

    .line 225
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Lcom/miui/home/launcher/LauncherModel;->mChangedAppsWhenLayoutPreview:Ljava/util/Map;

    .line 236
    new-instance v1, Lcom/miui/home/launcher/LauncherModel$SecurityHideMessageHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/miui/home/launcher/LauncherModel$SecurityHideMessageHandler;-><init>(Lcom/miui/home/launcher/LauncherModel;Lcom/miui/home/launcher/LauncherModel$1;)V

    iput-object v1, p0, Lcom/miui/home/launcher/LauncherModel;->mSecurityHideMessageHandler:Lcom/miui/home/launcher/LauncherModel$SecurityHideMessageHandler;

    .line 389
    new-instance v1, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;-><init>(Lcom/miui/home/launcher/LauncherModel;)V

    iput-object v1, p0, Lcom/miui/home/launcher/LauncherModel;->mLauncherAppsCallback:Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;

    .line 3372
    new-instance v1, Lcom/miui/home/launcher/MainThreadExecutor;

    invoke-direct {v1}, Lcom/miui/home/launcher/MainThreadExecutor;-><init>()V

    iput-object v1, p0, Lcom/miui/home/launcher/LauncherModel;->mUiExecutor:Lcom/miui/home/launcher/MainThreadExecutor;

    .line 361
    iput-object p1, p0, Lcom/miui/home/launcher/LauncherModel;->mLauncherApplication:Lcom/miui/home/launcher/Application;

    .line 362
    iput-object p2, p0, Lcom/miui/home/launcher/LauncherModel;->mIconCache:Lcom/miui/home/launcher/IconCache;

    .line 363
    new-instance v1, Lcom/miui/home/launcher/AllAppsList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-direct {v1, p1, p2, v0}, Lcom/miui/home/launcher/AllAppsList;-><init>(Landroid/content/Context;Lcom/miui/home/launcher/IconCache;Ljava/util/Map;)V

    iput-object v1, p0, Lcom/miui/home/launcher/LauncherModel;->mAllAppsList:Lcom/miui/home/launcher/AllAppsList;

    .line 364
    new-instance p2, Lcom/miui/home/launcher/AllCategoryList;

    invoke-direct {p2, p1}, Lcom/miui/home/launcher/AllCategoryList;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/miui/home/launcher/LauncherModel;->mAllCategoryList:Lcom/miui/home/launcher/AllCategoryList;

    return-void
.end method

.method public static BatchOperation(Landroid/content/Context;Lcom/miui/home/launcher/allapps/LauncherMode;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/miui/home/launcher/allapps/LauncherMode;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentValues;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentValues;",
            ">;)V"
        }
    .end annotation

    .line 915
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 916
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 917
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 918
    new-instance p0, Lcom/miui/home/launcher/LauncherModel$4;

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/miui/home/launcher/LauncherModel$4;-><init>(Landroid/content/ContentResolver;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/miui/home/launcher/allapps/LauncherMode;Ljava/lang/String;)V

    .line 948
    sget-object p1, Lcom/miui/home/launcher/LauncherModel;->mPendingDatabaseTasks:Ljava/util/ArrayList;

    monitor-enter p1

    .line 949
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 950
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 951
    invoke-static {p0}, Lcom/miui/home/launcher/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p0

    .line 950
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/launcher/AllAppsList;
    .locals 0

    .line 178
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherModel;->mAllAppsList:Lcom/miui/home/launcher/AllAppsList;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/miui/home/launcher/LauncherModel;Ljava/lang/String;)V
    .locals 0

    .line 178
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/LauncherModel;->checkBrowserVersionAllowSearchBar(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/miui/home/launcher/LauncherModel;Ljava/lang/String;)V
    .locals 0

    .line 178
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/LauncherModel;->checkWorldCirculateVersion(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/miui/home/launcher/LauncherModel;Ljava/lang/String;)V
    .locals 0

    .line 178
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/LauncherModel;->checkWakeupXiaoaiByGestureLineFlg(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/miui/home/launcher/LauncherModel;Ljava/lang/String;)V
    .locals 0

    .line 178
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/LauncherModel;->checkAssistantVersion(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/miui/home/launcher/LauncherModel;Ljava/lang/String;)V
    .locals 0

    .line 178
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/LauncherModel;->checkMiWallpaperSDKChange(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/miui/home/launcher/LauncherModel;Ljava/lang/String;)V
    .locals 0

    .line 178
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/LauncherModel;->checkXiaoaiVersionChange(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/miui/home/launcher/LauncherModel;)V
    .locals 0

    .line 178
    invoke-direct {p0}, Lcom/miui/home/launcher/LauncherModel;->checkAssistantBlurSupport()V

    return-void
.end method

.method static synthetic access$1700(Lcom/miui/home/launcher/LauncherModel;Ljava/lang/String;)V
    .locals 0

    .line 178
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/LauncherModel;->checkWidgetBlurState(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/miui/home/launcher/LauncherModel;Ljava/lang/String;)V
    .locals 0

    .line 178
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/LauncherModel;->checkNotesVersionChange(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/miui/home/launcher/LauncherModel;Ljava/lang/Runnable;)V
    .locals 0

    .line 178
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/LauncherModel;->waitForUserUnlock(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/library/utils/DeferredHandler;
    .locals 0

    .line 178
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherModel;->mHandler:Lcom/miui/home/library/utils/DeferredHandler;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/miui/home/launcher/LauncherModel;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 178
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic access$2100(Landroid/content/ContentResolver;Ljava/util/ArrayList;)V
    .locals 0

    .line 178
    invoke-static {p0, p1}, Lcom/miui/home/launcher/LauncherModel;->insertScreenToDb(Landroid/content/ContentResolver;Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$2200(Ljava/lang/StringBuilder;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 178
    invoke-static {p0, p1}, Lcom/miui/home/launcher/LauncherModel;->makeOperation(Ljava/lang/StringBuilder;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2300()Ljava/util/ArrayList;
    .locals 1

    .line 178
    sget-object v0, Lcom/miui/home/launcher/LauncherModel;->mPendingDatabaseTasks:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/miui/home/launcher/LauncherModel;Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 0

    .line 178
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/LauncherModel;->onRemoveItem(Lcom/miui/home/launcher/ShortcutInfo;)V

    return-void
.end method

.method static synthetic access$2500(Ljava/lang/Runnable;J)V
    .locals 0

    .line 178
    invoke-static {p0, p1, p2}, Lcom/miui/home/launcher/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method static synthetic access$2600(Lcom/miui/home/launcher/LauncherModel;)Ljava/lang/Object;
    .locals 0

    .line 178
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherModel;->mAllAppsListLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/miui/home/launcher/LauncherModel;Ljava/util/ArrayList;)V
    .locals 0

    .line 178
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/LauncherModel;->onRemoveItems(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/miui/home/launcher/LauncherModel;Ljava/util/ArrayList;)V
    .locals 0

    .line 178
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/LauncherModel;->onLoadShortcuts(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/home/launcher/LauncherModel;Ljava/util/List;Landroid/os/UserHandle;Ljava/lang/String;)Z
    .locals 0

    .line 178
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/launcher/LauncherModel;->addAppToSave(Ljava/util/List;Landroid/os/UserHandle;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$3000(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/launcher/AllCategoryList;
    .locals 0

    .line 178
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherModel;->mAllCategoryList:Lcom/miui/home/launcher/AllCategoryList;

    return-object p0
.end method

.method static synthetic access$3100(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/launcher/MainThreadExecutor;
    .locals 0

    .line 178
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherModel;->mUiExecutor:Lcom/miui/home/launcher/MainThreadExecutor;

    return-object p0
.end method

.method static synthetic access$3200()Landroid/os/HandlerThread;
    .locals 1

    .line 178
    sget-object v0, Lcom/miui/home/launcher/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/miui/home/launcher/LauncherModel;)Ljava/lang/Object;
    .locals 0

    .line 178
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherModel;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$3500(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/launcher/IconCache;
    .locals 0

    .line 178
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherModel;->mIconCache:Lcom/miui/home/launcher/IconCache;

    return-object p0
.end method

.method static synthetic access$3602(Lcom/miui/home/launcher/LauncherModel;Z)Z
    .locals 0

    .line 178
    iput-boolean p1, p0, Lcom/miui/home/launcher/LauncherModel;->mReadLabelFromDB:Z

    return p1
.end method

.method static synthetic access$3900(Lcom/miui/home/launcher/LauncherModel;Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 0

    .line 178
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/LauncherModel;->onLoadShortcut(Lcom/miui/home/launcher/ShortcutInfo;)V

    return-void
.end method

.method static synthetic access$400(Lcom/miui/home/launcher/LauncherModel;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;Z)V
    .locals 0

    .line 178
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/LauncherModel;->logLauncherAppsCallback(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;Z)V

    return-void
.end method

.method static synthetic access$4000(Lcom/miui/home/launcher/LauncherModel;)Z
    .locals 0

    .line 178
    iget-boolean p0, p0, Lcom/miui/home/launcher/LauncherModel;->mWorkspaceLoaded:Z

    return p0
.end method

.method static synthetic access$4002(Lcom/miui/home/launcher/LauncherModel;Z)Z
    .locals 0

    .line 178
    iput-boolean p1, p0, Lcom/miui/home/launcher/LauncherModel;->mWorkspaceLoaded:Z

    return p1
.end method

.method static synthetic access$4200(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/launcher/LauncherModel$LoaderTask;
    .locals 0

    .line 178
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherModel;->mLoaderTask:Lcom/miui/home/launcher/LauncherModel$LoaderTask;

    return-object p0
.end method

.method static synthetic access$4202(Lcom/miui/home/launcher/LauncherModel;Lcom/miui/home/launcher/LauncherModel$LoaderTask;)Lcom/miui/home/launcher/LauncherModel$LoaderTask;
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/miui/home/launcher/LauncherModel;->mLoaderTask:Lcom/miui/home/launcher/LauncherModel$LoaderTask;

    return-object p1
.end method

.method static synthetic access$4302(Lcom/miui/home/launcher/LauncherModel;Z)Z
    .locals 0

    .line 178
    iput-boolean p1, p0, Lcom/miui/home/launcher/LauncherModel;->mModelLoaded:Z

    return p1
.end method

.method static synthetic access$500(Lcom/miui/home/launcher/LauncherModel;Ljava/lang/String;)V
    .locals 0

    .line 178
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/LauncherModel;->checkGlobalMiBrowserChanged(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/miui/home/launcher/LauncherModel;Ljava/lang/String;)V
    .locals 0

    .line 178
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/LauncherModel;->checkQuickSearchBoxChanged(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/miui/home/launcher/LauncherModel;Ljava/lang/String;)V
    .locals 0

    .line 178
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/LauncherModel;->checkGlobalSearchChanged(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/miui/home/launcher/LauncherModel;Ljava/lang/String;)V
    .locals 0

    .line 178
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/LauncherModel;->checkPAVersionChanged(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/launcher/Application;
    .locals 0

    .line 178
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherModel;->mLauncherApplication:Lcom/miui/home/launcher/Application;

    return-object p0
.end method

.method private addAppToSave(Ljava/util/List;Landroid/os/UserHandle;Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/UserHandle;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 1006
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1009
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isInLayoutPreview()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 1012
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1013
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 1014
    invoke-virtual {p1, p3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string p3, "android.intent.extra.changed_package_list"

    .line 1015
    invoke-virtual {p1, p3, v0}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 1016
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherModel;->mChangedAppsWhenLayoutPreview:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    return p0
.end method

.method public static applyBatch(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    .line 770
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 771
    new-instance v0, Lcom/miui/home/launcher/LauncherModel$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/miui/home/launcher/LauncherModel$3;-><init>(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 782
    invoke-static {v0}, Lcom/miui/home/launcher/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static cancelDatabaseOperation()V
    .locals 4

    .line 900
    sget-object v0, Lcom/miui/home/launcher/LauncherModel;->mPendingDatabaseTasks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 901
    :try_start_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 902
    monitor-exit v0

    return-void

    :cond_0
    const-string v1, "Launcher.Model"

    .line 904
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "remove "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " tasks when database change"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    sget-object v1, Lcom/miui/home/launcher/LauncherModel;->sWorker:Landroid/os/Handler;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/miui/home/launcher/LauncherModel$$ExternalSyntheticLambda8;

    invoke-direct {v2, v1}, Lcom/miui/home/launcher/LauncherModel$$ExternalSyntheticLambda8;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 907
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 908
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private checkAssistantBlurSupport()V
    .locals 2

    const-string p0, "Launcher.Model"

    const-string v0, "checkAssistantBlurSupport: "

    .line 624
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    invoke-static {}, Lcom/miui/home/launcher/ApplicationConfig;->updateSupportHomeBlur()V

    const-string v0, "checkAssistantBlurSupport: post AssistantBlurSupportChangeMessage "

    .line 627
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p0

    new-instance v0, Lcom/miui/home/launcher/common/messages/AssistantBlurSupportChangeMessage;

    sget-boolean v1, Lcom/miui/home/launcher/ApplicationConfig;->isSupportHomeBlur:Z

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/common/messages/AssistantBlurSupportChangeMessage;-><init>(Z)V

    invoke-virtual {p0, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method private checkAssistantVersion(Ljava/lang/String;)V
    .locals 0

    .line 681
    sget-object p0, Lcom/miui/home/launcher/widget/MIUIWidgetCompat;->sAssistantWidget:Lcom/miui/home/launcher/AssistantWidget;

    invoke-interface {p0, p1}, Lcom/miui/home/launcher/AssistantWidget;->checkAssistantVersion(Ljava/lang/String;)V

    return-void
.end method

.method private checkBrowserVersionAllowSearchBar(Ljava/lang/String;)V
    .locals 0

    const-string p0, "com.android.browser"

    .line 663
    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 664
    invoke-static {}, Lcom/miui/home/launcher/SearchBarStyleData;->getInstance()Lcom/miui/home/launcher/SearchBarStyleData;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/SearchBarStyleData;->initData(Z)V

    :cond_0
    return-void
.end method

.method private checkGlobalMiBrowserChanged(Ljava/lang/String;)V
    .locals 1

    .line 3656
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "com.mi.globalbrowser"

    .line 3659
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.android.browser"

    .line 3660
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    .line 3661
    iput-boolean p1, p0, Lcom/miui/home/launcher/LauncherModel;->mGlobalMiBrowserChangedFlag:Z

    :cond_2
    return-void
.end method

.method private checkGlobalSearchChanged(Ljava/lang/String;)V
    .locals 0

    .line 3670
    sget-boolean p0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez p0, :cond_0

    return-void

    .line 3673
    :cond_0
    invoke-static {p1}, Lcom/miui/home/launcher/InternationalGlobalSearchUtil;->updateSettings(Ljava/lang/String;)V

    return-void
.end method

.method private checkMiWallpaperSDKChange(Ljava/lang/String;)V
    .locals 0

    const-string p0, "com.miui.miwallpaper"

    .line 632
    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 635
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    .line 639
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getDesktopWallpaperManager()Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;

    move-result-object p0

    if-nez p0, :cond_2

    return-void

    .line 643
    :cond_2
    invoke-virtual {p0}, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->initMiuiWallpaperManager()V

    return-void
.end method

.method private checkNotesVersionChange(Ljava/lang/String;)V
    .locals 0

    const-string p0, "com.miui.notes"

    .line 685
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 686
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/launcher/utils/NotesGestureCompat;->updateNotesVersionCode(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method private checkPAVersionChanged(Ljava/lang/String;)V
    .locals 1

    const-string v0, "com.miui.personalassistant"

    .line 655
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 656
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPAVersionCodeCanShowClock()Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/home/launcher/LauncherModel;->mIsPAVersionCodeCanShowClock:Z

    .line 657
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherModel;->mLauncherApplication:Lcom/miui/home/launcher/Application;

    invoke-virtual {p0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 658
    sget-object p1, Lcom/miui/home/launcher/LauncherProvider;->CONTENT_APPWIDGET_RESET_URI:Landroid/net/Uri;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method private checkQuickSearchBoxChanged(Ljava/lang/String;)V
    .locals 0

    const-string p0, "com.android.quicksearchbox"

    .line 647
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    .line 648
    sput-boolean p0, Lcom/miui/home/launcher/DeviceConfig;->needRefresh:Z

    .line 649
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->checkQuickSearchVersion(Landroid/content/Context;)V

    const-string p0, "Launcher.Model"

    const-string p1, "QUICK_SEARCH_PACKAGE_NAME ACTION_PACKAGE_REPLACED"

    .line 650
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private checkWakeupXiaoaiByGestureLineFlg(Ljava/lang/String;)V
    .locals 0

    .line 674
    invoke-static {p1}, Lcom/miui/home/launcher/ApplicationConfig;->checkAndUpdateWakeupXiaoaiByGestureLineFlg(Ljava/lang/String;)V

    .line 675
    invoke-static {p1}, Lcom/miui/home/launcher/ApplicationConfig;->checkAndUpdateSettingsSwitchDeleted(Ljava/lang/String;)V

    .line 676
    invoke-static {p1}, Lcom/miui/home/launcher/ApplicationConfig;->checkVoiceAssistSupportHomeShortcut(Ljava/lang/String;)V

    .line 677
    sget-object p0, Lcom/miui/home/recents/gesture/NavShortcutConfigManager;->INSTANCE:Lcom/miui/home/recents/gesture/NavShortcutConfigManager;

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/gesture/NavShortcutConfigManager;->onPackageChanged(Ljava/lang/String;)V

    return-void
.end method

.method private checkWidgetBlurState(Ljava/lang/String;)V
    .locals 1

    .line 619
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "checkWidgetBlurState: post WidgetBlurStateMessage "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Launcher.Model"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p0

    new-instance v0, Lcom/miui/home/launcher/common/messages/WidgetBlurStateMessage;

    invoke-direct {v0, p1}, Lcom/miui/home/launcher/common/messages/WidgetBlurStateMessage;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method private checkWorldCirculateVersion(Ljava/lang/String;)V
    .locals 0

    .line 669
    invoke-static {p1}, Lcom/miui/home/launcher/ApplicationConfig;->checkAndUpdateWorldCirculateView(Ljava/lang/String;)V

    .line 670
    invoke-static {p1}, Lcom/miui/home/launcher/ApplicationConfig;->checkAndUpdateMirror(Ljava/lang/String;)V

    return-void
.end method

.method private checkXiaoaiVersionChange(Ljava/lang/String;)V
    .locals 0

    const-string p0, "com.miui.voiceassist"

    .line 3682
    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 3683
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 3685
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getSearchBar()Lcom/miui/home/launcher/SearchBar;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    .line 3687
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/SearchBar;->getDesktopLayout()Lcom/miui/home/launcher/SearchBarDesktopLayout;

    move-result-object p0

    if-nez p0, :cond_2

    return-void

    .line 3689
    :cond_2
    invoke-virtual {p0}, Lcom/miui/home/launcher/SearchBarDesktopLayout;->refreshExtraLayoutStyle()V

    :cond_3
    return-void
.end method

.method private createShortcutInfo(ILandroid/content/Intent;)Lcom/miui/home/launcher/ShortcutInfo;
    .locals 0

    const/16 p0, 0xb

    if-eq p1, p0, :cond_4

    const/16 p0, 0xe

    if-eq p1, p0, :cond_2

    const/16 p0, 0x11

    if-eq p1, p0, :cond_1

    .line 3207
    invoke-static {p2}, Lcom/miui/home/launcher/oldman/ElderlyManUtils;->isElderlyManShortcut(Landroid/content/Intent;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 3208
    new-instance p0, Lcom/miui/home/launcher/oldman/ElderlyManShortcutInfo;

    invoke-direct {p0}, Lcom/miui/home/launcher/oldman/ElderlyManShortcutInfo;-><init>()V

    return-object p0

    .line 3210
    :cond_0
    new-instance p0, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-direct {p0}, Lcom/miui/home/launcher/ShortcutInfo;-><init>()V

    return-object p0

    .line 3205
    :cond_1
    new-instance p0, Lcom/miui/home/launcher/marketautoinstall/MarketAutoInstallShortcutInfo;

    invoke-direct {p0}, Lcom/miui/home/launcher/marketautoinstall/MarketAutoInstallShortcutInfo;-><init>()V

    return-object p0

    .line 3199
    :cond_2
    invoke-static {p2}, Lcom/miui/home/launcher/oldman/ElderlyManUtils;->isElderlyManShortcut(Landroid/content/Intent;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 3200
    new-instance p0, Lcom/miui/home/launcher/oldman/ElderlyManDeepShortcutInfo;

    invoke-direct {p0}, Lcom/miui/home/launcher/oldman/ElderlyManDeepShortcutInfo;-><init>()V

    return-object p0

    .line 3202
    :cond_3
    new-instance p0, Lcom/miui/home/launcher/DeepShortcutInfo;

    invoke-direct {p0}, Lcom/miui/home/launcher/DeepShortcutInfo;-><init>()V

    return-object p0

    .line 3197
    :cond_4
    new-instance p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;

    invoke-direct {p0}, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;-><init>()V

    return-object p0
.end method

.method public static deleteItemFromDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;)V
    .locals 4

    .line 1189
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    .line 1192
    iget v2, p1, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p1, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-wide v2, p1, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string v2, "Deleting item from database (%d, %d) of screen %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Launcher.Model"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1194
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteItemFromDatabase, item="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/home/launcher/ItemInfo;->printDetail()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1195
    new-instance v1, Lcom/miui/home/launcher/LauncherModel$6;

    invoke-direct {v1, v0, p1, p0}, Lcom/miui/home/launcher/LauncherModel$6;-><init>(Landroid/content/ContentResolver;Lcom/miui/home/launcher/ItemInfo;Landroid/content/Context;)V

    .line 1207
    invoke-static {v1}, Lcom/miui/home/launcher/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static deleteUserFolderContentsFromDatabase(Landroid/content/Context;Lcom/miui/home/launcher/FolderInfo;)V
    .locals 2

    .line 1214
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 1215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deleteUserFolderContentsFromDatabase, item="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/home/launcher/ItemInfo;->printDetail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher.Model"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1216
    new-instance v0, Lcom/miui/home/launcher/LauncherModel$7;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/launcher/LauncherModel$7;-><init>(Landroid/content/ContentResolver;Lcom/miui/home/launcher/FolderInfo;)V

    .line 1221
    invoke-static {v0}, Lcom/miui/home/launcher/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static dropDragObjectIntoFolder(Landroid/content/Context;Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/DragObject;Lcom/miui/home/launcher/FolderInfo;Lcom/miui/home/launcher/allapps/LauncherMode;)I
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    .line 787
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 788
    invoke-virtual {v11, v0}, Lcom/miui/home/launcher/FolderInfo;->getAdapter(Landroid/content/Context;)Lcom/miui/home/launcher/ShortcutsAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/ShortcutsAdapter;->getCount()I

    move-result v7

    const/4 v14, 0x0

    const-string v15, "Launcher.Model"

    if-eqz v9, :cond_0

    .line 791
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dropDragObjectIntoFolder, folder creater from="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/ItemInfo;->printDetail()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    invoke-virtual {v11, v9, v12}, Lcom/miui/home/launcher/FolderInfo;->add(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/allapps/LauncherMode;)V

    .line 793
    iget-wide v2, v11, Lcom/miui/home/launcher/ItemInfo;->id:J

    const-wide/16 v4, -0x1

    const/4 v6, -0x1

    add-int/lit8 v16, v7, 0x1

    const/4 v8, 0x0

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v8}, Lcom/miui/home/launcher/LauncherModel;->makeMoveItemOperation(Lcom/miui/home/launcher/ItemInfo;JJIII)Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 795
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dropDragObjectIntoFolder, folder creater to="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/ItemInfo;->printDetail()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    invoke-virtual {v9, v14}, Lcom/miui/home/launcher/ShortcutInfo;->setIsChecked(Z)V

    move/from16 v8, v16

    goto :goto_0

    :cond_0
    move v8, v7

    .line 801
    :goto_0
    invoke-virtual/range {p2 .. p2}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v1

    .line 802
    instance-of v2, v1, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v2, :cond_2

    invoke-virtual/range {p3 .. p3}, Lcom/miui/home/launcher/FolderInfo;->getContents()Ljava/util/List;

    move-result-object v2

    move-object v3, v1

    check-cast v3, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {v12, v2, v3}, Lcom/miui/home/launcher/allapps/LauncherMode;->canAddToFolder(Ljava/util/Collection;Lcom/miui/home/launcher/ShortcutInfo;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 803
    invoke-virtual {v3}, Lcom/miui/home/launcher/ShortcutInfo;->resetCheckBox()V

    .line 804
    invoke-virtual {v3}, Lcom/miui/home/launcher/ShortcutInfo;->showItemTitle()V

    .line 805
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dropDragObjectIntoFolder, folder creater drag from="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/miui/home/launcher/ItemInfo;->printDetail()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    move-object v9, v1

    check-cast v9, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {v11, v9, v12}, Lcom/miui/home/launcher/FolderInfo;->add(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/allapps/LauncherMode;)V

    .line 807
    iget-wide v2, v1, Lcom/miui/home/launcher/ItemInfo;->id:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    invoke-virtual/range {p2 .. p2}, Lcom/miui/home/launcher/DragObject;->getDragSource()Lcom/miui/home/launcher/DragSource;

    move-result-object v2

    instance-of v2, v2, Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    if-eqz v2, :cond_1

    add-int/lit8 v2, v8, 0x1

    .line 808
    iput v8, v1, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    .line 809
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v3

    invoke-virtual {v3, v10}, Lcom/miui/home/launcher/Launcher;->insertNewShortcutFromAllApps(Lcom/miui/home/launcher/DragObject;)V

    move-object v11, v9

    goto :goto_1

    .line 811
    :cond_1
    iget-wide v3, v11, Lcom/miui/home/launcher/ItemInfo;->id:J

    const-wide/16 v5, -0x1

    const/4 v7, -0x1

    add-int/lit8 v16, v8, 0x1

    const/16 v17, 0x0

    move-object v2, v1

    move-object v11, v9

    move/from16 v9, v17

    invoke-static/range {v2 .. v9}, Lcom/miui/home/launcher/LauncherModel;->makeMoveItemOperation(Lcom/miui/home/launcher/ItemInfo;JJIII)Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v2, v16

    .line 814
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dropDragObjectIntoFolder, folder creater drag to="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/miui/home/launcher/ItemInfo;->printDetail()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    invoke-virtual {v11, v14}, Lcom/miui/home/launcher/ShortcutInfo;->setIsChecked(Z)V

    const/4 v3, 0x1

    move v8, v2

    goto :goto_2

    :cond_2
    move v3, v14

    :goto_2
    if-eqz v3, :cond_3

    .line 821
    invoke-virtual {v1}, Lcom/miui/home/launcher/ItemInfo;->finishPending()V

    .line 823
    :cond_3
    invoke-virtual/range {p2 .. p2}, Lcom/miui/home/launcher/DragObject;->isLastObject()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v10, v3}, Lcom/miui/home/launcher/DragObject;->nextDragView(Z)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_3

    :cond_4
    move-object/from16 v11, p3

    goto/16 :goto_0

    .line 824
    :cond_5
    :goto_3
    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 825
    sget-object v1, Lcom/miui/home/launcher/LauncherSettings;->AUTHORITY:Ljava/lang/String;

    invoke-static {v0, v1, v13}, Lcom/miui/home/launcher/LauncherModel;->applyBatch(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 826
    invoke-virtual/range {p3 .. p3}, Lcom/miui/home/launcher/FolderInfo;->notifyDataSetChanged()V

    .line 828
    :cond_6
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method private fillShortcutInfoFromIntent(Landroid/content/Context;Landroid/content/Intent;Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 6

    const-string v0, "android.intent.extra.shortcut.INTENT"

    .line 3272
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p3, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    const-string v0, "android.intent.extra.shortcut.NAME"

    .line 3273
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0, p1}, Lcom/miui/home/launcher/ShortcutInfo;->setTitleAndUpdateDB(Ljava/lang/CharSequence;Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 3274
    iput v0, p3, Lcom/miui/home/launcher/ShortcutInfo;->mIconType:I

    .line 3276
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "profile"

    .line 3277
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3278
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    .line 3279
    invoke-virtual {p3, v1}, Lcom/miui/home/launcher/ShortcutInfo;->setUser(Landroid/os/UserHandle;)V

    .line 3281
    :cond_0
    iget-object v1, p3, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    const-string v2, "Launcher.Model"

    if-nez v1, :cond_1

    const-string p0, "Can\'t construct ShorcutInfo with null intent"

    .line 3283
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3287
    :cond_1
    instance-of v1, p3, Lcom/miui/home/launcher/oldman/ElderlyManShortcut;

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    .line 3288
    move-object v1, p3

    check-cast v1, Lcom/miui/home/launcher/oldman/ElderlyManShortcut;

    invoke-interface {v1, v3}, Lcom/miui/home/launcher/oldman/ElderlyManShortcut;->setIsElderlyManShortcut(Z)V

    const-string v4, "is_default_head"

    .line 3289
    invoke-virtual {p2, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3291
    invoke-virtual {p2, v4, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 3290
    invoke-interface {v1, v4}, Lcom/miui/home/launcher/oldman/ElderlyManShortcut;->setUseContactColorizedPortrait(Z)V

    .line 3295
    :cond_2
    iget-object v1, p3, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v4, "com.miui.action.TOGGLE_SHURTCUT"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3296
    invoke-virtual {p3, p1}, Lcom/miui/home/launcher/ShortcutInfo;->loadToggleInfo(Landroid/content/Context;)V

    const/4 p0, 0x3

    .line 3297
    iput p0, p3, Lcom/miui/home/launcher/ShortcutInfo;->mIconType:I

    goto/16 :goto_2

    .line 3298
    :cond_3
    iget-object v1, p3, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v4, "com.miui.action.DOWNLOADING_APP"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 p0, 0x4

    .line 3299
    iput p0, p3, Lcom/miui/home/launcher/ShortcutInfo;->mIconType:I

    const-string p0, "iconUri"

    .line 3300
    invoke-virtual {p2, p0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    .line 3301
    instance-of p1, p0, Landroid/net/Uri;

    if-eqz p1, :cond_a

    instance-of p1, p3, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;

    if-eqz p1, :cond_a

    .line 3302
    check-cast p3, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;

    check-cast p0, Landroid/net/Uri;

    invoke-virtual {p3, p0}, Lcom/miui/home/launcher/RemoteShortcutInfo;->setLocalIconUri(Landroid/net/Uri;)V

    goto/16 :goto_2

    :cond_4
    const-string v1, "android.intent.extra.shortcut.ICON"

    .line 3305
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .line 3308
    instance-of v4, v1, Landroid/graphics/Bitmap;

    const/4 v5, 0x0

    if-eqz v4, :cond_6

    .line 3309
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-direct {v5, p1, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    const-string p1, "iconType"

    const/4 v1, -0x1

    .line 3310
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-eq p1, v1, :cond_5

    move v3, p1

    .line 3311
    :cond_5
    iput v3, p3, Lcom/miui/home/launcher/ShortcutInfo;->mIconType:I

    goto :goto_0

    :cond_6
    const-string v1, "android.intent.extra.shortcut.ICON_RESOURCE"

    .line 3313
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .line 3314
    instance-of v3, v1, Landroid/content/Intent$ShortcutIconResource;

    if-eqz v3, :cond_7

    .line 3316
    :try_start_0
    move-object v3, v1

    check-cast v3, Landroid/content/Intent$ShortcutIconResource;

    iput-object v3, p3, Lcom/miui/home/launcher/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    .line 3317
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 3318
    iget-object v3, p3, Lcom/miui/home/launcher/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v3, v3, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p1

    .line 3320
    iget-object v3, p3, Lcom/miui/home/launcher/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v3, v3, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    invoke-virtual {p1, v3, v5, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 3321
    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3323
    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not load shortcut icon: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_0
    if-nez v5, :cond_8

    .line 3329
    invoke-virtual {p3}, Lcom/miui/home/launcher/ItemInfo;->getUser()Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/LauncherModel;->getFallbackIcon(Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    goto :goto_1

    :cond_8
    const-string p0, "android.intent.extra.CUSTOMIZED_ICON_SHORTCUT"

    .line 3330
    invoke-virtual {p2, p0, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_9

    .line 3331
    iget p0, p3, Lcom/miui/home/launcher/ItemInfo;->itemFlags:I

    or-int/lit8 p0, p0, 0x2

    iput p0, p3, Lcom/miui/home/launcher/ItemInfo;->itemFlags:I

    .line 3333
    :cond_9
    :goto_1
    invoke-virtual {p3, v5}, Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;->setIconDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_a
    :goto_2
    return-void
.end method

.method public static getAllScreens(Landroid/content/ContentResolver;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/ScreenUtils$ScreenInfo;",
            ">;"
        }
    .end annotation

    .line 1068
    sget-object v1, Lcom/miui/home/launcher/LauncherSettings$Screens;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "screenOrder ASC"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1077
    :cond_0
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "_id"

    .line 1080
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const-string v2, "screenType"

    .line 1081
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 1082
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1083
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    const/4 v5, -0x1

    if-eq v2, v5, :cond_1

    .line 1085
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    .line 1089
    :goto_1
    new-instance v6, Lcom/miui/home/launcher/ScreenUtils$ScreenInfo;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-direct {v6, v3, v4, v7, v5}, Lcom/miui/home/launcher/ScreenUtils$ScreenInfo;-><init>(JII)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1093
    :cond_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 1095
    throw v0
.end method

.method private static getItemPostionValues(Lcom/miui/home/launcher/ItemInfo;)Landroid/content/ContentValues;
    .locals 3

    .line 872
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 873
    iget-wide v1, p0, Lcom/miui/home/launcher/ItemInfo;->container:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "container"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 874
    iget v1, p0, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "cellX"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 875
    iget v1, p0, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "cellY"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 876
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ItemInfo;->onAddSpan(Landroid/content/ContentValues;)V

    .line 877
    iget-wide v1, p0, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string v1, "screen"

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    return-object v0
.end method

.method public static getWorkerLooper()Landroid/os/Looper;
    .locals 1

    .line 3412
    sget-object v0, Lcom/miui/home/launcher/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method private handleSlideUpGestureSettings(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    const-string p0, "com.miui.newhome"

    .line 3353
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/miui/home/settings/LauncherGestureController;->isSlideUpAppInstalling()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFoldDevice()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 3354
    invoke-static {p0}, Lcom/miui/home/settings/LauncherGestureController;->putSlideUpAppInstalling(Z)V

    .line 3355
    invoke-static {p1}, Lcom/miui/home/launcher/ApplicationConfig;->initFeed(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method private static insertScreenToDb(Landroid/content/ContentResolver;Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentValues;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 957
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 955
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 956
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    const-string v3, "mark_screen_state"

    .line 957
    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 958
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "screenOrder"

    .line 959
    invoke-virtual {v2, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v4, "screenType"

    .line 960
    invoke-virtual {v3, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 961
    sget-object v4, Lcom/miui/home/launcher/LauncherSettings$Screens;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v4, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    if-nez v3, :cond_0

    const-wide/16 v3, -0x1

    goto :goto_1

    .line 962
    :cond_0
    invoke-virtual {v3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 963
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "batch operation insert screenId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ",oldId = "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_id"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Launcher.Model"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static isSecurityHided(Lcom/miui/home/launcher/LauncherModel$PackageAndUser;)Z
    .locals 1

    .line 1295
    invoke-static {}, Lcom/miui/home/launcher/common/SecurityHide;->getHideItemList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1296
    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$getAppShortcutInfo$3(Lcom/miui/home/launcher/ShortcutInfo;Landroid/content/pm/LauncherActivityInfo;)V
    .locals 0

    .line 3045
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherModel;->mIconCache:Lcom/miui/home/launcher/IconCache;

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/IconCache;->getIcon(Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;Landroid/content/pm/LauncherActivityInfo;)V

    return-void
.end method

.method private static synthetic lambda$onReceiveBackground$2(Lcom/miui/home/launcher/LauncherModel$Callbacks;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    .line 1433
    invoke-interface {p0, p1, p2, p3}, Lcom/miui/home/launcher/LauncherModel$Callbacks;->bindAppsChanged(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method private static synthetic lambda$removeHideAppInfoFromDatabaseExcludeCurrentDatabase$4(Landroid/content/Context;Ljava/util/List;)V
    .locals 9

    const-string v0, "Launcher.Model"

    .line 3471
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 3472
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDatabaseName()Ljava/lang/String;

    move-result-object v3

    .line 3475
    :try_start_0
    new-instance v4, Ljava/io/File;

    const-string v5, "foo"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3476
    invoke-virtual {v4}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_2

    aget-object v7, v4, v6

    .line 3477
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 3478
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 3479
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDatabaseNamePrefix()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v8, ".db"

    .line 3480
    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v8, :cond_0

    goto :goto_1

    .line 3484
    :cond_0
    :try_start_1
    invoke-virtual {p0, v7}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7, p1}, Lcom/miui/home/launcher/LauncherModel;->removeHideAppInfoFromDatabase(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v7

    :try_start_2
    const-string v8, "in"

    .line 3486
    invoke-static {v0, v8, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_1
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :catch_1
    move-exception p0

    const-string p1, "out"

    .line 3490
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3493
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "removeHideAppInfoFromDatabaseExcludeCurrentDatabase time "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    invoke-virtual {p0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static synthetic lambda$resizeAppIconDatabaseWhitUICallback$7(Ljava/util/ArrayList;Ljava/util/Map$Entry;)V
    .locals 1

    .line 3618
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    .line 3619
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/bigicon/BigIconPositionInfo;

    .line 3618
    invoke-static {v0, p1}, Lcom/miui/home/launcher/LauncherModel;->makeMoveItemOperation(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/bigicon/BigIconPositionInfo;)Landroid/content/ContentProviderOperation;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static synthetic lambda$resizeAppIconDatabaseWhitUICallback$8(Ljava/util/function/Consumer;)V
    .locals 1

    const/4 v0, 0x0

    .line 3629
    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$resizeAppIconDatabaseWhitUICallback$9(Ljava/util/HashMap;Lcom/miui/home/launcher/Launcher;Ljava/util/function/Consumer;)V
    .locals 2

    .line 3616
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3617
    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    new-instance v1, Lcom/miui/home/launcher/LauncherModel$$ExternalSyntheticLambda9;

    invoke-direct {v1, v0}, Lcom/miui/home/launcher/LauncherModel$$ExternalSyntheticLambda9;-><init>(Ljava/util/ArrayList;)V

    .line 3618
    invoke-interface {p0, v1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    if-nez p1, :cond_0

    return-void

    .line 3624
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 3626
    :try_start_0
    sget-object v1, Lcom/miui/home/launcher/LauncherSettings;->AUTHORITY:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 3628
    new-instance p0, Lcom/miui/home/launcher/LauncherModel$$ExternalSyntheticLambda6;

    invoke-direct {p0, p2}, Lcom/miui/home/launcher/LauncherModel$$ExternalSyntheticLambda6;-><init>(Ljava/util/function/Consumer;)V

    invoke-virtual {p1, p0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 3635
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 3633
    invoke-virtual {p0}, Landroid/content/OperationApplicationException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method private static synthetic lambda$resizeFolderDatabaseWhitUICallback$5(Ljava/util/function/Consumer;I)V
    .locals 0

    .line 3605
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$resizeFolderDatabaseWhitUICallback$6(Lcom/miui/home/launcher/FolderInfo;Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/convertsize/ItemPositionInfo;Ljava/util/function/Consumer;)V
    .locals 4

    .line 3592
    iget-wide v0, p0, Lcom/miui/home/launcher/ItemInfo;->id:J

    invoke-static {v0, v1}, Lcom/miui/home/launcher/LauncherSettings$Favorites;->getContentUri(J)Landroid/net/Uri;

    move-result-object v0

    .line 3593
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 3594
    invoke-virtual {p0, p1, v1}, Lcom/miui/home/launcher/FolderInfo;->onAddToDatabase(Landroid/content/Context;Landroid/content/ContentValues;)V

    .line 3595
    invoke-virtual {p2}, Lcom/miui/home/launcher/convertsize/ItemPositionInfo;->getScreenId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string v2, "screen"

    invoke-virtual {v1, v2, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3596
    invoke-virtual {p2}, Lcom/miui/home/launcher/convertsize/ItemPositionInfo;->getCellX()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v2, "cellX"

    invoke-virtual {v1, v2, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3597
    invoke-virtual {p2}, Lcom/miui/home/launcher/convertsize/ItemPositionInfo;->getCellY()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v2, "cellY"

    invoke-virtual {v1, v2, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3598
    invoke-virtual {p2}, Lcom/miui/home/launcher/convertsize/ItemPositionInfo;->getSpanX()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string/jumbo v2, "spanX"

    invoke-virtual {v1, v2, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3599
    invoke-virtual {p2}, Lcom/miui/home/launcher/convertsize/ItemPositionInfo;->getSpanY()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string/jumbo v2, "spanY"

    invoke-virtual {v1, v2, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3600
    invoke-virtual {p2}, Lcom/miui/home/launcher/convertsize/ItemPositionInfo;->getItemType()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p2, "itemType"

    invoke-virtual {v1, p2, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3601
    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p2, 0x0

    .line 3602
    invoke-virtual {p0, v0, v1, p2, p2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    if-ltz p0, :cond_0

    .line 3604
    new-instance p2, Lcom/miui/home/launcher/LauncherModel$$ExternalSyntheticLambda7;

    invoke-direct {p2, p3, p0}, Lcom/miui/home/launcher/LauncherModel$$ExternalSyntheticLambda7;-><init>(Ljava/util/function/Consumer;I)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$scheduleWidgetUpdateTask$0(Ljava/lang/String;)V
    .locals 1

    .line 373
    new-instance v0, Lcom/miui/home/launcher/model/WidgetUpdateTask;

    invoke-direct {v0, p1}, Lcom/miui/home/launcher/model/WidgetUpdateTask;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/LauncherModel;->enqueueModelUpdateTask(Lcom/miui/home/launcher/LauncherModel$ModelUpdateTask;)V

    return-void
.end method

.method private static synthetic lambda$waitForUserUnlock$1(Ljava/lang/Runnable;)Ljava/lang/Void;
    .locals 0

    .line 382
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static loadTitle(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 5

    .line 2983
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.resource"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2984
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/miui/home/launcher/common/Utilities;->getStringForUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2986
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0xa

    invoke-static {v1, v2}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    const/4 v2, -0x1

    if-ne v2, v1, :cond_3

    .line 2987
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2989
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 2990
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/16 v3, 0x3a

    .line 2993
    :try_start_0
    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-eq v2, v3, :cond_2

    .line 2995
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {v1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2998
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :cond_2
    move-object p0, v4

    :goto_0
    if-eqz p0, :cond_3

    .line 3002
    invoke-virtual {p0, v1, v4, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3

    .line 3004
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    return-object p1
.end method

.method private logLauncherAppsCallback(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;Z)V
    .locals 1

    .line 369
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "LauncherAppsCallback "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "|"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Launcher.Model"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static makeItemUpdateOperation(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation;
    .locals 2

    const-string v0, "_id"

    .line 994
    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/miui/home/launcher/LauncherSettings$Favorites;->getContentUri(J)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 995
    invoke-virtual {v0, p0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object p0

    return-object p0
.end method

.method public static makeMoveItemOperation(Lcom/miui/home/launcher/ItemInfo;JJIII)Landroid/content/ContentProviderOperation;
    .locals 0

    .line 860
    iput p6, p0, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    .line 861
    iput p7, p0, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    .line 862
    iput-wide p1, p0, Lcom/miui/home/launcher/ItemInfo;->container:J

    .line 863
    iput-wide p3, p0, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    .line 864
    invoke-static {p0}, Lcom/miui/home/launcher/LauncherModel;->getItemPostionValues(Lcom/miui/home/launcher/ItemInfo;)Landroid/content/ContentValues;

    move-result-object p1

    .line 865
    iget-wide p2, p0, Lcom/miui/home/launcher/ItemInfo;->id:J

    .line 866
    invoke-static {p2, p3}, Lcom/miui/home/launcher/LauncherSettings$Favorites;->getContentUri(J)Landroid/net/Uri;

    move-result-object p0

    invoke-static {p0}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p0

    .line 867
    invoke-virtual {p0, p1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p0

    .line 868
    invoke-virtual {p0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object p0

    return-object p0
.end method

.method public static makeMoveItemOperation(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/bigicon/BigIconPositionInfo;)Landroid/content/ContentProviderOperation;
    .locals 3

    .line 3643
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 3644
    invoke-virtual {p1}, Lcom/miui/home/launcher/bigicon/BigIconPositionInfo;->getCellX()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "cellX"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3645
    invoke-virtual {p1}, Lcom/miui/home/launcher/bigicon/BigIconPositionInfo;->getCellY()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "cellY"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3646
    invoke-virtual {p1}, Lcom/miui/home/launcher/bigicon/BigIconPositionInfo;->getScreenId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "screen"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3647
    invoke-virtual {p1}, Lcom/miui/home/launcher/bigicon/BigIconPositionInfo;->getSpanX()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "spanX"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3648
    invoke-virtual {p1}, Lcom/miui/home/launcher/bigicon/BigIconPositionInfo;->getSpanY()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "spanY"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3649
    invoke-virtual {p1}, Lcom/miui/home/launcher/bigicon/BigIconPositionInfo;->getIconType()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "iconType"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3650
    iget-wide p0, p0, Lcom/miui/home/launcher/ItemInfo;->id:J

    .line 3651
    invoke-static {p0, p1}, Lcom/miui/home/launcher/LauncherSettings$Favorites;->getContentUri(J)Landroid/net/Uri;

    move-result-object p0

    invoke-static {p0}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p0

    .line 3652
    invoke-virtual {p0, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p0

    .line 3653
    invoke-virtual {p0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object p0

    return-object p0
.end method

.method private static makeOperation(Ljava/lang/StringBuilder;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentValues;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentProviderOperation;",
            ">;"
        }
    .end annotation

    .line 970
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 971
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 972
    invoke-static {p0}, Lcom/miui/home/launcher/LauncherModel;->makeScreenUpdateOperation(Ljava/lang/StringBuilder;)Landroid/content/ContentProviderOperation;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 974
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_1

    .line 975
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ContentValues;

    .line 976
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "batch operation itemInfo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Launcher.Model"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    invoke-static {p1}, Lcom/miui/home/launcher/LauncherModel;->makeItemUpdateOperation(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static makeScreenUpdateOperation(Ljava/lang/StringBuilder;)Landroid/content/ContentProviderOperation;
    .locals 2

    .line 984
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 985
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "screenOrder"

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 986
    sget-object p0, Lcom/miui/home/launcher/LauncherSettings$Screens;->CONTENT_URI:Landroid/net/Uri;

    .line 987
    invoke-static {p0}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p0

    .line 988
    invoke-virtual {p0, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p0

    .line 989
    invoke-virtual {p0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object p0

    return-object p0
.end method

.method public static moveItemInDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;JJII)V
    .locals 0

    .line 850
    iput p6, p1, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    .line 851
    iput p7, p1, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    .line 852
    iput-wide p2, p1, Lcom/miui/home/launcher/ItemInfo;->container:J

    .line 853
    iput-wide p4, p1, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    .line 854
    invoke-static {p1}, Lcom/miui/home/launcher/LauncherModel;->getItemPostionValues(Lcom/miui/home/launcher/ItemInfo;)Landroid/content/ContentValues;

    move-result-object p2

    .line 855
    iget-wide p3, p1, Lcom/miui/home/launcher/ItemInfo;->id:J

    invoke-static {p0, p3, p4, p2}, Lcom/miui/home/launcher/LauncherModel;->updateItemInDatabase(Landroid/content/Context;JLandroid/content/ContentValues;)V

    return-void
.end method

.method private onLoadShortcut(Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 2

    .line 2938
    iget-object v0, p1, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 2939
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel;->mLoadedUris:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->makeUniquelyShortcutKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2940
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 2941
    instance-of v1, p1, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;

    if-eqz v1, :cond_0

    .line 2942
    check-cast p1, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;

    invoke-virtual {p0, v0, p1}, Lcom/miui/home/launcher/LauncherModel;->addProgressInfo(Ljava/lang/String;Lcom/miui/home/launcher/progress/ProgressShortcutInfo;)V

    :cond_0
    return-void
.end method

.method private onLoadShortcuts(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;)V"
        }
    .end annotation

    .line 2932
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    .line 2933
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/LauncherModel;->onLoadShortcut(Lcom/miui/home/launcher/ShortcutInfo;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private onRemoveItem(Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 3

    .line 2948
    iget-object v0, p1, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 2949
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 2950
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherModel;->mLoadedUris:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->makeUniquelyShortcutKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2951
    invoke-virtual {p1}, Lcom/miui/home/launcher/ItemInfo;->getUser()Landroid/os/UserHandle;

    move-result-object p1

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2952
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherModel;->mProgressingPackages:Ljava/util/Map;

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private onRemoveItems(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;)V"
        }
    .end annotation

    .line 2958
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/AppInfo;

    .line 2959
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/LauncherModel;->onRemovePackage(Lcom/miui/home/launcher/AppInfo;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private onRemovePackage(Lcom/miui/home/launcher/AppInfo;)V
    .locals 4

    .line 2964
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2966
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getAllLoadedShortcut()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/ShortcutInfo;

    .line 2967
    invoke-virtual {v1}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2968
    invoke-virtual {v1}, Lcom/miui/home/launcher/ItemInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    iget-object v3, p1, Lcom/miui/home/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v2, v3}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 2971
    :cond_1
    iget v2, v1, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    if-eqz v2, :cond_2

    .line 2972
    invoke-virtual {v1}, Lcom/miui/home/launcher/ShortcutInfo;->isShortcut()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2973
    :cond_2
    invoke-direct {p0, v1}, Lcom/miui/home/launcher/LauncherModel;->onRemoveItem(Lcom/miui/home/launcher/ShortcutInfo;)V

    goto :goto_0

    .line 2977
    :cond_3
    iget-object v0, p1, Lcom/miui/home/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2978
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherModel;->mProgressingPackages:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-void
.end method

.method private static removeHideAppInfoFromDatabase(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p2, :cond_f

    .line 3506
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDatabaseName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_6

    .line 3509
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeHideAppInfoFromDatabase dbPath ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",appInfos = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher.Model"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 3510
    invoke-static {p1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    const-string v0, "_id"

    const-string v3, "intent"

    const-string v4, "itemType"

    const-string v5, "appWidgetId"

    const-string v6, "iconPackage"

    .line 3512
    filled-new-array {v0, v3, v4, v5, v6}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v4, "favorites"

    move-object v3, p1

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 3519
    :cond_1
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    move v4, v2

    .line 3520
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 3521
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/home/launcher/AppInfo;

    invoke-virtual {v5}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3524
    :cond_2
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 3525
    :cond_3
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 3526
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const/4 v6, 0x1

    .line 3527
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    .line 3528
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const/4 v9, 0x3

    .line 3529
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    const/4 v10, 0x4

    .line 3530
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    if-eqz v8, :cond_8

    if-eq v8, v6, :cond_5

    if-eq v8, v10, :cond_4

    const/16 v6, 0xe

    if-eq v8, v6, :cond_5

    goto :goto_1

    .line 3554
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v6

    .line 3555
    invoke-virtual {v6, v9}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v6

    .line 3556
    iget-object v6, v6, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 3557
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3535
    :cond_5
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_6
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 3536
    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_7

    invoke-static {v11, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 3537
    :cond_7
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 3542
    :cond_8
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_9
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/miui/home/launcher/AppInfo;

    .line 3543
    invoke-virtual {v8}, Lcom/miui/home/launcher/ShortcutInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "com.google.android.youtube/.app.honeycomb.Shell$HomeActivity"

    .line 3545
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const-string v8, "com.google.android.youtube/.app.honeycomb.Shell%24HomeActivity"

    :cond_a
    if-eqz v7, :cond_9

    .line 3548
    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 3549
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 3565
    :cond_b
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 3566
    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    .line 3567
    array-length p2, p0

    if-lez p2, :cond_e

    .line 3568
    new-instance p2, Ljava/lang/StringBuffer;

    const-string v0, "delete from favorites where "

    invoke-direct {p2, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 3569
    array-length v0, p0

    :goto_4
    if-ge v2, v0, :cond_d

    .line 3571
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, p0, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v0, -0x1

    if-eq v2, v3, :cond_c

    const-string v3, " or "

    .line 3573
    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5

    :cond_c
    const-string v3, ";"

    .line 3575
    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 3578
    :cond_d
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    .line 3579
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "removeHideAppInfoFromDatabase sql = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3580
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3582
    :cond_e
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_f
    :goto_6
    return-void
.end method

.method public static removeHideAppInfoFromDatabaseExcludeCurrentDatabase(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 3467
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3470
    :cond_0
    new-instance v0, Lcom/miui/home/launcher/LauncherModel$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/launcher/LauncherModel$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 3495
    invoke-static {v0}, Lcom/miui/home/launcher/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private resetLoadedState()Z
    .locals 3

    .line 1445
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1446
    :try_start_0
    invoke-direct {p0}, Lcom/miui/home/launcher/LauncherModel;->stopLoaderLocked()Z

    move-result v1

    const/4 v2, 0x0

    .line 1447
    iput-boolean v2, p0, Lcom/miui/home/launcher/LauncherModel;->mModelLoaded:Z

    .line 1448
    iput-boolean v2, p0, Lcom/miui/home/launcher/LauncherModel;->mWorkspaceLoaded:Z

    .line 1449
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    .line 1450
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static resizeItemInDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;IIII)V
    .locals 3

    .line 715
    iput p4, p1, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    .line 716
    iput p5, p1, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    .line 717
    iput p2, p1, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    .line 718
    iput p3, p1, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    .line 720
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 721
    iget-wide v1, p1, Lcom/miui/home/launcher/ItemInfo;->container:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "container"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 722
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const-string/jumbo v1, "spanX"

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 723
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const-string/jumbo p5, "spanY"

    invoke-virtual {v0, p5, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 724
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p4, "cellX"

    invoke-virtual {v0, p4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 725
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "cellY"

    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 726
    iget-wide p1, p1, Lcom/miui/home/launcher/ItemInfo;->id:J

    invoke-static {p0, p1, p2, v0}, Lcom/miui/home/launcher/LauncherModel;->updateItemInDatabase(Landroid/content/Context;JLandroid/content/ContentValues;)V

    return-void
.end method

.method private static runOnWorkerThread(Ljava/lang/Runnable;)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 707
    invoke-static {p0, v0, v1}, Lcom/miui/home/launcher/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private static runOnWorkerThread(Ljava/lang/Runnable;J)V
    .locals 2

    .line 699
    sget-object v0, Lcom/miui/home/launcher/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    if-ne v0, v1, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 700
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 702
    :cond_0
    sget-object v0, Lcom/miui/home/launcher/LauncherModel;->sWorker:Landroid/os/Handler;

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method

.method private setBadgedIcon(Lcom/miui/home/launcher/ShortcutInfo;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 3165
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    invoke-virtual {p1}, Lcom/miui/home/launcher/ItemInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-static {p0, p2, v0}, Lcom/miui/home/launcher/common/Utilities;->getUserBadgedIcon(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 3166
    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;->setIconDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method private stopLoaderLocked()Z
    .locals 1

    .line 1457
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherModel;->mLoaderTask:Lcom/miui/home/launcher/LauncherModel$LoaderTask;

    if-eqz p0, :cond_0

    .line 1459
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->isLaunching()Z

    move-result v0

    .line 1462
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->stopLocked()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static updateFolderItems(Landroid/content/Context;Lcom/miui/home/launcher/FolderInfo;)V
    .locals 11

    .line 832
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 834
    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderInfo;->getContents()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/ShortcutInfo;

    .line 835
    iget-wide v4, p1, Lcom/miui/home/launcher/ItemInfo;->id:J

    const-wide/16 v6, -0x1

    const/4 v8, -0x1

    iget v9, v2, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    iget v10, v2, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    move-object v3, v2

    invoke-static/range {v3 .. v10}, Lcom/miui/home/launcher/LauncherModel;->makeMoveItemOperation(Lcom/miui/home/launcher/ItemInfo;JJIII)Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 837
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateFolderItems, info="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/miui/home/launcher/ItemInfo;->printDetail()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Launcher.Model"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 840
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 841
    sget-object p1, Lcom/miui/home/launcher/LauncherSettings;->AUTHORITY:Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lcom/miui/home/launcher/LauncherModel;->applyBatch(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_1
    return-void
.end method

.method static updateItemFlagAndLaunchCount(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;)Z
    .locals 3

    .line 1116
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1117
    invoke-virtual {p1}, Lcom/miui/home/launcher/ItemInfo;->getLaunchCounts()[I

    move-result-object v1

    invoke-static {v1}, Lcom/miui/home/launcher/common/Utilities;->convertIntArrayToString([I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "launchCount"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1118
    iget v1, p1, Lcom/miui/home/launcher/ItemInfo;->itemFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "itemFlags"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1119
    iget-wide v1, p1, Lcom/miui/home/launcher/ItemInfo;->id:J

    invoke-static {p0, v1, v2, v0}, Lcom/miui/home/launcher/LauncherModel;->updateItemInDatabase(Landroid/content/Context;JLandroid/content/ContentValues;)V

    const/4 p0, 0x1

    return p0
.end method

.method static updateItemInDatabase(Landroid/content/Context;JLandroid/content/ContentValues;)V
    .locals 0

    .line 730
    invoke-static {p1, p2}, Lcom/miui/home/launcher/LauncherSettings$Favorites;->getContentUri(J)Landroid/net/Uri;

    move-result-object p1

    .line 731
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 732
    new-instance p2, Lcom/miui/home/launcher/LauncherModel$1;

    invoke-direct {p2, p0, p1, p3}, Lcom/miui/home/launcher/LauncherModel$1;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)V

    .line 741
    invoke-static {p2}, Lcom/miui/home/launcher/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static updateItemInDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;)V
    .locals 4

    .line 1127
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1129
    invoke-virtual {p1, p0, v0}, Lcom/miui/home/launcher/ItemInfo;->onAddToDatabase(Landroid/content/Context;Landroid/content/ContentValues;)V

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    .line 1131
    iget v2, p1, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p1, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    .line 1132
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-wide v2, p1, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-wide v2, p1, Lcom/miui/home/launcher/ItemInfo;->container:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    const-string v2, "Update item in database (%d, %d) of screen %d under container %d"

    .line 1131
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Launcher.Model"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1134
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateItemInDatabase, item="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/home/launcher/ItemInfo;->printDetail()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1135
    iget-wide v1, p1, Lcom/miui/home/launcher/ItemInfo;->id:J

    invoke-static {p0, v1, v2, v0}, Lcom/miui/home/launcher/LauncherModel;->updateItemInDatabase(Landroid/content/Context;JLandroid/content/ContentValues;)V

    return-void
.end method

.method static updateItemUserInDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;)V
    .locals 3

    .line 1142
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1143
    invoke-virtual {p1, p0, v0}, Lcom/miui/home/launcher/ItemInfo;->upateUserToDatabase(Landroid/content/Context;Landroid/content/ContentValues;)V

    .line 1144
    iget-wide v1, p1, Lcom/miui/home/launcher/ItemInfo;->id:J

    invoke-static {p0, v1, v2, v0}, Lcom/miui/home/launcher/LauncherModel;->updateItemInDatabase(Landroid/content/Context;JLandroid/content/ContentValues;)V

    return-void
.end method

.method static updateLabelInDatabase(Landroid/content/Context;JLjava/lang/CharSequence;)V
    .locals 2

    .line 1106
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1107
    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v1, "label"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1108
    invoke-static {p0, p1, p2, v0}, Lcom/miui/home/launcher/LauncherModel;->updateItemInDatabase(Landroid/content/Context;JLandroid/content/ContentValues;)V

    return-void
.end method

.method static updateScreens(Landroid/content/Context;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 745
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 746
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const-string v1, ""

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 749
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 752
    :cond_0
    new-instance p1, Lcom/miui/home/launcher/LauncherModel$2;

    invoke-direct {p1, v1, p0}, Lcom/miui/home/launcher/LauncherModel$2;-><init>(Ljava/lang/String;Landroid/content/ContentResolver;)V

    .line 765
    invoke-static {p1}, Lcom/miui/home/launcher/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static updateTitleInDatabase(Landroid/content/Context;JLjava/lang/CharSequence;)V
    .locals 2

    .line 1100
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1101
    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1102
    invoke-static {p0, p1, p2, v0}, Lcom/miui/home/launcher/LauncherModel;->updateItemInDatabase(Landroid/content/Context;JLandroid/content/ContentValues;)V

    return-void
.end method

.method private waitForUserUnlock(Ljava/lang/Runnable;)V
    .locals 1

    .line 377
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 379
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getUserUnlockController()Lcom/miui/home/launcher/common/userUnlock/UserUnlockController;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 381
    new-instance v0, Lcom/miui/home/launcher/LauncherModel$$ExternalSyntheticLambda10;

    invoke-direct {v0, p1}, Lcom/miui/home/launcher/LauncherModel$$ExternalSyntheticLambda10;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/common/userUnlock/UserUnlockController;->waitForUserUnlockAndRunOnNonUiThread(Ljava/util/function/Supplier;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addProgressInfo(Ljava/lang/String;Lcom/miui/home/launcher/progress/ProgressShortcutInfo;)V
    .locals 0

    .line 3369
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherModel;->mProgressingPackages:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public beginLoader(Lcom/miui/home/launcher/LauncherModel$LoaderTask;)Lcom/miui/home/launcher/LauncherModel$LoaderTransaction;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/CancellationException;
        }
    .end annotation

    .line 3431
    new-instance v0, Lcom/miui/home/launcher/LauncherModel$LoaderTransaction;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/miui/home/launcher/LauncherModel$LoaderTransaction;-><init>(Lcom/miui/home/launcher/LauncherModel;Lcom/miui/home/launcher/LauncherModel$LoaderTask;Lcom/miui/home/launcher/LauncherModel$1;)V

    return-object v0
.end method

.method public beginSaveAppsInLayoutPreview()V
    .locals 1

    .line 999
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherModel;->mChangedAppsWhenLayoutPreview:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 1000
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "already start save apps in layout preview"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public dumpState()V
    .locals 2

    .line 3360
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCallbacks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/launcher/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher.Model"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3361
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel;->mLoaderTask:Lcom/miui/home/launcher/LauncherModel$LoaderTask;

    if-eqz v0, :cond_0

    .line 3362
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherModel;->mLoaderTask:Lcom/miui/home/launcher/LauncherModel$LoaderTask;

    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->dumpState()V

    goto :goto_0

    :cond_0
    const-string p0, "mLoaderTask=null"

    .line 3364
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public endSaveAppsInLayoutPreview()V
    .locals 8

    .line 1021
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel;->mChangedAppsWhenLayoutPreview:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1022
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 1023
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    const-string v3, "android.intent.extra.changed_package_list"

    .line 1024
    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1025
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 1028
    :cond_1
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.intent.action.PACKAGE_CHANGED"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    .line 1029
    iget-object v2, p0, Lcom/miui/home/launcher/LauncherModel;->mLauncherAppsCallback:Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;->onPackageChanged(Ljava/lang/String;Landroid/os/UserHandle;)V

    goto :goto_0

    .line 1032
    :cond_2
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v6, "android.intent.action.PACKAGE_REMOVED"

    invoke-static {v4, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1033
    iget-object v2, p0, Lcom/miui/home/launcher/LauncherModel;->mLauncherAppsCallback:Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;->onPackageRemoved(Ljava/lang/String;Landroid/os/UserHandle;)V

    goto :goto_0

    .line 1036
    :cond_3
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v6, "android.intent.action.PACKAGE_ADDED"

    invoke-static {v4, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1037
    iget-object v2, p0, Lcom/miui/home/launcher/LauncherModel;->mLauncherAppsCallback:Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;->onPackageAdded(Ljava/lang/String;Landroid/os/UserHandle;)V

    goto :goto_0

    :cond_4
    new-array v4, v5, [Ljava/lang/String;

    .line 1040
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    .line 1041
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string v7, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1042
    iget-object v2, p0, Lcom/miui/home/launcher/LauncherModel;->mLauncherAppsCallback:Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;

    invoke-virtual {v2, v4, v1, v5}, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;->onPackagesAvailable([Ljava/lang/String;Landroid/os/UserHandle;Z)V

    goto/16 :goto_0

    .line 1045
    :cond_5
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string v7, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1046
    iget-object v2, p0, Lcom/miui/home/launcher/LauncherModel;->mLauncherAppsCallback:Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;

    invoke-virtual {v2, v4, v1, v5}, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;->onPackagesUnavailable([Ljava/lang/String;Landroid/os/UserHandle;Z)V

    goto/16 :goto_0

    .line 1049
    :cond_6
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string v7, "android.intent.action.PACKAGES_SUSPENDED"

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1050
    iget-object v2, p0, Lcom/miui/home/launcher/LauncherModel;->mLauncherAppsCallback:Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;

    invoke-virtual {v2, v4, v1}, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;->onPackagesSuspended([Ljava/lang/String;Landroid/os/UserHandle;)V

    goto/16 :goto_0

    .line 1053
    :cond_7
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string v7, "android.intent.action.PACKAGES_UNSUSPENDED"

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1054
    iget-object v2, p0, Lcom/miui/home/launcher/LauncherModel;->mLauncherAppsCallback:Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;

    invoke-virtual {v2, v4, v1}, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;->onPackagesUnsuspended([Ljava/lang/String;Landroid/os/UserHandle;)V

    goto/16 :goto_0

    .line 1057
    :cond_8
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1058
    iget-object v2, p0, Lcom/miui/home/launcher/LauncherModel;->mLauncherAppsCallback:Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v1}, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;->onShortcutsChanged(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)V

    goto/16 :goto_0

    .line 1061
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "change app num is = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/launcher/LauncherModel;->mChangedAppsWhenLayoutPreview:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher.Model"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherModel;->mChangedAppsWhenLayoutPreview:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public enqueueModelUpdateTask(Lcom/miui/home/launcher/LauncherModel$ModelUpdateTask;)V
    .locals 3

    .line 3384
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel;->mAllAppsList:Lcom/miui/home/launcher/AllAppsList;

    iget-object v1, p0, Lcom/miui/home/launcher/LauncherModel;->mAllCategoryList:Lcom/miui/home/launcher/AllCategoryList;

    iget-object v2, p0, Lcom/miui/home/launcher/LauncherModel;->mUiExecutor:Lcom/miui/home/launcher/MainThreadExecutor;

    invoke-interface {p1, p0, v0, v1, v2}, Lcom/miui/home/launcher/LauncherModel$ModelUpdateTask;->init(Lcom/miui/home/launcher/LauncherModel;Lcom/miui/home/launcher/AllAppsList;Lcom/miui/home/launcher/AllCategoryList;Ljava/util/concurrent/Executor;)V

    .line 3385
    invoke-static {p1}, Lcom/miui/home/launcher/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method forceReload(Landroid/content/Context;Lcom/miui/home/launcher/allapps/LauncherMode;)V
    .locals 2

    .line 1439
    invoke-direct {p0}, Lcom/miui/home/launcher/LauncherModel;->resetLoadedState()Z

    move-result v0

    .line 1440
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherModel;->mHandler:Lcom/miui/home/library/utils/DeferredHandler;

    invoke-virtual {v1}, Lcom/miui/home/library/utils/DeferredHandler;->cancel()V

    .line 1441
    invoke-virtual {p0, p1, v0, p2}, Lcom/miui/home/launcher/LauncherModel;->startLoader(Landroid/content/Context;ZLcom/miui/home/launcher/allapps/LauncherMode;)V

    return-void
.end method

.method public getAllAppList()Lcom/miui/home/launcher/AllAppsList;
    .locals 0

    .line 243
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherModel;->mAllAppsList:Lcom/miui/home/launcher/AllAppsList;

    return-object p0
.end method

.method public getAllCategoryList()Lcom/miui/home/launcher/AllCategoryList;
    .locals 0

    .line 247
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherModel;->mAllCategoryList:Lcom/miui/home/launcher/AllCategoryList;

    return-object p0
.end method

.method public getAppShortcutInfo(Lcom/miui/home/launcher/model/LauncherAppsProvider;Landroid/content/Intent;Landroid/content/Context;Landroid/database/Cursor;IIII)Lcom/miui/home/launcher/ShortcutInfo;
    .locals 4

    .line 3018
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p5

    const/4 v0, 0x0

    const-string v1, "Launcher.Model"

    if-nez p5, :cond_0

    const-string p0, "Missing component found in getShortcutInfo"

    .line 3020
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 3023
    :cond_0
    invoke-interface {p4, p8}, Landroid/database/Cursor;->getInt(I)I

    move-result p8

    invoke-static {p3, p8}, Lcom/miui/home/launcher/common/Utilities;->getUserForSerialNumber(Landroid/content/Context;I)Landroid/os/UserHandle;

    move-result-object p8

    if-nez p8, :cond_1

    const-string p0, "Null user found in getShortcutInfo"

    .line 3025
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 3028
    :cond_1
    invoke-interface {p1}, Lcom/miui/home/launcher/model/LauncherAppsProvider;->getAllAppsMap()Ljava/util/Map;

    move-result-object p1

    new-instance v2, Lcom/miui/home/launcher/util/ComponentKey;

    invoke-direct {v2, p5, p8}, Lcom/miui/home/launcher/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/LauncherActivityInfo;

    if-nez p1, :cond_2

    .line 3030
    invoke-static {p3}, Lcom/miui/home/library/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/compat/LauncherAppsCompat;

    move-result-object p1

    invoke-virtual {p1, p2, p8}, Lcom/miui/home/library/compat/LauncherAppsCompat;->resolveActivity(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/pm/LauncherActivityInfo;

    move-result-object p1

    :cond_2
    if-nez p1, :cond_3

    .line 3033
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Missing activity found in getShortcutInfo: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 3036
    :cond_3
    new-instance v0, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-direct {v0}, Lcom/miui/home/launcher/ShortcutInfo;-><init>()V

    const/4 v1, 0x0

    .line 3037
    invoke-interface {p4, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, v0, Lcom/miui/home/launcher/ItemInfo;->id:J

    .line 3038
    iput-object p2, v0, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    .line 3039
    invoke-virtual {v0, p8}, Lcom/miui/home/launcher/ShortcutInfo;->setUser(Landroid/os/UserHandle;)V

    const/16 p2, 0xd

    .line 3040
    invoke-interface {p4, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    iput p2, v0, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    const/16 p2, 0xe

    .line 3041
    invoke-interface {p4, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    iput p2, v0, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    const/4 p2, 0x3

    .line 3042
    invoke-interface {p4, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    iput p2, v0, Lcom/miui/home/launcher/ShortcutInfo;->mIconType:I

    .line 3044
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getParallelExecutor()Ljava/util/concurrent/Executor;

    move-result-object p2

    new-instance p8, Lcom/miui/home/launcher/LauncherModel$$ExternalSyntheticLambda3;

    invoke-direct {p8, p0, v0, p1}, Lcom/miui/home/launcher/LauncherModel$$ExternalSyntheticLambda3;-><init>(Lcom/miui/home/launcher/LauncherModel;Lcom/miui/home/launcher/ShortcutInfo;Landroid/content/pm/LauncherActivityInfo;)V

    invoke-interface {p2, p8}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 3049
    iget-boolean p2, p0, Lcom/miui/home/launcher/LauncherModel;->mReadLabelFromDB:Z

    if-nez p2, :cond_4

    .line 3050
    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getLabel()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {v0, p2, p3}, Lcom/miui/home/launcher/ShortcutInfo;->setTitleAndUpdateDB(Ljava/lang/CharSequence;Landroid/content/Context;)V

    .line 3053
    :cond_4
    iget-boolean p0, p0, Lcom/miui/home/launcher/LauncherModel;->mReadLabelFromDB:Z

    if-eqz p0, :cond_5

    .line 3055
    invoke-interface {p4, p7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/ItemInfo;->setLabel(Ljava/lang/CharSequence;)V

    .line 3058
    :cond_5
    invoke-virtual {v0, p3}, Lcom/miui/home/launcher/ShortcutInfo;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p0

    if-nez p0, :cond_6

    .line 3060
    invoke-interface {p4, p6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p3}, Lcom/miui/home/launcher/ShortcutInfo;->setTitleAndUpdateDB(Ljava/lang/CharSequence;Landroid/content/Context;)V

    .line 3064
    :cond_6
    invoke-virtual {v0, p3}, Lcom/miui/home/launcher/ShortcutInfo;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p0

    if-nez p0, :cond_7

    .line 3065
    invoke-virtual {p5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p3}, Lcom/miui/home/launcher/ShortcutInfo;->setTitleAndUpdateDB(Ljava/lang/CharSequence;Landroid/content/Context;)V

    .line 3068
    :cond_7
    iput v1, v0, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    .line 3069
    invoke-virtual {v0, p5}, Lcom/miui/home/launcher/ShortcutInfo;->setApplicationConfig(Landroid/content/ComponentName;)V

    .line 3072
    invoke-static {v0, p1}, Lcom/miui/home/launcher/BaseAppInfo;->updateRuntimeFlagsForActivityTarget(Lcom/miui/home/launcher/ShortcutInfo;Landroid/content/pm/LauncherActivityInfo;)V

    .line 3073
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/ShortcutInfo;->updateInstallSourceInfo(Landroid/content/pm/LauncherActivityInfo;)V

    return-object v0
.end method

.method public getCallback()Lcom/miui/home/launcher/LauncherModel$Callbacks;
    .locals 1

    .line 3416
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/miui/home/launcher/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/LauncherModel$Callbacks;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getEventBusHandlers()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 233
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherModel;->mSecurityHideMessageHandler:Lcom/miui/home/launcher/LauncherModel$SecurityHideMessageHandler;

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getFallbackIcon(Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 695
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherModel;->mIconCache:Lcom/miui/home/launcher/IconCache;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/IconCache;->getDefaultIcon(Landroid/os/UserHandle;)Lcom/miui/home/launcher/graphics/DrawableInfo;

    move-result-object p0

    iget-object p0, p0, Lcom/miui/home/launcher/graphics/DrawableInfo;->icon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method getIconBitmapFromCursor(Landroid/database/Cursor;I)Landroid/graphics/Bitmap;
    .locals 0

    .line 3171
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object p0

    const/4 p1, 0x0

    .line 3173
    :try_start_0
    array-length p2, p0

    invoke-static {p0, p1, p2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getIsGlobalMiBrowserChangedFlag()Z
    .locals 0

    .line 3666
    iget-boolean p0, p0, Lcom/miui/home/launcher/LauncherModel;->mGlobalMiBrowserChangedFlag:Z

    return p0
.end method

.method public getLauncherAppsCallback()Lcom/miui/home/library/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;
    .locals 0

    .line 1237
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherModel;->mLauncherAppsCallback:Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;

    return-object p0
.end method

.method public getProgressItemInfo(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Lcom/miui/home/launcher/progress/ProgressShortcutInfo;
    .locals 2

    .line 3180
    new-instance p3, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;

    invoke-direct {p3}, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;-><init>()V

    const-wide/16 v0, -0x64

    .line 3181
    iput-wide v0, p3, Lcom/miui/home/launcher/ItemInfo;->container:J

    const/16 v0, 0xb

    .line 3182
    iput v0, p3, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    const/4 v0, 0x4

    .line 3183
    iput v0, p3, Lcom/miui/home/launcher/ShortcutInfo;->mIconType:I

    .line 3184
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/launcher/LauncherModel;->fillShortcutInfoFromIntent(Landroid/content/Context;Landroid/content/Intent;Lcom/miui/home/launcher/ShortcutInfo;)V

    .line 3185
    iget-object p0, p3, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 p0, 0x1

    .line 3189
    iput p0, p3, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    iput p0, p3, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    .line 3190
    invoke-virtual {p3, p1}, Lcom/miui/home/launcher/ShortcutInfo;->wrapIconWithBorder(Landroid/content/Context;)V

    return-object p3
.end method

.method getShortcutInfo(Landroid/content/Intent;Landroid/database/Cursor;Landroid/content/Context;IIIIIIII)Lcom/miui/home/launcher/ShortcutInfo;
    .locals 2

    .line 3087
    invoke-direct {p0, p4, p1}, Lcom/miui/home/launcher/LauncherModel;->createShortcutInfo(ILandroid/content/Intent;)Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object p4

    .line 3088
    iput-object p1, p4, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    const/16 p1, 0x13

    .line 3089
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    iput p1, p4, Lcom/miui/home/launcher/ItemInfo;->itemFlags:I

    const/4 p1, 0x0

    .line 3091
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p4, Lcom/miui/home/launcher/ItemInfo;->id:J

    .line 3093
    invoke-interface {p2, p6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3094
    invoke-interface {p2, p9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p9

    invoke-virtual {p4, p9, p3}, Lcom/miui/home/launcher/ShortcutInfo;->setTitleAndUpdateDB(Ljava/lang/CharSequence;Landroid/content/Context;)V

    .line 3095
    iget-boolean p9, p0, Lcom/miui/home/launcher/LauncherModel;->mReadLabelFromDB:Z

    if-eqz p9, :cond_0

    .line 3096
    invoke-interface {p2, p10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p9

    invoke-virtual {p4, p9}, Lcom/miui/home/launcher/ItemInfo;->setLabel(Ljava/lang/CharSequence;)V

    .line 3098
    :cond_0
    iget-object p9, p0, Lcom/miui/home/launcher/LauncherModel;->mLauncherApplication:Lcom/miui/home/launcher/Application;

    invoke-interface {p2, p11}, Landroid/database/Cursor;->getInt(I)I

    move-result p10

    invoke-static {p9, p10}, Lcom/miui/home/launcher/common/Utilities;->getUserForSerialNumber(Landroid/content/Context;I)Landroid/os/UserHandle;

    move-result-object p9

    const/4 p10, 0x0

    if-nez p9, :cond_1

    return-object p10

    .line 3103
    :cond_1
    invoke-virtual {p4, p9}, Lcom/miui/home/launcher/ShortcutInfo;->setUser(Landroid/os/UserHandle;)V

    const/16 p9, 0x15

    const/4 p11, 0x1

    .line 3106
    :try_start_0
    invoke-interface {p2, p9}, Landroid/database/Cursor;->getInt(I)I

    move-result p9

    if-ne p9, p11, :cond_2

    move p1, p11

    .line 3107
    :cond_2
    iput-boolean p1, p4, Lcom/miui/home/launcher/ItemInfo;->mIsRetained:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3109
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 3111
    :goto_0
    invoke-interface {p2, p5}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    iput p1, p4, Lcom/miui/home/launcher/ShortcutInfo;->mIconType:I

    if-eqz p1, :cond_9

    if-eq p1, p11, :cond_8

    const/4 p5, 0x3

    if-eq p1, p5, :cond_7

    const/4 p5, 0x4

    if-eq p1, p5, :cond_5

    const/4 p5, 0x6

    if-eq p1, p5, :cond_4

    const/4 p5, 0x7

    if-eq p1, p5, :cond_3

    goto/16 :goto_2

    .line 3154
    :cond_3
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p5

    invoke-virtual {p0, p2, p8}, Lcom/miui/home/launcher/LauncherModel;->getIconBitmapFromCursor(Landroid/database/Cursor;I)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-direct {p1, p5, p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 3155
    invoke-virtual {p4, p1}, Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;->setIconDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    .line 3138
    :cond_4
    invoke-interface {p2, p7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 3139
    invoke-static {p3, p1}, Lcom/miui/home/launcher/common/Utilities;->getDrawableByResourceName(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 3140
    invoke-direct {p0, p4, p1}, Lcom/miui/home/launcher/LauncherModel;->setBadgedIcon(Lcom/miui/home/launcher/ShortcutInfo;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    .line 3143
    :cond_5
    invoke-interface {p2, p7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_6

    .line 3145
    move-object p1, p4

    check-cast p1, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/RemoteShortcutInfo;->setLocalIconUri(Landroid/net/Uri;)V

    .line 3147
    :cond_6
    move-object p0, p4

    check-cast p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;

    invoke-interface {p2, p6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/RemoteShortcutInfo;->setPackageName(Ljava/lang/String;)V

    goto :goto_2

    .line 3114
    :cond_7
    invoke-virtual {p4, p3}, Lcom/miui/home/launcher/ShortcutInfo;->loadToggleInfo(Landroid/content/Context;)V

    goto :goto_2

    .line 3150
    :cond_8
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p5

    invoke-virtual {p0, p2, p8}, Lcom/miui/home/launcher/LauncherModel;->getIconBitmapFromCursor(Landroid/database/Cursor;I)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-direct {p1, p5, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 3151
    invoke-direct {p0, p4, p1}, Lcom/miui/home/launcher/LauncherModel;->setBadgedIcon(Lcom/miui/home/launcher/ShortcutInfo;Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 3117
    :cond_9
    invoke-interface {p2, p7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 3118
    invoke-virtual {p3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a

    const/16 p2, 0x2f

    .line 3119
    invoke-virtual {p1, p2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p2

    add-int/2addr p2, p11

    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 3120
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p6, ".png"

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {p3, p5}, Lmiui/content/res/IconCustomizer;->getCustomizedIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p5

    if-nez p5, :cond_b

    .line 3122
    invoke-static {p3, v0, p1}, Lcom/miui/home/launcher/common/Utilities;->getDrawableFromPackage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p5

    .line 3123
    invoke-static {p3, p2, p10, p5}, Lmiui/content/res/IconCustomizer;->getCustomizedIcon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p5

    goto :goto_1

    .line 3127
    :cond_a
    invoke-static {p3, v0, p1}, Lcom/miui/home/launcher/common/Utilities;->getDrawableFromPackage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p5

    :cond_b
    :goto_1
    if-nez p5, :cond_c

    .line 3130
    invoke-virtual {p4}, Lcom/miui/home/launcher/ItemInfo;->getUser()Landroid/os/UserHandle;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/LauncherModel;->getFallbackIcon(Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object p5

    .line 3132
    :cond_c
    new-instance p2, Landroid/content/Intent$ShortcutIconResource;

    invoke-direct {p2}, Landroid/content/Intent$ShortcutIconResource;-><init>()V

    iput-object p2, p4, Lcom/miui/home/launcher/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    .line 3133
    iput-object v0, p2, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    .line 3134
    iput-object p1, p2, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    .line 3135
    invoke-direct {p0, p4, p5}, Lcom/miui/home/launcher/LauncherModel;->setBadgedIcon(Lcom/miui/home/launcher/ShortcutInfo;Landroid/graphics/drawable/Drawable;)V

    .line 3159
    :goto_2
    invoke-virtual {p4, p3}, Lcom/miui/home/launcher/ShortcutInfo;->wrapIconWithBorder(Landroid/content/Context;)V

    return-object p4
.end method

.method getShortcutInfo(Landroid/content/Intent;Lcom/miui/home/launcher/CellLayout$CellInfo;I)Lcom/miui/home/launcher/ShortcutInfo;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 3253
    :cond_0
    invoke-static {p1}, Lcom/miui/launcher/common/PinItemRequestCompat;->getPinItemRequest(Landroid/content/Intent;)Lcom/miui/launcher/common/PinItemRequestCompat;

    move-result-object v1

    .line 3252
    invoke-static {v1}, Lcom/miui/home/launcher/compat/ShortcutConfigActivityInfo;->tryCreateShortcutInfoFromPinItemRequest(Lcom/miui/launcher/common/PinItemRequestCompat;)Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object v1

    if-nez v1, :cond_1

    .line 3255
    invoke-virtual {p0, p1, p3}, Lcom/miui/home/launcher/LauncherModel;->getShortcutInfoIgnoreDuplication(Landroid/content/Intent;I)Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object v1

    .line 3258
    :cond_1
    iget p1, v1, Lcom/miui/home/launcher/ShortcutInfo;->mIconType:I

    const/4 p3, 0x2

    if-eq p1, p3, :cond_2

    const/4 p3, 0x3

    if-eq p1, p3, :cond_2

    .line 3260
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/LauncherModel;->isDupShortcut(Lcom/miui/home/launcher/ShortcutInfo;)Z

    move-result p0

    if-eqz p0, :cond_2

    return-object v0

    :cond_2
    const-wide/16 p0, -0x1

    if-eqz p2, :cond_3

    .line 3263
    iget p3, p2, Lcom/miui/home/launcher/CellLayout$CellInfo;->container:I

    int-to-long v2, p3

    goto :goto_0

    :cond_3
    move-wide v2, p0

    :goto_0
    iput-wide v2, v1, Lcom/miui/home/launcher/ItemInfo;->container:J

    if-eqz p2, :cond_4

    .line 3264
    iget-wide p0, p2, Lcom/miui/home/launcher/CellLayout$CellInfo;->screenId:J

    :cond_4
    iput-wide p0, v1, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    const/4 p0, 0x0

    if-eqz p2, :cond_5

    .line 3265
    iget p1, p2, Lcom/miui/home/launcher/CellLayout$CellInfo;->cellX:I

    goto :goto_1

    :cond_5
    move p1, p0

    :goto_1
    iput p1, v1, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    if-eqz p2, :cond_6

    .line 3266
    iget p0, p2, Lcom/miui/home/launcher/CellLayout$CellInfo;->cellY:I

    :cond_6
    iput p0, v1, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    return-object v1
.end method

.method getShortcutInfoIgnoreDuplication(Landroid/content/Intent;I)Lcom/miui/home/launcher/ShortcutInfo;
    .locals 4

    .line 3216
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel;->mLauncherApplication:Lcom/miui/home/launcher/Application;

    .line 3217
    invoke-direct {p0, p2, p1}, Lcom/miui/home/launcher/LauncherModel;->createShortcutInfo(ILandroid/content/Intent;)Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object p2

    .line 3218
    invoke-direct {p0, v0, p1, p2}, Lcom/miui/home/launcher/LauncherModel;->fillShortcutInfoFromIntent(Landroid/content/Context;Landroid/content/Intent;Lcom/miui/home/launcher/ShortcutInfo;)V

    .line 3219
    iget-object p0, p2, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string p0, "profile"

    const/4 v2, -0x1

    .line 3222
    invoke-virtual {p1, p0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    if-eq p0, v2, :cond_2

    .line 3224
    invoke-static {v0}, Lcom/miui/home/library/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/compat/UserManagerCompat;

    move-result-object p1

    int-to-long v2, p0

    invoke-virtual {p1, v2, v3}, Lcom/miui/home/library/compat/UserManagerCompat;->getUserForSerialNumber(J)Landroid/os/UserHandle;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v1

    .line 3227
    :cond_1
    invoke-virtual {p2, p0}, Lcom/miui/home/launcher/ShortcutInfo;->setUser(Landroid/os/UserHandle;)V

    :cond_2
    const/4 p0, 0x1

    .line 3229
    iput p0, p2, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    iput p0, p2, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    .line 3230
    invoke-virtual {p2, v0}, Lcom/miui/home/launcher/ShortcutInfo;->wrapIconWithBorder(Landroid/content/Context;)V

    return-object p2
.end method

.method public initialize(Lcom/miui/home/launcher/LauncherModel$Callbacks;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1231
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherModel;->stopLoader()V

    .line 1233
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public insertItemToDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;)V
    .locals 11

    .line 1153
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 1155
    invoke-static {p1}, Lcom/miui/home/launcher/Application;->getLauncherApplication(Landroid/content/Context;)Lcom/miui/home/launcher/Application;

    move-result-object v0

    .line 1156
    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getLauncherProvider()Lcom/miui/home/launcher/LauncherProvider;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 1159
    :cond_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getLauncherProvider()Lcom/miui/home/launcher/LauncherProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherProvider;->generateNewId()J

    move-result-wide v2

    .line 1160
    iput-wide v2, p2, Lcom/miui/home/launcher/ItemInfo;->id:J

    .line 1163
    instance-of v0, p2, Lcom/miui/home/launcher/ShortcutInfo;

    const/4 v1, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x3

    const-string v8, "Launcher.Model"

    if-eqz v0, :cond_1

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    .line 1164
    move-object v10, p2

    check-cast v10, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {v10}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v5

    iget v5, p2, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v9, v4

    iget v4, p2, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v9, v1

    iget-wide v4, p2, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v9, v7

    const-string v1, "Insert item %s to database (%d, %d) of screen %d"

    invoke-static {v1, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    new-array v7, v7, [Ljava/lang/Object;

    .line 1166
    iget v9, p2, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v5

    iget v5, p2, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v7, v4

    iget-wide v4, p2, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v7, v1

    const-string v1, "Insert item to database (%d, %d) of screen %d"

    invoke-static {v1, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-eqz v0, :cond_2

    .line 1171
    move-object v0, p2

    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/LauncherModel;->onLoadShortcut(Lcom/miui/home/launcher/ShortcutInfo;)V

    .line 1173
    :cond_2
    new-instance v7, Lcom/miui/home/launcher/LauncherModel$5;

    move-object v0, v7

    move-object v1, p0

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/miui/home/launcher/LauncherModel$5;-><init>(Lcom/miui/home/launcher/LauncherModel;JLcom/miui/home/launcher/ItemInfo;Landroid/content/Context;Landroid/content/ContentResolver;)V

    .line 1181
    invoke-static {v7}, Lcom/miui/home/launcher/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public isDupShortcut(Lcom/miui/home/launcher/ShortcutInfo;)Z
    .locals 0

    .line 3235
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherModel;->mLoadedUris:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->makeUniquelyShortcutKey()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isModelLoaded()Z
    .locals 2

    .line 3425
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3426
    :try_start_0
    iget-boolean v1, p0, Lcom/miui/home/launcher/LauncherModel;->mModelLoaded:Z

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/miui/home/launcher/LauncherModel;->mLoaderTask:Lcom/miui/home/launcher/LauncherModel$LoaderTask;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 3427
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isValidShortcut(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z
    .locals 1

    .line 3239
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    invoke-static {p1, p3}, Lcom/miui/home/launcher/ScreenUtils;->isAlreadyInstalled(Ljava/lang/String;Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    return v0

    .line 3242
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    new-instance p0, Landroid/content/ComponentName;

    invoke-direct {p0, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3243
    invoke-static {p3, p0}, Lcom/miui/home/launcher/ScreenUtils;->isActivityExist(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result p0

    if-nez p0, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public onDestroy()V
    .locals 0

    .line 239
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherModel;->mFolders:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public onPackageIconsUpdated(Ljava/util/HashSet;Landroid/os/UserHandle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/UserHandle;",
            ")V"
        }
    .end annotation

    .line 3380
    new-instance v0, Lcom/miui/home/launcher/model/CacheDataUpdatedTask;

    invoke-direct {v0, p2, p1}, Lcom/miui/home/launcher/model/CacheDataUpdatedTask;-><init>(Landroid/os/UserHandle;Ljava/util/HashSet;)V

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/LauncherModel;->enqueueModelUpdateTask(Lcom/miui/home/launcher/LauncherModel$ModelUpdateTask;)V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 1245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceive home receiver intent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher.Model"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1246
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.MANAGED_PROFILE_ADDED"

    .line 1247
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "android.intent.action.MANAGED_PROFILE_REMOVED"

    .line 1248
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "android.intent.action.PROFILE_REMOVED"

    .line 1249
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 1260
    :cond_0
    new-instance v0, Lcom/miui/home/launcher/LauncherModel$8;

    invoke-direct {v0, p0, p2, p1}, Lcom/miui/home/launcher/LauncherModel$8;-><init>(Lcom/miui/home/launcher/LauncherModel;Landroid/content/Intent;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/LauncherModel;->runOnWorkerThreadAndCheckForReady(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 1250
    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/miui/home/library/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/compat/UserManagerCompat;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/library/compat/UserManagerCompat;->enableAndResetCache()V

    .line 1251
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "android.intent.extra.USER"

    .line 1252
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/os/UserHandle;

    invoke-static {p2}, Lcom/miui/launcher/utils/LauncherUtils;->isXSpaceUser(Landroid/os/UserHandle;)Z

    move-result p2

    if-eqz p2, :cond_2

    return-void

    .line 1256
    :cond_2
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 1257
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p2

    invoke-virtual {p2}, Lcom/miui/home/launcher/Launcher;->getLauncherMode()Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/LauncherModel;->forceReload(Landroid/content/Context;Lcom/miui/home/launcher/allapps/LauncherMode;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public onReceiveBackground(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V
    .locals 11

    .line 1301
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherModel;->mLauncherApplication:Lcom/miui/home/launcher/Application;

    .line 1303
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1304
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1305
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1307
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/LauncherModel$Callbacks;

    move-object v9, v0

    goto :goto_0

    :cond_0
    move-object v9, v1

    :goto_0
    if-nez v9, :cond_1

    const-string p0, "Launcher.Model"

    const-string p1, "Nobody to tell about the new app.  Launcher is probably loading."

    .line 1309
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1313
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/IconReorganizeMonitor;->isAutoReorganizing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1314
    sget-object v0, Lcom/miui/home/launcher/IconReorganizeMonitor;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1316
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception v2

    .line 1318
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 1320
    :goto_1
    monitor-exit v0

    goto :goto_3

    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_2
    :goto_3
    const-string v0, "Launcher.Model"

    .line 1322
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got broadcast:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1323
    iget-object v10, p0, Lcom/miui/home/launcher/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 1324
    :try_start_2
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel;->mAllAppsList:Lcom/miui/home/launcher/AllAppsList;

    invoke-virtual {v0}, Lcom/miui/home/launcher/AllAppsList;->clearAllExceptData()V

    .line 1325
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.xiaomi.market.ACTION_HD_ICON_UPDATE"

    .line 1326
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string p1, "packageName"

    .line 1327
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1328
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 1329
    monitor-exit v10

    return-void

    .line 1331
    :cond_3
    invoke-static {p1}, Lmiui/content/res/IconCustomizer;->clearCustomizedIcons(Ljava/lang/String;)V

    .line 1332
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    .line 1333
    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1334
    invoke-virtual {p0, p2, p3}, Lcom/miui/home/launcher/LauncherModel;->onPackageIconsUpdated(Ljava/util/HashSet;Landroid/os/UserHandle;)V

    .line 1335
    monitor-exit v10

    return-void

    :cond_4
    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    .line 1336
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    .line 1337
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    const-string v2, "android.intent.action.PACKAGE_ADDED"

    .line 1338
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto/16 :goto_c

    :cond_5
    const-string v1, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    .line 1367
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    const-string v1, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    .line 1368
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto/16 :goto_8

    :cond_6
    const-string v1, "android.intent.action.PACKAGES_SUSPENDED"

    .line 1390
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, "android.intent.action.PACKAGES_UNSUSPENDED"

    .line 1391
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_5

    :cond_7
    const-string p2, "android.intent.action.MANAGED_PROFILE_AVAILABLE"

    .line 1401
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_8

    const-string p2, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    .line 1402
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_18

    :cond_8
    if-nez p3, :cond_9

    .line 1404
    monitor-exit v10

    return-void

    .line 1406
    :cond_9
    invoke-static {p1}, Lcom/miui/home/library/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/compat/UserManagerCompat;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/miui/home/library/compat/UserManagerCompat;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    move-result p1

    const/16 p2, 0x8

    if-eqz p1, :cond_a

    .line 1408
    invoke-static {p2}, Lcom/miui/home/launcher/util/FlagOp;->addFlag(I)Lcom/miui/home/launcher/util/FlagOp;

    move-result-object p2

    goto :goto_4

    .line 1409
    :cond_a
    invoke-static {p2}, Lcom/miui/home/launcher/util/FlagOp;->removeFlag(I)Lcom/miui/home/launcher/util/FlagOp;

    move-result-object p2

    .line 1411
    :goto_4
    invoke-static {p3}, Lcom/miui/home/launcher/util/ItemInfoMatcher;->ofUser(Landroid/os/UserHandle;)Lcom/miui/home/launcher/util/ItemInfoMatcher;

    move-result-object v0

    .line 1412
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherModel;->mAllAppsList:Lcom/miui/home/launcher/AllAppsList;

    invoke-virtual {v1, v0, p2}, Lcom/miui/home/launcher/AllAppsList;->updateDisabledFlags(Lcom/miui/home/launcher/util/ItemInfoMatcher;Lcom/miui/home/launcher/util/FlagOp;)V

    .line 1413
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p2

    new-instance v0, Lcom/miui/home/launcher/common/messages/UserQuietModeChangeMessage;

    invoke-direct {v0, p3, p1}, Lcom/miui/home/launcher/common/messages/UserQuietModeChangeMessage;-><init>(Landroid/os/UserHandle;Z)V

    invoke-virtual {p2, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto/16 :goto_d

    :cond_b
    :goto_5
    const-string p1, "android.intent.extra.changed_package_list"

    .line 1392
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 1393
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_c

    goto :goto_7

    .line 1396
    :cond_c
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {p2, p3}, Lcom/miui/home/launcher/util/ItemInfoMatcher;->ofPackages(Ljava/util/HashSet;Landroid/os/UserHandle;)Lcom/miui/home/launcher/util/ItemInfoMatcher;

    move-result-object p1

    const-string p2, "android.intent.action.PACKAGES_SUSPENDED"

    .line 1397
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 p3, 0x4

    if-eqz p2, :cond_d

    .line 1398
    invoke-static {p3}, Lcom/miui/home/launcher/util/FlagOp;->addFlag(I)Lcom/miui/home/launcher/util/FlagOp;

    move-result-object p2

    goto :goto_6

    .line 1399
    :cond_d
    invoke-static {p3}, Lcom/miui/home/launcher/util/FlagOp;->removeFlag(I)Lcom/miui/home/launcher/util/FlagOp;

    move-result-object p2

    .line 1400
    :goto_6
    iget-object p3, p0, Lcom/miui/home/launcher/LauncherModel;->mAllAppsList:Lcom/miui/home/launcher/AllAppsList;

    invoke-virtual {p3, p1, p2}, Lcom/miui/home/launcher/AllAppsList;->updateDisabledFlags(Lcom/miui/home/launcher/util/ItemInfoMatcher;Lcom/miui/home/launcher/util/FlagOp;)V

    goto/16 :goto_d

    .line 1394
    :cond_e
    :goto_7
    monitor-exit v10

    return-void

    :cond_f
    :goto_8
    const-string v1, "android.intent.extra.changed_package_list"

    .line 1369
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p2

    if-eqz p2, :cond_12

    .line 1371
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_b

    :cond_10
    const-string v1, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    .line 1375
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1376
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_9
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1378
    :try_start_3
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel;->mAllAppsList:Lcom/miui/home/launcher/AllAppsList;

    invoke-virtual {v0, v2, p3}, Lcom/miui/home/launcher/AllAppsList;->removePackage(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 1379
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel;->mAllAppsList:Lcom/miui/home/launcher/AllAppsList;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p1

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/miui/home/launcher/AllAppsList;->addPackage(Landroid/content/Context;Ljava/lang/String;ZZLandroid/os/UserHandle;)V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_9

    :catch_1
    :try_start_4
    const-string p0, "Launcher.Model"

    const-string p1, "database didnot ready,ignore this change"

    .line 1381
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1382
    monitor-exit v10

    return-void

    :cond_11
    const-string p1, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    .line 1385
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_18

    .line 1386
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_18

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 1387
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel;->mAllAppsList:Lcom/miui/home/launcher/AllAppsList;

    invoke-virtual {v0, p2, p3}, Lcom/miui/home/launcher/AllAppsList;->removePackage(Ljava/lang/String;Landroid/os/UserHandle;)V

    goto :goto_a

    .line 1372
    :cond_12
    :goto_b
    monitor-exit v10

    return-void

    .line 1339
    :cond_13
    :goto_c
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1e

    .line 1340
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_14

    goto/16 :goto_e

    .line 1345
    :cond_14
    invoke-static {p2}, Lmiui/content/res/IconCustomizer;->clearCustomizedIcons(Ljava/lang/String;)V

    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    .line 1346
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 1347
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel;->mIconCache:Lcom/miui/home/launcher/IconCache;

    invoke-virtual {v0, p2, p3}, Lcom/miui/home/launcher/IconCache;->updateIconsForPkg(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 1348
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel;->mAllAppsList:Lcom/miui/home/launcher/AllAppsList;

    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/home/launcher/AllAppsList;->updatePackage(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 1349
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance p3, Lcom/miui/home/launcher/common/messages/PackageChangedMessage;

    invoke-direct {p3, p2}, Lcom/miui/home/launcher/common/messages/PackageChangedMessage;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_d

    :cond_15
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    .line 1350
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 1351
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel;->mIconCache:Lcom/miui/home/launcher/IconCache;

    invoke-virtual {v0, p2, p3}, Lcom/miui/home/launcher/IconCache;->removeIconsForPkg(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 1352
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel;->mIconCache:Lcom/miui/home/launcher/IconCache;

    invoke-virtual {v0, p2, v1, p3}, Lcom/miui/home/launcher/IconCache;->removeBigIcons(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 1353
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel;->mAllAppsList:Lcom/miui/home/launcher/AllAppsList;

    invoke-virtual {v0, p2, p3}, Lcom/miui/home/launcher/AllAppsList;->removePackage(Ljava/lang/String;Landroid/os/UserHandle;)V

    const/4 p3, 0x0

    .line 1354
    invoke-static {p1, p2, p3}, Lcom/mi/preinstall/AutoInstallParserHelp;->addOrRemovePAIPackage(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    .line 1355
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance p3, Lcom/miui/home/launcher/common/messages/PackageRemoveMessage;

    invoke-direct {p3, p2}, Lcom/miui/home/launcher/common/messages/PackageRemoveMessage;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_d

    :cond_16
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    .line 1356
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1357
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel;->mIconCache:Lcom/miui/home/launcher/IconCache;

    invoke-virtual {v0, p2, p3}, Lcom/miui/home/launcher/IconCache;->updateIconsForPkg(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 1358
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel;->mAllAppsList:Lcom/miui/home/launcher/AllAppsList;

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/miui/home/launcher/AllAppsList;->addPackage(Landroid/content/Context;Ljava/lang/String;ZZLandroid/os/UserHandle;)V

    .line 1359
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel;->mProgressingPackages:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;

    if-eqz v0, :cond_17

    .line 1360
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_17

    .line 1361
    iget-object p3, p0, Lcom/miui/home/launcher/LauncherModel;->mProgressingPackages:Ljava/util/Map;

    invoke-interface {p3, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1363
    :cond_17
    invoke-static {p1}, Lcom/miui/home/launcher/install/PackageInstallerCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/install/PackageInstallerCompat;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/miui/home/launcher/install/PackageInstallerCompat;->removeActiveSession(Ljava/lang/String;)V

    .line 1364
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p3

    new-instance v0, Lcom/miui/home/launcher/common/messages/PackageAddMessage;

    invoke-direct {v0, p2}, Lcom/miui/home/launcher/common/messages/PackageAddMessage;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 1365
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/LauncherModel;->handleSlideUpGestureSettings(Landroid/content/Context;Ljava/lang/String;)V

    .line 1416
    :cond_18
    :goto_d
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherModel;->mAllAppsList:Lcom/miui/home/launcher/AllAppsList;

    iget-object p1, p1, Lcom/miui/home/launcher/AllAppsList;->added:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_19

    .line 1417
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherModel;->mAllAppsList:Lcom/miui/home/launcher/AllAppsList;

    iget-object p1, p1, Lcom/miui/home/launcher/AllAppsList;->added:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1420
    :cond_19
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherModel;->mAllAppsList:Lcom/miui/home/launcher/AllAppsList;

    iget-object p1, p1, Lcom/miui/home/launcher/AllAppsList;->removed:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_1a

    .line 1421
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherModel;->mAllAppsList:Lcom/miui/home/launcher/AllAppsList;

    iget-object p1, p1, Lcom/miui/home/launcher/AllAppsList;->removed:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1423
    :cond_1a
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherModel;->mAllAppsList:Lcom/miui/home/launcher/AllAppsList;

    iget-object p1, p1, Lcom/miui/home/launcher/AllAppsList;->modified:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_1b

    .line 1424
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherModel;->mAllAppsList:Lcom/miui/home/launcher/AllAppsList;

    iget-object p1, p1, Lcom/miui/home/launcher/AllAppsList;->modified:Ljava/util/ArrayList;

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1426
    :cond_1b
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1c

    .line 1427
    invoke-direct {p0, v7}, Lcom/miui/home/launcher/LauncherModel;->onRemoveItems(Ljava/util/ArrayList;)V

    .line 1429
    :cond_1c
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1d

    .line 1430
    invoke-direct {p0, v6}, Lcom/miui/home/launcher/LauncherModel;->onLoadShortcuts(Ljava/util/ArrayList;)V

    :cond_1d
    const-string p1, "Launcher.Model"

    .line 1432
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onReceiveBackground, mAllAppsList="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/miui/home/launcher/LauncherModel;->mAllAppsList:Lcom/miui/home/launcher/AllAppsList;

    invoke-virtual {p3}, Lcom/miui/home/launcher/AllAppsList;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1433
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherModel;->mHandler:Lcom/miui/home/library/utils/DeferredHandler;

    new-instance p2, Lcom/miui/home/launcher/LauncherModel$$ExternalSyntheticLambda2;

    invoke-direct {p2, v9, v7, v6, v8}, Lcom/miui/home/launcher/LauncherModel$$ExternalSyntheticLambda2;-><init>(Lcom/miui/home/launcher/LauncherModel$Callbacks;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {p1, p2}, Lcom/miui/home/library/utils/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1434
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherModel;->mAllAppsList:Lcom/miui/home/launcher/AllAppsList;

    invoke-virtual {p0}, Lcom/miui/home/launcher/AllAppsList;->clearAllExceptData()V

    .line 1435
    monitor-exit v10

    return-void

    .line 1342
    :cond_1e
    :goto_e
    monitor-exit v10

    return-void

    :catchall_1
    move-exception p0

    .line 1435
    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0
.end method

.method public resetGlobalMiBrowserChangedFlag()V
    .locals 1

    const/4 v0, 0x0

    .line 3678
    iput-boolean v0, p0, Lcom/miui/home/launcher/LauncherModel;->mGlobalMiBrowserChangedFlag:Z

    return-void
.end method

.method public resizeAppIconDatabaseWhitUICallback(Lcom/miui/home/launcher/Launcher;Ljava/util/HashMap;Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/home/launcher/Launcher;",
            "Ljava/util/HashMap<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            "Lcom/miui/home/launcher/bigicon/BigIconPositionInfo;",
            ">;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 3615
    new-instance p0, Lcom/miui/home/launcher/LauncherModel$$ExternalSyntheticLambda5;

    invoke-direct {p0, p2, p1, p3}, Lcom/miui/home/launcher/LauncherModel$$ExternalSyntheticLambda5;-><init>(Ljava/util/HashMap;Lcom/miui/home/launcher/Launcher;Ljava/util/function/Consumer;)V

    .line 3638
    invoke-static {p0}, Lcom/miui/home/launcher/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected resizeFolderDatabaseWhitUICallback(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/FolderInfo;Lcom/miui/home/launcher/convertsize/ItemPositionInfo;Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/home/launcher/Launcher;",
            "Lcom/miui/home/launcher/FolderInfo;",
            "Lcom/miui/home/launcher/convertsize/ItemPositionInfo;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 3591
    new-instance p0, Lcom/miui/home/launcher/LauncherModel$$ExternalSyntheticLambda1;

    invoke-direct {p0, p2, p1, p3, p4}, Lcom/miui/home/launcher/LauncherModel$$ExternalSyntheticLambda1;-><init>(Lcom/miui/home/launcher/FolderInfo;Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/convertsize/ItemPositionInfo;Ljava/util/function/Consumer;)V

    .line 3609
    invoke-static {p0}, Lcom/miui/home/launcher/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method runOnWorkerThreadAndCheckForReady(Ljava/lang/Runnable;)V
    .locals 2

    .line 1274
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "Launcher.Model"

    const-string p1, "Launcher is not running,process later"

    .line 1276
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1279
    :cond_0
    new-instance v1, Lcom/miui/home/launcher/LauncherModel$9;

    invoke-direct {v1, p0, v0, p1}, Lcom/miui/home/launcher/LauncherModel$9;-><init>(Lcom/miui/home/launcher/LauncherModel;Lcom/miui/home/launcher/Launcher;Ljava/lang/Runnable;)V

    .line 1291
    invoke-static {v1}, Lcom/miui/home/launcher/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public scheduleWidgetUpdateTask(Ljava/lang/String;)V
    .locals 1

    .line 373
    new-instance v0, Lcom/miui/home/launcher/LauncherModel$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/launcher/LauncherModel$$ExternalSyntheticLambda4;-><init>(Lcom/miui/home/launcher/LauncherModel;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/LauncherModel;->waitForUserUnlock(Ljava/lang/Runnable;)V

    return-void
.end method

.method public startLoader(Landroid/content/Context;ZLcom/miui/home/launcher/allapps/LauncherMode;)V
    .locals 2

    .line 1469
    invoke-static {}, Lcom/miui/home/launcher/LauncherModel;->cancelDatabaseOperation()V

    .line 1470
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel;->mChangedAppsWhenLayoutPreview:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1472
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startLoader isLaunching="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher.Model"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1476
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    if-nez p2, :cond_1

    .line 1479
    invoke-direct {p0}, Lcom/miui/home/launcher/LauncherModel;->stopLoaderLocked()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, 0x1

    .line 1480
    :goto_1
    new-instance v0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;-><init>(Lcom/miui/home/launcher/LauncherModel;Landroid/content/Context;ZLcom/miui/home/launcher/allapps/LauncherMode;)V

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherModel;->mLoaderTask:Lcom/miui/home/launcher/LauncherModel$LoaderTask;

    .line 1481
    sget-object p1, Lcom/miui/home/launcher/LauncherModel;->sWorker:Landroid/os/Handler;

    iget-object p0, p0, Lcom/miui/home/launcher/LauncherModel;->mLoaderTask:Lcom/miui/home/launcher/LauncherModel$LoaderTask;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method public stopLoader()V
    .locals 2

    .line 1490
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel;->mLoaderTask:Lcom/miui/home/launcher/LauncherModel$LoaderTask;

    const/4 v1, 0x0

    .line 1491
    iput-object v1, p0, Lcom/miui/home/launcher/LauncherModel;->mLoaderTask:Lcom/miui/home/launcher/LauncherModel$LoaderTask;

    if-eqz v0, :cond_0

    .line 1493
    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->stopLocked()V

    :cond_0
    return-void
.end method
