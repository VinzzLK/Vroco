.class public Lcom/miui/home/launcher/util/K8FrontCameraManager;
.super Ljava/lang/Object;
.source "K8FrontCameraManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/util/K8FrontCameraManager$SingletonHolder;
    }
.end annotation


# static fields
.field private static final NEED_PAUSE_ADVANCED_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private volatile isFrontCameraActive:Z

.field private final mAvailabilityCallback:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

.field private mCameraManager:Landroid/hardware/camera2/CameraManager;

.field private final mFrontCameraID:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private volatile sIsSetPauseAdvanced:Z


# direct methods
.method public static synthetic $r8$lambda$HXF1EQ0PoklV_UVExdVcpvp_iAg(Lcom/miui/home/launcher/util/K8FrontCameraManager;[IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/util/K8FrontCameraManager;->lambda$setCameraPauseAdvanced$0([IZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$noGWFxeRUNPQZNzJGRRBzq9xyvA(Lcom/miui/home/launcher/util/K8FrontCameraManager;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/util/K8FrontCameraManager;->lambda$unSetCameraPauseAdvanced$1(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com.android.camera"

    .line 36
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/util/K8FrontCameraManager;->NEED_PAUSE_ADVANCED_LIST:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/util/K8FrontCameraManager;->mFrontCameraID:Ljava/util/List;

    .line 83
    new-instance v0, Lcom/miui/home/launcher/util/K8FrontCameraManager$1;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/util/K8FrontCameraManager$1;-><init>(Lcom/miui/home/launcher/util/K8FrontCameraManager;)V

    iput-object v0, p0, Lcom/miui/home/launcher/util/K8FrontCameraManager;->mAvailabilityCallback:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    .line 41
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->IS_K8_PHONE:Z

    if-eqz v0, :cond_0

    .line 42
    new-instance v0, Landroid/os/HandlerThread;

    const/4 v1, -0x2

    const-string v2, "camera_animation"

    invoke-direct {v0, v2, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 43
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 44
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/miui/home/launcher/util/K8FrontCameraManager;->mHandler:Landroid/os/Handler;

    .line 45
    invoke-direct {p0}, Lcom/miui/home/launcher/util/K8FrontCameraManager;->systemReady()V

    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/launcher/util/K8FrontCameraManager$1;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/miui/home/launcher/util/K8FrontCameraManager;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/util/K8FrontCameraManager;)Ljava/util/List;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/miui/home/launcher/util/K8FrontCameraManager;->mFrontCameraID:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$302(Lcom/miui/home/launcher/util/K8FrontCameraManager;Z)Z
    .locals 0

    .line 25
    iput-boolean p1, p0, Lcom/miui/home/launcher/util/K8FrontCameraManager;->isFrontCameraActive:Z

    return p1
.end method

.method static synthetic access$400(Lcom/miui/home/launcher/util/K8FrontCameraManager;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/miui/home/launcher/util/K8FrontCameraManager;->initCameraId()V

    return-void
.end method

.method public static getInstance()Lcom/miui/home/launcher/util/K8FrontCameraManager;
    .locals 1

    .line 49
    invoke-static {}, Lcom/miui/home/launcher/util/K8FrontCameraManager$SingletonHolder;->access$000()Lcom/miui/home/launcher/util/K8FrontCameraManager;

    move-result-object v0

    return-object v0
.end method

.method private initCameraId()V
    .locals 7

    const-string v0, "K8FrontCameraManager"

    .line 62
    :try_start_0
    iget-object v1, p0, Lcom/miui/home/launcher/util/K8FrontCameraManager;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 63
    array-length v2, v1

    if-lez v2, :cond_3

    .line 64
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    .line 65
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/16 v6, 0x64

    if-lt v5, v6, :cond_0

    goto :goto_1

    .line 69
    :cond_0
    iget-object v6, p0, Lcom/miui/home/launcher/util/K8FrontCameraManager;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v6, v4}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v4

    .line 70
    sget-object v6, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v4, v6}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_1

    .line 72
    iget-object v4, p0, Lcom/miui/home/launcher/util/K8FrontCameraManager;->mFrontCameraID:Ljava/util/List;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "add FrontCamera ID"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    const/4 v6, 0x1

    if-ne v4, v6, :cond_2

    .line 75
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "add BackCamera ID"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    const-string p0, "Can\'t initCameraId"

    .line 80
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method private synthetic lambda$setCameraPauseAdvanced$0([IZ)V
    .locals 3

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setCameraPauseAdvanced isFrontCameraActive = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/home/launcher/util/K8FrontCameraManager;->isFrontCameraActive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "   mIsSetPauseAdvanced = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/home/launcher/util/K8FrontCameraManager;->sIsSetPauseAdvanced:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "   runningTaskIds = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    aget v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "K8FrontCameraManager"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-boolean v0, p0, Lcom/miui/home/launcher/util/K8FrontCameraManager;->isFrontCameraActive:Z

    if-eqz v0, :cond_1

    .line 133
    iget-boolean v0, p0, Lcom/miui/home/launcher/util/K8FrontCameraManager;->sIsSetPauseAdvanced:Z

    if-nez v0, :cond_0

    const-string v0, "set PauseAdvanced called"

    .line 134
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-static {}, Lcom/android/hideapi/ActivityTaskManagerExpose;->getService()Lcom/android/hideapi/IActivityTaskManagerExpose;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/hideapi/IActivityTaskManagerExpose;->invokeSetPauseAdvanced([IZ)V

    const/4 p1, 0x1

    .line 136
    iput-boolean p1, p0, Lcom/miui/home/launcher/util/K8FrontCameraManager;->sIsSetPauseAdvanced:Z

    goto :goto_0

    .line 138
    :cond_0
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/util/K8FrontCameraManager;->unSetCameraPauseAdvanced(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$unSetCameraPauseAdvanced$1(Z)V
    .locals 2

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unSetCameraPauseAdvanced resume = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "   mIsSetPauseAdvanced = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/home/launcher/util/K8FrontCameraManager;->sIsSetPauseAdvanced:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "K8FrontCameraManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-boolean v0, p0, Lcom/miui/home/launcher/util/K8FrontCameraManager;->sIsSetPauseAdvanced:Z

    if-eqz v0, :cond_0

    .line 153
    invoke-static {}, Lcom/android/hideapi/ActivityTaskManagerExpose;->getService()Lcom/android/hideapi/IActivityTaskManagerExpose;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/hideapi/IActivityTaskManagerExpose;->unSetPauseAdvanced(Z)V

    const/4 p1, 0x0

    .line 154
    iput-boolean p1, p0, Lcom/miui/home/launcher/util/K8FrontCameraManager;->sIsSetPauseAdvanced:Z

    :cond_0
    return-void
.end method

.method private systemReady()V
    .locals 3

    const-string v0, "K8FrontCameraManager"

    const-string/jumbo v1, "systemReady init"

    .line 55
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const-string v1, "camera"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    iput-object v0, p0, Lcom/miui/home/launcher/util/K8FrontCameraManager;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 57
    iget-object v1, p0, Lcom/miui/home/launcher/util/K8FrontCameraManager;->mAvailabilityCallback:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    iget-object v2, p0, Lcom/miui/home/launcher/util/K8FrontCameraManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CameraManager;->registerAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Landroid/os/Handler;)V

    .line 58
    invoke-direct {p0}, Lcom/miui/home/launcher/util/K8FrontCameraManager;->initCameraId()V

    return-void
.end method


# virtual methods
.method public needPauseAdvance(Ljava/lang/String;)Z
    .locals 2

    .line 117
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/miui/home/launcher/util/K8FrontCameraManager;->NEED_PAUSE_ADVANCED_LIST:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 118
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "needPauseAdvance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "   packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "K8FrontCameraManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public setCameraPauseAdvanced([IZ)V
    .locals 2

    .line 124
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->IS_K8_PHONE:Z

    if-nez v0, :cond_0

    return-void

    .line 127
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/util/UiThreadHelper;->getHandler(Landroid/content/Context;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/util/K8FrontCameraManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Lcom/miui/home/launcher/util/K8FrontCameraManager$$ExternalSyntheticLambda1;-><init>(Lcom/miui/home/launcher/util/K8FrontCameraManager;[IZ)V

    .line 128
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public unSetCameraPauseAdvanced(Z)V
    .locals 2

    .line 144
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->IS_K8_PHONE:Z

    if-nez v0, :cond_0

    return-void

    .line 147
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unSetCameraPauseAdvanced resume = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "K8FrontCameraManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/util/UiThreadHelper;->getHandler(Landroid/content/Context;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/util/K8FrontCameraManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/launcher/util/K8FrontCameraManager$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/launcher/util/K8FrontCameraManager;Z)V

    .line 149
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
