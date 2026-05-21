.class public Lcom/miui/home/launcher/ScreenLoaderHelper;
.super Ljava/lang/Object;
.source "ScreenLoaderHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ScreenLoaderHelper"

.field private static volatile instance:Lcom/miui/home/launcher/ScreenLoaderHelper;


# instance fields
.field private volatile mAllScreenLoaded:Z

.field private final mAllScreenLoadedRunnableMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mFirstScreenLoaded:Z

.field private final mFirstScreenLoadedRunnableMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/ScreenLoaderHelper;->mFirstScreenLoadedRunnableMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 21
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/ScreenLoaderHelper;->mAllScreenLoadedRunnableMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private dispatchRunnable(Ljava/util/concurrent/ConcurrentHashMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Runnable;",
            ">;)V"
        }
    .end annotation

    .line 86
    new-instance p0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 87
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 88
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 89
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 91
    invoke-virtual {p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 93
    :try_start_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 95
    sget-object v2, Lcom/miui/home/launcher/ScreenLoaderHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error executing observer "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " runnable"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 99
    :cond_1
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method

.method public static getInstance()Lcom/miui/home/launcher/ScreenLoaderHelper;
    .locals 2

    .line 27
    sget-object v0, Lcom/miui/home/launcher/ScreenLoaderHelper;->instance:Lcom/miui/home/launcher/ScreenLoaderHelper;

    if-nez v0, :cond_1

    .line 28
    const-class v0, Lcom/miui/home/launcher/ScreenLoaderHelper;

    monitor-enter v0

    .line 29
    :try_start_0
    sget-object v1, Lcom/miui/home/launcher/ScreenLoaderHelper;->instance:Lcom/miui/home/launcher/ScreenLoaderHelper;

    if-nez v1, :cond_0

    .line 30
    new-instance v1, Lcom/miui/home/launcher/ScreenLoaderHelper;

    invoke-direct {v1}, Lcom/miui/home/launcher/ScreenLoaderHelper;-><init>()V

    sput-object v1, Lcom/miui/home/launcher/ScreenLoaderHelper;->instance:Lcom/miui/home/launcher/ScreenLoaderHelper;

    .line 32
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 34
    :cond_1
    :goto_0
    sget-object v0, Lcom/miui/home/launcher/ScreenLoaderHelper;->instance:Lcom/miui/home/launcher/ScreenLoaderHelper;

    return-object v0
.end method


# virtual methods
.method public allScreenLoaded()V
    .locals 1

    const/4 v0, 0x1

    .line 58
    iput-boolean v0, p0, Lcom/miui/home/launcher/ScreenLoaderHelper;->mAllScreenLoaded:Z

    .line 59
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenLoaderHelper;->mAllScreenLoadedRunnableMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/ScreenLoaderHelper;->dispatchRunnable(Ljava/util/concurrent/ConcurrentHashMap;)V

    return-void
.end method

.method public firstScreenLoaded()V
    .locals 1

    const/4 v0, 0x1

    .line 75
    iput-boolean v0, p0, Lcom/miui/home/launcher/ScreenLoaderHelper;->mFirstScreenLoaded:Z

    .line 76
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenLoaderHelper;->mFirstScreenLoadedRunnableMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/ScreenLoaderHelper;->dispatchRunnable(Ljava/util/concurrent/ConcurrentHashMap;)V

    return-void
.end method

.method public isAllScreenLoaded()Z
    .locals 0

    .line 42
    iget-boolean p0, p0, Lcom/miui/home/launcher/ScreenLoaderHelper;->mAllScreenLoaded:Z

    return p0
.end method

.method public observeAllScreenLoaded(Ljava/lang/Object;Ljava/lang/Runnable;)V
    .locals 1

    .line 46
    iget-boolean v0, p0, Lcom/miui/home/launcher/ScreenLoaderHelper;->mAllScreenLoaded:Z

    if-eqz v0, :cond_0

    .line 47
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    return-void

    .line 50
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/ScreenLoaderHelper;->mAllScreenLoadedRunnableMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public observeFirstScreenLoaded(Ljava/lang/Object;Ljava/lang/Runnable;)V
    .locals 1

    .line 63
    iget-boolean v0, p0, Lcom/miui/home/launcher/ScreenLoaderHelper;->mFirstScreenLoaded:Z

    if-eqz v0, :cond_0

    .line 64
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    return-void

    .line 67
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/ScreenLoaderHelper;->mFirstScreenLoadedRunnableMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public release()V
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenLoaderHelper;->mFirstScreenLoadedRunnableMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 109
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenLoaderHelper;->mAllScreenLoadedRunnableMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 110
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenLoaderHelper;->resetLoadStatus()V

    return-void
.end method

.method public resetLoadStatus()V
    .locals 1

    const/4 v0, 0x0

    .line 103
    iput-boolean v0, p0, Lcom/miui/home/launcher/ScreenLoaderHelper;->mFirstScreenLoaded:Z

    .line 104
    iput-boolean v0, p0, Lcom/miui/home/launcher/ScreenLoaderHelper;->mAllScreenLoaded:Z

    return-void
.end method

.method public unObserveAllScreenLoaded(Ljava/lang/Object;)V
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/miui/home/launcher/ScreenLoaderHelper;->mAllScreenLoadedRunnableMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public unObserveFirstScreenLoaded(Ljava/lang/Object;)V
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/miui/home/launcher/ScreenLoaderHelper;->mFirstScreenLoadedRunnableMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
