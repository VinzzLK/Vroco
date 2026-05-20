.class public Lcom/miui/maml/ResourceManager;
.super Ljava/lang/Object;
.source "ResourceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/ResourceManager$LoadBitmapAsyncTask;,
        Lcom/miui/maml/ResourceManager$AsyncLoadListener;,
        Lcom/miui/maml/ResourceManager$BitmapInfo;
    }
.end annotation


# static fields
.field private static final DEF_CACHE_SIZE:I = 0x10000000

.field private static final DENSITY_HIGH_R:I = 0xf0

.field private static final DENSITY_XHIGH_R:I = 0x168

.field private static final DENSITY_XXHIGH_R:I = 0x21c

.field private static final DENSITY_XXXHIGH:I = 0x280

.field private static final DENSITY_XXXHIGH_R:I = 0x2d0

.field private static final LOG_TAG:Ljava/lang/String; = "ResourceManager"

.field private static final RESOURCE_DENSITY_DEVICE_FALLBACK_EXTRA_FOLDER:Ljava/lang/String;

.field private static final RESOURCE_FALLBACK_DENSITY:I = 0x1e0

.field private static final RESOURCE_FALLBACK_EXTRA_FOLDER:Ljava/lang/String; = "den480/"

.field protected static sBitmapsCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Lcom/miui/maml/ResourceManager$BitmapInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final sLock:Ljava/lang/Object;

.field private static volatile sRef:I

.field private static sWeakRefBitmapsCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/maml/ResourceManager$BitmapInfo;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private lastPluralsUpdateTime:J

.field protected mBitmapKeys:Landroidx/collection/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final mBitmapKeysLock:Ljava/lang/Object;

.field private mDefaultResourceDensity:I

.field private mExtraResourceDensity:I

.field private mExtraResourceFolder:Ljava/lang/String;

.field private final mLoadingBitmaps:Landroidx/collection/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mResourceLoader:Lcom/miui/maml/ResourceLoader;

.field private mTargetDensity:I

.field private pluralsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/miui/maml/LanguageHelper$Plurals;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "den"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Landroid/util/MiuiDisplayMetrics;->DENSITY_DEVICE:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/maml/ResourceManager;->RESOURCE_DENSITY_DEVICE_FALLBACK_EXTRA_FOLDER:Ljava/lang/String;

    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/miui/maml/ResourceManager;->sLock:Ljava/lang/Object;

    .line 87
    new-instance v0, Lcom/miui/maml/ResourceManager$1;

    const/high16 v1, 0x10000000

    invoke-direct {v0, v1}, Lcom/miui/maml/ResourceManager$1;-><init>(I)V

    sput-object v0, Lcom/miui/maml/ResourceManager;->sBitmapsCache:Landroid/util/LruCache;

    .line 104
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/miui/maml/ResourceManager;->sWeakRefBitmapsCache:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>(Lcom/miui/maml/ResourceLoader;)V
    .locals 2

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/ResourceManager;->pluralsMap:Ljava/util/HashMap;

    .line 108
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/ResourceManager;->mBitmapKeysLock:Ljava/lang/Object;

    .line 110
    new-instance v0, Landroidx/collection/ArraySet;

    invoke-direct {v0}, Landroidx/collection/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/ResourceManager;->mBitmapKeys:Landroidx/collection/ArraySet;

    .line 112
    new-instance v0, Landroidx/collection/ArraySet;

    invoke-direct {v0}, Landroidx/collection/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/ResourceManager;->mLoadingBitmaps:Landroidx/collection/ArraySet;

    .line 122
    sget-object v0, Lcom/miui/maml/ResourceManager;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 123
    :try_start_0
    sget v1, Lcom/miui/maml/ResourceManager;->sRef:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/miui/maml/ResourceManager;->sRef:I

    .line 124
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    iput-object p1, p0, Lcom/miui/maml/ResourceManager;->mResourceLoader:Lcom/miui/maml/ResourceLoader;

    return-void

    :catchall_0
    move-exception p0

    .line 124
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method static synthetic access$000(Lcom/miui/maml/ResourceManager;Ljava/lang/String;)Lcom/miui/maml/ResourceManager$BitmapInfo;
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/miui/maml/ResourceManager;->loadBitmap(Ljava/lang/String;)Lcom/miui/maml/ResourceManager$BitmapInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/maml/ResourceManager;)Landroidx/collection/ArraySet;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/miui/maml/ResourceManager;->mLoadingBitmaps:Landroidx/collection/ArraySet;

    return-object p0
