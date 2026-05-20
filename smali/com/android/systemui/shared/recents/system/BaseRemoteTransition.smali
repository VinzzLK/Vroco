.class public abstract Lcom/android/systemui/shared/recents/system/BaseRemoteTransition;
.super Landroid/window/IHyperRemoteTransition$Stub;
.source "BaseRemoteTransition.java"


# instance fields
.field private TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Landroid/window/IHyperRemoteTransition$Stub;-><init>()V

    const-string v0, "BaseRemoteTransition"

    .line 11
    iput-object v0, p0, Lcom/android/systemui/shared/recents/system/BaseRemoteTransition;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAnimOpenedRotationFromInfo(Landroid/window/ActivityStartInfo;)I
    .locals 5

    const/4 v0, 0x0

    .line 23
    :try_start_0
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v2, "isFixedRotation"

    new-array v3, v0, [Ljava/lang/Class;

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {p1, v1, v2, v3, v4}, Lcom/miui/launcher/utils/ReflectUtils;->callObjectMethod(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 29
    iget-object p0, p0, Lcom/android/systemui/shared/recents/system/BaseRemoteTransition;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAnimOpenedRotationFromInfo: animOpenedRotation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p0

    .line 32
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method public onTransitionAbort(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public startActivityFinished(Landroid/window/ActivityStartInfo;Landroid/window/IHyperRemoteTransitionFinishedCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14
    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/recents/system/BaseRemoteTransition;->getAnimOpenedRotationFromInfo(Landroid/window/ActivityStartInfo;)I

    move-result p0

    invoke-static {p0}, Lcom/android/systemui/shared/recents/system/UserGestureProxyPositionHelper;->updateAnimOpenedRotation(I)V

    return-void
.end method
