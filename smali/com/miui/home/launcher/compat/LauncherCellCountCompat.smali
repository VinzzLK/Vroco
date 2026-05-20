.class public abstract Lcom/miui/home/launcher/compat/LauncherCellCountCompat;
.super Lcom/miui/home/launcher/compat/LauncherCellCount;
.source "LauncherCellCountCompat.java"


# static fields
.field private static volatile sInstance:Lcom/miui/home/launcher/compat/LauncherCellCount;

.field private static final sInstanceLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/compat/LauncherCellCountCompat;->sInstanceLock:Ljava/lang/Object;

    return-void
.end method

.method public static getInstance()Lcom/miui/home/launcher/compat/LauncherCellCount;
    .locals 4

    .line 21
    sget-object v0, Lcom/miui/home/launcher/compat/LauncherCellCountCompat;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 22
    :try_start_0
    sget-object v1, Lcom/miui/home/launcher/compat/LauncherCellCountCompat;->sInstance:Lcom/miui/home/launcher/compat/LauncherCellCount;

    if-nez v1, :cond_3

    .line 23
    sget-boolean v1, Lcom/miui/home/launcher/DeviceConfig;->IS_SB_BUILD:Z

    if-nez v1, :cond_2

    sget-boolean v1, Lcom/miui/home/launcher/DeviceConfig;->IS_KDDI_BUILD:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 26
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFoldDevice()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 27
    new-instance v1, Lcom/miui/home/launcher/compat/LauncherCellCountCompatDeviceFold;

    invoke-direct {v1}, Lcom/miui/home/launcher/compat/LauncherCellCountCompatDeviceFold;-><init>()V

    sput-object v1, Lcom/miui/home/launcher/compat/LauncherCellCountCompat;->sInstance:Lcom/miui/home/launcher/compat/LauncherCellCount;

    goto :goto_1

    .line 29
    :cond_1
    new-instance v1, Lcom/miui/home/launcher/compat/LauncherCellCountDefaultMin;

    invoke-direct {v1}, Lcom/miui/home/launcher/compat/LauncherCellCountDefaultMin;-><init>()V

    sput-object v1, Lcom/miui/home/launcher/compat/LauncherCellCountCompat;->sInstance:Lcom/miui/home/launcher/compat/LauncherCellCount;

    goto :goto_1

    .line 25
    :cond_2
    :goto_0
    new-instance v1, Lcom/miui/home/launcher/compat/LauncherCellCountDefaultMax;

    invoke-direct {v1}, Lcom/miui/home/launcher/compat/LauncherCellCountDefaultMax;-><init>()V

    sput-object v1, Lcom/miui/home/launcher/compat/LauncherCellCountCompat;->sInstance:Lcom/miui/home/launcher/compat/LauncherCellCount;

    :goto_1
    const-string v1, "Launcher.CellCount"

    .line 31
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "new compat:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/miui/home/launcher/compat/LauncherCellCountCompat;->sInstance:Lcom/miui/home/launcher/compat/LauncherCellCount;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    :cond_3
    sget-object v1, Lcom/miui/home/launcher/compat/LauncherCellCountCompat;->sInstance:Lcom/miui/home/launcher/compat/LauncherCellCount;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 34
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
