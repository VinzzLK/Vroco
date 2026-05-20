.class public Lcom/miui/launcher/overlay/client/WaivePriorityServiceConnectionStrategy;
.super Lcom/miui/launcher/overlay/client/ServiceConnectionStrategy;
.source "WaivePriorityServiceConnectionStrategy.java"


# instance fields
.field private isShowingOverlay:Z

.field protected final mPersistentConnection:Lcom/miui/launcher/overlay/client/PersistentLauncherOverlayConnection;

.field protected final mPriorityConnection:Lcom/miui/launcher/overlay/client/LauncherOverlayConnection;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/miui/launcher/overlay/client/ServiceConnectionStrategy;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lcom/miui/launcher/overlay/client/WaivePriorityServiceConnectionStrategy;->isShowingOverlay:Z

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 38
    new-instance v0, Lcom/miui/launcher/overlay/client/LauncherOverlayConnection;

    const/16 v1, 0x41

    invoke-direct {v0, p1, v1, p2}, Lcom/miui/launcher/overlay/client/LauncherOverlayConnection;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/miui/launcher/overlay/client/WaivePriorityServiceConnectionStrategy;->mPriorityConnection:Lcom/miui/launcher/overlay/client/LauncherOverlayConnection;

    .line 40
    invoke-static {p1, p2}, Lcom/miui/launcher/overlay/client/PersistentLauncherOverlayConnection;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/launcher/overlay/client/PersistentLauncherOverlayConnection;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/launcher/overlay/client/WaivePriorityServiceConnectionStrategy;->mPersistentConnection:Lcom/miui/launcher/overlay/client/PersistentLauncherOverlayConnection;

    return-void
.end method


# virtual methods
.method public bindClient(Lcom/miui/launcher/overlay/client/LauncherClient;)Lcom/miui/launcher/overlay/ILauncherOverlay;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/miui/launcher/overlay/client/WaivePriorityServiceConnectionStrategy;->mPersistentConnection:Lcom/miui/launcher/overlay/client/PersistentLauncherOverlayConnection;

    invoke-virtual {p0, p1}, Lcom/miui/launcher/overlay/client/PersistentLauncherOverlayConnection;->bindClient(Lcom/miui/launcher/overlay/client/LauncherClient;)Lcom/miui/launcher/overlay/ILauncherOverlay;

    move-result-object p0

    return-object p0
.end method

.method public connect(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 79
    iget-boolean p1, p0, Lcom/miui/launcher/overlay/client/WaivePriorityServiceConnectionStrategy;->isShowingOverlay:Z

    if-eqz p1, :cond_0

    .line 80
    iget-object p1, p0, Lcom/miui/launcher/overlay/client/WaivePriorityServiceConnectionStrategy;->mPriorityConnection:Lcom/miui/launcher/overlay/client/LauncherOverlayConnection;

    invoke-virtual {p1}, Lcom/miui/launcher/overlay/client/LauncherOverlayConnection;->connect()Z

    .line 82
    :cond_0
    iget-object p0, p0, Lcom/miui/launcher/overlay/client/WaivePriorityServiceConnectionStrategy;->mPersistentConnection:Lcom/miui/launcher/overlay/client/PersistentLauncherOverlayConnection;

    invoke-virtual {p0}, Lcom/miui/launcher/overlay/client/LauncherOverlayConnection;->connect()Z

    return-void
.end method

.method public disconnect()V
    .locals 2

    const-string v0, "LauncherClient.PersistentConnection"

    const-string v1, "PriorityConnection and PersistentConnection disconnect"

    .line 87
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object v0, p0, Lcom/miui/launcher/overlay/client/WaivePriorityServiceConnectionStrategy;->mPriorityConnection:Lcom/miui/launcher/overlay/client/LauncherOverlayConnection;

    invoke-virtual {v0}, Lcom/miui/launcher/overlay/client/LauncherOverlayConnection;->disconnect()V

    .line 89
    iget-object p0, p0, Lcom/miui/launcher/overlay/client/WaivePriorityServiceConnectionStrategy;->mPersistentConnection:Lcom/miui/launcher/overlay/client/PersistentLauncherOverlayConnection;

    invoke-virtual {p0}, Lcom/miui/launcher/overlay/client/LauncherOverlayConnection;->disconnect()V

    return-void
.end method

.method public hideOverlay()V
    .locals 1

    const/4 v0, 0x0

    .line 67
    iput-boolean v0, p0, Lcom/miui/launcher/overlay/client/WaivePriorityServiceConnectionStrategy;->isShowingOverlay:Z

    .line 68
    iget-object p0, p0, Lcom/miui/launcher/overlay/client/WaivePriorityServiceConnectionStrategy;->mPriorityConnection:Lcom/miui/launcher/overlay/client/LauncherOverlayConnection;

    invoke-virtual {p0}, Lcom/miui/launcher/overlay/client/LauncherOverlayConnection;->disconnect()V

    return-void
.end method

.method public onDestroy(Lcom/miui/launcher/overlay/client/LauncherClient;Z)V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/miui/launcher/overlay/client/WaivePriorityServiceConnectionStrategy;->mPriorityConnection:Lcom/miui/launcher/overlay/client/LauncherOverlayConnection;

    invoke-virtual {v0}, Lcom/miui/launcher/overlay/client/LauncherOverlayConnection;->disconnect()V

    .line 62
    iget-object p0, p0, Lcom/miui/launcher/overlay/client/WaivePriorityServiceConnectionStrategy;->mPersistentConnection:Lcom/miui/launcher/overlay/client/PersistentLauncherOverlayConnection;

    invoke-virtual {p0, p1, p2}, Lcom/miui/launcher/overlay/client/PersistentLauncherOverlayConnection;->unbindClient(Lcom/miui/launcher/overlay/client/LauncherClient;Z)V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 50
    iget-object p0, p0, Lcom/miui/launcher/overlay/client/WaivePriorityServiceConnectionStrategy;->mPersistentConnection:Lcom/miui/launcher/overlay/client/PersistentLauncherOverlayConnection;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/launcher/overlay/client/PersistentLauncherOverlayConnection;->setStopped(Z)V

    return-void
.end method

.method onStop()V
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/miui/launcher/overlay/client/WaivePriorityServiceConnectionStrategy;->mPersistentConnection:Lcom/miui/launcher/overlay/client/PersistentLauncherOverlayConnection;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/launcher/overlay/client/PersistentLauncherOverlayConnection;->setStopped(Z)V

    .line 56
    iget-object p0, p0, Lcom/miui/launcher/overlay/client/WaivePriorityServiceConnectionStrategy;->mPriorityConnection:Lcom/miui/launcher/overlay/client/LauncherOverlayConnection;

    invoke-virtual {p0}, Lcom/miui/launcher/overlay/client/LauncherOverlayConnection;->disconnect()V

    return-void
.end method

.method public showOverlay()V
    .locals 1

    const/4 v0, 0x1

    .line 73
    iput-boolean v0, p0, Lcom/miui/launcher/overlay/client/WaivePriorityServiceConnectionStrategy;->isShowingOverlay:Z

    .line 74
    iget-object p0, p0, Lcom/miui/launcher/overlay/client/WaivePriorityServiceConnectionStrategy;->mPriorityConnection:Lcom/miui/launcher/overlay/client/LauncherOverlayConnection;

    invoke-virtual {p0}, Lcom/miui/launcher/overlay/client/LauncherOverlayConnection;->connect()Z

    return-void
.end method
