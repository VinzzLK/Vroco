.class public final Lcom/miui/home/recents/event/RemoteTransitionInfo;
.super Lcom/miui/home/recents/event/EventInfo;
.source "TransitionReceivedEvent.kt"


# instance fields
.field private final finishCallback:Landroid/window/IRemoteTransitionFinishedCallback;

.field private final info:Landroid/window/TransitionInfo;

.field private final isMerge:Z

.field private final mergeTarget:Landroid/os/IBinder;

.field private final t:Landroid/view/SurfaceControl$Transaction;

.field private final token:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/window/IRemoteTransitionFinishedCallback;ZLandroid/os/IBinder;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/miui/home/recents/event/EventInfo;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/miui/home/recents/event/RemoteTransitionInfo;->token:Landroid/os/IBinder;

    .line 19
    iput-object p2, p0, Lcom/miui/home/recents/event/RemoteTransitionInfo;->info:Landroid/window/TransitionInfo;

    .line 20
    iput-object p3, p0, Lcom/miui/home/recents/event/RemoteTransitionInfo;->t:Landroid/view/SurfaceControl$Transaction;

    .line 21
    iput-object p4, p0, Lcom/miui/home/recents/event/RemoteTransitionInfo;->finishCallback:Landroid/window/IRemoteTransitionFinishedCallback;

    .line 22
    iput-boolean p5, p0, Lcom/miui/home/recents/event/RemoteTransitionInfo;->isMerge:Z

    .line 23
    iput-object p6, p0, Lcom/miui/home/recents/event/RemoteTransitionInfo;->mergeTarget:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/miui/home/recents/event/RemoteTransitionInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/miui/home/recents/event/RemoteTransitionInfo;

    iget-object v1, p0, Lcom/miui/home/recents/event/RemoteTransitionInfo;->token:Landroid/os/IBinder;

    iget-object v3, p1, Lcom/miui/home/recents/event/RemoteTransitionInfo;->token:Landroid/os/IBinder;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/miui/home/recents/event/RemoteTransitionInfo;->info:Landroid/window/TransitionInfo;

    iget-object v3, p1, Lcom/miui/home/recents/event/RemoteTransitionInfo;->info:Landroid/window/TransitionInfo;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/miui/home/recents/event/RemoteTransitionInfo;->t:Landroid/view/SurfaceControl$Transaction;

    iget-object v3, p1, Lcom/miui/home/recents/event/RemoteTransitionInfo;->t:Landroid/view/SurfaceControl$Transaction;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/miui/home/recents/event/RemoteTransitionInfo;->finishCallback:Landroid/window/IRemoteTransitionFinishedCallback;

    iget-object v3, p1, Lcom/miui/home/recents/event/RemoteTransitionInfo;->finishCallback:Landroid/window/IRemoteTransitionFinishedCallback;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-boolean v1, p0, Lcom/miui/home/recents/event/RemoteTransitionInfo;->isMerge:Z

    iget-boolean v3, p1, Lcom/miui/home/recents/event/RemoteTransitionInfo;->isMerge:Z

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-object p0, p0, Lcom/miui/home/recents/event/RemoteTransitionInfo;->mergeTarget:Landroid/os/IBinder;

    iget-object p1, p1, Lcom/miui/home/recents/event/RemoteTransitionInfo;->mergeTarget:Landroid/os/IBinder;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final getFinishCallback()Landroid/window/IRemoteTransitionFinishedCallback;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/miui/home/recents/event/RemoteTransitionInfo;->finishCallback:Landroid/window/IRemoteTransitionFinishedCallback;

    return-object p0
.end method

.method public final getInfo()Landroid/window/TransitionInfo;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/miui/home/recents/event/RemoteTransitionInfo;->info:Landroid/window/TransitionInfo;

    return-object p0
.end method

.method public final getMergeTarget()Landroid/os/IBinder;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/miui/home/recents/event/RemoteTransitionInfo;->mergeTarget:Landroid/os/IBinder;

    return-object p0
.end method

.method public final getT()Landroid/view/SurfaceControl$Transaction;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/miui/home/recents/event/RemoteTransitionInfo;->t:Landroid/view/SurfaceControl$Transaction;

    return-object p0
.end method

.method public final getToken()Landroid/os/IBinder;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/miui/home/recents/event/RemoteTransitionInfo;->token:Landroid/os/IBinder;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/miui/home/recents/event/RemoteTransitionInfo;->token:Landroid/os/IBinder;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/miui/home/recents/event/RemoteTransitionInfo;->info:Landroid/window/TransitionInfo;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/miui/home/recents/event/RemoteTransitionInfo;->t:Landroid/view/SurfaceControl$Transaction;

    if-nez v2, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Landroid/view/SurfaceControl$Transaction;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/miui/home/recents/event/RemoteTransitionInfo;->finishCallback:Landroid/window/IRemoteTransitionFinishedCallback;

    if-nez v2, :cond_3

    move v2, v1

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/miui/home/recents/event/RemoteTransitionInfo;->isMerge:Z

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    :cond_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/miui/home/recents/event/RemoteTransitionInfo;->mergeTarget:Landroid/os/IBinder;

    if-nez p0, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_4
    add-int/2addr v0, v1

    return v0
.end method

.method public final isMerge()Z
    .locals 0

    .line 22
    iget-boolean p0, p0, Lcom/miui/home/recents/event/RemoteTransitionInfo;->isMerge:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RemoteTransitionInfo(token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/recents/event/RemoteTransitionInfo;->token:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", info="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/recents/event/RemoteTransitionInfo;->info:Landroid/window/TransitionInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", t="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/recents/event/RemoteTransitionInfo;->t:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", finishCallback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/recents/event/RemoteTransitionInfo;->finishCallback:Landroid/window/IRemoteTransitionFinishedCallback;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isMerge="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/home/recents/event/RemoteTransitionInfo;->isMerge:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mergeTarget="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/miui/home/recents/event/RemoteTransitionInfo;->mergeTarget:Landroid/os/IBinder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
