.class Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;
.super Lcom/miui/maml/elements/BitmapProvider;
.source "BitmapProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/elements/BitmapProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResourceImageProvider"
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "ResourceImage"


# instance fields
.field private mAsyncLoadListener:Lcom/miui/maml/ResourceManager$AsyncLoadListener;

.field private mCachedBitmapName:Ljava/lang/String;

.field private mCachedDensity:I

.field mLoadingBitmapName:Ljava/lang/String;

.field mSrcNameLock:Ljava/lang/Object;


# direct methods
.method public static synthetic $r8$lambda$tU3us6_AElDm-Cr6IrTf6siT2JM(Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;Ljava/lang/String;)Lcom/miui/maml/ResourceManager$BitmapInfo;
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;->lambda$loadBitmapSync$0(Ljava/lang/String;)Lcom/miui/maml/ResourceManager$BitmapInfo;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/miui/maml/ScreenElementRoot;)V
    .locals 0

    .line 234
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/BitmapProvider;-><init>(Lcom/miui/maml/ScreenElementRoot;)V

    .line 239
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;->mSrcNameLock:Ljava/lang/Object;

    .line 243
    new-instance p1, Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider$1;

    invoke-direct {p1, p0}, Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider$1;-><init>(Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;)V

    iput-object p1, p0, Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;->mAsyncLoadListener:Lcom/miui/maml/ResourceManager$AsyncLoadListener;

    return-void
.end method

