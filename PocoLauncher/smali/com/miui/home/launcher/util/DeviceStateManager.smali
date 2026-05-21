.class public Lcom/miui/home/launcher/util/DeviceStateManager;
.super Ljava/lang/Object;
.source "DeviceStateManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/util/DeviceStateManager$FoldStateListenerHolder;
    }
.end annotation


# static fields
.field public static final STATE_FOLDED:Ljava/lang/Integer;

.field private static sDeviceStateCallback:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static sDeviceStateManager:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static sFoldStateListener:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "android.hardware.devicestate.DeviceStateManager"

    .line 21
    invoke-static {v0}, Lcom/miui/launcher/utils/ReflectUtils;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/util/DeviceStateManager;->sDeviceStateManager:Ljava/lang/Class;

    const-string v0, "android.hardware.devicestate.DeviceStateManager$FoldStateListener"

    .line 22
    invoke-static {v0}, Lcom/miui/launcher/utils/ReflectUtils;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/util/DeviceStateManager;->sFoldStateListener:Ljava/lang/Class;

    const-string v0, "android.hardware.devicestate.DeviceStateManager$DeviceStateCallback"

    .line 23
    invoke-static {v0}, Lcom/miui/launcher/utils/ReflectUtils;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/util/DeviceStateManager;->sDeviceStateCallback:Ljava/lang/Class;

    const/4 v0, 0x0

    .line 57
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/util/DeviceStateManager;->STATE_FOLDED:Ljava/lang/Integer;

    return-void
.end method

.method public static getCurrentState()Ljava/lang/Integer;
    .locals 5

    .line 59
    invoke-static {}, Lcom/miui/home/launcher/util/DeviceStateManager;->getDeviceStateManager()Ljava/lang/Object;

    move-result-object v0

    const-class v1, Ljava/lang/Integer;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "getCurrentState"

    const/4 v4, 0x0

    invoke-static {v0, v1, v3, v4, v2}, Lcom/miui/launcher/utils/ReflectUtils;->callObjectMethod(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public static getDeviceStateManager()Ljava/lang/Object;
    .locals 3

    .line 27
    sget-object v0, Lcom/miui/home/launcher/util/DeviceStateManager;->sDeviceStateManager:Ljava/lang/Class;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/miui/launcher/utils/ReflectUtils;->createNewInstance(Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getFoldStateListener(Landroid/content/Context;Ljava/util/function/Consumer;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 31
    sget-object v0, Lcom/miui/home/launcher/util/DeviceStateManager;->sFoldStateListener:Ljava/lang/Class;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Ljava/util/function/Consumer;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v4

    aput-object p1, v1, v5

    invoke-static {v0, v2, v1}, Lcom/miui/launcher/utils/ReflectUtils;->createNewInstance(Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static registerFoldStateCallback(Ljava/util/concurrent/Executor;Landroid/content/Context;Ljava/util/function/Consumer;)Lcom/miui/home/launcher/util/DeviceStateManager$FoldStateListenerHolder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Landroid/content/Context;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/miui/home/launcher/util/DeviceStateManager$FoldStateListenerHolder;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 39
    :cond_0
    invoke-static {p1, p2}, Lcom/miui/home/launcher/util/DeviceStateManager;->getFoldStateListener(Landroid/content/Context;Ljava/util/function/Consumer;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 41
    invoke-static {}, Lcom/miui/home/launcher/util/DeviceStateManager;->getDeviceStateManager()Ljava/lang/Object;

    move-result-object v0

    const-class v1, Ljava/lang/Void;

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/util/concurrent/Executor;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Lcom/miui/home/launcher/util/DeviceStateManager;->sDeviceStateCallback:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    aput-object p1, v2, v6

    const-string p0, "registerCallback"

    invoke-static {v0, v1, p0, v3, v2}, Lcom/miui/launcher/utils/ReflectUtils;->callObjectMethod(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    new-instance p0, Lcom/miui/home/launcher/util/DeviceStateManager$FoldStateListenerHolder;

    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/util/DeviceStateManager$FoldStateListenerHolder;-><init>(Ljava/lang/Object;Ljava/util/function/Consumer;)V

    return-object p0

    :cond_1
    return-object v0

    .line 36
    :cond_2
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerFoldStateCallback: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, ""

    if-nez p0, :cond_3

    const-string p1, "context is null"

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_4

    const-string p1, "listener is null"

    :cond_4
    :goto_1
    const-string p0, "DeviceStateManager"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static unregisterFoldStateCallback(Lcom/miui/home/launcher/util/DeviceStateManager$FoldStateListenerHolder;)V
    .locals 6

    if-eqz p0, :cond_0

    .line 48
    invoke-virtual {p0}, Lcom/miui/home/launcher/util/DeviceStateManager$FoldStateListenerHolder;->getCallback()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 49
    invoke-static {}, Lcom/miui/home/launcher/util/DeviceStateManager;->getDeviceStateManager()Ljava/lang/Object;

    move-result-object v0

    const-class v1, Ljava/lang/Void;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Lcom/miui/home/launcher/util/DeviceStateManager;->sDeviceStateCallback:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/miui/home/launcher/util/DeviceStateManager$FoldStateListenerHolder;->getCallback()Ljava/lang/Object;

    move-result-object p0

    aput-object p0, v2, v5

    const-string/jumbo p0, "unregisterCallback"

    invoke-static {v0, v1, p0, v3, v2}, Lcom/miui/launcher/utils/ReflectUtils;->callObjectMethod(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
