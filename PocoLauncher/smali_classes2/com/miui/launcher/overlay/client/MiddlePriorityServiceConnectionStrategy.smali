.class public Lcom/miui/launcher/overlay/client/MiddlePriorityServiceConnectionStrategy;
.super Lcom/miui/launcher/overlay/client/WaivePriorityServiceConnectionStrategy;
.source "MiddlePriorityServiceConnectionStrategy.java"


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2}, Lcom/miui/launcher/overlay/client/WaivePriorityServiceConnectionStrategy;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 9
    iget-object p1, p0, Lcom/miui/launcher/overlay/client/WaivePriorityServiceConnectionStrategy;->mPersistentConnection:Lcom/miui/launcher/overlay/client/PersistentLauncherOverlayConnection;

    invoke-virtual {p1, p0}, Lcom/miui/launcher/overlay/client/PersistentLauncherOverlayConnection;->setStrategy(Lcom/miui/launcher/overlay/client/ServiceConnectionStrategy;)V

    return-void
.end method


# virtual methods
.method public connect(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 22
    iget-object p1, p0, Lcom/miui/launcher/overlay/client/WaivePriorityServiceConnectionStrategy;->mPriorityConnection:Lcom/miui/launcher/overlay/client/LauncherOverlayConnection;

    invoke-virtual {p1}, Lcom/miui/launcher/overlay/client/LauncherOverlayConnection;->connect()Z

    .line 24
    :cond_0
    iget-object p0, p0, Lcom/miui/launcher/overlay/client/WaivePriorityServiceConnectionStrategy;->mPersistentConnection:Lcom/miui/launcher/overlay/client/PersistentLauncherOverlayConnection;

    invoke-virtual {p0}, Lcom/miui/launcher/overlay/client/LauncherOverlayConnection;->connect()Z

    return-void
.end method

.method public showOverlay()V
    .locals 0

    return-void
.end method
