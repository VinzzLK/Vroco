.class Lcom/miui/launcher/overlay/client/PersistentLauncherOverlayConnection;
.super Lcom/miui/launcher/overlay/client/LauncherOverlayConnection;
.source "PersistentLauncherOverlayConnection.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "LauncherClient.PersistentConnection"

.field private static final sInstanceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/miui/launcher/overlay/client/PersistentLauncherOverlayConnection;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mLauncherClient:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/launcher/overlay/client/LauncherClient;",
            ">;"
        }
    .end annotation
.end field

.field public mLauncherOverlay:Lcom/miui/launcher/overlay/ILauncherOverlay;

.field private mStopped:Z

.field private mStrategy:Lcom/miui/launcher/overlay/client/ServiceConnectionStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 19
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/miui/launcher/overlay/client/PersistentLauncherOverlayConnection;->sInstanceMap:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x21

    .line 37
    invoke-direct {p0, p1, v0, p2}, Lcom/miui/launcher/overlay/client/LauncherOverlayConnection;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    return-void
.end method

.method private cleanUp()V
    .locals 2

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cleanUp mStopped"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/launcher/overlay/client/PersistentLauncherOverlayConnection;->mStopped:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mLauncherOverlay:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/launcher/overlay/client/PersistentLauncherOverlayConnection;->mLauncherOverlay:Lcom/miui/launcher/overlay/ILauncherOverlay;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LauncherClient.PersistentConnection"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-boolean v0, p0, Lcom/miui/launcher/overlay/client/PersistentLauncherOverlayConnection;->mStopped:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/launcher/overlay/client/PersistentLauncherOverlayConnection;->mLauncherOverlay:Lcom/miui/launcher/overlay/ILauncherOverlay;

    if-nez v0, :cond_0

    .line 111
    invoke-virtual {p0}, Lcom/miui/launcher/overlay/client/LauncherOverlayConnection;->disconnect()V

    :cond_0
    return-void
.end method

.method private getClient()Lcom/miui/launcher/overlay/client/LauncherClient;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/miui/launcher/overlay/client/PersistentLauncherOverlayConnection;->mLauncherClient:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_0

    .line 60
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/launcher/overlay/client/LauncherClient;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method static declared-synchronized getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/launcher/overlay/client/PersistentLauncherOverlayConnection;
    .locals 3

    const-class v0, Lcom/miui/launcher/overlay/client/PersistentLauncherOverlayConnection;

    monitor-enter v0

    .line 22
    :try_start_0
    sget-object v1, Lcom/miui/launcher/overlay/client/PersistentLauncherOverlayConnection;->sInstanceMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/launcher/overlay/client/PersistentLauncherOverlayConnection;

    if-nez v2, :cond_0

    .line 24
    new-instance v2, Lcom/miui/launcher/overlay/client/PersistentLauncherOverlayConnection;

    invoke-direct {v2, p0, p1}, Lcom/miui/launcher/overlay/client/PersistentLauncherOverlayConnection;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 25
    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    :cond_0
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private setOverlay(Lcom/miui/launcher/overlay/ILauncherOverlay;)V
    .locals 2

    .line 95
    iput-object p1, p0, Lcom/miui/launcher/overlay/client/PersistentLauncherOverlayConnection;->mLauncherOverlay:Lcom/miui/launcher/overlay/ILauncherOverlay;

    .line 96
    invoke-direct {p0}, Lcom/miui/launcher/overlay/client/PersistentLauncherOverlayConnection;->getClient()Lcom/miui/launcher/overlay/client/LauncherClient;

    move-result-object p1

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setOverlay:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mLauncherOverlay:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/launcher/overlay/client/PersistentLauncherOverlayConnection;->mLauncherOverlay:Lcom/miui/launcher/overlay/ILauncherOverlay;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LauncherClient.PersistentConnection"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 99
    iget-object p0, p0, Lcom/miui/launcher/overlay/client/PersistentLauncherOverlayConnection;->mLauncherOverlay:Lcom/miui/launcher/overlay/ILauncherOverlay;

    invoke-virtual {p1, p0}, Lcom/miui/launcher/overlay/client/LauncherClient;->setOverlay(Lcom/miui/launcher/overlay/ILauncherOverlay;)V

    :cond_0
    return-void
.end method