.method static synthetic access$100(Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;)Ljava/lang/String;
    .locals 0

    .line 232
    iget-object p0, p0, Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;->mCachedBitmapName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$102(Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 232
    iput-object p1, p0, Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;->mCachedBitmapName:Ljava/lang/String;

    return-object p1
.end method

.method private synthetic lambda$loadBitmapSync$0(Ljava/lang/String;)Lcom/miui/maml/ResourceManager$BitmapInfo;
    .locals 0

    .line 282
    iget-object p0, p0, Lcom/miui/maml/elements/BitmapProvider;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {p0}, Lcom/miui/maml/ScreenElementRoot;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object p0

    iget-object p0, p0, Lcom/miui/maml/ScreenContext;->mResourceManager:Lcom/miui/maml/ResourceManager;

    invoke-virtual {p0, p1}, Lcom/miui/maml/ResourceManager;->getBitmapInfo(Ljava/lang/String;)Lcom/miui/maml/ResourceManager$BitmapInfo;

    move-result-object p0

    return-object p0
.end method

.method private loadBitmapAsync(Ljava/lang/String;)V
    .locals 4

    .line 304
    iget-object v0, p0, Lcom/miui/maml/elements/BitmapProvider;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object v0

    iget-object v0, v0, Lcom/miui/maml/ScreenContext;->mResourceManager:Lcom/miui/maml/ResourceManager;

    iget-object v1, p0, Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;->mAsyncLoadListener:Lcom/miui/maml/ResourceManager$AsyncLoadListener;

    invoke-virtual {v0, p1, v1}, Lcom/miui/maml/ResourceManager;->getBitmapInfoAsync(Ljava/lang/String;Lcom/miui/maml/ResourceManager$AsyncLoadListener;)Lcom/miui/maml/ResourceManager$BitmapInfo;

    move-result-object v0

    .line 308
    iget-object v1, p0, Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;->mSrcNameLock:Ljava/lang/Object;

    monitor-enter v1

    if-eqz v0, :cond_1

    .line 309
    :try_start_0
    iget-boolean v2, v0, Lcom/miui/maml/ResourceManager$BitmapInfo;->mLoading:Z

    if-nez v2, :cond_0

    goto :goto_0

    .line 314
    :cond_0
    iput-object p1, p0, Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;->mLoadingBitmapName:Ljava/lang/String;

    goto :goto_2

    .line 310
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/miui/maml/elements/BitmapProvider;->mVersionedBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    const/4 v3, 0x0

    if-nez v0, :cond_2

    move-object v0, v3

    goto :goto_1

    :cond_2
    iget-object v0, v0, Lcom/miui/maml/ResourceManager$BitmapInfo;->mBitmap:Landroid/graphics/Bitmap;

    :goto_1
    invoke-virtual {v2, v0}, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->setBitmap(Landroid/graphics/Bitmap;)Z

    .line 311
    iput-object p1, p0, Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;->mCachedBitmapName:Ljava/lang/String;

    .line 312
    iput-object v3, p0, Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;->mLoadingBitmapName:Ljava/lang/String;

    .line 316
    :goto_2
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private loadBitmapSync(Ljava/lang/String;)V
    .locals 6

    const-string v0, " "

    const-string v1, "BitmapProvider"

    .line 281
    new-instance v2, Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1}, Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider$$ExternalSyntheticLambda0;-><init>(Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;Ljava/lang/String;)V

    invoke-static {v2}, Ljava/util/concurrent/CompletableFuture;->supplyAsync(Ljava/util/function/Supplier;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v2

    const-wide/16 v3, 0x3e8

    .line 286
    :try_start_0
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/maml/ResourceManager$BitmapInfo;

    .line 287
    iget-object v4, p0, Lcom/miui/maml/elements/BitmapProvider;->mVersionedBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    iget-object v3, v3, Lcom/miui/maml/ResourceManager$BitmapInfo;->mBitmap:Landroid/graphics/Bitmap;

    :goto_0
    invoke-virtual {v4, v3}, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->setBitmap(Landroid/graphics/Bitmap;)Z

    .line 288
    iput-object p1, p0, Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;->mCachedBitmapName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 296
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getBitmap execute timeout, src = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " Exception="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", try again getBitmapInfoAsync"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/miui/maml/util/MamlLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 298
    invoke-virtual {v2, v0}, Ljava/util/concurrent/CompletableFuture;->cancel(Z)Z

    .line 299
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;->loadBitmapAsync(Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception p0

    .line 292
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getBitmap interrupted, src = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/miui/maml/util/MamlLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    :catch_2
    move-exception p0

    .line 290
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getBitmap execute error, src = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/miui/maml/util/MamlLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .line 321
    invoke-super {p0}, Lcom/miui/maml/elements/BitmapProvider;->finish()V

    .line 322
    iget-object v0, p0, Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;->mSrcNameLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 323
    :try_start_0
    iput-object v1, p0, Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;->mLoadingBitmapName:Ljava/lang/String;

    .line 324
    iput-object v1, p0, Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;->mCachedBitmapName:Ljava/lang/String;

    .line 325
    iget-object p0, p0, Lcom/miui/maml/elements/BitmapProvider;->mVersionedBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    invoke-virtual {p0}, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->reset()V

    .line 326
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getBitmap(Ljava/lang/String;ZII)Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;
    .locals 1

    .line 263
    iget-object p3, p0, Lcom/miui/maml/elements/BitmapProvider;->mVersionedBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    invoke-virtual {p3}, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p3

    .line 264
    iget-object p4, p0, Lcom/miui/maml/elements/BitmapProvider;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {p4}, Lcom/miui/maml/ScreenElementRoot;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object p4

    iget-object p4, p4, Lcom/miui/maml/ScreenContext;->mResourceManager:Lcom/miui/maml/ResourceManager;

    invoke-virtual {p4}, Lcom/miui/maml/ResourceManager;->getTargetDensity()I

    move-result p4

    if-lez p4, :cond_0

    .line 265
    iget v0, p0, Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;->mCachedDensity:I

    if-eq p4, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 267
    iput p4, p0, Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;->mCachedDensity:I

    :cond_1
    if-eqz p3, :cond_2

    .line 269
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p3

    if-nez p3, :cond_3

    :cond_2
    iget-object p3, p0, Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;->mCachedBitmapName:Ljava/lang/String;

    invoke-static {p3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_3

    if-eqz v0, :cond_5

    :cond_3
    if-eqz p2, :cond_4

    .line 271
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;->loadBitmapSync(Ljava/lang/String;)V

    goto :goto_1

    .line 273
    :cond_4
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;->loadBitmapAsync(Ljava/lang/String;)V

    .line 277
    :cond_5
    :goto_1
    iget-object p0, p0, Lcom/miui/maml/elements/BitmapProvider;->mVersionedBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    return-object p0
.end method
