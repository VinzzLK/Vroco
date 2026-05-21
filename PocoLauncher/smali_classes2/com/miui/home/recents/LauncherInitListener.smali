.class public Lcom/miui/home/recents/LauncherInitListener;
.super Lcom/miui/home/recents/InternalStateHandler;
.source "LauncherInitListener.java"

# interfaces
.implements Lcom/miui/home/recents/ActivityControlHelper$ActivityInitListener;


# instance fields
.field private final mOnInitListener:Ljava/util/function/BiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiPredicate<",
            "Lcom/miui/home/launcher/Launcher;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mRemoteAnimationProvider:Lcom/miui/home/recents/util/RemoteAnimationProvider;


# direct methods
.method public static synthetic $r8$lambda$cqDL3j9aG10oFZ3T29ddGwG9ndk(Lcom/miui/home/recents/LauncherInitListener;Landroid/os/CancellationSignal;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Landroid/animation/AnimatorSet;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/home/recents/LauncherInitListener;->lambda$init$0(Landroid/os/CancellationSignal;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Landroid/animation/AnimatorSet;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Ljava/util/function/BiPredicate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiPredicate<",
            "Lcom/miui/home/launcher/Launcher;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Lcom/miui/home/recents/InternalStateHandler;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/miui/home/recents/LauncherInitListener;->mOnInitListener:Ljava/util/function/BiPredicate;

    return-void
.end method

.method private synthetic lambda$init$0(Landroid/os/CancellationSignal;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Landroid/animation/AnimatorSet;
    .locals 2

    .line 47
    invoke-virtual {p1}, Landroid/os/CancellationSignal;->cancel()V

    .line 48
    iget-object p1, p0, Lcom/miui/home/recents/LauncherInitListener;->mRemoteAnimationProvider:Lcom/miui/home/recents/util/RemoteAnimationProvider;

    const/4 v0, 0x0

    .line 49
    iput-object v0, p0, Lcom/miui/home/recents/LauncherInitListener;->mRemoteAnimationProvider:Lcom/miui/home/recents/util/RemoteAnimationProvider;

    .line 51
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherStateManager;->getState()Lcom/miui/home/launcher/LauncherState;

    move-result-object p0

    sget-object v1, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    if-ne p0, v1, :cond_0

    .line 54
    invoke-interface {p1, p2}, Lcom/miui/home/recents/util/RemoteAnimationProvider;->createWindowAnimation([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Landroid/animation/AnimatorSet;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
.end method


# virtual methods
.method protected init(Lcom/miui/home/launcher/Launcher;Z)Z
    .locals 3

    .line 37
    iget-object v0, p0, Lcom/miui/home/recents/LauncherInitListener;->mRemoteAnimationProvider:Lcom/miui/home/recents/util/RemoteAnimationProvider;

    if-eqz v0, :cond_0

    .line 39
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getAppTransitionManager()Lcom/miui/home/recents/LauncherAppTransitionManager;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    .line 43
    new-instance v1, Landroid/os/CancellationSignal;

    invoke-direct {v1}, Landroid/os/CancellationSignal;-><init>()V

    .line 44
    new-instance v2, Lcom/miui/home/recents/LauncherInitListener$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v1}, Lcom/miui/home/recents/LauncherInitListener$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/recents/LauncherInitListener;Landroid/os/CancellationSignal;)V

    invoke-virtual {v0, v2, v1}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->setRemoteAnimationProvider(Lcom/miui/home/recents/util/RemoteAnimationProvider;Landroid/os/CancellationSignal;)V

    .line 59
    :cond_0
    iget-object p0, p0, Lcom/miui/home/recents/LauncherInitListener;->mOnInitListener:Ljava/util/function/BiPredicate;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public register()V
    .locals 0

    .line 64
    invoke-virtual {p0}, Lcom/miui/home/recents/InternalStateHandler;->initWhenReady()V

    return-void
.end method

.method public registerAndStartActivity(Landroid/content/Intent;Lcom/miui/home/recents/util/RemoteAnimationProvider;Landroid/content/Context;Landroid/os/Handler;J)V
    .locals 0

    .line 76
    iput-object p2, p0, Lcom/miui/home/recents/LauncherInitListener;->mRemoteAnimationProvider:Lcom/miui/home/recents/util/RemoteAnimationProvider;

    .line 78
    invoke-virtual {p0}, Lcom/miui/home/recents/LauncherInitListener;->register()V

    .line 79
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {p0, p2}, Lcom/miui/home/recents/InternalStateHandler;->addToIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p0

    .line 80
    sget-object p1, Lcom/miui/home/recents/anim/StateManager;->Companion:Lcom/miui/home/recents/anim/StateManager$Companion;

    invoke-virtual {p1}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object p1

    new-instance p2, Lcom/miui/home/recents/event/MenuClickEvent;

    new-instance p4, Lcom/miui/home/recents/event/MenuClickEventInfo;

    invoke-direct {p4, p3, p0}, Lcom/miui/home/recents/event/MenuClickEventInfo;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-direct {p2, p4}, Lcom/miui/home/recents/event/MenuClickEvent;-><init>(Lcom/miui/home/recents/event/MenuClickEventInfo;)V

    invoke-virtual {p1, p2}, Lcom/miui/home/recents/anim/StateManager;->sendEvent(Lcom/miui/home/recents/event/Event;)V

    return-void
.end method

.method public unregister()V
    .locals 1

    const/4 v0, 0x0

    .line 69
    iput-object v0, p0, Lcom/miui/home/recents/LauncherInitListener;->mRemoteAnimationProvider:Lcom/miui/home/recents/util/RemoteAnimationProvider;

    .line 70
    invoke-virtual {p0}, Lcom/miui/home/recents/InternalStateHandler;->clearReference()Z

    return-void
.end method
