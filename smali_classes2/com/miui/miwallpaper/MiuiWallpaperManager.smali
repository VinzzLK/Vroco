.class public Lcom/miui/miwallpaper/MiuiWallpaperManager;
.super Ljava/lang/Object;
.source "MiuiWallpaperManager.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "InlinedApi, NewApi, MissingPermission"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/miwallpaper/MiuiWallpaperManager$MiuiWallpaperManagerCallback;,
        Lcom/miui/miwallpaper/MiuiWallpaperManager$SyncMiuiWallpaperManagerCallback;
    }
.end annotation


# static fields
.field public static final DEFAULT_CLOCK_TYPE_INFO:[I

.field public static final DEFAULT_WALLPAPER_COMPONENT:Landroid/content/ComponentName;

.field public static final IS_FLIP_DEVICE:Z

.field public static final IS_FOLDABLE_DEVICE:Z

.field public static final IS_FOLD_DEVICE:Z

.field public static final MAML_WALLPAPER_COMPONENT:Landroid/content/ComponentName;

.field public static final MI_WALLPAPER_WHICH_ALL:I

.field public static final TEMP_WALLPAPER:Ljava/lang/String;

.field public static final TEMP_WALLPAPER_DIR:Ljava/lang/String;

.field private static final WALLPAPER_INIT_EXECUTOR:Ljava/util/concurrent/Executor;

.field private static volatile sInstance:Lcom/miui/miwallpaper/MiuiWallpaperManager;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field private mAlphaSurface:Landroid/view/Surface;

.field private mAlphaVisible:Z

.field private final mAsyncInitCallbacks:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/miui/miwallpaper/MiuiWallpaperManager$MiuiWallpaperManagerCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private volatile mDestroyed:Z

.field private final mInitSync:Z

.field private mKeyguardCallback:Lcom/miui/miwallpaper/IMiuiKeyguardWallpaperCallback;

.field private final mLock:Ljava/lang/Object;

.field private final mMHandler:Landroid/os/Handler;

.field private mNormalSurface:Landroid/view/Surface;

.field private final mPackageUpdateReceiver:Landroid/content/BroadcastReceiver;

.field private mProcessReceiver:Landroid/content/BroadcastReceiver;

.field private volatile mRebindServiceAllow:Z

.field private final mRebindTask:Ljava/lang/Runnable;

.field private final mReconnectCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mResetRCountTask:Ljava/lang/Runnable;

.field private final mSdf:Ljava/text/SimpleDateFormat;

.field private mServerVersion:F

.field private mServerVersionCode:I

.field private volatile mService:Lcom/miui/miwallpaper/IMiuiWallpaperManagerService;

.field private volatile mServiceConnected:Z

.field private final mServiceConnection:Landroid/content/ServiceConnection;

.field private final mServiceStartHistory:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mSyncInitCallbacks:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/miui/miwallpaper/MiuiWallpaperManager$MiuiWallpaperManagerCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserHandle:Landroid/os/UserHandle;

.field private final mWallpaperChangeCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/miui/miwallpaper/IMiuiWallpaperManagerCallback;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mWorkHandler:Landroid/os/Handler;

.field private mWorker:Landroid/os/HandlerThread;


# direct methods
.method public static synthetic $r8$lambda$g2M2ZlfpZgIc66jq6SnbWeMW2ww(Lcom/miui/miwallpaper/MiuiWallpaperManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/miwallpaper/MiuiWallpaperManager;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$zLYe3pLuy_lKOxWn3pcwt_f7vJI(Lcom/miui/miwallpaper/MiuiWallpaperManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/miwallpaper/MiuiWallpaperManager;->lambda$new$2()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmAlphaSurface(Lcom/miui/miwallpaper/MiuiWallpaperManager;)Landroid/view/Surface;
    .locals 0

    iget-object p0, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mAlphaSurface:Landroid/view/Surface;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAlphaVisible(Lcom/miui/miwallpaper/MiuiWallpaperManager;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mAlphaVisible:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmAsyncInitCallbacks(Lcom/miui/miwallpaper/MiuiWallpaperManager;)Ljava/util/HashSet;
    .locals 0

    iget-object p0, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mAsyncInitCallbacks:Ljava/util/HashSet;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMHandler(Lcom/miui/miwallpaper/MiuiWallpaperManager;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mMHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNormalSurface(Lcom/miui/miwallpaper/MiuiWallpaperManager;)Landroid/view/Surface;
    .locals 0

    iget-object p0, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mNormalSurface:Landroid/view/Surface;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmServerVersion(Lcom/miui/miwallpaper/MiuiWallpaperManager;)F
    .locals 0

    iget p0, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mServerVersion:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmServerVersionCode(Lcom/miui/miwallpaper/MiuiWallpaperManager;)I
    .locals 0

    iget p0, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mServerVersionCode:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmServiceConnection(Lcom/miui/miwallpaper/MiuiWallpaperManager;)Landroid/content/ServiceConnection;
    .locals 0

    iget-object p0, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mServiceConnection:Landroid/content/ServiceConnection;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSyncInitCallbacks(Lcom/miui/miwallpaper/MiuiWallpaperManager;)Ljava/util/HashSet;
    .locals 0

    iget-object p0, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mSyncInitCallbacks:Ljava/util/HashSet;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmServerVersion(Lcom/miui/miwallpaper/MiuiWallpaperManager;F)V
    .locals 0

    iput p1, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mServerVersion:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmServerVersionCode(Lcom/miui/miwallpaper/MiuiWallpaperManager;I)V
    .locals 0

    iput p1, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mServerVersionCode:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmService(Lcom/miui/miwallpaper/MiuiWallpaperManager;Lcom/miui/miwallpaper/IMiuiWallpaperManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mService:Lcom/miui/miwallpaper/IMiuiWallpaperManagerService;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmServiceConnected(Lcom/miui/miwallpaper/MiuiWallpaperManager;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mServiceConnected:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mbindService(Lcom/miui/miwallpaper/MiuiWallpaperManager;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/miwallpaper/MiuiWallpaperManager;->bindService(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mbindService(Lcom/miui/miwallpaper/MiuiWallpaperManager;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/miwallpaper/MiuiWallpaperManager;->bindService(ZLjava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetSdkVersionCodeInternal(Lcom/miui/miwallpaper/MiuiWallpaperManager;)I
    .locals 0

    invoke-direct {p0}, Lcom/miui/miwallpaper/MiuiWallpaperManager;->getSdkVersionCodeInternal()I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$monWallpaperProcessStart(Lcom/miui/miwallpaper/MiuiWallpaperManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/miwallpaper/MiuiWallpaperManager;->onWallpaperProcessStart()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mremoveResetCallback(Lcom/miui/miwallpaper/MiuiWallpaperManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/miwallpaper/MiuiWallpaperManager;->removeResetCallback()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetLockscreenVideoSurface(Lcom/miui/miwallpaper/MiuiWallpaperManager;Landroid/view/Surface;Landroid/view/Surface;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/miwallpaper/MiuiWallpaperManager;->setLockscreenVideoSurface(Landroid/view/Surface;Landroid/view/Surface;Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mtryRebindKeyguardCallback(Lcom/miui/miwallpaper/MiuiWallpaperManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/miwallpaper/MiuiWallpaperManager;->tryRebindKeyguardCallback()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mtryRegisterWallpaperChangeCallback(Lcom/miui/miwallpaper/MiuiWallpaperManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/miwallpaper/MiuiWallpaperManager;->tryRegisterWallpaperChangeCallback()V

    return-void
.end method

.method static bridge synthetic -$$Nest$munbindService(Lcom/miui/miwallpaper/MiuiWallpaperManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/miwallpaper/MiuiWallpaperManager;->unbindService()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetsInstance()Lcom/miui/miwallpaper/MiuiWallpaperManager;
    .locals 1

    sget-object v0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->sInstance:Lcom/miui/miwallpaper/MiuiWallpaperManager;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 92
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.miui.miwallpaper"

    const-string v2, "com.miui.miwallpaper.wallpaperservice.ImageWallpaper"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->DEFAULT_WALLPAPER_COMPONENT:Landroid/content/ComponentName;

    .line 94
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.miui.miwallpaper.MiWallpaper"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->MAML_WALLPAPER_COMPONENT:Landroid/content/ComponentName;

    .line 98
    invoke-static {}, Lcom/miui/miwallpaper/MiuiWallpaperManager;->isFoldDevices()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/miui/miwallpaper/MiuiWallpaperManager;->isFlipDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->IS_FOLDABLE_DEVICE:Z

    .line 99
    invoke-static {}, Lcom/miui/miwallpaper/MiuiWallpaperManager;->isFoldDevices()Z

    move-result v1

    sput-boolean v1, Lcom/miui/miwallpaper/MiuiWallpaperManager;->IS_FOLD_DEVICE:Z

    .line 100
    invoke-static {}, Lcom/miui/miwallpaper/MiuiWallpaperManager;->isFlipDevice()Z

    move-result v1

    sput-boolean v1, Lcom/miui/miwallpaper/MiuiWallpaperManager;->IS_FLIP_DEVICE:Z

    if-eqz v0, :cond_2

    const/16 v0, 0xf

    goto :goto_2

    :cond_2
    const/4 v0, 0x3

    .line 116
    :goto_2
    sput v0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->MI_WALLPAPER_WHICH_ALL:I

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/system/theme_magic/users/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    invoke-static {}, Lmiui/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/wallpaper/data/temp_wallpaper"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->TEMP_WALLPAPER:Ljava/lang/String;

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    invoke-static {}, Lmiui/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/wallpaper/data/temp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->TEMP_WALLPAPER_DIR:Ljava/lang/String;

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 189
    fill-array-data v0, :array_0

    sput-object v0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->DEFAULT_CLOCK_TYPE_INFO:[I

    .line 456
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->WALLPAPER_INIT_EXECUTOR:Ljava/util/concurrent/Executor;

    return-void

    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method private constructor <init>(Landroid/content/Context;ZLandroid/os/UserHandle;)V
    .locals 3

    .line 415
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 271
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mLock:Ljava/lang/Object;

    .line 272
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mServiceStartHistory:Ljava/util/Deque;

    .line 273
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 274
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mSdf:Ljava/text/SimpleDateFormat;

    .line 282
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mReconnectCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 288
    iput v1, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mServerVersionCode:I

    const/4 v0, 0x0

    .line 293
    iput v0, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mServerVersion:F

    .line 298
    iput-boolean v1, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mServiceConnected:Z

    const/4 v0, 0x1

    .line 303
    iput-boolean v0, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mRebindServiceAllow:Z

    .line 304
    iput-boolean v1, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mDestroyed:Z

    const/4 v0, 0x0

    .line 306
    iput-object v0, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mKeyguardCallback:Lcom/miui/miwallpaper/IMiuiKeyguardWallpaperCallback;

    .line 311
    iput-object v0, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mNormalSurface:Landroid/view/Surface;

    .line 312
    iput-object v0, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mAlphaSurface:Landroid/view/Surface;

    .line 327
    new-instance v1, Lcom/miui/miwallpaper/MiuiWallpaperManager$1;

    invoke-direct {v1, p0}, Lcom/miui/miwallpaper/MiuiWallpaperManager$1;-><init>(Lcom/miui/miwallpaper/MiuiWallpaperManager;)V

    iput-object v1, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 388
    new-instance v1, Lcom/miui/miwallpaper/MiuiWallpaperManager$2;

    invoke-direct {v1, p0}, Lcom/miui/miwallpaper/MiuiWallpaperManager$2;-><init>(Lcom/miui/miwallpaper/MiuiWallpaperManager;)V

    iput-object v1, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mPackageUpdateReceiver:Landroid/content/BroadcastReceiver;

    .line 407
    iput-object v0, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mProcessReceiver:Landroid/content/BroadcastReceiver;

    .line 409
    new-instance v0, Lcom/miui/miwallpaper/MiuiWallpaperManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/miui/miwallpaper/MiuiWallpaperManager$$ExternalSyntheticLambda0;-><init>(Lcom/miui/miwallpaper/MiuiWallpaperManager;)V

    iput-object v0, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mRebindTask:Ljava/lang/Runnable;

    .line 457
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mAsyncInitCallbacks:Ljava/util/HashSet;

    .line 458
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mSyncInitCallbacks:Ljava/util/HashSet;

    .line 1360
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mWallpaperChangeCallbacks:Ljava/util/HashMap;

    .line 2753
    new-instance v0, Lcom/miui/miwallpaper/MiuiWallpaperManager$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/miui/miwallpaper/MiuiWallpaperManager$$ExternalSyntheticLambda1;-><init>(Lcom/miui/miwallpaper/MiuiWallpaperManager;)V

    iput-object v0, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mResetRCountTask:Ljava/lang/Runnable;

    .line 416
    iput-object p1, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mContext:Landroid/content/Context;

    .line 417
    iput-boolean p2, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mInitSync:Z

    .line 418
    iput-object p3, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mUserHandle:Landroid/os/UserHandle;

    .line 419
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mMHandler:Landroid/os/Handler;

    return-void
.end method

.method private addInitCallback(Lcom/miui/miwallpaper/MiuiWallpaperManager$MiuiWallpaperManagerCallback;)V
    .locals 1

    .line 2795
    iget-boolean v0, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mInitSync:Z

    if-eqz v0, :cond_0

    .line 2796
    iget-object p0, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mSyncInitCallbacks:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2798
    :cond_0
    iget-object p0, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mAsyncInitCallbacks:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method private bindService(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1869
    invoke-direct {p0, v0, p1}, Lcom/miui/miwallpaper/MiuiWallpaperManager;->bindService(ZLjava/lang/String;)V

    return-void
.end method

.method private bindService(ZLjava/lang/String;)V
    .locals 8

    .line 1873
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bindService: reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " force="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " mServiceConnected="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mServiceConnected:Z

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "MiuiWallpaperManager"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    .line 1875
    iget-boolean p1, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mServiceConnected:Z

    if-eqz p1, :cond_0

    const-string p0, "bindService: service is already connected"

    .line 1876
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1881
    :cond_0
    :try_start_0
    new-instance v3, Landroid/content/Intent;

    const-string p1, "android.service.wallpaper.WallPaperControllerService"

    invoke-direct {v3, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p1, "com.miui.miwallpaper"

    .line 1882
    invoke-virtual {v3, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1883
    iget-object p1, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mUserHandle:Landroid/os/UserHandle;

    if-nez p1, :cond_1

    .line 1884
    iget-object p1, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mContext:Landroid/content/Context;

    const/4 p2, 0x1

    sget-object v1, Lcom/miui/miwallpaper/MiuiWallpaperManager;->WALLPAPER_INIT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v3, p2, v1, p0}, Landroid/content/Context;->bindService(Landroid/content/Intent;ILjava/util/concurrent/Executor;Landroid/content/ServiceConnection;)Z

    goto :goto_0

    .line 1886
    :cond_1
    iget-object v2, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mServiceConnection:Landroid/content/ServiceConnection;

    const-wide/16 p1, 0x1

    .line 1887
    invoke-static {p1, p2}, Landroid/content/Context$BindServiceFlags;->of(J)Landroid/content/Context$BindServiceFlags;

    move-result-object v5

    invoke-direct {p0}, Lcom/miui/miwallpaper/MiuiWallpaperManager;->getWHandler()Landroid/os/Handler;

    move-result-object v6

    iget-object v7, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mUserHandle:Landroid/os/UserHandle;

    move-object v1, p0

    .line 1886
    invoke-direct/range {v1 .. v7}, Lcom/miui/miwallpaper/MiuiWallpaperManager;->bindServiceAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;Landroid/content/Context$BindServiceFlags;Landroid/os/Handler;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "bindService: occur error"

    .line 1890
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private bindServiceAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;Landroid/content/Context$BindServiceFlags;Landroid/os/Handler;Landroid/os/UserHandle;)V
    .locals 9

    :try_start_0
    const-string p0, "android.content.Context"

    .line 1899
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const-string v0, "bindServiceAsUser"

    const/4 v1, 0x5

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/content/Intent;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Landroid/content/ServiceConnection;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-class v3, Landroid/content/Context$BindServiceFlags;

    const/4 v6, 0x2

    aput-object v3, v2, v6

    const-class v3, Landroid/os/Handler;

    const/4 v7, 0x3

    aput-object v3, v2, v7

    const-class v3, Landroid/os/UserHandle;

    const/4 v8, 0x4

    aput-object v3, v2, v8

    .line 1900
    invoke-virtual {p0, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 1902
    invoke-virtual {p0, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v0, v1, [Ljava/lang/Object;

    aput-object p2, v0, v4

    aput-object p3, v0, v5

    aput-object p4, v0, v6

    aput-object p5, v0, v7

    aput-object p6, v0, v8

    .line 1903
    invoke-virtual {p0, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "MiuiWallpaperManager"

    const-string p2, "bindServiceAsUser: occur error"

    .line 1906
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private cleanListener()V
    .locals 3

    .line 562
    iget-object v0, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 563
    :try_start_0
    iget-object v1, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mWallpaperChangeCallbacks:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 564
    monitor-exit v0

    return-void

    :cond_0
    const-string v1, "MiuiWallpaperManager"

    const-string v2, "client may not call unregister method, cleanListener"

    .line 567
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    invoke-direct {p0}, Lcom/miui/miwallpaper/MiuiWallpaperManager;->isServiceReady()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 569
    iget-object v1, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mWallpaperChangeCallbacks:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/miwallpaper/IMiuiWallpaperManagerCallback;

    .line 570
    invoke-direct {p0, v2}, Lcom/miui/miwallpaper/MiuiWallpaperManager;->unregisterListenerFromService(Lcom/miui/miwallpaper/IMiuiWallpaperManagerCallback;)V

    goto :goto_0

    .line 573
    :cond_1
    iget-object p0, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mWallpaperChangeCallbacks:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    .line 574
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private getSdkVersionCodeInternal()I
    .locals 2

    .line 2315
    invoke-direct {p0}, Lcom/miui/miwallpaper/MiuiWallpaperManager;->isServiceReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2317
    :try_start_0
    iget-object p0, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mService:Lcom/miui/miwallpaper/IMiuiWallpaperManagerService;

    invoke-interface {p0}, Lcom/miui/miwallpaper/IMiuiWallpaperManagerService;->getMiuiWallpaperSdkVersionCode()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    const-string v0, "MiuiWallpaperManager"

    const-string v1, "getMiuiWallpaperSdkVersionCode: fail"

    .line 2319
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private getWHandler()Landroid/os/Handler;
    .locals 3

    .line 2782
    iget-object v0, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mWorkHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 2783
    iget-object v0, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2784
    :try_start_0
    iget-object v1, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mWorkHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 2785
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "MiuiWallpaperManager"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mWorker:Landroid/os/HandlerThread;

    .line 2786
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 2787
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mWorker:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mWorkHandler:Landroid/os/Handler;

    .line 2789
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 2791
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mWorkHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static init(Landroid/content/Context;Lcom/miui/miwallpaper/MiuiWallpaperManager$MiuiWallpaperManagerCallback;)V
    .locals 4

    .line 427
    sget-object v0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->sInstance:Lcom/miui/miwallpaper/MiuiWallpaperManager;

    if-nez v0, :cond_2

    .line 428
    const-class v0, Lcom/miui/miwallpaper/MiuiWallpaperManager;

    monitor-enter v0

    .line 429
    :try_start_0
    sget-object v1, Lcom/miui/miwallpaper/MiuiWallpaperManager;->sInstance:Lcom/miui/miwallpaper/MiuiWallpaperManager;

    if-nez v1, :cond_0

    const-string v1, "MiuiWallpaperManager"

    const-string v2, "init..."

    .line 430
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    new-instance v1, Lcom/miui/miwallpaper/MiuiWallpaperManager;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lcom/miui/miwallpaper/MiuiWallpaperManager;-><init>(Landroid/content/Context;ZLandroid/os/UserHandle;)V

    sput-object v1, Lcom/miui/miwallpaper/MiuiWallpaperManager;->sInstance:Lcom/miui/miwallpaper/MiuiWallpaperManager;

    .line 432
    sget-object p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->sInstance:Lcom/miui/miwallpaper/MiuiWallpaperManager;

    invoke-direct {p0}, Lcom/miui/miwallpaper/MiuiWallpaperManager;->registerBroadcast()V

    .line 433
    sget-object p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->sInstance:Lcom/miui/miwallpaper/MiuiWallpaperManager;

    invoke-direct {p0, p1}, Lcom/miui/miwallpaper/MiuiWallpaperManager;->addInitCallback(Lcom/miui/miwallpaper/MiuiWallpaperManager$MiuiWallpaperManagerCallback;)V

    .line 434
    sget-object p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->sInstance:Lcom/miui/miwallpaper/MiuiWallpaperManager;

    const-string p1, "init"

    invoke-direct {p0, p1}, Lcom/miui/miwallpaper/MiuiWallpaperManager;->bindService(Ljava/lang/String;)V

    goto :goto_0

    .line 435
    :cond_0
    sget-object p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->sInstance:Lcom/miui/miwallpaper/MiuiWallpaperManager;

    iget-object p0, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mService:Lcom/miui/miwallpaper/IMiuiWallpaperManagerService;

    if-eqz p0, :cond_1

    .line 436
    sget-object p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->sInstance:Lcom/miui/miwallpaper/MiuiWallpaperManager;

    invoke-interface {p1, p0}, Lcom/miui/miwallpaper/MiuiWallpaperManager$MiuiWallpaperManagerCallback;->onMiuiWallpaperInitialized(Lcom/miui/miwallpaper/MiuiWallpaperManager;)V

    .line 438
    :cond_1
    :goto_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 439
    :cond_2
    sget-object p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->sInstance:Lcom/miui/miwallpaper/MiuiWallpaperManager;

    iget-object p0, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mService:Lcom/miui/miwallpaper/IMiuiWallpaperManagerService;

    if-eqz p0, :cond_3

    .line 440
    sget-object p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->sInstance:Lcom/miui/miwallpaper/MiuiWallpaperManager;

    invoke-interface {p1, p0}, Lcom/miui/miwallpaper/MiuiWallpaperManager$MiuiWallpaperManagerCallback;->onMiuiWallpaperInitialized(Lcom/miui/miwallpaper/MiuiWallpaperManager;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private static isFlipDevice()Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "miui.util.MiuiMultiDisplayTypeInfo"

    .line 1945
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "isFlipDevice"

    new-array v3, v0, [Ljava/lang/Class;

    .line 1946
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    .line 1947
    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1948
    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    .line 1949
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "MiuiWallpaperManager"

    const-string v3, "isFlipDevice fail"

    .line 1952
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return v0
.end method

.method private static isFoldDevices()Z
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateApi"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.os.SystemProperties"

    .line 1932
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getInt"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    .line 1933
    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "persist.sys.muiltdisplay_type"

    aput-object v5, v4, v0

    .line 1934
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, v3, :cond_0

    move v0, v6

    :cond_0
    return v0

    :catchall_0
    move-exception v1

    const-string v2, "MiuiWallpaperManager"

    const-string v3, "isFoldDevices fail : "

    .line 1936
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method private isServiceReady()Z
    .locals 4

    .line 1911
    iget-object v0, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mService:Lcom/miui/miwallpaper/IMiuiWallpaperManagerService;

    const-string v1, "MiuiWallpaperManager"

    if-nez v0, :cond_0

    const-string p0, "mService is null."

    .line 1912
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 1916
    :cond_0
    iget-boolean v0, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mServiceConnected:Z

    if-nez v0, :cond_2

    .line 1917
    iget-object v0, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mReconnectCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 1918
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mService is not ready. mRebindServiceAllow="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mRebindServiceAllow:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mDestroyed="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mDestroyed:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mReconnectCount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1920
    iget-boolean v2, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mRebindServiceAllow:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mDestroyed:Z

    if-nez v2, :cond_1

    const/4 v2, 0x5

    if-ge v0, v2, :cond_1

    .line 1921
    invoke-direct {p0}, Lcom/miui/miwallpaper/MiuiWallpaperManager;->reconnectServiceSync()V

    goto :goto_0

    :cond_1
    const-string v0, "isServiceReady: some went wrong, stop reconnect"

    .line 1923
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1926
    :cond_2
    :goto_0
    iget-boolean p0, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mServiceConnected:Z

    return p0
.end method

.method public static isSingleWhich(I)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_1

    const/4 v2, 0x2

    if-ne p0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v1

    .line 1435
    :goto_1
    sget-boolean v3, Lcom/miui/miwallpaper/MiuiWallpaperManager;->IS_FOLDABLE_DEVICE:Z

    if-eqz v3, :cond_4

    if-nez v2, :cond_2

    const/4 v2, 0x4

    if-eq p0, v2, :cond_2

    const/16 v2, 0x8

    if-ne p0, v2, :cond_3

    :cond_2
    move v0, v1

    :cond_3
    move v2, v0

    :cond_4
    if-nez v2, :cond_5

    .line 1440
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "is not single which: which = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MiuiWallpaperManager"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return v2
.end method

.method public static isValidWhich(I)Z
    .locals 3

    if-lez p0, :cond_0

    .line 1462
    sget v0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->MI_WALLPAPER_WHICH_ALL:I

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 1465
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isValidWhich: which = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "MiuiWallpaperManager"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v0
.end method

.method private synthetic lambda$new$0()V
    .locals 1

    const/4 v0, 0x1

    .line 410
    iput-boolean v0, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mRebindServiceAllow:Z

    .line 411
    iget-object v0, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mServiceStartHistory:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->clear()V

    const-string v0, "rebind"

    .line 412
    invoke-direct {p0, v0}, Lcom/miui/miwallpaper/MiuiWallpaperManager;->bindService(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$new$2()V
    .locals 1

    .line 2754
    iget-object p0, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mReconnectCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    const-string p0, "MiuiWallpaperManager"

    const-string v0, "mResetRCountTask: reset reconnect count 0"

    .line 2755
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private onWallpaperProcessStart()V
    .locals 9

    .line 1828
    iget-boolean v0, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mRebindServiceAllow:Z

    const/4 v1, 0x0

    const-string v2, "MiuiWallpaperManager"

    if-eqz v0, :cond_2

    .line 1829
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 1830
    iget-object v0, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mServiceStartHistory:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    const/4 v5, 0x5

    if-ge v0, v5, :cond_0

    .line 1831
    iget-object v0, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mServiceStartHistory:Ljava/util/Deque;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    const-string v0, "onWallpaperProcessStart"

    .line 1832
    invoke-direct {p0, v0}, Lcom/miui/miwallpaper/MiuiWallpaperManager;->bindService(Ljava/lang/String;)V

    .line 1833
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onWallpaperProcessStart: rebind for less than max count, count="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mServiceStartHistory:Ljava/util/Deque;

    .line 1834
    invoke-interface {v3}, Ljava/util/Deque;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1833
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1836
    :cond_0
    iget-object v0, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mServiceStartHistory:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 1837
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long v5, v3, v5

    const-wide/16 v7, 0x2710

    cmp-long v0, v5, v7

    if-lez v0, :cond_1

    .line 1838
    iget-object v0, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mServiceStartHistory:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->poll()Ljava/lang/Object;

    .line 1839
    iget-object v0, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mServiceStartHistory:Ljava/util/Deque;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    const-string v0, "onWallpaperProcessStart#1"

    .line 1840
    invoke-direct {p0, v0}, Lcom/miui/miwallpaper/MiuiWallpaperManager;->bindService(Ljava/lang/String;)V

    const-string v0, "onWallpaperProcessStart: less than time out, try rebind"

    .line 1841
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v0, "Wallpaper service may occur error, try it later delay=30000ms"

    .line 1843
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1845
    iput-boolean v1, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mRebindServiceAllow:Z

    .line 1846
    invoke-direct {p0}, Lcom/miui/miwallpaper/MiuiWallpaperManager;->tryToRebind()V

    goto :goto_0

    :cond_2
    const-string v0, "Wallpaper service rebind operation is not allow"

    .line 1850
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1853
    :goto_0
    iget-object v0, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mServiceStartHistory:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 1855
    iget-object v3, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mServiceStartHistory:Ljava/util/Deque;

    invoke-interface {v3}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 1856
    iget-object v6, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mSdf:Ljava/text/SimpleDateFormat;

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1859
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onWallpaperProcessStart: history="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private reconnectServiceSync()V
    .locals 3

    .line 2766
    iget-boolean v0, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mServiceConnected:Z

    if-eqz v0, :cond_0

    const-string p0, "MiuiWallpaperManager"

    const-string v0, "reconnectServiceSync: already connected, ignore"

    .line 2767
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2770
    :cond_0
    iget-object v0, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mReconnectCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 2771
    new-instance v0, Lcom/miui/miwallpaper/MiuiWallpaperManager$SyncMiuiWallpaperManagerCallback;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/miwallpaper/MiuiWallpaperManager$SyncMiuiWallpaperManagerCallback;-><init>(Lcom/miui/miwallpaper/MiuiWallpaperManager$MiuiWallpaperManagerCallback;)V

    .line 2772
    iget-object v1, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mSyncInitCallbacks:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    const-string v2, "reconnectServiceSync"

    .line 2773
    invoke-direct {p0, v1, v2}, Lcom/miui/miwallpaper/MiuiWallpaperManager;->bindService(ZLjava/lang/String;)V

    .line 2774
    invoke-virtual {v0}, Lcom/miui/miwallpaper/MiuiWallpaperManager$SyncMiuiWallpaperManagerCallback;->waitBindingSuccess()V

    .line 2775
    invoke-direct {p0}, Lcom/miui/miwallpaper/MiuiWallpaperManager;->removeResetCallback()V

    .line 2778
    iget-object v0, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mMHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mResetRCountTask:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private registerBroadcast()V
    .locals 7

    .line 1795
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    .line 1796
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    .line 1797
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_DATA_CLEARED"

    .line 1798
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_RESTARTED"

    .line 1799
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "package"

    .line 1800
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1801
    iget-object v1, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mPackageUpdateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1804
    iget-object v0, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.miui.miwallpaper"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1805
    new-instance v0, Lcom/miui/miwallpaper/MiuiWallpaperManager$3;

    invoke-direct {v0, p0}, Lcom/miui/miwallpaper/MiuiWallpaperManager$3;-><init>(Lcom/miui/miwallpaper/MiuiWallpaperManager;)V

    iput-object v0, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mProcessReceiver:Landroid/content/BroadcastReceiver;

    .line 1815
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "miui.action.WALLPAPER_PROCESS_START"

    .line 1816
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1818
    iget-object v1, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mProcessReceiver:Landroid/content/BroadcastReceiver;

    const/4 v5, 0x0

    const/4 v6, 0x2

    const-string v4, "com.miui.miwallpaper.permission.BROADCAST"

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method private removeResetCallback()V
    .locals 2

    .line 2759
    iget-object v0, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mMHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mResetRCountTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2760
    iget-object v0, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mMHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mResetRCountTask:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private setLockscreenVideoSurface(Landroid/view/Surface;Landroid/view/Surface;Z)V
    .locals 2

    const-string v0, "MiuiWallpaperManager"

    if-nez p3, :cond_0

    .line 2341
    iget-object p3, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mNormalSurface:Landroid/view/Surface;

    if-ne p1, p3, :cond_0

    iget-object p3, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mAlphaSurface:Landroid/view/Surface;

    if-ne p2, p3, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    return-void

    .line 2345
    :cond_0
    iput-object p2, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mAlphaSurface:Landroid/view/Surface;

    .line 2346
    iput-object p1, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mNormalSurface:Landroid/view/Surface;

    .line 2347
    invoke-direct {p0}, Lcom/miui/miwallpaper/MiuiWallpaperManager;->isServiceReady()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 2349
    :try_start_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setLockscreenVideoSurface::mAlphaSurface = "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mAlphaSurface:Landroid/view/Surface;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mNormalSurface = "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mNormalSurface:Landroid/view/Surface;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2351
    iget-object p0, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mService:Lcom/miui/miwallpaper/IMiuiWallpaperManagerService;

    invoke-interface {p0, p1, p2}, Lcom/miui/miwallpaper/IMiuiWallpaperManagerService;->setLockscreenVideoSurface(Landroid/view/Surface;Landroid/view/Surface;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string p1, "setLockscreenVideoSurface: fail"

    .line 2353
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public static staticDestroy()V
    .locals 1

    .line 597
    sget-object v0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->sInstance:Lcom/miui/miwallpaper/MiuiWallpaperManager;

    if-eqz v0, :cond_0

    .line 598
    sget-object v0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->sInstance:Lcom/miui/miwallpaper/MiuiWallpaperManager;

    invoke-virtual {v0}, Lcom/miui/miwallpaper/MiuiWallpaperManager;->destroy()V

    :cond_0
    return-void
.end method

.method private tryRebindKeyguardCallback()V
    .locals 2

    .line 1381
    iget-object v0, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mKeyguardCallback:Lcom/miui/miwallpaper/IMiuiKeyguardWallpaperCallback;

    if-eqz v0, :cond_0

    .line 1382
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tryRebindKeyguardCallback: mKeyguardCallback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mKeyguardCallback:Lcom/miui/miwallpaper/IMiuiKeyguardWallpaperCallback;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiuiWallpaperManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1383
    iget-object v0, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mKeyguardCallback:Lcom/miui/miwallpaper/IMiuiKeyguardWallpaperCallback;

    invoke-virtual {p0, v0}, Lcom/miui/miwallpaper/MiuiWallpaperManager;->bindSystemUIProxy(Lcom/miui/miwallpaper/IMiuiKeyguardWallpaperCallback;)V

    :cond_0
    return-void
.end method

.method private tryRegisterWallpaperChangeCallback()V
    .locals 4

    .line 1364
    iget-object v0, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1365
    :try_start_0
    iget-object v1, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mWallpaperChangeCallbacks:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1366
    monitor-exit v0

    return-void

    .line 1370
    :cond_0
    iget-object v1, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mWallpaperChangeCallbacks:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1371
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/miwallpaper/IMiuiWallpaperManagerCallback;

    .line 1372
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_1

    .line 1374
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v3, v2}, Lcom/miui/miwallpaper/MiuiWallpaperManager;->registerWallpaperChangeListener(Lcom/miui/miwallpaper/IMiuiWallpaperManagerCallback;I)V

    goto :goto_0

    .line 1377
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private tryToRebind()V
    .locals 3

    .line 1863
    iget-object v0, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mMHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mRebindTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1864
    iget-object v0, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mMHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mRebindTask:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7530

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private unbindService()V
    .locals 3

    const-string v0, "MiuiWallpaperManager"

    const-string v1, "unbindService..."

    .line 603
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    :try_start_0
    iget-object v1, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 608
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unbindService occur exception... e="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private unregisterListenerFromService(Lcom/miui/miwallpaper/IMiuiWallpaperManagerCallback;)V
    .locals 1

    .line 1420
    invoke-direct {p0}, Lcom/miui/miwallpaper/MiuiWallpaperManager;->isServiceReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1422
    :try_start_0
    iget-object p0, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mService:Lcom/miui/miwallpaper/IMiuiWallpaperManagerService;

    invoke-interface {p0, p1}, Lcom/miui/miwallpaper/IMiuiWallpaperManagerService;->unRegisterWallpaperChangeListener(Lcom/miui/miwallpaper/IMiuiWallpaperManagerCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string p1, "MiuiWallpaperManager"

    const-string v0, "unRegisterWallpaperChangeListener fail : "

    .line 1424
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private unregisterReceiver()V
    .locals 2

    .line 555
    iget-object v0, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mPackageUpdateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 556
    iget-object v0, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mProcessReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 557
    iget-object p0, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public bindSystemUIProxy(Lcom/miui/miwallpaper/IMiuiKeyguardWallpaperCallback;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 2007
    iput-object p1, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mKeyguardCallback:Lcom/miui/miwallpaper/IMiuiKeyguardWallpaperCallback;

    .line 2010
    :cond_0
    invoke-direct {p0}, Lcom/miui/miwallpaper/MiuiWallpaperManager;->isServiceReady()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2012
    :try_start_0
    iget-object p0, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mService:Lcom/miui/miwallpaper/IMiuiWallpaperManagerService;

    invoke-interface {p0, p1}, Lcom/miui/miwallpaper/IMiuiWallpaperManagerService;->bindSystemUIProxy(Lcom/miui/miwallpaper/IMiuiKeyguardWallpaperCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string p1, "MiuiWallpaperManager"

    const-string v0, "bindSystemUIProxy fail"

    .line 2014
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public couldSetEffectToDesktop()Z
    .locals 2

    .line 2746
    :try_start_0
    iget-object p0, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mService:Lcom/miui/miwallpaper/IMiuiWallpaperManagerService;

    invoke-interface {p0}, Lcom/miui/miwallpaper/IMiuiWallpaperManagerService;->couldSetEffectToDesktop()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    const-string v0, "MiuiWallpaperManager"

    const-string v1, "CouldSetEffectToDesktop fail : "

    .line 2748
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public destroy()V
    .locals 3

    const-string v0, "MiuiWallpaperManager"

    const-string v1, "destroy, set sInstance null"

    .line 578
    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x1

    .line 579
    iput-boolean v0, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mDestroyed:Z

    .line 580
    invoke-direct {p0}, Lcom/miui/miwallpaper/MiuiWallpaperManager;->cleanListener()V

    .line 581
    invoke-direct {p0}, Lcom/miui/miwallpaper/MiuiWallpaperManager;->unbindService()V

    const/4 v0, 0x0

    .line 582
    iput-boolean v0, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mServiceConnected:Z

    .line 583
    invoke-direct {p0}, Lcom/miui/miwallpaper/MiuiWallpaperManager;->unregisterReceiver()V

    .line 585
    iget-object v0, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 586
    :try_start_0
    iget-object p0, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mWorker:Landroid/os/HandlerThread;

    if-eqz p0, :cond_0

    .line 587
    invoke-virtual {p0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 589
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 591
    const-class p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;

    monitor-enter p0

    const/4 v0, 0x0

    .line 592
    :try_start_1
    sput-object v0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->sInstance:Lcom/miui/miwallpaper/MiuiWallpaperManager;

    .line 593
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception p0

    .line 589
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public getMiuiWallpaperColors(I)Landroid/app/WallpaperColors;
    .locals 1

    .line 997
    invoke-direct {p0}, Lcom/miui/miwallpaper/MiuiWallpaperManager;->isServiceReady()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/miui/miwallpaper/MiuiWallpaperManager;->isSingleWhich(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 999
    :try_start_0
    iget-object p0, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mService:Lcom/miui/miwallpaper/IMiuiWallpaperManagerService;

    invoke-interface {p0, p1}, Lcom/miui/miwallpaper/IMiuiWallpaperManagerService;->getMiuiWallpaperColors(I)Landroid/app/WallpaperColors;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    const-string p1, "MiuiWallpaperManager"

    const-string v0, "getMiuiWallpaperColors fail : "

    .line 1001
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getMiuiWallpaperPreview(I)Landroid/graphics/Bitmap;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 1210
    invoke-direct {p0}, Lcom/miui/miwallpaper/MiuiWallpaperManager;->isServiceReady()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-static {p1}, Lcom/miui/miwallpaper/MiuiWallpaperManager;->isSingleWhich(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1211
    :try_start_0
    iget-object v0, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mService:Lcom/miui/miwallpaper/IMiuiWallpaperManagerService;

    invoke-interface {v0, p1}, Lcom/miui/miwallpaper/IMiuiWallpaperManagerService;->getMiuiWallpaperPreview(I)Landroid/os/ParcelFileDescriptor;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez p1, :cond_0

    .line 1213
    :try_start_1
    iget-object p0, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mContext:Landroid/content/Context;

    .line 1214
    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/WallpaperManager;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz p0, :cond_1

    .line 1216
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0

    .line 1219
    :cond_0
    invoke-static {p1}, Lcom/miui/miwallpaper/MiuiWallpaperFileUtils;->readFromFile(Landroid/os/ParcelFileDescriptor;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, p0

    :cond_1
    :goto_0
    if-eqz p1, :cond_3

    .line 1221
    :try_start_2
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_0
    move-exception p0

    if-eqz p1, :cond_2

    .line 1211
    :try_start_3
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p0

    const-string p1, "MiuiWallpaperManager"

    const-string v0, "getMiuiWallpaperPath fail : "

    .line 1222
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_2
    return-object v1
.end method

.method public getMiuiWallpaperType(I)Ljava/lang/String;
    .locals 1

    .line 1050
    invoke-direct {p0}, Lcom/miui/miwallpaper/MiuiWallpaperManager;->isServiceReady()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/miui/miwallpaper/MiuiWallpaperManager;->isSingleWhich(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1052
    :try_start_0
    iget-object p0, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mService:Lcom/miui/miwallpaper/IMiuiWallpaperManagerService;

    invoke-interface {p0, p1}, Lcom/miui/miwallpaper/IMiuiWallpaperManagerService;->getMiuiWallpaperType(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    const-string p1, "MiuiWallpaperManager"

    const-string v0, "getMiuiWallpaperType fail : "

    .line 1054
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSdkVersionInternal()F
    .locals 2

    .line 620
    invoke-direct {p0}, Lcom/miui/miwallpaper/MiuiWallpaperManager;->isServiceReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 622
    :try_start_0
    iget-object p0, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mService:Lcom/miui/miwallpaper/IMiuiWallpaperManagerService;

    invoke-interface {p0}, Lcom/miui/miwallpaper/IMiuiWallpaperManagerService;->getMiuiWallpaperSdkVersion()F

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    const-string v0, "MiuiWallpaperManager"

    const-string v1, "getMiuiWallpaperSdkVersion fail : "

    .line 624
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isMiuiWallpaperComponentUsing(I)Z
    .locals 1

    .line 2267
    invoke-direct {p0}, Lcom/miui/miwallpaper/MiuiWallpaperManager;->isServiceReady()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/miui/miwallpaper/MiuiWallpaperManager;->isSingleWhich(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2269
    :try_start_0
    iget-object p0, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mService:Lcom/miui/miwallpaper/IMiuiWallpaperManagerService;

    invoke-interface {p0, p1}, Lcom/miui/miwallpaper/IMiuiWallpaperManagerService;->isMiuiWallpaperComponentUsing(I)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    const-string p1, "MiuiWallpaperManager"

    const-string v0, "isMiuiWallpaperComponentUsing: fail"

    .line 2271
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public registerWallpaperChangeListener(Lcom/miui/miwallpaper/IMiuiWallpaperManagerCallback;I)V
    .locals 3

    .line 1394
    invoke-direct {p0}, Lcom/miui/miwallpaper/MiuiWallpaperManager;->isServiceReady()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/miui/miwallpaper/MiuiWallpaperManager;->isValidWhich(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1396
    :try_start_0
    iget-object v0, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1397
    :try_start_1
    iget-object v1, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mWallpaperChangeCallbacks:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1398
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1399
    :try_start_2
    iget-object v0, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mService:Lcom/miui/miwallpaper/IMiuiWallpaperManagerService;

    iget-object p0, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p1, p2, p0}, Lcom/miui/miwallpaper/IMiuiWallpaperManagerService;->registerWallpaperChangeListener(Lcom/miui/miwallpaper/IMiuiWallpaperManagerCallback;ILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 1398
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p0

    const-string p1, "MiuiWallpaperManager"

    const-string p2, "registerWallpaperChangeListener fail : "

    .line 1401
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public setLockscreenVideoSurfaceVisible(Z)V
    .locals 1

    .line 2367
    iput-boolean p1, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mAlphaVisible:Z

    .line 2368
    invoke-direct {p0}, Lcom/miui/miwallpaper/MiuiWallpaperManager;->isServiceReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2370
    :try_start_0
    iget-object p0, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mService:Lcom/miui/miwallpaper/IMiuiWallpaperManagerService;

    invoke-interface {p0, p1}, Lcom/miui/miwallpaper/IMiuiWallpaperManagerService;->setLockscreenVideoSurfaceVisible(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string p1, "MiuiWallpaperManager"

    const-string v0, "setLockscreenVideoSurfaceVisible: fail"

    .line 2372
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public unRegisterWallpaperChangeListener(Lcom/miui/miwallpaper/IMiuiWallpaperManagerCallback;)V
    .locals 2

    .line 1410
    iget-object v0, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1411
    :try_start_0
    iget-object v1, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mWallpaperChangeCallbacks:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1412
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1413
    invoke-direct {p0, p1}, Lcom/miui/miwallpaper/MiuiWallpaperManager;->unregisterListenerFromService(Lcom/miui/miwallpaper/IMiuiWallpaperManagerCallback;)V

    return-void

    :catchall_0
    move-exception p0

    .line 1412
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
