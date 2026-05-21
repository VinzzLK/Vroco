.class public Lcom/miui/home/recents/DimLayer;
.super Ljava/lang/Object;
.source "DimLayer.java"


# static fields
.field private static final sInstance:Lcom/miui/home/recents/DimLayer;


# instance fields
.field private mCurrentAlpha:F

.field private mDimLayer:Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

.field private mIsNeedReparent:Z

.field private mIsSupportDim:Z

.field private final mLock:Ljava/lang/Object;

.field private mTransaction:Lcom/android/systemui/shared/recents/system/TransactionCompat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    new-instance v0, Lcom/miui/home/recents/DimLayer;

    invoke-direct {v0}, Lcom/miui/home/recents/DimLayer;-><init>()V

    sput-object v0, Lcom/miui/home/recents/DimLayer;->sInstance:Lcom/miui/home/recents/DimLayer;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lcom/android/systemui/shared/recents/system/TransactionCompat;

    invoke-direct {v0}, Lcom/android/systemui/shared/recents/system/TransactionCompat;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/DimLayer;->mTransaction:Lcom/android/systemui/shared/recents/system/TransactionCompat;

    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lcom/miui/home/recents/DimLayer;->mIsSupportDim:Z

    .line 24
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/DimLayer;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public static getInstance()Lcom/miui/home/recents/DimLayer;
    .locals 1

    .line 32
    sget-object v0, Lcom/miui/home/recents/DimLayer;->sInstance:Lcom/miui/home/recents/DimLayer;

    return-object v0
.end method

.method private isSupportDim()Z
    .locals 0

    .line 36
    iget-boolean p0, p0, Lcom/miui/home/recents/DimLayer;->mIsSupportDim:Z

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInMultiWindowModeCompatAndroidT()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private reparentToLauncher()V
    .locals 3

    .line 110
    iget-boolean v0, p0, Lcom/miui/home/recents/DimLayer;->mIsNeedReparent:Z

    if-nez v0, :cond_0

    return-void

    .line 114
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 120
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/shared/recents/system/SurfaceControlUtils;->getSurfaceControlCompat(Landroid/view/View;)Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    move-result-object v0

    .line 121
    iget-object v1, p0, Lcom/miui/home/recents/DimLayer;->mTransaction:Lcom/android/systemui/shared/recents/system/TransactionCompat;

    iget-object v2, p0, Lcom/miui/home/recents/DimLayer;->mDimLayer:Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/shared/recents/system/TransactionCompat;->reparent(Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;)Lcom/android/systemui/shared/recents/system/TransactionCompat;

    .line 122
    iget-object v0, p0, Lcom/miui/home/recents/DimLayer;->mTransaction:Lcom/android/systemui/shared/recents/system/TransactionCompat;

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/system/TransactionCompat;->apply()V

    const/4 v0, 0x0

    .line 123
    iput-boolean v0, p0, Lcom/miui/home/recents/DimLayer;->mIsNeedReparent:Z
    :try_end_0
    .catch Lcom/android/systemui/shared/recents/system/TransactionCompat$IllegalParamsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 125
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public createDimLayer()V
    .locals 1

    .line 40
    invoke-direct {p0}, Lcom/miui/home/recents/DimLayer;->isSupportDim()Z

    move-result v0

    if-nez v0, :cond_0

    .line 41
    invoke-virtual {p0}, Lcom/miui/home/recents/DimLayer;->removeDimLayer()V

    return-void

    .line 44
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 45
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/shared/recents/system/SurfaceControlUtils;->getSurfaceControlCompat(Landroid/view/View;)Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/DimLayer;->createDimLayer(Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;)V

    const/4 v0, 0x0

    .line 46
    iput-boolean v0, p0, Lcom/miui/home/recents/DimLayer;->mIsNeedReparent:Z

    :cond_1
    return-void
.end method

