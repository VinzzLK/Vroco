.class public Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;
.super Ljava/lang/Object;
.source "UnlockAnimationStateMachine.java"

# interfaces
.implements Lcom/miui/home/launcher/DeviceConfig$onScreenSizeChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;
    }
.end annotation


# instance fields
.field private mCanShowUnlockAnim:Z

.field protected mLauncher:Lcom/miui/home/launcher/Launcher;

.field private mLooperExecutor:Lcom/miui/home/library/utils/LooperExecutor;

.field protected mOldDisplayState:I

.field private mResetIdleStateRunnable:Ljava/lang/Runnable;

.field protected mResumeShowAnimationRunnable:Ljava/lang/Runnable;

.field private mShowUpdaterDialog:Z

.field private mShowUpdaterDialogRunnable:Ljava/lang/Runnable;

.field protected volatile mState:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;


# direct methods
.method public static synthetic $r8$lambda$SeD-BVGj6nsnsm1BIoKoUnnT0_c(Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->lambda$new$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$pAx-QcL9aORoR4Nf2qlc7RMo3pc(Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->lambda$new$0()V

    return-void
.end method

.method public constructor <init>(Lcom/miui/home/launcher/Launcher;)V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    sget-object v0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;->IDLE:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    iput-object v0, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mState:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mShowUpdaterDialog:Z

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mShowUpdaterDialogRunnable:Ljava/lang/Runnable;

    const/4 v0, 0x1

    .line 35
    iput-boolean v0, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mCanShowUnlockAnim:Z

    .line 96
    new-instance v0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$$ExternalSyntheticLambda1;-><init>(Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;)V

    iput-object v0, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mResetIdleStateRunnable:Ljava/lang/Runnable;

    .line 209
    new-instance v0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;)V

    iput-object v0, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mResumeShowAnimationRunnable:Ljava/lang/Runnable;

    .line 38
    iput-object p1, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 39
    new-instance p1, Lcom/miui/home/library/utils/LooperExecutor;

    invoke-static {}, Lcom/miui/home/launcher/util/UiThreadHelper;->getBackgroundLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/miui/home/library/utils/LooperExecutor;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mLooperExecutor:Lcom/miui/home/library/utils/LooperExecutor;

    .line 40
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/home/launcher/common/Utilities;->getDisplayState(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mOldDisplayState:I

    .line 41
    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->addScreenSizeChangedListener(Lcom/miui/home/launcher/DeviceConfig$onScreenSizeChangedListener;)V

    return-void
.end method

.method private checkLockScreenOrScreenOff()Z
    .locals 3

    .line 86
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$$ExternalSyntheticLambda2;-><init>(Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 87
    iget-object p0, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mLooperExecutor:Lcom/miui/home/library/utils/LooperExecutor;

    invoke-virtual {p0, v0}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    const-wide/16 v1, 0x32

    .line 89
    :try_start_0
    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, p0}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "Launcher_UnlockAnimationStateMachine"

    const-string v1, "checkLockScreenOrScreenOff"

    .line 91
    invoke-static {v0, v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$new$0()V
    .locals 2

    const-string v0, "Launcher_UnlockAnimationStateMachine"

    const-string v1, "mResetIdleStateRunnable"

    .line 97
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    sget-object v0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;->IDLE:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    iput-object v0, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mState:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    return-void
.end method

.method private synthetic lambda$new$1()V
    .locals 1

    const-string v0, "onResume"

    .line 209
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->showAnimation(Ljava/lang/String;)V

    return-void
.end method

.method private sendMessageToShowUpdaterDialog(Ljava/lang/String;)V
    .locals 2

    .line 228
    iget-boolean v0, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mShowUpdaterDialog:Z

    if-nez v0, :cond_0

    return-void

    .line 231
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "showUpdateDialog:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Launcher_UnlockAnimationStateMachine"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 232
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->setDialogState(Z)V

    .line 233
    iget-object p1, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mShowUpdaterDialogRunnable:Ljava/lang/Runnable;

    if-nez p1, :cond_1

    .line 234
    new-instance p1, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$1;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$1;-><init>(Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;)V

    iput-object p1, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mShowUpdaterDialogRunnable:Ljava/lang/Runnable;

    .line 253
    :cond_1
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getParallelExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    iget-object p0, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mShowUpdaterDialogRunnable:Ljava/lang/Runnable;

    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private setDialogState(Z)V
    .locals 0

    .line 57
    iput-boolean p1, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mShowUpdaterDialog:Z

    return-void
.end method


# virtual methods
.method public isLockScreen()Z
    .locals 2

    .line 224
    iget-object v0, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->isScreenOn(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->isKeyguardLocked(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->getDisplayState(Landroid/content/Context;)I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public onDestroy()V
    .locals 2

    .line 261
    iget-object v0, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mResetIdleStateRunnable:Ljava/lang/Runnable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 262
    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->useViewToRemoveCallbacks(Ljava/lang/Runnable;)V

    .line 263
    iput-object v1, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mResetIdleStateRunnable:Ljava/lang/Runnable;

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mResumeShowAnimationRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 266
    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->useViewToRemoveCallbacks(Ljava/lang/Runnable;)V

    .line 267
    iput-object v1, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mResumeShowAnimationRunnable:Ljava/lang/Runnable;

    .line 269
    :cond_1
    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->removeScreenSizeChangedListener(Lcom/miui/home/launcher/DeviceConfig$onScreenSizeChangedListener;)V

    return-void
.end method

.method public onDisplayChange()V
    .locals 3

    .line 102
    iget-object v0, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->getDisplayState(Landroid/content/Context;)I

    move-result v0

    .line 103
    iget v1, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mOldDisplayState:I

    if-ne v0, v1, :cond_0

    return-void

    .line 106
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mOldDisplayState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mOldDisplayState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " onDisplayChange = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Launcher_UnlockAnimationStateMachine"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 107
    iget-object v1, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v1}, Lcom/miui/home/launcher/common/Utilities;->isKeyguardLocked(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 108
    invoke-virtual {p0}, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->onScreenOff()V

    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 110
    iget-object v1, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mState:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    sget-object v2, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;->RESUME_WAIT:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    if-ne v1, v2, :cond_2

    .line 111
    iget-object v1, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mResumeShowAnimationRunnable:Ljava/lang/Runnable;

    invoke-static {v1}, Lcom/miui/home/launcher/common/Utilities;->useViewToRemoveCallbacks(Ljava/lang/Runnable;)V

    const-string v1, "onDisplayChange"

    .line 112
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->showAnimation(Ljava/lang/String;)V

    .line 114
    :cond_2
    iput v0, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mOldDisplayState:I

    return-void
.end method

.method public onPause()V
    .locals 3

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPause = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mState:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher_UnlockAnimationStateMachine"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget-object v0, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mState:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    sget-object v2, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;->RESUME_WAIT:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    if-ne v0, v2, :cond_0

    .line 63
    iget-object v0, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mResumeShowAnimationRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->useViewToRemoveCallbacks(Ljava/lang/Runnable;)V

    .line 64
    sget-object v0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;->PREPARE:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->setState(Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;)V

    const/4 v0, 0x1

    .line 65
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->setDialogState(Z)V

    const-string p0, "remove mResumeShowAnimationRunnable"

    .line 66
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mState:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    sget-object v1, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;->IDLE:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    if-ne v0, v1, :cond_1

    .line 68
    sget-object v0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;->PAUSE_WAIT:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->setState(Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;)V

    .line 69
    iget-object v0, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mResetIdleStateRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->useViewToRemoveCallbacks(Ljava/lang/Runnable;)V

    .line 70
    iget-object p0, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mResetIdleStateRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x190

    invoke-static {p0, v0, v1}, Lcom/miui/home/launcher/common/Utilities;->useViewToPostDelay(Ljava/lang/Runnable;J)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 6

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onResume = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mState:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher_UnlockAnimationStateMachine"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget-object v0, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mResetIdleStateRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->useViewToRemoveCallbacks(Ljava/lang/Runnable;)V

    .line 183
    iget-object v0, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mState:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    sget-object v1, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;->PREPARE:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    const-string v2, "onResume"

    if-ne v0, v1, :cond_2

    .line 184
    iget-object v0, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mResumeShowAnimationRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->useViewToRemoveCallbacks(Ljava/lang/Runnable;)V

    .line 185
    sget-boolean v0, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_MIUI_13:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_S:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isLowLevelDeviceFromFolme()Z

    move-result v0

    if-nez v0, :cond_0

    .line 186
    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->showAnimation(Ljava/lang/String;)V

    goto :goto_0

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->shouldShowUserPresentAnimation()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 189
    invoke-static {}, Lcom/miui/home/library/utils/CPUBooster;->getInstance()Lcom/miui/home/library/utils/CPUBooster;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/miui/home/library/utils/CPUBooster;->boostCpuToMax(I)V

    .line 190
    invoke-static {}, Lcom/miui/home/launcher/util/BoostRtHelper;->getInstance()Lcom/miui/home/launcher/util/BoostRtHelper;

    move-result-object v0

    const-wide/16 v3, 0x3e8

    iget-object v1, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getRootView()Landroid/view/View;

    move-result-object v1

    const/4 v5, 0x5

    invoke-virtual {v0, v3, v4, v1, v5}, Lcom/miui/home/launcher/util/BoostRtHelper;->boostMainThreadAndRenderThread(JLandroid/view/View;I)V

    .line 192
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mResumeShowAnimationRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x190

    invoke-static {v0, v3, v4}, Lcom/miui/home/launcher/common/Utilities;->useViewToPostDelay(Ljava/lang/Runnable;J)V

    .line 193
    sget-object v0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;->RESUME_WAIT:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->setState(Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;)V

    goto :goto_0

    .line 195
    :cond_2
    iget-object v0, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mState:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    sget-object v1, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;->PAUSE_WAIT:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    if-ne v0, v1, :cond_3

    .line 196
    sget-object v0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;->IDLE:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->setState(Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;)V

    .line 198
    :cond_3
    :goto_0
    invoke-direct {p0, v2}, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->sendMessageToShowUpdaterDialog(Ljava/lang/String;)V

    return-void
.end method

.method protected onScreenOff()V
    .locals 3

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onScreenOff = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mState:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher_UnlockAnimationStateMachine"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object v0, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->getDisplayState(Landroid/content/Context;)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const-string/jumbo v0, "setPrepare on screen off"

    .line 120
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-static {}, Lcom/miui/home/launcher/common/MemoryUtils;->scheduleGcIdler()V

    .line 122
    invoke-virtual {p0}, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->setPrepare()V

    :cond_0
    return-void
.end method

.method public onScreenOffFromReceiver()V
    .locals 2

    const-string v0, "Launcher_UnlockAnimationStateMachine"

    const-string/jumbo v1, "setPrepare on screen off from receiver"

    .line 127
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-virtual {p0}, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->setPrepare()V

    .line 129
    invoke-static {}, Lcom/miui/home/launcher/common/MemoryUtils;->scheduleGcIdler()V

    return-void
.end method

.method public onScreenSizeChanged()V
    .locals 2

    .line 274
    iget-object v0, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mState:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    sget-object v1, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;->PREPARE:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mState:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    sget-object v1, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;->RESUME_WAIT:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    if-ne v0, v1, :cond_2

    .line 275
    :cond_0
    sget-object v0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;->IDLE:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    iput-object v0, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mState:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    .line 276
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    .line 278
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getUserPresentAnimation()Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$$ExternalSyntheticLambda3;->INSTANCE:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$$ExternalSyntheticLambda3;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_2
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStop = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mState:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher_UnlockAnimationStateMachine"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-direct {p0}, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->checkLockScreenOrScreenOff()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "setPrepare onstop"

    .line 77
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-virtual {p0}, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->setPrepare()V

    goto :goto_0

    .line 80
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    const/4 v0, 0x0

    const/16 v1, 0x1000

    invoke-static {p0, v0, v1}, Lcom/miui/home/launcher/AbstractFloatingView;->closeOpenViews(Lcom/miui/home/launcher/BaseDraggingActivity;ZI)V

    :goto_0
    return-void
.end method

.method public onUserPresent()V
    .locals 2

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUserPresent:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mState:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher_UnlockAnimationStateMachine"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFlip()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/home/recents/SpecialFDeviceGestureHelper;->getInstance()Lcom/miui/home/recents/SpecialFDeviceGestureHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/SpecialFDeviceGestureHelper;->isInSFDeviceFoldedMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    sget-object v0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;->PAUSE_WAIT:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    iput-object v0, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mState:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    .line 215
    iget-object p0, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getUserPresentAnimation()Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;->resetAnimation()V

    return-void

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mResumeShowAnimationRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->useViewToRemoveCallbacks(Ljava/lang/Runnable;)V

    const-string v0, "onUserPresent"

    .line 219
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->showAnimation(Ljava/lang/String;)V

    .line 220
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->sendMessageToShowUpdaterDialog(Ljava/lang/String;)V

    return-void
.end method

.method public onWindowFocus()V
    .locals 2

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onWindowFocus:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mState:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher_UnlockAnimationStateMachine"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object v0, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mResumeShowAnimationRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->useViewToRemoveCallbacks(Ljava/lang/Runnable;)V

    .line 158
    iget-object v0, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "onWindowFocus"

    .line 159
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->showAnimation(Ljava/lang/String;)V

    .line 160
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->sendMessageToShowUpdaterDialog(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setCanShowUnlockAnim(Z)V
    .locals 0

    .line 257
    iput-boolean p1, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mCanShowUnlockAnim:Z

    return-void
.end method

.method protected setPrepare()V
    .locals 3

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setPrepare = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mState:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher_UnlockAnimationStateMachine"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v0, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mState:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    sget-object v2, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;->PAUSE_WAIT:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 135
    invoke-static {v0}, Lcom/miui/home/launcher/AbstractFloatingView;->getTopOpenView(Lcom/miui/home/launcher/BaseDraggingActivity;)Lcom/miui/home/launcher/AbstractFloatingView;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 138
    :cond_0
    iget-boolean v0, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mCanShowUnlockAnim:Z

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 139
    sget-object v0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;->IDLE:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    iput-object v0, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mState:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    .line 140
    iput-boolean v2, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mCanShowUnlockAnim:Z

    const-string p0, "can not show unlock anim"

    .line 141
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 144
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mResetIdleStateRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->useViewToRemoveCallbacks(Ljava/lang/Runnable;)V

    const-string v0, "prepare_animation"

    .line 145
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->prepareAnimationForUnlock()Z

    move-result v0

    .line 147
    invoke-static {}, Landroid/os/Trace;->endSection()V

    if-eqz v0, :cond_2

    .line 149
    sget-object v0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;->PREPARE:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->setState(Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;)V

    .line 151
    :cond_2
    invoke-direct {p0, v2}, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->setDialogState(Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method protected setState(Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;)V
    .locals 1

    .line 52
    iput-object p1, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mState:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    .line 53
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setState:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Launcher_UnlockAnimationStateMachine"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected showAnimation(Ljava/lang/String;)V
    .locals 3

    .line 165
    iget-object v0, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->isKeyguardOccluded(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "Launcher_UnlockAnimationStateMachine"

    if-eqz v0, :cond_0

    const-string/jumbo p0, "showAnimation: should not show, because isKeyguardOccluded"

    .line 166
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 169
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showAnimation = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mState:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-object v0, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mState:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    sget-object v2, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;->PREPARE:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mState:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    sget-object v2, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;->RESUME_WAIT:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    if-ne v0, v2, :cond_2

    .line 171
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mResetIdleStateRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->useViewToRemoveCallbacks(Ljava/lang/Runnable;)V

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showAnimation:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p1, "show_animation"

    .line 173
    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 174
    iget-object p1, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->showPresent()V

    .line 175
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 176
    sget-object p1, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;->IDLE:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->setState(Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;)V

    :cond_2
    return-void
.end method
