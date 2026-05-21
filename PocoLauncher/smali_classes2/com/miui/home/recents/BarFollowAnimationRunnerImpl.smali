.class public Lcom/miui/home/recents/BarFollowAnimationRunnerImpl;
.super Ljava/lang/Object;
.source "BarFollowAnimationRunnerImpl.java"

# interfaces
.implements Lcom/android/systemui/shared/recents/system/BarFollowAnimationListener;


# instance fields
.field private mGestureStateDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private mGestureStateUpdateCallback:Landroid/window/IGestureStateUpdateCallback;


# direct methods
.method public static synthetic $r8$lambda$cu4K2ys_633gNF-6hrIC-1IVaDU(Lcom/miui/home/recents/BarFollowAnimationRunnerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/recents/BarFollowAnimationRunnerImpl;->lambda$new$0()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Lcom/miui/home/recents/BarFollowAnimationRunnerImpl$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/BarFollowAnimationRunnerImpl$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/recents/BarFollowAnimationRunnerImpl;)V

    iput-object v0, p0, Lcom/miui/home/recents/BarFollowAnimationRunnerImpl;->mGestureStateDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 2

    const-string v0, "IBarFollowAnimationRunnerImpl"

    const-string v1, "onGestureStateUpdated binderDied."

    .line 14
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    invoke-virtual {p0}, Lcom/miui/home/recents/BarFollowAnimationRunnerImpl;->unlinkAndReset()V

    return-void
.end method


# virtual methods
.method public onGestureStateUpdateCallback(Landroid/window/IGestureStateUpdateCallback;)V
    .locals 2

    const-string v0, "IBarFollowAnimationRunnerImpl"

    if-nez p1, :cond_0

    const-string p0, "cur gesture state update callback is null."

    .line 21
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 24
    :cond_0
    iput-object p1, p0, Lcom/miui/home/recents/BarFollowAnimationRunnerImpl;->mGestureStateUpdateCallback:Landroid/window/IGestureStateUpdateCallback;

    .line 26
    :try_start_0
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    iget-object p0, p0, Lcom/miui/home/recents/BarFollowAnimationRunnerImpl;->mGestureStateDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v1, 0x0

    invoke-interface {p1, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "onGestureStateUpdated ex:"

    .line 28
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public unlinkAndReset()V
    .locals 3

    .line 33
    iget-object v0, p0, Lcom/miui/home/recents/BarFollowAnimationRunnerImpl;->mGestureStateUpdateCallback:Landroid/window/IGestureStateUpdateCallback;

    if-eqz v0, :cond_0

    .line 34
    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/BarFollowAnimationRunnerImpl;->mGestureStateDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcom/miui/home/recents/BarFollowAnimationRunnerImpl;->mGestureStateUpdateCallback:Landroid/window/IGestureStateUpdateCallback;

    :cond_0
    return-void
.end method

.method public updateGestureStateToRemote(I)V
    .locals 3

    const-string v0, "IBarFollowAnimationRunnerImpl"

    .line 40
    iget-object v1, p0, Lcom/miui/home/recents/BarFollowAnimationRunnerImpl;->mGestureStateUpdateCallback:Landroid/window/IGestureStateUpdateCallback;

    if-eqz v1, :cond_0

    .line 42
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateGestureStateToRemote state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    iget-object p0, p0, Lcom/miui/home/recents/BarFollowAnimationRunnerImpl;->mGestureStateUpdateCallback:Landroid/window/IGestureStateUpdateCallback;

    invoke-interface {p0, p1}, Landroid/window/IGestureStateUpdateCallback;->onGestureStateUpdated(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "updateGestureStateToRemote ex: "

    .line 45
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method