.end method

.method public static clear()V
    .locals 1

    .line 179
    invoke-static {}, Lcom/miui/maml/ResourceManager;->evictCacheSafety()V

    .line 180
    sget-object v0, Lcom/miui/maml/ResourceManager;->sWeakRefBitmapsCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method

.method private static evictCacheSafety()V
    .locals 3

    .line 457
    :try_start_0
    sget-object v0, Lcom/miui/maml/ResourceManager;->sBitmapsCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 458
    sget-object v0, Lcom/miui/maml/ResourceManager;->sBitmapsCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ResourceManager"

    const-string v2, "evictCacheSafety exception"

    .line 461
    invoke-static {v1, v2, v0}, Lcom/miui/maml/util/MamlLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private getCache(Ljava/lang/String;)Lcom/miui/maml/ResourceManager$BitmapInfo;
    .locals 4

    .line 333
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/miui/maml/ResourceManager;->mResourceLoader:Lcom/miui/maml/ResourceLoader;

    invoke-virtual {v1}, Lcom/miui/maml/ResourceLoader;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 334
    sget-object v0, Lcom/miui/maml/ResourceManager;->sBitmapsCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/maml/ResourceManager$BitmapInfo;

    .line 336
    sget-object v1, Lcom/miui/maml/ResourceManager;->sWeakRefBitmapsCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    .line 339
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/miui/maml/ResourceManager$BitmapInfo;->mLastVisitTime:J

    if-eqz v1, :cond_0

    .line 340
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_3

    .line 342
    :cond_0
    sget-object v1, Lcom/miui/maml/ResourceManager;->sWeakRefBitmapsCache:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, p1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_3

    .line 347
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/maml/ResourceManager$BitmapInfo;

    if-eqz v0, :cond_2

    .line 351
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/miui/maml/ResourceManager$BitmapInfo;->mLastVisitTime:J

    .line 352
    iget-object v1, p0, Lcom/miui/maml/ResourceManager;->mBitmapKeysLock:Ljava/lang/Object;

    monitor-enter v1

    .line 353
    :try_start_0
    iget-object v2, p0, Lcom/miui/maml/ResourceManager;->mBitmapKeys:Landroidx/collection/ArraySet;

    invoke-virtual {v2, p1}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    .line 354
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 355
    sget-object v1, Lcom/miui/maml/ResourceManager;->sBitmapsCache:Landroid/util/LruCache;

    invoke-virtual {v1, p1, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 354
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 358
    :cond_2
    sget-object v1, Lcom/miui/maml/ResourceManager;->sWeakRefBitmapsCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_0
    if-eqz v0, :cond_4

    .line 362
    iget p1, v0, Lcom/miui/maml/ResourceManager$BitmapInfo;->mDensity:I

    iget p0, p0, Lcom/miui/maml/ResourceManager;->mTargetDensity:I

    if-eq p1, p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    return-object v0
.end method

.method private loadBitmap(Ljava/lang/String;)Lcom/miui/maml/ResourceManager$BitmapInfo;
    .locals 5

    .line 282
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 283
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 284
    iget v2, p0, Lcom/miui/maml/ResourceManager;->mTargetDensity:I

    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 286
    iget-object v2, p0, Lcom/miui/maml/ResourceManager;->mExtraResourceFolder:Ljava/lang/String;

    if-eqz v2, :cond_1

    const-string v2, "ResourceManager"

    .line 287
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "try to load resource from extra resource: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/miui/maml/ResourceManager;->mExtraResourceFolder:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/maml/util/MamlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    iget v2, p0, Lcom/miui/maml/ResourceManager;->mExtraResourceDensity:I

    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 289
    iget-object v2, p0, Lcom/miui/maml/ResourceManager;->mExtraResourceFolder:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, p1

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/miui/maml/ResourceManager;->mExtraResourceFolder:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 290
    :goto_0
    iget-object v3, p0, Lcom/miui/maml/ResourceManager;->mResourceLoader:Lcom/miui/maml/ResourceLoader;

    invoke-virtual {v3, v2, v0}, Lcom/miui/maml/ResourceLoader;->getBitmapInfo(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Lcom/miui/maml/ResourceManager$BitmapInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :cond_2
    :goto_1
    if-nez v2, :cond_3

    .line 297
    iget v2, p0, Lcom/miui/maml/ResourceManager;->mDefaultResourceDensity:I

    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 298
    iget-object v2, p0, Lcom/miui/maml/ResourceManager;->mResourceLoader:Lcom/miui/maml/ResourceLoader;

    invoke-virtual {v2, p1, v0}, Lcom/miui/maml/ResourceLoader;->getBitmapInfo(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Lcom/miui/maml/ResourceManager$BitmapInfo;

    move-result-object v2

    :cond_3
    if-nez v2, :cond_4

    .line 302
    sget v2, Landroid/util/MiuiDisplayMetrics;->DENSITY_DEVICE:I

    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 303
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/miui/maml/ResourceManager;->RESOURCE_DENSITY_DEVICE_FALLBACK_EXTRA_FOLDER:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 304
    iget-object v3, p0, Lcom/miui/maml/ResourceManager;->mResourceLoader:Lcom/miui/maml/ResourceLoader;

    invoke-virtual {v3, v2, v0}, Lcom/miui/maml/ResourceLoader;->getBitmapInfo(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Lcom/miui/maml/ResourceManager$BitmapInfo;

    move-result-object v2

    :cond_4
    if-nez v2, :cond_5

    const/16 v2, 0x1e0

    .line 308
    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 309
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "den480/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 310
    iget-object v3, p0, Lcom/miui/maml/ResourceManager;->mResourceLoader:Lcom/miui/maml/ResourceLoader;

    invoke-virtual {v3, v2, v0}, Lcom/miui/maml/ResourceLoader;->getBitmapInfo(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Lcom/miui/maml/ResourceManager$BitmapInfo;

    move-result-object v2

    :cond_5
    if-eqz v2, :cond_7

    if-nez v1, :cond_6

    const-string v0, "ResourceManager"

    .line 315
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "load image from extra resource: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/miui/maml/ResourceManager;->mExtraResourceFolder:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " of "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/maml/util/MamlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/miui/maml/ResourceManager;->mResourceLoader:Lcom/miui/maml/ResourceLoader;

    invoke-virtual {v1}, Lcom/miui/maml/ResourceLoader;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lcom/miui/maml/ResourceManager$BitmapInfo;->mKey:Ljava/lang/String;

    .line 319
    iget p1, p0, Lcom/miui/maml/ResourceManager;->mTargetDensity:I

    iput p1, v2, Lcom/miui/maml/ResourceManager$BitmapInfo;->mDensity:I

    .line 320
    iget-object v0, v2, Lcom/miui/maml/ResourceManager$BitmapInfo;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 321
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, v2, Lcom/miui/maml/ResourceManager$BitmapInfo;->mLastVisitTime:J

    .line 322
    iget-object p1, p0, Lcom/miui/maml/ResourceManager;->mBitmapKeysLock:Ljava/lang/Object;

    monitor-enter p1

    .line 323
    :try_start_0
    iget-object p0, p0, Lcom/miui/maml/ResourceManager;->mBitmapKeys:Landroidx/collection/ArraySet;

    iget-object v0, v2, Lcom/miui/maml/ResourceManager$BitmapInfo;->mKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    .line 324
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 325
    sget-object p0, Lcom/miui/maml/ResourceManager;->sBitmapsCache:Landroid/util/LruCache;

    iget-object p1, v2, Lcom/miui/maml/ResourceManager$BitmapInfo;->mKey:Ljava/lang/String;

    invoke-virtual {p0, p1, v2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    sget-object p0, Lcom/miui/maml/ResourceManager;->sWeakRefBitmapsCache:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object p1, v2, Lcom/miui/maml/ResourceManager$BitmapInfo;->mKey:Ljava/lang/String;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :catchall_0
    move-exception p0

    .line 324
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_7
    :goto_2
    return-object v2
.end method

.method public static retranslateDensity(I)I
    .locals 6

    const/16 v0, 0x168

    const/16 v1, 0xf0

    if-le p0, v1, :cond_0

    if-gt p0, v0, :cond_0

    const-wide v2, 0x3fe5555555555555L    # 0.6666666666666666

    sub-int/2addr p0, v1

    int-to-double v4, p0

    mul-double/2addr v4, v2

    double-to-int p0, v4

    add-int/2addr p0, v1

    return p0

    :cond_0
    const-wide v1, 0x3fec71c71c71c71cL    # 0.8888888888888888

    const/16 v3, 0x21c

    if-le p0, v0, :cond_1

    if-gt p0, v3, :cond_1

    sub-int/2addr p0, v0

    int-to-double v3, p0

    mul-double/2addr v3, v1

    double-to-int p0, v3

    add-int/lit16 p0, p0, 0x140

    return p0

    :cond_1
    if-le p0, v3, :cond_2

    const/16 v0, 0x2d0

    if-gt p0, v0, :cond_2

    sub-int/2addr p0, v3

    int-to-double v3, p0

    mul-double/2addr v3, v1

    double-to-int p0, v3

    add-int/lit16 p0, p0, 0x1e0

    :cond_2
    return p0
.end method

.method public static translateDensity(I)I
    .locals 6

    const/16 v0, 0x140

    const/16 v1, 0xf0

    if-le p0, v1, :cond_0

    if-gt p0, v0, :cond_0

    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    sub-int/2addr p0, v1

    int-to-double v4, p0

    mul-double/2addr v4, v2

    double-to-int p0, v4

    add-int/2addr p0, v1

    return p0

    :cond_0
    const-wide/high16 v1, 0x3ff2000000000000L    # 1.125

    const/16 v3, 0x1e0

    if-le p0, v0, :cond_1

    if-gt p0, v3, :cond_1

    sub-int/2addr p0, v0

    int-to-double v3, p0

    mul-double/2addr v3, v1

    double-to-int p0, v3

    add-int/lit16 p0, p0, 0x168

    return p0

    :cond_1
    if-le p0, v3, :cond_2

    const/16 v0, 0x280

    if-gt p0, v0, :cond_2

    sub-int/2addr p0, v3

    int-to-double v3, p0

    mul-double/2addr v3, v1

    double-to-int p0, v3

    add-int/lit16 p0, p0, 0x21c

    :cond_2
    return p0
.end method


# virtual methods
.method public clear(Ljava/lang/String;)V
    .locals 2

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/miui/maml/ResourceManager;->mResourceLoader:Lcom/miui/maml/ResourceLoader;

    invoke-virtual {v1}, Lcom/miui/maml/ResourceLoader;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 186
    sget-object v0, Lcom/miui/maml/ResourceManager;->sBitmapsCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    iget-object v0, p0, Lcom/miui/maml/ResourceManager;->mBitmapKeysLock:Ljava/lang/Object;

    monitor-enter v0

    .line 188
    :try_start_0
    iget-object p0, p0, Lcom/miui/maml/ResourceManager;->mBitmapKeys:Landroidx/collection/ArraySet;

    invoke-virtual {p0, p1}, Landroidx/collection/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 189
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public clearByKeys()V
    .locals 4

    .line 198
    iget-object v0, p0, Lcom/miui/maml/ResourceManager;->mBitmapKeysLock:Ljava/lang/Object;

    monitor-enter v0

    .line 199
    :try_start_0
    iget-object v1, p0, Lcom/miui/maml/ResourceManager;->mBitmapKeys:Landroidx/collection/ArraySet;

    invoke-virtual {v1}, Landroidx/collection/ArraySet;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    .line 201
    iget-object v2, p0, Lcom/miui/maml/ResourceManager;->mBitmapKeys:Landroidx/collection/ArraySet;

    invoke-virtual {v2, v1}, Landroidx/collection/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 202
    sget-object v3, Lcom/miui/maml/ResourceManager;->sBitmapsCache:Landroid/util/LruCache;

    invoke-virtual {v3, v2}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    sget-object v3, Lcom/miui/maml/ResourceManager;->sWeakRefBitmapsCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    iget-object v2, p0, Lcom/miui/maml/ResourceManager;->mBitmapKeys:Landroidx/collection/ArraySet;

    invoke-virtual {v2, v1}, Landroidx/collection/ArraySet;->removeAt(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 206
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 512
    sget-object v0, Lcom/miui/maml/ResourceManager;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 513
    :try_start_0
    sget v1, Lcom/miui/maml/ResourceManager;->sRef:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    sput v1, Lcom/miui/maml/ResourceManager;->sRef:I

    .line 514
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 515
    sget v0, Lcom/miui/maml/ResourceManager;->sRef:I

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0, v2}, Lcom/miui/maml/ResourceManager;->finish(Z)V

    .line 516
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception p0

    .line 514
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public finish(Z)V
    .locals 1

    if-nez p1, :cond_0

    .line 442
    invoke-static {}, Lcom/miui/maml/ResourceManager;->evictCacheSafety()V

    .line 443
    iget-object p1, p0, Lcom/miui/maml/ResourceManager;->mBitmapKeysLock:Ljava/lang/Object;

    monitor-enter p1

    .line 444
    :try_start_0
    iget-object v0, p0, Lcom/miui/maml/ResourceManager;->mBitmapKeys:Landroidx/collection/ArraySet;

    invoke-virtual {v0}, Landroidx/collection/ArraySet;->clear()V

    .line 445
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 446
    sget-object p1, Lcom/miui/maml/ResourceManager;->sWeakRefBitmapsCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 445
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 448
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/miui/maml/ResourceManager;->mLoadingBitmaps:Landroidx/collection/ArraySet;

    monitor-enter p1

    .line 449
    :try_start_2
    iget-object v0, p0, Lcom/miui/maml/ResourceManager;->mLoadingBitmaps:Landroidx/collection/ArraySet;

    invoke-virtual {v0}, Landroidx/collection/ArraySet;->clear()V

    .line 450
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 452
    iget-object p0, p0, Lcom/miui/maml/ResourceManager;->mResourceLoader:Lcom/miui/maml/ResourceLoader;

    invoke-virtual {p0}, Lcom/miui/maml/ResourceLoader;->finish()V

    return-void

    :catchall_1
    move-exception p0

    .line 450
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method

.method public getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 0

    .line 138
    invoke-virtual {p0, p1}, Lcom/miui/maml/ResourceManager;->getBitmapInfo(Ljava/lang/String;)Lcom/miui/maml/ResourceManager$BitmapInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 139
    iget-object p0, p0, Lcom/miui/maml/ResourceManager$BitmapInfo;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getBitmapInfo(Ljava/lang/String;)Lcom/miui/maml/ResourceManager$BitmapInfo;
    .locals 1

    .line 210
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 214
    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/maml/ResourceManager;->getCache(Ljava/lang/String;)Lcom/miui/maml/ResourceManager$BitmapInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    .line 218
    :cond_1
    invoke-direct {p0, p1}, Lcom/miui/maml/ResourceManager;->loadBitmap(Ljava/lang/String;)Lcom/miui/maml/ResourceManager$BitmapInfo;

    move-result-object p0

    return-object p0
.end method

.method public getBitmapInfoAsync(Ljava/lang/String;Lcom/miui/maml/ResourceManager$AsyncLoadListener;)Lcom/miui/maml/ResourceManager$BitmapInfo;
    .locals 5

    .line 226
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 230
    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/maml/ResourceManager;->getCache(Ljava/lang/String;)Lcom/miui/maml/ResourceManager$BitmapInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    .line 235
    :cond_1
    iget-object v0, p0, Lcom/miui/maml/ResourceManager;->mLoadingBitmaps:Landroidx/collection/ArraySet;

    monitor-enter v0

    .line 236
    :try_start_0
    iget-object v1, p0, Lcom/miui/maml/ResourceManager;->mLoadingBitmaps:Landroidx/collection/ArraySet;

    invoke-virtual {v1, p1}, Landroidx/collection/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_3

    .line 237
    invoke-direct {p0, p1}, Lcom/miui/maml/ResourceManager;->getCache(Ljava/lang/String;)Lcom/miui/maml/ResourceManager$BitmapInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 239
    monitor-exit v0

    return-object v1

    .line 240
    :cond_2
    iget-object v1, p0, Lcom/miui/maml/ResourceManager;->mLoadingBitmaps:Landroidx/collection/ArraySet;

    invoke-virtual {v1, p1}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    const-string v1, "ResourceManager"

    .line 241
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "load image async: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/miui/maml/util/MamlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    new-instance v1, Lcom/miui/maml/ResourceManager$LoadBitmapAsyncTask;

    invoke-direct {v1, p0, p2}, Lcom/miui/maml/ResourceManager$LoadBitmapAsyncTask;-><init>(Lcom/miui/maml/ResourceManager;Lcom/miui/maml/ResourceManager$AsyncLoadListener;)V

    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array p2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, p2, v3

    invoke-virtual {v1, p0, p2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 244
    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    new-instance p0, Lcom/miui/maml/ResourceManager$BitmapInfo;

    invoke-direct {p0}, Lcom/miui/maml/ResourceManager$BitmapInfo;-><init>()V

    .line 247
    iput-boolean v2, p0, Lcom/miui/maml/ResourceManager$BitmapInfo;->mLoading:Z

    return-object p0

    :catchall_0
    move-exception p0

    .line 244
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public getConfigRoot()Lorg/w3c/dom/Element;
    .locals 0

    .line 173
    iget-object p0, p0, Lcom/miui/maml/ResourceManager;->mResourceLoader:Lcom/miui/maml/ResourceLoader;

    invoke-virtual {p0}, Lcom/miui/maml/ResourceLoader;->getConfigRoot()Lorg/w3c/dom/Element;

    move-result-object p0

    return-object p0
.end method

.method public getDrawable(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 8

    .line 143
    invoke-virtual {p0, p2}, Lcom/miui/maml/ResourceManager;->getBitmapInfo(Ljava/lang/String;)Lcom/miui/maml/ResourceManager$BitmapInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 144
    iget-object v3, v0, Lcom/miui/maml/ResourceManager$BitmapInfo;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v3, :cond_0

    goto :goto_0

    .line 148
    :cond_0
    iget-object v1, v0, Lcom/miui/maml/ResourceManager$BitmapInfo;->mNinePatch:Landroid/graphics/NinePatch;

    if-eqz v1, :cond_1

    .line 152
    new-instance v7, Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v4

    iget-object v5, v0, Lcom/miui/maml/ResourceManager$BitmapInfo;->mPadding:Landroid/graphics/Rect;

    move-object v1, v7

    move-object v2, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)V

    .line 154
    iget p0, p0, Lcom/miui/maml/ResourceManager;->mTargetDensity:I

    invoke-virtual {v7, p0}, Landroid/graphics/drawable/NinePatchDrawable;->setTargetDensity(I)V

    return-object v7

    .line 158
    :cond_1
    new-instance p2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p2, p1, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 159
    iget p0, p0, Lcom/miui/maml/ResourceManager;->mTargetDensity:I

    invoke-virtual {p2, p0}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(I)V

    return-object p2

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getExtraFile(Ljava/lang/String;)Ljava/io/File;
    .locals 0

    .line 134
    iget-object p0, p0, Lcom/miui/maml/ResourceManager;->mResourceLoader:Lcom/miui/maml/ResourceLoader;

    invoke-virtual {p0, p1}, Lcom/miui/maml/ResourceLoader;->getExtraFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public getFile(Ljava/lang/String;)Landroid/os/MemoryFile;
    .locals 0

    .line 129
    iget-object p0, p0, Lcom/miui/maml/ResourceManager;->mResourceLoader:Lcom/miui/maml/ResourceLoader;

    invoke-virtual {p0, p1}, Lcom/miui/maml/ResourceLoader;->getFile(Ljava/lang/String;)Landroid/os/MemoryFile;

    move-result-object p0

    return-object p0
.end method

.method public final getInputStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 0

    .line 470
    iget-object p0, p0, Lcom/miui/maml/ResourceManager;->mResourceLoader:Lcom/miui/maml/ResourceLoader;

    invoke-virtual {p0, p1}, Lcom/miui/maml/ResourceLoader;->getInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public final getInputStream(Ljava/lang/String;[J)Ljava/io/InputStream;
    .locals 0

    .line 474
    iget-object p0, p0, Lcom/miui/maml/ResourceManager;->mResourceLoader:Lcom/miui/maml/ResourceLoader;

    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/ResourceLoader;->getInputStream(Ljava/lang/String;[J)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public getLastPluralsUpdateTime()J
    .locals 2

    .line 503
    iget-wide v0, p0, Lcom/miui/maml/ResourceManager;->lastPluralsUpdateTime:J

    return-wide v0
.end method

.method public getManifestRoot()Lorg/w3c/dom/Element;
    .locals 0

    .line 169
    iget-object p0, p0, Lcom/miui/maml/ResourceManager;->mResourceLoader:Lcom/miui/maml/ResourceLoader;

    invoke-virtual {p0}, Lcom/miui/maml/ResourceLoader;->getManifestRoot()Lorg/w3c/dom/Element;

    move-result-object p0

    return-object p0
.end method

.method public getNinePatch(Ljava/lang/String;)Landroid/graphics/NinePatch;
    .locals 0

    .line 164
    invoke-virtual {p0, p1}, Lcom/miui/maml/ResourceManager;->getBitmapInfo(Ljava/lang/String;)Lcom/miui/maml/ResourceManager$BitmapInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 165
    iget-object p0, p0, Lcom/miui/maml/ResourceManager$BitmapInfo;->mNinePatch:Landroid/graphics/NinePatch;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getPathForLanguage(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 478
    iget-object p0, p0, Lcom/miui/maml/ResourceManager;->mResourceLoader:Lcom/miui/maml/ResourceLoader;

    invoke-virtual {p0, p1}, Lcom/miui/maml/ResourceLoader;->getPathForLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPluralsMap()Ljava/util/HashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Lcom/miui/maml/LanguageHelper$Plurals;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 499
    iget-object p0, p0, Lcom/miui/maml/ResourceManager;->pluralsMap:Ljava/util/HashMap;

    return-object p0
.end method

.method public getResourceLoader()Lcom/miui/maml/ResourceLoader;
    .locals 0

    .line 194
    iget-object p0, p0, Lcom/miui/maml/ResourceManager;->mResourceLoader:Lcom/miui/maml/ResourceLoader;

    return-object p0
.end method

.method public getTargetDensity()I
    .locals 0

    .line 377
    iget p0, p0, Lcom/miui/maml/ResourceManager;->mTargetDensity:I

    return p0
.end method

.method public init()V
    .locals 0

    .line 437
    iget-object p0, p0, Lcom/miui/maml/ResourceManager;->mResourceLoader:Lcom/miui/maml/ResourceLoader;

    invoke-virtual {p0}, Lcom/miui/maml/ResourceLoader;->init()V

    return-void
.end method

.method public pause()V
    .locals 0

    return-void
.end method

.method public final resourceExists(Ljava/lang/String;)Z
    .locals 0

    .line 466
    iget-object p0, p0, Lcom/miui/maml/ResourceManager;->mResourceLoader:Lcom/miui/maml/ResourceLoader;

    invoke-virtual {p0, p1}, Lcom/miui/maml/ResourceLoader;->resourceExists(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public resume()V
    .locals 0

    return-void
.end method

.method public setCacheSize(I)V
    .locals 0

    .line 483
    sget-object p0, Lcom/miui/maml/ResourceManager;->sBitmapsCache:Landroid/util/LruCache;

    invoke-virtual {p0, p1}, Landroid/util/LruCache;->resize(I)V

    return-void
.end method

.method public setDefaultResourceDensity(I)V
    .locals 0

    .line 369
    iput p1, p0, Lcom/miui/maml/ResourceManager;->mDefaultResourceDensity:I

    return-void
.end method

.method public setExtraResource(Ljava/lang/String;)V
    .locals 0

    .line 386
    iput-object p1, p0, Lcom/miui/maml/ResourceManager;->mExtraResourceFolder:Ljava/lang/String;

    return-void
.end method

.method public setExtraResource(Ljava/lang/String;I)V
    .locals 0

    .line 381
    iput-object p1, p0, Lcom/miui/maml/ResourceManager;->mExtraResourceFolder:Ljava/lang/String;

    .line 382
    iput p2, p0, Lcom/miui/maml/ResourceManager;->mExtraResourceDensity:I

    return-void
.end method

.method public setExtraResourceDensity(I)V
    .locals 0

    .line 390
    iput p1, p0, Lcom/miui/maml/ResourceManager;->mExtraResourceDensity:I

    return-void
.end method

.method public setLastPluralsUpdateTime(J)V
    .locals 0

    .line 507
    iput-wide p1, p0, Lcom/miui/maml/ResourceManager;->lastPluralsUpdateTime:J

    return-void
.end method

.method public setLocal(Ljava/util/Locale;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 491
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/ResourceManager;->mResourceLoader:Lcom/miui/maml/ResourceLoader;

    invoke-virtual {v0}, Lcom/miui/maml/ResourceLoader;->getLocale()Ljava/util/Locale;

    move-result-object v0

    .line 492
    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 493
    iget-object v0, p0, Lcom/miui/maml/ResourceManager;->mResourceLoader:Lcom/miui/maml/ResourceLoader;

    invoke-virtual {v0, p1}, Lcom/miui/maml/ResourceLoader;->setLocal(Ljava/util/Locale;)Lcom/miui/maml/ResourceLoader;

    const/4 p1, 0x0

    .line 494
    invoke-virtual {p0, p1}, Lcom/miui/maml/ResourceManager;->finish(Z)V

    :cond_1
    return-void
.end method

.method public setTargetDensity(I)V
    .locals 0

    .line 373
    iput p1, p0, Lcom/miui/maml/ResourceManager;->mTargetDensity:I

    return-void
.end method