# virtual methods
.method final declared-synchronized bindClient(Lcom/miui/launcher/overlay/client/LauncherClient;)Lcom/miui/launcher/overlay/ILauncherOverlay;
    .locals 1

    monitor-enter p0

    .line 41
    :try_start_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/launcher/overlay/client/PersistentLauncherOverlayConnection;->mLauncherClient:Ljava/lang/ref/WeakReference;

    .line 42
    iget-object p1, p0, Lcom/miui/launcher/overlay/client/PersistentLauncherOverlayConnection;->mLauncherOverlay:Lcom/miui/launcher/overlay/ILauncherOverlay;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onBindingDied(Landroid/content/ComponentName;)V
    .locals 0

    .line 83
    invoke-super {p0, p1}, Lcom/miui/launcher/overlay/client/LauncherOverlayConnection;->onBindingDied(Landroid/content/ComponentName;)V

    .line 84
    iget-object p1, p0, Lcom/miui/launcher/overlay/client/PersistentLauncherOverlayConnection;->mStrategy:Lcom/miui/launcher/overlay/client/ServiceConnectionStrategy;

    instance-of p1, p1, Lcom/miui/launcher/overlay/client/MiddlePriorityServiceConnectionStrategy;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 85
    iput-boolean p1, p0, Lcom/miui/launcher/overlay/client/LauncherOverlayConnection;->mConnected:Z

    .line 87
    :cond_0
    invoke-direct {p0}, Lcom/miui/launcher/overlay/client/PersistentLauncherOverlayConnection;->getClient()Lcom/miui/launcher/overlay/client/LauncherClient;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 89
    invoke-virtual {p0}, Lcom/miui/launcher/overlay/client/LauncherClient;->onBindingDied()V

    :cond_1
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .line 65
    invoke-super {p0, p1, p2}, Lcom/miui/launcher/overlay/client/LauncherOverlayConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 66
    invoke-direct {p0}, Lcom/miui/launcher/overlay/client/PersistentLauncherOverlayConnection;->getClient()Lcom/miui/launcher/overlay/client/LauncherClient;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {v0}, Lcom/miui/launcher/overlay/client/LauncherClient;->onServiceConnected()V

    .line 70
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceConnected:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LauncherClient.PersistentConnection"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    invoke-static {p2}, Lcom/miui/launcher/overlay/ILauncherOverlay$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/launcher/overlay/ILauncherOverlay;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/launcher/overlay/client/PersistentLauncherOverlayConnection;->setOverlay(Lcom/miui/launcher/overlay/ILauncherOverlay;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    .line 76
    invoke-super {p0, p1}, Lcom/miui/launcher/overlay/client/LauncherOverlayConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V

    const/4 p1, 0x0

    .line 77
    invoke-direct {p0, p1}, Lcom/miui/launcher/overlay/client/PersistentLauncherOverlayConnection;->setOverlay(Lcom/miui/launcher/overlay/ILauncherOverlay;)V

    .line 78
    invoke-direct {p0}, Lcom/miui/launcher/overlay/client/PersistentLauncherOverlayConnection;->cleanUp()V

    return-void
.end method

.method public final setStopped(Z)V
    .locals 0

    .line 104
    iput-boolean p1, p0, Lcom/miui/launcher/overlay/client/PersistentLauncherOverlayConnection;->mStopped:Z

    .line 105
    invoke-direct {p0}, Lcom/miui/launcher/overlay/client/PersistentLauncherOverlayConnection;->cleanUp()V

    return-void
.end method

.method public setStrategy(Lcom/miui/launcher/overlay/client/ServiceConnectionStrategy;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/miui/launcher/overlay/client/PersistentLauncherOverlayConnection;->mStrategy:Lcom/miui/launcher/overlay/client/ServiceConnectionStrategy;

    return-void
.end method

.method final declared-synchronized unbindClient(Lcom/miui/launcher/overlay/client/LauncherClient;Z)V
    .locals 4

    monitor-enter p0

    .line 46
    :try_start_0
    invoke-direct {p0}, Lcom/miui/launcher/overlay/client/PersistentLauncherOverlayConnection;->getClient()Lcom/miui/launcher/overlay/client/LauncherClient;

    move-result-object v0

    const-string v1, "LauncherClient.PersistentConnection"

    .line 47
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unbindClient disconnect"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " client:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " currentClient:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 49
    iput-object p1, p0, Lcom/miui/launcher/overlay/client/PersistentLauncherOverlayConnection;->mLauncherClient:Ljava/lang/ref/WeakReference;

    if-eqz p2, :cond_0

    .line 51
    invoke-virtual {p0}, Lcom/miui/launcher/overlay/client/LauncherOverlayConnection;->disconnect()V

    .line 52
    sget-object p1, Lcom/miui/launcher/overlay/client/PersistentLauncherOverlayConnection;->sInstanceMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/miui/launcher/overlay/client/LauncherOverlayConnection;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
