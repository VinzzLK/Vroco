.class public Lmiuix/mimotion/MiMotionCloudConfig;
.super Ljava/lang/Object;
.source "MiMotionCloudConfig.java"


# static fields
.field private static sInstance:Lmiuix/mimotion/MiMotionCloudConfig;


# instance fields
.field mMimotionModeService:Lcom/xiaomi/mimotion/IMimotionModeService;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "MimotionModeService"

    .line 17
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 18
    invoke-static {v0}, Lcom/xiaomi/mimotion/IMimotionModeService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaomi/mimotion/IMimotionModeService;

    move-result-object v0

    iput-object v0, p0, Lmiuix/mimotion/MiMotionCloudConfig;->mMimotionModeService:Lcom/xiaomi/mimotion/IMimotionModeService;

    return-void
.end method

.method public static getInstance()Lmiuix/mimotion/MiMotionCloudConfig;
    .locals 1

    .line 22
    sget-object v0, Lmiuix/mimotion/MiMotionCloudConfig;->sInstance:Lmiuix/mimotion/MiMotionCloudConfig;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Lmiuix/mimotion/MiMotionCloudConfig;

    invoke-direct {v0}, Lmiuix/mimotion/MiMotionCloudConfig;-><init>()V

    sput-object v0, Lmiuix/mimotion/MiMotionCloudConfig;->sInstance:Lmiuix/mimotion/MiMotionCloudConfig;

    .line 25
    :cond_0
    sget-object v0, Lmiuix/mimotion/MiMotionCloudConfig;->sInstance:Lmiuix/mimotion/MiMotionCloudConfig;

    return-object v0
.end method


# virtual methods
.method public getRefreshRateSpeedLimitsDp()[I
    .locals 3

    .line 32
    iget-object p0, p0, Lmiuix/mimotion/MiMotionCloudConfig;->mMimotionModeService:Lcom/xiaomi/mimotion/IMimotionModeService;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 36
    :cond_0
    :try_start_0
    invoke-interface {p0}, Lcom/xiaomi/mimotion/IMimotionModeService;->getRefreshRateSpeedLimitsDp()[I

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get refresh rate speed limits from cloud failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "MiMotionCloudConfig"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method
