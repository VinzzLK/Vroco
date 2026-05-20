.class public Lcom/miui/home/recents/RecentsAnimationListenerImpl;
.super Ljava/lang/Object;
.source "RecentsAnimationListenerImpl.java"

# interfaces
.implements Lcom/android/systemui/shared/recents/system/RecentsAnimationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/recents/RecentsAnimationListenerImpl$SwipeAnimationListener;
    }
.end annotation


# static fields
.field private static sFinishCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private TAG:Ljava/lang/String;

.field private mController:Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;

.field private mFinishCallbacks:Lcom/miui/home/recents/util/RunnableList;

.field public mFinishControllerRunnable:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;

.field mHomeContentInsets:Landroid/graphics/Rect;

.field mInimizedHomeBounds:Landroid/graphics/Rect;

.field private volatile mIsInputConsumerEnable:Z

.field public mIsMerged:Z

.field public mIsStart:Z

.field private final mListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/miui/home/recents/RecentsAnimationListenerImpl$SwipeAnimationListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPreRequest:Z

.field private volatile mRecentShellState:I

.field mRemoteAnimationTargetSet:Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

.field private mRemoteTransitionSyncId:I

.field private mWindowThresholdCrossed:Z


# direct methods
.method public static synthetic $r8$lambda$7SqJ1ZdSMsASgonmf_skzLwtFD4(Lcom/miui/home/recents/RecentsAnimationListenerImpl;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->lambda$setWindowThresholdCrossed$9(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$CiYQ0F54bQzhRPhiOKpdypxtzEg(Lcom/miui/home/recents/RecentsAnimationListenerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->lambda$enableInputConsumer$10()V

    return-void
.end method

.method public static synthetic $r8$lambda$CnWVV0Q-eUY65r8XloNsdQS9Sx4(Lcom/miui/home/recents/RecentsAnimationListenerImpl;IZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->lambda$finishSoscControllerAsync$6(IZZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$N2oLnVsK_cI94HtXLDo4Pjisj7Q(Lcom/miui/home/recents/RecentsAnimationListenerImpl;Ljava/lang/Runnable;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->lambda$addFinishCallBack$0(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$OJWLBScPIIj4SdK41_SH7Sr7Faw(Lcom/miui/home/recents/RecentsAnimationListenerImpl;Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->lambda$onAnimationStart$2(Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dFr98P5__0d-PgEiOZmeTmc0C34(Lcom/miui/home/recents/RecentsAnimationListenerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->lambda$finishController$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$eb0ft_SDkVG26QEu_H2vrFhZq2o(Lcom/miui/home/recents/RecentsAnimationListenerImpl;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->lambda$finishController$4(ZZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$iDvbo2aVOTturnrAGpDK0Sr3YGs()V
    .locals 0

    invoke-static {}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->lambda$onAnimationStart$1()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->sFinishCallbacks:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "RecentsAnimationListenerImpl"

    .line 45
    iput-object v0, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 54
    iput-boolean v0, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mWindowThresholdCrossed:Z

    .line 56
    iput-boolean v0, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mIsStart:Z

    .line 61
    iput-boolean v0, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mIsInputConsumerEnable:Z

    const/4 v1, -0x1

    .line 63
    iput v1, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mRemoteTransitionSyncId:I

    .line 65
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mListeners:Ljava/util/Set;

    .line 67
    iput-boolean v0, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mPreRequest:Z

    .line 76
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mHandler:Landroid/os/Handler;

    .line 89
    iput v0, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mRecentShellState:I

    .line 210
    new-instance v0, Lcom/miui/home/recents/util/RunnableList;

    invoke-direct {v0}, Lcom/miui/home/recents/util/RunnableList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mFinishCallbacks:Lcom/miui/home/recents/util/RunnableList;

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "RecentsAnimationListenerImpl"

    .line 45
    iput-object v0, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 54
    iput-boolean v0, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mWindowThresholdCrossed:Z

    .line 56
    iput-boolean v0, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mIsStart:Z

    .line 61
    iput-boolean v0, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mIsInputConsumerEnable:Z

    const/4 v1, -0x1

    .line 63
    iput v1, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mRemoteTransitionSyncId:I

    .line 65
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mListeners:Ljava/util/Set;

    .line 67
    iput-boolean v0, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mPreRequest:Z

    .line 76
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mHandler:Landroid/os/Handler;

    .line 89
    iput v0, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mRecentShellState:I

    .line 210
    new-instance v0, Lcom/miui/home/recents/util/RunnableList;

    invoke-direct {v0}, Lcom/miui/home/recents/util/RunnableList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mFinishCallbacks:Lcom/miui/home/recents/util/RunnableList;

    .line 101
    iput p1, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mRemoteTransitionSyncId:I

    return-void
.end method

.method private finishController(ZZLcom/android/internal/os/IResultReceiver;)V
    .locals 3

    xor-int/lit8 v0, p1, 0x1

    .line 242
    invoke-static {v0}, Lcom/miui/home/launcher/util/PauseAdvancedHelper;->unSetPauseAdvanced(Z)V

    .line 243
    invoke-static {}, Lcom/miui/home/launcher/util/K8FrontCameraManager;->getInstance()Lcom/miui/home/launcher/util/K8FrontCameraManager;

    move-result-object v0

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/util/K8FrontCameraManager;->unSetCameraPauseAdvanced(Z)V

    .line 244
    iget-object v0, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mController:Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 245
    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;->setInputConsumerEnabled(Z)V

    .line 246
    iget-object v0, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mController:Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;->finish(ZZLcom/android/internal/os/IResultReceiver;)V

    .line 247
    sget-object p3, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->sFinishCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 248
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 250
    :cond_0
    sget-object p3, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->sFinishCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->clear()V

    .line 251
    iget-object p3, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 p3, 0x3

    .line 252
    invoke-virtual {p0, p3}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->changeState(I)V

    .line 253
    invoke-virtual {p0, v1}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->setPre(Z)V

    goto :goto_1

    :cond_1
    const/4 p3, -0x1

    .line 255
    invoke-virtual {p0, p3}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->changeState(I)V

    .line 257
    :goto_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->TAG:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_FW_FINISH"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TransitionTest finishController mController="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mController:Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", recentShellState = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mRecentShellState:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mController="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mController:Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", toRecents="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", sendUserLeaveHint="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    invoke-virtual {p0, v1}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->setIsStart(Z)V

    .line 261
    invoke-virtual {p0, v1}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->setIsMergedAnimation(Z)V

    return-void
.end method

.method private hasPendingFinishRunnable()Z
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mFinishControllerRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->BACKGROUND_EXECUTOR:Lcom/miui/home/library/utils/LooperExecutor;

    .line 205
    invoke-virtual {v0}, Lcom/miui/home/library/utils/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mFinishControllerRunnable:Ljava/lang/Runnable;

    invoke-static {v0, p0}, Lcom/miui/launcher/utils/LauncherUtils;->hasCallbacks(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$addFinishCallBack$0(Ljava/lang/Runnable;J)V
    .locals 2

    .line 80
    iget-object p0, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "finish timeout runnable= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " ,timeOut="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    sget-object p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->sFinishCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method private synthetic lambda$enableInputConsumer$10()V
    .locals 1

    .line 395
    iget-object v0, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mController:Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mIsInputConsumerEnable:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 396
    iput-boolean v0, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mIsInputConsumerEnable:Z

    .line 397
    iget-object p0, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mController:Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;

    invoke-virtual {p0, v0}, Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;->setInputConsumerEnabled(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$finishController$3()V
    .locals 0

    .line 224
    iget-object p0, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mFinishCallbacks:Lcom/miui/home/recents/util/RunnableList;

    invoke-virtual {p0}, Lcom/miui/home/recents/util/RunnableList;->executeAllAndClear()V

    return-void
.end method

.method private synthetic lambda$finishController$4(ZZ)V
    .locals 1

    const/4 v0, 0x0

    .line 223
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->finishController(ZZLcom/android/internal/os/IResultReceiver;)V

    .line 224
    sget-object p1, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance p2, Lcom/miui/home/recents/RecentsAnimationListenerImpl$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/miui/home/recents/RecentsAnimationListenerImpl$$ExternalSyntheticLambda1;-><init>(Lcom/miui/home/recents/RecentsAnimationListenerImpl;)V

    invoke-virtual {p1, p2}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$finishSoscControllerAsync$6(IZZ)V
    .locals 0

    .line 234
    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->finishSoscController(IZZ)V

    return-void
.end method

.method private static synthetic lambda$onAnimationStart$1()V
    .locals 2

    .line 126
    invoke-static {}, Lcom/miui/launcher/utils/BoostHelper;->getInstance()Lcom/miui/launcher/utils/BoostHelper;

    move-result-object v0

    const/16 v1, 0x96

    invoke-virtual {v0, v1}, Lcom/miui/launcher/utils/BoostHelper;->setDynamicVIPTaskIfNeeded(I)V

    return-void
.end method

.method private synthetic lambda$onAnimationStart$2(Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 3

    .line 118
    iput-object p1, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mController:Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;

    .line 119
    iget-object p1, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mRemoteTransitionSyncId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mRemoteTransitionSyncId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cur remoteSyncId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/miui/home/recents/anim/StateManager;->Companion:Lcom/miui/home/recents/anim/StateManager$Companion;

    invoke-virtual {v1}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/recents/anim/StateManager;->getCurRemoteSyncId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget p1, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mRemoteTransitionSyncId:I

    invoke-virtual {v1}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/StateManager;->getCurRemoteSyncId()I

    move-result v0

    const/4 v1, 0x1

    if-eq p1, v0, :cond_0

    .line 121
    iget-object p1, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->TAG:Ljava/lang/String;

    const-string p2, "cur remote transition has been marked finished, the associate recent transition should be finished directly!"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-virtual {p0, v1, v1}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->finishControllerDirectly(ZZ)V

    return-void

    .line 125
    :cond_0
    sget-object p1, Lcom/miui/home/recents/RecentsAnimationListenerImpl$$ExternalSyntheticLambda7;->INSTANCE:Lcom/miui/home/recents/RecentsAnimationListenerImpl$$ExternalSyntheticLambda7;

    invoke-static {p1}, Lcom/miui/home/launcher/common/BackgroundThread;->postAtFrontOfQueue(Ljava/lang/Runnable;)V

    .line 129
    iget-object p1, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->TAG:Ljava/lang/String;

    const-string v0, "recent shell callback "

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget p1, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mRecentShellState:I

    const/4 v0, -0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_1

    .line 131
    invoke-virtual {p0, v2, v1}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->finishControllerDirectly(ZZ)V

    return-void

    .line 135
    :cond_1
    new-instance p1, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    invoke-direct {p1, p2, v1}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;-><init>([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;I)V

    iput-object p1, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mRemoteAnimationTargetSet:Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    .line 137
    invoke-virtual {p0}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->enableInputConsumer()V

    .line 139
    iput-object p3, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mHomeContentInsets:Landroid/graphics/Rect;

    .line 140
    iput-object p4, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mInimizedHomeBounds:Landroid/graphics/Rect;

    .line 142
    invoke-virtual {p0, v2}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->setWindowThresholdCrossed(Z)V

    .line 143
    invoke-direct {p0}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->printStartRecentsAnimLog()V

    const/4 p1, 0x2

    .line 144
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->changeState(I)V

    .line 145
    iget-boolean p1, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mPreRequest:Z

    if-nez p1, :cond_2

    .line 146
    invoke-virtual {p0}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->onRecentsAnimationStart()V

    :cond_2
    return-void
.end method

.method private synthetic lambda$setWindowThresholdCrossed$9(Z)V
    .locals 3

    .line 326
    iget-object v0, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWindowThresholdCrossed thresholdCrossed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    sget-boolean v0, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_U:Z

    if-eqz v0, :cond_0

    .line 328
    invoke-static {}, Lcom/android/systemui/shared/recents/system/WindowManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/WindowManagerWrapper;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/recents/system/WindowManagerWrapper;->setRecentsAppBehindSystemBars(Z)V

    goto :goto_0

    .line 330
    :cond_0
    iget-object p0, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mController:Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;

    if-eqz p0, :cond_1

    xor-int/lit8 p1, p1, 0x1

    .line 331
    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;->setAnimationTargetsBehindSystemBars(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private printStartRecentsAnimLog()V
    .locals 3

    .line 160
    iget-object v0, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAnimationStart, homeContentInsets="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mHomeContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", minimizedHomeBounds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mInimizedHomeBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget-object p0, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mRemoteAnimationTargetSet:Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    invoke-virtual {p0}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->printAllUnfilteredRemoteAnimationTarget()V

    return-void
.end method

.method public static screenshotTaskForU(I)Lcom/android/systemui/shared/recents/model/ThumbnailData;
    .locals 5

    .line 301
    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/Utilities;->atLeastAndroidU()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 302
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 303
    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, p0, v3}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->takeTaskSnapshot(IZ)Ljava/lang/Object;

    move-result-object p0

    .line 304
    invoke-static {p0}, Lcom/android/systemui/shared/recents/system/TaskSnapshotManager;->createTaskSnapshotCompatWithTaskSnapshot(Ljava/lang/Object;)Lcom/android/systemui/shared/recents/system/ITaskSnapshot;

    move-result-object p0

    .line 305
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "screenshotTaskForU cost time = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecentsAnimationListenerImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    new-instance v0, Lcom/android/systemui/shared/recents/model/ThumbnailData;

    invoke-interface {p0}, Lcom/android/systemui/shared/recents/system/ITaskSnapshot;->getTaskThumbnailInfo()Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;

    move-result-object v1

    invoke-interface {p0}, Lcom/android/systemui/shared/recents/system/ITaskSnapshot;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/android/systemui/shared/recents/model/ThumbnailData;-><init>(Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;Landroid/graphics/Bitmap;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public addFinishCallBack(Ljava/lang/Runnable;J)V
    .locals 2

    .line 78
    sget-object v0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->sFinishCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    iget-object v0, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/miui/home/recents/RecentsAnimationListenerImpl$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/miui/home/recents/RecentsAnimationListenerImpl$$ExternalSyntheticLambda4;-><init>(Lcom/miui/home/recents/RecentsAnimationListenerImpl;Ljava/lang/Runnable;J)V

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public addListener(Lcom/miui/home/recents/RecentsAnimationListenerImpl$SwipeAnimationListener;)V
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mListeners:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public changeState(I)V
    .locals 3

    .line 96
    iget-object v0, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RecentShellTest changeStatue state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iput p1, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mRecentShellState:I

    return-void
.end method

.method public disableInputConsumer()V
    .locals 1

    .line 409
    iget-object v0, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mController:Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mIsInputConsumerEnable:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 410
    iput-boolean v0, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mIsInputConsumerEnable:Z

    .line 411
    iget-object p0, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mController:Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;

    invoke-virtual {p0, v0}, Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;->setInputConsumerEnabled(Z)V

    :cond_0
    return-void
.end method

.method public disableWindowInput()V
    .locals 0

    .line 416
    iget-object p0, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mController:Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;

    if-eqz p0, :cond_0

    .line 417
    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;->disableWindowInput()V

    :cond_0
    return-void
.end method

.method public enableInputConsumer()V
    .locals 2

    .line 394
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->BACKGROUND_EXECUTOR:Lcom/miui/home/library/utils/LooperExecutor;

    new-instance v1, Lcom/miui/home/recents/RecentsAnimationListenerImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/RecentsAnimationListenerImpl$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/recents/RecentsAnimationListenerImpl;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public findRemoteAnimationTargetCompat(I)Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;
    .locals 0

    .line 166
    iget-object p0, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mRemoteAnimationTargetSet:Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->findTask(I)Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    move-result-object p0

    return-object p0
.end method

.method public finishController(ZLjava/lang/Runnable;Z)V
    .locals 1

    if-eqz p2, :cond_0

    .line 215
    iget-object v0, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mFinishCallbacks:Lcom/miui/home/recents/util/RunnableList;

    invoke-virtual {v0, p2}, Lcom/miui/home/recents/util/RunnableList;->add(Ljava/lang/Runnable;)V

    .line 218
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->hasPendingFinishRunnable()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 219
    sget-object p2, Lcom/miui/home/recents/TouchInteractionService;->BACKGROUND_EXECUTOR:Lcom/miui/home/library/utils/LooperExecutor;

    invoke-virtual {p2}, Lcom/miui/home/library/utils/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object p2

    iget-object v0, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mFinishControllerRunnable:Ljava/lang/Runnable;

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 222
    :cond_1
    new-instance p2, Lcom/miui/home/recents/RecentsAnimationListenerImpl$$ExternalSyntheticLambda6;

    invoke-direct {p2, p0, p1, p3}, Lcom/miui/home/recents/RecentsAnimationListenerImpl$$ExternalSyntheticLambda6;-><init>(Lcom/miui/home/recents/RecentsAnimationListenerImpl;ZZ)V

    iput-object p2, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mFinishControllerRunnable:Ljava/lang/Runnable;

    .line 226
    sget-object p0, Lcom/miui/home/recents/TouchInteractionService;->BACKGROUND_EXECUTOR:Lcom/miui/home/library/utils/LooperExecutor;

    invoke-virtual {p0, p2}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public finishControllerDirectly(ZZ)V
    .locals 1

    const/4 v0, 0x0

    .line 238
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->finishController(ZZLcom/android/internal/os/IResultReceiver;)V

    return-void
.end method

.method public finishSoscController(IZZ)V
    .locals 4

    .line 265
    iget-object v0, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mController:Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    .line 266
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->changeState(I)V

    .line 267
    invoke-virtual {p0, v1}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->setPre(Z)V

    .line 268
    iget-object v0, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mController:Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;->setInputConsumerEnabled(Z)V

    .line 269
    iget-object v0, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mController:Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;

    invoke-virtual {v0, p1, v1, p2, p3}, Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;->finishForSosc(IZZZ)V

    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_FW_FINISH"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "finishSoscController , recentShellState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mRecentShellState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", taskId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", toRecents = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", sendUserLeaveHint="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    .line 272
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->changeState(I)V

    .line 274
    :goto_0
    invoke-virtual {p0, v1}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->setIsStart(Z)V

    return-void
.end method

.method public finishSoscControllerAsync(IZZ)V
    .locals 2

    .line 234
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->BACKGROUND_EXECUTOR:Lcom/miui/home/library/utils/LooperExecutor;

    new-instance v1, Lcom/miui/home/recents/RecentsAnimationListenerImpl$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/miui/home/recents/RecentsAnimationListenerImpl$$ExternalSyntheticLambda2;-><init>(Lcom/miui/home/recents/RecentsAnimationListenerImpl;IZZ)V

    invoke-virtual {v0, v1}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getRecentController()Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;
    .locals 0

    .line 384
    iget-object p0, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mController:Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;

    return-object p0
.end method

.method public getState()I
    .locals 0

    .line 426
    iget p0, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mRecentShellState:I

    return p0
.end method

.method public getTargetSet()Lcom/miui/home/recents/util/RemoteAnimationTargetSet;
    .locals 0

    .line 170
    iget-object p0, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mRemoteAnimationTargetSet:Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    return-object p0
.end method

.method public hideCurrentInputMethod()V
    .locals 0

    .line 388
    iget-object p0, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mController:Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;

    if-eqz p0, :cond_0

    .line 389
    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;->hideCurrentInputMethod()V

    :cond_0
    return-void
.end method

.method public isPre()Z
    .locals 0

    .line 422
    iget-boolean p0, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mPreRequest:Z

    return p0
.end method

.method public onAnimationCanceled(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/systemui/shared/recents/model/ThumbnailData;",
            ">;)V"
        }
    .end annotation

    const/4 p1, 0x0

    .line 352
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->setIsStart(Z)V

    .line 354
    iget-object p0, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mListeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/RecentsAnimationListenerImpl$SwipeAnimationListener;

    .line 355
    invoke-interface {v0, p1}, Lcom/miui/home/recents/RecentsAnimationListenerImpl$SwipeAnimationListener;->onRecentsAnimationCanceled(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onAnimationCanceled(Z)V
    .locals 3

    .line 340
    iget-object v0, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAnimationCanceled b="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 341
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->setIsStart(Z)V

    .line 343
    iget-object v1, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/recents/RecentsAnimationListenerImpl$SwipeAnimationListener;

    .line 344
    invoke-interface {v2, p1}, Lcom/miui/home/recents/RecentsAnimationListenerImpl$SwipeAnimationListener;->onRecentsAnimationCanceled(Z)V

    goto :goto_0

    .line 346
    :cond_0
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->changeState(I)V

    .line 347
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->setPre(Z)V

    return-void
.end method

.method public onAnimationStart(Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 8

    .line 117
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v7, Lcom/miui/home/recents/RecentsAnimationListenerImpl$$ExternalSyntheticLambda3;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/miui/home/recents/RecentsAnimationListenerImpl$$ExternalSyntheticLambda3;-><init>(Lcom/miui/home/recents/RecentsAnimationListenerImpl;Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-virtual {v0, v7}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onRecentsAnimationStart()V
    .locals 5

    .line 152
    iget-object v0, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRecentsAnimationStart recentShellState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mRecentShellState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    sget-object v0, Lcom/miui/home/recents/anim/StateManager;->Companion:Lcom/miui/home/recents/anim/StateManager$Companion;

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object v0

    new-instance v1, Lcom/miui/home/recents/event/InjectRecentTransitionEvent;

    new-instance v2, Lcom/miui/home/recents/event/RecentTransitionInfo;

    iget-object v3, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mRemoteAnimationTargetSet:Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    iget-object v4, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mController:Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;

    invoke-direct {v2, p0, v3, v4}, Lcom/miui/home/recents/event/RecentTransitionInfo;-><init>(Lcom/miui/home/recents/RecentsAnimationListenerImpl;Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;)V

    invoke-direct {v1, v2}, Lcom/miui/home/recents/event/InjectRecentTransitionEvent;-><init>(Lcom/miui/home/recents/event/RecentTransitionInfo;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/anim/StateManager;->sendEvent(Lcom/miui/home/recents/event/Event;)V

    .line 154
    iget-object v0, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/recents/RecentsAnimationListenerImpl$SwipeAnimationListener;

    .line 155
    invoke-interface {v1, p0}, Lcom/miui/home/recents/RecentsAnimationListenerImpl$SwipeAnimationListener;->onRecentsAnimationStart(Lcom/miui/home/recents/RecentsAnimationListenerImpl;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onSwitchToScreenshot(Ljava/lang/Runnable;)Z
    .locals 1

    .line 375
    iget-object p0, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mListeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/RecentsAnimationListenerImpl$SwipeAnimationListener;

    .line 376
    invoke-interface {v0, p1}, Lcom/miui/home/recents/RecentsAnimationListenerImpl$SwipeAnimationListener;->onSwitchToScreenshot(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 378
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    const/4 p0, 0x1

    return p0
.end method

.method public onTaskAppeared(Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)V
    .locals 1

    .line 361
    iget-object p0, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mListeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/RecentsAnimationListenerImpl$SwipeAnimationListener;

    .line 362
    invoke-interface {v0, p1}, Lcom/miui/home/recents/RecentsAnimationListenerImpl$SwipeAnimationListener;->onTaskAppeared(Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onTasksAppeared([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)V
    .locals 1

    .line 368
    iget-object p0, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mListeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/RecentsAnimationListenerImpl$SwipeAnimationListener;

    .line 369
    invoke-interface {v0, p1}, Lcom/miui/home/recents/RecentsAnimationListenerImpl$SwipeAnimationListener;->onTasksAppeared([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public rePreRecentShell()Z
    .locals 4

    .line 435
    invoke-virtual {p0}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->isPre()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 436
    invoke-virtual {p0}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->getState()I

    move-result v0

    if-eqz v0, :cond_0

    .line 437
    invoke-virtual {p0}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->getState()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 438
    invoke-virtual {p0}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->getState()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 439
    invoke-virtual {p0, v1}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->changeState(I)V

    :cond_1
    return v0
.end method

.method public screenshotTask(I)Lcom/android/systemui/shared/recents/model/ThumbnailData;
    .locals 0

    .line 296
    iget-object p0, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mController:Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;->screenshotTask(I)Lcom/android/systemui/shared/recents/model/ThumbnailData;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public screenshotTaskForFastLaunch(I)Lcom/android/systemui/shared/recents/model/ThumbnailData;
    .locals 1

    .line 312
    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/Utilities;->atLeastAndroidU()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 313
    invoke-static {p1}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->screenshotTaskForU(I)Lcom/android/systemui/shared/recents/model/ThumbnailData;

    move-result-object p0

    return-object p0

    .line 315
    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->screenshotTask(I)Lcom/android/systemui/shared/recents/model/ThumbnailData;

    move-result-object p0

    return-object p0
.end method

.method public setIsMergedAnimation(Z)V
    .locals 0

    .line 185
    iput-boolean p1, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mIsMerged:Z

    return-void
.end method

.method public setIsStart(Z)V
    .locals 0

    .line 174
    iput-boolean p1, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mIsStart:Z

    return-void
.end method

.method public setPre(Z)V
    .locals 3

    .line 430
    iget-object v0, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RecentShellTest setPre="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    iput-boolean p1, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mPreRequest:Z

    return-void
.end method

.method public setWillFinishToHome(Z)V
    .locals 0

    .line 403
    iget-object p0, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mController:Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;

    if-eqz p0, :cond_0

    .line 404
    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;->setWillFinishToHome(Z)V

    :cond_0
    return-void
.end method

.method public setWindowThresholdCrossed(Z)V
    .locals 2

    .line 323
    iget-boolean v0, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mWindowThresholdCrossed:Z

    if-eq v0, p1, :cond_0

    .line 324
    iput-boolean p1, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mWindowThresholdCrossed:Z

    .line 325
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->BACKGROUND_EXECUTOR:Lcom/miui/home/library/utils/LooperExecutor;

    new-instance v1, Lcom/miui/home/recents/RecentsAnimationListenerImpl$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/recents/RecentsAnimationListenerImpl$$ExternalSyntheticLambda5;-><init>(Lcom/miui/home/recents/RecentsAnimationListenerImpl;Z)V

    invoke-virtual {v0, v1}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public usePreRecentShell()Z
    .locals 4

    .line 445
    invoke-virtual {p0}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->isPre()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 446
    invoke-virtual {p0}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->getState()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 447
    invoke-virtual {p0, v1}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->setPre(Z)V

    return v2

    .line 449
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->getState()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    .line 450
    invoke-virtual {p0, v1}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->setPre(Z)V

    .line 451
    invoke-virtual {p0}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->onRecentsAnimationStart()V

    return v2

    .line 454
    :cond_1
    invoke-virtual {p0, v2}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->changeState(I)V

    .line 455
    invoke-virtual {p0, v1}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->setPre(Z)V

    return v2

    :cond_2
    return v1
.end method
