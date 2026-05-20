.class public Lcom/miui/home/launcher/allapps/hideapps/FingerprintHelper;
.super Ljava/lang/Object;
.source "FingerprintHelper.java"


# static fields
.field private static sInstance:Lcom/miui/home/launcher/allapps/hideapps/FingerprintHelper;


# instance fields
.field private context:Landroid/content/Context;

.field private mCancellationSignal:Landroid/os/CancellationSignal;

.field private mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/FingerprintHelper;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 17
    iput-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/FingerprintHelper;->mCancellationSignal:Landroid/os/CancellationSignal;

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/FingerprintHelper;->context:Landroid/content/Context;

    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "fingerprint"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/hideapps/FingerprintHelper;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/allapps/hideapps/FingerprintHelper;
    .locals 2

    const-class v0, Lcom/miui/home/launcher/allapps/hideapps/FingerprintHelper;

    monitor-enter v0

    .line 24
    :try_start_0
    sget-object v1, Lcom/miui/home/launcher/allapps/hideapps/FingerprintHelper;->sInstance:Lcom/miui/home/launcher/allapps/hideapps/FingerprintHelper;

    if-nez v1, :cond_0

    .line 25
    new-instance v1, Lcom/miui/home/launcher/allapps/hideapps/FingerprintHelper;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/allapps/hideapps/FingerprintHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/miui/home/launcher/allapps/hideapps/FingerprintHelper;->sInstance:Lcom/miui/home/launcher/allapps/hideapps/FingerprintHelper;

    .line 27
    :cond_0
    sget-object p0, Lcom/miui/home/launcher/allapps/hideapps/FingerprintHelper;->sInstance:Lcom/miui/home/launcher/allapps/hideapps/FingerprintHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public authenticateHideAppsLock(Lcom/miui/home/launcher/allapps/hideapps/AuthenticationCallbackHideAppsLock;)V
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .line 77
    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/FingerprintHelper;->mCancellationSignal:Landroid/os/CancellationSignal;

    .line 78
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/FingerprintHelper;->context:Landroid/content/Context;

    const-string v1, "android.permission.USE_FINGERPRINT"

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/hideapps/FingerprintHelper;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 89
    iget-object v3, p0, Lcom/miui/home/launcher/allapps/hideapps/FingerprintHelper;->mCancellationSignal:Landroid/os/CancellationSignal;

    const/4 v4, 0x0

    new-instance v5, Lcom/miui/home/launcher/allapps/hideapps/FingerprintHelper$1;

    invoke-direct {v5, p0, p1}, Lcom/miui/home/launcher/allapps/hideapps/FingerprintHelper$1;-><init>(Lcom/miui/home/launcher/allapps/hideapps/FingerprintHelper;Lcom/miui/home/launcher/allapps/hideapps/AuthenticationCallbackHideAppsLock;)V

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/hardware/fingerprint/FingerprintManager;->authenticate(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;Landroid/os/CancellationSignal;ILandroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;Landroid/os/Handler;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public cancelFingerprint()V
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/FingerprintHelper;->mCancellationSignal:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/FingerprintHelper;->mCancellationSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 119
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const/4 v0, 0x0

    .line 121
    iput-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/FingerprintHelper;->mCancellationSignal:Landroid/os/CancellationSignal;

    :cond_0
    return-void
.end method

.method public hasEnrolledFingerprintsHideAppsLock()Z
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    const/4 v0, 0x0

    .line 56
    :try_start_0
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/hideapps/FingerprintHelper;->context:Landroid/content/Context;

    const-string v2, "android.permission.USE_FINGERPRINT"

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/FingerprintHelper;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-nez p0, :cond_0

    goto :goto_0

    .line 68
    :cond_0
    invoke-virtual {p0}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :cond_1
    :goto_0
    return v0

    :catch_0
    move-exception p0

    .line 70
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method public isHardwareDetectedHideAppsLock()Z
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/FingerprintHelper;->context:Landroid/content/Context;

    const-string v1, "android.permission.USE_FINGERPRINT"

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/FingerprintHelper;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-nez p0, :cond_0

    goto :goto_0

    .line 49
    :cond_0
    invoke-virtual {p0}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method
