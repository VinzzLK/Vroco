.class public Lcom/miui/home/recents/MiuiSystemUiProxyWrapper;
.super Lcom/miui/home/recents/SystemUiProxyWrapper;
.source "MiuiSystemUiProxyWrapper.java"


# static fields
.field public static INSTANCE:Lcom/miui/home/recents/MiuiSystemUiProxyWrapper;


# instance fields
.field private volatile mMiuiSystemUiProxy:Lcom/android/systemui/shared/recents/IMiuiSystemUiProxy;

.field private final mSystemUiProxyDeathRecipient:Landroid/os/IBinder$DeathRecipient;


# direct methods
.method public static synthetic $r8$lambda$e4oi1f9yh0DdnyUSUSd102VXFNk(Lcom/miui/home/recents/MiuiSystemUiProxyWrapper;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/recents/MiuiSystemUiProxyWrapper;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$gSn7hdNIWaw0hg7vgD9EJh2wpC4(Lcom/miui/home/recents/MiuiSystemUiProxyWrapper;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/recents/MiuiSystemUiProxyWrapper;->lambda$new$1()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 16
    new-instance v0, Lcom/miui/home/recents/MiuiSystemUiProxyWrapper;

    invoke-direct {v0}, Lcom/miui/home/recents/MiuiSystemUiProxyWrapper;-><init>()V

    sput-object v0, Lcom/miui/home/recents/MiuiSystemUiProxyWrapper;->INSTANCE:Lcom/miui/home/recents/MiuiSystemUiProxyWrapper;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Lcom/miui/home/recents/SystemUiProxyWrapper;-><init>()V

    .line 20
    new-instance v0, Lcom/miui/home/recents/MiuiSystemUiProxyWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/MiuiSystemUiProxyWrapper$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/recents/MiuiSystemUiProxyWrapper;)V

    iput-object v0, p0, Lcom/miui/home/recents/MiuiSystemUiProxyWrapper;->mSystemUiProxyDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 1

    const/4 v0, 0x0

    .line 21
    invoke-direct {p0, v0}, Lcom/miui/home/recents/MiuiSystemUiProxyWrapper;->setProxy(Lcom/android/systemui/shared/recents/IMiuiSystemUiProxy;)V

    return-void
.end method

.method private synthetic lambda$new$1()V
    .locals 2

    .line 21
    sget-object v0, Lcom/miui/home/recents/util/Executors;->MAIN_EXECUTOR:Lcom/miui/home/library/utils/LooperExecutor;

    new-instance v1, Lcom/miui/home/recents/MiuiSystemUiProxyWrapper$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/MiuiSystemUiProxyWrapper$$ExternalSyntheticLambda1;-><init>(Lcom/miui/home/recents/MiuiSystemUiProxyWrapper;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private setProxy(Lcom/android/systemui/shared/recents/IMiuiSystemUiProxy;)V
    .locals 2

    .line 37
    iget-object v0, p0, Lcom/miui/home/recents/MiuiSystemUiProxyWrapper;->mMiuiSystemUiProxy:Lcom/android/systemui/shared/recents/IMiuiSystemUiProxy;

    iget-object v1, p0, Lcom/miui/home/recents/MiuiSystemUiProxyWrapper;->mSystemUiProxyDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/recents/SystemUiProxyWrapper;->unlinkToDeath(Landroid/os/IInterface;Landroid/os/IBinder$DeathRecipient;)V

    .line 38
    iput-object p1, p0, Lcom/miui/home/recents/MiuiSystemUiProxyWrapper;->mMiuiSystemUiProxy:Lcom/android/systemui/shared/recents/IMiuiSystemUiProxy;

    .line 39
    iget-object p1, p0, Lcom/miui/home/recents/MiuiSystemUiProxyWrapper;->mMiuiSystemUiProxy:Lcom/android/systemui/shared/recents/IMiuiSystemUiProxy;

    iget-object v0, p0, Lcom/miui/home/recents/MiuiSystemUiProxyWrapper;->mSystemUiProxyDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-virtual {p0, p1, v0}, Lcom/miui/home/recents/SystemUiProxyWrapper;->linkToDeath(Landroid/os/IInterface;Landroid/os/IBinder$DeathRecipient;)V

    return-void
.end method


# virtual methods
.method public exitSplitScreen()V
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/miui/home/recents/MiuiSystemUiProxyWrapper;->mMiuiSystemUiProxy:Lcom/android/systemui/shared/recents/IMiuiSystemUiProxy;

    if-nez v0, :cond_0

    const-string p0, "MiuiSystemUiProxyWrapper"

    const-string v0, "exitSplitScreen mMiuiSystemUiProxy is null"

    .line 45
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 49
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/miui/home/recents/MiuiSystemUiProxyWrapper;->mMiuiSystemUiProxy:Lcom/android/systemui/shared/recents/IMiuiSystemUiProxy;

    invoke-interface {p0}, Lcom/android/systemui/shared/recents/IMiuiSystemUiProxy;->exitSplitScreen()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 51
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public getMiddleSplitScreenSecondaryBounds()Landroid/graphics/Rect;
    .locals 3

    .line 83
    iget-object v0, p0, Lcom/miui/home/recents/MiuiSystemUiProxyWrapper;->mMiuiSystemUiProxy:Lcom/android/systemui/shared/recents/IMiuiSystemUiProxy;

    const/4 v1, 0x0

    const-string v2, "MiuiSystemUiProxyWrapper"

    if-nez v0, :cond_0

    const-string p0, "getMiddleSplitScreenSecondaryBounds mMiuiSystemUiProxy is null"

    .line 84
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 88
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/miui/home/recents/MiuiSystemUiProxyWrapper;->mMiuiSystemUiProxy:Lcom/android/systemui/shared/recents/IMiuiSystemUiProxy;

    invoke-interface {p0}, Lcom/android/systemui/shared/recents/IMiuiSystemUiProxy;->getMiddleSplitScreenSecondaryBounds()Landroid/graphics/Rect;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "getMiddleSplitScreenSecondaryBounds error"

    .line 90
    invoke-static {v2, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method

.method public onAnimBackToStatusBarEnd()V
    .locals 2

    .line 153
    iget-object v0, p0, Lcom/miui/home/recents/MiuiSystemUiProxyWrapper;->mMiuiSystemUiProxy:Lcom/android/systemui/shared/recents/IMiuiSystemUiProxy;

    const-string v1, "MiuiSystemUiProxyWrapper"

    if-nez v0, :cond_0

    const-string p0, "onAnimBackToStatusBarEnd mMiuiSystemUiProxy is null"

    .line 154
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 158
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/miui/home/recents/MiuiSystemUiProxyWrapper;->mMiuiSystemUiProxy:Lcom/android/systemui/shared/recents/IMiuiSystemUiProxy;

    invoke-interface {p0}, Lcom/android/systemui/shared/recents/IMiuiSystemUiProxy;->onAnimBackToStatusBarEnd()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "onAnimBackToStatusBarEnd error"

    .line 160
    invoke-static {v1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public onAnimBackToStatusBarStart()V
    .locals 2

    .line 140
    iget-object v0, p0, Lcom/miui/home/recents/MiuiSystemUiProxyWrapper;->mMiuiSystemUiProxy:Lcom/android/systemui/shared/recents/IMiuiSystemUiProxy;

    const-string v1, "MiuiSystemUiProxyWrapper"

    if-nez v0, :cond_0

    const-string p0, "onAnimBackToStatusBarStart mMiuiSystemUiProxy is null"

    .line 141
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 145
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/miui/home/recents/MiuiSystemUiProxyWrapper;->mMiuiSystemUiProxy:Lcom/android/systemui/shared/recents/IMiuiSystemUiProxy;

    invoke-interface {p0}, Lcom/android/systemui/shared/recents/IMiuiSystemUiProxy;->onAnimBackToStatusBarStart()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "onAnimBackToStatusBarStart error"

    .line 147
    invoke-static {v1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public onAssistantGestureCompletion()V
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/miui/home/recents/MiuiSystemUiProxyWrapper;->mMiuiSystemUiProxy:Lcom/android/systemui/shared/recents/IMiuiSystemUiProxy;

    if-nez v0, :cond_0

    const-string p0, "MiuiSystemUiProxyWrapper"

    const-string v0, "onAssistantGestureCompletion mMiuiSystemUiProxy is null"

    .line 71
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 75
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/miui/home/recents/MiuiSystemUiProxyWrapper;->mMiuiSystemUiProxy:Lcom/android/systemui/shared/recents/IMiuiSystemUiProxy;

    invoke-interface {p0}, Lcom/android/systemui/shared/recents/IMiuiSystemUiProxy;->onAssistantGestureCompletion()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 77
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onContinueStartActivityAnim()V
    .locals 2

    .line 127
    iget-object v0, p0, Lcom/miui/home/recents/MiuiSystemUiProxyWrapper;->mMiuiSystemUiProxy:Lcom/android/systemui/shared/recents/IMiuiSystemUiProxy;

    const-string v1, "MiuiSystemUiProxyWrapper"

    if-nez v0, :cond_0

    const-string p0, "onContinueStartActivityAnim mMiuiSystemUiProxy is null"

    .line 128
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 132
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/miui/home/recents/MiuiSystemUiProxyWrapper;->mMiuiSystemUiProxy:Lcom/android/systemui/shared/recents/IMiuiSystemUiProxy;

    invoke-interface {p0}, Lcom/android/systemui/shared/recents/IMiuiSystemUiProxy;->onContinueStartActivityAnim()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "onContinueStartActivityAnim error"

    .line 134
    invoke-static {v1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public onFocusNotifyAnimEnd()Z
    .locals 3

    .line 112
    iget-object v0, p0, Lcom/miui/home/recents/MiuiSystemUiProxyWrapper;->mMiuiSystemUiProxy:Lcom/android/systemui/shared/recents/IMiuiSystemUiProxy;

    const/4 v1, 0x0

    const-string v2, "MiuiSystemUiProxyWrapper"

    if-nez v0, :cond_0

    const-string p0, "onFocusNotifyAnimEnd mMiuiSystemUiProxy is null"

    .line 113
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 117
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/miui/home/recents/MiuiSystemUiProxyWrapper;->mMiuiSystemUiProxy:Lcom/android/systemui/shared/recents/IMiuiSystemUiProxy;

    invoke-interface {p0}, Lcom/android/systemui/shared/recents/IMiuiSystemUiProxy;->onFocusNotifyAnimEnd()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    const-string v0, "onFocusNotifyAnimEnd error"

    .line 120
    invoke-static {v2, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public onFocusNotifyAnimStart()Z
    .locals 3

    .line 97
    iget-object v0, p0, Lcom/miui/home/recents/MiuiSystemUiProxyWrapper;->mMiuiSystemUiProxy:Lcom/android/systemui/shared/recents/IMiuiSystemUiProxy;

    const/4 v1, 0x0

    const-string v2, "MiuiSystemUiProxyWrapper"

    if-nez v0, :cond_0

    const-string p0, "onFocusNotifyAnimStart mMiuiSystemUiProxy is null"

    .line 98
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 102
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/miui/home/recents/MiuiSystemUiProxyWrapper;->mMiuiSystemUiProxy:Lcom/android/systemui/shared/recents/IMiuiSystemUiProxy;

    invoke-interface {p0}, Lcom/android/systemui/shared/recents/IMiuiSystemUiProxy;->onFocusNotifyAnimStart()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    const-string v0, "onFocusNotifyAnimStart error"

    .line 105
    invoke-static {v2, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public onGestureLineProgress(F)V
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/miui/home/recents/MiuiSystemUiProxyWrapper;->mMiuiSystemUiProxy:Lcom/android/systemui/shared/recents/IMiuiSystemUiProxy;

    if-nez v0, :cond_0

    const-string p0, "MiuiSystemUiProxyWrapper"

    const-string p1, "onGestureLineProgress mMiuiSystemUiProxy is null"

    .line 58
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 62
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/miui/home/recents/MiuiSystemUiProxyWrapper;->mMiuiSystemUiProxy:Lcom/android/systemui/shared/recents/IMiuiSystemUiProxy;

    invoke-interface {p0, p1}, Lcom/android/systemui/shared/recents/IMiuiSystemUiProxy;->onGestureLineProgress(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 64
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setProxyByBundle(Landroid/os/Bundle;)V
    .locals 1

    .line 29
    invoke-super {p0, p1}, Lcom/miui/home/recents/SystemUiProxyWrapper;->setProxyByBundle(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v0, "extra_miui_sysui_proxy"

    .line 32
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 31
    invoke-static {p1}, Lcom/android/systemui/shared/recents/IMiuiSystemUiProxy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/systemui/shared/recents/IMiuiSystemUiProxy;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/home/recents/MiuiSystemUiProxyWrapper;->setProxy(Lcom/android/systemui/shared/recents/IMiuiSystemUiProxy;)V

    :cond_0
    return-void
.end method