.method public createDimLayer(Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;)V
    .locals 2

    .line 51
    invoke-direct {p0}, Lcom/miui/home/recents/DimLayer;->isSupportDim()Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    invoke-virtual {p0}, Lcom/miui/home/recents/DimLayer;->removeDimLayer()V

    return-void

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/DimLayer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 56
    :try_start_0
    iget-object v1, p0, Lcom/miui/home/recents/DimLayer;->mDimLayer:Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    if-eqz v1, :cond_1

    .line 57
    invoke-virtual {p0}, Lcom/miui/home/recents/DimLayer;->removeDimLayer()V

    .line 59
    :cond_1
    iget-object v1, p0, Lcom/miui/home/recents/DimLayer;->mDimLayer:Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    if-nez v1, :cond_2

    const-string v1, "Launcher Dim"

    .line 60
    invoke-static {v1, p1}, Lcom/android/systemui/shared/recents/system/SurfaceControlUtils;->getColorLayer(Ljava/lang/String;Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;)Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/recents/DimLayer;->mDimLayer:Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    const-string p1, "DimLayer"

    const-string v1, "createDimLayer"

    .line 61
    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 62
    iput-boolean p1, p0, Lcom/miui/home/recents/DimLayer;->mIsNeedReparent:Z

    .line 64
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public dim(FLcom/android/systemui/shared/recents/system/SurfaceControlCompat;Z)V
    .locals 5

    .line 83
    invoke-direct {p0}, Lcom/miui/home/recents/DimLayer;->isSupportDim()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/DimLayer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 88
    :try_start_0
    iget-object v1, p0, Lcom/miui/home/recents/DimLayer;->mDimLayer:Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;->isValid()Z

    move-result v1

    if-eqz v1, :cond_3

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 89
    invoke-static {v2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lcom/miui/home/recents/DimLayer;->mCurrentAlpha:F

    .line 90
    iget-object v1, p0, Lcom/miui/home/recents/DimLayer;->mTransaction:Lcom/android/systemui/shared/recents/system/TransactionCompat;

    iget-object v3, p0, Lcom/miui/home/recents/DimLayer;->mDimLayer:Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    const v4, 0x3f333333    # 0.7f

    mul-float/2addr p1, v4

    invoke-virtual {v1, v3, p1}, Lcom/android/systemui/shared/recents/system/TransactionCompat;->setAlpha(Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;F)Lcom/android/systemui/shared/recents/system/TransactionCompat;

    .line 91
    iget-object p1, p0, Lcom/miui/home/recents/DimLayer;->mTransaction:Lcom/android/systemui/shared/recents/system/TransactionCompat;

    iget-object v1, p0, Lcom/miui/home/recents/DimLayer;->mDimLayer:Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    if-eqz p3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, -0x1

    :goto_0
    invoke-virtual {p1, v1, p2, v3}, Lcom/android/systemui/shared/recents/system/TransactionCompat;->setRelativeLayer(Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;I)Lcom/android/systemui/shared/recents/system/TransactionCompat;

    .line 92
    iget p1, p0, Lcom/miui/home/recents/DimLayer;->mCurrentAlpha:F

    cmpl-float p1, p1, v2

    if-lez p1, :cond_2

    .line 93
    iget-object p1, p0, Lcom/miui/home/recents/DimLayer;->mTransaction:Lcom/android/systemui/shared/recents/system/TransactionCompat;

    iget-object p2, p0, Lcom/miui/home/recents/DimLayer;->mDimLayer:Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    invoke-virtual {p1, p2}, Lcom/android/systemui/shared/recents/system/TransactionCompat;->show(Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;)Lcom/android/systemui/shared/recents/system/TransactionCompat;

    goto :goto_1

    .line 95
    :cond_2
    iget-object p1, p0, Lcom/miui/home/recents/DimLayer;->mTransaction:Lcom/android/systemui/shared/recents/system/TransactionCompat;

    iget-object p2, p0, Lcom/miui/home/recents/DimLayer;->mDimLayer:Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    invoke-virtual {p1, p2}, Lcom/android/systemui/shared/recents/system/TransactionCompat;->hide(Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;)Lcom/android/systemui/shared/recents/system/TransactionCompat;

    .line 96
    invoke-direct {p0}, Lcom/miui/home/recents/DimLayer;->reparentToLauncher()V

    .line 98
    :goto_1
    iget-object p1, p0, Lcom/miui/home/recents/DimLayer;->mTransaction:Lcom/android/systemui/shared/recents/system/TransactionCompat;

    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/system/TransactionCompat;->setEarlyWakeup()Lcom/android/systemui/shared/recents/system/TransactionCompat;

    .line 99
    iget-object p1, p0, Lcom/miui/home/recents/DimLayer;->mTransaction:Lcom/android/systemui/shared/recents/system/TransactionCompat;

    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/system/TransactionCompat;->apply()V

    const-string p1, "DimLayer"

    .line 100
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dim mCurrentAlpha="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/miui/home/recents/DimLayer;->mCurrentAlpha:F

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, "   isDimSelf="

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/miui/home/launcher/MiuiHomeLog;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception p0

    :try_start_1
    const-string p1, "DimLayer"

    const-string p2, "dim error"

    .line 104
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 106
    :cond_3
    :goto_2
    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public getCurrentAlpha()F
    .locals 0

    .line 131
    iget p0, p0, Lcom/miui/home/recents/DimLayer;->mCurrentAlpha:F

    return p0
.end method

.method public removeDimLayer()V
    .locals 3

    .line 68
    iget-object v0, p0, Lcom/miui/home/recents/DimLayer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 70
    :try_start_0
    iget-object v1, p0, Lcom/miui/home/recents/DimLayer;->mDimLayer:Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    if-eqz v1, :cond_0

    .line 71
    iget-object v2, p0, Lcom/miui/home/recents/DimLayer;->mTransaction:Lcom/android/systemui/shared/recents/system/TransactionCompat;

    invoke-virtual {v2, v1}, Lcom/android/systemui/shared/recents/system/TransactionCompat;->remove(Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;)Lcom/android/systemui/shared/recents/system/TransactionCompat;

    .line 72
    iget-object v1, p0, Lcom/miui/home/recents/DimLayer;->mTransaction:Lcom/android/systemui/shared/recents/system/TransactionCompat;

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/system/TransactionCompat;->apply()V

    const/4 v1, 0x0

    .line 73
    iput-object v1, p0, Lcom/miui/home/recents/DimLayer;->mDimLayer:Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    const-string p0, "DimLayer"

    const-string v1, "removeDimLayer"

    .line 74
    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_1
    const-string v1, "DimLayer"

    const-string v2, "removeDimLayer error"

    .line 77
    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 79
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
