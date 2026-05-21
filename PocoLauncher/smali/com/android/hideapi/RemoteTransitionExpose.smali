.class public Lcom/android/hideapi/RemoteTransitionExpose;
.super Ljava/lang/Object;
.source "RemoteTransitionExpose.java"


# direct methods
.method public static newInstance(Landroid/window/IRemoteTransition;)Landroid/window/RemoteTransition;
    .locals 5

    .line 13
    const-class v0, Landroid/window/RemoteTransition;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/window/IRemoteTransition;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v4

    invoke-static {v0, v2, v1}, Lcom/miui/launcher/utils/ReflectUtils;->createNewInstance(Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/window/RemoteTransition;

    return-object p0
.end method

.method public static newInstance(Landroid/window/IRemoteTransition;Landroid/app/IApplicationThread;Ljava/lang/String;)Landroid/window/RemoteTransition;
    .locals 7

    .line 22
    const-class v0, Landroid/window/RemoteTransition;

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/window/IRemoteTransition;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Landroid/app/IApplicationThread;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-class v3, Ljava/lang/String;

    const/4 v6, 0x2

    aput-object v3, v2, v6

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v4

    aput-object p1, v1, v5

    aput-object p2, v1, v6

    invoke-static {v0, v2, v1}, Lcom/miui/launcher/utils/ReflectUtils;->createNewInstance(Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/window/RemoteTransition;

    return-object p0
.end method

.method public static newInstance(Landroid/window/IRemoteTransition;Landroid/window/IHyperRemoteTransition;)Landroid/window/RemoteTransition;
    .locals 6

    .line 18
    const-class v0, Landroid/window/RemoteTransition;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/window/IRemoteTransition;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Landroid/window/IHyperRemoteTransition;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v4

    aput-object p1, v1, v5

    invoke-static {v0, v2, v1}, Lcom/miui/launcher/utils/ReflectUtils;->createNewInstance(Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/window/RemoteTransition;

    return-object p0
.end method
