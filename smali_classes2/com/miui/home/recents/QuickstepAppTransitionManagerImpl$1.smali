.class Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$1;
.super Landroid/window/IRemoteTransition$Stub;
.source "QuickstepAppTransitionManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$1;->this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    invoke-direct {p0}, Landroid/window/IRemoteTransition$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public mergeAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/os/IBinder;Landroid/window/IRemoteTransitionFinishedCallback;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 170
    sget-object p0, Lcom/miui/home/recents/anim/StateManager;->Companion:Lcom/miui/home/recents/anim/StateManager$Companion;

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object p0

    new-instance v0, Lcom/miui/home/recents/event/RemoteTransitionReceivedEvent;

    new-instance v8, Lcom/miui/home/recents/event/RemoteTransitionInfo;

    const/4 v6, 0x1

    move-object v1, v8

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p5

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/miui/home/recents/event/RemoteTransitionInfo;-><init>(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/window/IRemoteTransitionFinishedCallback;ZLandroid/os/IBinder;)V

    invoke-direct {v0, v8}, Lcom/miui/home/recents/event/RemoteTransitionReceivedEvent;-><init>(Lcom/miui/home/recents/event/RemoteTransitionInfo;)V

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/anim/StateManager;->sendEvent(Lcom/miui/home/recents/event/Event;)V

    return-void
.end method

.method public onTransitionConsumed(Landroid/os/IBinder;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/window/IRemoteTransitionFinishedCallback;)V
    .locals 9

    .line 165
    sget-object p0, Lcom/miui/home/recents/anim/StateManager;->Companion:Lcom/miui/home/recents/anim/StateManager$Companion;

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object p0

    new-instance v0, Lcom/miui/home/recents/event/RemoteTransitionReceivedEvent;

    new-instance v8, Lcom/miui/home/recents/event/RemoteTransitionInfo;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v8

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v7}, Lcom/miui/home/recents/event/RemoteTransitionInfo;-><init>(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/window/IRemoteTransitionFinishedCallback;ZLandroid/os/IBinder;)V

    invoke-direct {v0, v8}, Lcom/miui/home/recents/event/RemoteTransitionReceivedEvent;-><init>(Lcom/miui/home/recents/event/RemoteTransitionInfo;)V

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/anim/StateManager;->sendEvent(Lcom/miui/home/recents/event/Event;)V

    return-void
.end method
